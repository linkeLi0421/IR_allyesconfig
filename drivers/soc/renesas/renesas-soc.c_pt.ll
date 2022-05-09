; ModuleID = '/llk/IR_all_yes/drivers/soc/renesas/renesas-soc.c_pt.bc'
source_filename = "../drivers/soc/renesas/renesas-soc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.renesas_id = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.renesas_soc = type { ptr, i32 }
%struct.renesas_family = type { [16 x i8], i32 }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_renesas_soc__183_457_renesas_soc_initearly = internal global ptr @renesas_soc_init, section ".initcallearly.init", align 4
@renesas_socs = internal constant [18 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r7s72100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rz_a1h }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r7s9210\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rz_a2m }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a73a4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rmobile_ape6 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7740\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rmobile_a1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7742\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rz_g1h }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7743\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rz_g1m }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7744\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rz_g1n }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7745\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rz_g1e }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77470\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rz_g1c }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7778\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rcar_m1a }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7779\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rcar_h1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rcar_h2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rcar_m2_w }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7792\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rcar_v2h }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7793\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rcar_m2_n }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7794\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rcar_e2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sh73a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_shmobile_ag5 }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@of_root = external dso_local local_unnamed_addr global ptr, align 4
@renesas_ids = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,bsid\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @id_bsid }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r9a07g044-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @id_rzg2l }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,prr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @id_prr }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@id_prr = internal constant %struct.renesas_id { i32 0, i32 65280 }, section ".init.rodata", align 4
@renesas_soc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014SoC mismatch (product = 0x%x)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"renesas_soc_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/soc/renesas/renesas-soc.c\00", [62 x i8] zeroinitializer }, align 32
@renesas_soc_init._entry_ptr = internal global ptr @renesas_soc_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"model\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ES%u.%u\00", [24 x i8] zeroinitializer }, align 32
@renesas_soc_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016Detected Renesas %s %s %s\0A\00", [35 x i8] zeroinitializer }, align 32
@renesas_soc_init._entry_ptr.8 = internal global ptr @renesas_soc_init._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@soc_rz_a1h = internal constant %struct.renesas_soc { ptr @fam_rza1, i32 0 }, section ".init.rodata", align 4
@soc_rz_a2m = internal constant %struct.renesas_soc { ptr @fam_rza2, i32 59 }, section ".init.rodata", align 4
@soc_rmobile_ape6 = internal constant %struct.renesas_soc { ptr @fam_rmobile, i32 63 }, section ".init.rodata", align 4
@soc_rmobile_a1 = internal constant %struct.renesas_soc { ptr @fam_rmobile, i32 64 }, section ".init.rodata", align 4
@soc_rz_g1h = internal constant %struct.renesas_soc { ptr @fam_rzg1, i32 69 }, section ".init.rodata", align 4
@soc_rz_g1m = internal constant %struct.renesas_soc { ptr @fam_rzg1, i32 71 }, section ".init.rodata", align 4
@soc_rz_g1n = internal constant %struct.renesas_soc { ptr @fam_rzg1, i32 75 }, section ".init.rodata", align 4
@soc_rz_g1e = internal constant %struct.renesas_soc { ptr @fam_rzg1, i32 76 }, section ".init.rodata", align 4
@soc_rz_g1c = internal constant %struct.renesas_soc { ptr @fam_rzg1, i32 83 }, section ".init.rodata", align 4
@soc_rcar_m1a = internal constant %struct.renesas_soc { ptr @fam_rcar_gen1, i32 0 }, section ".init.rodata", align 4
@soc_rcar_h1 = internal constant %struct.renesas_soc { ptr @fam_rcar_gen1, i32 59 }, section ".init.rodata", align 4
@soc_rcar_h2 = internal constant %struct.renesas_soc { ptr @fam_rcar_gen2, i32 69 }, section ".init.rodata", align 4
@soc_rcar_m2_w = internal constant %struct.renesas_soc { ptr @fam_rcar_gen2, i32 71 }, section ".init.rodata", align 4
@soc_rcar_v2h = internal constant %struct.renesas_soc { ptr @fam_rcar_gen2, i32 74 }, section ".init.rodata", align 4
@soc_rcar_m2_n = internal constant %struct.renesas_soc { ptr @fam_rcar_gen2, i32 75 }, section ".init.rodata", align 4
@soc_rcar_e2 = internal constant %struct.renesas_soc { ptr @fam_rcar_gen2, i32 76 }, section ".init.rodata", align 4
@soc_shmobile_ag5 = internal constant %struct.renesas_soc { ptr @fam_shmobile, i32 55 }, section ".init.rodata", align 4
@fam_rza1 = internal constant %struct.renesas_family { [16 x i8] c"RZ/A1\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, section ".init.rodata", align 4
@fam_rza2 = internal constant %struct.renesas_family { [16 x i8] c"RZ/A2\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, section ".init.rodata", align 4
@fam_rmobile = internal constant %struct.renesas_family { [16 x i8] c"R-Mobile\00\00\00\00\00\00\00\00", i32 -436203492 }, section ".init.rodata", align 4
@fam_rzg1 = internal constant %struct.renesas_family { [16 x i8] c"RZ/G1\00\00\00\00\00\00\00\00\00\00\00", i32 -16777148 }, section ".init.rodata", align 4
@fam_rcar_gen1 = internal constant %struct.renesas_family { [16 x i8] c"R-Car Gen1\00\00\00\00\00\00", i32 -16777148 }, section ".init.rodata", align 4
@fam_rcar_gen2 = internal constant %struct.renesas_family { [16 x i8] c"R-Car Gen2\00\00\00\00\00\00", i32 -16777148 }, section ".init.rodata", align 4
@fam_shmobile = internal constant %struct.renesas_family { [16 x i8] c"SH-Mobile\00\00\00\00\00\00\00", i32 -436203492 }, section ".init.rodata", align 4
@id_bsid = internal constant %struct.renesas_id { i32 0, i32 16711680 }, section ".init.rodata", align 4
@id_rzg2l = internal constant %struct.renesas_id { i32 2564, i32 268435455 }, section ".init.rodata", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 424, i32 4 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 433, i32 28 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 434, i32 30 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 440, i32 50 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [37 x i8] c"../drivers/soc/renesas/renesas-soc.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 443, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__initcall__kmod_renesas_soc__183_457_renesas_soc_initearly, ptr @renesas_soc_init._entry, ptr @renesas_soc_init._entry.6, ptr @renesas_soc_init._entry_ptr, ptr @renesas_soc_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_soc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_soc_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_soc_init() #0 section ".init.text" align 64 {
entry:
  %match = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_root to i32))
  %0 = load ptr, ptr @of_root, align 4
  %call = tail call ptr @of_match_node(ptr noundef nonnull @renesas_socs, ptr noundef %0) #7
  %1 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %match, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %compatible = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 2
  %call1 = tail call ptr @strchr(ptr noundef %compatible, i32 noundef 44)
  %add.ptr = getelementptr i8, ptr %call1, i32 1
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call3 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @renesas_ids, ptr noundef nonnull %match) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %match, align 4
  %data6 = getelementptr inbounds %struct.of_device_id, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %data6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data6, align 4
  %call7 = call ptr @of_iomap(ptr noundef nonnull %call3, i32 noundef 0) #7
  call void @of_node_put(ptr noundef nonnull %call3) #7
  br label %if.end15

if.else:                                          ; preds = %if.end
  %id8 = getelementptr inbounds %struct.renesas_soc, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %id8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  br i1 %tobool9.not, label %if.else.if.end46_crit_edge, label %land.lhs.true

if.else.if.end46_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

land.lhs.true:                                    ; preds = %if.else
  %reg = getelementptr inbounds %struct.renesas_family, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp eq i32 %13, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end46_crit_edge, label %if.then11

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = call ptr @ioremap(i32 noundef %13, i32 noundef 4) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.then5
  %id.0 = phi ptr [ %9, %if.then5 ], [ @id_prr, %if.then11 ]
  %chipid.0 = phi ptr [ %call7, %if.then5 ], [ %call13, %if.then11 ]
  %tobool16.not = icmp eq ptr %chipid.0, null
  br i1 %tobool16.not, label %if.end15.if.end46_crit_edge, label %if.then17

if.end15.if.end46_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then17:                                        ; preds = %if.end15
  %14 = ptrtoint ptr %id.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.0, align 4
  %add.ptr18 = getelementptr i8, ptr %chipid.0, i32 %15
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #7, !srcloc !86
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  call void @iounmap(ptr noundef nonnull %chipid.0) #7
  %cmp = icmp eq ptr %id.0, @id_prr
  br i1 %cmp, label %if.then21, label %if.then17.if.end32_crit_edge

if.then17.if.end32_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %17, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 21008, i32 %and)
  %cmp22 = icmp eq i32 %and, 21008
  %xor = xor i32 %17, 17
  %spec.select = select i1 %cmp22, i32 %xor, i32 %17
  %and25 = and i32 %spec.select, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 21009, i32 %and25)
  %cmp26 = icmp eq i32 %and25, 21009
  %xor28 = xor i32 %spec.select, 18
  %product.1 = select i1 %cmp26, i32 %xor28, i32 %spec.select
  %shr = lshr i32 %product.1, 4
  %and30 = and i32 %shr, 15
  %add = add nuw nsw i32 %and30, 1
  %and31 = and i32 %product.1, 15
  br label %if.end32

if.end32:                                         ; preds = %if.then21, %if.then17.if.end32_crit_edge
  %eslo.0 = phi i32 [ %and31, %if.then21 ], [ -1, %if.then17.if.end32_crit_edge ]
  %eshi.0 = phi i32 [ %add, %if.then21 ], [ 0, %if.then17.if.end32_crit_edge ]
  %product.2 = phi i32 [ %product.1, %if.then21 ], [ %17, %if.then17.if.end32_crit_edge ]
  %id33 = getelementptr inbounds %struct.renesas_soc, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %id33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool34.not = icmp eq i32 %19, 0
  br i1 %tobool34.not, label %if.end32.if.end46_crit_edge, label %land.lhs.true35

if.end32.if.end46_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

land.lhs.true35:                                  ; preds = %if.end32
  %mask = getelementptr inbounds %struct.renesas_id, ptr %id.0, i32 0, i32 1
  %20 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mask, align 4
  %and36 = and i32 %21, %product.2
  %22 = call i32 @llvm.cttz.i32(i32 %21, i1 false) #7, !range !88
  %shr39 = lshr i32 %and36, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %shr39, i32 %19)
  %cmp41.not = icmp eq i32 %shr39, %19
  br i1 %cmp41.not, label %land.lhs.true35.if.end46_crit_edge, label %do.end

land.lhs.true35.if.end46_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

do.end:                                           ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #9
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %product.2) #10
  br label %cleanup

if.end46:                                         ; preds = %land.lhs.true35.if.end46_crit_edge, %if.end32.if.end46_crit_edge, %if.end15.if.end46_crit_edge, %land.lhs.true.if.end46_crit_edge, %if.else.if.end46_crit_edge
  %eslo.1 = phi i32 [ %eslo.0, %land.lhs.true35.if.end46_crit_edge ], [ %eslo.0, %if.end32.if.end46_crit_edge ], [ -1, %if.end15.if.end46_crit_edge ], [ -1, %land.lhs.true.if.end46_crit_edge ], [ -1, %if.else.if.end46_crit_edge ]
  %eshi.1 = phi i32 [ %eshi.0, %land.lhs.true35.if.end46_crit_edge ], [ %eshi.0, %if.end32.if.end46_crit_edge ], [ 0, %if.end15.if.end46_crit_edge ], [ 0, %land.lhs.true.if.end46_crit_edge ], [ 0, %if.else.if.end46_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 28) #11
  %tobool48.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool48.not, label %if.end46.cleanup_crit_edge, label %if.end50

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50:                                         ; preds = %if.end46
  %call.i = call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.3, ptr noundef null) #7
  %call52 = call i32 @of_property_read_string(ptr noundef %call.i, ptr noundef nonnull @.str.4, ptr noundef nonnull %call7.i.i) #7
  call void @of_node_put(ptr noundef %call.i) #7
  %call54 = call ptr @kstrdup_const(ptr noundef %5, i32 noundef 3264) #7
  %family55 = getelementptr inbounds %struct.soc_device_attribute, ptr %call7.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %family55 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call54, ptr %family55, align 4
  %call56 = call ptr @kstrdup_const(ptr noundef %add.ptr, i32 noundef 3264) #7
  %soc_id57 = getelementptr inbounds %struct.soc_device_attribute, ptr %call7.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %soc_id57 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call56, ptr %soc_id57, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %eshi.1)
  %tobool58.not = icmp eq i32 %eshi.1, 0
  br i1 %tobool58.not, label %if.end50.do.end64_crit_edge, label %if.then59

if.end50.do.end64_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end64

if.then59:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %call60 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.5, i32 noundef %eshi.1, i32 noundef %eslo.1) #7
  %revision = getelementptr inbounds %struct.soc_device_attribute, ptr %call7.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call60, ptr %revision, align 8
  br label %do.end64

do.end64:                                         ; preds = %if.then59, %if.end50.do.end64_crit_edge
  %27 = ptrtoint ptr %family55 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %family55, align 4
  %29 = ptrtoint ptr %soc_id57 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %soc_id57, align 8
  %revision68 = getelementptr inbounds %struct.soc_device_attribute, ptr %call7.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %revision68 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %revision68, align 8
  %tobool69.not = icmp eq ptr %32, null
  %..str.9 = select i1 %tobool69.not, ptr @.str.9, ptr %32
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %28, ptr noundef %30, ptr noundef %..str.9) #10
  %call71 = call ptr @soc_device_register(ptr noundef nonnull %call7.i.i) #7
  %cmp.i = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then73, label %do.end64.cleanup_crit_edge

do.end64.cleanup_crit_edge:                       ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then73:                                        ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %revision68 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %revision68, align 8
  call void @kfree(ptr noundef %34) #7
  %35 = ptrtoint ptr %soc_id57 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %soc_id57, align 8
  call void @kfree_const(ptr noundef %36) #7
  %37 = ptrtoint ptr %family55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %family55, align 4
  call void @kfree_const(ptr noundef %38) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %39 = ptrtoint ptr %call71 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %do.end64.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %39, %if.then73 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end46.cleanup_crit_edge ], [ 0, %do.end64.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__initcall__kmod_renesas_soc__183_457_renesas_soc_initearly, !1, !"__initcall__kmod_renesas_soc__183_457_renesas_soc_initearly", i1 false, i1 false}
!1 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 457, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 424, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @renesas_soc_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @renesas_soc_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 433, i32 28}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 434, i32 30}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 440, i32 50}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 443, i32 2}
!16 = !{ptr @renesas_soc_init._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @renesas_soc_init._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @renesas_socs, !20, !"renesas_socs", i1 false, i1 false}
!20 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 232, i32 34}
!21 = !{ptr @soc_rz_a1h, !22, !"soc_rz_a1h", i1 false, i1 false}
!22 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 78, i32 33}
!23 = !{ptr @fam_rza1, !24, !"fam_rza1", i1 false, i1 false}
!24 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 45, i32 36}
!25 = !{ptr @soc_rz_a2m, !26, !"soc_rz_a2m", i1 false, i1 false}
!26 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 82, i32 33}
!27 = !{ptr @fam_rza2, !28, !"fam_rza2", i1 false, i1 false}
!28 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 49, i32 36}
!29 = !{ptr @soc_rmobile_ape6, !30, !"soc_rmobile_ape6", i1 false, i1 false}
!30 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 87, i32 33}
!31 = !{ptr @fam_rmobile, !32, !"fam_rmobile", i1 false, i1 false}
!32 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 40, i32 36}
!33 = !{ptr @soc_rmobile_a1, !34, !"soc_rmobile_a1", i1 false, i1 false}
!34 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 92, i32 33}
!35 = !{ptr @soc_rz_g1h, !36, !"soc_rz_g1h", i1 false, i1 false}
!36 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 97, i32 33}
!37 = !{ptr @fam_rzg1, !38, !"fam_rzg1", i1 false, i1 false}
!38 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 53, i32 36}
!39 = !{ptr @soc_rz_g1m, !40, !"soc_rz_g1m", i1 false, i1 false}
!40 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 102, i32 33}
!41 = !{ptr @soc_rz_g1n, !42, !"soc_rz_g1n", i1 false, i1 false}
!42 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 107, i32 33}
!43 = !{ptr @soc_rz_g1e, !44, !"soc_rz_g1e", i1 false, i1 false}
!44 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 112, i32 33}
!45 = !{ptr @soc_rz_g1c, !46, !"soc_rz_g1c", i1 false, i1 false}
!46 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 117, i32 33}
!47 = !{ptr @soc_rcar_m1a, !48, !"soc_rcar_m1a", i1 false, i1 false}
!48 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 147, i32 33}
!49 = !{ptr @fam_rcar_gen1, !50, !"fam_rcar_gen1", i1 false, i1 false}
!50 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 21, i32 36}
!51 = !{ptr @soc_rcar_h1, !52, !"soc_rcar_h1", i1 false, i1 false}
!52 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 151, i32 33}
!53 = !{ptr @soc_rcar_h2, !54, !"soc_rcar_h2", i1 false, i1 false}
!54 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 156, i32 33}
!55 = !{ptr @fam_rcar_gen2, !56, !"fam_rcar_gen2", i1 false, i1 false}
!56 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 26, i32 36}
!57 = !{ptr @soc_rcar_m2_w, !58, !"soc_rcar_m2_w", i1 false, i1 false}
!58 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 161, i32 33}
!59 = !{ptr @soc_rcar_v2h, !60, !"soc_rcar_v2h", i1 false, i1 false}
!60 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 166, i32 33}
!61 = !{ptr @soc_rcar_m2_n, !62, !"soc_rcar_m2_n", i1 false, i1 false}
!62 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 171, i32 33}
!63 = !{ptr @soc_rcar_e2, !64, !"soc_rcar_e2", i1 false, i1 false}
!64 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 176, i32 33}
!65 = !{ptr @soc_shmobile_ag5, !66, !"soc_shmobile_ag5", i1 false, i1 false}
!66 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 226, i32 33}
!67 = !{ptr @fam_shmobile, !68, !"fam_shmobile", i1 false, i1 false}
!68 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 67, i32 36}
!69 = !{ptr @renesas_ids, !70, !"renesas_ids", i1 false, i1 false}
!70 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 367, i32 34}
!71 = !{ptr @id_bsid, !72, !"id_bsid", i1 false, i1 false}
!72 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 348, i32 32}
!73 = !{ptr @id_rzg2l, !74, !"id_rzg2l", i1 false, i1 false}
!74 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 357, i32 32}
!75 = !{ptr @id_prr, !76, !"id_prr", i1 false, i1 false}
!76 = !{!"../drivers/soc/renesas/renesas-soc.c", i32 362, i32 32}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i64 695881}
!87 = !{i64 2152849535}
!88 = !{i32 0, i32 33}
