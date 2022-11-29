# Bannerlord Dependency Builder

Create a dependency pack for your Bannerlord installation that can be used in CI builds.

## Instructions

* Clone this repository to your local system with a Bannerlord installation
* Edit `setup.bat` and set the following paths:
  * Game folder - `gamefolder=<your Bannerlord installation path here>`
    * Example: `set "gamefolder=C:\Games\Steam\steamapps\common\Mount & Blade II Bannerlord"`
  * 7zip - `szcli=<your 7zip CLI path here>`
    * Example: `set "szcli=C:\Program Files\7-Zip\7z.exe"`
* Run `setup.bat` and it will produce `BannerlordDependencies.zip`

## Github Actions Instructions

[See an example script.](https://github.com/jzebedee/ButterAchievements/blob/v1.1.0/.github/workflows/build.yml)

* Host `BannerlordDependencies.zip` somewhere and copy the public link
* Add a new environment secret to your repository (_Settings -> Security -> Secrets -> Actions -> New repository secret_) called `BANNERLORD_ASSETS_URL` and paste the link in as the secret value
* Use the `BANNERLORD_ASSETS_URL` to pull down the assets in your CI script and unzip them
* Now, either:
  * Set an environment variable to point to the path of the unzipped assets, e.g., for mods with the [BUTR template](https://github.com/BUTR/Bannerlord.Module.Template) using `$(BANNERLORD_GAME_DIR)`.
  * Pass the path into MsBuild and use it as a project property, e.g., `MsBuild.exe -noLogo -r -p:Configuration=Release -p:GameFolder="${env:gamefolder}"`
