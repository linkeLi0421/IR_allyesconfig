; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_bitfield = type { i32, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.136 = type { ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.135 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.135 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.133, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.133 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nv50_gr = type { %struct.nvkm_gr, ptr, %struct.spinlock, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@g84_gr_tlb_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 152, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: PGRAPH TLB flush idle timeout fail\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"g84_gr_tlb_flush\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@g84_gr_tlb_flush._entry_ptr = internal global ptr @g84_gr_tlb_flush._entry, section ".printk_index", align 4
@nv50_gr_status = internal constant { [26 x %struct.nvkm_bitfield], [48 x i8] } { [26 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.9 }, %struct.nvkm_bitfield { i32 2, ptr @.str.10 }, %struct.nvkm_bitfield { i32 4, ptr @.str.11 }, %struct.nvkm_bitfield { i32 8, ptr @.str.12 }, %struct.nvkm_bitfield { i32 16, ptr @.str.13 }, %struct.nvkm_bitfield { i32 32, ptr @.str.14 }, %struct.nvkm_bitfield { i32 64, ptr @.str.15 }, %struct.nvkm_bitfield { i32 128, ptr @.str.16 }, %struct.nvkm_bitfield { i32 256, ptr @.str.17 }, %struct.nvkm_bitfield { i32 512, ptr @.str.18 }, %struct.nvkm_bitfield { i32 1024, ptr @.str.19 }, %struct.nvkm_bitfield { i32 2048, ptr @.str.20 }, %struct.nvkm_bitfield { i32 4096, ptr @.str.21 }, %struct.nvkm_bitfield { i32 8192, ptr @.str.22 }, %struct.nvkm_bitfield { i32 16384, ptr @.str.23 }, %struct.nvkm_bitfield { i32 32768, ptr @.str.24 }, %struct.nvkm_bitfield { i32 65536, ptr @.str.25 }, %struct.nvkm_bitfield { i32 131072, ptr @.str.26 }, %struct.nvkm_bitfield { i32 262144, ptr @.str.27 }, %struct.nvkm_bitfield { i32 524288, ptr @.str.28 }, %struct.nvkm_bitfield { i32 1048576, ptr @.str.29 }, %struct.nvkm_bitfield { i32 2097152, ptr @.str.30 }, %struct.nvkm_bitfield { i32 4194304, ptr @.str.31 }, %struct.nvkm_bitfield { i32 8388608, ptr @.str.32 }, %struct.nvkm_bitfield { i32 16777216, ptr @.str.33 }, %struct.nvkm_bitfield zeroinitializer], [48 x i8] zeroinitializer }, align 32
@g84_gr_tlb_flush._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 156, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: PGRAPH_STATUS %08x [%s]\0A\00", [35 x i8] zeroinitializer }, align 32
@g84_gr_tlb_flush._entry_ptr.7 = internal global ptr @g84_gr_tlb_flush._entry.5, section ".printk_index", align 4
@nv50_gr_vstatus_0 = internal constant { [8 x %struct.nvkm_bitfield], [32 x i8] } { [8 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.18 }, %struct.nvkm_bitfield { i32 2, ptr @.str.36 }, %struct.nvkm_bitfield { i32 4, ptr @.str.37 }, %struct.nvkm_bitfield { i32 8, ptr @.str.38 }, %struct.nvkm_bitfield { i32 16, ptr @.str.39 }, %struct.nvkm_bitfield { i32 32, ptr @.str.40 }, %struct.nvkm_bitfield { i32 64, ptr @.str.21 }, %struct.nvkm_bitfield zeroinitializer], [32 x i8] zeroinitializer }, align 32
@nv50_gr_vstatus_1 = internal constant { [6 x %struct.nvkm_bitfield], [48 x i8] } { [6 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.28 }, %struct.nvkm_bitfield { i32 2, ptr @.str.29 }, %struct.nvkm_bitfield { i32 4, ptr @.str.30 }, %struct.nvkm_bitfield { i32 8, ptr @.str.31 }, %struct.nvkm_bitfield { i32 16, ptr @.str.32 }, %struct.nvkm_bitfield zeroinitializer], [48 x i8] zeroinitializer }, align 32
@nv50_gr_vstatus_2 = internal constant { [9 x %struct.nvkm_bitfield], [56 x i8] } { [9 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.41 }, %struct.nvkm_bitfield { i32 2, ptr @.str.42 }, %struct.nvkm_bitfield { i32 4, ptr @.str.23 }, %struct.nvkm_bitfield { i32 8, ptr @.str.24 }, %struct.nvkm_bitfield { i32 16, ptr @.str.25 }, %struct.nvkm_bitfield { i32 32, ptr @.str.26 }, %struct.nvkm_bitfield { i32 64, ptr @.str.27 }, %struct.nvkm_bitfield { i32 128, ptr @.str.33 }, %struct.nvkm_bitfield zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BUSY\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DISPATCH\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UNK2\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UNK3\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UNK4\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UNK5\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"M2MF\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UNK7\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CTXPROG\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VFETCH\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CCACHE_PREGEOM\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"STRMOUT_VATTR_POSTGEOM\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VCLIP\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RATTR_APLANE\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TRAST\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CLIPID\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ZCULL\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ENG2D\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RMASK\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TPC_RAST\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TPC_PROP\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TPC_TEX\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TPC_GEOM\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TPC_MP\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ROP\00", [28 x i8] zeroinitializer }, align 32
@nvkm_gr_vstatus_print._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 111, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: PGRAPH_VSTATUS%d: %08x [%s]\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvkm_gr_vstatus_print\00", [42 x i8] zeroinitializer }, align 32
@nvkm_gr_vstatus_print._entry_ptr = internal global ptr @nvkm_gr_vstatus_print._entry, section ".printk_index", align 4
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CCACHE\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PREGEOM\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"POSTGEOM\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VATTR\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"STRMOUT\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RATTR\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"APLANE\00", [25 x i8] zeroinitializer }, align 32
@nv50_gr_object = external dso_local constant %struct.nvkm_object_func, align 4
@g84_gr = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.136, [6 x %struct.nvkm_sclass] }, [48 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.136, [6 x %struct.nvkm_sclass] } { ptr null, ptr null, ptr @nv50_gr_init, ptr null, ptr @nv50_gr_intr, ptr null, ptr @g84_gr_tlb_flush, ptr @nv50_gr_chan_new, ptr null, ptr @nv50_gr_units, ptr null, %struct.anon.136 zeroinitializer, [6 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 48, ptr @nv50_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 20525, ptr @nv50_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 20537, ptr @nv50_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 20672, ptr @nv50_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 33431, ptr @nv50_gr_object, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 152, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"nv50_gr_status\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 30, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 156, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [18 x i8] c"nv50_gr_vstatus_0\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 60, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"nv50_gr_vstatus_1\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 72, i32 1 }
@___asan_gen_.77 = private unnamed_addr constant [18 x i8] c"nv50_gr_vstatus_2\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 82, i32 1 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 168, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 31, i32 16 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 32, i32 16 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 33, i32 16 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 34, i32 16 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 35, i32 16 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 36, i32 16 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 37, i32 16 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 38, i32 16 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 39, i32 16 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 40, i32 16 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 41, i32 16 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 42, i32 16 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 43, i32 16 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 44, i32 16 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 45, i32 16 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 46, i32 16 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 47, i32 16 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 48, i32 16 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 49, i32 16 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 50, i32 16 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 51, i32 16 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 52, i32 16 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 53, i32 16 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 54, i32 16 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 55, i32 16 }
@___asan_gen_.158 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 111, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 62, i32 10 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 63, i32 10 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 64, i32 10 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 65, i32 10 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 66, i32 10 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 83, i32 10 }
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 84, i32 10 }
@___asan_gen_.188 = private unnamed_addr constant [7 x i8] c"g84_gr\00", align 1
@___asan_gen_.189 = private constant [48 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 178, i32 1 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @g84_gr_tlb_flush._entry, ptr @g84_gr_tlb_flush._entry.5, ptr @g84_gr_tlb_flush._entry_ptr, ptr @g84_gr_tlb_flush._entry_ptr.7, ptr @nvkm_gr_vstatus_print._entry, ptr @nvkm_gr_vstatus_print._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @nv50_gr_status, ptr @.str.6, ptr @nv50_gr_vstatus_0, ptr @nv50_gr_vstatus_1, ptr @nv50_gr_vstatus_2, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @g84_gr], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g84_gr_tlb_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_status to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g84_gr_tlb_flush._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_vstatus_0 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_vstatus_1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_vstatus_2 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_gr_vstatus_print._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g84_gr to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @g84_gr_tlb_flush(ptr noundef %base) #0 align 64 {
entry:
  %msg.i296 = alloca [64 x i8], align 1
  %msg.i268 = alloca [64 x i8], align 1
  %msg.i = alloca [64 x i8], align 1
  %status = alloca [128 x i8], align 1
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device3 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %timer = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timer, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %status) #4
  %4 = call ptr @memset(ptr %status, i32 255, i32 128)
  %lock = getelementptr inbounds %struct.nv50_gr, ptr %base, i32 0, i32 2
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr10 = getelementptr i8, ptr %6, i32 4195584
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #4, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !104
  tail call void @arm_heavy_mb() #4
  %and = and i32 %7, -2
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr17 = getelementptr i8, ptr %9, i32 4195584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %and) #4, !srcloc !105
  %call19 = tail call i64 @nvkm_timer_read(ptr noundef %3) #4
  br label %do.body20

do.body20:                                        ; preds = %land.rhs73.do.body20_crit_edge, %entry
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr23 = getelementptr i8, ptr %11, i32 4195200
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #4, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not332 = icmp eq i32 %12, 0
  br i1 %tobool.not332, label %do.body20.for.end_crit_edge, label %do.body20.for.body_crit_edge

do.body20.for.body_crit_edge:                     ; preds = %do.body20
  br label %for.body

do.body20.for.end_crit_edge:                      ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body20.for.body_crit_edge
  %idle.0.off0335 = phi i1 [ %spec.select, %for.body.for.body_crit_edge ], [ true, %do.body20.for.body_crit_edge ]
  %tmp4.0334 = phi i32 [ %shr, %for.body.for.body_crit_edge ], [ %12, %do.body20.for.body_crit_edge ]
  %and28 = and i32 %tmp4.0334, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and28)
  %cmp29 = icmp ne i32 %and28, 1
  %spec.select = select i1 %cmp29, i1 %idle.0.off0335, i1 false
  %shr = lshr i32 %tmp4.0334, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %tmp4.0334)
  %tobool.not = icmp ult i32 %tmp4.0334, 8
  %idle.0.off0.not = xor i1 %spec.select, true
  %brmerge = select i1 %tobool.not, i1 true, i1 %idle.0.off0.not
  br i1 %brmerge, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body20.for.end_crit_edge
  %idle.0.off0.lcssa = phi i1 [ true, %do.body20.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr33 = getelementptr i8, ptr %14, i32 4195204
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #4, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool37.not336 = icmp eq i32 %15, 0
  %idle.2.off0.not337 = xor i1 %idle.0.off0.lcssa, true
  %brmerge264338 = select i1 %tobool37.not336, i1 true, i1 %idle.2.off0.not337
  br i1 %brmerge264338, label %for.end.for.end50_crit_edge, label %for.end.for.body42_crit_edge

for.end.for.body42_crit_edge:                     ; preds = %for.end
  br label %for.body42

for.end.for.end50_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end50

for.body42:                                       ; preds = %for.body42.for.body42_crit_edge, %for.end.for.body42_crit_edge
  %idle.2.off0340 = phi i1 [ %spec.select265, %for.body42.for.body42_crit_edge ], [ %idle.0.off0.lcssa, %for.end.for.body42_crit_edge ]
  %tmp4.1339 = phi i32 [ %shr49, %for.body42.for.body42_crit_edge ], [ %15, %for.end.for.body42_crit_edge ]
  %and43 = and i32 %tmp4.1339, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and43)
  %cmp44 = icmp ne i32 %and43, 1
  %spec.select265 = select i1 %cmp44, i1 %idle.2.off0340, i1 false
  %shr49 = lshr i32 %tmp4.1339, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %tmp4.1339)
  %tobool37.not = icmp ult i32 %tmp4.1339, 8
  %idle.2.off0.not = xor i1 %spec.select265, true
  %brmerge264 = select i1 %tobool37.not, i1 true, i1 %idle.2.off0.not
  br i1 %brmerge264, label %for.body42.for.end50_crit_edge, label %for.body42.for.body42_crit_edge

for.body42.for.body42_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body42

for.body42.for.end50_crit_edge:                   ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end50

for.end50:                                        ; preds = %for.body42.for.end50_crit_edge, %for.end.for.end50_crit_edge
  %idle.2.off0.lcssa = phi i1 [ %idle.0.off0.lcssa, %for.end.for.end50_crit_edge ], [ %spec.select265, %for.body42.for.end50_crit_edge ]
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr53 = getelementptr i8, ptr %17, i32 4195208
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #4, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool57.not342 = icmp eq i32 %18, 0
  %idle.4.off0.not343 = xor i1 %idle.2.off0.lcssa, true
  %brmerge266344 = select i1 %tobool57.not342, i1 true, i1 %idle.4.off0.not343
  br i1 %brmerge266344, label %for.end50.do.cond71_crit_edge, label %for.end50.for.body62_crit_edge

for.end50.for.body62_crit_edge:                   ; preds = %for.end50
  br label %for.body62

for.end50.do.cond71_crit_edge:                    ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond71

for.body62:                                       ; preds = %for.body62.for.body62_crit_edge, %for.end50.for.body62_crit_edge
  %idle.4.off0346 = phi i1 [ %spec.select267, %for.body62.for.body62_crit_edge ], [ %idle.2.off0.lcssa, %for.end50.for.body62_crit_edge ]
  %tmp4.2345 = phi i32 [ %shr69, %for.body62.for.body62_crit_edge ], [ %18, %for.end50.for.body62_crit_edge ]
  %and63 = and i32 %tmp4.2345, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and63)
  %cmp64 = icmp ne i32 %and63, 1
  %spec.select267 = select i1 %cmp64, i1 %idle.4.off0346, i1 false
  %shr69 = lshr i32 %tmp4.2345, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %tmp4.2345)
  %tobool57.not = icmp ult i32 %tmp4.2345, 8
  %idle.4.off0.not = xor i1 %spec.select267, true
  %brmerge266 = select i1 %tobool57.not, i1 true, i1 %idle.4.off0.not
  br i1 %brmerge266, label %for.body62.do.cond71_crit_edge, label %for.body62.for.body62_crit_edge

for.body62.for.body62_crit_edge:                  ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body62

for.body62.do.cond71_crit_edge:                   ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond71

do.cond71:                                        ; preds = %for.body62.do.cond71_crit_edge, %for.end50.do.cond71_crit_edge
  %idle.4.off0.lcssa = phi i1 [ %idle.2.off0.lcssa, %for.end50.do.cond71_crit_edge ], [ %spec.select267, %for.body62.do.cond71_crit_edge ]
  br i1 %idle.4.off0.lcssa, label %do.cond71.do.body131_crit_edge, label %land.rhs73

do.cond71.do.body131_crit_edge:                   ; preds = %do.cond71
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body131

land.rhs73:                                       ; preds = %do.cond71
  %call74 = tail call i64 @nvkm_timer_read(ptr noundef %3) #4
  %sub = sub i64 %call74, %call19
  %cmp75 = icmp ugt i64 %sub, 2000000000
  br i1 %cmp75, label %do.body81, label %land.rhs73.do.body20_crit_edge

land.rhs73.do.body20_crit_edge:                   ; preds = %land.rhs73
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body20

do.body81:                                        ; preds = %land.rhs73
  %debug = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %19 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp82.not = icmp eq i32 %20, 0
  br i1 %cmp82.not, label %do.body81.if.end89_crit_edge, label %do.end87

do.body81.if.end89_crit_edge:                     ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end89

do.end87:                                         ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str, ptr noundef %name) #7
  br label %if.end89

if.end89:                                         ; preds = %do.end87, %do.body81.if.end89_crit_edge
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %add.ptr94 = getelementptr i8, ptr %26, i32 4196096
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr94) #4, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !109
  call void @nvkm_snprintbf(ptr noundef nonnull %status, i32 noundef 128, ptr noundef nonnull @nv50_gr_status, i32 noundef %27) #4
  %28 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp101.not = icmp eq i32 %29, 0
  br i1 %cmp101.not, label %if.end89.if.end112_crit_edge, label %do.end106

if.end89.if.end112_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end112

do.end106:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device3, align 4
  %dev108 = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dev108 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev108, align 8
  %name109 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.6, ptr noundef %name109, i32 noundef %27, ptr noundef nonnull %status) #7
  br label %if.end112

if.end112:                                        ; preds = %do.end106, %if.end89.if.end112_crit_edge
  %34 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pri, align 4
  %add.ptr117 = getelementptr i8, ptr %35, i32 4195200
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr117) #4, !srcloc !102
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !110
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %msg.i) #4
  %37 = call ptr @memset(ptr %msg.i, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool2.not26.i = icmp eq i32 %36, 0
  br i1 %tobool2.not26.i, label %if.end112.for.end.i_crit_edge, label %for.body.i

if.end112.for.end.i_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.i:                                       ; preds = %if.end112
  %and.i = and i32 %36, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1
  %conv3.i = zext i1 %cmp.i to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %36)
  %tobool2.not.i = icmp ult i32 %36, 8
  br i1 %tobool2.not.i, label %for.body.i.for.end.loopexit.i_crit_edge, label %for.body.i.1

for.body.i.for.end.loopexit.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.loopexit.i

for.body.i.1:                                     ; preds = %for.body.i
  %38 = and i32 %36, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %38)
  %cmp.i.1 = icmp eq i32 %38, 8
  %conv3.i.1 = select i1 %cmp.i.1, i8 2, i8 0
  %mask.1.i.1 = or i8 %conv3.i.1, %conv3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %36)
  %tobool2.not.i.1 = icmp ult i32 %36, 64
  br i1 %tobool2.not.i.1, label %for.body.i.1.for.end.loopexit.i_crit_edge, label %for.body.i.2

for.body.i.1.for.end.loopexit.i_crit_edge:        ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.loopexit.i

for.body.i.2:                                     ; preds = %for.body.i.1
  %39 = and i32 %36, 448
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %39)
  %cmp.i.2 = icmp eq i32 %39, 64
  %conv3.i.2 = select i1 %cmp.i.2, i8 4, i8 0
  %mask.1.i.2 = or i8 %conv3.i.2, %mask.1.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %36)
  %tobool2.not.i.2 = icmp ult i32 %36, 512
  br i1 %tobool2.not.i.2, label %for.body.i.2.for.end.loopexit.i_crit_edge, label %for.body.i.3

for.body.i.2.for.end.loopexit.i_crit_edge:        ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.loopexit.i

for.body.i.3:                                     ; preds = %for.body.i.2
  %40 = and i32 %36, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %40)
  %cmp.i.3 = icmp eq i32 %40, 512
  %conv3.i.3 = select i1 %cmp.i.3, i8 8, i8 0
  %mask.1.i.3 = or i8 %conv3.i.3, %mask.1.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %36)
  %tobool2.not.i.3 = icmp ult i32 %36, 4096
  br i1 %tobool2.not.i.3, label %for.body.i.3.for.end.loopexit.i_crit_edge, label %for.body.i.4

for.body.i.3.for.end.loopexit.i_crit_edge:        ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.loopexit.i

for.body.i.4:                                     ; preds = %for.body.i.3
  %41 = and i32 %36, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %41)
  %cmp.i.4 = icmp eq i32 %41, 4096
  %conv3.i.4 = select i1 %cmp.i.4, i8 16, i8 0
  %mask.1.i.4 = or i8 %conv3.i.4, %mask.1.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %36)
  %tobool2.not.i.4 = icmp ult i32 %36, 32768
  br i1 %tobool2.not.i.4, label %for.body.i.4.for.end.loopexit.i_crit_edge, label %for.body.i.5

for.body.i.4.for.end.loopexit.i_crit_edge:        ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.loopexit.i

for.body.i.5:                                     ; preds = %for.body.i.4
  %42 = and i32 %36, 229376
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %42)
  %cmp.i.5 = icmp eq i32 %42, 32768
  %conv3.i.5 = select i1 %cmp.i.5, i8 32, i8 0
  %mask.1.i.5 = or i8 %conv3.i.5, %mask.1.i.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %36)
  %tobool2.not.i.5 = icmp ult i32 %36, 262144
  br i1 %tobool2.not.i.5, label %for.body.i.5.for.end.loopexit.i_crit_edge, label %for.body.i.6

for.body.i.5.for.end.loopexit.i_crit_edge:        ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.loopexit.i

for.body.i.6:                                     ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #6
  %43 = and i32 %36, 1835008
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %43)
  %cmp.i.6 = icmp eq i32 %43, 262144
  %conv3.i.6 = select i1 %cmp.i.6, i8 64, i8 0
  %mask.1.i.6 = or i8 %conv3.i.6, %mask.1.i.5
  br label %for.end.loopexit.i

for.end.loopexit.i:                               ; preds = %for.body.i.6, %for.body.i.5.for.end.loopexit.i_crit_edge, %for.body.i.4.for.end.loopexit.i_crit_edge, %for.body.i.3.for.end.loopexit.i_crit_edge, %for.body.i.2.for.end.loopexit.i_crit_edge, %for.body.i.1.for.end.loopexit.i_crit_edge, %for.body.i.for.end.loopexit.i_crit_edge
  %mask.1.i.lcssa = phi i8 [ %conv3.i, %for.body.i.for.end.loopexit.i_crit_edge ], [ %mask.1.i.1, %for.body.i.1.for.end.loopexit.i_crit_edge ], [ %mask.1.i.2, %for.body.i.2.for.end.loopexit.i_crit_edge ], [ %mask.1.i.3, %for.body.i.3.for.end.loopexit.i_crit_edge ], [ %mask.1.i.4, %for.body.i.4.for.end.loopexit.i_crit_edge ], [ %mask.1.i.5, %for.body.i.5.for.end.loopexit.i_crit_edge ], [ %mask.1.i.6, %for.body.i.6 ]
  %phi.cast.i = zext i8 %mask.1.i.lcssa to i32
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %if.end112.for.end.i_crit_edge
  %mask.0.lcssa.i = phi i32 [ 0, %if.end112.for.end.i_crit_edge ], [ %phi.cast.i, %for.end.loopexit.i ]
  call void @nvkm_snprintbf(ptr noundef nonnull %msg.i, i32 noundef 64, ptr noundef nonnull @nv50_gr_vstatus_0, i32 noundef %mask.0.lcssa.i) #4
  %44 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp5.not.i = icmp eq i32 %45, 0
  br i1 %cmp5.not.i, label %for.end.i.nvkm_gr_vstatus_print.exit_crit_edge, label %do.end.i

for.end.i.nvkm_gr_vstatus_print.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_gr_vstatus_print.exit

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device3, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 8
  %name9.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.34, ptr noundef %name9.i, i32 noundef 0, i32 noundef %36, ptr noundef nonnull %msg.i) #7
  br label %nvkm_gr_vstatus_print.exit

nvkm_gr_vstatus_print.exit:                       ; preds = %do.end.i, %for.end.i.nvkm_gr_vstatus_print.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %msg.i) #4
  %50 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pri, align 4
  %add.ptr122 = getelementptr i8, ptr %51, i32 4195204
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr122) #4, !srcloc !102
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !111
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %msg.i268) #4
  %53 = call ptr @memset(ptr %msg.i268, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool2.not26.i269 = icmp eq i32 %52, 0
  br i1 %tobool2.not26.i269, label %nvkm_gr_vstatus_print.exit.for.end.i290_crit_edge, label %for.body.i284

nvkm_gr_vstatus_print.exit.for.end.i290_crit_edge: ; preds = %nvkm_gr_vstatus_print.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i290

for.body.i284:                                    ; preds = %nvkm_gr_vstatus_print.exit
  %and.i273 = and i32 %52, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i273)
  %cmp.i274 = icmp eq i32 %and.i273, 1
  %conv3.i276 = zext i1 %cmp.i274 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %52)
  %tobool2.not.i282 = icmp ult i32 %52, 8
  br i1 %tobool2.not.i282, label %for.body.i284.for.end.loopexit.i286_crit_edge, label %for.body.i284.1

for.body.i284.for.end.loopexit.i286_crit_edge:    ; preds = %for.body.i284
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.loopexit.i286

for.body.i284.1:                                  ; preds = %for.body.i284
  %54 = and i32 %52, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %54)
  %cmp.i274.1 = icmp eq i32 %54, 8
  %conv3.i276.1 = select i1 %cmp.i274.1, i8 2, i8 0
  %mask.1.i277.1 = or i8 %conv3.i276.1, %conv3.i276
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %52)
  %tobool2.not.i282.1 = icmp ult i32 %52, 64
  br i1 %tobool2.not.i282.1, label %for.body.i284.1.for.end.loopexit.i286_crit_edge, label %for.body.i284.2

for.body.i284.1.for.end.loopexit.i286_crit_edge:  ; preds = %for.body.i284.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.loopexit.i286

for.body.i284.2:                                  ; preds = %for.body.i284.1
  %55 = and i32 %52, 448
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %55)
  %cmp.i274.2 = icmp eq i32 %55, 64
  %conv3.i276.2 = select i1 %cmp.i274.2, i8 4, i8 0
  %mask.1.i277.2 = or i8 %conv3.i276.2, %mask.1.i277.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %52)
  %tobool2.not.i282.2 = icmp ult i32 %52, 512
  br i1 %tobool2.not.i282.2, label %for.body.i284.2.for.end.loopexit.i286_crit_edge, label %for.body.i284.3

for.body.i284.2.for.end.loopexit.i286_crit_edge:  ; preds = %for.body.i284.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.loopexit.i286

for.body.i284.3:                                  ; preds = %for.body.i284.2
  %56 = and i32 %52, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %56)
  %cmp.i274.3 = icmp eq i32 %56, 512
  %conv3.i276.3 = select i1 %cmp.i274.3, i8 8, i8 0
  %mask.1.i277.3 = or i8 %conv3.i276.3, %mask.1.i277.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %52)
  %tobool2.not.i282.3 = icmp ult i32 %52, 4096
  br i1 %tobool2.not.i282.3, label %for.body.i284.3.for.end.loopexit.i286_crit_edge, label %for.body.i284.4

for.body.i284.3.for.end.loopexit.i286_crit_edge:  ; preds = %for.body.i284.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.loopexit.i286

for.body.i284.4:                                  ; preds = %for.body.i284.3
  call void @__sanitizer_cov_trace_pc() #6
  %57 = and i32 %52, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %57)
  %cmp.i274.4 = icmp eq i32 %57, 4096
  %conv3.i276.4 = select i1 %cmp.i274.4, i8 16, i8 0
  %mask.1.i277.4 = or i8 %conv3.i276.4, %mask.1.i277.3
  br label %for.end.loopexit.i286

for.end.loopexit.i286:                            ; preds = %for.body.i284.4, %for.body.i284.3.for.end.loopexit.i286_crit_edge, %for.body.i284.2.for.end.loopexit.i286_crit_edge, %for.body.i284.1.for.end.loopexit.i286_crit_edge, %for.body.i284.for.end.loopexit.i286_crit_edge
  %mask.1.i277.lcssa = phi i8 [ %conv3.i276, %for.body.i284.for.end.loopexit.i286_crit_edge ], [ %mask.1.i277.1, %for.body.i284.1.for.end.loopexit.i286_crit_edge ], [ %mask.1.i277.2, %for.body.i284.2.for.end.loopexit.i286_crit_edge ], [ %mask.1.i277.3, %for.body.i284.3.for.end.loopexit.i286_crit_edge ], [ %mask.1.i277.4, %for.body.i284.4 ]
  %phi.cast.i285 = zext i8 %mask.1.i277.lcssa to i32
  br label %for.end.i290

for.end.i290:                                     ; preds = %for.end.loopexit.i286, %nvkm_gr_vstatus_print.exit.for.end.i290_crit_edge
  %mask.0.lcssa.i287 = phi i32 [ 0, %nvkm_gr_vstatus_print.exit.for.end.i290_crit_edge ], [ %phi.cast.i285, %for.end.loopexit.i286 ]
  call void @nvkm_snprintbf(ptr noundef nonnull %msg.i268, i32 noundef 64, ptr noundef nonnull @nv50_gr_vstatus_1, i32 noundef %mask.0.lcssa.i287) #4
  %58 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp5.not.i289 = icmp eq i32 %59, 0
  br i1 %cmp5.not.i289, label %for.end.i290.nvkm_gr_vstatus_print.exit295_crit_edge, label %do.end.i294

for.end.i290.nvkm_gr_vstatus_print.exit295_crit_edge: ; preds = %for.end.i290
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_gr_vstatus_print.exit295

do.end.i294:                                      ; preds = %for.end.i290
  call void @__sanitizer_cov_trace_pc() #6
  %60 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device3, align 4
  %dev.i292 = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %dev.i292 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i292, align 8
  %name9.i293 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.34, ptr noundef %name9.i293, i32 noundef 1, i32 noundef %52, ptr noundef nonnull %msg.i268) #7
  br label %nvkm_gr_vstatus_print.exit295

nvkm_gr_vstatus_print.exit295:                    ; preds = %do.end.i294, %for.end.i290.nvkm_gr_vstatus_print.exit295_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %msg.i268) #4
  %64 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pri, align 4
  %add.ptr127 = getelementptr i8, ptr %65, i32 4195208
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr127) #4, !srcloc !102
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !112
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %msg.i296) #4
  %67 = call ptr @memset(ptr %msg.i296, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool2.not26.i297 = icmp eq i32 %66, 0
  br i1 %tobool2.not26.i297, label %nvkm_gr_vstatus_print.exit295.for.end.i318_crit_edge, label %for.body.i312

nvkm_gr_vstatus_print.exit295.for.end.i318_crit_edge: ; preds = %nvkm_gr_vstatus_print.exit295
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i318

for.body.i312:                                    ; preds = %nvkm_gr_vstatus_print.exit295
  %and.i301 = and i32 %66, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i301)
  %cmp.i302 = icmp eq i32 %and.i301, 1
  %conv3.i304 = zext i1 %cmp.i302 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %66)
  %tobool2.not.i310 = icmp ult i32 %66, 8
  br i1 %tobool2.not.i310, label %for.body.i312.for.end.loopexit.i314_crit_edge, label %for.body.i312.1

for.body.i312.for.end.loopexit.i314_crit_edge:    ; preds = %for.body.i312
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.loopexit.i314

for.body.i312.1:                                  ; preds = %for.body.i312
  %68 = and i32 %66, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %68)
  %cmp.i302.1 = icmp eq i32 %68, 8
  %conv3.i304.1 = select i1 %cmp.i302.1, i8 2, i8 0
  %mask.1.i305.1 = or i8 %conv3.i304.1, %conv3.i304
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %66)
  %tobool2.not.i310.1 = icmp ult i32 %66, 64
  br i1 %tobool2.not.i310.1, label %for.body.i312.1.for.end.loopexit.i314_crit_edge, label %for.body.i312.2

for.body.i312.1.for.end.loopexit.i314_crit_edge:  ; preds = %for.body.i312.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.loopexit.i314

for.body.i312.2:                                  ; preds = %for.body.i312.1
  %69 = and i32 %66, 448
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %69)
  %cmp.i302.2 = icmp eq i32 %69, 64
  %conv3.i304.2 = select i1 %cmp.i302.2, i8 4, i8 0
  %mask.1.i305.2 = or i8 %conv3.i304.2, %mask.1.i305.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %66)
  %tobool2.not.i310.2 = icmp ult i32 %66, 512
  br i1 %tobool2.not.i310.2, label %for.body.i312.2.for.end.loopexit.i314_crit_edge, label %for.body.i312.3

for.body.i312.2.for.end.loopexit.i314_crit_edge:  ; preds = %for.body.i312.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.loopexit.i314

for.body.i312.3:                                  ; preds = %for.body.i312.2
  %70 = and i32 %66, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %70)
  %cmp.i302.3 = icmp eq i32 %70, 512
  %conv3.i304.3 = select i1 %cmp.i302.3, i8 8, i8 0
  %mask.1.i305.3 = or i8 %conv3.i304.3, %mask.1.i305.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %66)
  %tobool2.not.i310.3 = icmp ult i32 %66, 4096
  br i1 %tobool2.not.i310.3, label %for.body.i312.3.for.end.loopexit.i314_crit_edge, label %for.body.i312.4

for.body.i312.3.for.end.loopexit.i314_crit_edge:  ; preds = %for.body.i312.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.loopexit.i314

for.body.i312.4:                                  ; preds = %for.body.i312.3
  %71 = and i32 %66, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %71)
  %cmp.i302.4 = icmp eq i32 %71, 4096
  %conv3.i304.4 = select i1 %cmp.i302.4, i8 16, i8 0
  %mask.1.i305.4 = or i8 %conv3.i304.4, %mask.1.i305.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %66)
  %tobool2.not.i310.4 = icmp ult i32 %66, 32768
  br i1 %tobool2.not.i310.4, label %for.body.i312.4.for.end.loopexit.i314_crit_edge, label %for.body.i312.5

for.body.i312.4.for.end.loopexit.i314_crit_edge:  ; preds = %for.body.i312.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.loopexit.i314

for.body.i312.5:                                  ; preds = %for.body.i312.4
  %72 = and i32 %66, 229376
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %72)
  %cmp.i302.5 = icmp eq i32 %72, 32768
  %conv3.i304.5 = select i1 %cmp.i302.5, i8 32, i8 0
  %mask.1.i305.5 = or i8 %conv3.i304.5, %mask.1.i305.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %66)
  %tobool2.not.i310.5 = icmp ult i32 %66, 262144
  br i1 %tobool2.not.i310.5, label %for.body.i312.5.for.end.loopexit.i314_crit_edge, label %for.body.i312.6

for.body.i312.5.for.end.loopexit.i314_crit_edge:  ; preds = %for.body.i312.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.loopexit.i314

for.body.i312.6:                                  ; preds = %for.body.i312.5
  %73 = and i32 %66, 1835008
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %73)
  %cmp.i302.6 = icmp eq i32 %73, 262144
  %conv3.i304.6 = select i1 %cmp.i302.6, i8 64, i8 0
  %mask.1.i305.6 = or i8 %conv3.i304.6, %mask.1.i305.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %66)
  %tobool2.not.i310.6 = icmp ult i32 %66, 2097152
  br i1 %tobool2.not.i310.6, label %for.body.i312.6.for.end.loopexit.i314_crit_edge, label %for.body.i312.7

for.body.i312.6.for.end.loopexit.i314_crit_edge:  ; preds = %for.body.i312.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.loopexit.i314

for.body.i312.7:                                  ; preds = %for.body.i312.6
  call void @__sanitizer_cov_trace_pc() #6
  %74 = and i32 %66, 14680064
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %74)
  %cmp.i302.7 = icmp eq i32 %74, 2097152
  %conv3.i304.7 = select i1 %cmp.i302.7, i8 -128, i8 0
  %mask.1.i305.7 = or i8 %conv3.i304.7, %mask.1.i305.6
  br label %for.end.loopexit.i314

for.end.loopexit.i314:                            ; preds = %for.body.i312.7, %for.body.i312.6.for.end.loopexit.i314_crit_edge, %for.body.i312.5.for.end.loopexit.i314_crit_edge, %for.body.i312.4.for.end.loopexit.i314_crit_edge, %for.body.i312.3.for.end.loopexit.i314_crit_edge, %for.body.i312.2.for.end.loopexit.i314_crit_edge, %for.body.i312.1.for.end.loopexit.i314_crit_edge, %for.body.i312.for.end.loopexit.i314_crit_edge
  %mask.1.i305.lcssa = phi i8 [ %conv3.i304, %for.body.i312.for.end.loopexit.i314_crit_edge ], [ %mask.1.i305.1, %for.body.i312.1.for.end.loopexit.i314_crit_edge ], [ %mask.1.i305.2, %for.body.i312.2.for.end.loopexit.i314_crit_edge ], [ %mask.1.i305.3, %for.body.i312.3.for.end.loopexit.i314_crit_edge ], [ %mask.1.i305.4, %for.body.i312.4.for.end.loopexit.i314_crit_edge ], [ %mask.1.i305.5, %for.body.i312.5.for.end.loopexit.i314_crit_edge ], [ %mask.1.i305.6, %for.body.i312.6.for.end.loopexit.i314_crit_edge ], [ %mask.1.i305.7, %for.body.i312.7 ]
  %phi.cast.i313 = zext i8 %mask.1.i305.lcssa to i32
  br label %for.end.i318

for.end.i318:                                     ; preds = %for.end.loopexit.i314, %nvkm_gr_vstatus_print.exit295.for.end.i318_crit_edge
  %mask.0.lcssa.i315 = phi i32 [ 0, %nvkm_gr_vstatus_print.exit295.for.end.i318_crit_edge ], [ %phi.cast.i313, %for.end.loopexit.i314 ]
  call void @nvkm_snprintbf(ptr noundef nonnull %msg.i296, i32 noundef 64, ptr noundef nonnull @nv50_gr_vstatus_2, i32 noundef %mask.0.lcssa.i315) #4
  %75 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp5.not.i317 = icmp eq i32 %76, 0
  br i1 %cmp5.not.i317, label %for.end.i318.nvkm_gr_vstatus_print.exit323_crit_edge, label %do.end.i322

for.end.i318.nvkm_gr_vstatus_print.exit323_crit_edge: ; preds = %for.end.i318
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_gr_vstatus_print.exit323

do.end.i322:                                      ; preds = %for.end.i318
  call void @__sanitizer_cov_trace_pc() #6
  %77 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %device3, align 4
  %dev.i320 = getelementptr inbounds %struct.nvkm_device, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %dev.i320 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i320, align 8
  %name9.i321 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.34, ptr noundef %name9.i321, i32 noundef 2, i32 noundef %66, ptr noundef nonnull %msg.i296) #7
  br label %nvkm_gr_vstatus_print.exit323

nvkm_gr_vstatus_print.exit323:                    ; preds = %do.end.i322, %for.end.i318.nvkm_gr_vstatus_print.exit323_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %msg.i296) #4
  br label %do.body131

do.body131:                                       ; preds = %nvkm_gr_vstatus_print.exit323, %do.cond71.do.body131_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !113
  call void @arm_heavy_mb() #4
  %81 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pri, align 4
  %add.ptr135 = getelementptr i8, ptr %82, i32 1051776
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135, i32 1) #4, !srcloc !105
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #4
  %83 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #4
  br label %do.body136

do.body136:                                       ; preds = %do.cond146.do.body136_crit_edge, %do.body131
  %84 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pri, align 4
  %add.ptr139 = getelementptr i8, ptr %85, i32 1051776
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr139) #4, !srcloc !102
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !114
  %and142 = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %do.body136.if.end188_crit_edge, label %do.cond146

do.body136.if.end188_crit_edge:                   ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end188

do.cond146:                                       ; preds = %do.body136
  %call147 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #4
  %cmp148 = icmp sgt i64 %call147, -1
  br i1 %cmp148, label %do.cond146.do.body136_crit_edge, label %do.end164

do.cond146.do.body136_crit_edge:                  ; preds = %do.cond146
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body136

do.end164:                                        ; preds = %do.cond146
  %87 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %_wait, align 8
  %device167 = getelementptr inbounds %struct.nvkm_timer, ptr %88, i32 0, i32 1, i32 1
  %89 = ptrtoint ptr %device167 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %device167, align 4
  %dev168 = getelementptr inbounds %struct.nvkm_device, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %dev168 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev168, align 8
  %call169 = call ptr @dev_driver_string(ptr noundef %92) #4
  %93 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %_wait, align 8
  %device172 = getelementptr inbounds %struct.nvkm_timer, ptr %94, i32 0, i32 1, i32 1
  %95 = ptrtoint ptr %device172 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %device172, align 4
  %dev173 = getelementptr inbounds %struct.nvkm_device, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %dev173 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev173, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %98, i32 0, i32 3
  %99 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i324 = icmp eq ptr %100, null
  br i1 %tobool.not.i324, label %if.end.i, label %do.end164.dev_name.exit_crit_edge

do.end164.dev_name.exit_crit_edge:                ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #6
  %101 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %98, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end164.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %102, %if.end.i ], [ %100, %do.end164.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 171, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %call169, ptr noundef %retval.0.i) #4
  br label %if.end188

if.end188:                                        ; preds = %dev_name.exit, %do.body136.if.end188_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #4
  %103 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pri, align 4
  %add.ptr195 = getelementptr i8, ptr %104, i32 4195584
  %105 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr195) #4, !srcloc !102
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !115
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !116
  call void @arm_heavy_mb() #4
  %or202 = or i32 %105, 1
  %106 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pri, align 4
  %add.ptr204 = getelementptr i8, ptr %107, i32 4195584
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr204, i32 %or202) #4, !srcloc !105
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #4
  %cond = select i1 %idle.4.off0.lcssa, i32 0, i32 -16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %status) #4
  ret i32 %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_snprintbf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @g84_gr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv50_gr_new_(ptr noundef nonnull @g84_gr, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_gr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_gr_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_gr_intr(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_gr_chan_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nv50_gr_units(ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 152, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @g84_gr_tlb_flush._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @g84_gr_tlb_flush._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 156, i32 3}
!10 = !{ptr @g84_gr_tlb_flush._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @g84_gr_tlb_flush._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 168, i32 2}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 31, i32 16}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 32, i32 16}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 33, i32 16}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 34, i32 16}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 35, i32 16}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 36, i32 16}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 37, i32 16}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 38, i32 16}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 39, i32 16}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 40, i32 16}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 41, i32 16}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 42, i32 16}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 43, i32 16}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 44, i32 16}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 45, i32 16}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 46, i32 16}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 47, i32 16}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 48, i32 16}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 49, i32 16}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 50, i32 16}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 51, i32 16}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 52, i32 16}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 53, i32 16}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 54, i32 16}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 55, i32 16}
!64 = !{ptr @nv50_gr_status, !65, !"nv50_gr_status", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 30, i32 35}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 111, i32 2}
!68 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @nvkm_gr_vstatus_print._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @nvkm_gr_vstatus_print._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 62, i32 10}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 63, i32 10}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 64, i32 10}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 65, i32 10}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 66, i32 10}
!81 = !{ptr @nv50_gr_vstatus_0, !82, !"nv50_gr_vstatus_0", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 60, i32 1}
!83 = !{ptr @nv50_gr_vstatus_1, !84, !"nv50_gr_vstatus_1", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 72, i32 1}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 83, i32 10}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 84, i32 10}
!89 = !{ptr @nv50_gr_vstatus_2, !90, !"nv50_gr_vstatus_2", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 82, i32 1}
!91 = !{ptr @g84_gr, !92, !"g84_gr", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c", i32 178, i32 1}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{i64 5393658}
!103 = !{i64 2156254369}
!104 = !{i64 2156254771}
!105 = !{i64 5393240}
!106 = !{i64 2156255259}
!107 = !{i64 2156255644}
!108 = !{i64 2156256029}
!109 = !{i64 2156258791}
!110 = !{i64 2156261483}
!111 = !{i64 2156261868}
!112 = !{i64 2156262253}
!113 = !{i64 2156262595}
!114 = !{i64 2156264478}
!115 = !{i64 2156266138}
!116 = !{i64 2156266540}
