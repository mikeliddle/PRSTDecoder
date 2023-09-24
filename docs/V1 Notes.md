# GP 100 PRST

## Format

XML

## Structure

GP-100 is the main element of the file, it contains a preset_info tag, and a presets tag. In the preset_info tag, there are properties identifying the software/firmware versions, the platform (probably that it was created on) the product (GP-100) the count of presets (I have only seen 1 so far), and a timestamp (likely created time).

In the Presets tag, you have properties for the name, bank, volume, ID, BPM, IR, a type, typename, and notes. The presets element also contains a collection of Effect elements. The Effect element has properties for the module name (RVB,EQ,DLY,MOD,etc.) and the effect name. It appears that the module name would refer to the module slot that it functions as, and the effect name is the specific effect for that slot (e.g. You can add a "Room" Reverb in the "RVB" slot). The effectState would refer to 1(on) or 0(off), suggesting that every file would have the same number of effects (9). The effect has an effectCode (need more info) and a list of parameters which seem to configure the effect. They are labeled as "params_x" suggesting they would correspond to specific parameters identifiable on the unit, but in the file, they just have their values, making it difficult to identify what they are without examining each one in detail.
