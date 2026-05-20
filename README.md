

# Getting started

This project uses [`pixi`](https://pixi.sh) to manage the R runtime and
`renv` for R package dependencies.

## Prerequisites

Make sure the following tools are installed on your system:

- [`git`](https://git-scm.com/downloads): To version control the codes
- [`pixi`](https://pixi.sh): Install via
  `curl -fsSL https://pixi.sh/install.sh | bash`
- [`quarto`](https://quarto.org/docs/download/): Required to compile
  Quarto documents

For convenience, you may also need
[RStudio](https://posit.co/downloads/) or other IDE installed and
running well in your system.

## Reproduction steps

1.  **Clone the repository** and enter the directory:

    ``` bash
    git clone https://github.com/namakala/inappropriate-acid-suppressor-agent-use
    cd inappropriate-acid-suppressor-agent-use
    ```

2.  **Install the pixi environment** (R runtime + `renv`):

    ``` bash
    pixi install
    ```

3.  **Launch R** with the project environment:

    ``` bash
    pixi run R
    ```

    Alternatively, activate a shell with the environment loaded:

    ``` bash
    pixi shell
    R
    ```

4.  **Restore R packages** (inside the R console):

    ``` r
    renv::restore()
    ```

    This reads `renv.lock` and installs all required packages. Restart
    your R session afterwards.

5.  **Install tinytex** (needed for PDF output):

    ``` bash
    quarto tools install tinytex
    ```

## Data preparation

At this point, you need to export the data as `data.csv` and place it
within the `data/raw` directory. The directory structure *must* look
like this:

``` bash
data
├── ...
├── raw
│   └── data.csv
└── ...
```

## Running the analysis

Then, you should be able to proceed with:

``` r
targets::tar_make()
```

Or from the command line:

``` bash
pixi run R -e "targets::tar_make()"
```

This step will read `_targets.R` file, where I systematically draft all
of the analysis steps. Once it’s done running, you will find the
rendered document (either in `html` or `pdf`) inside the `draft`
directory.

# What’s this all about?

This is the functional pipeline for conducting statistical analysis. The
complete flow can be viewed in the following `mermaid` diagram:

``` mermaid
graph LR
  style Legend fill:#FFFFFF00,stroke:#000000;
  style Graph fill:#FFFFFF00,stroke:#000000;
  subgraph Legend
    xf1522833a4d242c5(["Up to date"]):::uptodate
    xb6630624a7b3aa0f(["Dispatched"]):::dispatched
    xbecb13963f49e50b{{"Object"}}:::none
    xeb2d7cac8a1ce544>"Function"]:::none
    xd03d7c7dd2ddda2b(["Regular target"]):::none
  end
  subgraph Graph
    direction LR
    x5dff8c58de5d2474>"fitMetaprop"]:::uptodate --> x7eb7ec8b928bf3d4>"applyCopas"]:::uptodate
    x5dff8c58de5d2474>"fitMetaprop"]:::uptodate --> xac1004accd2b2369>"fitSubMetaprop"]:::uptodate
    x1f6d76ea8940cecf{{"raws"}}:::uptodate --> xe58bddd751ff431b(["fpath"]):::uptodate
    xc9a7d51c10351514(["mod_prop"]):::uptodate --> x223914bceffbfe17(["mod_copas_prop"]):::uptodate
    x7eb7ec8b928bf3d4>"applyCopas"]:::uptodate --> x223914bceffbfe17(["mod_copas_prop"]):::uptodate
    x7eb7ec8b928bf3d4>"applyCopas"]:::uptodate --> x02d8553461f5dde5(["mod_copas_subgroup_Age"]):::uptodate
    x6a69877b80bc58a3(["tbl_clean"]):::uptodate --> x02d8553461f5dde5(["mod_copas_subgroup_Age"]):::uptodate
    x6a69877b80bc58a3(["tbl_clean"]):::uptodate --> xc6f6ae3b45503994(["mod_copas_subgroup_Continent"]):::uptodate
    x7eb7ec8b928bf3d4>"applyCopas"]:::uptodate --> xc6f6ae3b45503994(["mod_copas_subgroup_Continent"]):::uptodate
    x7eb7ec8b928bf3d4>"applyCopas"]:::uptodate --> x1aecdb30a7620f96(["mod_copas_subgroup_JBI_Classification"]):::uptodate
    x6a69877b80bc58a3(["tbl_clean"]):::uptodate --> x1aecdb30a7620f96(["mod_copas_subgroup_JBI_Classification"]):::uptodate
    x7eb7ec8b928bf3d4>"applyCopas"]:::uptodate --> xc488aff44584f31a(["mod_copas_subgroup_Setting"]):::uptodate
    x6a69877b80bc58a3(["tbl_clean"]):::uptodate --> xc488aff44584f31a(["mod_copas_subgroup_Setting"]):::uptodate
    x7eb7ec8b928bf3d4>"applyCopas"]:::uptodate --> xa14836f915ec5c71(["mod_copas_subgroup_use_guideline"]):::uptodate
    x6a69877b80bc58a3(["tbl_clean"]):::uptodate --> xa14836f915ec5c71(["mod_copas_subgroup_use_guideline"]):::uptodate
    x639f059ad651f361>"fitMetareg"]:::uptodate --> xa65024d1ee8b4bbe(["mod_metareg_Age"]):::uptodate
    x6a69877b80bc58a3(["tbl_clean"]):::uptodate --> xa65024d1ee8b4bbe(["mod_metareg_Age"]):::uptodate
    x6a69877b80bc58a3(["tbl_clean"]):::uptodate --> x75502a62ba289520(["mod_metareg_Continent"]):::uptodate
    x639f059ad651f361>"fitMetareg"]:::uptodate --> x75502a62ba289520(["mod_metareg_Continent"]):::uptodate
    x639f059ad651f361>"fitMetareg"]:::uptodate --> xead2bc80766185cd(["mod_metareg_JBI_Classification"]):::uptodate
    x6a69877b80bc58a3(["tbl_clean"]):::uptodate --> xead2bc80766185cd(["mod_metareg_JBI_Classification"]):::uptodate
    x639f059ad651f361>"fitMetareg"]:::uptodate --> xfe33c20f66d5d154(["mod_metareg_mv"]):::uptodate
    x545c253ca50bea58{{"mv_vars"}}:::uptodate --> xfe33c20f66d5d154(["mod_metareg_mv"]):::uptodate
    x6a69877b80bc58a3(["tbl_clean"]):::uptodate --> xfe33c20f66d5d154(["mod_metareg_mv"]):::uptodate
    x6a69877b80bc58a3(["tbl_clean"]):::uptodate --> xb86f501a4301a828(["mod_metareg_Setting"]):::uptodate
    x639f059ad651f361>"fitMetareg"]:::uptodate --> xb86f501a4301a828(["mod_metareg_Setting"]):::uptodate
    x6a69877b80bc58a3(["tbl_clean"]):::uptodate --> x88b6d2e04ca27042(["mod_metareg_use_guideline"]):::uptodate
    x639f059ad651f361>"fitMetareg"]:::uptodate --> x88b6d2e04ca27042(["mod_metareg_use_guideline"]):::uptodate
    x5dff8c58de5d2474>"fitMetaprop"]:::uptodate --> xc9a7d51c10351514(["mod_prop"]):::uptodate
    x6a69877b80bc58a3(["tbl_clean"]):::uptodate --> xc9a7d51c10351514(["mod_prop"]):::uptodate
    x6a69877b80bc58a3(["tbl_clean"]):::uptodate --> x22c8765ea39e8148(["mod_subgroup_Age"]):::uptodate
    xac1004accd2b2369>"fitSubMetaprop"]:::uptodate --> x22c8765ea39e8148(["mod_subgroup_Age"]):::uptodate
    x6a69877b80bc58a3(["tbl_clean"]):::uptodate --> xb7e34ea468d66f6a(["mod_subgroup_Continent"]):::uptodate
    xac1004accd2b2369>"fitSubMetaprop"]:::uptodate --> xb7e34ea468d66f6a(["mod_subgroup_Continent"]):::uptodate
    x6a69877b80bc58a3(["tbl_clean"]):::uptodate --> xcd1fd8b29cc35d78(["mod_subgroup_JBI_Classification"]):::uptodate
    xac1004accd2b2369>"fitSubMetaprop"]:::uptodate --> xcd1fd8b29cc35d78(["mod_subgroup_JBI_Classification"]):::uptodate
    xac1004accd2b2369>"fitSubMetaprop"]:::uptodate --> x38d8e45c98f319d4(["mod_subgroup_Setting"]):::uptodate
    x6a69877b80bc58a3(["tbl_clean"]):::uptodate --> x38d8e45c98f319d4(["mod_subgroup_Setting"]):::uptodate
    x6a69877b80bc58a3(["tbl_clean"]):::uptodate --> x9dbacfb24c24b217(["mod_subgroup_use_guideline"]):::uptodate
    xac1004accd2b2369>"fitSubMetaprop"]:::uptodate --> x9dbacfb24c24b217(["mod_subgroup_use_guideline"]):::uptodate
    x8937e3114e3b8573>"vizForest"]:::uptodate --> xc8f7dd712d7001fb(["plt_forest_prop"]):::uptodate
    xc9a7d51c10351514(["mod_prop"]):::uptodate --> xc8f7dd712d7001fb(["plt_forest_prop"]):::uptodate
    x8937e3114e3b8573>"vizForest"]:::uptodate --> x67c75ccc0baa4cc0(["plt_forest_subgroup_Age"]):::uptodate
    x22c8765ea39e8148(["mod_subgroup_Age"]):::uptodate --> x67c75ccc0baa4cc0(["plt_forest_subgroup_Age"]):::uptodate
    xb7e34ea468d66f6a(["mod_subgroup_Continent"]):::uptodate --> x75d1f7588e48e835(["plt_forest_subgroup_Continent"]):::uptodate
    x8937e3114e3b8573>"vizForest"]:::uptodate --> x75d1f7588e48e835(["plt_forest_subgroup_Continent"]):::uptodate
    x8937e3114e3b8573>"vizForest"]:::uptodate --> x54711bec2d451b78(["plt_forest_subgroup_JBI_Classification"]):::uptodate
    xcd1fd8b29cc35d78(["mod_subgroup_JBI_Classification"]):::uptodate --> x54711bec2d451b78(["plt_forest_subgroup_JBI_Classification"]):::uptodate
    x8937e3114e3b8573>"vizForest"]:::uptodate --> x2844191fa149f269(["plt_forest_subgroup_Setting"]):::uptodate
    x38d8e45c98f319d4(["mod_subgroup_Setting"]):::uptodate --> x2844191fa149f269(["plt_forest_subgroup_Setting"]):::uptodate
    x8937e3114e3b8573>"vizForest"]:::uptodate --> x879d4f0d1b815db1(["plt_forest_subgroup_use_guideline"]):::uptodate
    x9dbacfb24c24b217(["mod_subgroup_use_guideline"]):::uptodate --> x879d4f0d1b815db1(["plt_forest_subgroup_use_guideline"]):::uptodate
    xc9a7d51c10351514(["mod_prop"]):::uptodate --> x2df37bb8b0aae347(["plt_funnel_prop"]):::uptodate
    xfde01df06a20a6ac>"vizFunnel"]:::uptodate --> x2df37bb8b0aae347(["plt_funnel_prop"]):::uptodate
    xfde01df06a20a6ac>"vizFunnel"]:::uptodate --> x4d9e2365f0ba740b(["plt_funnel_subgroup_Age"]):::uptodate
    x22c8765ea39e8148(["mod_subgroup_Age"]):::uptodate --> x4d9e2365f0ba740b(["plt_funnel_subgroup_Age"]):::uptodate
    xb7e34ea468d66f6a(["mod_subgroup_Continent"]):::uptodate --> x266d3dcd2263403f(["plt_funnel_subgroup_Continent"]):::uptodate
    xfde01df06a20a6ac>"vizFunnel"]:::uptodate --> x266d3dcd2263403f(["plt_funnel_subgroup_Continent"]):::uptodate
    xcd1fd8b29cc35d78(["mod_subgroup_JBI_Classification"]):::uptodate --> x48dc94eb7995555d(["plt_funnel_subgroup_JBI_Classification"]):::uptodate
    xfde01df06a20a6ac>"vizFunnel"]:::uptodate --> x48dc94eb7995555d(["plt_funnel_subgroup_JBI_Classification"]):::uptodate
    xfde01df06a20a6ac>"vizFunnel"]:::uptodate --> xd7a8a3e1d914ccee(["plt_funnel_subgroup_Setting"]):::uptodate
    x38d8e45c98f319d4(["mod_subgroup_Setting"]):::uptodate --> xd7a8a3e1d914ccee(["plt_funnel_subgroup_Setting"]):::uptodate
    x9dbacfb24c24b217(["mod_subgroup_use_guideline"]):::uptodate --> x8fbb7f3069c2f2a7(["plt_funnel_subgroup_use_guideline"]):::uptodate
    xfde01df06a20a6ac>"vizFunnel"]:::uptodate --> x8fbb7f3069c2f2a7(["plt_funnel_subgroup_use_guideline"]):::uptodate
    x223914bceffbfe17(["mod_copas_prop"]):::uptodate --> xb72891f20a5b8df1(["report"]):::dispatched
    xfe33c20f66d5d154(["mod_metareg_mv"]):::uptodate --> xb72891f20a5b8df1(["report"]):::dispatched
    xc9a7d51c10351514(["mod_prop"]):::uptodate --> xb72891f20a5b8df1(["report"]):::dispatched
    x18b26034ab3a95e2>"readData"]:::uptodate --> xb24e8ba9befc2f2c(["tbl"]):::uptodate
    xe58bddd751ff431b(["fpath"]):::uptodate --> xb24e8ba9befc2f2c(["tbl"]):::uptodate
    xb24e8ba9befc2f2c(["tbl"]):::uptodate --> x6a69877b80bc58a3(["tbl_clean"]):::uptodate
    x56e6f9636c2a0bcf>"clean"]:::uptodate --> x6a69877b80bc58a3(["tbl_clean"]):::uptodate
    x07bf962581a33ad1{{"funs"}}:::uptodate
    x3eac3c5af5491b67>"lsData"]:::uptodate
    x2f12837377761a1b{{"pkgs"}}:::uptodate
    x026e3308cd8be8b9{{"pkgs_load"}}:::uptodate
    xc11069275cfeb620(["readme"]):::dispatched
    x4d3ec24f81457d7f{{"seed"}}:::uptodate
    x49c7bdad2ca8f05f{{"uni_vars"}}:::uptodate
  end
  classDef uptodate stroke:#000000,color:#ffffff,fill:#354823;
  classDef dispatched stroke:#000000,color:#000000,fill:#DC863B;
  classDef none stroke:#000000,color:#000000,fill:#94a4ac;
```
