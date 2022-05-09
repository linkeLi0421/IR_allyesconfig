; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_bitfield = type { i32, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.137 = type { ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.136 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.136 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.nv04_gr = type { %struct.nvkm_gr, [16 x ptr], %struct.spinlock }
%struct.nv04_gr_chan = type { %struct.nvkm_object, ptr, i32, [311 x i32] }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }

@nv04_gr_object = dso_local constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv04_gr_object_bind, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@nv04_gr_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 1225, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: idle timed out with status %08x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nv04_gr_idle\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv04_gr_idle._entry_ptr = internal global ptr @nv04_gr_idle._entry, section ".printk_index", align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NOTIFICATION\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DATA_ERROR\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PROTECTION_ERROR\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RANGE_EXCEPTION\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LIMIT_COLOR\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LIMIT_ZETA\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ILLEGAL_MTHD\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DMA_R_PROTECTION\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DMA_W_PROTECTION\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FORMAT_EXCEPTION\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PATCH_EXCEPTION\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"STATE_INVALID\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DOUBLE_NOTIFY\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"NOTIFY_IN_USE\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"METHOD_CNT\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BFR_NOTIFICATION\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA_VTX_PROTECTION\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMA_WIDTH_A\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMA_WIDTH_B\00", [20 x i8] zeroinitializer }, align 32
@nv04_gr_nsource = dso_local constant { [20 x %struct.nvkm_bitfield], [32 x i8] } { [20 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.6 }, %struct.nvkm_bitfield { i32 2, ptr @.str.7 }, %struct.nvkm_bitfield { i32 4, ptr @.str.8 }, %struct.nvkm_bitfield { i32 8, ptr @.str.9 }, %struct.nvkm_bitfield { i32 16, ptr @.str.10 }, %struct.nvkm_bitfield { i32 32, ptr @.str.11 }, %struct.nvkm_bitfield { i32 64, ptr @.str.12 }, %struct.nvkm_bitfield { i32 128, ptr @.str.13 }, %struct.nvkm_bitfield { i32 256, ptr @.str.14 }, %struct.nvkm_bitfield { i32 512, ptr @.str.15 }, %struct.nvkm_bitfield { i32 1024, ptr @.str.16 }, %struct.nvkm_bitfield { i32 2048, ptr @.str.17 }, %struct.nvkm_bitfield { i32 4096, ptr @.str.18 }, %struct.nvkm_bitfield { i32 8192, ptr @.str.19 }, %struct.nvkm_bitfield { i32 16384, ptr @.str.20 }, %struct.nvkm_bitfield { i32 32768, ptr @.str.21 }, %struct.nvkm_bitfield { i32 65536, ptr @.str.22 }, %struct.nvkm_bitfield { i32 131072, ptr @.str.23 }, %struct.nvkm_bitfield { i32 262144, ptr @.str.24 }, %struct.nvkm_bitfield zeroinitializer], [32 x i8] zeroinitializer }, align 32
@nv04_gr_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&gr->lock\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nv04_gr = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.137, [42 x %struct.nvkm_sclass] }, [224 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.137, [42 x %struct.nvkm_sclass] } { ptr null, ptr null, ptr @nv04_gr_init, ptr null, ptr @nv04_gr_intr, ptr null, ptr null, ptr @nv04_gr_chan_new, ptr null, ptr null, ptr null, %struct.anon.137 zeroinitializer, [42 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 18, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 23, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 24, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 25, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 28, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 29, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 30, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 31, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 33, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 48, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 54, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 55, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 56, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 57, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 66, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 67, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 68, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 72, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 74, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 75, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 82, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 83, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 84, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 85, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 87, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 88, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 89, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 90, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 91, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 92, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 93, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 94, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 95, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 96, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 97, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 100, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 101, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 102, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 114, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 118, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 119, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [224 x i8] zeroinitializer }, align 32
@nv04_gr_intr_name = internal constant { [2 x %struct.nvkm_bitfield], [16 x i8] } { [2 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.30 }, %struct.nvkm_bitfield zeroinitializer], [16 x i8] zeroinitializer }, align 32
@nv04_gr_nstatus = internal constant { [5 x %struct.nvkm_bitfield], [56 x i8] } { [5 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 2048, ptr @.str.31 }, %struct.nvkm_bitfield { i32 4096, ptr @.str.32 }, %struct.nvkm_bitfield { i32 8192, ptr @.str.33 }, %struct.nvkm_bitfield { i32 16384, ptr @.str.34 }, %struct.nvkm_bitfield zeroinitializer], [56 x i8] zeroinitializer }, align 32
@nv04_gr_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str, i32 1321, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"%s: intr %08x [%s] nsource %08x [%s] nstatus %08x [%s] ch %d [%s] subc %d class %04x mthd %04x data %08x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nv04_gr_intr\00", [19 x i8] zeroinitializer }, align 32
@nv04_gr_intr._entry_ptr = internal global ptr @nv04_gr_intr._entry, section ".printk_index", align 4
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@nv04_gr_ctx_regs = internal constant { [311 x i32], [292 x i8] } { [311 x i32] [i32 4195644, i32 4195652, i32 4195648, i32 4195656, i32 4194656, i32 4194660, i32 4194664, i32 4194668, i32 4194688, i32 4194720, i32 4194752, i32 4194784, i32 4194692, i32 4194724, i32 4194756, i32 4194788, i32 4194696, i32 4194728, i32 4194760, i32 4194792, i32 4194700, i32 4194732, i32 4194764, i32 4194796, i32 4194704, i32 4194736, i32 4194768, i32 4194800, i32 4194708, i32 4194740, i32 4194772, i32 4194804, i32 4194712, i32 4194744, i32 4194776, i32 4194808, i32 4194716, i32 4194748, i32 4194780, i32 4194812, i32 4194676, i32 4198400, i32 4198404, i32 4198408, i32 4198412, i32 4196192, i32 4195904, i32 4195928, i32 4195972, i32 4195908, i32 4195932, i32 4195976, i32 4195912, i32 4195936, i32 4195980, i32 4195916, i32 4195940, i32 4195984, i32 4195920, i32 4195944, i32 4195988, i32 4195924, i32 4195948, i32 4195992, i32 4195952, i32 4195956, i32 4195960, i32 4195964, i32 4195968, i32 4196108, i32 4196112, i32 4195996, i32 4196000, i32 4196132, i32 4196116, i32 4196352, i32 4196356, i32 4196608, i32 4196612, i32 4196616, i32 4196620, i32 4196624, i32 4196628, i32 4196632, i32 4196636, i32 4196640, i32 4196644, i32 4196648, i32 4196652, i32 4196656, i32 4196660, i32 4196664, i32 4196668, i32 4196672, i32 4196676, i32 4196680, i32 4196684, i32 4196688, i32 4196692, i32 4196696, i32 4196700, i32 4196704, i32 4196708, i32 4196712, i32 4196716, i32 4196720, i32 4196724, i32 4196728, i32 4196732, i32 4196736, i32 4196740, i32 4196744, i32 4196748, i32 4196752, i32 4196756, i32 4196760, i32 4196764, i32 4196768, i32 4196772, i32 4196776, i32 4196780, i32 4196784, i32 4196788, i32 4196792, i32 4196796, i32 4196800, i32 4196804, i32 4196808, i32 4196812, i32 4196816, i32 4196820, i32 4196824, i32 4196828, i32 4196832, i32 4196836, i32 4196840, i32 4196844, i32 4196848, i32 4196852, i32 4196856, i32 4196860, i32 4196360, i32 4196364, i32 4196368, i32 4195840, i32 4195844, i32 4196372, i32 4195848, i32 4195852, i32 4196376, i32 4196380, i32 4196384, i32 4196388, i32 4196400, i32 4195596, i32 4195680, i32 4195688, i32 4195684, i32 4195692, i32 4195328, i32 4195456, i32 4195332, i32 4195460, i32 4195336, i32 4195464, i32 4195340, i32 4195468, i32 4195344, i32 4195472, i32 4195348, i32 4195476, i32 4195352, i32 4195480, i32 4195356, i32 4195484, i32 4195360, i32 4195488, i32 4195364, i32 4195492, i32 4195368, i32 4195496, i32 4195372, i32 4195500, i32 4195376, i32 4195504, i32 4195380, i32 4195508, i32 4195384, i32 4195512, i32 4195388, i32 4195516, i32 4195392, i32 4195520, i32 4195396, i32 4195524, i32 4195400, i32 4195528, i32 4195404, i32 4195532, i32 4195408, i32 4195536, i32 4195412, i32 4195540, i32 4195416, i32 4195544, i32 4195420, i32 4195548, i32 4195424, i32 4195552, i32 4195428, i32 4195556, i32 4195432, i32 4195560, i32 4195436, i32 4195564, i32 4195440, i32 4195568, i32 4195444, i32 4195572, i32 4195448, i32 4195576, i32 4195452, i32 4195580, i32 4195636, i32 4195640, i32 4195604, i32 4195608, i32 4195612, i32 4195616, i32 4195620, i32 4195624, i32 4195628, i32 4195632, i32 4197632, i32 4197696, i32 4197760, i32 4197636, i32 4197700, i32 4197764, i32 4197640, i32 4197704, i32 4197768, i32 4197644, i32 4197708, i32 4197772, i32 4197648, i32 4197712, i32 4197776, i32 4197652, i32 4197716, i32 4197780, i32 4197656, i32 4197720, i32 4197784, i32 4197660, i32 4197724, i32 4197788, i32 4197664, i32 4197728, i32 4197792, i32 4197668, i32 4197732, i32 4197796, i32 4197672, i32 4197736, i32 4197800, i32 4197676, i32 4197740, i32 4197804, i32 4197680, i32 4197744, i32 4197808, i32 4197684, i32 4197748, i32 4197812, i32 4197688, i32 4197752, i32 4197816, i32 4197692, i32 4197756, i32 4197820, i32 4195728, i32 4195732, i32 4195736, i32 4195740, i32 4195752, i32 4195756, i32 4195760, i32 4195764, i32 4195776, i32 4195780, i32 4195784, i32 4195788, i32 4195792, i32 4195796, i32 4195800, i32 4195804, i32 4195808, i32 4195708, i32 4195712, i32 4195716, i32 4196196, i32 4196200, i32 4195600, i32 4195696, i32 4195700, i32 4195584, i32 4195588, i32 4195592, i32 4195704, i32 4194444], [292 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NOTIFY\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"STATE_IN_USE\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"INVALID_STATE\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"BAD_ARGUMENT\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PROTECTION_FAULT\00", [47 x i8] zeroinitializer }, align 32
@nv04_gr_chan = internal constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr @nv04_gr_chan_dtor, ptr null, ptr @nv04_gr_chan_fini, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [21 x i64] [i64 19, i64 8, i64 28, i64 29, i64 30, i64 31, i64 33, i64 54, i64 55, i64 72, i64 74, i64 75, i64 83, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 118, i64 119]
@__sancov_gen_cov_switch_values.35 = internal global [8 x i64] [i64 6, i64 32, i64 388, i64 392, i64 396, i64 400, i64 404, i64 764]
@__sancov_gen_cov_switch_values.36 = internal global [10 x i64] [i64 8, i64 32, i64 388, i64 392, i64 396, i64 400, i64 404, i64 408, i64 412, i64 764]
@__sancov_gen_cov_switch_values.37 = internal global [9 x i64] [i64 7, i64 32, i64 388, i64 392, i64 396, i64 400, i64 404, i64 408, i64 764]
@__sancov_gen_cov_switch_values.38 = internal global [8 x i64] [i64 6, i64 32, i64 388, i64 392, i64 396, i64 400, i64 404, i64 764]
@__sancov_gen_cov_switch_values.39 = internal global [7 x i64] [i64 5, i64 32, i64 392, i64 396, i64 400, i64 404, i64 772]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 392, i64 396, i64 400]
@__sancov_gen_cov_switch_values.41 = internal global [8 x i64] [i64 6, i64 32, i64 392, i64 396, i64 400, i64 404, i64 408, i64 764]
@__sancov_gen_cov_switch_values.42 = internal global [7 x i64] [i64 5, i64 32, i64 388, i64 392, i64 396, i64 400, i64 764]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 760, i64 764]
@__sancov_gen_cov_switch_values.44 = internal global [9 x i64] [i64 7, i64 32, i64 388, i64 392, i64 396, i64 400, i64 404, i64 408, i64 764]
@__sancov_gen_cov_switch_values.45 = internal global [10 x i64] [i64 8, i64 32, i64 388, i64 392, i64 396, i64 400, i64 404, i64 408, i64 412, i64 764]
@__sancov_gen_cov_switch_values.46 = internal global [10 x i64] [i64 8, i64 32, i64 392, i64 396, i64 400, i64 404, i64 408, i64 412, i64 416, i64 996]
@__sancov_gen_cov_switch_values.47 = internal global [10 x i64] [i64 8, i64 32, i64 388, i64 392, i64 396, i64 400, i64 404, i64 408, i64 412, i64 764]
@__sancov_gen_cov_switch_values.48 = internal global [9 x i64] [i64 7, i64 32, i64 388, i64 392, i64 396, i64 400, i64 404, i64 408, i64 764]
@__sancov_gen_cov_switch_values.49 = internal global [8 x i64] [i64 6, i64 32, i64 392, i64 396, i64 400, i64 404, i64 408, i64 772]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 8, i64 25, i64 48]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 8, i64 24, i64 48]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 67]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 8, i64 18, i64 48]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 88]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 8, i64 31, i64 72]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 87]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 89]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 90]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 91]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 68]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 114]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 66]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 8, i64 48, i64 66, i64 82]
@___asan_gen_.65 = private unnamed_addr constant [15 x i8] c"nv04_gr_object\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1063, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1220, i32 6 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1224, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1249, i32 44 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1250, i32 44 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1251, i32 44 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1252, i32 44 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1253, i32 44 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1254, i32 44 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1255, i32 44 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1256, i32 44 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1257, i32 44 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1258, i32 44 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1259, i32 44 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1260, i32 44 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1261, i32 44 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1262, i32 44 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1263, i32 44 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1264, i32 44 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1265, i32 44 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1266, i32 44 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1267, i32 44 }
@___asan_gen_.146 = private unnamed_addr constant [16 x i8] c"nv04_gr_nsource\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1248, i32 1 }
@___asan_gen_.149 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1422, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [8 x i8] c"nv04_gr\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1365, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant [18 x i8] c"nv04_gr_intr_name\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1233, i32 1 }
@___asan_gen_.161 = private unnamed_addr constant [16 x i8] c"nv04_gr_nstatus\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1239, i32 1 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1316, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"nv04_gr_ctx_regs\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 35, i32 1 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1234, i32 27 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1240, i32 44 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1241, i32 44 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1242, i32 44 }
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1243, i32 44 }
@___asan_gen_.194 = private unnamed_addr constant [13 x i8] c"nv04_gr_chan\00", align 1
@___asan_gen_.195 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1178, i32 1 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @nv04_gr_idle._entry, ptr @nv04_gr_idle._entry_ptr, ptr @nv04_gr_intr._entry, ptr @nv04_gr_intr._entry_ptr, ptr @nv04_gr_object, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @nv04_gr_nsource, ptr @nv04_gr_new.__key, ptr @.str.25, ptr @nv04_gr, ptr @nv04_gr_intr_name, ptr @nv04_gr_nstatus, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @nv04_gr_ctx_regs, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @nv04_gr_chan], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_gr_object to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_gr_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_gr_nsource to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_gr_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_gr to i32), i32 896, i32 1120, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_gr_intr_name to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_gr_nstatus to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_gr_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_gr_ctx_regs to i32), i32 1244, i32 1536, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_gr_chan to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv04_gr_object_bind(ptr nocapture noundef readonly %object, ptr noundef %parent, i32 noundef %align, ptr noundef %pgpuobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 2
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 8
  %device = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %call = tail call i32 @nvkm_gpuobj_new(ptr noundef %3, i32 noundef 16, i32 noundef %align, i1 noundef zeroext false, ptr noundef %parent, ptr noundef %pgpuobj) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pgpuobj, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call1 = tail call ptr %9(ptr noundef %5) #5
  %10 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pgpuobj, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %wr32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr32, align 4
  %oclass = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %16 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oclass, align 4
  tail call void %15(ptr noundef %11, i32 noundef 0, i32 noundef %17) #5
  %18 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pgpuobj, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %rd32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %rd32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rd32, align 4
  %call2 = tail call i32 %23(ptr noundef %19, i32 noundef 0) #5
  %24 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pgpuobj, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %wr323 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %wr323 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wr323, align 4
  %or = or i32 %call2, 524288
  tail call void %29(ptr noundef %25, i32 noundef 0, i32 noundef %or) #5
  %30 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pgpuobj, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %wr324 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %wr324 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wr324, align 4
  tail call void %35(ptr noundef %31, i32 noundef 4, i32 noundef 0) #5
  %36 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pgpuobj, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %wr325 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %wr325 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wr325, align 4
  tail call void %41(ptr noundef %37, i32 noundef 8, i32 noundef 0) #5
  %42 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pgpuobj, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  %wr326 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %wr326 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wr326, align 4
  tail call void %47(ptr noundef %43, i32 noundef 12, i32 noundef 0) #5
  %48 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pgpuobj, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 8
  %release = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %release, align 4
  tail call void %53(ptr noundef %49) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nv04_gr_idle(ptr noundef %gr) local_unnamed_addr #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %card_type = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %card_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3)
  %cmp = icmp eq i32 %3, 64
  %spec.select = select i1 %cmp, i32 -16385, i32 -1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #5
  %4 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 4196096
  %7 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !90
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  %and3 = and i32 %7, %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.end40.thread, label %do.cond

if.end40.thread:                                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #5
  br label %cleanup

do.cond:                                          ; preds = %do.body
  %call6 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #5
  %cmp7 = icmp sgt i64 %call6, -1
  br i1 %cmp7, label %do.cond.do.body_crit_edge, label %do.end18

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end18:                                         ; preds = %do.cond
  %8 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_wait, align 8
  %device20 = getelementptr inbounds %struct.nvkm_timer, ptr %9, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %device20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device20, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %call21 = call ptr @dev_driver_string(ptr noundef %13) #5
  %14 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_wait, align 8
  %device24 = getelementptr inbounds %struct.nvkm_timer, ptr %15, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %device24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device24, align 4
  %dev25 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev25, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end18.do.body44_crit_edge

do.end18.do.body44_crit_edge:                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body44

if.end.i:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  br label %do.body44

do.body44:                                        ; preds = %if.end.i, %do.end18.do.body44_crit_edge
  %retval.0.i = phi ptr [ %23, %if.end.i ], [ %21, %do.end18.do.body44_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1223, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call21, ptr noundef %retval.0.i) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #5
  %debug = getelementptr inbounds %struct.nvkm_gr, ptr %gr, i32 0, i32 1, i32 1, i32 5
  %24 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp45.not = icmp eq i32 %25, 0
  br i1 %cmp45.not, label %do.body44.cleanup_crit_edge, label %do.end49

do.body44.cleanup_crit_edge:                      ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end49:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device2, align 4
  %dev51 = getelementptr inbounds %struct.nvkm_device, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev51, align 8
  %name = getelementptr inbounds %struct.nvkm_gr, ptr %gr, i32 0, i32 1, i32 1, i32 4
  %30 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri, align 4
  %add.ptr54 = getelementptr i8, ptr %31, i32 4196096
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #5, !srcloc !90
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %32) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %do.body44.cleanup_crit_edge, %if.end40.thread
  ret i1 %tobool.not
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_gr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 312) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.nv04_gr, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @nv04_gr_new.__key, i16 noundef signext 3) #5
  %1 = ptrtoint ptr %pgr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pgr, align 4
  %call3 = tail call i32 @nvkm_gr_ctor(ptr noundef nonnull @nv04_gr, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext true, ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gr_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv04_gr_init(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 4194560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 -1) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %5, i32 4194624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 -1) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %7, i32 4195592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr18 = getelementptr i8, ptr %9, i32 4195704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr23 = getelementptr i8, ptr %11, i32 4194432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 305250304) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr28 = getelementptr i8, ptr %13, i32 4194436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 1913721088) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr33 = getelementptr i8, ptr %15, i32 4194440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 299233393) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr38 = getelementptr i8, ptr %17, i32 4194444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 -254476495) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr43 = getelementptr i8, ptr %19, i32 4196112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 -1) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr48 = getelementptr i8, ptr %21, i32 4194672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 268435712) #5, !srcloc !94
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr50 = getelementptr i8, ptr %23, i32 4194676
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %and = and i32 %24, 16777215
  %or = or i32 %and, 251658240
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %add.ptr56 = getelementptr i8, ptr %26, i32 4194676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %or) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri, align 4
  %add.ptr62 = getelementptr i8, ptr %28, i32 4196368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 0) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri, align 4
  %add.ptr67 = getelementptr i8, ptr %30, i32 4195848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 -1) #5, !srcloc !94
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_gr_intr(ptr noundef %base) #0 align 64 {
entry:
  %msg = alloca [128 x i8], align 1
  %src = alloca [128 x i8], align 1
  %sta = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device3 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 4194560
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %6, i32 4194568
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 4194564
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr18 = getelementptr i8, ptr %12, i32 4196100
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  %and = lshr i32 %13, 24
  %shr = and i32 %and, 15
  %and21 = lshr i32 %13, 13
  %shr22 = and i32 %and21, 7
  %and23 = and i32 %13, 8188
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr26 = getelementptr i8, ptr %15, i32 4196104
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %mul = shl nuw nsw i32 %shr22, 2
  %add = or i32 %mul, 4194688
  %add.ptr31 = getelementptr i8, ptr %18, i32 %add
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  %and34 = and i32 %19, 255
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr37 = getelementptr i8, ptr %21, i32 4194668
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  %and40 = shl i32 %22, 4
  %shl = and i32 %and40, 1048560
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %msg) #5
  %23 = call ptr @memset(ptr %msg, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %src) #5
  %24 = call ptr @memset(ptr %src, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %sta) #5
  %25 = call ptr @memset(ptr %sta, i32 255, i32 128)
  %lock = getelementptr inbounds %struct.nv04_gr, ptr %base, i32 0, i32 2
  %call44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %arrayidx = getelementptr %struct.nv04_gr, ptr %base, i32 0, i32 1, i32 %shr
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %and48 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool.not = icmp eq i32 %and48, 0
  %tobool49.not = icmp eq ptr %27, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool49.not
  %and50 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %or.cond139 = select i1 %or.cond, i1 true, i1 %tobool51.not
  br i1 %or.cond139, label %entry.if.end57_crit_edge, label %if.then52

entry.if.end57_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then52:                                        ; preds = %entry
  %28 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri, align 4
  %add.i = or i32 %shl, 7340032
  %add.ptr.i = getelementptr i8, ptr %29, i32 %add.i
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  %trunc.i = trunc i32 %30 to i8
  %31 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %nv04_gr_mthd.exit.thread [
    i8 28, label %if.then52.nv04_gr_mthd.exit_crit_edge
    i8 29, label %if.then52.nv04_gr_mthd.exit_crit_edge144
    i8 30, label %if.then52.nv04_gr_mthd.exit_crit_edge145
    i8 31, label %sw.bb1.i
    i8 33, label %sw.bb2.i
    i8 54, label %sw.bb3.i
    i8 55, label %sw.bb4.i
    i8 72, label %sw.bb5.i
    i8 74, label %sw.bb6.i
    i8 75, label %sw.bb7.i
    i8 83, label %sw.bb8.i
    i8 92, label %if.then52.sw.bb9.i_crit_edge
    i8 93, label %if.then52.sw.bb9.i_crit_edge146
    i8 94, label %if.then52.sw.bb9.i_crit_edge147
    i8 95, label %sw.bb10.i
    i8 96, label %sw.bb11.i
    i8 97, label %sw.bb12.i
    i8 118, label %sw.bb13.i
    i8 119, label %sw.bb14.i
  ]

if.then52.sw.bb9.i_crit_edge147:                  ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9.i

if.then52.sw.bb9.i_crit_edge146:                  ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9.i

if.then52.sw.bb9.i_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9.i

if.then52.nv04_gr_mthd.exit_crit_edge145:         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv04_gr_mthd.exit

if.then52.nv04_gr_mthd.exit_crit_edge144:         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv04_gr_mthd.exit

if.then52.nv04_gr_mthd.exit_crit_edge:            ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv04_gr_mthd.exit

nv04_gr_mthd.exit.thread:                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  %and55143 = and i32 %4, -2
  br label %if.end57

sw.bb1.i:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv04_gr_mthd.exit

sw.bb2.i:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv04_gr_mthd.exit

sw.bb3.i:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv04_gr_mthd.exit

sw.bb4.i:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv04_gr_mthd.exit

sw.bb5.i:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv04_gr_mthd.exit

sw.bb6.i:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv04_gr_mthd.exit

sw.bb7.i:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv04_gr_mthd.exit

sw.bb8.i:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv04_gr_mthd.exit

sw.bb9.i:                                         ; preds = %if.then52.sw.bb9.i_crit_edge, %if.then52.sw.bb9.i_crit_edge146, %if.then52.sw.bb9.i_crit_edge147
  br label %nv04_gr_mthd.exit

sw.bb10.i:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv04_gr_mthd.exit

sw.bb11.i:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv04_gr_mthd.exit

sw.bb12.i:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv04_gr_mthd.exit

sw.bb13.i:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv04_gr_mthd.exit

sw.bb14.i:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv04_gr_mthd.exit

nv04_gr_mthd.exit:                                ; preds = %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then52.nv04_gr_mthd.exit_crit_edge, %if.then52.nv04_gr_mthd.exit_crit_edge144, %if.then52.nv04_gr_mthd.exit_crit_edge145
  %func.0.i = phi ptr [ @nv04_gr_mthd_sifm, %sw.bb14.i ], [ @nv04_gr_mthd_sifc, %sw.bb13.i ], [ @nv04_gr_mthd_ifc, %sw.bb12.i ], [ @nv04_gr_mthd_iifc, %sw.bb11.i ], [ @nv04_gr_mthd_blit, %sw.bb10.i ], [ @nv04_gr_mthd_prim, %sw.bb9.i ], [ @nv04_gr_mthd_surf3d, %sw.bb8.i ], [ @nv03_gr_mthd_gdi, %sw.bb7.i ], [ @nv04_gr_mthd_gdi, %sw.bb6.i ], [ @nv03_gr_mthd_ttri, %sw.bb5.i ], [ @nv03_gr_mthd_sifm, %sw.bb4.i ], [ @nv03_gr_mthd_sifc, %sw.bb3.i ], [ @nv01_gr_mthd_ifc, %sw.bb2.i ], [ @nv01_gr_mthd_blit, %sw.bb1.i ], [ @nv01_gr_mthd_prim, %if.then52.nv04_gr_mthd.exit_crit_edge ], [ @nv01_gr_mthd_prim, %if.then52.nv04_gr_mthd.exit_crit_edge144 ], [ @nv01_gr_mthd_prim, %if.then52.nv04_gr_mthd.exit_crit_edge145 ]
  %call15.i = tail call zeroext i1 %func.0.i(ptr noundef %1, i32 noundef %shl, i32 noundef %and23, i32 noundef %16) #5
  %and55 = and i32 %4, -2
  %spec.select = select i1 %call15.i, i32 %4, i32 %and55
  br label %if.end57

if.end57:                                         ; preds = %nv04_gr_mthd.exit, %nv04_gr_mthd.exit.thread, %entry.if.end57_crit_edge
  %show.0 = phi i32 [ %4, %entry.if.end57_crit_edge ], [ %and55143, %nv04_gr_mthd.exit.thread ], [ %spec.select, %nv04_gr_mthd.exit ]
  %and58 = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end57.do.body69_crit_edge, label %do.body61

if.end57.do.body69_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body69

do.body61:                                        ; preds = %if.end57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pri, align 4
  %add.ptr65 = getelementptr i8, ptr %33, i32 4194560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 4096) #5, !srcloc !94
  %and66 = and i32 %4, -4097
  %and67 = and i32 %show.0, -4097
  %34 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device3, align 4
  %call.i = tail call zeroext i1 @nv04_gr_idle(ptr noundef %base) #5
  %36 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device3, align 4
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 4194672
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  %and.i.i = and i32 %40, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body61.if.end.i_crit_edge, label %if.then.i.i

do.body61.if.end.i_crit_edge:                     ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i.i:                                      ; preds = %do.body61
  %41 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pri.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %42, i32 4194676
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %43)
  %cmp.i.i = icmp ult i32 %43, 268435456
  br i1 %cmp.i.i, label %nv04_gr_channel.exit.i, label %if.then.i.i.if.end.i_crit_edge

if.then.i.i.if.end.i_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

nv04_gr_channel.exit.i:                           ; preds = %if.then.i.i
  %shr.i.i = lshr i32 %43, 24
  %arrayidx.i.i = getelementptr %struct.nv04_gr, ptr %base, i32 0, i32 1, i32 %shr.i.i
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i = icmp eq ptr %45, null
  br i1 %tobool.not.i, label %nv04_gr_channel.exit.i.if.end.i_crit_edge, label %if.then.i

nv04_gr_channel.exit.i.if.end.i_crit_edge:        ; preds = %nv04_gr_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %nv04_gr_channel.exit.i
  %gr.i.i = getelementptr inbounds %struct.nv04_gr_chan, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %gr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %gr.i.i, align 8
  %device1.i16.i = getelementptr inbounds %struct.nvkm_gr, ptr %47, i32 0, i32 1, i32 1, i32 1
  %48 = ptrtoint ptr %device1.i16.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device1.i16.i, align 4
  %pri.i17.i = getelementptr inbounds %struct.nvkm_device, ptr %49, i32 0, i32 11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i
  %i.01.i.i = phi i32 [ 0, %if.then.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %50 = ptrtoint ptr %pri.i17.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pri.i17.i, align 4
  %arrayidx.i18.i = getelementptr [311 x i32], ptr @nv04_gr_ctx_regs, i32 0, i32 %i.01.i.i
  %52 = ptrtoint ptr %arrayidx.i18.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i18.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %51, i32 %53
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  %arrayidx2.i.i = getelementptr %struct.nv04_gr_chan, ptr %45, i32 0, i32 3, i32 %i.01.i.i
  %55 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx2.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.01.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 311
  br i1 %exitcond.not.i.i, label %nv04_gr_unload_context.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

nv04_gr_unload_context.exit.i:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  tail call void @arm_heavy_mb() #5
  %56 = ptrtoint ptr %pri.i17.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pri.i17.i, align 4
  %add.ptr4.i20.i = getelementptr i8, ptr %57, i32 4194672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i20.i, i32 268435456) #5, !srcloc !94
  %58 = ptrtoint ptr %pri.i17.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pri.i17.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %59, i32 4194676
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  tail call void @arm_heavy_mb() #5
  %and.i21.i = and i32 %60, 16777215
  %or.i.i = or i32 %and.i21.i, 251658240
  %61 = ptrtoint ptr %pri.i17.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pri.i17.i, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %62, i32 4194676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i, i32 %or.i.i) #5, !srcloc !94
  br label %if.end.i

if.end.i:                                         ; preds = %nv04_gr_unload_context.exit.i, %nv04_gr_channel.exit.i.if.end.i_crit_edge, %if.then.i.i.if.end.i_crit_edge, %do.body61.if.end.i_crit_edge
  %pri.i140 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 11
  %63 = ptrtoint ptr %pri.i140 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pri.i140, align 4
  %add.ptr.i141 = getelementptr i8, ptr %64, i32 4196100
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %shr.i = lshr i32 %65, 24
  %and.i = and i32 %shr.i, 15
  %arrayidx.i = getelementptr %struct.nv04_gr, ptr %base, i32 0, i32 1, i32 %and.i
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i, align 4
  %tobool6.not.i = icmp eq ptr %67, null
  br i1 %tobool6.not.i, label %if.end.i.do.body69_crit_edge, label %if.then7.i

if.end.i.do.body69_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body69

if.then7.i:                                       ; preds = %if.end.i
  %gr.i22.i = getelementptr inbounds %struct.nv04_gr_chan, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %gr.i22.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %gr.i22.i, align 8
  %device1.i23.i = getelementptr inbounds %struct.nvkm_gr, ptr %69, i32 0, i32 1, i32 1, i32 1
  %70 = ptrtoint ptr %device1.i23.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %device1.i23.i, align 4
  %pri.i24.i = getelementptr inbounds %struct.nvkm_device, ptr %71, i32 0, i32 11
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then7.i
  %i.01.i25.i = phi i32 [ 0, %if.then7.i ], [ %inc.i29.i, %do.body.i.i.do.body.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  tail call void @arm_heavy_mb() #5
  %arrayidx.i26.i = getelementptr %struct.nv04_gr_chan, ptr %67, i32 0, i32 3, i32 %i.01.i25.i
  %72 = ptrtoint ptr %arrayidx.i26.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i26.i, align 4
  %74 = ptrtoint ptr %pri.i24.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pri.i24.i, align 4
  %arrayidx2.i27.i = getelementptr [311 x i32], ptr @nv04_gr_ctx_regs, i32 0, i32 %i.01.i25.i
  %76 = ptrtoint ptr %arrayidx2.i27.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx2.i27.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %75, i32 %77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 %73) #5, !srcloc !94
  %inc.i29.i = add nuw nsw i32 %i.01.i25.i, 1
  %exitcond.not.i30.i = icmp eq i32 %inc.i29.i, 311
  br i1 %exitcond.not.i30.i, label %nv04_gr_load_context.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

nv04_gr_load_context.exit.i:                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  tail call void @arm_heavy_mb() #5
  %78 = ptrtoint ptr %pri.i24.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pri.i24.i, align 4
  %add.ptr7.i31.i = getelementptr i8, ptr %79, i32 4194672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i31.i, i32 268501248) #5, !srcloc !94
  %80 = ptrtoint ptr %pri.i24.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pri.i24.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %81, i32 4194676
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !127
  tail call void @arm_heavy_mb() #5
  %and.i32.i = and i32 %82, 16777215
  %shl.i.i = shl nuw nsw i32 %and.i, 24
  %or.i33.i = or i32 %and.i32.i, %shl.i.i
  %83 = ptrtoint ptr %pri.i24.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pri.i24.i, align 4
  %add.ptr14.i34.i = getelementptr i8, ptr %84, i32 4194676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i34.i, i32 %or.i33.i) #5, !srcloc !94
  %85 = ptrtoint ptr %pri.i24.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pri.i24.i, align 4
  %add.ptr21.i.i = getelementptr i8, ptr %86, i32 4196180
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  tail call void @arm_heavy_mb() #5
  %and27.i.i = and i32 %87, 1048575
  %88 = ptrtoint ptr %pri.i24.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pri.i24.i, align 4
  %add.ptr30.i.i = getelementptr i8, ptr %89, i32 4196180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.i, i32 %and27.i.i) #5, !srcloc !94
  br label %do.body69

do.body69:                                        ; preds = %nv04_gr_load_context.exit.i, %if.end.i.do.body69_crit_edge, %if.end57.do.body69_crit_edge
  %stat.0 = phi i32 [ %4, %if.end57.do.body69_crit_edge ], [ %and66, %if.end.i.do.body69_crit_edge ], [ %and66, %nv04_gr_load_context.exit.i ]
  %show.1 = phi i32 [ %show.0, %if.end57.do.body69_crit_edge ], [ %and67, %if.end.i.do.body69_crit_edge ], [ %and67, %nv04_gr_load_context.exit.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  tail call void @arm_heavy_mb() #5
  %90 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pri, align 4
  %add.ptr73 = getelementptr i8, ptr %91, i32 4194560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %stat.0) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  tail call void @arm_heavy_mb() #5
  %92 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pri, align 4
  %add.ptr78 = getelementptr i8, ptr %93, i32 4196128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 1) #5, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %show.1)
  %tobool79.not = icmp eq i32 %show.1, 0
  br i1 %tobool79.not, label %do.body69.if.end101_crit_edge, label %if.then80

do.body69.if.end101_crit_edge:                    ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

if.then80:                                        ; preds = %do.body69
  call void @nvkm_snprintbf(ptr noundef nonnull %msg, i32 noundef 128, ptr noundef nonnull @nv04_gr_intr_name, i32 noundef %show.1) #5
  call void @nvkm_snprintbf(ptr noundef nonnull %src, i32 noundef 128, ptr noundef nonnull @nv04_gr_nsource, i32 noundef %7) #5
  call void @nvkm_snprintbf(ptr noundef nonnull %sta, i32 noundef 128, ptr noundef nonnull @nv04_gr_nstatus, i32 noundef %10) #5
  %debug = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %94 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp84.not = icmp eq i32 %95, 0
  br i1 %cmp84.not, label %if.then80.if.end101_crit_edge, label %do.end89

if.then80.if.end101_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

do.end89:                                         ; preds = %if.then80
  %96 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  br i1 %tobool49.not, label %do.end89.cond.end_crit_edge, label %cond.true

do.end89.cond.end_crit_edge:                      ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #7
  %client = getelementptr inbounds %struct.nvkm_object, ptr %27, i32 0, i32 1
  %100 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %client, align 4
  %name96 = getelementptr inbounds %struct.nvkm_client, ptr %101, i32 0, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end89.cond.end_crit_edge
  %cond = phi ptr [ %name96, %cond.true ], [ @.str.29, %do.end89.cond.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.27, ptr noundef %name, i32 noundef %show.1, ptr noundef nonnull %msg, i32 noundef %7, ptr noundef nonnull %src, i32 noundef %10, ptr noundef nonnull %sta, i32 noundef %shr, ptr noundef %cond, i32 noundef %shr22, i32 noundef %and34, i32 noundef %and23, i32 noundef %16) #8
  br label %if.end101

if.end101:                                        ; preds = %cond.end, %if.then80.if.end101_crit_edge, %do.body69.if.end101_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call44) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %sta) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %src) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %msg) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv04_gr_chan_new(ptr noundef %base, ptr nocapture noundef readonly %fifoch, ptr noundef %oclass, ptr nocapture noundef writeonly %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1328) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nv04_gr_chan, ptr noundef %oclass, ptr noundef nonnull %call7.i.i) #5
  %gr1 = getelementptr inbounds %struct.nv04_gr_chan, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %gr1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %base, ptr %gr1, align 8
  %chid = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %fifoch, i32 0, i32 5
  %2 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %chid, align 8
  %conv = zext i16 %3 to i32
  %chid2 = getelementptr inbounds %struct.nv04_gr_chan, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %chid2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %chid2, align 4
  %5 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %pobject, align 4
  %arrayidx2.i = getelementptr %struct.nv04_gr_chan, ptr %call7.i.i, i32 0, i32 3, i32 310
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -86704335, ptr %arrayidx2.i, align 8
  %lock = getelementptr inbounds %struct.nv04_gr, ptr %base, i32 0, i32 2
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %7 = ptrtoint ptr %chid2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chid2, align 4
  %arrayidx = getelementptr %struct.nv04_gr, ptr %base, i32 0, i32 1, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_snprintbf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv01_gr_mthd_prim(ptr noundef %device, i32 noundef %inst, i32 noundef %mthd, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mthd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %mthd, label %entry.cleanup_crit_edge [
    i32 388, label %entry.sw.epilog_crit_edge
    i32 392, label %sw.bb1
    i32 396, label %sw.bb2
    i32 400, label %sw.bb3
    i32 404, label %sw.bb4
    i32 764, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %func.0 = phi ptr [ @nv04_gr_mthd_set_operation, %sw.bb5 ], [ @nv04_gr_mthd_bind_surf_dst, %sw.bb4 ], [ @nv04_gr_mthd_bind_beta1, %sw.bb3 ], [ @nv04_gr_mthd_bind_rop, %sw.bb2 ], [ @nv01_gr_mthd_bind_patt, %sw.bb1 ], [ @nv01_gr_mthd_bind_clip, %entry.sw.epilog_crit_edge ]
  %call = tail call zeroext i1 %func.0(ptr noundef %device, i32 noundef %inst, i32 noundef %data) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call, %sw.epilog ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv01_gr_mthd_blit(ptr noundef %device, i32 noundef %inst, i32 noundef %mthd, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mthd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %mthd, label %entry.cleanup_crit_edge [
    i32 388, label %entry.sw.epilog_crit_edge
    i32 392, label %sw.bb1
    i32 396, label %sw.bb2
    i32 400, label %sw.bb3
    i32 404, label %sw.bb4
    i32 408, label %sw.bb5
    i32 412, label %sw.bb6
    i32 764, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %func.0 = phi ptr [ @nv04_gr_mthd_set_operation, %sw.bb7 ], [ @nv04_gr_mthd_bind_surf_src, %sw.bb6 ], [ @nv04_gr_mthd_bind_surf_dst, %sw.bb5 ], [ @nv04_gr_mthd_bind_beta1, %sw.bb4 ], [ @nv04_gr_mthd_bind_rop, %sw.bb3 ], [ @nv01_gr_mthd_bind_patt, %sw.bb2 ], [ @nv01_gr_mthd_bind_clip, %sw.bb1 ], [ @nv01_gr_mthd_bind_chroma, %entry.sw.epilog_crit_edge ]
  %call = tail call zeroext i1 %func.0(ptr noundef %device, i32 noundef %inst, i32 noundef %data) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call, %sw.epilog ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv01_gr_mthd_ifc(ptr noundef %device, i32 noundef %inst, i32 noundef %mthd, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mthd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %mthd, label %entry.cleanup_crit_edge [
    i32 388, label %entry.sw.epilog_crit_edge
    i32 392, label %sw.bb1
    i32 396, label %sw.bb2
    i32 400, label %sw.bb3
    i32 404, label %sw.bb4
    i32 408, label %sw.bb5
    i32 764, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %func.0 = phi ptr [ @nv04_gr_mthd_set_operation, %sw.bb6 ], [ @nv04_gr_mthd_bind_surf_dst, %sw.bb5 ], [ @nv04_gr_mthd_bind_beta1, %sw.bb4 ], [ @nv04_gr_mthd_bind_rop, %sw.bb3 ], [ @nv01_gr_mthd_bind_patt, %sw.bb2 ], [ @nv01_gr_mthd_bind_clip, %sw.bb1 ], [ @nv01_gr_mthd_bind_chroma, %entry.sw.epilog_crit_edge ]
  %call = tail call zeroext i1 %func.0(ptr noundef %device, i32 noundef %inst, i32 noundef %data) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call, %sw.epilog ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv03_gr_mthd_sifc(ptr noundef %device, i32 noundef %inst, i32 noundef %mthd, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mthd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %mthd, label %entry.cleanup_crit_edge [
    i32 388, label %entry.sw.epilog_crit_edge
    i32 392, label %sw.bb1
    i32 396, label %sw.bb2
    i32 400, label %sw.bb3
    i32 404, label %sw.bb4
    i32 764, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %func.0 = phi ptr [ @nv04_gr_mthd_set_operation, %sw.bb5 ], [ @nv04_gr_mthd_bind_surf_dst, %sw.bb4 ], [ @nv04_gr_mthd_bind_beta1, %sw.bb3 ], [ @nv04_gr_mthd_bind_rop, %sw.bb2 ], [ @nv01_gr_mthd_bind_patt, %sw.bb1 ], [ @nv01_gr_mthd_bind_chroma, %entry.sw.epilog_crit_edge ]
  %call = tail call zeroext i1 %func.0(ptr noundef %device, i32 noundef %inst, i32 noundef %data) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call, %sw.epilog ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv03_gr_mthd_sifm(ptr noundef %device, i32 noundef %inst, i32 noundef %mthd, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mthd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %mthd, label %entry.cleanup_crit_edge [
    i32 392, label %entry.sw.epilog_crit_edge
    i32 396, label %sw.bb1
    i32 400, label %sw.bb2
    i32 404, label %sw.bb3
    i32 772, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %func.0 = phi ptr [ @nv04_gr_mthd_set_operation, %sw.bb4 ], [ @nv04_gr_mthd_bind_surf_dst, %sw.bb3 ], [ @nv04_gr_mthd_bind_beta1, %sw.bb2 ], [ @nv04_gr_mthd_bind_rop, %sw.bb1 ], [ @nv01_gr_mthd_bind_patt, %entry.sw.epilog_crit_edge ]
  %call = tail call zeroext i1 %func.0(ptr noundef %device, i32 noundef %inst, i32 noundef %data) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call, %sw.epilog ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv03_gr_mthd_ttri(ptr noundef %device, i32 noundef %inst, i32 noundef %mthd, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mthd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %mthd, label %entry.cleanup_crit_edge [
    i32 392, label %entry.sw.epilog_crit_edge
    i32 396, label %sw.bb1
    i32 400, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %func.0 = phi ptr [ @nv04_gr_mthd_bind_surf_zeta, %sw.bb2 ], [ @nv04_gr_mthd_bind_surf_color, %sw.bb1 ], [ @nv01_gr_mthd_bind_clip, %entry.sw.epilog_crit_edge ]
  %call = tail call zeroext i1 %func.0(ptr noundef %device, i32 noundef %inst, i32 noundef %data) #5, !callees !132
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call, %sw.epilog ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_gdi(ptr noundef %device, i32 noundef %inst, i32 noundef %mthd, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mthd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %mthd, label %entry.cleanup_crit_edge [
    i32 392, label %entry.sw.epilog_crit_edge
    i32 396, label %sw.bb1
    i32 400, label %sw.bb2
    i32 404, label %sw.bb3
    i32 408, label %sw.bb4
    i32 764, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %func.0 = phi ptr [ @nv04_gr_mthd_set_operation, %sw.bb5 ], [ @nv04_gr_mthd_bind_surf2d, %sw.bb4 ], [ @nv04_gr_mthd_bind_beta4, %sw.bb3 ], [ @nv04_gr_mthd_bind_beta1, %sw.bb2 ], [ @nv04_gr_mthd_bind_rop, %sw.bb1 ], [ @nv04_gr_mthd_bind_patt, %entry.sw.epilog_crit_edge ]
  %call = tail call zeroext i1 %func.0(ptr noundef %device, i32 noundef %inst, i32 noundef %data) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call, %sw.epilog ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv03_gr_mthd_gdi(ptr noundef %device, i32 noundef %inst, i32 noundef %mthd, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mthd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %mthd, label %entry.cleanup_crit_edge [
    i32 388, label %entry.sw.epilog_crit_edge
    i32 392, label %sw.bb1
    i32 396, label %sw.bb2
    i32 400, label %sw.bb3
    i32 764, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %func.0 = phi ptr [ @nv04_gr_mthd_set_operation, %sw.bb4 ], [ @nv04_gr_mthd_bind_surf_dst, %sw.bb3 ], [ @nv04_gr_mthd_bind_beta1, %sw.bb2 ], [ @nv04_gr_mthd_bind_rop, %sw.bb1 ], [ @nv01_gr_mthd_bind_patt, %entry.sw.epilog_crit_edge ]
  %call = tail call zeroext i1 %func.0(ptr noundef %device, i32 noundef %inst, i32 noundef %data) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call, %sw.epilog ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_surf3d(ptr noundef %device, i32 noundef %inst, i32 noundef %mthd, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mthd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %mthd, label %entry.cleanup_crit_edge [
    i32 760, label %entry.sw.epilog_crit_edge
    i32 764, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %func.0 = phi ptr [ @nv04_gr_mthd_surf3d_clip_v, %sw.bb1 ], [ @nv04_gr_mthd_surf3d_clip_h, %entry.sw.epilog_crit_edge ]
  %call = tail call zeroext i1 %func.0(ptr noundef %device, i32 noundef %inst, i32 noundef %data) #5, !callees !133
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call, %sw.epilog ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_prim(ptr noundef %device, i32 noundef %inst, i32 noundef %mthd, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mthd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %mthd, label %entry.cleanup_crit_edge [
    i32 388, label %entry.sw.epilog_crit_edge
    i32 392, label %sw.bb1
    i32 396, label %sw.bb2
    i32 400, label %sw.bb3
    i32 404, label %sw.bb4
    i32 408, label %sw.bb5
    i32 764, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %func.0 = phi ptr [ @nv04_gr_mthd_set_operation, %sw.bb6 ], [ @nv04_gr_mthd_bind_surf2d, %sw.bb5 ], [ @nv04_gr_mthd_bind_beta4, %sw.bb4 ], [ @nv04_gr_mthd_bind_beta1, %sw.bb3 ], [ @nv04_gr_mthd_bind_rop, %sw.bb2 ], [ @nv04_gr_mthd_bind_patt, %sw.bb1 ], [ @nv01_gr_mthd_bind_clip, %entry.sw.epilog_crit_edge ]
  %call = tail call zeroext i1 %func.0(ptr noundef %device, i32 noundef %inst, i32 noundef %data) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call, %sw.epilog ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_blit(ptr noundef %device, i32 noundef %inst, i32 noundef %mthd, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mthd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %mthd, label %entry.cleanup_crit_edge [
    i32 388, label %entry.sw.epilog_crit_edge
    i32 392, label %sw.bb1
    i32 396, label %sw.bb2
    i32 400, label %sw.bb3
    i32 404, label %sw.bb4
    i32 408, label %sw.bb5
    i32 412, label %sw.bb6
    i32 764, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %func.0 = phi ptr [ @nv04_gr_mthd_set_operation, %sw.bb7 ], [ @nv04_gr_mthd_bind_surf2d, %sw.bb6 ], [ @nv04_gr_mthd_bind_beta4, %sw.bb5 ], [ @nv04_gr_mthd_bind_beta1, %sw.bb4 ], [ @nv04_gr_mthd_bind_rop, %sw.bb3 ], [ @nv04_gr_mthd_bind_patt, %sw.bb2 ], [ @nv01_gr_mthd_bind_clip, %sw.bb1 ], [ @nv01_gr_mthd_bind_chroma, %entry.sw.epilog_crit_edge ]
  %call = tail call zeroext i1 %func.0(ptr noundef %device, i32 noundef %inst, i32 noundef %data) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call, %sw.epilog ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_iifc(ptr noundef %device, i32 noundef %inst, i32 noundef %mthd, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mthd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %mthd, label %entry.cleanup_crit_edge [
    i32 392, label %entry.sw.epilog_crit_edge
    i32 396, label %sw.bb1
    i32 400, label %sw.bb2
    i32 404, label %sw.bb3
    i32 408, label %sw.bb4
    i32 412, label %sw.bb5
    i32 416, label %sw.bb6
    i32 996, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %func.0 = phi ptr [ @nv04_gr_mthd_set_operation, %sw.bb7 ], [ @nv04_gr_mthd_bind_surf2d_swzsurf, %sw.bb6 ], [ @nv04_gr_mthd_bind_beta4, %sw.bb5 ], [ @nv04_gr_mthd_bind_beta1, %sw.bb4 ], [ @nv04_gr_mthd_bind_rop, %sw.bb3 ], [ @nv04_gr_mthd_bind_patt, %sw.bb2 ], [ @nv01_gr_mthd_bind_clip, %sw.bb1 ], [ @nv01_gr_mthd_bind_chroma, %entry.sw.epilog_crit_edge ]
  %call = tail call zeroext i1 %func.0(ptr noundef %device, i32 noundef %inst, i32 noundef %data) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call, %sw.epilog ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_ifc(ptr noundef %device, i32 noundef %inst, i32 noundef %mthd, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mthd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %mthd, label %entry.cleanup_crit_edge [
    i32 388, label %entry.sw.epilog_crit_edge
    i32 392, label %sw.bb1
    i32 396, label %sw.bb2
    i32 400, label %sw.bb3
    i32 404, label %sw.bb4
    i32 408, label %sw.bb5
    i32 412, label %sw.bb6
    i32 764, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %func.0 = phi ptr [ @nv04_gr_mthd_set_operation, %sw.bb7 ], [ @nv04_gr_mthd_bind_surf2d, %sw.bb6 ], [ @nv04_gr_mthd_bind_beta4, %sw.bb5 ], [ @nv04_gr_mthd_bind_beta1, %sw.bb4 ], [ @nv04_gr_mthd_bind_rop, %sw.bb3 ], [ @nv04_gr_mthd_bind_patt, %sw.bb2 ], [ @nv01_gr_mthd_bind_clip, %sw.bb1 ], [ @nv01_gr_mthd_bind_chroma, %entry.sw.epilog_crit_edge ]
  %call = tail call zeroext i1 %func.0(ptr noundef %device, i32 noundef %inst, i32 noundef %data) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call, %sw.epilog ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_sifc(ptr noundef %device, i32 noundef %inst, i32 noundef %mthd, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mthd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %mthd, label %entry.cleanup_crit_edge [
    i32 388, label %entry.sw.epilog_crit_edge
    i32 392, label %sw.bb1
    i32 396, label %sw.bb2
    i32 400, label %sw.bb3
    i32 404, label %sw.bb4
    i32 408, label %sw.bb5
    i32 764, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %func.0 = phi ptr [ @nv04_gr_mthd_set_operation, %sw.bb6 ], [ @nv04_gr_mthd_bind_surf2d, %sw.bb5 ], [ @nv04_gr_mthd_bind_beta4, %sw.bb4 ], [ @nv04_gr_mthd_bind_beta1, %sw.bb3 ], [ @nv04_gr_mthd_bind_rop, %sw.bb2 ], [ @nv04_gr_mthd_bind_patt, %sw.bb1 ], [ @nv01_gr_mthd_bind_chroma, %entry.sw.epilog_crit_edge ]
  %call = tail call zeroext i1 %func.0(ptr noundef %device, i32 noundef %inst, i32 noundef %data) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call, %sw.epilog ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_sifm(ptr noundef %device, i32 noundef %inst, i32 noundef %mthd, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mthd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %mthd, label %entry.cleanup_crit_edge [
    i32 392, label %entry.sw.epilog_crit_edge
    i32 396, label %sw.bb1
    i32 400, label %sw.bb2
    i32 404, label %sw.bb3
    i32 408, label %sw.bb4
    i32 772, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %func.0 = phi ptr [ @nv04_gr_mthd_set_operation, %sw.bb5 ], [ @nv04_gr_mthd_bind_surf2d, %sw.bb4 ], [ @nv04_gr_mthd_bind_beta4, %sw.bb3 ], [ @nv04_gr_mthd_bind_beta1, %sw.bb2 ], [ @nv04_gr_mthd_bind_rop, %sw.bb1 ], [ @nv04_gr_mthd_bind_patt, %entry.sw.epilog_crit_edge ]
  %call = tail call zeroext i1 %func.0(ptr noundef %device, i32 noundef %inst, i32 noundef %data) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call, %sw.epilog ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv01_gr_mthd_bind_clip(ptr nocapture noundef readonly %device, i32 noundef %inst, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %0 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pri.i, align 4
  %shl.i = shl i32 %data, 4
  %add.i = add i32 %shl.i, 7340032
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  %conv.i = trunc i32 %2 to i8
  %3 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %conv.i, label %entry.return_crit_edge [
    i8 48, label %sw.bb
    i8 25, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %5, i32 4196100
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  %7 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri.i, align 4
  %add.i7 = add i32 %inst, 7340032
  %add.ptr4.i = getelementptr i8, ptr %8, i32 %add.i7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  %and7.i = and i32 %9, -8193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %11, i32 %add.i7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %and7.i) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %13, i32 4194656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %and7.i) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri.i, align 4
  %16 = lshr i32 %6, 11
  %shl.i8 = and i32 %16, 28
  %add20.i = or i32 %shl.i8, 4194688
  %add.ptr21.i = getelementptr i8, ptr %15, i32 %add20.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %and7.i) #5, !srcloc !94
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %18, i32 4196100
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  %20 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri.i, align 4
  %add.i11 = add i32 %inst, 7340032
  %add.ptr4.i12 = getelementptr i8, ptr %21, i32 %add.i11
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i12) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  %or.i = or i32 %22, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri.i, align 4
  %add.ptr10.i14 = getelementptr i8, ptr %24, i32 %add.i11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i14, i32 %or.i) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri.i, align 4
  %add.ptr15.i15 = getelementptr i8, ptr %26, i32 4194656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i15, i32 %or.i) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri.i, align 4
  %29 = lshr i32 %19, 11
  %shl.i16 = and i32 %29, 28
  %add20.i17 = or i32 %shl.i16, 4194688
  %add.ptr21.i18 = getelementptr i8, ptr %28, i32 %add20.i17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i18, i32 %or.i) #5, !srcloc !94
  br label %return

return:                                           ; preds = %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %sw.bb1 ], [ true, %sw.bb ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv01_gr_mthd_bind_patt(ptr nocapture noundef readonly %device, i32 noundef %inst, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %0 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pri.i, align 4
  %shl.i = shl i32 %data, 4
  %add.i = add i32 %shl.i, 7340032
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  %conv.i = trunc i32 %2 to i8
  %3 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %conv.i, label %entry.return_crit_edge [
    i8 48, label %entry.return.sink.split_crit_edge
    i8 24, label %sw.bb1
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %entry.return.sink.split_crit_edge
  %.sink = phi i32 [ 134217728, %sw.bb1 ], [ 0, %entry.return.sink.split_crit_edge ]
  tail call fastcc void @nv04_gr_set_ctx_val(ptr noundef %device, i32 noundef %inst, i32 noundef 134217728, i32 noundef %.sink)
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ true, %return.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_bind_rop(ptr nocapture noundef readonly %device, i32 noundef %inst, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %0 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pri.i, align 4
  %shl.i = shl i32 %data, 4
  %add.i = add i32 %shl.i, 7340032
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  %conv.i = trunc i32 %2 to i8
  %3 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %conv.i, label %entry.return_crit_edge [
    i8 48, label %entry.return.sink.split_crit_edge
    i8 67, label %sw.bb1
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %entry.return.sink.split_crit_edge
  %.sink = phi i32 [ 268435456, %sw.bb1 ], [ 0, %entry.return.sink.split_crit_edge ]
  tail call fastcc void @nv04_gr_set_ctx_val(ptr noundef %device, i32 noundef %inst, i32 noundef 268435456, i32 noundef %.sink)
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ true, %return.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_bind_beta1(ptr nocapture noundef readonly %device, i32 noundef %inst, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %0 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pri.i, align 4
  %shl.i = shl i32 %data, 4
  %add.i = add i32 %shl.i, 7340032
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  %conv.i = trunc i32 %2 to i8
  %3 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %conv.i, label %entry.return_crit_edge [
    i8 48, label %entry.return.sink.split_crit_edge
    i8 18, label %sw.bb1
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %entry.return.sink.split_crit_edge
  %.sink = phi i32 [ 536870912, %sw.bb1 ], [ 0, %entry.return.sink.split_crit_edge ]
  tail call fastcc void @nv04_gr_set_ctx_val(ptr noundef %device, i32 noundef %inst, i32 noundef 536870912, i32 noundef %.sink)
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ true, %return.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_bind_surf_dst(ptr nocapture noundef readonly %device, i32 noundef %inst, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %0 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pri.i, align 4
  %shl.i = shl i32 %data, 4
  %add.i = add i32 %shl.i, 7340032
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  %conv.i = trunc i32 %2 to i8
  %3 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %conv.i, label %entry.return_crit_edge [
    i8 48, label %entry.return.sink.split_crit_edge
    i8 88, label %sw.bb1
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %entry.return.sink.split_crit_edge
  %.sink = phi i32 [ 33554432, %sw.bb1 ], [ 0, %entry.return.sink.split_crit_edge ]
  tail call fastcc void @nv04_gr_set_ctx_val(ptr noundef %device, i32 noundef %inst, i32 noundef 33554432, i32 noundef %.sink)
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ true, %return.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_set_operation(ptr nocapture noundef readonly %device, i32 noundef %inst, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %0 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 7340032
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %data)
  %cmp = icmp ugt i32 %data, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %data)
  %cmp2 = icmp ugt i32 %data, 2
  %conv4 = and i32 %2, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4)
  %cmp5 = icmp eq i32 %conv4, 0
  %or.cond = select i1 %cmp2, i1 %cmp5, i1 false
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl nuw nsw i32 %data, 15
  %3 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pri, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 4196100
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.i = add i32 %inst, 7340032
  %add.ptr4.i = getelementptr i8, ptr %7, i32 %add.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  %and7.i = and i32 %8, -229377
  %or.i = or i32 %and7.i, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr10.i = getelementptr i8, ptr %10, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %or.i) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr15.i = getelementptr i8, ptr %12, i32 4194656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %or.i) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %15 = lshr i32 %5, 11
  %shl.i = and i32 %15, 28
  %add20.i = or i32 %shl.i, 4194688
  %add.ptr21.i = getelementptr i8, ptr %14, i32 %add20.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %or.i) #5, !srcloc !94
  tail call fastcc void @nv04_gr_set_ctx_val(ptr noundef %device, i32 noundef %inst, i32 noundef 0, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end8 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv04_gr_set_ctx_val(ptr nocapture noundef readonly %device, i32 noundef %inst, i32 noundef %mask, i32 noundef %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %0 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pri, align 4
  %add = add i32 %inst, 7340032
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %shr = lshr i32 %2, 15
  %and2 = and i32 %shr, 7
  %3 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pri, align 4
  %add5 = add i32 %inst, 7340044
  %add.ptr6 = getelementptr i8, ptr %4, i32 %add5
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  %neg = xor i32 %mask, -1
  %and9 = and i32 %5, %neg
  %or = or i32 %and9, %value
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr12 = getelementptr i8, ptr %7, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %or) #5, !srcloc !94
  %and13 = lshr i32 %or, 25
  %and13.lobit = and i32 %and13, 1
  %trunc = trunc i32 %2 to i8
  %8 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %trunc, label %entry.if.end18_crit_edge [
    i8 31, label %entry.land.lhs.true_crit_edge
    i8 72, label %entry.land.lhs.true_crit_edge53
  ]

entry.land.lhs.true_crit_edge53:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge53
  %and15 = and i32 %or, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %spec.select49 = select i1 %tobool16.not, i32 0, i32 %and13.lobit
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true, %entry.if.end18_crit_edge
  %valid.1 = phi i32 [ %and13.lobit, %entry.if.end18_crit_edge ], [ %spec.select49, %land.lhs.true ]
  %9 = zext i32 %and2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %and2, label %if.end18.sw.epilog_crit_edge [
    i32 5, label %if.end18.sw.bb29_crit_edge
    i32 4, label %if.end18.sw.bb29_crit_edge54
    i32 1, label %sw.bb19
    i32 2, label %sw.bb24
  ]

if.end18.sw.bb29_crit_edge54:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb29

if.end18.sw.bb29_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb29

if.end18.sw.epilog_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %and20 = and i32 %or, 402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %spec.select50 = select i1 %tobool21.not, i32 0, i32 %valid.1
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %and25 = and i32 %or, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %spec.select51 = select i1 %tobool26.not, i32 0, i32 %valid.1
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end18.sw.bb29_crit_edge, %if.end18.sw.bb29_crit_edge54
  %and30 = and i32 %or, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %spec.select52 = select i1 %tobool31.not, i32 0, i32 %valid.1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb29, %sw.bb24, %sw.bb19, %if.end18.sw.epilog_crit_edge
  %valid.2 = phi i32 [ %valid.1, %if.end18.sw.epilog_crit_edge ], [ %spec.select50, %sw.bb19 ], [ %spec.select51, %sw.bb24 ], [ %spec.select52, %sw.bb29 ]
  %shl = shl nuw nsw i32 %valid.2, 24
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 4196100
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr4.i = getelementptr i8, ptr %14, i32 %add
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  %and7.i = and i32 %15, -16777217
  %or.i = or i32 %and7.i, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr10.i = getelementptr i8, ptr %17, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %or.i) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr15.i = getelementptr i8, ptr %19, i32 4194656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %or.i) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %22 = lshr i32 %12, 11
  %shl.i = and i32 %22, 28
  %add20.i = or i32 %shl.i, 4194688
  %add.ptr21.i = getelementptr i8, ptr %21, i32 %add20.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %or.i) #5, !srcloc !94
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv01_gr_mthd_bind_chroma(ptr nocapture noundef readonly %device, i32 noundef %inst, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %0 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pri.i, align 4
  %shl.i = shl i32 %data, 4
  %add.i = add i32 %shl.i, 7340032
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  %conv.i = trunc i32 %2 to i8
  %3 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %conv.i, label %entry.return_crit_edge [
    i8 48, label %sw.bb
    i8 87, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %5, i32 4196100
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  %7 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri.i, align 4
  %add.i7 = add i32 %inst, 7340032
  %add.ptr4.i = getelementptr i8, ptr %8, i32 %add.i7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  %and7.i = and i32 %9, -4097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %11, i32 %add.i7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %and7.i) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %13, i32 4194656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %and7.i) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri.i, align 4
  %16 = lshr i32 %6, 11
  %shl.i8 = and i32 %16, 28
  %add20.i = or i32 %shl.i8, 4194688
  %add.ptr21.i = getelementptr i8, ptr %15, i32 %add20.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %and7.i) #5, !srcloc !94
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %18, i32 4196100
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  %20 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri.i, align 4
  %add.i11 = add i32 %inst, 7340032
  %add.ptr4.i12 = getelementptr i8, ptr %21, i32 %add.i11
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i12) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  %or.i = or i32 %22, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri.i, align 4
  %add.ptr10.i14 = getelementptr i8, ptr %24, i32 %add.i11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i14, i32 %or.i) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri.i, align 4
  %add.ptr15.i15 = getelementptr i8, ptr %26, i32 4194656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i15, i32 %or.i) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri.i, align 4
  %29 = lshr i32 %19, 11
  %shl.i16 = and i32 %29, 28
  %add20.i17 = or i32 %shl.i16, 4194688
  %add.ptr21.i18 = getelementptr i8, ptr %28, i32 %add20.i17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i18, i32 %or.i) #5, !srcloc !94
  br label %return

return:                                           ; preds = %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %sw.bb1 ], [ true, %sw.bb ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_bind_surf_src(ptr nocapture noundef readonly %device, i32 noundef %inst, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %0 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pri.i, align 4
  %shl.i = shl i32 %data, 4
  %add.i = add i32 %shl.i, 7340032
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  %conv.i = trunc i32 %2 to i8
  %3 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %conv.i, label %entry.return_crit_edge [
    i8 48, label %entry.return.sink.split_crit_edge
    i8 89, label %sw.bb1
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %entry.return.sink.split_crit_edge
  %.sink = phi i32 [ 67108864, %sw.bb1 ], [ 0, %entry.return.sink.split_crit_edge ]
  tail call fastcc void @nv04_gr_set_ctx_val(ptr noundef %device, i32 noundef %inst, i32 noundef 67108864, i32 noundef %.sink)
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ true, %return.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_bind_surf_color(ptr nocapture noundef readonly %device, i32 noundef %inst, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %0 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pri.i, align 4
  %shl.i = shl i32 %data, 4
  %add.i = add i32 %shl.i, 7340032
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  %conv.i = trunc i32 %2 to i8
  %3 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %conv.i, label %entry.return_crit_edge [
    i8 48, label %entry.return.sink.split_crit_edge
    i8 90, label %sw.bb1
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %entry.return.sink.split_crit_edge
  %.sink = phi i32 [ 33554432, %sw.bb1 ], [ 0, %entry.return.sink.split_crit_edge ]
  tail call fastcc void @nv04_gr_set_ctx_val(ptr noundef %device, i32 noundef %inst, i32 noundef 33554432, i32 noundef %.sink)
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ true, %return.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_bind_surf_zeta(ptr nocapture noundef readonly %device, i32 noundef %inst, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %0 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pri.i, align 4
  %shl.i = shl i32 %data, 4
  %add.i = add i32 %shl.i, 7340032
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  %conv.i = trunc i32 %2 to i8
  %3 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %conv.i, label %entry.return_crit_edge [
    i8 48, label %entry.return.sink.split_crit_edge
    i8 91, label %sw.bb1
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %entry.return.sink.split_crit_edge
  %.sink = phi i32 [ 67108864, %sw.bb1 ], [ 0, %entry.return.sink.split_crit_edge ]
  tail call fastcc void @nv04_gr_set_ctx_val(ptr noundef %device, i32 noundef %inst, i32 noundef 67108864, i32 noundef %.sink)
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ true, %return.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_bind_patt(ptr nocapture noundef readonly %device, i32 noundef %inst, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %0 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pri.i, align 4
  %shl.i = shl i32 %data, 4
  %add.i = add i32 %shl.i, 7340032
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  %conv.i = trunc i32 %2 to i8
  %3 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %conv.i, label %entry.return_crit_edge [
    i8 48, label %entry.return.sink.split_crit_edge
    i8 68, label %sw.bb1
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %entry.return.sink.split_crit_edge
  %.sink = phi i32 [ 134217728, %sw.bb1 ], [ 0, %entry.return.sink.split_crit_edge ]
  tail call fastcc void @nv04_gr_set_ctx_val(ptr noundef %device, i32 noundef %inst, i32 noundef 134217728, i32 noundef %.sink)
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ true, %return.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_bind_beta4(ptr nocapture noundef readonly %device, i32 noundef %inst, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %0 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pri.i, align 4
  %shl.i = shl i32 %data, 4
  %add.i = add i32 %shl.i, 7340032
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  %conv.i = trunc i32 %2 to i8
  %3 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %conv.i, label %entry.return_crit_edge [
    i8 48, label %entry.return.sink.split_crit_edge
    i8 114, label %sw.bb1
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %entry.return.sink.split_crit_edge
  %.sink = phi i32 [ 1073741824, %sw.bb1 ], [ 0, %entry.return.sink.split_crit_edge ]
  tail call fastcc void @nv04_gr_set_ctx_val(ptr noundef %device, i32 noundef %inst, i32 noundef 1073741824, i32 noundef %.sink)
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ true, %return.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_bind_surf2d(ptr nocapture noundef readonly %device, i32 noundef %inst, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %0 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pri.i, align 4
  %shl.i = shl i32 %data, 4
  %add.i = add i32 %shl.i, 7340032
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  %conv.i = trunc i32 %2 to i8
  %3 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %conv.i, label %entry.return_crit_edge [
    i8 48, label %sw.bb
    i8 66, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %5, i32 4196100
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  %7 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri.i, align 4
  %add.i11 = add i32 %inst, 7340032
  %add.ptr4.i = getelementptr i8, ptr %8, i32 %add.i11
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  %and7.i = and i32 %9, -16385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %11, i32 %add.i11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %and7.i) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %13, i32 4194656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %and7.i) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri.i, align 4
  %16 = lshr i32 %6, 11
  %shl.i12 = and i32 %16, 28
  %add20.i = or i32 %shl.i12, 4194688
  %add.ptr21.i = getelementptr i8, ptr %15, i32 %add20.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %and7.i) #5, !srcloc !94
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %18, i32 4196100
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  %20 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri.i, align 4
  %add.i15 = add i32 %inst, 7340032
  %add.ptr4.i16 = getelementptr i8, ptr %21, i32 %add.i15
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i16) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  %and7.i17 = and i32 %22, -16385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri.i, align 4
  %add.ptr10.i18 = getelementptr i8, ptr %24, i32 %add.i15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i18, i32 %and7.i17) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri.i, align 4
  %add.ptr15.i19 = getelementptr i8, ptr %26, i32 4194656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i19, i32 %and7.i17) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri.i, align 4
  %29 = lshr i32 %19, 11
  %shl.i20 = and i32 %29, 28
  %add20.i21 = or i32 %shl.i20, 4194688
  %add.ptr21.i22 = getelementptr i8, ptr %28, i32 %add20.i21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i22, i32 %and7.i17) #5, !srcloc !94
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %sw.bb
  %.sink = phi i32 [ 33554432, %sw.bb1 ], [ 0, %sw.bb ]
  tail call fastcc void @nv04_gr_set_ctx_val(ptr noundef %device, i32 noundef %inst, i32 noundef 33554432, i32 noundef %.sink)
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ true, %return.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_surf3d_clip_h(ptr nocapture noundef readonly %device, i32 noundef %inst, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and1 = and i32 %data, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shr = lshr i32 %data, 16
  %and = and i32 %data, 65535
  %or = or i32 %shr, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data)
  %tobool3.not21 = icmp slt i32 %data, 0
  %spec.select = select i1 %tobool3.not21, i32 %or, i32 %shr
  %add = add nuw nsw i32 %spec.select, %and
  %and6 = and i32 %add, 262143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %0 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4195644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %and) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !145
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %3, i32 4195652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %and6) #5, !srcloc !94
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_surf3d_clip_v(ptr nocapture noundef readonly %device, i32 noundef %inst, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and1 = and i32 %data, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shr = lshr i32 %data, 16
  %and = and i32 %data, 65535
  %or = or i32 %shr, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data)
  %tobool3.not21 = icmp slt i32 %data, 0
  %spec.select = select i1 %tobool3.not21, i32 %or, i32 %shr
  %add = add nuw nsw i32 %spec.select, %and
  %and6 = and i32 %add, 262143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !146
  tail call void @arm_heavy_mb() #5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %0 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4195648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %and) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !147
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %3, i32 4195656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %and6) #5, !srcloc !94
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_bind_surf2d_swzsurf(ptr nocapture noundef readonly %device, i32 noundef %inst, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %0 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pri.i, align 4
  %shl.i = shl i32 %data, 4
  %add.i = add i32 %shl.i, 7340032
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  %conv.i = trunc i32 %2 to i8
  %3 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %conv.i, label %entry.return_crit_edge [
    i8 48, label %sw.bb
    i8 66, label %sw.bb1
    i8 82, label %sw.bb2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %5, i32 4196100
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  %7 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri.i, align 4
  %add.i16 = add i32 %inst, 7340032
  %add.ptr4.i = getelementptr i8, ptr %8, i32 %add.i16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  %and7.i = and i32 %9, -16385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %11, i32 %add.i16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %and7.i) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %13, i32 4194656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %and7.i) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri.i, align 4
  %16 = lshr i32 %6, 11
  %shl.i17 = and i32 %16, 28
  %add20.i = or i32 %shl.i17, 4194688
  %add.ptr21.i = getelementptr i8, ptr %15, i32 %add20.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %and7.i) #5, !srcloc !94
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %18, i32 4196100
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  %20 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri.i, align 4
  %add.i20 = add i32 %inst, 7340032
  %add.ptr4.i21 = getelementptr i8, ptr %21, i32 %add.i20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i21) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  %and7.i22 = and i32 %22, -16385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri.i, align 4
  %add.ptr10.i23 = getelementptr i8, ptr %24, i32 %add.i20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i23, i32 %and7.i22) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri.i, align 4
  %add.ptr15.i24 = getelementptr i8, ptr %26, i32 4194656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i24, i32 %and7.i22) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri.i, align 4
  %29 = lshr i32 %19, 11
  %shl.i25 = and i32 %29, 28
  %add20.i26 = or i32 %shl.i25, 4194688
  %add.ptr21.i27 = getelementptr i8, ptr %28, i32 %add20.i26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i27, i32 %and7.i22) #5, !srcloc !94
  br label %return.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %31, i32 4196100
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  %33 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pri.i, align 4
  %add.i30 = add i32 %inst, 7340032
  %add.ptr4.i31 = getelementptr i8, ptr %34, i32 %add.i30
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i31) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  %or.i = or i32 %35, 16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pri.i, align 4
  %add.ptr10.i33 = getelementptr i8, ptr %37, i32 %add.i30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i33, i32 %or.i) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri.i, align 4
  %add.ptr15.i34 = getelementptr i8, ptr %39, i32 4194656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i34, i32 %or.i) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %40 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri.i, align 4
  %42 = lshr i32 %32, 11
  %shl.i35 = and i32 %42, 28
  %add20.i36 = or i32 %shl.i35, 4194688
  %add.ptr21.i37 = getelementptr i8, ptr %41, i32 %add20.i36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i37, i32 %or.i) #5, !srcloc !94
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb2, %sw.bb1, %sw.bb
  %.sink = phi i32 [ 33554432, %sw.bb2 ], [ 33554432, %sw.bb1 ], [ 0, %sw.bb ]
  tail call fastcc void @nv04_gr_set_ctx_val(ptr noundef %device, i32 noundef %inst, i32 noundef 33554432, i32 noundef %.sink)
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ true, %return.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nv04_gr_chan_dtor(ptr noundef readonly returned %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gr1 = getelementptr inbounds %struct.nv04_gr_chan, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %gr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gr1, align 8
  %lock = getelementptr inbounds %struct.nv04_gr, ptr %1, i32 0, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %chid = getelementptr inbounds %struct.nv04_gr_chan, ptr %object, i32 0, i32 2
  %2 = ptrtoint ptr %chid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chid, align 4
  %arrayidx = getelementptr %struct.nv04_gr, ptr %1, i32 0, i32 1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #5
  ret ptr %object
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv04_gr_chan_fini(ptr noundef %object, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gr1 = getelementptr inbounds %struct.nv04_gr_chan, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %gr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gr1, align 8
  %device2 = getelementptr inbounds %struct.nvkm_gr, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %lock = getelementptr inbounds %struct.nv04_gr, ptr %1, i32 0, i32 2
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %5, i32 4196128
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  tail call void @arm_heavy_mb() #5
  %and = and i32 %6, -2
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr15 = getelementptr i8, ptr %8, i32 4196128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %and) #5, !srcloc !94
  %9 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device2, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 4194672
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  %and.i = and i32 %13, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.nv04_gr_channel.exit_crit_edge, label %if.then.i

entry.nv04_gr_channel.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv04_gr_channel.exit

if.then.i:                                        ; preds = %entry
  %14 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %15, i32 4194676
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %16)
  %cmp.i = icmp ult i32 %16, 268435456
  br i1 %cmp.i, label %if.then7.i, label %if.then.i.nv04_gr_channel.exit_crit_edge

if.then.i.nv04_gr_channel.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv04_gr_channel.exit

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i = lshr i32 %16, 24
  %arrayidx.i = getelementptr %struct.nv04_gr, ptr %1, i32 0, i32 1, i32 %shr.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  br label %nv04_gr_channel.exit

nv04_gr_channel.exit:                             ; preds = %if.then7.i, %if.then.i.nv04_gr_channel.exit_crit_edge, %entry.nv04_gr_channel.exit_crit_edge
  %chan.1.i = phi ptr [ null, %entry.nv04_gr_channel.exit_crit_edge ], [ %18, %if.then7.i ], [ null, %if.then.i.nv04_gr_channel.exit_crit_edge ]
  %cmp18 = icmp eq ptr %chan.1.i, %object
  br i1 %cmp18, label %if.then, label %nv04_gr_channel.exit.if.end_crit_edge

nv04_gr_channel.exit.if.end_crit_edge:            ; preds = %nv04_gr_channel.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %nv04_gr_channel.exit
  %19 = ptrtoint ptr %gr1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gr1, align 8
  %device1.i50 = getelementptr inbounds %struct.nvkm_gr, ptr %20, i32 0, i32 1, i32 1, i32 1
  %21 = ptrtoint ptr %device1.i50 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device1.i50, align 4
  %pri.i51 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then
  %i.01.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %pri.i51 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri.i51, align 4
  %arrayidx.i52 = getelementptr [311 x i32], ptr @nv04_gr_ctx_regs, i32 0, i32 %i.01.i
  %25 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i52, align 4
  %add.ptr.i53 = getelementptr i8, ptr %24, i32 %26
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  %arrayidx2.i = getelementptr %struct.nv04_gr_chan, ptr %object, i32 0, i32 3, i32 %i.01.i
  %28 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx2.i, align 4
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 311
  br i1 %exitcond.not.i, label %nv04_gr_unload_context.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

nv04_gr_unload_context.exit:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %pri.i51 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri.i51, align 4
  %add.ptr4.i54 = getelementptr i8, ptr %30, i32 4194672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i54, i32 268435456) #5, !srcloc !94
  %31 = ptrtoint ptr %pri.i51 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri.i51, align 4
  %add.ptr7.i = getelementptr i8, ptr %32, i32 4194676
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  tail call void @arm_heavy_mb() #5
  %and.i55 = and i32 %33, 16777215
  %or.i = or i32 %and.i55, 251658240
  %34 = ptrtoint ptr %pri.i51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pri.i51, align 4
  %add.ptr14.i = getelementptr i8, ptr %35, i32 4194676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %or.i) #5, !srcloc !94
  br label %if.end

if.end:                                           ; preds = %nv04_gr_unload_context.exit, %nv04_gr_channel.exit.if.end_crit_edge
  %36 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pri, align 4
  %add.ptr26 = getelementptr i8, ptr %37, i32 4196128
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  tail call void @arm_heavy_mb() #5
  %or33 = or i32 %38, 1
  %39 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri, align 4
  %add.ptr35 = getelementptr i8, ptr %40, i32 4196128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %or33) #5, !srcloc !94
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #5
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !57, !59, !60, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @nv04_gr_object, !1, !"nv04_gr_object", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1063, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1220, i32 6}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1224, i32 3}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nv04_gr_idle._entry, !6, !"_entry", i1 false, i1 false}
!11 = !{ptr @nv04_gr_idle._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1249, i32 44}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1250, i32 44}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1251, i32 44}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1252, i32 44}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1253, i32 44}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1254, i32 44}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1255, i32 44}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1256, i32 44}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1257, i32 44}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1258, i32 44}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1259, i32 44}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1260, i32 44}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1261, i32 44}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1262, i32 44}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1263, i32 44}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1264, i32 44}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1265, i32 44}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1266, i32 44}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1267, i32 44}
!50 = !{ptr @nv04_gr_nsource, !51, !"nv04_gr_nsource", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1248, i32 1}
!52 = !{ptr @nv04_gr_new.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1422, i32 2}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @nv04_gr, !56, !"nv04_gr", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1365, i32 1}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1316, i32 3}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @nv04_gr_intr._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @nv04_gr_intr._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @nv04_gr_ctx_regs, !64, !"nv04_gr_ctx_regs", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 35, i32 1}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1234, i32 27}
!67 = !{ptr @nv04_gr_intr_name, !68, !"nv04_gr_intr_name", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1233, i32 1}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1240, i32 44}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1241, i32 44}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1242, i32 44}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1243, i32 44}
!77 = !{ptr @nv04_gr_nstatus, !78, !"nv04_gr_nstatus", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1239, i32 1}
!79 = !{ptr @nv04_gr_chan, !80, !"nv04_gr_chan", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c", i32 1178, i32 1}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i64 5427297}
!91 = !{i64 2156338007}
!92 = !{i64 2156341830}
!93 = !{i64 2156353319}
!94 = !{i64 5426879}
!95 = !{i64 2156353747}
!96 = !{i64 2156354157}
!97 = !{i64 2156354558}
!98 = !{i64 2156354977}
!99 = !{i64 2156355405}
!100 = !{i64 2156355833}
!101 = !{i64 2156356261}
!102 = !{i64 2156356689}
!103 = !{i64 2156357117}
!104 = !{i64 2156357971}
!105 = !{i64 2156358373}
!106 = !{i64 2156358833}
!107 = !{i64 2156359261}
!108 = !{i64 2156343628}
!109 = !{i64 2156344030}
!110 = !{i64 2156344432}
!111 = !{i64 2156344834}
!112 = !{i64 2156345236}
!113 = !{i64 2156345654}
!114 = !{i64 2156346039}
!115 = !{i64 2156319211}
!116 = !{i64 2156346777}
!117 = !{i64 2156320457}
!118 = !{i64 2156320859}
!119 = !{i64 2156325919}
!120 = !{i64 2156326276}
!121 = !{i64 2156327130}
!122 = !{i64 2156327532}
!123 = !{i64 2156328061}
!124 = !{i64 2156322001}
!125 = !{i64 2156322432}
!126 = !{i64 2156323286}
!127 = !{i64 2156323688}
!128 = !{i64 2156324574}
!129 = !{i64 2156324976}
!130 = !{i64 2156347206}
!131 = !{i64 2156347628}
!132 = !{ptr @nv01_gr_mthd_bind_clip, ptr @nv04_gr_mthd_bind_surf_color, ptr @nv04_gr_mthd_bind_surf_zeta}
!133 = !{ptr @nv04_gr_mthd_surf3d_clip_h, ptr @nv04_gr_mthd_surf3d_clip_v}
!134 = !{i64 2156318805}
!135 = !{i64 2156313553}
!136 = !{i64 2156313959}
!137 = !{i64 2156314301}
!138 = !{i64 2156314708}
!139 = !{i64 2156315143}
!140 = !{i64 2156316810}
!141 = !{i64 2156315613}
!142 = !{i64 2156316019}
!143 = !{i64 2156316361}
!144 = !{i64 2156317138}
!145 = !{i64 2156317530}
!146 = !{i64 2156317922}
!147 = !{i64 2156318314}
!148 = !{i64 2156332604}
!149 = !{i64 2156333006}
!150 = !{i64 2156333892}
!151 = !{i64 2156334294}
