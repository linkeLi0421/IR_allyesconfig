; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_i2c_drv = type { i8, i8, ptr }
%struct.nvkm_event_func = type { ptr, ptr, ptr, ptr }
%struct.nvkm_i2c = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dcb_i2c_entry = type { i32, i8, i8, i8, i8 }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.140, i8 }
%union.anon.140 = type { %struct.anon.144 }
%struct.anon.144 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.nvkm_i2c_func = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.nvkm_i2c_pad_func = type { ptr, ptr, ptr, ptr }
%struct.nvkm_i2c_ntfy_rep = type { i8 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nvkm_i2c_ntfy_req = type { i8, i8 }

@nvkm_i2c = internal constant { %struct.nvkm_subdev_func, [36 x i8] } { %struct.nvkm_subdev_func { ptr @nvkm_i2c_dtor, ptr @nvkm_i2c_preinit, ptr null, ptr null, ptr @nvkm_i2c_init, ptr @nvkm_i2c_fini, ptr @nvkm_i2c_intr }, [36 x i8] zeroinitializer }, align 32
@nvkm_i2c_new_._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 306, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s: ccb %02x: type %02x drive %02x sense %02x share %02x auxch %02x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nvkm_i2c_new_\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/i2c/base.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_i2c_new_._entry_ptr = internal global ptr @nvkm_i2c_new_._entry, section ".printk_index", align 4
@nvkm_i2c_new_._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 319, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: ccb %02x pad, %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nvkm_i2c_new_._entry_ptr.8 = internal global ptr @nvkm_i2c_new_._entry.5, section ".printk_index", align 4
@nvkm_i2c_new_._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 339, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: ccb %02x bus, %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nvkm_i2c_new_._entry_ptr.11 = internal global ptr @nvkm_i2c_new_._entry.9, section ".printk_index", align 4
@nvkm_i2c_new_._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 354, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: ccb %02x aux, %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nvkm_i2c_new_._entry_ptr.14 = internal global ptr @nvkm_i2c_new_._entry.12, section ".printk_index", align 4
@nvkm_i2c_new_._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 359, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: ccb %02x was ignored\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@nvkm_i2c_new_._entry_ptr.18 = internal global ptr @nvkm_i2c_new_._entry.15, section ".printk_index", align 4
@nvkm_i2c_drv = internal constant { [3 x %struct.nvkm_i2c_drv], [40 x i8] } { [3 x %struct.nvkm_i2c_drv] [%struct.nvkm_i2c_drv { i8 13, i8 57, ptr @anx9805_pad_new }, %struct.nvkm_i2c_drv { i8 14, i8 59, ptr @anx9805_pad_new }, %struct.nvkm_i2c_drv zeroinitializer], [40 x i8] zeroinitializer }, align 32
@nvkm_i2c_new_._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 377, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: dcb %02x no bus\0A\00", [43 x i8] zeroinitializer }, align 32
@nvkm_i2c_new_._entry_ptr.21 = internal global ptr @nvkm_i2c_new_._entry.19, section ".printk_index", align 4
@nvkm_i2c_new_._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 390, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: dcb %02x drv %02x unknown\0A\00", [33 x i8] zeroinitializer }, align 32
@nvkm_i2c_new_._entry_ptr.24 = internal global ptr @nvkm_i2c_new_._entry.22, section ".printk_index", align 4
@nvkm_i2c_new_._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.1, ptr @.str.2, i32 401, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: dcb %02x pad, %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nvkm_i2c_new_._entry_ptr.27 = internal global ptr @nvkm_i2c_new_._entry.25, section ".printk_index", align 4
@nvkm_i2c_new_._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.1, ptr @.str.2, i32 414, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: dcb %02x aux, %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nvkm_i2c_new_._entry_ptr.30 = internal global ptr @nvkm_i2c_new_._entry.28, section ".printk_index", align 4
@nvkm_i2c_new_._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.1, ptr @.str.2, i32 424, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: dcb %02x bus, %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nvkm_i2c_new_._entry_ptr.33 = internal global ptr @nvkm_i2c_new_._entry.31, section ".printk_index", align 4
@nvkm_i2c_intr_func = internal constant { %struct.nvkm_event_func, [16 x i8] } { %struct.nvkm_event_func { ptr @nvkm_i2c_intr_ctor, ptr null, ptr @nvkm_i2c_intr_init, ptr @nvkm_i2c_intr_fini }, [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 128]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 128]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 8, i64 13, i64 14]
@___asan_gen_.36 = private unnamed_addr constant [9 x i8] c"nvkm_i2c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 258, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 304, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 319, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 339, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 354, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 359, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant [13 x i8] c"nvkm_i2c_drv\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 272, i32 1 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 377, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 389, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 400, i32 5 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 413, i32 5 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 423, i32 5 }
@___asan_gen_.120 = private unnamed_addr constant [19 x i8] c"nvkm_i2c_intr_func\00", align 1
@___asan_gen_.121 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/base.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 122, i32 1 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @nvkm_i2c_new_._entry, ptr @nvkm_i2c_new_._entry.12, ptr @nvkm_i2c_new_._entry.15, ptr @nvkm_i2c_new_._entry.19, ptr @nvkm_i2c_new_._entry.22, ptr @nvkm_i2c_new_._entry.25, ptr @nvkm_i2c_new_._entry.28, ptr @nvkm_i2c_new_._entry.31, ptr @nvkm_i2c_new_._entry.5, ptr @nvkm_i2c_new_._entry.9, ptr @nvkm_i2c_new_._entry_ptr, ptr @nvkm_i2c_new_._entry_ptr.11, ptr @nvkm_i2c_new_._entry_ptr.14, ptr @nvkm_i2c_new_._entry_ptr.18, ptr @nvkm_i2c_new_._entry_ptr.21, ptr @nvkm_i2c_new_._entry_ptr.24, ptr @nvkm_i2c_new_._entry_ptr.27, ptr @nvkm_i2c_new_._entry_ptr.30, ptr @nvkm_i2c_new_._entry_ptr.33, ptr @nvkm_i2c_new_._entry_ptr.8, ptr @nvkm_i2c, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @nvkm_i2c_drv, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @nvkm_i2c_intr_func], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_new_._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_new_._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_new_._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_new_._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_new_._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_drv to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_new_._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_new_._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_new_._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_new_._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_new_._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_intr_func to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvkm_i2c_bus_find(ptr noundef readonly %i2c, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  %ver = alloca i8, align 1
  %hdr = alloca i8, align 1
  %cnt = alloca i8, align 1
  %len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_i2c, ptr %i2c, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %bios1 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %id)
  %cmp = icmp eq i32 %id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %id)
  %switch = icmp ugt i32 %id, -3
  br i1 %switch, label %if.then, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #6
  %4 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %ver, align 1, !annotation !61
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr) #6
  %5 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %hdr, align 1, !annotation !61
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt) #6
  %6 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %cnt, align 1, !annotation !61
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %len, align 1, !annotation !61
  %call = call zeroext i16 @dcb_i2c_table(ptr noundef %3, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt, ptr noundef nonnull %len) #6
  %conv = zext i16 %call to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %if.then.if.end18_crit_edge, label %land.lhs.true

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.lhs.true:                                    ; preds = %if.then
  %8 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %9)
  %cmp5 = icmp ugt i8 %9, 47
  br i1 %cmp5, label %if.then7, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %add = add nuw nsw i32 %conv, 4
  %call9 = call zeroext i8 @nvbios_rd08(ptr noundef %3, i32 noundef %add) #6
  %10 = and i8 %call9, 15
  %11 = lshr i8 %call9, 4
  %id.addr.0.in = select i1 %cmp, i8 %10, i8 %11
  %id.addr.0 = zext i8 %id.addr.0.in to i32
  br label %if.end18

if.end18:                                         ; preds = %if.then7, %land.lhs.true.if.end18_crit_edge, %if.then.if.end18_crit_edge
  %id.addr.1 = phi i32 [ %id.addr.0, %if.then7 ], [ 2, %land.lhs.true.if.end18_crit_edge ], [ 2, %if.then.if.end18_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #6
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %entry.if.end19_crit_edge
  %id.addr.2 = phi i32 [ %id.addr.1, %if.end18 ], [ %id, %entry.if.end19_crit_edge ]
  %bus20 = getelementptr inbounds %struct.nvkm_i2c, ptr %i2c, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end19
  %.pn.in = phi ptr [ %bus20, %if.end19 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %12 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp22.not = icmp eq ptr %.pn, %bus20
  br i1 %cmp22.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %id24 = getelementptr i8, ptr %.pn, i32 -96
  %13 = ptrtoint ptr %id24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id24, align 8
  %cmp25 = icmp eq i32 %14, %id.addr.2
  br i1 %cmp25, label %cleanup.split.loop.exit46, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

cleanup.split.loop.exit46:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %bus.0.le = getelementptr i8, ptr %.pn, i32 -104
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit46, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %bus.0.le, %cleanup.split.loop.exit46 ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dcb_i2c_table(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvkm_i2c_aux_find(ptr noundef readonly %i2c, i32 noundef %id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %aux1 = getelementptr inbounds %struct.nvkm_i2c, ptr %i2c, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %aux1, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %aux1
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %id3 = getelementptr i8, ptr %.pn, i32 -96
  %1 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id3, align 8
  %cmp4 = icmp eq i32 %2, %id
  br i1 %cmp4, label %cleanup.split.loop.exit14, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

cleanup.split.loop.exit14:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %aux.0.le = getelementptr i8, ptr %.pn, i32 -104
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit14, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %aux.0.le, %cleanup.split.loop.exit14 ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_i2c_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pi2c) local_unnamed_addr #0 align 64 {
entry:
  %ccbE = alloca %struct.dcb_i2c_entry, align 8
  %dcbE = alloca %struct.dcb_output, align 4
  %ver = alloca i8, align 1
  %hdr = alloca i8, align 1
  %pad5 = alloca ptr, align 4
  %bus6 = alloca ptr, align 4
  %aux7 = alloca ptr, align 4
  %pad190 = alloca ptr, align 4
  %aux298 = alloca ptr, align 4
  %bus331 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bios1 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 21
  %0 = ptrtoint ptr %bios1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bios1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ccbE) #6
  %2 = getelementptr inbounds %struct.dcb_i2c_entry, ptr %ccbE, i32 0, i32 1
  %3 = getelementptr inbounds %struct.dcb_i2c_entry, ptr %ccbE, i32 0, i32 2
  %4 = getelementptr inbounds %struct.dcb_i2c_entry, ptr %ccbE, i32 0, i32 3
  %5 = getelementptr inbounds %struct.dcb_i2c_entry, ptr %ccbE, i32 0, i32 4
  %6 = ptrtoint ptr %ccbE to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %ccbE, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %dcbE) #6
  %7 = call ptr @memset(ptr %dcbE, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #6
  %8 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %ver, align 1, !annotation !61
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr) #6
  %9 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %hdr, align 1, !annotation !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 192) #9
  %11 = ptrtoint ptr %pi2c to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %pi2c, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup364_crit_edge, label %if.end

entry.cleanup364_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup364

if.end:                                           ; preds = %entry
  %subdev = getelementptr inbounds %struct.nvkm_i2c, ptr %call7.i.i, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_i2c, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %subdev) #6
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %func, ptr %call7.i.i, align 8
  %pad = getelementptr inbounds %struct.nvkm_i2c, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %pad, ptr %pad, align 8
  %prev.i = getelementptr inbounds %struct.nvkm_i2c, ptr %call7.i.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pad, ptr %prev.i, align 4
  %bus = getelementptr inbounds %struct.nvkm_i2c, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %bus, ptr %bus, align 8
  %prev.i452 = getelementptr inbounds %struct.nvkm_i2c, ptr %call7.i.i, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %prev.i452 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %bus, ptr %prev.i452, align 4
  %aux = getelementptr inbounds %struct.nvkm_i2c, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %aux to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %aux, ptr %aux, align 8
  %prev.i453 = getelementptr inbounds %struct.nvkm_i2c, ptr %call7.i.i, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %prev.i453 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %aux, ptr %prev.i453, align 4
  %call3489 = call i32 @dcb_i2c_parse(ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %ccbE) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3489)
  %tobool4.not490 = icmp eq i32 %call3489, 0
  br i1 %tobool4.not490, label %while.body.lr.ph, label %if.end.while.cond183.preheader_crit_edge

if.end.while.cond183.preheader_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond183.preheader

while.body.lr.ph:                                 ; preds = %if.end
  %debug = getelementptr inbounds %struct.nvkm_i2c, ptr %call7.i.i, i32 0, i32 1, i32 5
  %device12 = getelementptr inbounds %struct.nvkm_i2c, ptr %call7.i.i, i32 0, i32 1, i32 1
  %name = getelementptr inbounds %struct.nvkm_i2c, ptr %call7.i.i, i32 0, i32 1, i32 4
  %pad_s_new = getelementptr inbounds %struct.nvkm_i2c_func, ptr %func, i32 0, i32 1
  br label %while.body

while.cond183.preheader:                          ; preds = %cleanup.while.cond183.preheader_crit_edge, %if.end.while.cond183.preheader_crit_edge
  %call186494 = call zeroext i16 @dcb_outp_parse(ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %dcbE) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call186494)
  %tobool187.not495 = icmp eq i16 %call186494, 0
  br i1 %tobool187.not495, label %while.cond183.preheader.while.end362_crit_edge, label %while.body188.lr.ph

while.cond183.preheader.while.end362_crit_edge:   ; preds = %while.cond183.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end362

while.body188.lr.ph:                              ; preds = %while.cond183.preheader
  %location = getelementptr inbounds %struct.dcb_output, ptr %dcbE, i32 0, i32 8
  %i2c_index = getelementptr inbounds %struct.dcb_output, ptr %dcbE, i32 0, i32 4
  %device.i = getelementptr inbounds %struct.nvkm_i2c, ptr %call7.i.i, i32 0, i32 1, i32 1
  %extdev = getelementptr inbounds %struct.dcb_output, ptr %dcbE, i32 0, i32 12
  %debug233 = getelementptr inbounds %struct.nvkm_i2c, ptr %call7.i.i, i32 0, i32 1, i32 5
  %name242 = getelementptr inbounds %struct.nvkm_i2c, ptr %call7.i.i, i32 0, i32 1, i32 4
  %type290 = getelementptr inbounds %struct.dcb_output, ptr %dcbE, i32 0, i32 3
  br label %while.body188

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %inc492 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %cleanup.while.body_crit_edge ]
  %i.0491 = phi i32 [ -1, %while.body.lr.ph ], [ %inc492, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pad5) #6
  %19 = ptrtoint ptr %pad5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %pad5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus6) #6
  %20 = ptrtoint ptr %bus6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %bus6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %aux7) #6
  %21 = ptrtoint ptr %aux7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %aux7, align 4
  %22 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp = icmp ugt i32 %23, 3
  br i1 %cmp, label %do.end, label %while.body.if.end18_crit_edge

while.body.if.end18_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %device12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device12, align 8
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %28 = ptrtoint ptr %ccbE to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ccbE, align 8
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %2, align 4
  %conv14 = zext i8 %31 to i32
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %3, align 1
  %conv15 = zext i8 %33 to i32
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %4, align 2
  %conv16 = zext i8 %35 to i32
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %5, align 1
  %conv17 = zext i8 %37 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %inc492, i32 noundef %29, i32 noundef %conv14, i32 noundef %conv15, i32 noundef %conv16, i32 noundef %conv17) #10
  br label %if.end18

if.end18:                                         ; preds = %do.end, %while.body.if.end18_crit_edge
  %38 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %4, align 2
  %conv22 = zext i8 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %39)
  %cmp23.not = icmp eq i8 %39, -1
  br i1 %cmp23.not, label %if.else33, label %if.end18.for.cond.i_crit_edge

if.end18.for.cond.i_crit_edge:                    ; preds = %if.end18
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end18.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ %pad, %if.end18.for.cond.i_crit_edge ]
  %40 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %pad
  br i1 %cmp.not.i, label %nvkm_i2c_pad_find.exit.thread, label %for.body.i

nvkm_i2c_pad_find.exit.thread:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %pad5 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %pad5, align 4
  br label %if.then30

for.body.i:                                       ; preds = %for.cond.i
  %id3.i = getelementptr i8, ptr %.pn.i, i32 -100
  %42 = ptrtoint ptr %id3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id3.i, align 4
  %cmp4.i = icmp eq i32 %43, %conv22
  br i1 %cmp4.i, label %nvkm_i2c_pad_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

nvkm_i2c_pad_find.exit:                           ; preds = %for.body.i
  %pad.0.le.i = getelementptr i8, ptr %.pn.i, i32 -108
  %44 = ptrtoint ptr %pad5 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %pad.0.le.i, ptr %pad5, align 4
  %tobool29.not = icmp eq ptr %pad.0.le.i, null
  br i1 %tobool29.not, label %nvkm_i2c_pad_find.exit.if.then30_crit_edge, label %nvkm_i2c_pad_find.exit.if.end55_crit_edge

nvkm_i2c_pad_find.exit.if.end55_crit_edge:        ; preds = %nvkm_i2c_pad_find.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

nvkm_i2c_pad_find.exit.if.then30_crit_edge:       ; preds = %nvkm_i2c_pad_find.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

if.then30:                                        ; preds = %nvkm_i2c_pad_find.exit.if.then30_crit_edge, %nvkm_i2c_pad_find.exit.thread
  %45 = ptrtoint ptr %pad_s_new to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pad_s_new, align 4
  %call31 = call i32 %46(ptr noundef nonnull %call7.i.i, i32 noundef %conv22, ptr noundef nonnull %pad5) #6
  br label %if.end35

if.else33:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %func, align 4
  %add = add i32 %i.0491, 257
  %call34 = call i32 %48(ptr noundef nonnull %call7.i.i, i32 noundef %add, ptr noundef nonnull %pad5) #6
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.then30
  %ret.1 = phi i32 [ %call34, %if.else33 ], [ %call31, %if.then30 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool36.not = icmp eq i32 %ret.1, 0
  br i1 %tobool36.not, label %if.end35.if.end55_crit_edge, label %do.body38

if.end35.if.end55_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

do.body38:                                        ; preds = %if.end35
  %49 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp42.not = icmp eq i32 %50, 0
  br i1 %cmp42.not, label %do.body38.if.end52_crit_edge, label %do.end47

do.body38.if.end52_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

do.end47:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %device12 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device12, align 8
  %dev49 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev49, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %inc492, i32 noundef %ret.1) #10
  br label %if.end52

if.end52:                                         ; preds = %do.end47, %do.body38.if.end52_crit_edge
  call void @nvkm_i2c_pad_del(ptr noundef nonnull %pad5) #6
  br label %cleanup

if.end55:                                         ; preds = %if.end35.if.end55_crit_edge, %nvkm_i2c_pad_find.exit.if.end55_crit_edge
  %55 = ptrtoint ptr %pad5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pad5, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %tobool57.not = icmp eq ptr %60, null
  br i1 %tobool57.not, label %if.end55.if.else67_crit_edge, label %land.lhs.true

if.end55.if.else67_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else67

land.lhs.true:                                    ; preds = %if.end55
  %61 = ptrtoint ptr %ccbE to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ccbE, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp59 = icmp eq i32 %62, 0
  br i1 %cmp59, label %if.then61, label %land.lhs.true.if.else67_crit_edge

land.lhs.true.if.else67_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else67

if.then61:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %2, align 4
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %3, align 1
  %call66 = call i32 %60(ptr noundef %56, i32 noundef %inc492, i8 noundef zeroext %64, i8 noundef zeroext %66, ptr noundef nonnull %bus6) #6
  br label %if.end92

if.else67:                                        ; preds = %land.lhs.true.if.else67_crit_edge, %if.end55.if.else67_crit_edge
  %bus_new_4 = getelementptr inbounds %struct.nvkm_i2c_pad_func, ptr %58, i32 0, i32 1
  %67 = ptrtoint ptr %bus_new_4 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bus_new_4, align 4
  %tobool69.not = icmp eq ptr %68, null
  br i1 %tobool69.not, label %if.else67.if.end112_crit_edge, label %land.lhs.true70

if.else67.if.end112_crit_edge:                    ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

land.lhs.true70:                                  ; preds = %if.else67
  %69 = ptrtoint ptr %ccbE to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ccbE, align 8
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values)
  switch i32 %70, label %land.lhs.true70.if.end112_crit_edge [
    i32 4, label %land.lhs.true70.if.then86_crit_edge
    i32 5, label %land.lhs.true70.if.then86_crit_edge531
    i32 128, label %land.lhs.true81
  ]

land.lhs.true70.if.then86_crit_edge531:           ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then86

land.lhs.true70.if.then86_crit_edge:              ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then86

land.lhs.true70.if.end112_crit_edge:              ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

land.lhs.true81:                                  ; preds = %land.lhs.true70
  %72 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %73)
  %cmp84.not = icmp eq i8 %73, -1
  br i1 %cmp84.not, label %land.lhs.true81.if.end112_crit_edge, label %land.lhs.true81.if.then86_crit_edge

land.lhs.true81.if.then86_crit_edge:              ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then86

land.lhs.true81.if.end112_crit_edge:              ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

if.then86:                                        ; preds = %land.lhs.true81.if.then86_crit_edge, %land.lhs.true70.if.then86_crit_edge, %land.lhs.true70.if.then86_crit_edge531
  %74 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %2, align 4
  %call90 = call i32 %68(ptr noundef %56, i32 noundef %inc492, i8 noundef zeroext %75, ptr noundef nonnull %bus6) #6
  br label %if.end92

if.end92:                                         ; preds = %if.then86, %if.then61
  %ret.2 = phi i32 [ %call66, %if.then61 ], [ %call90, %if.then86 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool93.not = icmp eq i32 %ret.2, 0
  br i1 %tobool93.not, label %if.end92.if.end112_crit_edge, label %do.body95

if.end92.if.end112_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

do.body95:                                        ; preds = %if.end92
  %76 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp99.not = icmp eq i32 %77, 0
  br i1 %cmp99.not, label %do.body95.if.end109_crit_edge, label %do.end104

do.body95.if.end109_crit_edge:                    ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

do.end104:                                        ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %device12 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %device12, align 8
  %dev106 = getelementptr inbounds %struct.nvkm_device, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev106, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %inc492, i32 noundef %ret.2) #10
  br label %if.end109

if.end109:                                        ; preds = %do.end104, %do.body95.if.end109_crit_edge
  call void @nvkm_i2c_bus_del(ptr noundef nonnull %bus6) #6
  br label %if.end112

if.end112:                                        ; preds = %if.end109, %if.end92.if.end112_crit_edge, %land.lhs.true81.if.end112_crit_edge, %land.lhs.true70.if.end112_crit_edge, %if.else67.if.end112_crit_edge
  %82 = ptrtoint ptr %pad5 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pad5, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %aux_new_6 = getelementptr inbounds %struct.nvkm_i2c_pad_func, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %aux_new_6 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %aux_new_6, align 4
  %tobool114.not = icmp eq ptr %87, null
  br i1 %tobool114.not, label %if.end112.if.end154thread-pre-split_crit_edge, label %land.lhs.true115

if.end112.if.end154thread-pre-split_crit_edge:    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end154thread-pre-split

land.lhs.true115:                                 ; preds = %if.end112
  %88 = ptrtoint ptr %ccbE to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ccbE, align 8
  %90 = zext i32 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %89, label %land.lhs.true115.if.end154_crit_edge [
    i32 6, label %land.lhs.true115.if.end134_crit_edge
    i32 128, label %land.lhs.true123
  ]

land.lhs.true115.if.end134_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

land.lhs.true115.if.end154_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end154

land.lhs.true123:                                 ; preds = %land.lhs.true115
  %91 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %92)
  %cmp126.not = icmp eq i8 %92, -1
  br i1 %cmp126.not, label %land.lhs.true123.land.lhs.true158_crit_edge, label %land.lhs.true123.if.end134_crit_edge

land.lhs.true123.if.end134_crit_edge:             ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

land.lhs.true123.land.lhs.true158_crit_edge:      ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true158

if.end134:                                        ; preds = %land.lhs.true123.if.end134_crit_edge, %land.lhs.true115.if.end134_crit_edge
  %93 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %5, align 1
  %call132 = call i32 %87(ptr noundef %83, i32 noundef %inc492, i8 noundef zeroext %94, ptr noundef nonnull %aux7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool135.not = icmp eq i32 %call132, 0
  br i1 %tobool135.not, label %if.end134.if.end154thread-pre-split_crit_edge, label %do.body137

if.end134.if.end154thread-pre-split_crit_edge:    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end154thread-pre-split

do.body137:                                       ; preds = %if.end134
  %95 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp141.not = icmp eq i32 %96, 0
  br i1 %cmp141.not, label %do.body137.if.end151_crit_edge, label %do.end146

do.body137.if.end151_crit_edge:                   ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end151

do.end146:                                        ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %device12 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %device12, align 8
  %dev148 = getelementptr inbounds %struct.nvkm_device, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %dev148 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev148, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.13, ptr noundef %name, i32 noundef %inc492, i32 noundef %call132) #10
  br label %if.end151

if.end151:                                        ; preds = %do.end146, %do.body137.if.end151_crit_edge
  call void @nvkm_i2c_aux_del(ptr noundef nonnull %aux7) #6
  br label %if.end154thread-pre-split

if.end154thread-pre-split:                        ; preds = %if.end151, %if.end134.if.end154thread-pre-split_crit_edge, %if.end112.if.end154thread-pre-split_crit_edge
  %101 = ptrtoint ptr %ccbE to i32
  call void @__asan_load4_noabort(i32 %101)
  %.pr = load i32, ptr %ccbE, align 8
  br label %if.end154

if.end154:                                        ; preds = %if.end154thread-pre-split, %land.lhs.true115.if.end154_crit_edge
  %102 = phi i32 [ %.pr, %if.end154thread-pre-split ], [ %89, %land.lhs.true115.if.end154_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %102)
  %cmp156.not = icmp eq i32 %102, 255
  br i1 %cmp156.not, label %if.end154.cleanup_crit_edge, label %if.end154.land.lhs.true158_crit_edge

if.end154.land.lhs.true158_crit_edge:             ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true158

if.end154.cleanup_crit_edge:                      ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true158:                                 ; preds = %if.end154.land.lhs.true158_crit_edge, %land.lhs.true123.land.lhs.true158_crit_edge
  %103 = ptrtoint ptr %bus6 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bus6, align 4
  %tobool159.not = icmp eq ptr %104, null
  br i1 %tobool159.not, label %land.lhs.true160, label %land.lhs.true158.cleanup_crit_edge

land.lhs.true158.cleanup_crit_edge:               ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true160:                                 ; preds = %land.lhs.true158
  %105 = ptrtoint ptr %aux7 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %aux7, align 4
  %tobool161.not = icmp eq ptr %106, null
  br i1 %tobool161.not, label %do.body163, label %land.lhs.true160.cleanup_crit_edge

land.lhs.true160.cleanup_crit_edge:               ; preds = %land.lhs.true160
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body163:                                       ; preds = %land.lhs.true160
  %107 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %108)
  %cmp167 = icmp ugt i32 %108, 1
  br i1 %cmp167, label %do.end172, label %do.body163.cleanup_crit_edge

do.body163.cleanup_crit_edge:                     ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end172:                                        ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #8
  %109 = ptrtoint ptr %device12 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %device12, align 8
  %dev174 = getelementptr inbounds %struct.nvkm_device, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %dev174 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev174, align 8
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %112, ptr noundef nonnull @.str.16, ptr noundef %name, i32 noundef %inc492) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end172, %do.body163.cleanup_crit_edge, %land.lhs.true160.cleanup_crit_edge, %land.lhs.true158.cleanup_crit_edge, %if.end154.cleanup_crit_edge, %if.end52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %aux7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pad5) #6
  %inc = add i32 %inc492, 1
  %conv = trunc i32 %inc to i8
  %call3 = call i32 @dcb_i2c_parse(ptr noundef %1, i8 noundef zeroext %conv, ptr noundef nonnull %ccbE) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup.while.body_crit_edge, label %cleanup.while.cond183.preheader_crit_edge

cleanup.while.cond183.preheader_crit_edge:        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond183.preheader

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body188:                                    ; preds = %cleanup357.while.body188_crit_edge, %while.body188.lr.ph
  %inc184496 = phi i32 [ 0, %while.body188.lr.ph ], [ %inc184, %cleanup357.while.body188_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pad190) #6
  %113 = ptrtoint ptr %pad190 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr inttoptr (i32 -1 to ptr), ptr %pad190, align 4, !annotation !61
  %114 = ptrtoint ptr %location to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %location, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool191.not = icmp eq i8 %115, 0
  br i1 %tobool191.not, label %while.body188.cleanup357_crit_edge, label %if.end193

while.body188.cleanup357_crit_edge:               ; preds = %while.body188
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup357

if.end193:                                        ; preds = %while.body188
  %116 = ptrtoint ptr %i2c_index to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %i2c_index, align 4
  %conv194 = zext i8 %117 to i32
  %118 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %device.i, align 8
  br label %for.cond.i456

for.cond.i456:                                    ; preds = %for.body.i457.for.cond.i456_crit_edge, %if.end193
  %.pn.in.i454 = phi ptr [ %bus, %if.end193 ], [ %.pn.i455, %for.body.i457.for.cond.i456_crit_edge ]
  %120 = ptrtoint ptr %.pn.in.i454 to i32
  call void @__asan_load4_noabort(i32 %120)
  %.pn.i455 = load ptr, ptr %.pn.in.i454, align 4
  %cmp22.not.i = icmp eq ptr %.pn.i455, %bus
  br i1 %cmp22.not.i, label %for.cond.i456.do.body198_crit_edge, label %for.body.i457

for.cond.i456.do.body198_crit_edge:               ; preds = %for.cond.i456
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body198

for.body.i457:                                    ; preds = %for.cond.i456
  %id24.i = getelementptr i8, ptr %.pn.i455, i32 -96
  %121 = ptrtoint ptr %id24.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %id24.i, align 8
  %cmp25.i = icmp eq i32 %122, %conv194
  br i1 %cmp25.i, label %nvkm_i2c_bus_find.exit, label %for.body.i457.for.cond.i456_crit_edge

for.body.i457.for.cond.i456_crit_edge:            ; preds = %for.body.i457
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i456

nvkm_i2c_bus_find.exit:                           ; preds = %for.body.i457
  %bus.0.le.i = getelementptr i8, ptr %.pn.i455, i32 -104
  %tobool196.not = icmp eq ptr %bus.0.le.i, null
  br i1 %tobool196.not, label %nvkm_i2c_bus_find.exit.do.body198_crit_edge, label %while.cond216.preheader

nvkm_i2c_bus_find.exit.do.body198_crit_edge:      ; preds = %nvkm_i2c_bus_find.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body198

while.cond216.preheader:                          ; preds = %nvkm_i2c_bus_find.exit
  %123 = ptrtoint ptr %extdev to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %extdev, align 4
  %125 = zext i8 %124 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %124, label %if.end225.1 [
    i8 13, label %while.cond216.preheader.if.end249_crit_edge
    i8 14, label %if.end249.fold.split
  ]

while.cond216.preheader.if.end249_crit_edge:      ; preds = %while.cond216.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end249

do.body198:                                       ; preds = %nvkm_i2c_bus_find.exit.do.body198_crit_edge, %for.cond.i456.do.body198_crit_edge
  %126 = ptrtoint ptr %debug233 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %debug233, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %127)
  %cmp202 = icmp ugt i32 %127, 3
  br i1 %cmp202, label %do.end207, label %do.body198.cleanup357_crit_edge

do.body198.cleanup357_crit_edge:                  ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup357

do.end207:                                        ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #8
  %dev209 = getelementptr inbounds %struct.nvkm_device, ptr %119, i32 0, i32 2
  %128 = ptrtoint ptr %dev209 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev209, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %129, ptr noundef nonnull @.str.20, ptr noundef %name242, i32 noundef %inc184496) #10
  br label %cleanup357

if.end225.1:                                      ; preds = %while.cond216.preheader
  %130 = ptrtoint ptr %debug233 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %debug233, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %131)
  %cmp234 = icmp ugt i32 %131, 3
  br i1 %cmp234, label %do.end239, label %if.end225.1.cleanup357_crit_edge

if.end225.1.cleanup357_crit_edge:                 ; preds = %if.end225.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup357

do.end239:                                        ; preds = %if.end225.1
  call void @__sanitizer_cov_trace_pc() #8
  %dev241 = getelementptr inbounds %struct.nvkm_device, ptr %119, i32 0, i32 2
  %132 = ptrtoint ptr %dev241 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev241, align 8
  %conv245 = zext i8 %124 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %133, ptr noundef nonnull @.str.23, ptr noundef %name242, i32 noundef %inc184496, i32 noundef %conv245) #10
  br label %cleanup357

if.end249.fold.split:                             ; preds = %while.cond216.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end249

if.end249:                                        ; preds = %if.end249.fold.split, %while.cond216.preheader.if.end249_crit_edge
  %drv.0493.lcssa = phi ptr [ @nvkm_i2c_drv, %while.cond216.preheader.if.end249_crit_edge ], [ getelementptr inbounds ([3 x %struct.nvkm_i2c_drv], ptr @nvkm_i2c_drv, i32 0, i32 1), %if.end249.fold.split ]
  %conv251 = zext i8 %124 to i32
  %add252 = or i32 %conv251, 512
  br label %for.cond.i463

for.cond.i463:                                    ; preds = %for.body.i466.for.cond.i463_crit_edge, %if.end249
  %.pn.in.i460 = phi ptr [ %pad, %if.end249 ], [ %.pn.i461, %for.body.i466.for.cond.i463_crit_edge ]
  %134 = ptrtoint ptr %.pn.in.i460 to i32
  call void @__asan_load4_noabort(i32 %134)
  %.pn.i461 = load ptr, ptr %.pn.in.i460, align 4
  %cmp.not.i462 = icmp eq ptr %.pn.i461, %pad
  br i1 %cmp.not.i462, label %nvkm_i2c_pad_find.exit470.thread, label %for.body.i466

nvkm_i2c_pad_find.exit470.thread:                 ; preds = %for.cond.i463
  call void @__sanitizer_cov_trace_pc() #8
  %135 = ptrtoint ptr %pad190 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr null, ptr %pad190, align 4
  br label %if.then255

for.body.i466:                                    ; preds = %for.cond.i463
  %id3.i464 = getelementptr i8, ptr %.pn.i461, i32 -100
  %136 = ptrtoint ptr %id3.i464 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %id3.i464, align 4
  %cmp4.i465 = icmp eq i32 %137, %add252
  br i1 %cmp4.i465, label %nvkm_i2c_pad_find.exit470, label %for.body.i466.for.cond.i463_crit_edge

for.body.i466.for.cond.i463_crit_edge:            ; preds = %for.body.i466
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i463

nvkm_i2c_pad_find.exit470:                        ; preds = %for.body.i466
  %pad.0.le.i467 = getelementptr i8, ptr %.pn.i461, i32 -108
  %138 = ptrtoint ptr %pad190 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %pad.0.le.i467, ptr %pad190, align 4
  %tobool254.not = icmp eq ptr %pad.0.le.i467, null
  br i1 %tobool254.not, label %nvkm_i2c_pad_find.exit470.if.then255_crit_edge, label %nvkm_i2c_pad_find.exit470.if.end285_crit_edge

nvkm_i2c_pad_find.exit470.if.end285_crit_edge:    ; preds = %nvkm_i2c_pad_find.exit470
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end285

nvkm_i2c_pad_find.exit470.if.then255_crit_edge:   ; preds = %nvkm_i2c_pad_find.exit470
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then255

if.then255:                                       ; preds = %nvkm_i2c_pad_find.exit470.if.then255_crit_edge, %nvkm_i2c_pad_find.exit470.thread
  %addr = getelementptr inbounds %struct.nvkm_i2c_drv, ptr %drv.0493.lcssa, i32 0, i32 1
  %139 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %addr, align 1
  %call261 = call i32 @anx9805_pad_new(ptr noundef nonnull %bus.0.le.i, i32 noundef %add252, i8 noundef zeroext %140, ptr noundef nonnull %pad190) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call261)
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %if.then255.if.end285_crit_edge, label %do.body264

if.then255.if.end285_crit_edge:                   ; preds = %if.then255
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end285

do.body264:                                       ; preds = %if.then255
  %141 = ptrtoint ptr %debug233 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %debug233, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp268.not = icmp eq i32 %142, 0
  br i1 %cmp268.not, label %do.body264.if.end278_crit_edge, label %do.end273

do.body264.if.end278_crit_edge:                   ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end278

do.end273:                                        ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #8
  %143 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %device.i, align 8
  %dev275 = getelementptr inbounds %struct.nvkm_device, ptr %144, i32 0, i32 2
  %145 = ptrtoint ptr %dev275 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev275, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.26, ptr noundef %name242, i32 noundef %inc184496, i32 noundef %call261) #10
  br label %if.end278

if.end278:                                        ; preds = %do.end273, %do.body264.if.end278_crit_edge
  call void @nvkm_i2c_pad_del(ptr noundef nonnull %pad190) #6
  br label %cleanup357

if.end285:                                        ; preds = %if.then255.if.end285_crit_edge, %nvkm_i2c_pad_find.exit470.if.end285_crit_edge
  %147 = ptrtoint ptr %pad190 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pad190, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %148, align 4
  %aux_new_6287 = getelementptr inbounds %struct.nvkm_i2c_pad_func, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %aux_new_6287 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %aux_new_6287, align 4
  %tobool288.not = icmp eq ptr %152, null
  br i1 %tobool288.not, label %if.end285.if.else322_crit_edge, label %land.lhs.true289

if.end285.if.else322_crit_edge:                   ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else322

land.lhs.true289:                                 ; preds = %if.end285
  %153 = ptrtoint ptr %type290 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %type290, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %154)
  %cmp291 = icmp eq i32 %154, 6
  br i1 %cmp291, label %if.then293, label %land.lhs.true289.if.else322_crit_edge

land.lhs.true289.if.else322_crit_edge:            ; preds = %land.lhs.true289
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else322

if.then293:                                       ; preds = %land.lhs.true289
  %155 = ptrtoint ptr %extdev to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %extdev, align 4
  %conv296 = zext i8 %156 to i32
  %add297 = or i32 %conv296, 256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %aux298) #6
  %157 = ptrtoint ptr %aux298 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr null, ptr %aux298, align 4
  %158 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %148, align 4
  %aux_new_6300 = getelementptr inbounds %struct.nvkm_i2c_pad_func, ptr %159, i32 0, i32 2
  %160 = ptrtoint ptr %aux_new_6300 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %aux_new_6300, align 4
  %call301 = call i32 %161(ptr noundef %148, i32 noundef %add297, i8 noundef zeroext 0, ptr noundef nonnull %aux298) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call301)
  %tobool302.not = icmp eq i32 %call301, 0
  br i1 %tobool302.not, label %if.then293.if.end321_crit_edge, label %do.body304

if.then293.if.end321_crit_edge:                   ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end321

do.body304:                                       ; preds = %if.then293
  %162 = ptrtoint ptr %debug233 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %debug233, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %cmp308.not = icmp eq i32 %163, 0
  br i1 %cmp308.not, label %do.body304.if.end318_crit_edge, label %do.end313

do.body304.if.end318_crit_edge:                   ; preds = %do.body304
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end318

do.end313:                                        ; preds = %do.body304
  call void @__sanitizer_cov_trace_pc() #8
  %164 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %device.i, align 8
  %dev315 = getelementptr inbounds %struct.nvkm_device, ptr %165, i32 0, i32 2
  %166 = ptrtoint ptr %dev315 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dev315, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.29, ptr noundef %name242, i32 noundef %inc184496, i32 noundef %call301) #10
  br label %if.end318

if.end318:                                        ; preds = %do.end313, %do.body304.if.end318_crit_edge
  call void @nvkm_i2c_aux_del(ptr noundef nonnull %aux298) #6
  br label %if.end321

if.end321:                                        ; preds = %if.end318, %if.then293.if.end321_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %aux298) #6
  br label %cleanup357

if.else322:                                       ; preds = %land.lhs.true289.if.else322_crit_edge, %if.end285.if.else322_crit_edge
  %bus_new_4324 = getelementptr inbounds %struct.nvkm_i2c_pad_func, ptr %150, i32 0, i32 1
  %168 = ptrtoint ptr %bus_new_4324 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %bus_new_4324, align 4
  %tobool325.not = icmp eq ptr %169, null
  br i1 %tobool325.not, label %if.else322.cleanup357_crit_edge, label %if.then326

if.else322.cleanup357_crit_edge:                  ; preds = %if.else322
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup357

if.then326:                                       ; preds = %if.else322
  %170 = ptrtoint ptr %extdev to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %extdev, align 4
  %conv329 = zext i8 %171 to i32
  %add330 = or i32 %conv329, 256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus331) #6
  %172 = ptrtoint ptr %bus331 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr null, ptr %bus331, align 4
  %173 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %148, align 4
  %bus_new_4333 = getelementptr inbounds %struct.nvkm_i2c_pad_func, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %bus_new_4333 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %bus_new_4333, align 4
  %call334 = call i32 %176(ptr noundef %148, i32 noundef %add330, i8 noundef zeroext 0, ptr noundef nonnull %bus331) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call334)
  %tobool335.not = icmp eq i32 %call334, 0
  br i1 %tobool335.not, label %if.then326.if.end354_crit_edge, label %do.body337

if.then326.if.end354_crit_edge:                   ; preds = %if.then326
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end354

do.body337:                                       ; preds = %if.then326
  %177 = ptrtoint ptr %debug233 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %debug233, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %cmp341.not = icmp eq i32 %178, 0
  br i1 %cmp341.not, label %do.body337.if.end351_crit_edge, label %do.end346

do.body337.if.end351_crit_edge:                   ; preds = %do.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end351

do.end346:                                        ; preds = %do.body337
  call void @__sanitizer_cov_trace_pc() #8
  %179 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %device.i, align 8
  %dev348 = getelementptr inbounds %struct.nvkm_device, ptr %180, i32 0, i32 2
  %181 = ptrtoint ptr %dev348 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev348, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %182, ptr noundef nonnull @.str.32, ptr noundef %name242, i32 noundef %inc184496, i32 noundef %call334) #10
  br label %if.end351

if.end351:                                        ; preds = %do.end346, %do.body337.if.end351_crit_edge
  call void @nvkm_i2c_bus_del(ptr noundef nonnull %bus331) #6
  br label %if.end354

if.end354:                                        ; preds = %if.end351, %if.then326.if.end354_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus331) #6
  br label %cleanup357

cleanup357:                                       ; preds = %if.end354, %if.else322.cleanup357_crit_edge, %if.end321, %if.end278, %do.end239, %if.end225.1.cleanup357_crit_edge, %do.end207, %do.body198.cleanup357_crit_edge, %while.body188.cleanup357_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pad190) #6
  %inc184 = add i32 %inc184496, 1
  %conv185 = trunc i32 %inc184 to i8
  %call186 = call zeroext i16 @dcb_outp_parse(ptr noundef %1, i8 noundef zeroext %conv185, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %dcbE) #6
  %tobool187.not = icmp eq i16 %call186, 0
  br i1 %tobool187.not, label %cleanup357.while.end362_crit_edge, label %cleanup357.while.body188_crit_edge

cleanup357.while.body188_crit_edge:               ; preds = %cleanup357
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body188

cleanup357.while.end362_crit_edge:                ; preds = %cleanup357
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end362

while.end362:                                     ; preds = %cleanup357.while.end362_crit_edge, %while.cond183.preheader.while.end362_crit_edge
  %inc184.lcssa = phi i32 [ 0, %while.cond183.preheader.while.end362_crit_edge ], [ %inc184, %cleanup357.while.end362_crit_edge ]
  %event = getelementptr inbounds %struct.nvkm_i2c, ptr %call7.i.i, i32 0, i32 5
  %call363 = call i32 @nvkm_event_init(ptr noundef nonnull @nvkm_i2c_intr_func, i32 noundef 4, i32 noundef %inc184.lcssa, ptr noundef %event) #6
  br label %cleanup364

cleanup364:                                       ; preds = %while.end362, %entry.cleanup364_crit_edge
  %retval.0 = phi i32 [ %call363, %while.end362 ], [ -12, %entry.cleanup364_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %dcbE) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ccbE) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcb_i2c_parse(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_pad_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_bus_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_aux_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dcb_outp_parse(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_event_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_i2c_dtor(ptr noundef %subdev) #0 align 64 {
entry:
  %aux1 = alloca ptr, align 4
  %bus11 = alloca ptr, align 4
  %pad23 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %event = getelementptr i8, ptr %subdev, i32 76
  tail call void @nvkm_event_fini(ptr noundef %event) #6
  %aux = getelementptr i8, ptr %subdev, i32 68
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %aux, align 4
  %cmp.i.not41 = icmp eq ptr %1, %aux
  br i1 %cmp.i.not41, label %entry.while.cond6.preheader_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.cond6.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond6.preheader

while.cond6.preheader:                            ; preds = %while.body.while.cond6.preheader_crit_edge, %entry.while.cond6.preheader_crit_edge
  %bus = getelementptr i8, ptr %subdev, i32 60
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %bus, align 4
  %cmp.i37.not42 = icmp eq ptr %3, %bus
  br i1 %cmp.i37.not42, label %while.cond6.preheader.while.cond18.preheader_crit_edge, label %while.cond6.preheader.while.body10_crit_edge

while.cond6.preheader.while.body10_crit_edge:     ; preds = %while.cond6.preheader
  br label %while.body10

while.cond6.preheader.while.cond18.preheader_crit_edge: ; preds = %while.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond18.preheader

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = phi ptr [ %7, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %aux1) #6
  %add.ptr5 = getelementptr i8, ptr %4, i32 -104
  %5 = ptrtoint ptr %aux1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr5, ptr %aux1, align 4
  call void @nvkm_i2c_aux_del(ptr noundef nonnull %aux1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %aux1) #6
  %6 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %aux, align 4
  %cmp.i.not = icmp eq ptr %7, %aux
  br i1 %cmp.i.not, label %while.body.while.cond6.preheader_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.cond6.preheader_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond6.preheader

while.cond18.preheader:                           ; preds = %while.body10.while.cond18.preheader_crit_edge, %while.cond6.preheader.while.cond18.preheader_crit_edge
  %pad = getelementptr i8, ptr %subdev, i32 52
  %8 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %pad, align 4
  %cmp.i39.not43 = icmp eq ptr %9, %pad
  br i1 %cmp.i39.not43, label %while.cond18.preheader.while.end29_crit_edge, label %while.cond18.preheader.while.body22_crit_edge

while.cond18.preheader.while.body22_crit_edge:    ; preds = %while.cond18.preheader
  br label %while.body22

while.cond18.preheader.while.end29_crit_edge:     ; preds = %while.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end29

while.body10:                                     ; preds = %while.body10.while.body10_crit_edge, %while.cond6.preheader.while.body10_crit_edge
  %10 = phi ptr [ %13, %while.body10.while.body10_crit_edge ], [ %3, %while.cond6.preheader.while.body10_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus11) #6
  %add.ptr16 = getelementptr i8, ptr %10, i32 -104
  %11 = ptrtoint ptr %bus11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr16, ptr %bus11, align 4
  call void @nvkm_i2c_bus_del(ptr noundef nonnull %bus11) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus11) #6
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %bus, align 4
  %cmp.i37.not = icmp eq ptr %13, %bus
  br i1 %cmp.i37.not, label %while.body10.while.cond18.preheader_crit_edge, label %while.body10.while.body10_crit_edge

while.body10.while.body10_crit_edge:              ; preds = %while.body10
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body10

while.body10.while.cond18.preheader_crit_edge:    ; preds = %while.body10
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond18.preheader

while.body22:                                     ; preds = %while.body22.while.body22_crit_edge, %while.cond18.preheader.while.body22_crit_edge
  %14 = phi ptr [ %17, %while.body22.while.body22_crit_edge ], [ %9, %while.cond18.preheader.while.body22_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pad23) #6
  %add.ptr28 = getelementptr i8, ptr %14, i32 -108
  %15 = ptrtoint ptr %pad23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr28, ptr %pad23, align 4
  call void @nvkm_i2c_pad_del(ptr noundef nonnull %pad23) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pad23) #6
  %16 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %pad, align 4
  %cmp.i39.not = icmp eq ptr %17, %pad
  br i1 %cmp.i39.not, label %while.body22.while.end29_crit_edge, label %while.body22.while.body22_crit_edge

while.body22.while.body22_crit_edge:              ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body22

while.body22.while.end29_crit_edge:               ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end29

while.end29:                                      ; preds = %while.body22.while.end29_crit_edge, %while.cond18.preheader.while.end29_crit_edge
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_i2c_preinit(ptr noundef readonly %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pad2 = getelementptr i8, ptr %subdev, i32 52
  %0 = ptrtoint ptr %pad2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn37 = load ptr, ptr %pad2, align 4
  %cmp.not38 = icmp eq ptr %.pn37, %pad2
  br i1 %cmp.not38, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn39 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn37, %entry.for.body_crit_edge ]
  %pad.0 = getelementptr i8, ptr %.pn39, i32 -108
  tail call void @nvkm_i2c_pad_init(ptr noundef %pad.0) #6
  %1 = ptrtoint ptr %.pn39 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn39, align 4
  %cmp.not = icmp eq ptr %.pn, %pad2
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %bus12 = getelementptr i8, ptr %subdev, i32 60
  %2 = ptrtoint ptr %bus12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn3640 = load ptr, ptr %bus12, align 4
  %cmp19.not41 = icmp eq ptr %.pn3640, %bus12
  br i1 %cmp19.not41, label %for.end.for.end28_crit_edge, label %for.end.for.body21_crit_edge

for.end.for.body21_crit_edge:                     ; preds = %for.end
  br label %for.body21

for.end.for.end28_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end28

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %for.end.for.body21_crit_edge
  %.pn3642 = phi ptr [ %.pn36, %for.body21.for.body21_crit_edge ], [ %.pn3640, %for.end.for.body21_crit_edge ]
  %bus.0 = getelementptr i8, ptr %.pn3642, i32 -104
  tail call void @nvkm_i2c_bus_init(ptr noundef %bus.0) #6
  %3 = ptrtoint ptr %.pn3642 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn36 = load ptr, ptr %.pn3642, align 4
  %cmp19.not = icmp eq ptr %.pn36, %bus12
  br i1 %cmp19.not, label %for.body21.for.end28_crit_edge, label %for.body21.for.body21_crit_edge

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body21

for.body21.for.end28_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end28

for.end28:                                        ; preds = %for.body21.for.end28_crit_edge, %for.end.for.end28_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_i2c_init(ptr noundef readonly %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pad2 = getelementptr i8, ptr %subdev, i32 52
  %0 = ptrtoint ptr %pad2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn60 = load ptr, ptr %pad2, align 4
  %cmp.not61 = icmp eq ptr %.pn60, %pad2
  br i1 %cmp.not61, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn62 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn60, %entry.for.body_crit_edge ]
  %pad.0 = getelementptr i8, ptr %.pn62, i32 -108
  tail call void @nvkm_i2c_pad_init(ptr noundef %pad.0) #6
  %1 = ptrtoint ptr %.pn62 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn62, align 4
  %cmp.not = icmp eq ptr %.pn, %pad2
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %bus12 = getelementptr i8, ptr %subdev, i32 60
  %2 = ptrtoint ptr %bus12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn5863 = load ptr, ptr %bus12, align 4
  %cmp19.not64 = icmp eq ptr %.pn5863, %bus12
  br i1 %cmp19.not64, label %for.end.for.end28_crit_edge, label %for.end.for.body21_crit_edge

for.end.for.body21_crit_edge:                     ; preds = %for.end
  br label %for.body21

for.end.for.end28_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end28

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %for.end.for.body21_crit_edge
  %.pn5865 = phi ptr [ %.pn58, %for.body21.for.body21_crit_edge ], [ %.pn5863, %for.end.for.body21_crit_edge ]
  %bus.0 = getelementptr i8, ptr %.pn5865, i32 -104
  tail call void @nvkm_i2c_bus_init(ptr noundef %bus.0) #6
  %3 = ptrtoint ptr %.pn5865 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn58 = load ptr, ptr %.pn5865, align 4
  %cmp19.not = icmp eq ptr %.pn58, %bus12
  br i1 %cmp19.not, label %for.body21.for.end28_crit_edge, label %for.body21.for.body21_crit_edge

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body21

for.body21.for.end28_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end28

for.end28:                                        ; preds = %for.body21.for.end28_crit_edge, %for.end.for.end28_crit_edge
  %aux30 = getelementptr i8, ptr %subdev, i32 68
  %4 = ptrtoint ptr %aux30 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn5966 = load ptr, ptr %aux30, align 4
  %cmp37.not67 = icmp eq ptr %.pn5966, %aux30
  br i1 %cmp37.not67, label %for.end28.for.end46_crit_edge, label %for.end28.for.body39_crit_edge

for.end28.for.body39_crit_edge:                   ; preds = %for.end28
  br label %for.body39

for.end28.for.end46_crit_edge:                    ; preds = %for.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end46

for.body39:                                       ; preds = %for.body39.for.body39_crit_edge, %for.end28.for.body39_crit_edge
  %.pn5968 = phi ptr [ %.pn59, %for.body39.for.body39_crit_edge ], [ %.pn5966, %for.end28.for.body39_crit_edge ]
  %aux.0 = getelementptr i8, ptr %.pn5968, i32 -104
  tail call void @nvkm_i2c_aux_init(ptr noundef %aux.0) #6
  %5 = ptrtoint ptr %.pn5968 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn59 = load ptr, ptr %.pn5968, align 4
  %cmp37.not = icmp eq ptr %.pn59, %aux30
  br i1 %cmp37.not, label %for.body39.for.end46_crit_edge, label %for.body39.for.body39_crit_edge

for.body39.for.body39_crit_edge:                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body39

for.body39.for.end46_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end46

for.end46:                                        ; preds = %for.body39.for.end46_crit_edge, %for.end28.for.end46_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_i2c_fini(ptr noundef %subdev, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #6
  %aux2 = getelementptr i8, ptr %subdev, i32 68
  %0 = ptrtoint ptr %aux2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn71 = load ptr, ptr %aux2, align 4
  %cmp.not72 = icmp eq ptr %.pn71, %aux2
  br i1 %cmp.not72, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn73 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn71, %entry.for.body_crit_edge ]
  %aux.0 = getelementptr i8, ptr %.pn73, i32 -104
  tail call void @nvkm_i2c_aux_fini(ptr noundef %aux.0) #6
  %1 = ptrtoint ptr %.pn73 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn73, align 4
  %cmp.not = icmp eq ptr %.pn, %aux2
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %bus12 = getelementptr i8, ptr %subdev, i32 60
  %2 = ptrtoint ptr %bus12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn6974 = load ptr, ptr %bus12, align 4
  %cmp19.not75 = icmp eq ptr %.pn6974, %bus12
  br i1 %cmp19.not75, label %for.end.for.end28_crit_edge, label %for.end.for.body21_crit_edge

for.end.for.body21_crit_edge:                     ; preds = %for.end
  br label %for.body21

for.end.for.end28_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end28

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %for.end.for.body21_crit_edge
  %.pn6976 = phi ptr [ %.pn69, %for.body21.for.body21_crit_edge ], [ %.pn6974, %for.end.for.body21_crit_edge ]
  %bus.0 = getelementptr i8, ptr %.pn6976, i32 -104
  tail call void @nvkm_i2c_bus_fini(ptr noundef %bus.0) #6
  %3 = ptrtoint ptr %.pn6976 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn69 = load ptr, ptr %.pn6976, align 4
  %cmp19.not = icmp eq ptr %.pn69, %bus12
  br i1 %cmp19.not, label %for.body21.for.end28_crit_edge, label %for.body21.for.body21_crit_edge

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body21

for.body21.for.end28_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end28

for.end28:                                        ; preds = %for.body21.for.end28_crit_edge, %for.end.for.end28_crit_edge
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %aux29 = getelementptr inbounds %struct.nvkm_i2c_func, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %aux29 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %aux29, align 4
  %notmask = shl nsw i32 -1, %7
  %sub = xor i32 %notmask, -1
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %mask, align 4
  %aux_stat = getelementptr inbounds %struct.nvkm_i2c_func, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %aux_stat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %aux_stat, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %for.end28.if.end_crit_edge, label %if.then

for.end28.if.end_crit_edge:                       ; preds = %for.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.end28
  call void @__sanitizer_cov_trace_pc() #8
  %aux_mask = getelementptr inbounds %struct.nvkm_i2c_func, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %aux_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aux_mask, align 4
  tail call void %12(ptr noundef %add.ptr, i32 noundef 15, i32 noundef %sub, i32 noundef 0) #6
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  %aux_stat33 = getelementptr inbounds %struct.nvkm_i2c_func, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %aux_stat33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %aux_stat33, align 4
  call void %16(ptr noundef %add.ptr, ptr noundef nonnull %mask, ptr noundef nonnull %mask, ptr noundef nonnull %mask, ptr noundef nonnull %mask) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end28.if.end_crit_edge
  %pad35 = getelementptr i8, ptr %subdev, i32 52
  %17 = ptrtoint ptr %pad35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn7077 = load ptr, ptr %pad35, align 4
  %cmp42.not78 = icmp eq ptr %.pn7077, %pad35
  br i1 %cmp42.not78, label %if.end.for.end51_crit_edge, label %if.end.for.body44_crit_edge

if.end.for.body44_crit_edge:                      ; preds = %if.end
  br label %for.body44

if.end.for.end51_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end51

for.body44:                                       ; preds = %for.body44.for.body44_crit_edge, %if.end.for.body44_crit_edge
  %.pn7079 = phi ptr [ %.pn70, %for.body44.for.body44_crit_edge ], [ %.pn7077, %if.end.for.body44_crit_edge ]
  %pad.0 = getelementptr i8, ptr %.pn7079, i32 -108
  call void @nvkm_i2c_pad_fini(ptr noundef %pad.0) #6
  %18 = ptrtoint ptr %.pn7079 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn70 = load ptr, ptr %.pn7079, align 4
  %cmp42.not = icmp eq ptr %.pn70, %pad35
  br i1 %cmp42.not, label %for.body44.for.end51_crit_edge, label %for.body44.for.body44_crit_edge

for.body44.for.body44_crit_edge:                  ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body44

for.body44.for.end51_crit_edge:                   ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end51

for.end51:                                        ; preds = %for.body44.for.end51_crit_edge, %if.end.for.end51_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_i2c_intr(ptr noundef %subdev) #0 align 64 {
entry:
  %hi = alloca i32, align 4
  %lo = alloca i32, align 4
  %rq = alloca i32, align 4
  %tx = alloca i32, align 4
  %rep = alloca %struct.nvkm_i2c_ntfy_rep, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hi) #6
  %0 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %hi, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lo) #6
  %1 = ptrtoint ptr %lo to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %lo, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rq) #6
  %2 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rq, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx) #6
  %3 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tx, align 4, !annotation !61
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %aux_stat = getelementptr inbounds %struct.nvkm_i2c_func, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %aux_stat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aux_stat, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void %7(ptr noundef %add.ptr, ptr noundef nonnull %hi, ptr noundef nonnull %lo, ptr noundef nonnull %rq, ptr noundef nonnull %tx) #6
  %8 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %10 = ptrtoint ptr %lo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %land.lhs.true5, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

land.lhs.true5:                                   ; preds = %land.lhs.true
  %12 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not = icmp eq i32 %13, 0
  br i1 %tobool6.not, label %land.lhs.true7, label %land.lhs.true5.if.end10_crit_edge

land.lhs.true5.if.end10_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %14 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not = icmp eq i32 %15, 0
  br i1 %tobool8.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end10_crit_edge

land.lhs.true7.if.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true7.if.end10_crit_edge, %land.lhs.true5.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %aux12 = getelementptr i8, ptr %subdev, i32 68
  %16 = ptrtoint ptr %aux12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn69 = load ptr, ptr %aux12, align 4
  %cmp.not70 = icmp eq ptr %.pn69, %aux12
  br i1 %cmp.not70, label %if.end10.cleanup_crit_edge, label %for.body.lr.ph

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end10
  %event = getelementptr i8, ptr %subdev, i32 76
  br label %for.body

for.body:                                         ; preds = %if.end42.for.body_crit_edge, %for.body.lr.ph
  %.pn71 = phi ptr [ %.pn69, %for.body.lr.ph ], [ %.pn, %if.end42.for.body_crit_edge ]
  %17 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hi, align 4
  %intr = getelementptr i8, ptr %.pn71, i32 1372
  %19 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %intr, align 4
  %and = and i32 %20, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp ne i32 %and, 0
  %spec.select = zext i1 %tobool16.not to i32
  %21 = ptrtoint ptr %lo to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lo, align 4
  %and20 = and i32 %22, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %or23 = or i32 %spec.select, 2
  %mask.1 = select i1 %tobool21.not, i32 %spec.select, i32 %or23
  %23 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rq, align 4
  %and26 = and i32 %24, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %or29 = or i32 %mask.1, 4
  %mask.2 = select i1 %tobool27.not, i32 %mask.1, i32 %or29
  %25 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx, align 4
  %and32 = and i32 %26, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %or35 = or i32 %mask.2, 8
  %mask.3 = select i1 %tobool33.not, i32 %mask.2, i32 %or35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask.3)
  %tobool37.not = icmp eq i32 %mask.3, 0
  br i1 %tobool37.not, label %for.body.if.end42_crit_edge, label %if.then38

for.body.if.end42_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then38:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rep) #6
  %conv = trunc i32 %mask.3 to i8
  %27 = ptrtoint ptr %rep to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv, ptr %rep, align 1
  %conv41 = and i32 %mask.3, 255
  %id = getelementptr i8, ptr %.pn71, i32 -96
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id, align 8
  call void @nvkm_event_send(ptr noundef %event, i32 noundef %conv41, i32 noundef %29, ptr noundef nonnull %rep, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rep) #6
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %for.body.if.end42_crit_edge
  %30 = ptrtoint ptr %.pn71 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load ptr, ptr %.pn71, align 4
  %cmp.not = icmp eq ptr %.pn, %aux12
  br i1 %cmp.not, label %if.end42.cleanup_crit_edge, label %if.end42.for.body_crit_edge

if.end42.for.body_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end42.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rq) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lo) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hi) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_pad_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_bus_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_aux_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_aux_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_bus_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_pad_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_send(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anx9805_pad_new(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_i2c_intr_ctor(ptr nocapture noundef readnone %object, ptr nocapture noundef readonly %data, i32 noundef %size, ptr nocapture noundef writeonly %notify) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size)
  %cmp.not = icmp eq i32 %size, 2
  br i1 %cmp.not, label %if.then20.critedge, label %do.end, !prof !62

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.then20.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %size21 = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 7
  %0 = ptrtoint ptr %size21 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %size21, align 4
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %data, align 1
  %conv = zext i8 %2 to i32
  %types = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 5
  %3 = ptrtoint ptr %types to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %types, align 4
  %port = getelementptr inbounds %struct.nvkm_i2c_ntfy_req, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port, align 1
  %conv22 = zext i8 %5 to i32
  %index = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 6
  %6 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv22, ptr %index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then20.critedge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then20.critedge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_i2c_intr_init(ptr noundef %event, i32 noundef %type, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %event, i32 -80
  %aux1.i = getelementptr i8, ptr %event, i32 -8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %aux1.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %aux1.i
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %id3.i = getelementptr i8, ptr %.pn.i, i32 -96
  %1 = ptrtoint ptr %id3.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id3.i, align 8
  %cmp4.i = icmp eq i32 %2, %id
  br i1 %cmp4.i, label %nvkm_i2c_aux_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

nvkm_i2c_aux_find.exit:                           ; preds = %for.body.i
  %aux.0.le.i = getelementptr i8, ptr %.pn.i, i32 -104
  %tobool.not = icmp eq ptr %aux.0.le.i, null
  br i1 %tobool.not, label %nvkm_i2c_aux_find.exit.if.end_crit_edge, label %if.then

nvkm_i2c_aux_find.exit.if.end_crit_edge:          ; preds = %nvkm_i2c_aux_find.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %nvkm_i2c_aux_find.exit
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %aux_mask = getelementptr inbounds %struct.nvkm_i2c_func, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %aux_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aux_mask, align 4
  %intr = getelementptr i8, ptr %.pn.i, i32 1372
  %7 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %intr, align 4
  tail call void %6(ptr noundef %add.ptr, i32 noundef %type, i32 noundef %8, i32 noundef %8) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %nvkm_i2c_aux_find.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_i2c_intr_fini(ptr noundef %event, i32 noundef %type, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %event, i32 -80
  %aux1.i = getelementptr i8, ptr %event, i32 -8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %aux1.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %aux1.i
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %id3.i = getelementptr i8, ptr %.pn.i, i32 -96
  %1 = ptrtoint ptr %id3.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id3.i, align 8
  %cmp4.i = icmp eq i32 %2, %id
  br i1 %cmp4.i, label %nvkm_i2c_aux_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

nvkm_i2c_aux_find.exit:                           ; preds = %for.body.i
  %aux.0.le.i = getelementptr i8, ptr %.pn.i, i32 -104
  %tobool.not = icmp eq ptr %aux.0.le.i, null
  br i1 %tobool.not, label %nvkm_i2c_aux_find.exit.if.end_crit_edge, label %if.then

nvkm_i2c_aux_find.exit.if.end_crit_edge:          ; preds = %nvkm_i2c_aux_find.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %nvkm_i2c_aux_find.exit
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %aux_mask = getelementptr inbounds %struct.nvkm_i2c_func, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %aux_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aux_mask, align 4
  %intr = getelementptr i8, ptr %.pn.i, i32 1372
  %7 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %intr, align 4
  tail call void %6(ptr noundef %add.ptr, i32 noundef %type, i32 noundef %8, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %nvkm_i2c_aux_find.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/base.c", i32 304, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvkm_i2c_new_._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvkm_i2c_new_._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/base.c", i32 319, i32 4}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nvkm_i2c_new_._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @nvkm_i2c_new_._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/base.c", i32 339, i32 4}
!15 = !{ptr @nvkm_i2c_new_._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @nvkm_i2c_new_._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/base.c", i32 354, i32 4}
!19 = !{ptr @nvkm_i2c_new_._entry.12, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @nvkm_i2c_new_._entry_ptr.14, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.16, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/base.c", i32 359, i32 4}
!23 = !{ptr @.str.17, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nvkm_i2c_new_._entry.15, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @nvkm_i2c_new_._entry_ptr.18, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.20, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/base.c", i32 377, i32 4}
!28 = !{ptr @nvkm_i2c_new_._entry.19, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @nvkm_i2c_new_._entry_ptr.21, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.23, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/base.c", i32 389, i32 4}
!32 = !{ptr @nvkm_i2c_new_._entry.22, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @nvkm_i2c_new_._entry_ptr.24, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.26, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/base.c", i32 400, i32 5}
!36 = !{ptr @nvkm_i2c_new_._entry.25, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @nvkm_i2c_new_._entry_ptr.27, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.29, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/base.c", i32 413, i32 5}
!40 = !{ptr @nvkm_i2c_new_._entry.28, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @nvkm_i2c_new_._entry_ptr.30, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.32, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/base.c", i32 423, i32 5}
!44 = !{ptr @nvkm_i2c_new_._entry.31, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @nvkm_i2c_new_._entry_ptr.33, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @nvkm_i2c, !47, !"nvkm_i2c", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/base.c", i32 258, i32 1}
!48 = !{ptr @nvkm_i2c_drv, !49, !"nvkm_i2c_drv", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/base.c", i32 272, i32 1}
!50 = !{ptr @nvkm_i2c_intr_func, !51, !"nvkm_i2c_intr_func", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/base.c", i32 122, i32 1}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"auto-init"}
!62 = !{!"branch_weights", i32 2000, i32 1}
