; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/falcon/msgq.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/falcon/msgq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvkm_falcon_msgq = type { ptr, ptr, %struct.mutex, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvfw_falcon_msg = type { i8, i8, i8, i8 }
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
%struct.nvkm_falcon_qmgr = type { ptr, %struct.anon.141 }
%struct.anon.141 = type { %struct.mutex, [16 x %struct.nvkm_falcon_qmgr_seq], [1 x i32] }
%struct.nvkm_falcon_qmgr_seq = type { i16, i32, i8, ptr, ptr, %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nvkm_falcon_func = type { %struct.anon, %struct.anon.0, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.1, %struct.anon.1, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.anon.1 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }

@nvkm_falcon_msgq_recv_initmsg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 169, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: %s: unexpected init message size %d vs %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nvkm_falcon_msgq_recv_initmsg\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/nouveau/nvkm/falcon/msgq.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_falcon_msgq_recv_initmsg._entry_ptr = internal global ptr @nvkm_falcon_msgq_recv_initmsg._entry, section ".printk_index", align 4
@nvkm_falcon_msgq_recv_initmsg._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 169, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: unexpected init message size %d vs %d\0A\00", [53 x i8] zeroinitializer }, align 32
@nvkm_falcon_msgq_recv_initmsg._entry_ptr.7 = internal global ptr @nvkm_falcon_msgq_recv_initmsg._entry.5, section ".printk_index", align 4
@nvkm_falcon_msgq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 187, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: %s: %s: initialised @ index %d offset 0x%08x size 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvkm_falcon_msgq_init\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nvkm_falcon_msgq_init._entry_ptr = internal global ptr @nvkm_falcon_msgq_init._entry, section ".printk_index", align 4
@nvkm_falcon_msgq_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.2, i32 187, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: %s: initialised @ index %d offset 0x%08x size 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@nvkm_falcon_msgq_init._entry_ptr.13 = internal global ptr @nvkm_falcon_msgq_init._entry.11, section ".printk_index", align 4
@nvkm_falcon_msgq_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&msgq->mutex\00", [19 x i8] zeroinitializer }, align 32
@nvkm_falcon_msgq_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 88, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: %s: %s: failed to read message header\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvkm_falcon_msgq_read\00", [42 x i8] zeroinitializer }, align 32
@nvkm_falcon_msgq_read._entry_ptr = internal global ptr @nvkm_falcon_msgq_read._entry, section ".printk_index", align 4
@nvkm_falcon_msgq_read._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 88, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: %s: failed to read message header\0A\00", [57 x i8] zeroinitializer }, align 32
@nvkm_falcon_msgq_read._entry_ptr.19 = internal global ptr @nvkm_falcon_msgq_read._entry.17, section ".printk_index", align 4
@nvkm_falcon_msgq_read._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 93, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: %s: %s: message too big, %d bytes\0A\00", [57 x i8] zeroinitializer }, align 32
@nvkm_falcon_msgq_read._entry_ptr.22 = internal global ptr @nvkm_falcon_msgq_read._entry.20, section ".printk_index", align 4
@nvkm_falcon_msgq_read._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.2, i32 93, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: %s: message too big, %d bytes\0A\00", [61 x i8] zeroinitializer }, align 32
@nvkm_falcon_msgq_read._entry_ptr.25 = internal global ptr @nvkm_falcon_msgq_read._entry.23, section ".printk_index", align 4
@nvkm_falcon_msgq_read._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.2, i32 103, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: %s: %s: failed to read message data\0A\00", [55 x i8] zeroinitializer }, align 32
@nvkm_falcon_msgq_read._entry_ptr.28 = internal global ptr @nvkm_falcon_msgq_read._entry.26, section ".printk_index", align 4
@nvkm_falcon_msgq_read._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.16, ptr @.str.2, i32 103, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: %s: failed to read message data\0A\00", [59 x i8] zeroinitializer }, align 32
@nvkm_falcon_msgq_read._entry_ptr.31 = internal global ptr @nvkm_falcon_msgq_read._entry.29, section ".printk_index", align 4
@nvkm_falcon_msgq_exec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 121, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: %s: %s: message for unknown sequence %08x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvkm_falcon_msgq_exec\00", [42 x i8] zeroinitializer }, align 32
@nvkm_falcon_msgq_exec._entry_ptr = internal global ptr @nvkm_falcon_msgq_exec._entry, section ".printk_index", align 4
@nvkm_falcon_msgq_exec._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 121, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: %s: message for unknown sequence %08x\0A\00", [53 x i8] zeroinitializer }, align 32
@nvkm_falcon_msgq_exec._entry_ptr.36 = internal global ptr @nvkm_falcon_msgq_exec._entry.34, section ".printk_index", align 4
@nvkm_falcon_msgq_pop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 67, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: %s: %s: requested %d bytes, but only %d available\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvkm_falcon_msgq_pop\00", [43 x i8] zeroinitializer }, align 32
@nvkm_falcon_msgq_pop._entry_ptr = internal global ptr @nvkm_falcon_msgq_pop._entry, section ".printk_index", align 4
@nvkm_falcon_msgq_pop._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 67, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: %s: requested %d bytes, but only %d available\0A\00", [45 x i8] zeroinitializer }, align 32
@nvkm_falcon_msgq_pop._entry_ptr.41 = internal global ptr @nvkm_falcon_msgq_pop._entry.39, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 168, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 186, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 211, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 88, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 93, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 103, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 121, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private constant [46 x i8] c"../drivers/gpu/drm/nouveau/nvkm/falcon/msgq.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 66, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @nvkm_falcon_msgq_exec._entry, ptr @nvkm_falcon_msgq_exec._entry.34, ptr @nvkm_falcon_msgq_exec._entry_ptr, ptr @nvkm_falcon_msgq_exec._entry_ptr.36, ptr @nvkm_falcon_msgq_init._entry, ptr @nvkm_falcon_msgq_init._entry.11, ptr @nvkm_falcon_msgq_init._entry_ptr, ptr @nvkm_falcon_msgq_init._entry_ptr.13, ptr @nvkm_falcon_msgq_pop._entry, ptr @nvkm_falcon_msgq_pop._entry.39, ptr @nvkm_falcon_msgq_pop._entry_ptr, ptr @nvkm_falcon_msgq_pop._entry_ptr.41, ptr @nvkm_falcon_msgq_read._entry, ptr @nvkm_falcon_msgq_read._entry.17, ptr @nvkm_falcon_msgq_read._entry.20, ptr @nvkm_falcon_msgq_read._entry.23, ptr @nvkm_falcon_msgq_read._entry.26, ptr @nvkm_falcon_msgq_read._entry.29, ptr @nvkm_falcon_msgq_read._entry_ptr, ptr @nvkm_falcon_msgq_read._entry_ptr.19, ptr @nvkm_falcon_msgq_read._entry_ptr.22, ptr @nvkm_falcon_msgq_read._entry_ptr.25, ptr @nvkm_falcon_msgq_read._entry_ptr.28, ptr @nvkm_falcon_msgq_read._entry_ptr.31, ptr @nvkm_falcon_msgq_recv_initmsg._entry, ptr @nvkm_falcon_msgq_recv_initmsg._entry.5, ptr @nvkm_falcon_msgq_recv_initmsg._entry_ptr, ptr @nvkm_falcon_msgq_recv_initmsg._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @nvkm_falcon_msgq_new.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_msgq_recv_initmsg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_msgq_recv_initmsg._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_msgq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_msgq_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_msgq_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_msgq_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_msgq_read._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_msgq_read._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_msgq_read._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_msgq_read._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_msgq_read._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_msgq_exec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_msgq_exec._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_msgq_pop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_msgq_pop._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_msgq_recv(ptr noundef %msgq) local_unnamed_addr #0 align 64 {
entry:
  %msg_buffer = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %msg_buffer) #5
  %0 = call ptr @memset(ptr %msg_buffer, i32 255, i32 128)
  %mutex.i.i = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %msgq, i32 0, i32 2
  %tail_reg.i.i = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %msgq, i32 0, i32 4
  %position.i.i = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %msgq, i32 0, i32 6
  %head_reg.i.i = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %msgq, i32 0, i32 3
  %name19.i = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %msgq, i32 0, i32 1
  %size.i = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %msg_buffer, i32 0, i32 1
  %add.ptr.i = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %msg_buffer, i32 1
  %seq_id.i = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %msg_buffer, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #5
  %1 = ptrtoint ptr %msgq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %msgq, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %tail_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tail_reg.i.i, align 4
  %owner.i.i.i = getelementptr inbounds %struct.nvkm_falcon, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %owner.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %owner.i.i.i, align 4
  %device.i.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device.i.i.i, align 4
  %pri.i.i.i = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri.i.i.i, align 4
  %addr1.i.i.i = getelementptr inbounds %struct.nvkm_falcon, ptr %4, i32 0, i32 3
  %13 = ptrtoint ptr %addr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr1.i.i.i, align 4
  %add.i.i.i = add i32 %14, %6
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 %add.i.i.i
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %16 = ptrtoint ptr %position.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %position.i.i, align 4
  %17 = ptrtoint ptr %msgq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %msgq, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %21 = ptrtoint ptr %head_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %head_reg.i.i, align 4
  %owner.i.i236.i = getelementptr inbounds %struct.nvkm_falcon, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %owner.i.i236.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %owner.i.i236.i, align 4
  %device.i.i237.i = getelementptr inbounds %struct.nvkm_subdev, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %device.i.i237.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device.i.i237.i, align 4
  %pri.i.i238.i = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %pri.i.i238.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri.i.i238.i, align 4
  %addr1.i.i239.i = getelementptr inbounds %struct.nvkm_falcon, ptr %20, i32 0, i32 3
  %29 = ptrtoint ptr %addr1.i.i239.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr1.i.i239.i, align 4
  %add.i.i240.i = add i32 %30, %22
  %add.ptr.i.i241.i = getelementptr i8, ptr %28, i32 %add.i.i240.i
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i241.i) #5, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %32 = ptrtoint ptr %msgq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %msgq, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %36 = ptrtoint ptr %tail_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tail_reg.i.i, align 4
  %owner.i7.i.i = getelementptr inbounds %struct.nvkm_falcon, ptr %35, i32 0, i32 1
  %38 = ptrtoint ptr %owner.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %owner.i7.i.i, align 4
  %device.i8.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %device.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device.i8.i.i, align 4
  %pri.i9.i.i = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %pri.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri.i9.i.i, align 4
  %addr1.i10.i.i = getelementptr inbounds %struct.nvkm_falcon, ptr %35, i32 0, i32 3
  %44 = ptrtoint ptr %addr1.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addr1.i10.i.i, align 4
  %add.i11.i.i = add i32 %45, %37
  %add.ptr.i12.i.i = getelementptr i8, ptr %43, i32 %add.i11.i.i
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i.i) #5, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %46)
  %cmp.i.i = icmp eq i32 %31, %46
  br i1 %cmp.i.i, label %while.cond.nvkm_falcon_msgq_read.exit_crit_edge, label %if.end.i

while.cond.nvkm_falcon_msgq_read.exit_crit_edge:  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_falcon_msgq_read.exit

if.end.i:                                         ; preds = %while.cond
  %call1.i = call fastcc i32 @nvkm_falcon_msgq_pop(ptr noundef %msgq, ptr noundef nonnull %msg_buffer, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end45.i, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  %47 = ptrtoint ptr %msgq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %msgq, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %owner.i = getelementptr inbounds %struct.nvkm_falcon, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %owner.i, align 4
  %name.i = getelementptr inbounds %struct.nvkm_subdev, ptr %52, i32 0, i32 4
  %name5.i = getelementptr inbounds %struct.nvkm_falcon, ptr %50, i32 0, i32 2
  %53 = ptrtoint ptr %name5.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name5.i, align 4
  %cmp.not.i = icmp eq ptr %name.i, %54
  %debug28.i = getelementptr inbounds %struct.nvkm_subdev, ptr %52, i32 0, i32 5
  %55 = ptrtoint ptr %debug28.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %debug28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp29.not.i = icmp eq i32 %56, 0
  br i1 %cmp.not.i, label %do.body23.i, label %do.body7.i

do.body7.i:                                       ; preds = %do.body.i
  br i1 %cmp29.not.i, label %do.body7.i.close.i_crit_edge, label %do.end.i

do.body7.i.close.i_crit_edge:                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %close.i

do.end.i:                                         ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #7
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %52, i32 0, i32 1
  %57 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 8
  %61 = ptrtoint ptr %name19.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name19.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.15, ptr noundef %name.i, ptr noundef %54, ptr noundef %62) #8
  br label %close.i

do.body23.i:                                      ; preds = %do.body.i
  br i1 %cmp29.not.i, label %do.body23.i.close.i_crit_edge, label %do.end33.i

do.body23.i.close.i_crit_edge:                    ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %close.i

do.end33.i:                                       ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #7
  %device34.i = getelementptr inbounds %struct.nvkm_subdev, ptr %52, i32 0, i32 1
  %63 = ptrtoint ptr %device34.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device34.i, align 4
  %dev35.i = getelementptr inbounds %struct.nvkm_device, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %dev35.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev35.i, align 8
  %67 = ptrtoint ptr %name19.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %name19.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.18, ptr noundef %name.i, ptr noundef %68) #8
  br label %close.i

if.end45.i:                                       ; preds = %if.end.i
  %69 = ptrtoint ptr %size.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %size.i, align 1
  %conv.i = zext i8 %70 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %70)
  %cmp46.i = icmp ugt i8 %70, -128
  br i1 %cmp46.i, label %do.body49.i, label %if.end112.i

do.body49.i:                                      ; preds = %if.end45.i
  %conv.i.le = zext i8 %70 to i32
  %71 = ptrtoint ptr %msgq to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %msgq, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %owner52.i = getelementptr inbounds %struct.nvkm_falcon, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %owner52.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %owner52.i, align 4
  %name53.i = getelementptr inbounds %struct.nvkm_subdev, ptr %76, i32 0, i32 4
  %name57.i = getelementptr inbounds %struct.nvkm_falcon, ptr %74, i32 0, i32 2
  %77 = ptrtoint ptr %name57.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name57.i, align 4
  %cmp58.not.i = icmp eq ptr %name53.i, %78
  %debug92.i = getelementptr inbounds %struct.nvkm_subdev, ptr %76, i32 0, i32 5
  %79 = ptrtoint ptr %debug92.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %debug92.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp93.not.i = icmp eq i32 %80, 0
  br i1 %cmp58.not.i, label %do.body87.i, label %do.body61.i

do.body61.i:                                      ; preds = %do.body49.i
  br i1 %cmp93.not.i, label %do.body61.i.nvkm_falcon_msgq_read.exit.thread_crit_edge, label %do.end72.i

do.body61.i.nvkm_falcon_msgq_read.exit.thread_crit_edge: ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_falcon_msgq_read.exit.thread

do.end72.i:                                       ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #7
  %device73.i = getelementptr inbounds %struct.nvkm_subdev, ptr %76, i32 0, i32 1
  %81 = ptrtoint ptr %device73.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %device73.i, align 4
  %dev74.i = getelementptr inbounds %struct.nvkm_device, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %dev74.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev74.i, align 8
  %85 = ptrtoint ptr %name19.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %name19.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.21, ptr noundef %name53.i, ptr noundef %78, ptr noundef %86, i32 noundef %conv.i.le) #8
  br label %nvkm_falcon_msgq_read.exit.thread

do.body87.i:                                      ; preds = %do.body49.i
  br i1 %cmp93.not.i, label %do.body87.i.nvkm_falcon_msgq_read.exit.thread_crit_edge, label %do.end98.i

do.body87.i.nvkm_falcon_msgq_read.exit.thread_crit_edge: ; preds = %do.body87.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_falcon_msgq_read.exit.thread

do.end98.i:                                       ; preds = %do.body87.i
  call void @__sanitizer_cov_trace_pc() #7
  %device99.i = getelementptr inbounds %struct.nvkm_subdev, ptr %76, i32 0, i32 1
  %87 = ptrtoint ptr %device99.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %device99.i, align 4
  %dev100.i = getelementptr inbounds %struct.nvkm_device, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %dev100.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev100.i, align 8
  %91 = ptrtoint ptr %name19.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %name19.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.24, ptr noundef %name53.i, ptr noundef %92, i32 noundef %conv.i.le) #8
  br label %nvkm_falcon_msgq_read.exit.thread

if.end112.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %70)
  %cmp115.i = icmp ugt i8 %70, 4
  br i1 %cmp115.i, label %if.then117.i, label %if.end112.i.nvkm_falcon_msgq_read.exit_crit_edge

if.end112.i.nvkm_falcon_msgq_read.exit_crit_edge: ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_falcon_msgq_read.exit

if.then117.i:                                     ; preds = %if.end112.i
  %sub.i = add nsw i32 %conv.i, -4
  %call120.i = call fastcc i32 @nvkm_falcon_msgq_pop(ptr noundef %msgq, ptr noundef %add.ptr.i, i32 noundef %sub.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120.i)
  %tobool121.not.i = icmp eq i32 %call120.i, 0
  br i1 %tobool121.not.i, label %if.then117.i.nvkm_falcon_msgq_read.exit_crit_edge, label %do.body123.i

if.then117.i.nvkm_falcon_msgq_read.exit_crit_edge: ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_falcon_msgq_read.exit

do.body123.i:                                     ; preds = %if.then117.i
  %93 = ptrtoint ptr %msgq to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %msgq, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %owner126.i = getelementptr inbounds %struct.nvkm_falcon, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %owner126.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %owner126.i, align 4
  %name127.i = getelementptr inbounds %struct.nvkm_subdev, ptr %98, i32 0, i32 4
  %name131.i = getelementptr inbounds %struct.nvkm_falcon, ptr %96, i32 0, i32 2
  %99 = ptrtoint ptr %name131.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %name131.i, align 4
  %cmp132.not.i = icmp eq ptr %name127.i, %100
  %debug164.i = getelementptr inbounds %struct.nvkm_subdev, ptr %98, i32 0, i32 5
  %101 = ptrtoint ptr %debug164.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %debug164.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp165.not.i = icmp eq i32 %102, 0
  br i1 %cmp132.not.i, label %do.body159.i, label %do.body135.i

do.body135.i:                                     ; preds = %do.body123.i
  br i1 %cmp165.not.i, label %do.body135.i.close.i_crit_edge, label %do.end146.i

do.body135.i.close.i_crit_edge:                   ; preds = %do.body135.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %close.i

do.end146.i:                                      ; preds = %do.body135.i
  call void @__sanitizer_cov_trace_pc() #7
  %device147.i = getelementptr inbounds %struct.nvkm_subdev, ptr %98, i32 0, i32 1
  %103 = ptrtoint ptr %device147.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %device147.i, align 4
  %dev148.i = getelementptr inbounds %struct.nvkm_device, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %dev148.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev148.i, align 8
  %107 = ptrtoint ptr %name19.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %name19.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.27, ptr noundef %name127.i, ptr noundef %100, ptr noundef %108) #8
  br label %close.i

do.body159.i:                                     ; preds = %do.body123.i
  br i1 %cmp165.not.i, label %do.body159.i.close.i_crit_edge, label %do.end170.i

do.body159.i.close.i_crit_edge:                   ; preds = %do.body159.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %close.i

do.end170.i:                                      ; preds = %do.body159.i
  call void @__sanitizer_cov_trace_pc() #7
  %device171.i = getelementptr inbounds %struct.nvkm_subdev, ptr %98, i32 0, i32 1
  %109 = ptrtoint ptr %device171.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %device171.i, align 4
  %dev172.i = getelementptr inbounds %struct.nvkm_device, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %dev172.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev172.i, align 8
  %113 = ptrtoint ptr %name19.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %name19.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.30, ptr noundef %name127.i, ptr noundef %114) #8
  br label %close.i

close.i:                                          ; preds = %do.end170.i, %do.body159.i.close.i_crit_edge, %do.end146.i, %do.body135.i.close.i_crit_edge, %do.end33.i, %do.body23.i.close.i_crit_edge, %do.end.i, %do.body7.i.close.i_crit_edge
  %ret.0.i = phi i32 [ %call1.i, %do.end.i ], [ %call1.i, %do.body7.i.close.i_crit_edge ], [ %call1.i, %do.end33.i ], [ %call1.i, %do.body23.i.close.i_crit_edge ], [ %call120.i, %do.body159.i.close.i_crit_edge ], [ %call120.i, %do.end170.i ], [ %call120.i, %do.body135.i.close.i_crit_edge ], [ %call120.i, %do.end146.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0.i)
  %cmp184.i = icmp sgt i32 %ret.0.i, -1
  br i1 %cmp184.i, label %close.i.nvkm_falcon_msgq_read.exit_crit_edge, label %close.i.nvkm_falcon_msgq_read.exit.thread_crit_edge

close.i.nvkm_falcon_msgq_read.exit.thread_crit_edge: ; preds = %close.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_falcon_msgq_read.exit.thread

close.i.nvkm_falcon_msgq_read.exit_crit_edge:     ; preds = %close.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_falcon_msgq_read.exit

nvkm_falcon_msgq_read.exit.thread:                ; preds = %close.i.nvkm_falcon_msgq_read.exit.thread_crit_edge, %do.end98.i, %do.body87.i.nvkm_falcon_msgq_read.exit.thread_crit_edge, %do.end72.i, %do.body61.i.nvkm_falcon_msgq_read.exit.thread_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i.i) #5
  br label %while.end

nvkm_falcon_msgq_read.exit:                       ; preds = %close.i.nvkm_falcon_msgq_read.exit_crit_edge, %if.then117.i.nvkm_falcon_msgq_read.exit_crit_edge, %if.end112.i.nvkm_falcon_msgq_read.exit_crit_edge, %while.cond.nvkm_falcon_msgq_read.exit_crit_edge
  %115 = ptrtoint ptr %msgq to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %msgq, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %119 = ptrtoint ptr %tail_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %tail_reg.i.i, align 4
  %121 = ptrtoint ptr %position.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %position.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  call void @arm_heavy_mb() #5
  %owner.i.i245.i = getelementptr inbounds %struct.nvkm_falcon, ptr %118, i32 0, i32 1
  %123 = ptrtoint ptr %owner.i.i245.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %owner.i.i245.i, align 4
  %device.i.i246.i = getelementptr inbounds %struct.nvkm_subdev, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %device.i.i246.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %device.i.i246.i, align 4
  %pri.i.i247.i = getelementptr inbounds %struct.nvkm_device, ptr %126, i32 0, i32 11
  %127 = ptrtoint ptr %pri.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pri.i.i247.i, align 4
  %addr1.i.i248.i = getelementptr inbounds %struct.nvkm_falcon, ptr %118, i32 0, i32 3
  %129 = ptrtoint ptr %addr1.i.i248.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %addr1.i.i248.i, align 4
  %add.i.i249.i = add i32 %130, %120
  %add.ptr.i.i250.i = getelementptr i8, ptr %128, i32 %add.i.i249.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i250.i, i32 %122) #5, !srcloc !73
  call void @mutex_unlock(ptr noundef %mutex.i.i) #5
  br i1 %cmp.i.i, label %nvkm_falcon_msgq_read.exit.while.end_crit_edge, label %while.body

nvkm_falcon_msgq_read.exit.while.end_crit_edge:   ; preds = %nvkm_falcon_msgq_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %nvkm_falcon_msgq_read.exit
  %131 = ptrtoint ptr %msgq to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %msgq, align 4
  %133 = ptrtoint ptr %seq_id.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %seq_id.i, align 1
  %idxprom.i = zext i8 %134 to i32
  %arrayidx.i = getelementptr %struct.nvkm_falcon_qmgr, ptr %132, i32 0, i32 1, i32 1, i32 %idxprom.i
  %state.i = getelementptr %struct.nvkm_falcon_qmgr, ptr %132, i32 0, i32 1, i32 1, i32 %idxprom.i, i32 1
  %135 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %state.i, align 4
  %137 = and i32 %136, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %137)
  %switch.i = icmp eq i32 %137, 2
  br i1 %switch.i, label %if.end51.i, label %do.body.i6

do.body.i6:                                       ; preds = %while.body
  %138 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %132, align 4
  %owner.i4 = getelementptr inbounds %struct.nvkm_falcon, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %owner.i4 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %owner.i4, align 4
  %name.i5 = getelementptr inbounds %struct.nvkm_subdev, ptr %141, i32 0, i32 4
  %name7.i = getelementptr inbounds %struct.nvkm_falcon, ptr %139, i32 0, i32 2
  %142 = ptrtoint ptr %name7.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %name7.i, align 4
  %cmp8.not.i = icmp eq ptr %name.i5, %143
  %debug31.i = getelementptr inbounds %struct.nvkm_subdev, ptr %141, i32 0, i32 5
  %144 = ptrtoint ptr %debug31.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %debug31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp32.not.i = icmp eq i32 %145, 0
  br i1 %cmp8.not.i, label %do.body26.i, label %do.body10.i

do.body10.i:                                      ; preds = %do.body.i6
  br i1 %cmp32.not.i, label %do.body10.i.while.cond.backedge_crit_edge, label %do.end.i10

do.body10.i.while.cond.backedge_crit_edge:        ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end63.i, %if.then61.i, %do.end37.i, %do.body26.i.while.cond.backedge_crit_edge, %do.end.i10, %do.body10.i.while.cond.backedge_crit_edge
  br label %while.cond

do.end.i10:                                       ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #7
  %device.i7 = getelementptr inbounds %struct.nvkm_subdev, ptr %141, i32 0, i32 1
  %146 = ptrtoint ptr %device.i7 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %device.i7, align 4
  %dev.i8 = getelementptr inbounds %struct.nvkm_device, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %dev.i8 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev.i8, align 8
  %150 = ptrtoint ptr %name19.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %name19.i, align 4
  %152 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %arrayidx.i, align 4
  %conv.i9 = zext i16 %153 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.32, ptr noundef %name.i5, ptr noundef %143, ptr noundef %151, i32 noundef %conv.i9) #8
  br label %while.cond.backedge

do.body26.i:                                      ; preds = %do.body.i6
  br i1 %cmp32.not.i, label %do.body26.i.while.cond.backedge_crit_edge, label %do.end37.i

do.body26.i.while.cond.backedge_crit_edge:        ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

do.end37.i:                                       ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #7
  %device38.i = getelementptr inbounds %struct.nvkm_subdev, ptr %141, i32 0, i32 1
  %154 = ptrtoint ptr %device38.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %device38.i, align 4
  %dev39.i = getelementptr inbounds %struct.nvkm_device, ptr %155, i32 0, i32 2
  %156 = ptrtoint ptr %dev39.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev39.i, align 8
  %158 = ptrtoint ptr %name19.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %name19.i, align 4
  %160 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %arrayidx.i, align 4
  %conv44.i = zext i16 %161 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %157, ptr noundef nonnull @.str.35, ptr noundef %name.i5, ptr noundef %159, i32 noundef %conv44.i) #8
  br label %while.cond.backedge

if.end51.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %136)
  %cmp53.i = icmp eq i32 %136, 2
  br i1 %cmp53.i, label %if.then55.i, label %if.end51.i.if.end59.i_crit_edge

if.end51.i.if.end59.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.i

if.then55.i:                                      ; preds = %if.end51.i
  %callback.i = getelementptr %struct.nvkm_falcon_qmgr, ptr %132, i32 0, i32 1, i32 1, i32 %idxprom.i, i32 3
  %162 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %callback.i, align 4
  %tobool.not.i11 = icmp eq ptr %163, null
  br i1 %tobool.not.i11, label %if.then55.i.if.end59.i_crit_edge, label %if.then56.i

if.then55.i.if.end59.i_crit_edge:                 ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.i

if.then56.i:                                      ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #7
  %priv.i = getelementptr %struct.nvkm_falcon_qmgr, ptr %132, i32 0, i32 1, i32 1, i32 %idxprom.i, i32 4
  %164 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %priv.i, align 4
  %call.i = call i32 %163(ptr noundef %165, ptr noundef nonnull %msg_buffer) #5
  %result.i = getelementptr %struct.nvkm_falcon_qmgr, ptr %132, i32 0, i32 1, i32 1, i32 %idxprom.i, i32 6
  %166 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %call.i, ptr %result.i, align 4
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then56.i, %if.then55.i.if.end59.i_crit_edge, %if.end51.i.if.end59.i_crit_edge
  %async.i = getelementptr %struct.nvkm_falcon_qmgr, ptr %132, i32 0, i32 1, i32 1, i32 %idxprom.i, i32 2
  %167 = ptrtoint ptr %async.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %async.i, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool60.not.i = icmp eq i8 %168, 0
  br i1 %tobool60.not.i, label %if.end63.i, label %if.then61.i

if.then61.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #7
  %169 = ptrtoint ptr %msgq to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %msgq, align 4
  call void @nvkm_falcon_qmgr_seq_release(ptr noundef %170, ptr noundef %arrayidx.i) #5
  br label %while.cond.backedge

if.end63.i:                                       ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #7
  %done.i = getelementptr %struct.nvkm_falcon_qmgr, ptr %132, i32 0, i32 1, i32 1, i32 %idxprom.i, i32 5
  call void @complete_all(ptr noundef %done.i) #5
  br label %while.cond.backedge

while.end:                                        ; preds = %nvkm_falcon_msgq_read.exit.while.end_crit_edge, %nvkm_falcon_msgq_read.exit.thread
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %msg_buffer) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_msgq_recv_initmsg(ptr noundef %msgq, ptr noundef %data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msgq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msgq, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %msgq2 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %msgq2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msgq2, align 4
  %head_reg = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %msgq, i32 0, i32 3
  %8 = ptrtoint ptr %head_reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %head_reg, align 4
  %9 = load ptr, ptr %3, align 4
  %tail = getelementptr inbounds %struct.nvkm_falcon_func, ptr %9, i32 0, i32 19, i32 1
  %10 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tail, align 4
  %tail_reg = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %msgq, i32 0, i32 4
  %12 = ptrtoint ptr %tail_reg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tail_reg, align 4
  %13 = load ptr, ptr %3, align 4
  %tail7 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %13, i32 0, i32 19, i32 1
  %14 = ptrtoint ptr %tail7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tail7, align 4
  %owner.i = getelementptr inbounds %struct.nvkm_falcon, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %owner.i, align 4
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri.i, align 4
  %addr1.i = getelementptr inbounds %struct.nvkm_falcon, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr1.i, align 4
  %add.i = add i32 %23, %15
  %add.ptr.i = getelementptr i8, ptr %21, i32 %add.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %offset = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %msgq, i32 0, i32 5
  %25 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %offset, align 4
  %mutex.i = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %msgq, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %26 = ptrtoint ptr %msgq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %msgq, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %30 = ptrtoint ptr %tail_reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tail_reg, align 4
  %owner.i.i = getelementptr inbounds %struct.nvkm_falcon, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %owner.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device.i.i, align 4
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pri.i.i, align 4
  %addr1.i.i = getelementptr inbounds %struct.nvkm_falcon, ptr %29, i32 0, i32 3
  %38 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr1.i.i, align 4
  %add.i.i = add i32 %39, %31
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 %add.i.i
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %position.i = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %msgq, i32 0, i32 6
  %41 = ptrtoint ptr %position.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %position.i, align 4
  %call8 = tail call fastcc i32 @nvkm_falcon_msgq_pop(ptr noundef %msgq, ptr noundef %data, i32 noundef %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %land.lhs.true, label %entry.nvkm_falcon_msgq_close.exit_crit_edge

entry.nvkm_falcon_msgq_close.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_falcon_msgq_close.exit

land.lhs.true:                                    ; preds = %entry
  %size9 = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %data, i32 0, i32 1
  %42 = ptrtoint ptr %size9 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %size9, align 1
  %conv = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %size)
  %cmp10.not = icmp eq i32 %conv, %size
  br i1 %cmp10.not, label %if.then.i, label %do.body

do.body:                                          ; preds = %land.lhs.true
  %44 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %owner.i, align 4
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %45, i32 0, i32 4
  %name12 = getelementptr inbounds %struct.nvkm_falcon, ptr %3, i32 0, i32 2
  %46 = ptrtoint ptr %name12 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name12, align 4
  %cmp13.not = icmp eq ptr %name, %47
  %debug32 = getelementptr inbounds %struct.nvkm_subdev, ptr %45, i32 0, i32 5
  %48 = ptrtoint ptr %debug32 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %debug32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp33.not = icmp eq i32 %49, 0
  br i1 %cmp13.not, label %do.body29, label %do.body16

do.body16:                                        ; preds = %do.body
  br i1 %cmp33.not, label %do.body16.nvkm_falcon_msgq_close.exit_crit_edge, label %do.end

do.body16.nvkm_falcon_msgq_close.exit_crit_edge:  ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_falcon_msgq_close.exit

do.end:                                           ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %45, i32 0, i32 1
  %50 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str, ptr noundef %name, ptr noundef %47, i32 noundef %conv, i32 noundef %size) #8
  br label %nvkm_falcon_msgq_close.exit

do.body29:                                        ; preds = %do.body
  br i1 %cmp33.not, label %do.body29.nvkm_falcon_msgq_close.exit_crit_edge, label %do.end38

do.body29.nvkm_falcon_msgq_close.exit_crit_edge:  ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_falcon_msgq_close.exit

do.end38:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  %device39 = getelementptr inbounds %struct.nvkm_subdev, ptr %45, i32 0, i32 1
  %54 = ptrtoint ptr %device39 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device39, align 4
  %dev40 = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev40, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %conv, i32 noundef %size) #8
  br label %nvkm_falcon_msgq_close.exit

if.then.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %msgq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %msgq, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %62 = ptrtoint ptr %tail_reg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tail_reg, align 4
  %64 = ptrtoint ptr %position.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %position.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %owner.i.i82 = getelementptr inbounds %struct.nvkm_falcon, ptr %61, i32 0, i32 1
  %66 = ptrtoint ptr %owner.i.i82 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %owner.i.i82, align 4
  %device.i.i83 = getelementptr inbounds %struct.nvkm_subdev, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %device.i.i83 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %device.i.i83, align 4
  %pri.i.i84 = getelementptr inbounds %struct.nvkm_device, ptr %69, i32 0, i32 11
  %70 = ptrtoint ptr %pri.i.i84 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pri.i.i84, align 4
  %addr1.i.i85 = getelementptr inbounds %struct.nvkm_falcon, ptr %61, i32 0, i32 3
  %72 = ptrtoint ptr %addr1.i.i85 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %addr1.i.i85, align 4
  %add.i.i86 = add i32 %73, %63
  %add.ptr.i.i87 = getelementptr i8, ptr %71, i32 %add.i.i86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i87, i32 %65) #5, !srcloc !73
  br label %nvkm_falcon_msgq_close.exit

nvkm_falcon_msgq_close.exit:                      ; preds = %if.then.i, %do.end38, %do.body29.nvkm_falcon_msgq_close.exit_crit_edge, %do.end, %do.body16.nvkm_falcon_msgq_close.exit_crit_edge, %entry.nvkm_falcon_msgq_close.exit_crit_edge
  %ret.091 = phi i32 [ 0, %if.then.i ], [ -22, %do.end ], [ -22, %do.body16.nvkm_falcon_msgq_close.exit_crit_edge ], [ -22, %do.end38 ], [ -22, %do.body29.nvkm_falcon_msgq_close.exit_crit_edge ], [ %call8, %entry.nvkm_falcon_msgq_close.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  ret i32 %ret.091
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvkm_falcon_msgq_pop(ptr nocapture noundef %msgq, ptr noundef %data, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msgq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msgq, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %head_reg = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %msgq, i32 0, i32 3
  %4 = ptrtoint ptr %head_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head_reg, align 4
  %owner.i = getelementptr inbounds %struct.nvkm_falcon, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owner.i, align 4
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri.i, align 4
  %addr1.i = getelementptr inbounds %struct.nvkm_falcon, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr1.i, align 4
  %add.i = add i32 %13, %5
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %position = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %msgq, i32 0, i32 6
  %15 = ptrtoint ptr %position to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %position, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp = icmp ult i32 %14, %16
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %offset = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %msgq, i32 0, i32 5
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset, align 4
  %19 = ptrtoint ptr %position to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %position, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %position to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %position, align 4
  %sub = sub i32 %14, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %size)
  %cmp4 = icmp ult i32 %sub, %size
  br i1 %cmp4, label %do.body, label %if.end51

do.body:                                          ; preds = %if.end
  %22 = ptrtoint ptr %msgq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %msgq, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %owner = getelementptr inbounds %struct.nvkm_falcon, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %owner, align 4
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %27, i32 0, i32 4
  %name10 = getelementptr inbounds %struct.nvkm_falcon, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name10, align 4
  %cmp11.not = icmp eq ptr %name, %29
  %debug34 = getelementptr inbounds %struct.nvkm_subdev, ptr %27, i32 0, i32 5
  %30 = ptrtoint ptr %debug34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp35.not = icmp eq i32 %31, 0
  br i1 %cmp11.not, label %do.body29, label %do.body13

do.body13:                                        ; preds = %do.body
  br i1 %cmp35.not, label %do.body13.cleanup_crit_edge, label %do.end

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 8
  %name25 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %msgq, i32 0, i32 1
  %36 = ptrtoint ptr %name25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.37, ptr noundef %name, ptr noundef %29, ptr noundef %37, i32 noundef %size, i32 noundef %sub) #8
  br label %cleanup

do.body29:                                        ; preds = %do.body
  br i1 %cmp35.not, label %do.body29.cleanup_crit_edge, label %do.end39

do.body29.cleanup_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end39:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  %device40 = getelementptr inbounds %struct.nvkm_subdev, ptr %27, i32 0, i32 1
  %38 = ptrtoint ptr %device40 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device40, align 4
  %dev41 = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev41, align 8
  %name44 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %msgq, i32 0, i32 1
  %42 = ptrtoint ptr %name44 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.40, ptr noundef %name, ptr noundef %43, i32 noundef %size, i32 noundef %sub) #8
  br label %cleanup

if.end51:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nvkm_falcon_read_dmem(ptr noundef %3, i32 noundef %21, i32 noundef %size, i8 noundef zeroext 0, ptr noundef %data) #5
  %add = add i32 %size, 3
  %and = and i32 %add, -4
  %44 = ptrtoint ptr %position to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %position, align 4
  %add53 = add i32 %45, %and
  store i32 %add53, ptr %position, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %do.end39, %do.body29.cleanup_crit_edge, %do.end, %do.body13.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end51 ], [ -22, %do.body29.cleanup_crit_edge ], [ -22, %do.end39 ], [ -22, %do.body13.cleanup_crit_edge ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_msgq_init(ptr nocapture noundef %msgq, i32 noundef %index, i32 noundef %offset, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msgq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msgq, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %msgq2 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %msgq2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msgq2, align 4
  %stride = getelementptr inbounds %struct.nvkm_falcon_func, ptr %5, i32 0, i32 19, i32 2
  %8 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stride, align 4
  %mul = mul i32 %9, %index
  %add = add i32 %mul, %7
  %head_reg = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %msgq, i32 0, i32 3
  %10 = ptrtoint ptr %head_reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %head_reg, align 4
  %tail = getelementptr inbounds %struct.nvkm_falcon_func, ptr %5, i32 0, i32 19, i32 1
  %11 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tail, align 4
  %13 = load i32, ptr %stride, align 4
  %mul7 = mul i32 %13, %index
  %add8 = add i32 %mul7, %12
  %tail_reg = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %msgq, i32 0, i32 4
  %14 = ptrtoint ptr %tail_reg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add8, ptr %tail_reg, align 4
  %offset9 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %msgq, i32 0, i32 5
  %15 = ptrtoint ptr %offset9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %offset, ptr %offset9, align 4
  %16 = load ptr, ptr %1, align 4
  %owner = getelementptr inbounds %struct.nvkm_falcon, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %owner, align 4
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %18, i32 0, i32 4
  %name14 = getelementptr inbounds %struct.nvkm_falcon, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %name14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name14, align 4
  %cmp.not = icmp eq ptr %name, %20
  %debug36 = getelementptr inbounds %struct.nvkm_subdev, ptr %18, i32 0, i32 5
  %21 = ptrtoint ptr %debug36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %debug36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp37 = icmp ugt i32 %22, 3
  br i1 %cmp.not, label %do.body31, label %do.body15

do.body15:                                        ; preds = %entry
  br i1 %cmp37, label %do.end, label %do.body15.do.end53_crit_edge

do.body15.do.end53_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end53

do.end:                                           ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 8
  %name27 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %msgq, i32 0, i32 1
  %27 = ptrtoint ptr %name27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name27, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.8, ptr noundef %name, ptr noundef %20, ptr noundef %28, i32 noundef %index, i32 noundef %offset, i32 noundef %size) #8
  br label %do.end53

do.body31:                                        ; preds = %entry
  br i1 %cmp37, label %do.end41, label %do.body31.do.end53_crit_edge

do.body31.do.end53_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end53

do.end41:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #7
  %device42 = getelementptr inbounds %struct.nvkm_subdev, ptr %18, i32 0, i32 1
  %29 = ptrtoint ptr %device42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device42, align 4
  %dev43 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev43, align 8
  %name46 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %msgq, i32 0, i32 1
  %33 = ptrtoint ptr %name46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name46, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.12, ptr noundef %name, ptr noundef %34, i32 noundef %index, i32 noundef %offset, i32 noundef %size) #8
  br label %do.end53

do.end53:                                         ; preds = %do.end41, %do.body31.do.end53_crit_edge, %do.end, %do.body15.do.end53_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_msgq_del(ptr nocapture noundef %pmsgq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pmsgq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmsgq, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %1) #5
  %2 = ptrtoint ptr %pmsgq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pmsgq, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_msgq_new(ptr noundef %qmgr, ptr noundef %name, ptr nocapture noundef writeonly %pmsgq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 116) #9
  %1 = ptrtoint ptr %pmsgq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pmsgq, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %qmgr, ptr %call7.i.i, align 8
  %name2 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %name2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %name2, align 4
  %mutex = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.14, ptr noundef nonnull @nvkm_falcon_msgq_new.__key) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_qmgr_seq_release(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_read_dmem(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !20, !22, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !40, !41, !42, !43, !44, !45, !47, !48, !49, !50, !51, !52, !53, !55, !56, !57, !58, !59, !60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/falcon/msgq.c", i32 168, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvkm_falcon_msgq_recv_initmsg._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvkm_falcon_msgq_recv_initmsg._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @nvkm_falcon_msgq_recv_initmsg._entry.5, !1, !"_entry", i1 false, i1 false}
!10 = !{ptr @nvkm_falcon_msgq_recv_initmsg._entry_ptr.7, !1, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/nvkm/falcon/msgq.c", i32 186, i32 2}
!13 = !{ptr @.str.9, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.10, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @nvkm_falcon_msgq_init._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @nvkm_falcon_msgq_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.12, !12, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @nvkm_falcon_msgq_init._entry.11, !12, !"_entry", i1 false, i1 false}
!19 = !{ptr @nvkm_falcon_msgq_init._entry_ptr.13, !12, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @nvkm_falcon_msgq_new.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/falcon/msgq.c", i32 211, i32 2}
!22 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/nvkm/falcon/msgq.c", i32 88, i32 3}
!25 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @nvkm_falcon_msgq_read._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @nvkm_falcon_msgq_read._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.18, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @nvkm_falcon_msgq_read._entry.17, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @nvkm_falcon_msgq_read._entry_ptr.19, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/nvkm/falcon/msgq.c", i32 93, i32 3}
!33 = !{ptr @nvkm_falcon_msgq_read._entry.20, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @nvkm_falcon_msgq_read._entry_ptr.22, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.24, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @nvkm_falcon_msgq_read._entry.23, !32, !"_entry", i1 false, i1 false}
!37 = !{ptr @nvkm_falcon_msgq_read._entry_ptr.25, !32, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.27, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/falcon/msgq.c", i32 103, i32 4}
!40 = !{ptr @nvkm_falcon_msgq_read._entry.26, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @nvkm_falcon_msgq_read._entry_ptr.28, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.30, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @nvkm_falcon_msgq_read._entry.29, !39, !"_entry", i1 false, i1 false}
!44 = !{ptr @nvkm_falcon_msgq_read._entry_ptr.31, !39, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.32, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/nouveau/nvkm/falcon/msgq.c", i32 121, i32 3}
!47 = !{ptr @.str.33, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @nvkm_falcon_msgq_exec._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @nvkm_falcon_msgq_exec._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.35, !46, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @nvkm_falcon_msgq_exec._entry.34, !46, !"_entry", i1 false, i1 false}
!52 = !{ptr @nvkm_falcon_msgq_exec._entry_ptr.36, !46, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.37, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/nouveau/nvkm/falcon/msgq.c", i32 66, i32 3}
!55 = !{ptr @.str.38, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @nvkm_falcon_msgq_pop._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @nvkm_falcon_msgq_pop._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.40, !54, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @nvkm_falcon_msgq_pop._entry.39, !54, !"_entry", i1 false, i1 false}
!60 = !{ptr @nvkm_falcon_msgq_pop._entry_ptr.41, !54, !"_entry_ptr", i1 false, i1 false}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i64 5396359}
!71 = !{i64 2156232159}
!72 = !{i64 2156232710}
!73 = !{i64 5395941}
!74 = !{i8 0, i8 2}
