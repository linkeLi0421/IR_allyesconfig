; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/coregf119.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregf119.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon = type { i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nv50_disp_chan_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.138 = type { ptr, i32, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nv50_disp_chan = type { ptr, ptr, ptr, %struct.anon.144, i32, %struct.nvkm_object, ptr, i64, i32 }
%struct.anon.144 = type { i32, i32 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nv50_disp = type { ptr, %struct.nvkm_disp, ptr, %struct.work_struct, i32, %struct.nvkm_event, %struct.anon.141, %struct.anon.141, %struct.anon.141, %struct.anon.142, %struct.anon.143, ptr, ptr, [81 x ptr] }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.139 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.137 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.137 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.139 = type { %struct.spinlock, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.141 = type { i32, i32 }
%struct.anon.142 = type { i32, i32, i32 }
%struct.anon.143 = type { i32, i32, [3 x i8] }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.135, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.135 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@gf119_disp_core_mthd_base = dso_local constant { { i32, i32, [5 x %struct.anon] }, [60 x i8] } { { i32, i32, [5 x %struct.anon] } { i32 0, i32 0, [5 x %struct.anon] [%struct.anon { i32 128, i32 6684800, ptr null }, %struct.anon { i32 132, i32 6684804, ptr null }, %struct.anon { i32 136, i32 6684808, ptr null }, %struct.anon { i32 140, i32 0, ptr null }, %struct.anon zeroinitializer] }, [60 x i8] zeroinitializer }, align 32
@gf119_disp_core_mthd_dac = dso_local constant { { i32, i32, [5 x %struct.anon] }, [60 x i8] } { { i32, i32, [5 x %struct.anon] } { i32 32, i32 32, [5 x %struct.anon] [%struct.anon { i32 384, i32 6685056, ptr null }, %struct.anon { i32 388, i32 6685060, ptr null }, %struct.anon { i32 392, i32 6685064, ptr null }, %struct.anon { i32 400, i32 6685072, ptr null }, %struct.anon zeroinitializer] }, [60 x i8] zeroinitializer }, align 32
@gf119_disp_core_mthd_sor = dso_local constant { { i32, i32, [5 x %struct.anon] }, [60 x i8] } { { i32, i32, [5 x %struct.anon] } { i32 32, i32 32, [5 x %struct.anon] [%struct.anon { i32 512, i32 6685184, ptr null }, %struct.anon { i32 516, i32 6685188, ptr null }, %struct.anon { i32 520, i32 6685192, ptr null }, %struct.anon { i32 528, i32 6685200, ptr null }, %struct.anon zeroinitializer] }, [60 x i8] zeroinitializer }, align 32
@gf119_disp_core_mthd_pior = dso_local constant { { i32, i32, [5 x %struct.anon] }, [60 x i8] } { { i32, i32, [5 x %struct.anon] } { i32 32, i32 32, [5 x %struct.anon] [%struct.anon { i32 768, i32 6685440, ptr null }, %struct.anon { i32 772, i32 6685444, ptr null }, %struct.anon { i32 776, i32 6685448, ptr null }, %struct.anon { i32 784, i32 6685456, ptr null }, %struct.anon zeroinitializer] }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/coregf119.c\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@gf119_disp_core_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 183, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: core fini: %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gf119_disp_core_fini\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gf119_disp_core_fini._entry_ptr = internal global ptr @gf119_disp_core_fini._entry, section ".printk_index", align 4
@gf119_disp_core_func = dso_local constant { %struct.nv50_disp_chan_func, [44 x i8] } { %struct.nv50_disp_chan_func { ptr @gf119_disp_core_init, ptr @gf119_disp_core_fini, ptr @gf119_disp_chan_intr, ptr @nv50_disp_chan_user, ptr @gf119_disp_dmac_bind }, [44 x i8] zeroinitializer }, align 32
@gf119_disp_core_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 209, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: core init: %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gf119_disp_core_init\00", [43 x i8] zeroinitializer }, align 32
@gf119_disp_core_init._entry_ptr = internal global ptr @gf119_disp_core_init._entry, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Core\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Global\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SOR\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PIOR\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HEAD\00", [27 x i8] zeroinitializer }, align 32
@gf119_disp_core_mthd = internal constant { { ptr, i32, i32, [6 x %struct.anon.138] }, [44 x i8] } { { ptr, i32, i32, [6 x %struct.anon.138] } { ptr @.str.8, i32 0, i32 -131072, [6 x %struct.anon.138] [%struct.anon.138 { ptr @.str.9, i32 1, ptr @gf119_disp_core_mthd_base }, %struct.anon.138 { ptr @.str.10, i32 3, ptr @gf119_disp_core_mthd_dac }, %struct.anon.138 { ptr @.str.11, i32 8, ptr @gf119_disp_core_mthd_sor }, %struct.anon.138 { ptr @.str.12, i32 4, ptr @gf119_disp_core_mthd_pior }, %struct.anon.138 { ptr @.str.13, i32 4, ptr @gf119_disp_core_mthd_head }, %struct.anon.138 zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@gf119_disp_core_mthd_head = internal constant { { i32, i32, [66 x %struct.anon] }, [192 x i8] } { { i32, i32, [66 x %struct.anon] } { i32 768, i32 768, [66 x %struct.anon] [%struct.anon { i32 1024, i32 6685696, ptr null }, %struct.anon { i32 1028, i32 6685700, ptr null }, %struct.anon { i32 1032, i32 6685704, ptr null }, %struct.anon { i32 1036, i32 6685708, ptr null }, %struct.anon { i32 1040, i32 6685712, ptr null }, %struct.anon { i32 1044, i32 6685716, ptr null }, %struct.anon { i32 1048, i32 6685720, ptr null }, %struct.anon { i32 1052, i32 6685724, ptr null }, %struct.anon { i32 1056, i32 6685728, ptr null }, %struct.anon { i32 1060, i32 6685732, ptr null }, %struct.anon { i32 1064, i32 6685736, ptr null }, %struct.anon { i32 1068, i32 6685740, ptr null }, %struct.anon { i32 1072, i32 6685744, ptr null }, %struct.anon { i32 1076, i32 6685748, ptr null }, %struct.anon { i32 1080, i32 6685752, ptr null }, %struct.anon { i32 1088, i32 6685760, ptr null }, %struct.anon { i32 1092, i32 6685764, ptr null }, %struct.anon { i32 1096, i32 6685768, ptr null }, %struct.anon { i32 1100, i32 6685772, ptr null }, %struct.anon { i32 1104, i32 6685776, ptr null }, %struct.anon { i32 1108, i32 6685780, ptr null }, %struct.anon { i32 1112, i32 6685784, ptr null }, %struct.anon { i32 1116, i32 6685788, ptr null }, %struct.anon { i32 1120, i32 6685792, ptr null }, %struct.anon { i32 1128, i32 6685800, ptr null }, %struct.anon { i32 1132, i32 6685804, ptr null }, %struct.anon { i32 1136, i32 6685808, ptr null }, %struct.anon { i32 1140, i32 6685812, ptr null }, %struct.anon { i32 1152, i32 6685824, ptr null }, %struct.anon { i32 1156, i32 6685828, ptr null }, %struct.anon { i32 1164, i32 6685836, ptr null }, %struct.anon { i32 1168, i32 6685840, ptr null }, %struct.anon { i32 1172, i32 6685844, ptr null }, %struct.anon { i32 1176, i32 6685848, ptr null }, %struct.anon { i32 1200, i32 6685872, ptr null }, %struct.anon { i32 1208, i32 6685880, ptr null }, %struct.anon { i32 1212, i32 6685884, ptr null }, %struct.anon { i32 1216, i32 6685888, ptr null }, %struct.anon { i32 1220, i32 6685892, ptr null }, %struct.anon { i32 1224, i32 6685896, ptr null }, %struct.anon { i32 1232, i32 6685904, ptr null }, %struct.anon { i32 1236, i32 6685908, ptr null }, %struct.anon { i32 1248, i32 6685920, ptr null }, %struct.anon { i32 1252, i32 6685924, ptr null }, %struct.anon { i32 1256, i32 6685928, ptr null }, %struct.anon { i32 1260, i32 6685932, ptr null }, %struct.anon { i32 1264, i32 6685936, ptr null }, %struct.anon { i32 1268, i32 6685940, ptr null }, %struct.anon { i32 1272, i32 6685944, ptr null }, %struct.anon { i32 1276, i32 6685948, ptr null }, %struct.anon { i32 1280, i32 6685952, ptr null }, %struct.anon { i32 1284, i32 6685956, ptr null }, %struct.anon { i32 1288, i32 6685960, ptr null }, %struct.anon { i32 1292, i32 6685964, ptr null }, %struct.anon { i32 1296, i32 6685968, ptr null }, %struct.anon { i32 1300, i32 6685972, ptr null }, %struct.anon { i32 1304, i32 6685976, ptr null }, %struct.anon { i32 1308, i32 6685980, ptr null }, %struct.anon { i32 1324, i32 6685996, ptr null }, %struct.anon { i32 1328, i32 6686000, ptr null }, %struct.anon { i32 1356, i32 6686028, ptr null }, %struct.anon { i32 1360, i32 6686032, ptr null }, %struct.anon { i32 1364, i32 6686036, ptr null }, %struct.anon { i32 1368, i32 6686040, ptr null }, %struct.anon { i32 1372, i32 6686044, ptr null }, %struct.anon zeroinitializer] }, [192 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [26 x i8] c"gf119_disp_core_mthd_base\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 29, i32 1 }
@___asan_gen_.19 = private unnamed_addr constant [25 x i8] c"gf119_disp_core_mthd_dac\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 42, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant [25 x i8] c"gf119_disp_core_mthd_sor\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 55, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant [26 x i8] c"gf119_disp_core_mthd_pior\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 68, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 178, i32 6 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 182, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [21 x i8] c"gf119_disp_core_func\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 217, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 208, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 156, i32 10 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 160, i32 5 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 161, i32 8 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 162, i32 8 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 163, i32 7 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 164, i32 7 }
@___asan_gen_.79 = private unnamed_addr constant [21 x i8] c"gf119_disp_core_mthd\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 155, i32 1 }
@___asan_gen_.82 = private unnamed_addr constant [26 x i8] c"gf119_disp_core_mthd_head\00", align 1
@___asan_gen_.83 = private constant [56 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregf119.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 81, i32 1 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @gf119_disp_core_fini._entry, ptr @gf119_disp_core_fini._entry_ptr, ptr @gf119_disp_core_init._entry, ptr @gf119_disp_core_init._entry_ptr, ptr @gf119_disp_core_mthd_base, ptr @gf119_disp_core_mthd_dac, ptr @gf119_disp_core_mthd_sor, ptr @gf119_disp_core_mthd_pior, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @gf119_disp_core_func, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @gf119_disp_core_mthd, ptr @gf119_disp_core_mthd_head], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_disp_core_mthd_base to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_disp_core_mthd_dac to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_disp_core_mthd_sor to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_disp_core_mthd_pior to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_disp_core_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_disp_core_func to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_disp_core_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_disp_core_mthd to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_disp_core_mthd_head to i32), i32 800, i32 992, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf119_disp_core_fini(ptr nocapture noundef %chan) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 8
  %device2 = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 6358160
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %and = and i32 %6, -17
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %8, i32 6358160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %and) #4, !srcloc !53
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %10, i32 6358160
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #4, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  tail call void @arm_heavy_mb() #4
  %and17 = and i32 %11, -4
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr20 = getelementptr i8, ptr %13, i32 6358160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %and17) #4, !srcloc !53
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #4
  %14 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait) #4
  br label %do.body22

do.body22:                                        ; preds = %do.cond29.do.body22_crit_edge, %entry
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr25 = getelementptr i8, ptr %16, i32 6358160
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #4, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  %and28 = and i32 %17, 1966080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool.not = icmp eq i32 %and28, 0
  br i1 %tobool.not, label %if.end64.thread, label %do.cond29

if.end64.thread:                                  ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #4
  br label %if.end84

do.cond29:                                        ; preds = %do.body22
  %call30 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #4
  %cmp = icmp sgt i64 %call30, -1
  br i1 %cmp, label %do.cond29.do.body22_crit_edge, label %do.end42

do.cond29.do.body22_crit_edge:                    ; preds = %do.cond29
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body22

do.end42:                                         ; preds = %do.cond29
  %18 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_wait, align 8
  %device44 = getelementptr inbounds %struct.nvkm_timer, ptr %19, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %device44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device44, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %call45 = call ptr @dev_driver_string(ptr noundef %23) #4
  %24 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_wait, align 8
  %device48 = getelementptr inbounds %struct.nvkm_timer, ptr %25, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %device48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device48, align 4
  %dev49 = getelementptr inbounds %struct.nvkm_device, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev49, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end42.do.body68_crit_edge

do.end42.do.body68_crit_edge:                     ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body68

if.end.i:                                         ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  br label %do.body68

do.body68:                                        ; preds = %if.end.i, %do.end42.do.body68_crit_edge
  %retval.0.i = phi ptr [ %33, %if.end.i ], [ %31, %do.end42.do.body68_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 181, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call45, ptr noundef %retval.0.i) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #4
  %debug = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 5
  %34 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp69.not = icmp eq i32 %35, 0
  br i1 %cmp69.not, label %do.body68.if.end84_crit_edge, label %do.end73

do.body68.if.end84_crit_edge:                     ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end84

do.end73:                                         ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device2, align 4
  %dev75 = getelementptr inbounds %struct.nvkm_device, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev75, align 8
  %name = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 4
  %40 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri, align 4
  %add.ptr78 = getelementptr i8, ptr %41, i32 6358160
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78) #4, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %42) #7
  br label %if.end84

if.end84:                                         ; preds = %do.end73, %do.body68.if.end84_crit_edge, %if.end64.thread
  %43 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pri, align 4
  %add.ptr87 = getelementptr i8, ptr %44, i32 6553600
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #4, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !58
  %suspend_put = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 8
  %46 = ptrtoint ptr %suspend_put to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %suspend_put, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gf119_disp_core_init(ptr nocapture noundef readonly %chan) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 8
  %device2 = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  tail call void @arm_heavy_mb() #4
  %push = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 7
  %4 = ptrtoint ptr %push to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %push, align 8
  %conv = trunc i64 %5 to i32
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 6358164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %conv) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 6358168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 65536) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr12 = getelementptr i8, ptr %11, i32 6358172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 1) #4, !srcloc !53
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr14 = getelementptr i8, ptr %13, i32 6358160
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #4, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  tail call void @arm_heavy_mb() #4
  %or = or i32 %14, 16
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr19 = getelementptr i8, ptr %16, i32 6358160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %or) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !64
  tail call void @arm_heavy_mb() #4
  %suspend_put = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 8
  %17 = ptrtoint ptr %suspend_put to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %suspend_put, align 8
  %19 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri, align 4
  %add.ptr25 = getelementptr i8, ptr %20, i32 6553600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %18) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void @arm_heavy_mb() #4
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %add.ptr30 = getelementptr i8, ptr %22, i32 6358160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 16777235) #4, !srcloc !53
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #4
  %23 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait) #4
  br label %do.body31

do.body31:                                        ; preds = %do.cond38.do.body31_crit_edge, %entry
  %24 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri, align 4
  %add.ptr34 = getelementptr i8, ptr %25, i32 6358160
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #4, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %tobool.not = icmp sgt i32 %26, -1
  br i1 %tobool.not, label %if.end76.thread, label %do.cond38

if.end76.thread:                                  ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #4
  br label %cleanup

do.cond38:                                        ; preds = %do.body31
  %call39 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #4
  %cmp = icmp sgt i64 %call39, -1
  br i1 %cmp, label %do.cond38.do.body31_crit_edge, label %do.end54

do.cond38.do.body31_crit_edge:                    ; preds = %do.cond38
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body31

do.end54:                                         ; preds = %do.cond38
  %27 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %_wait, align 8
  %device56 = getelementptr inbounds %struct.nvkm_timer, ptr %28, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %device56 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device56, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 8
  %call57 = call ptr @dev_driver_string(ptr noundef %32) #4
  %33 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %_wait, align 8
  %device60 = getelementptr inbounds %struct.nvkm_timer, ptr %34, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %device60 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device60, align 4
  %dev61 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev61, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end54.do.body81_crit_edge

do.end54.do.body81_crit_edge:                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body81

if.end.i:                                         ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %38, align 4
  br label %do.body81

do.body81:                                        ; preds = %if.end.i, %do.end54.do.body81_crit_edge
  %retval.0.i = phi ptr [ %42, %if.end.i ], [ %40, %do.end54.do.body81_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 207, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call57, ptr noundef %retval.0.i) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #4
  %debug = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 5
  %43 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp82.not = icmp eq i32 %44, 0
  br i1 %cmp82.not, label %do.body81.cleanup_crit_edge, label %do.end87

do.body81.cleanup_crit_edge:                      ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end87:                                         ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device2, align 4
  %dev89 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev89, align 8
  %name = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 4
  %49 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pri, align 4
  %add.ptr92 = getelementptr i8, ptr %50, i32 6358160
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr92) #4, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %51) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end87, %do.body81.cleanup_crit_edge, %if.end76.thread
  %retval.0 = phi i32 [ -16, %do.end87 ], [ -16, %do.body81.cleanup_crit_edge ], [ 0, %if.end76.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_disp_chan_intr(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nv50_disp_chan_user(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_disp_dmac_bind(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf119_disp_core_new(ptr noundef %oclass, ptr noundef %argv, i32 noundef %argc, ptr noundef %disp, ptr noundef %pobject) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv50_disp_core_new_(ptr noundef nonnull @gf119_disp_core_func, ptr noundef nonnull @gf119_disp_core_mthd, ptr noundef %disp, i32 noundef 0, ptr noundef %oclass, ptr noundef %argv, i32 noundef %argc, ptr noundef %pobject) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_core_new_(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !18, !20, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @gf119_disp_core_mthd_base, !1, !"gf119_disp_core_mthd_base", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregf119.c", i32 29, i32 1}
!2 = !{ptr @gf119_disp_core_mthd_dac, !3, !"gf119_disp_core_mthd_dac", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregf119.c", i32 42, i32 1}
!4 = !{ptr @gf119_disp_core_mthd_sor, !5, !"gf119_disp_core_mthd_sor", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregf119.c", i32 55, i32 1}
!6 = !{ptr @gf119_disp_core_mthd_pior, !7, !"gf119_disp_core_mthd_pior", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregf119.c", i32 68, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregf119.c", i32 178, i32 6}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregf119.c", i32 182, i32 3}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @gf119_disp_core_fini._entry, !12, !"_entry", i1 false, i1 false}
!17 = !{ptr @gf119_disp_core_fini._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @gf119_disp_core_func, !19, !"gf119_disp_core_func", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregf119.c", i32 217, i32 1}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregf119.c", i32 208, i32 3}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @gf119_disp_core_init._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @gf119_disp_core_init._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregf119.c", i32 156, i32 10}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregf119.c", i32 160, i32 5}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregf119.c", i32 161, i32 8}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregf119.c", i32 162, i32 8}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregf119.c", i32 163, i32 7}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregf119.c", i32 164, i32 7}
!37 = !{ptr @gf119_disp_core_mthd, !38, !"gf119_disp_core_mthd", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregf119.c", i32 155, i32 1}
!39 = !{ptr @gf119_disp_core_mthd_head, !40, !"gf119_disp_core_mthd_head", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregf119.c", i32 81, i32 1}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i64 5389479}
!51 = !{i64 2156248245}
!52 = !{i64 2156248647}
!53 = !{i64 5389061}
!54 = !{i64 2156249520}
!55 = !{i64 2156249922}
!56 = !{i64 2156251837}
!57 = !{i64 2156255419}
!58 = !{i64 2156255804}
!59 = !{i64 2156256146}
!60 = !{i64 2156256559}
!61 = !{i64 2156256972}
!62 = !{i64 2156257813}
!63 = !{i64 2156258215}
!64 = !{i64 2156258674}
!65 = !{i64 2156259094}
!66 = !{i64 2156260977}
!67 = !{i64 2156264559}
