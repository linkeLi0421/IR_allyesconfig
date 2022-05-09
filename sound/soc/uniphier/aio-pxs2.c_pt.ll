; ModuleID = '/llk/IR_all_yes/sound/soc/uniphier/aio-pxs2.c_pt.bc'
source_filename = "../sound/soc/uniphier/aio-pxs2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.uniphier_aio_chip_spec = type { ptr, i32, ptr, i32, ptr, i32, i32 }
%struct.uniphier_aio_spec = type { ptr, ptr, %struct.uniphier_aio_swmap }
%struct.uniphier_aio_swmap = type { i32, i32, %struct.uniphier_aio_selector, %struct.uniphier_aio_selector, %struct.uniphier_aio_selector, %struct.uniphier_aio_selector, %struct.uniphier_aio_selector, %struct.uniphier_aio_selector, %struct.uniphier_aio_selector }
%struct.uniphier_aio_selector = type { i32, i32 }
%struct.uniphier_aio_pll = type { i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }

@__initcall__kmod_snd_soc_uniphier_aio_pxs2__238_302_uniphier_aio_driver_init6 = internal global ptr @uniphier_aio_driver_init, section ".initcall6.init", align 4
@uniphier_aio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @uniphier_aio_probe, ptr @uniphier_aio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_aio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_uniphier_aio_driver_exit = internal global ptr @uniphier_aio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [83 x i8] c"snd_soc_uniphier_aio_pxs2.author=Katsuhiro Suzuki <suzuki.katsuhiro@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [64 x i8] c"snd_soc_uniphier_aio_pxs2.description=UniPhier PXs2 AIO driver.\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [76 x i8] c"snd_soc_uniphier_aio_pxs2.file=sound/soc/uniphier/snd-soc-uniphier-aio-pxs2\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [41 x i8] c"snd_soc_uniphier_aio_pxs2.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd-uniphier-aio-pxs2\00", [42 x i8] zeroinitializer }, align 32
@uniphier_aio_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs2-aio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_aio_pxs2_spec }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@uniphier_aio_pxs2_spec = internal constant { %struct.uniphier_aio_chip_spec, [36 x i8] } { %struct.uniphier_aio_chip_spec { ptr @uniphier_aio_pxs2, i32 9, ptr @uniphier_aio_pll_pxs2, i32 8, ptr @uniphier_aio_dai_pxs2, i32 7, i32 0 }, [36 x i8] zeroinitializer }, align 32
@uniphier_aio_pxs2 = internal constant { [9 x %struct.uniphier_aio_spec], [184 x i8] } { [9 x %struct.uniphier_aio_spec] [%struct.uniphier_aio_spec { ptr @.str.1, ptr @.str.2, %struct.uniphier_aio_swmap { i32 1, i32 1, %struct.uniphier_aio_selector { i32 16, i32 11 }, %struct.uniphier_aio_selector { i32 16, i32 11 }, %struct.uniphier_aio_selector zeroinitializer, %struct.uniphier_aio_selector zeroinitializer, %struct.uniphier_aio_selector zeroinitializer, %struct.uniphier_aio_selector zeroinitializer, %struct.uniphier_aio_selector zeroinitializer } }, %struct.uniphier_aio_spec { ptr @.str.3, ptr @.str.4, %struct.uniphier_aio_swmap { i32 1, i32 1, %struct.uniphier_aio_selector { i32 17, i32 12 }, %struct.uniphier_aio_selector { i32 17, i32 12 }, %struct.uniphier_aio_selector { i32 1, i32 1 }, %struct.uniphier_aio_selector { i32 1, i32 1 }, %struct.uniphier_aio_selector zeroinitializer, %struct.uniphier_aio_selector zeroinitializer, %struct.uniphier_aio_selector zeroinitializer } }, %struct.uniphier_aio_spec { ptr @.str.5, ptr @.str.6, %struct.uniphier_aio_swmap { i32 1, i32 0, %struct.uniphier_aio_selector zeroinitializer, %struct.uniphier_aio_selector zeroinitializer, %struct.uniphier_aio_selector zeroinitializer, %struct.uniphier_aio_selector zeroinitializer, %struct.uniphier_aio_selector { i32 3, i32 0 }, %struct.uniphier_aio_selector zeroinitializer, %struct.uniphier_aio_selector zeroinitializer } }, %struct.uniphier_aio_spec { ptr @.str.7, ptr @.str.2, %struct.uniphier_aio_swmap { i32 1, i32 0, %struct.uniphier_aio_selector { i32 1, i32 1 }, %struct.uniphier_aio_selector { i32 1, i32 1 }, %struct.uniphier_aio_selector zeroinitializer, %struct.uniphier_aio_selector zeroinitializer, %struct.uniphier_aio_selector { i32 0, i32 1 }, %struct.uniphier_aio_selector { i32 1, i32 1 }, %struct.uniphier_aio_selector zeroinitializer } }, %struct.uniphier_aio_spec { ptr @.str.8, ptr @.str.4, %struct.uniphier_aio_swmap { i32 1, i32 0, %struct.uniphier_aio_selector { i32 2, i32 2 }, %struct.uniphier_aio_selector { i32 2, i32 2 }, %struct.uniphier_aio_selector zeroinitializer, %struct.uniphier_aio_selector zeroinitializer, %struct.uniphier_aio_selector { i32 1, i32 2 }, %struct.uniphier_aio_selector { i32 2, i32 2 }, %struct.uniphier_aio_selector zeroinitializer } }, %struct.uniphier_aio_spec { ptr @.str.9, ptr null, %struct.uniphier_aio_swmap { i32 2, i32 0, %struct.uniphier_aio_selector { i32 6, i32 4 }, %struct.uniphier_aio_selector { i32 6, i32 4 }, %struct.uniphier_aio_selector zeroinitializer, %struct.uniphier_aio_selector zeroinitializer, %struct.uniphier_aio_selector { i32 12, i32 10 }, %struct.uniphier_aio_selector { i32 6, i32 4 }, %struct.uniphier_aio_selector zeroinitializer } }, %struct.uniphier_aio_spec { ptr @.str.10, ptr null, %struct.uniphier_aio_swmap { i32 2, i32 0, %struct.uniphier_aio_selector { i32 6, i32 4 }, %struct.uniphier_aio_selector { i32 6, i32 4 }, %struct.uniphier_aio_selector zeroinitializer, %struct.uniphier_aio_selector zeroinitializer, %struct.uniphier_aio_selector { i32 12, i32 10 }, %struct.uniphier_aio_selector { i32 6, i32 4 }, %struct.uniphier_aio_selector zeroinitializer } }, %struct.uniphier_aio_spec { ptr @.str.11, ptr null, %struct.uniphier_aio_swmap { i32 2, i32 0, %struct.uniphier_aio_selector { i32 7, i32 5 }, %struct.uniphier_aio_selector { i32 7, i32 5 }, %struct.uniphier_aio_selector zeroinitializer, %struct.uniphier_aio_selector zeroinitializer, %struct.uniphier_aio_selector { i32 13, i32 11 }, %struct.uniphier_aio_selector { i32 7, i32 5 }, %struct.uniphier_aio_selector zeroinitializer } }, %struct.uniphier_aio_spec { ptr @.str.12, ptr null, %struct.uniphier_aio_swmap { i32 2, i32 0, %struct.uniphier_aio_selector { i32 7, i32 5 }, %struct.uniphier_aio_selector { i32 7, i32 5 }, %struct.uniphier_aio_selector zeroinitializer, %struct.uniphier_aio_selector zeroinitializer, %struct.uniphier_aio_selector { i32 13, i32 11 }, %struct.uniphier_aio_selector { i32 7, i32 5 }, %struct.uniphier_aio_selector zeroinitializer } }], [184 x i8] zeroinitializer }, align 32
@uniphier_aio_pll_pxs2 = internal constant { [8 x %struct.uniphier_aio_pll], [32 x i8] } { [8 x %struct.uniphier_aio_pll] [%struct.uniphier_aio_pll { i8 1, i32 0 }, %struct.uniphier_aio_pll { i8 1, i32 0 }, %struct.uniphier_aio_pll { i8 1, i32 0 }, %struct.uniphier_aio_pll { i8 1, i32 0 }, %struct.uniphier_aio_pll { i8 1, i32 0 }, %struct.uniphier_aio_pll zeroinitializer, %struct.uniphier_aio_pll zeroinitializer, %struct.uniphier_aio_pll { i8 1, i32 0 }], [32 x i8] zeroinitializer }, align 32
@uniphier_aio_dai_pxs2 = internal global { [7 x %struct.snd_soc_dai_driver], [296 x i8] } { [7 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.6, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @uniphier_aio_pxs2_probe, ptr @uniphier_aio_dai_remove, ptr null, ptr null, ptr @uniphier_aio_i2s_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.5, i64 1024, i32 128, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.2, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @uniphier_aio_pxs2_probe, ptr @uniphier_aio_dai_remove, ptr null, ptr null, ptr @uniphier_aio_i2s_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.1, i64 1024, i32 128, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.7, i64 1024, i32 128, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.4, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @uniphier_aio_pxs2_probe, ptr @uniphier_aio_dai_remove, ptr null, ptr null, ptr @uniphier_aio_i2s_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.3, i64 1024, i32 128, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.8, i64 1024, i32 128, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.9, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @uniphier_aio_pxs2_probe, ptr @uniphier_aio_dai_remove, ptr null, ptr null, ptr @uniphier_aio_spdif_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.9, i64 1024, i32 128, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.11, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @uniphier_aio_pxs2_probe, ptr @uniphier_aio_dai_remove, ptr null, ptr null, ptr @uniphier_aio_spdif_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.11, i64 1024, i32 128, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.10, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @uniphier_aio_pxs2_probe, ptr @uniphier_aio_dai_remove, ptr @snd_soc_new_compress, ptr null, ptr @uniphier_aio_spdif_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.10, i64 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.12, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @uniphier_aio_pxs2_probe, ptr @uniphier_aio_dai_remove, ptr @snd_soc_new_compress, ptr null, ptr @uniphier_aio_spdif_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.12, i64 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0 }, i8 0, i32 0, i32 0 }], [296 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aio-pcmin1\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aio-line\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aio-pcmin2\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aio-aux\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aio-hpcmout1\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aio-hdmi\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aio-pcmout1\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aio-pcmout2\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aio-hiecout1\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aio-hieccompout1\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aio-iecout1\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aio-ieccompout1\00", [16 x i8] zeroinitializer }, align 32
@uniphier_aio_i2s_ops = external dso_local constant %struct.snd_soc_dai_ops, align 4
@uniphier_aio_spdif_ops = external dso_local constant %struct.snd_soc_dai_ops, align 4
@___asan_gen_.13 = private unnamed_addr constant [20 x i8] c"uniphier_aio_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 294, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 296, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [22 x i8] c"uniphier_aio_of_match\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 285, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant [23 x i8] c"uniphier_aio_pxs2_spec\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 275, i32 44 }
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"uniphier_aio_pxs2\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 11, i32 39 }
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"uniphier_aio_pll_pxs2\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 135, i32 38 }
@___asan_gen_.31 = private unnamed_addr constant [22 x i8] c"uniphier_aio_dai_pxs2\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 169, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 14, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 15, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 28, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 29, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 42, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 43, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 56, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 70, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 84, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 97, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 110, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [33 x i8] c"../sound/soc/uniphier/aio-pxs2.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 123, i32 11 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_uniphier_aio_driver_exit, ptr @__initcall__kmod_snd_soc_uniphier_aio_pxs2__238_302_uniphier_aio_driver_init6, ptr @uniphier_aio_driver_exit, ptr @uniphier_aio_driver, ptr @.str, ptr @uniphier_aio_of_match, ptr @uniphier_aio_pxs2_spec, ptr @uniphier_aio_pxs2, ptr @uniphier_aio_pll_pxs2, ptr @uniphier_aio_dai_pxs2, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_aio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_aio_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_aio_pxs2_spec to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_aio_pxs2 to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_aio_pll_pxs2 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_aio_dai_pxs2 to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_aio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_aio_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_aio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_aio_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uniphier_aio_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uniphier_aio_remove(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_aio_pxs2_probe(ptr noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @uniphier_aio_dai_probe(ptr noundef %dai) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @snd_soc_dai_set_pll(ptr noundef %dai, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 36864000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @snd_soc_dai_set_pll(ptr noundef %dai, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 36864000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @snd_soc_dai_set_pll(ptr noundef %dai, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 33868800) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %call13 = tail call i32 @snd_soc_dai_set_pll(ptr noundef %dai, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 33868800) #4
  %0 = tail call i32 @llvm.smin.i32(i32 %call13, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uniphier_aio_dai_remove(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_new_compress(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uniphier_aio_dai_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_pll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_snd_soc_uniphier_aio_pxs2__238_302_uniphier_aio_driver_init6, !1, !"__initcall__kmod_snd_soc_uniphier_aio_pxs2__238_302_uniphier_aio_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/uniphier/aio-pxs2.c", i32 302, i32 1}
!2 = !{ptr @__exitcall_uniphier_aio_driver_exit, !1, !"__exitcall_uniphier_aio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author239, !4, !"__UNIQUE_ID_author239", i1 false, i1 false}
!4 = !{!"../sound/soc/uniphier/aio-pxs2.c", i32 304, i32 1}
!5 = !{ptr @__UNIQUE_ID_description240, !6, !"__UNIQUE_ID_description240", i1 false, i1 false}
!6 = !{!"../sound/soc/uniphier/aio-pxs2.c", i32 305, i32 1}
!7 = !{ptr @__UNIQUE_ID_file241, !8, !"__UNIQUE_ID_file241", i1 false, i1 false}
!8 = !{!"../sound/soc/uniphier/aio-pxs2.c", i32 306, i32 1}
!9 = !{ptr @__UNIQUE_ID_license242, !8, !"__UNIQUE_ID_license242", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/uniphier/aio-pxs2.c", i32 296, i32 11}
!12 = !{ptr @uniphier_aio_driver, !13, !"uniphier_aio_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/uniphier/aio-pxs2.c", i32 294, i32 31}
!14 = !{ptr @uniphier_aio_of_match, !15, !"uniphier_aio_of_match", i1 false, i1 false}
!15 = !{!"../sound/soc/uniphier/aio-pxs2.c", i32 285, i32 34}
!16 = !{ptr @uniphier_aio_pxs2_spec, !17, !"uniphier_aio_pxs2_spec", i1 false, i1 false}
!17 = !{!"../sound/soc/uniphier/aio-pxs2.c", i32 275, i32 44}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/uniphier/aio-pxs2.c", i32 14, i32 11}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/uniphier/aio-pxs2.c", i32 15, i32 12}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/uniphier/aio-pxs2.c", i32 28, i32 11}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/uniphier/aio-pxs2.c", i32 29, i32 12}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/uniphier/aio-pxs2.c", i32 42, i32 11}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/uniphier/aio-pxs2.c", i32 43, i32 12}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/uniphier/aio-pxs2.c", i32 56, i32 11}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/uniphier/aio-pxs2.c", i32 70, i32 11}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/uniphier/aio-pxs2.c", i32 84, i32 11}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/uniphier/aio-pxs2.c", i32 97, i32 11}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/uniphier/aio-pxs2.c", i32 110, i32 11}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/uniphier/aio-pxs2.c", i32 123, i32 11}
!42 = !{ptr @uniphier_aio_pxs2, !43, !"uniphier_aio_pxs2", i1 false, i1 false}
!43 = !{!"../sound/soc/uniphier/aio-pxs2.c", i32 11, i32 39}
!44 = !{ptr @uniphier_aio_pll_pxs2, !45, !"uniphier_aio_pll_pxs2", i1 false, i1 false}
!45 = !{!"../sound/soc/uniphier/aio-pxs2.c", i32 135, i32 38}
!46 = !{ptr @uniphier_aio_dai_pxs2, !47, !"uniphier_aio_dai_pxs2", i1 false, i1 false}
!47 = !{!"../sound/soc/uniphier/aio-pxs2.c", i32 169, i32 34}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
