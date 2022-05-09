; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/corenv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/corenv50.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.0 = type { i32, i32, ptr }
%struct.nv50_disp_chan_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { ptr, i32, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nv50_disp_core_channel_dma_v0 = type { i8, [7 x i8], i64 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nv50_disp_chan = type { ptr, ptr, ptr, %struct.anon.144, i32, %struct.nvkm_object, ptr, i64, i32 }
%struct.anon.144 = type { i32, i32 }
%struct.nv50_disp = type { ptr, %struct.nvkm_disp, ptr, %struct.work_struct, i32, %struct.nvkm_event, %struct.anon.141, %struct.anon.141, %struct.anon.141, %struct.anon.142, %struct.anon.143, ptr, ptr, [81 x ptr] }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.139 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.138 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.138 = type { %struct.refcount_struct, %struct.mutex, i8 }
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
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.136, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.136 = type { %struct.notifier_block }
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

@nv50_disp_core_new_._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create disp core channel dma size %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nv50_disp_core_new_\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/corenv50.c\00", [44 x i8] zeroinitializer }, align 32
@nv50_disp_core_new_._entry_ptr = internal global ptr @nv50_disp_core_new_._entry, section ".printk_index", align 4
@nv50_disp_core_new_._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create disp core channel dma vers %d pushbuf %016llx\0A\00", [42 x i8] zeroinitializer }, align 32
@nv50_disp_core_new_._entry_ptr.5 = internal global ptr @nv50_disp_core_new_._entry.3, section ".printk_index", align 4
@nv50_disp_core_mthd_base = dso_local constant { { i32, i32, [5 x %struct.anon.0] }, [60 x i8] } { { i32, i32, [5 x %struct.anon.0] } { i32 0, i32 0, [5 x %struct.anon.0] [%struct.anon.0 { i32 128, i32 0, ptr null }, %struct.anon.0 { i32 132, i32 6359992, ptr null }, %struct.anon.0 { i32 136, i32 6359964, ptr null }, %struct.anon.0 { i32 140, i32 0, ptr null }, %struct.anon.0 zeroinitializer] }, [60 x i8] zeroinitializer }, align 32
@nv50_disp_core_mthd_sor = dso_local constant { { i32, i32, [2 x %struct.anon.0] }, [32 x i8] } { { i32, i32, [2 x %struct.anon.0] } { i32 64, i32 8, [2 x %struct.anon.0] [%struct.anon.0 { i32 1536, i32 6359920, ptr null }, %struct.anon.0 zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@nv50_disp_core_mthd_pior = dso_local constant { { i32, i32, [2 x %struct.anon.0] }, [32 x i8] } { { i32, i32, [2 x %struct.anon.0] } { i32 64, i32 8, [2 x %struct.anon.0] [%struct.anon.0 { i32 1792, i32 6359936, ptr null }, %struct.anon.0 zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@nv50_disp_core_func = dso_local constant { %struct.nv50_disp_chan_func, [44 x i8] } { %struct.nv50_disp_chan_func { ptr @nv50_disp_core_init, ptr @nv50_disp_core_fini, ptr @nv50_disp_chan_intr, ptr @nv50_disp_chan_user, ptr @nv50_disp_dmac_bind }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@nv50_disp_core_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 212, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: core init: %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nv50_disp_core_init\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv50_disp_core_init._entry_ptr = internal global ptr @nv50_disp_core_init._entry, section ".printk_index", align 4
@nv50_disp_core_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 180, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: core fini: %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nv50_disp_core_fini\00", [44 x i8] zeroinitializer }, align 32
@nv50_disp_core_fini._entry_ptr = internal global ptr @nv50_disp_core_fini._entry, section ".printk_index", align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Core\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Global\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SOR\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PIOR\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HEAD\00", [27 x i8] zeroinitializer }, align 32
@nv50_disp_core_mthd = internal constant { { ptr, i32, i32, [6 x %struct.anon] }, [44 x i8] } { { ptr, i32, i32, [6 x %struct.anon] } { ptr @.str.13, i32 0, i32 4, [6 x %struct.anon] [%struct.anon { ptr @.str.14, i32 1, ptr @nv50_disp_core_mthd_base }, %struct.anon { ptr @.str.15, i32 3, ptr @nv50_disp_core_mthd_dac }, %struct.anon { ptr @.str.16, i32 2, ptr @nv50_disp_core_mthd_sor }, %struct.anon { ptr @.str.17, i32 3, ptr @nv50_disp_core_mthd_pior }, %struct.anon { ptr @.str.18, i32 2, ptr @nv50_disp_core_mthd_head }, %struct.anon zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@nv50_disp_core_mthd_dac = internal constant { { i32, i32, [4 x %struct.anon.0] }, [40 x i8] } { { i32, i32, [4 x %struct.anon.0] } { i32 128, i32 8, [4 x %struct.anon.0] [%struct.anon.0 { i32 1024, i32 6359896, ptr null }, %struct.anon.0 { i32 1028, i32 6360028, ptr null }, %struct.anon.0 { i32 1056, i32 6359080, ptr null }, %struct.anon.0 zeroinitializer] }, [40 x i8] zeroinitializer }, align 32
@nv50_disp_core_mthd_head = internal constant { { i32, i32, [39 x %struct.anon.0] }, [100 x i8] } { { i32, i32, [39 x %struct.anon.0] } { i32 1024, i32 1344, [39 x %struct.anon.0] [%struct.anon.0 { i32 2048, i32 6359768, ptr null }, %struct.anon.0 { i32 2052, i32 6359760, ptr null }, %struct.anon.0 { i32 2056, i32 6359624, ptr null }, %struct.anon.0 { i32 2060, i32 6359672, ptr null }, %struct.anon.0 { i32 2064, i32 6359744, ptr null }, %struct.anon.0 { i32 2068, i32 6359800, ptr null }, %struct.anon.0 { i32 2072, i32 6359808, ptr null }, %struct.anon.0 { i32 2076, i32 6359784, ptr null }, %struct.anon.0 { i32 2080, i32 6359792, ptr null }, %struct.anon.0 { i32 2084, i32 6359816, ptr null }, %struct.anon.0 { i32 2088, i32 6359824, ptr null }, %struct.anon.0 { i32 2092, i32 6359656, ptr null }, %struct.anon.0 { i32 2096, i32 6359648, ptr null }, %struct.anon.0 { i32 2100, i32 0, ptr null }, %struct.anon.0 { i32 2104, i32 6359616, ptr null }, %struct.anon.0 { i32 2112, i32 6359588, ptr null }, %struct.anon.0 { i32 2116, i32 6359596, ptr null }, %struct.anon.0 { i32 2120, i32 6359720, ptr null }, %struct.anon.0 { i32 2124, i32 6359728, ptr null }, %struct.anon.0 { i32 2144, i32 6359684, ptr null }, %struct.anon.0 { i32 2148, i32 6359696, ptr null }, %struct.anon.0 { i32 2152, i32 6359832, ptr null }, %struct.anon.0 { i32 2156, i32 6359840, ptr null }, %struct.anon.0 { i32 2160, i32 6359752, ptr null }, %struct.anon.0 { i32 2164, i32 6359608, ptr null }, %struct.anon.0 { i32 2176, i32 6359640, ptr null }, %struct.anon.0 { i32 2180, i32 6359708, ptr null }, %struct.anon.0 { i32 2208, i32 6359664, ptr null }, %struct.anon.0 { i32 2212, i32 6359632, ptr null }, %struct.anon.0 { i32 2216, i32 6359776, ptr null }, %struct.anon.0 { i32 2240, i32 6359848, ptr null }, %struct.anon.0 { i32 2244, i32 6359856, ptr null }, %struct.anon.0 { i32 2248, i32 6359872, ptr null }, %struct.anon.0 { i32 2260, i32 6359864, ptr null }, %struct.anon.0 { i32 2264, i32 6359880, ptr null }, %struct.anon.0 { i32 2268, i32 6359888, ptr null }, %struct.anon.0 { i32 2304, i32 6359576, ptr null }, %struct.anon.0 { i32 2308, i32 6359736, ptr null }, %struct.anon.0 zeroinitializer] }, [100 x i8] zeroinitializer }, align 32
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 46, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 48, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [25 x i8] c"nv50_disp_core_mthd_base\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 60, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [24 x i8] c"nv50_disp_core_mthd_sor\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 85, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant [25 x i8] c"nv50_disp_core_mthd_pior\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 95, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant [20 x i8] c"nv50_disp_core_func\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 220, i32 1 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 207, i32 6 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 211, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 179, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 153, i32 10 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 157, i32 5 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 158, i32 8 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 159, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 160, i32 7 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 161, i32 7 }
@___asan_gen_.97 = private unnamed_addr constant [20 x i8] c"nv50_disp_core_mthd\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 152, i32 1 }
@___asan_gen_.100 = private unnamed_addr constant [24 x i8] c"nv50_disp_core_mthd_dac\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 73, i32 1 }
@___asan_gen_.103 = private unnamed_addr constant [25 x i8] c"nv50_disp_core_mthd_head\00", align 1
@___asan_gen_.104 = private constant [55 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/corenv50.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 105, i32 1 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @nv50_disp_core_fini._entry, ptr @nv50_disp_core_fini._entry_ptr, ptr @nv50_disp_core_init._entry, ptr @nv50_disp_core_init._entry_ptr, ptr @nv50_disp_core_new_._entry, ptr @nv50_disp_core_new_._entry.3, ptr @nv50_disp_core_new_._entry_ptr, ptr @nv50_disp_core_new_._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @nv50_disp_core_mthd_base, ptr @nv50_disp_core_mthd_sor, ptr @nv50_disp_core_mthd_pior, ptr @nv50_disp_core_func, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @nv50_disp_core_mthd, ptr @nv50_disp_core_mthd_dac, ptr @nv50_disp_core_mthd_head], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_core_new_._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_core_new_._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_core_mthd_base to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_core_mthd_sor to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_core_mthd_pior to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_core_func to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_core_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_core_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_core_mthd to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_core_mthd_dac to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_core_mthd_head to i32), i32 476, i32 576, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_disp_core_new_(ptr noundef %func, ptr noundef %mthd, ptr noundef %disp, i32 noundef %chid, ptr noundef %oclass, ptr nocapture noundef readonly %argv, i32 noundef %argc, ptr noundef %pobject) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 9
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 4
  %client = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp ugt i32 %5, 4
  br i1 %cmp, label %do.end, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.nvkm_client, ptr %3, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle, align 8
  %oclass3 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %oclass3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oclass3, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %7, i32 noundef %9, i32 noundef %argc) #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end, %entry.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %argc)
  %cmp7 = icmp ugt i32 %argc, 15
  br i1 %cmp7, label %land.lhs.true11, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true11:                                  ; preds = %land.lhs.true
  %10 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %argv, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp14 = icmp eq i8 %11, 0
  br i1 %cmp14, label %if.then16, label %land.lhs.true11.cleanup_crit_edge

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then16:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %argc)
  %tobool.not = icmp eq i32 %argc, 16
  br i1 %tobool.not, label %do.body23, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body23:                                        ; preds = %if.then16
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client, align 4
  %debug27 = getelementptr inbounds %struct.nvkm_client, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %debug27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug27, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp28 = icmp ugt i32 %15, 4
  br i1 %cmp28, label %do.end33, label %do.body23.if.end42_crit_edge

do.body23.if.end42_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

do.end33:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #6
  %name35 = getelementptr inbounds %struct.nvkm_client, ptr %13, i32 0, i32 1
  %handle37 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %handle37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %handle37, align 8
  %oclass38 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %oclass38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %oclass38, align 4
  %20 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %argv, align 8
  %conv40 = zext i8 %21 to i32
  %pushbuf = getelementptr inbounds %struct.nv50_disp_core_channel_dma_v0, ptr %argv, i32 0, i32 2
  %22 = ptrtoint ptr %pushbuf to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %pushbuf, align 8
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name35, i32 noundef %17, i32 noundef %19, i32 noundef %conv40, i64 noundef %23) #7
  br label %if.end42

if.end42:                                         ; preds = %do.end33, %do.body23.if.end42_crit_edge
  %pushbuf45 = getelementptr inbounds %struct.nv50_disp_core_channel_dma_v0, ptr %argv, i32 0, i32 2
  %24 = ptrtoint ptr %pushbuf45 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %pushbuf45, align 8
  %call47 = tail call i32 @nv50_disp_dmac_new_(ptr noundef %func, ptr noundef %mthd, ptr noundef %disp, i32 noundef %chid, i32 noundef 0, i64 noundef %25, ptr noundef %oclass, ptr noundef %pobject) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then16.cleanup_crit_edge, %land.lhs.true11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call47, %if.end42 ], [ -38, %land.lhs.true.cleanup_crit_edge ], [ -38, %land.lhs.true11.cleanup_crit_edge ], [ -7, %if.then16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_dmac_new_(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_disp_core_init(ptr nocapture noundef readonly %chan) #0 align 64 {
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
  %add.ptr = getelementptr i8, ptr %5, i32 6357504
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  %and = and i32 %6, 10420224
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %and)
  %cmp = icmp eq i32 %and, 131072
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %8, i32 6357504
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #4, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %or = or i32 %9, 8388608
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr10 = getelementptr i8, ptr %11, i32 6357504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %or) #4, !srcloc !63
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr14 = getelementptr i8, ptr %13, i32 6357504
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #4, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !64
  %and17 = and i32 %14, 4128768
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %and17)
  %cmp18 = icmp eq i32 %and17, 196608
  br i1 %cmp18, label %if.then19, label %if.end.do.body37_crit_edge

if.end.do.body37_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body37

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr25 = getelementptr i8, ptr %16, i32 6357504
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #4, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %or32 = or i32 %17, 6291456
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr34 = getelementptr i8, ptr %19, i32 6357504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %or32) #4, !srcloc !63
  br label %do.body37

do.body37:                                        ; preds = %if.then19, %if.end.do.body37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  tail call void @arm_heavy_mb() #4
  %push = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 7
  %20 = ptrtoint ptr %push to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %push, align 8
  %conv = trunc i64 %21 to i32
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr41 = getelementptr i8, ptr %23, i32 6357508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %conv) #4, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  tail call void @arm_heavy_mb() #4
  %24 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri, align 4
  %add.ptr46 = getelementptr i8, ptr %25, i32 6357512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 65536) #4, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  %26 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri, align 4
  %add.ptr51 = getelementptr i8, ptr %27, i32 6357516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 0) #4, !srcloc !63
  %28 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri, align 4
  %add.ptr57 = getelementptr i8, ptr %29, i32 6357504
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #4, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !71
  tail call void @arm_heavy_mb() #4
  %or64 = or i32 %30, 16
  %31 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri, align 4
  %add.ptr66 = getelementptr i8, ptr %32, i32 6357504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %or64) #4, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !72
  tail call void @arm_heavy_mb() #4
  %suspend_put = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 8
  %33 = ptrtoint ptr %suspend_put to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %suspend_put, align 8
  %35 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri, align 4
  %add.ptr72 = getelementptr i8, ptr %36, i32 6553600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 %34) #4, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !73
  tail call void @arm_heavy_mb() #4
  %37 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri, align 4
  %add.ptr77 = getelementptr i8, ptr %38, i32 6357504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 16777235) #4, !srcloc !63
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #4
  %39 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait) #4
  br label %do.body78

do.body78:                                        ; preds = %do.cond87.do.body78_crit_edge, %do.body37
  %40 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri, align 4
  %add.ptr81 = getelementptr i8, ptr %41, i32 6357504
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #4, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %tobool.not = icmp sgt i32 %42, -1
  br i1 %tobool.not, label %if.end126.thread, label %do.cond87

if.end126.thread:                                 ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #4
  br label %cleanup

do.cond87:                                        ; preds = %do.body78
  %call88 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #4
  %cmp89 = icmp sgt i64 %call88, -1
  br i1 %cmp89, label %do.cond87.do.body78_crit_edge, label %do.end104

do.cond87.do.body78_crit_edge:                    ; preds = %do.cond87
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body78

do.end104:                                        ; preds = %do.cond87
  %43 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %_wait, align 8
  %device106 = getelementptr inbounds %struct.nvkm_timer, ptr %44, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %device106 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device106, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 8
  %call107 = call ptr @dev_driver_string(ptr noundef %48) #4
  %49 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %_wait, align 8
  %device110 = getelementptr inbounds %struct.nvkm_timer, ptr %50, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %device110 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device110, align 4
  %dev111 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %dev111 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev111, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %56, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end104.do.body131_crit_edge

do.end104.do.body131_crit_edge:                   ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body131

if.end.i:                                         ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #6
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %54, align 4
  br label %do.body131

do.body131:                                       ; preds = %if.end.i, %do.end104.do.body131_crit_edge
  %retval.0.i = phi ptr [ %58, %if.end.i ], [ %56, %do.end104.do.body131_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 210, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %call107, ptr noundef %retval.0.i) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #4
  %debug = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 5
  %59 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp132.not = icmp eq i32 %60, 0
  br i1 %cmp132.not, label %do.body131.cleanup_crit_edge, label %do.end137

do.body131.cleanup_crit_edge:                     ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end137:                                        ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #6
  %61 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %device2, align 4
  %dev139 = getelementptr inbounds %struct.nvkm_device, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %dev139 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev139, align 8
  %name = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 4
  %65 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pri, align 4
  %add.ptr142 = getelementptr i8, ptr %66, i32 6357504
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr142) #4, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !75
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.7, ptr noundef %name, i32 noundef %67) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end137, %do.body131.cleanup_crit_edge, %if.end126.thread
  %retval.0 = phi i32 [ -16, %do.end137 ], [ -16, %do.body131.cleanup_crit_edge ], [ 0, %if.end126.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_disp_core_fini(ptr nocapture noundef %chan) #0 align 64 {
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
  %add.ptr = getelementptr i8, ptr %5, i32 6357504
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  tail call void @arm_heavy_mb() #4
  %and = and i32 %6, -17
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %8, i32 6357504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %and) #4, !srcloc !63
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %10, i32 6357504
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #4, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  tail call void @arm_heavy_mb() #4
  %and17 = and i32 %11, -4
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr20 = getelementptr i8, ptr %13, i32 6357504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %and17) #4, !srcloc !63
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #4
  %14 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait) #4
  br label %do.body22

do.body22:                                        ; preds = %do.cond29.do.body22_crit_edge, %entry
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr25 = getelementptr i8, ptr %16, i32 6357504
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #4, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !80
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
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 178, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %call45, ptr noundef %retval.0.i) #4
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
  %add.ptr78 = getelementptr i8, ptr %41, i32 6357504
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78) #4, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !81
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.11, ptr noundef %name, i32 noundef %42) #7
  br label %if.end84

if.end84:                                         ; preds = %do.end73, %do.body68.if.end84_crit_edge, %if.end64.thread
  %43 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pri, align 4
  %add.ptr87 = getelementptr i8, ptr %44, i32 6553600
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #4, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !82
  %suspend_put = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 8
  %46 = ptrtoint ptr %suspend_put to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %suspend_put, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_chan_intr(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nv50_disp_chan_user(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_dmac_bind(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_disp_core_new(ptr noundef %oclass, ptr nocapture noundef readonly %argv, i32 noundef %argc, ptr noundef %disp, ptr noundef %pobject) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv50_disp_core_new_(ptr noundef nonnull @nv50_disp_core_func, ptr noundef nonnull @nv50_disp_core_mthd, ptr noundef %disp, i32 noundef 0, ptr noundef %oclass, ptr noundef %argv, i32 noundef %argc, ptr noundef %pobject)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/corenv50.c", i32 46, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nv50_disp_core_new_._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nv50_disp_core_new_._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/corenv50.c", i32 48, i32 3}
!8 = !{ptr @nv50_disp_core_new_._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @nv50_disp_core_new_._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @nv50_disp_core_mthd_base, !11, !"nv50_disp_core_mthd_base", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/corenv50.c", i32 60, i32 1}
!12 = !{ptr @nv50_disp_core_mthd_sor, !13, !"nv50_disp_core_mthd_sor", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/corenv50.c", i32 85, i32 1}
!14 = !{ptr @nv50_disp_core_mthd_pior, !15, !"nv50_disp_core_mthd_pior", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/corenv50.c", i32 95, i32 1}
!16 = !{ptr @nv50_disp_core_func, !17, !"nv50_disp_core_func", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/corenv50.c", i32 220, i32 1}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/corenv50.c", i32 207, i32 6}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/corenv50.c", i32 211, i32 3}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @nv50_disp_core_init._entry, !21, !"_entry", i1 false, i1 false}
!26 = !{ptr @nv50_disp_core_init._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/corenv50.c", i32 179, i32 3}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @nv50_disp_core_fini._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @nv50_disp_core_fini._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/corenv50.c", i32 153, i32 10}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/corenv50.c", i32 157, i32 5}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/corenv50.c", i32 158, i32 8}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/corenv50.c", i32 159, i32 8}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/corenv50.c", i32 160, i32 7}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/corenv50.c", i32 161, i32 7}
!44 = !{ptr @nv50_disp_core_mthd, !45, !"nv50_disp_core_mthd", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/corenv50.c", i32 152, i32 1}
!46 = !{ptr @nv50_disp_core_mthd_dac, !47, !"nv50_disp_core_mthd_dac", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/corenv50.c", i32 73, i32 1}
!48 = !{ptr @nv50_disp_core_mthd_head, !49, !"nv50_disp_core_mthd_head", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/corenv50.c", i32 105, i32 1}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 5389832}
!60 = !{i64 2156266858}
!61 = !{i64 2156267628}
!62 = !{i64 2156268030}
!63 = !{i64 5389414}
!64 = !{i64 2156268518}
!65 = !{i64 2156269288}
!66 = !{i64 2156269690}
!67 = !{i64 2156270135}
!68 = !{i64 2156270548}
!69 = !{i64 2156270961}
!70 = !{i64 2156271802}
!71 = !{i64 2156272204}
!72 = !{i64 2156272663}
!73 = !{i64 2156273083}
!74 = !{i64 2156274966}
!75 = !{i64 2156278546}
!76 = !{i64 2156258916}
!77 = !{i64 2156259318}
!78 = !{i64 2156260191}
!79 = !{i64 2156260593}
!80 = !{i64 2156262508}
!81 = !{i64 2156266088}
!82 = !{i64 2156266473}
