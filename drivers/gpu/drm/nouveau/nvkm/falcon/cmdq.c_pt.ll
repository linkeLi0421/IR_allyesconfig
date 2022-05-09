; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/falcon/cmdq.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/falcon/cmdq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvfw_falcon_msg = type { i8, i8, i8, i8 }
%struct.nvkm_falcon_cmdq = type { ptr, ptr, %struct.mutex, %struct.completion, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.136, %struct.anon.137, %struct.nvkm_engine }
%struct.anon.136 = type { i32, ptr, i32, i8 }
%struct.anon.137 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.140 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.anon.140 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.135, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.135 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_falcon_qmgr_seq = type { i16, i32, i8, ptr, ptr, %struct.completion, i32 }
%struct.nvkm_falcon_func = type { %struct.anon, %struct.anon.0, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.1, %struct.anon.1, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.anon.1 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }

@nvkm_falcon_cmdq_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 133, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: %s: %s: timeout waiting for queue ready\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvkm_falcon_cmdq_send\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/nouveau/nvkm/falcon/cmdq.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_falcon_cmdq_send._entry_ptr = internal global ptr @nvkm_falcon_cmdq_send._entry, section ".printk_index", align 4
@nvkm_falcon_cmdq_send._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 133, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: %s: timeout waiting for queue ready\0A\00", [55 x i8] zeroinitializer }, align 32
@nvkm_falcon_cmdq_send._entry_ptr.7 = internal global ptr @nvkm_falcon_cmdq_send._entry.5, section ".printk_index", align 4
@nvkm_falcon_cmdq_send._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 158, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: %s: %s: timeout waiting for reply\0A\00", [57 x i8] zeroinitializer }, align 32
@nvkm_falcon_cmdq_send._entry_ptr.10 = internal global ptr @nvkm_falcon_cmdq_send._entry.8, section ".printk_index", align 4
@nvkm_falcon_cmdq_send._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 158, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: %s: timeout waiting for reply\0A\00", [61 x i8] zeroinitializer }, align 32
@nvkm_falcon_cmdq_send._entry_ptr.13 = internal global ptr @nvkm_falcon_cmdq_send._entry.11, section ".printk_index", align 4
@nvkm_falcon_cmdq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 187, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: %s: %s: initialised @ index %d offset 0x%08x size 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvkm_falcon_cmdq_init\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nvkm_falcon_cmdq_init._entry_ptr = internal global ptr @nvkm_falcon_cmdq_init._entry, section ".printk_index", align 4
@nvkm_falcon_cmdq_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.2, i32 187, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: %s: initialised @ index %d offset 0x%08x size 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@nvkm_falcon_cmdq_init._entry_ptr.19 = internal global ptr @nvkm_falcon_cmdq_init._entry.17, section ".printk_index", align 4
@nvkm_falcon_cmdq_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&cmdq->mutex\00", [19 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nvkm_falcon_cmdq_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 109, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: %s: %s: timeout waiting for queue space\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvkm_falcon_cmdq_write\00", [41 x i8] zeroinitializer }, align 32
@nvkm_falcon_cmdq_write._entry_ptr = internal global ptr @nvkm_falcon_cmdq_write._entry, section ".printk_index", align 4
@nvkm_falcon_cmdq_write._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 109, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: %s: timeout waiting for queue space\0A\00", [55 x i8] zeroinitializer }, align 32
@nvkm_falcon_cmdq_write._entry_ptr.25 = internal global ptr @nvkm_falcon_cmdq_write._entry.23, section ".printk_index", align 4
@nvkm_falcon_cmdq_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 79, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: %s: %s: queue full\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvkm_falcon_cmdq_open\00", [42 x i8] zeroinitializer }, align 32
@nvkm_falcon_cmdq_open._entry_ptr = internal global ptr @nvkm_falcon_cmdq_open._entry, section ".printk_index", align 4
@nvkm_falcon_cmdq_open._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 79, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: %s: queue full\0A\00", [44 x i8] zeroinitializer }, align 32
@nvkm_falcon_cmdq_open._entry_ptr.30 = internal global ptr @nvkm_falcon_cmdq_open._entry.28, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 133, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 158, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 186, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 211, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 109, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private constant [46 x i8] c"../drivers/gpu/drm/nouveau/nvkm/falcon/cmdq.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 79, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 87, i32 2 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @nvkm_falcon_cmdq_init._entry, ptr @nvkm_falcon_cmdq_init._entry.17, ptr @nvkm_falcon_cmdq_init._entry_ptr, ptr @nvkm_falcon_cmdq_init._entry_ptr.19, ptr @nvkm_falcon_cmdq_open._entry, ptr @nvkm_falcon_cmdq_open._entry.28, ptr @nvkm_falcon_cmdq_open._entry_ptr, ptr @nvkm_falcon_cmdq_open._entry_ptr.30, ptr @nvkm_falcon_cmdq_send._entry, ptr @nvkm_falcon_cmdq_send._entry.11, ptr @nvkm_falcon_cmdq_send._entry.5, ptr @nvkm_falcon_cmdq_send._entry.8, ptr @nvkm_falcon_cmdq_send._entry_ptr, ptr @nvkm_falcon_cmdq_send._entry_ptr.10, ptr @nvkm_falcon_cmdq_send._entry_ptr.13, ptr @nvkm_falcon_cmdq_send._entry_ptr.7, ptr @nvkm_falcon_cmdq_write._entry, ptr @nvkm_falcon_cmdq_write._entry.23, ptr @nvkm_falcon_cmdq_write._entry_ptr, ptr @nvkm_falcon_cmdq_write._entry_ptr.25, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @nvkm_falcon_cmdq_new.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @init_completion.__key, ptr @.str.31], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_cmdq_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_cmdq_send._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_cmdq_send._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_cmdq_send._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_cmdq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_cmdq_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_cmdq_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_cmdq_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_cmdq_write._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_cmdq_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_cmdq_open._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_cmdq_send(ptr noundef %cmdq, ptr noundef %cmd, ptr noundef %cb, ptr noundef %priv, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i.i.i = alloca %struct.nvfw_falcon_msg, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ready = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %cmdq, i32 0, i32 3
  %call1 = tail call i32 @wait_for_completion_timeout(ptr noundef %ready, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %0 = ptrtoint ptr %cmdq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmdq, align 4
  br i1 %tobool.not, label %do.body, label %if.end43

do.body:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %owner = getelementptr inbounds %struct.nvkm_falcon, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %owner, align 4
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %5, i32 0, i32 4
  %name4 = getelementptr inbounds %struct.nvkm_falcon, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name4, align 4
  %cmp.not = icmp eq ptr %name, %7
  %debug26 = getelementptr inbounds %struct.nvkm_subdev, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %debug26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp27.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %do.body21, label %do.body6

do.body6:                                         ; preds = %do.body
  br i1 %cmp27.not, label %do.body6.cleanup_crit_edge, label %do.end

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %name18 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %cmdq, i32 0, i32 1
  %14 = ptrtoint ptr %name18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef %name, ptr noundef %7, ptr noundef %15) #9
  br label %cleanup

do.body21:                                        ; preds = %do.body
  br i1 %cmp27.not, label %do.body21.cleanup_crit_edge, label %do.end31

do.body21.cleanup_crit_edge:                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end31:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  %device32 = getelementptr inbounds %struct.nvkm_subdev, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %device32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device32, align 4
  %dev33 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev33, align 8
  %name36 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %cmdq, i32 0, i32 1
  %20 = ptrtoint ptr %name36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.6, ptr noundef %name, ptr noundef %21) #9
  br label %cleanup

if.end43:                                         ; preds = %entry
  %call45 = tail call ptr @nvkm_falcon_qmgr_seq_acquire(ptr noundef %1) #6
  %cmp.i = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %call45 to i32
  br label %cleanup

if.end49:                                         ; preds = %if.end43
  %23 = ptrtoint ptr %call45 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %call45, align 4
  %conv = trunc i16 %24 to i8
  %seq_id = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %cmd, i32 0, i32 3
  %25 = ptrtoint ptr %seq_id to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv, ptr %seq_id, align 1
  %ctrl_flags = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %cmd, i32 0, i32 2
  %26 = ptrtoint ptr %ctrl_flags to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 3, ptr %ctrl_flags, align 1
  %state = getelementptr inbounds %struct.nvkm_falcon_qmgr_seq, ptr %call45, i32 0, i32 1
  %27 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool50.not = icmp eq i32 %timeout, 0
  %async = getelementptr inbounds %struct.nvkm_falcon_qmgr_seq, ptr %call45, i32 0, i32 2
  %frombool = zext i1 %tobool50.not to i8
  %28 = ptrtoint ptr %async to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %frombool, ptr %async, align 4
  %callback = getelementptr inbounds %struct.nvkm_falcon_qmgr_seq, ptr %call45, i32 0, i32 3
  %29 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %cb, ptr %callback, align 4
  %priv51 = getelementptr inbounds %struct.nvkm_falcon_qmgr_seq, ptr %call45, i32 0, i32 4
  %30 = ptrtoint ptr %priv51 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %priv, ptr %priv51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -200, %31
  %size.i = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %cmd, i32 0, i32 1
  %mutex.i.i = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %cmdq, i32 0, i32 2
  %head_reg.i.i.i = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %cmdq, i32 0, i32 4
  %tail_reg.i.i.i = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %cmdq, i32 0, i32 5
  %offset.i.i.i = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %cmdq, i32 0, i32 6
  %size4.i.i.i = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %cmdq, i32 0, i32 7
  %position.i.i = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %cmdq, i32 0, i32 8
  %32 = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %cmd.i.i.i, i32 0, i32 1
  %33 = getelementptr inbounds i8, ptr %cmd.i.i.i, i32 2
  %name20.i.i = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %cmdq, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %if.end49
  %ret.0.i = phi i32 [ -11, %if.end49 ], [ %ret.0.i.be, %while.cond.i.backedge ]
  %34 = zext i32 %ret.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ret.0.i, label %while.cond.i.do.body.i_crit_edge [
    i32 -11, label %land.rhs.i
    i32 0, label %if.end57
  ]

while.cond.i.do.body.i_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

land.rhs.i:                                       ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %while.body.i, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %36 = ptrtoint ptr %size.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %size.i, align 1
  %conv.i = zext i8 %37 to i32
  %38 = ptrtoint ptr %cmdq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cmdq, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #6
  %42 = ptrtoint ptr %cmdq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cmdq, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %46 = ptrtoint ptr %head_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %head_reg.i.i.i, align 4
  %owner.i.i.i.i = getelementptr inbounds %struct.nvkm_falcon, ptr %45, i32 0, i32 1
  %48 = ptrtoint ptr %owner.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %owner.i.i.i.i, align 4
  %device.i.i.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %device.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device.i.i.i.i, align 4
  %pri.i.i.i.i = getelementptr inbounds %struct.nvkm_device, ptr %51, i32 0, i32 11
  %52 = ptrtoint ptr %pri.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pri.i.i.i.i, align 4
  %addr1.i.i.i.i = getelementptr inbounds %struct.nvkm_falcon, ptr %45, i32 0, i32 3
  %54 = ptrtoint ptr %addr1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addr1.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %55, %47
  %add.ptr.i.i.i.i = getelementptr i8, ptr %53, i32 %add.i.i.i.i
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #6, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %57 = ptrtoint ptr %cmdq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cmdq, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %61 = ptrtoint ptr %tail_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tail_reg.i.i.i, align 4
  %owner.i32.i.i.i = getelementptr inbounds %struct.nvkm_falcon, ptr %60, i32 0, i32 1
  %63 = ptrtoint ptr %owner.i32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %owner.i32.i.i.i, align 4
  %device.i33.i.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %device.i33.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %device.i33.i.i.i, align 4
  %pri.i34.i.i.i = getelementptr inbounds %struct.nvkm_device, ptr %66, i32 0, i32 11
  %67 = ptrtoint ptr %pri.i34.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pri.i34.i.i.i, align 4
  %addr1.i35.i.i.i = getelementptr inbounds %struct.nvkm_falcon, ptr %60, i32 0, i32 3
  %69 = ptrtoint ptr %addr1.i35.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %addr1.i35.i.i.i, align 4
  %add.i36.i.i.i = add i32 %70, %62
  %add.ptr.i37.i.i.i = getelementptr i8, ptr %68, i32 %add.i36.i.i.i
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37.i.i.i) #6, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %add.i.i.i = add nuw nsw i32 %conv.i, 3
  %and.i.i.i = and i32 %add.i.i.i, 508
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %71)
  %cmp.not.i.i.i = icmp ult i32 %56, %71
  br i1 %cmp.not.i.i.i, label %while.body.i.nvkm_falcon_cmdq_has_room.exit.i.i_crit_edge, label %if.then.i.i.i

while.body.i.nvkm_falcon_cmdq_has_room.exit.i.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_falcon_cmdq_has_room.exit.i.i

if.then.i.i.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %offset.i.i.i, align 4
  %74 = ptrtoint ptr %size4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %size4.i.i.i, align 4
  %add5.i.i.i = sub i32 -4, %56
  %sub.i.i.i = add i32 %add5.i.i.i, %73
  %sub6.i.i.i = add i32 %sub.i.i.i, %75
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i, i32 %sub6.i.i.i)
  %cmp7.i.i.i = icmp ugt i32 %and.i.i.i, %sub6.i.i.i
  %spec.select.i.i = zext i1 %cmp7.i.i.i to i8
  %spec.select70.i.i = select i1 %cmp7.i.i.i, i32 %73, i32 %56
  br label %nvkm_falcon_cmdq_has_room.exit.i.i

nvkm_falcon_cmdq_has_room.exit.i.i:               ; preds = %if.then.i.i.i, %while.body.i.nvkm_falcon_cmdq_has_room.exit.i.i_crit_edge
  %rewind.0.i.i = phi i8 [ 0, %while.body.i.nvkm_falcon_cmdq_has_room.exit.i.i_crit_edge ], [ %spec.select.i.i, %if.then.i.i.i ]
  %head.0.i.i.i = phi i32 [ %56, %while.body.i.nvkm_falcon_cmdq_has_room.exit.i.i_crit_edge ], [ %spec.select70.i.i, %if.then.i.i.i ]
  %free.0.i.i.i = phi i32 [ -1, %while.body.i.nvkm_falcon_cmdq_has_room.exit.i.i_crit_edge ], [ %sub6.i.i.i, %if.then.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %head.0.i.i.i)
  %cmp11.i.i.i = icmp ugt i32 %71, %head.0.i.i.i
  %76 = xor i32 %head.0.i.i.i, -1
  %sub14.i.i.i = add i32 %71, %76
  %free.1.i.i.i = select i1 %cmp11.i.i.i, i32 %sub14.i.i.i, i32 %free.0.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i, i32 %free.1.i.i.i)
  %cmp16.i.not.i.i = icmp ugt i32 %and.i.i.i, %free.1.i.i.i
  br i1 %cmp16.i.not.i.i, label %do.body.i.i, label %if.end46.i.i

do.body.i.i:                                      ; preds = %nvkm_falcon_cmdq_has_room.exit.i.i
  %77 = ptrtoint ptr %cmdq to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cmdq, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %owner.i.i = getelementptr inbounds %struct.nvkm_falcon, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %owner.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %82, i32 0, i32 4
  %name6.i.i = getelementptr inbounds %struct.nvkm_falcon, ptr %80, i32 0, i32 2
  %83 = ptrtoint ptr %name6.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %name6.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %name.i.i, %84
  %debug28.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %82, i32 0, i32 5
  %85 = ptrtoint ptr %debug28.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %debug28.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %86)
  %cmp29.i.i = icmp ugt i32 %86, 3
  br i1 %cmp.not.i.i, label %do.body23.i.i, label %do.body8.i.i

do.body8.i.i:                                     ; preds = %do.body.i.i
  br i1 %cmp29.i.i, label %do.end.i.i, label %do.body8.i.i.do.end44.i.i_crit_edge

do.body8.i.i.do.end44.i.i_crit_edge:              ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44.i.i

do.end.i.i:                                       ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %device.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %82, i32 0, i32 1
  %87 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %device.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.nvkm_device, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev.i.i, align 8
  %91 = ptrtoint ptr %name20.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %name20.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %90, ptr noundef nonnull @.str.26, ptr noundef %name.i.i, ptr noundef %84, ptr noundef %92) #9
  br label %do.end44.i.i

do.body23.i.i:                                    ; preds = %do.body.i.i
  br i1 %cmp29.i.i, label %do.end33.i.i, label %do.body23.i.i.do.end44.i.i_crit_edge

do.body23.i.i.do.end44.i.i_crit_edge:             ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44.i.i

do.end33.i.i:                                     ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %device34.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %82, i32 0, i32 1
  %93 = ptrtoint ptr %device34.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %device34.i.i, align 4
  %dev35.i.i = getelementptr inbounds %struct.nvkm_device, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %dev35.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev35.i.i, align 8
  %97 = ptrtoint ptr %name20.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %name20.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %96, ptr noundef nonnull @.str.29, ptr noundef %name.i.i, ptr noundef %98) #9
  br label %do.end44.i.i

do.end44.i.i:                                     ; preds = %do.end33.i.i, %do.body23.i.i.do.end44.i.i_crit_edge, %do.end.i.i, %do.body8.i.i.do.end44.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i.i) #6
  br label %while.cond.i.backedge

if.end46.i.i:                                     ; preds = %nvkm_falcon_cmdq_has_room.exit.i.i
  %99 = ptrtoint ptr %head_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %head_reg.i.i.i, align 4
  %owner.i.i.i = getelementptr inbounds %struct.nvkm_falcon, ptr %41, i32 0, i32 1
  %101 = ptrtoint ptr %owner.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %owner.i.i.i, align 4
  %device.i.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %device.i.i.i, align 4
  %pri.i.i.i = getelementptr inbounds %struct.nvkm_device, ptr %104, i32 0, i32 11
  %105 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pri.i.i.i, align 4
  %addr1.i.i.i = getelementptr inbounds %struct.nvkm_falcon, ptr %41, i32 0, i32 3
  %107 = ptrtoint ptr %addr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %addr1.i.i.i, align 4
  %add.i68.i.i = add i32 %108, %100
  %add.ptr.i.i.i = getelementptr i8, ptr %106, i32 %add.i68.i.i
  %109 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %110 = ptrtoint ptr %position.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %position.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rewind.0.i.i)
  %tobool.not.i.i = icmp eq i8 %rewind.0.i.i, 0
  br i1 %tobool.not.i.i, label %if.end46.i.i.while.cond.i.backedge_crit_edge, label %if.then48.i.i

if.end46.i.i.while.cond.i.backedge_crit_edge:     ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.backedge

if.then48.i.i:                                    ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i.i.i) #6
  %111 = ptrtoint ptr %33 to i32
  call void @__asan_storeN_noabort(i32 %111, i32 2)
  store i16 -1, ptr %33, align 1
  %112 = ptrtoint ptr %cmd.i.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %cmd.i.i.i, align 1
  %113 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 4, ptr %32, align 1
  %114 = ptrtoint ptr %cmdq to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cmdq, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  call void @nvkm_falcon_load_dmem(ptr noundef %117, ptr noundef nonnull %cmd.i.i.i, i32 noundef %109, i32 noundef 4, i8 noundef zeroext 0) #6
  %118 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %offset.i.i.i, align 4
  %120 = ptrtoint ptr %position.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %position.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i.i.i) #6
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %if.then48.i.i, %if.end46.i.i.while.cond.i.backedge_crit_edge, %do.end44.i.i
  %ret.0.i.be = phi i32 [ -11, %do.end44.i.i ], [ 0, %if.then48.i.i ], [ 0, %if.end46.i.i.while.cond.i.backedge_crit_edge ]
  br label %while.cond.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %while.cond.i.do.body.i_crit_edge
  %121 = ptrtoint ptr %cmdq to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cmdq, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  %owner.i = getelementptr inbounds %struct.nvkm_falcon, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %owner.i, align 4
  %name.i = getelementptr inbounds %struct.nvkm_subdev, ptr %126, i32 0, i32 4
  %name5.i = getelementptr inbounds %struct.nvkm_falcon, ptr %124, i32 0, i32 2
  %127 = ptrtoint ptr %name5.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %name5.i, align 4
  %cmp6.not.i = icmp eq ptr %name.i, %128
  %debug30.i = getelementptr inbounds %struct.nvkm_subdev, ptr %126, i32 0, i32 5
  %129 = ptrtoint ptr %debug30.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %debug30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp31.not.i = icmp eq i32 %130, 0
  br i1 %cmp6.not.i, label %do.body25.i, label %do.body9.i

do.body9.i:                                       ; preds = %do.body.i
  br i1 %cmp31.not.i, label %do.body9.i.if.then54_crit_edge, label %do.end.i

do.body9.i.if.then54_crit_edge:                   ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then54

do.end.i:                                         ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #8
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %126, i32 0, i32 1
  %131 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev.i, align 8
  %135 = ptrtoint ptr %name20.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %name20.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.21, ptr noundef %name.i, ptr noundef %128, ptr noundef %136) #9
  br label %if.then54

do.body25.i:                                      ; preds = %do.body.i
  br i1 %cmp31.not.i, label %do.body25.i.if.then54_crit_edge, label %do.end36.i

do.body25.i.if.then54_crit_edge:                  ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then54

do.end36.i:                                       ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  %device37.i = getelementptr inbounds %struct.nvkm_subdev, ptr %126, i32 0, i32 1
  %137 = ptrtoint ptr %device37.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %device37.i, align 4
  %dev38.i = getelementptr inbounds %struct.nvkm_device, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %dev38.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev38.i, align 8
  %141 = ptrtoint ptr %name20.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %name20.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %140, ptr noundef nonnull @.str.24, ptr noundef %name.i, ptr noundef %142) #9
  br label %if.then54

if.then54:                                        ; preds = %do.end36.i, %do.body25.i.if.then54_crit_edge, %do.end.i, %do.body9.i.if.then54_crit_edge
  %143 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 1, ptr %state, align 4
  %144 = ptrtoint ptr %cmdq to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %cmdq, align 4
  call void @nvkm_falcon_qmgr_seq_release(ptr noundef %145, ptr noundef %call45) #6
  br label %cleanup

if.end57:                                         ; preds = %while.cond.i
  %146 = ptrtoint ptr %size.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %size.i, align 1
  %conv50.i = zext i8 %147 to i32
  %148 = ptrtoint ptr %cmdq to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %cmdq, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %149, align 4
  %152 = ptrtoint ptr %position.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %position.i.i, align 4
  call void @nvkm_falcon_load_dmem(ptr noundef %151, ptr noundef %cmd, i32 noundef %153, i32 noundef %conv50.i, i8 noundef zeroext 0) #6
  %add.i.i = add nuw nsw i32 %conv50.i, 3
  %and.i.i = and i32 %add.i.i, 508
  %154 = ptrtoint ptr %position.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %position.i.i, align 4
  %add3.i.i = add i32 %155, %and.i.i
  store i32 %add3.i.i, ptr %position.i.i, align 4
  %156 = ptrtoint ptr %cmdq to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cmdq, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %157, align 4
  %160 = ptrtoint ptr %head_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %head_reg.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  call void @arm_heavy_mb() #6
  %owner.i.i72.i = getelementptr inbounds %struct.nvkm_falcon, ptr %159, i32 0, i32 1
  %162 = ptrtoint ptr %owner.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %owner.i.i72.i, align 4
  %device.i.i73.i = getelementptr inbounds %struct.nvkm_subdev, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %device.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %device.i.i73.i, align 4
  %pri.i.i74.i = getelementptr inbounds %struct.nvkm_device, ptr %165, i32 0, i32 11
  %166 = ptrtoint ptr %pri.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %pri.i.i74.i, align 4
  %addr1.i.i75.i = getelementptr inbounds %struct.nvkm_falcon, ptr %159, i32 0, i32 3
  %168 = ptrtoint ptr %addr1.i.i75.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %addr1.i.i75.i, align 4
  %add.i.i76.i = add i32 %169, %161
  %add.ptr.i.i77.i = getelementptr i8, ptr %167, i32 %add.i.i76.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i77.i, i32 %add3.i.i) #6, !srcloc !63
  call void @mutex_unlock(ptr noundef %mutex.i.i) #6
  %170 = ptrtoint ptr %async to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %async, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool59.not = icmp eq i8 %171, 0
  br i1 %tobool59.not, label %if.then60, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then60:                                        ; preds = %if.end57
  %done = getelementptr inbounds %struct.nvkm_falcon_qmgr_seq, ptr %call45, i32 0, i32 5
  %call61 = call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef %timeout) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %do.body64, label %if.end123

do.body64:                                        ; preds = %if.then60
  %172 = ptrtoint ptr %cmdq to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %cmdq, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %173, align 4
  %owner67 = getelementptr inbounds %struct.nvkm_falcon, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %owner67 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %owner67, align 4
  %name68 = getelementptr inbounds %struct.nvkm_subdev, ptr %177, i32 0, i32 4
  %name72 = getelementptr inbounds %struct.nvkm_falcon, ptr %175, i32 0, i32 2
  %178 = ptrtoint ptr %name72 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %name72, align 4
  %cmp73.not = icmp eq ptr %name68, %179
  %debug105 = getelementptr inbounds %struct.nvkm_subdev, ptr %177, i32 0, i32 5
  %180 = ptrtoint ptr %debug105 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %debug105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %cmp106.not = icmp eq i32 %181, 0
  br i1 %cmp73.not, label %do.body100, label %do.body76

do.body76:                                        ; preds = %do.body64
  br i1 %cmp106.not, label %do.body76.cleanup_crit_edge, label %do.end87

do.body76.cleanup_crit_edge:                      ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end87:                                         ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #8
  %device88 = getelementptr inbounds %struct.nvkm_subdev, ptr %177, i32 0, i32 1
  %182 = ptrtoint ptr %device88 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %device88, align 4
  %dev89 = getelementptr inbounds %struct.nvkm_device, ptr %183, i32 0, i32 2
  %184 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev89, align 8
  %186 = ptrtoint ptr %name20.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %name20.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %185, ptr noundef nonnull @.str.9, ptr noundef %name68, ptr noundef %179, ptr noundef %187) #9
  br label %cleanup

do.body100:                                       ; preds = %do.body64
  br i1 %cmp106.not, label %do.body100.cleanup_crit_edge, label %do.end111

do.body100.cleanup_crit_edge:                     ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end111:                                        ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #8
  %device112 = getelementptr inbounds %struct.nvkm_subdev, ptr %177, i32 0, i32 1
  %188 = ptrtoint ptr %device112 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %device112, align 4
  %dev113 = getelementptr inbounds %struct.nvkm_device, ptr %189, i32 0, i32 2
  %190 = ptrtoint ptr %dev113 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %dev113, align 8
  %192 = ptrtoint ptr %name20.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %name20.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %191, ptr noundef nonnull @.str.12, ptr noundef %name68, ptr noundef %193) #9
  br label %cleanup

if.end123:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  %result = getelementptr inbounds %struct.nvkm_falcon_qmgr_seq, ptr %call45, i32 0, i32 6
  %194 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %result, align 4
  %196 = ptrtoint ptr %cmdq to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %cmdq, align 4
  call void @nvkm_falcon_qmgr_seq_release(ptr noundef %197, ptr noundef %call45) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end123, %do.end111, %do.body100.cleanup_crit_edge, %do.end87, %do.body76.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %if.then54, %if.then47, %do.end31, %do.body21.cleanup_crit_edge, %do.end, %do.body6.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %if.then47 ], [ %ret.0.i, %if.then54 ], [ -110, %do.body21.cleanup_crit_edge ], [ -110, %do.end31 ], [ -110, %do.body6.cleanup_crit_edge ], [ -110, %do.end ], [ -110, %do.body100.cleanup_crit_edge ], [ -110, %do.end111 ], [ -110, %do.body76.cleanup_crit_edge ], [ -110, %do.end87 ], [ 0, %if.end57.cleanup_crit_edge ], [ %195, %if.end123 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_falcon_qmgr_seq_acquire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_qmgr_seq_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nvkm_falcon_cmdq_fini(ptr nocapture noundef writeonly %cmdq) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ready = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %cmdq, i32 0, i32 3
  %0 = ptrtoint ptr %ready to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ready, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_cmdq_init(ptr noundef %cmdq, i32 noundef %index, i32 noundef %offset, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmdq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmdq, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cmdq2 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %cmdq2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmdq2, align 4
  %stride = getelementptr inbounds %struct.nvkm_falcon_func, ptr %5, i32 0, i32 18, i32 2
  %8 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stride, align 4
  %mul = mul i32 %9, %index
  %add = add i32 %mul, %7
  %head_reg = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %cmdq, i32 0, i32 4
  %10 = ptrtoint ptr %head_reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %head_reg, align 4
  %tail = getelementptr inbounds %struct.nvkm_falcon_func, ptr %5, i32 0, i32 18, i32 1
  %11 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tail, align 4
  %13 = load i32, ptr %stride, align 4
  %mul7 = mul i32 %13, %index
  %add8 = add i32 %mul7, %12
  %tail_reg = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %cmdq, i32 0, i32 5
  %14 = ptrtoint ptr %tail_reg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add8, ptr %tail_reg, align 4
  %offset9 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %cmdq, i32 0, i32 6
  %15 = ptrtoint ptr %offset9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %offset, ptr %offset9, align 4
  %size10 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %cmdq, i32 0, i32 7
  %16 = ptrtoint ptr %size10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %size, ptr %size10, align 4
  %ready = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %cmdq, i32 0, i32 3
  tail call void @complete_all(ptr noundef %ready) #6
  %17 = ptrtoint ptr %cmdq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmdq, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %owner = getelementptr inbounds %struct.nvkm_falcon, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %owner, align 4
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %22, i32 0, i32 4
  %name15 = getelementptr inbounds %struct.nvkm_falcon, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %name15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name15, align 4
  %cmp.not = icmp eq ptr %name, %24
  %debug38 = getelementptr inbounds %struct.nvkm_subdev, ptr %22, i32 0, i32 5
  %25 = ptrtoint ptr %debug38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %debug38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp39 = icmp ugt i32 %26, 3
  br i1 %cmp.not, label %do.body33, label %do.body16

do.body16:                                        ; preds = %entry
  br i1 %cmp39, label %do.end, label %do.body16.do.end56_crit_edge

do.body16.do.end56_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end56

do.end:                                           ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %22, i32 0, i32 1
  %27 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  %name28 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %cmdq, i32 0, i32 1
  %31 = ptrtoint ptr %name28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name28, align 4
  %33 = ptrtoint ptr %offset9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %offset9, align 4
  %35 = ptrtoint ptr %size10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size10, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.14, ptr noundef %name, ptr noundef %24, ptr noundef %32, i32 noundef %index, i32 noundef %34, i32 noundef %36) #9
  br label %do.end56

do.body33:                                        ; preds = %entry
  br i1 %cmp39, label %do.end43, label %do.body33.do.end56_crit_edge

do.body33.do.end56_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end56

do.end43:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  %device44 = getelementptr inbounds %struct.nvkm_subdev, ptr %22, i32 0, i32 1
  %37 = ptrtoint ptr %device44 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device44, align 4
  %dev45 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev45, align 8
  %name48 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %cmdq, i32 0, i32 1
  %41 = ptrtoint ptr %name48 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name48, align 4
  %43 = ptrtoint ptr %offset9 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %offset9, align 4
  %45 = ptrtoint ptr %size10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size10, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.18, ptr noundef %name, ptr noundef %42, i32 noundef %index, i32 noundef %44, i32 noundef %46) #9
  br label %do.end56

do.end56:                                         ; preds = %do.end43, %do.body33.do.end56_crit_edge, %do.end, %do.body16.do.end56_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_cmdq_del(ptr nocapture noundef %pcmdq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcmdq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcmdq, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %1) #6
  %2 = ptrtoint ptr %pcmdq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pcmdq, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_cmdq_new(ptr noundef %qmgr, ptr noundef %name, ptr nocapture noundef writeonly %pcmdq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 176) #10
  %1 = ptrtoint ptr %pcmdq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pcmdq, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %qmgr, ptr %call7.i.i, align 8
  %name2 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %name2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %name2, align 4
  %mutex = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.20, ptr noundef nonnull @nvkm_falcon_cmdq_new.__key) #6
  %ready = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %ready to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ready, align 4
  %wait.i = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %call7.i.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @init_completion.__key) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_load_dmem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !25, !26, !27, !29, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !45, !46, !47, !48, !50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/falcon/cmdq.c", i32 133, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvkm_falcon_cmdq_send._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvkm_falcon_cmdq_send._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @nvkm_falcon_cmdq_send._entry.5, !1, !"_entry", i1 false, i1 false}
!10 = !{ptr @nvkm_falcon_cmdq_send._entry_ptr.7, !1, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.9, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/nvkm/falcon/cmdq.c", i32 158, i32 4}
!13 = !{ptr @nvkm_falcon_cmdq_send._entry.8, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @nvkm_falcon_cmdq_send._entry_ptr.10, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.12, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @nvkm_falcon_cmdq_send._entry.11, !12, !"_entry", i1 false, i1 false}
!17 = !{ptr @nvkm_falcon_cmdq_send._entry_ptr.13, !12, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.14, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/falcon/cmdq.c", i32 186, i32 2}
!20 = !{ptr @.str.15, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.16, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @nvkm_falcon_cmdq_init._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @nvkm_falcon_cmdq_init._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.18, !19, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @nvkm_falcon_cmdq_init._entry.17, !19, !"_entry", i1 false, i1 false}
!26 = !{ptr @nvkm_falcon_cmdq_init._entry_ptr.19, !19, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @nvkm_falcon_cmdq_new.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nvkm/falcon/cmdq.c", i32 211, i32 2}
!29 = !{ptr @.str.20, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"timeout", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/falcon/cmdq.c", i32 102, i32 18}
!32 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/falcon/cmdq.c", i32 109, i32 3}
!34 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @nvkm_falcon_cmdq_write._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @nvkm_falcon_cmdq_write._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.24, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @nvkm_falcon_cmdq_write._entry.23, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @nvkm_falcon_cmdq_write._entry_ptr.25, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/falcon/cmdq.c", i32 79, i32 3}
!42 = !{ptr @.str.27, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @nvkm_falcon_cmdq_open._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @nvkm_falcon_cmdq_open._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.29, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @nvkm_falcon_cmdq_open._entry.28, !41, !"_entry", i1 false, i1 false}
!47 = !{ptr @nvkm_falcon_cmdq_open._entry_ptr.30, !41, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @init_completion.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../include/linux/completion.h", i32 87, i32 2}
!50 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 5396412}
!61 = !{i64 2156232212}
!62 = !{i64 2156232763}
!63 = !{i64 5395994}
!64 = !{i8 0, i8 2}
