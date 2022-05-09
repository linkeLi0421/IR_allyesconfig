; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/m5mols/m5mols_controls.c_pt.bc'
source_filename = "../drivers/media/i2c/m5mols/m5mols_controls.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.m5mols_scenemode = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.m5mols_info = type { ptr, %struct.v4l2_subdev, %struct.media_pad, %struct.wait_queue_head, %struct.atomic_t, %struct.v4l2_ctrl_handler, %struct.anon.92, %struct.anon.93, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, [2 x %struct.v4l2_mbus_framefmt], i32, %struct.m5mols_version, %struct.m5mols_capture, i8, i8, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.92 = type { ptr, ptr, ptr, ptr }
%struct.anon.93 = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.88, i16, i16, i16, [10 x i16] }
%union.anon.88 = type { i16 }
%struct.m5mols_version = type { i8, i8, i16, i16, i16, i16, [22 x i8], i8 }
%struct.m5mols_capture = type { %struct.m5mols_exif, i32, i32, i32, i32 }
%struct.m5mols_exif = type { i32, i32, i32, i32, i32, i16, i16, i16, i16 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@m5mols_default_scenemode = internal constant { [14 x %struct.m5mols_scenemode], [50 x i8] } { [14 x %struct.m5mols_scenemode] [%struct.m5mols_scenemode { i8 3, i8 4, i8 1, i8 0, i8 1, i8 3, i8 1, i8 5, i8 0, i8 0, i8 1, i8 0, i8 0, i8 5, i8 0, i8 0, i8 0 }, %struct.m5mols_scenemode { i8 3, i8 4, i8 1, i8 0, i8 1, i8 3, i8 1, i8 4, i8 0, i8 4, i8 0, i8 0, i8 0, i8 6, i8 0, i8 0, i8 0 }, %struct.m5mols_scenemode { i8 1, i8 4, i8 1, i8 0, i8 1, i8 4, i8 1, i8 6, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i8 0, i8 0, i8 0 }, %struct.m5mols_scenemode { i8 3, i8 4, i8 1, i8 0, i8 1, i8 3, i8 1, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i8 0, i8 0, i8 0 }, %struct.m5mols_scenemode { i8 3, i8 4, i8 1, i8 0, i8 1, i8 4, i8 1, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i8 3, i8 0, i8 0 }, %struct.m5mols_scenemode { i8 3, i8 6, i8 1, i8 0, i8 1, i8 4, i8 1, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i8 1, i8 0, i8 0 }, %struct.m5mols_scenemode { i8 3, i8 4, i8 2, i8 4, i8 1, i8 3, i8 1, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i8 0, i8 0, i8 0 }, %struct.m5mols_scenemode { i8 3, i8 4, i8 2, i8 2, i8 1, i8 3, i8 1, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i8 0, i8 0, i8 0 }, %struct.m5mols_scenemode { i8 3, i8 4, i8 1, i8 0, i8 1, i8 5, i8 1, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i8 0, i8 0, i8 0 }, %struct.m5mols_scenemode { i8 3, i8 4, i8 1, i8 0, i8 1, i8 3, i8 1, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i8 0, i8 0, i8 0 }, %struct.m5mols_scenemode { i8 3, i8 4, i8 1, i8 0, i8 1, i8 3, i8 1, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i8 0, i8 0, i8 0 }, %struct.m5mols_scenemode { i8 3, i8 4, i8 1, i8 0, i8 1, i8 3, i8 1, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i8 1, i8 0, i8 0 }, %struct.m5mols_scenemode { i8 3, i8 4, i8 1, i8 0, i8 1, i8 3, i8 1, i8 7, i8 1, i8 0, i8 0, i8 0, i8 0, i8 6, i8 0, i8 2, i8 1 }, %struct.m5mols_scenemode { i8 3, i8 4, i8 1, i8 0, i8 1, i8 3, i8 1, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i8 0, i8 0, i8 0 }], [50 x i8] zeroinitializer }, align 32
@m5mols_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"m5mols_controls:550:(&info->handle)->_lock\00", [53 x i8] zeroinitializer }, align 32
@m5mols_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @m5mols_g_volatile_ctrl, ptr null, ptr @m5mols_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@ev_bias_qmenu = internal constant { [9 x i64], [56 x i8] } { [9 x i64] [i64 -2000, i64 -1500, i64 -1000, i64 -500, i64 0, i64 500, i64 1000, i64 1500, i64 2000], [56 x i8] zeroinitializer }, align 32
@iso_qmenu = internal constant { [7 x i64], [40 x i8] } { [7 x i64] [i64 50000, i64 100000, i64 200000, i64 400000, i64 800000, i64 1600000, i64 3200000], [40 x i8] zeroinitializer }, align 32
@m5mols_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Failed to initialize controls: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"m5mols_init_controls\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/i2c/m5mols/m5mols_controls.c\00", [53 x i8] zeroinitializer }, align 32
@m5mols_init_controls._entry_ptr = internal global ptr @m5mols_init_controls._entry, section ".printk_index", align 4
@m5mols_debug = external dso_local local_unnamed_addr global i32, align 4
@m5mols_g_volatile_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s: ctrl: %s (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"m5mols_g_volatile_ctrl\00", [41 x i8] zeroinitializer }, align 32
@m5mols_g_volatile_ctrl._entry_ptr = internal global ptr @m5mols_g_volatile_ctrl._entry, section ".printk_index", align 4
@m5mols_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %s: %s, val: %d, priv: %p\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"m5mols_s_ctrl\00", [18 x i8] zeroinitializer }, align 32
@m5mols_s_ctrl._entry_ptr = internal global ptr @m5mols_s_ctrl._entry, section ".printk_index", align 4
@m5mols_set_exposure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: %s: exposure bias: %#x, metering: %#x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"m5mols_set_exposure\00", [44 x i8] zeroinitializer }, align 32
@m5mols_set_exposure._entry_ptr = internal global ptr @m5mols_set_exposure._entry, section ".printk_index", align 4
@m5mols_set_exposure._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.4, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s: exposure: %#x\0A\00", [39 x i8] zeroinitializer }, align 32
@m5mols_set_exposure._entry_ptr.13 = internal global ptr @m5mols_set_exposure._entry.11, section ".printk_index", align 4
@m5mols_set_white_balance.wb = internal constant { [9 x [2 x i16]], [60 x i8] } { [9 x [2 x i16]] [[2 x i16] [i16 2, i16 1], [2 x i16] [i16 3, i16 2], [2 x i16] [i16 4, i16 3], [2 x i16] [i16 5, i16 7], [2 x i16] [i16 6, i16 4], [2 x i16] [i16 7, i16 9], [2 x i16] [i16 8, i16 5], [2 x i16] [i16 9, i16 6], [2 x i16] [i16 1, i16 1]], [60 x i8] zeroinitializer }, align 32
@m5mols_set_white_balance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: Setting white balance to: %#x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"m5mols_set_white_balance\00", [39 x i8] zeroinitializer }, align 32
@m5mols_set_white_balance._entry_ptr = internal global ptr @m5mols_set_white_balance._entry, section ".printk_index", align 4
@m5mols_set_color_effect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017%s: p_effect: %#x, m_effect: %#x, r: %#x, b: %#x (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"m5mols_set_color_effect\00", [40 x i8] zeroinitializer }, align 32
@m5mols_set_color_effect._entry_ptr = internal global ptr @m5mols_set_color_effect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 10094872, i64 10094875]
@__sancov_gen_cov_switch_values.18 = internal global [12 x i64] [i64 10, i64 32, i64 9963778, i64 9963807, i64 10094849, i64 10094861, i64 10094868, i64 10094869, i64 10094870, i64 10094871, i64 10094875, i64 10291459]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.21 = private unnamed_addr constant [25 x i8] c"m5mols_default_scenemode\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 20, i32 32 }
@___asan_gen_.24 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 550, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"m5mols_ctrl_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 520, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"ev_bias_qmenu\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 532, i32 18 }
@___asan_gen_.36 = private unnamed_addr constant [10 x i8] c"iso_qmenu\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 526, i32 18 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 606, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 407, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 463, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 252, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 269, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 278, i32 30 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 298, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [46 x i8] c"../drivers/media/i2c/m5mols/m5mols_controls.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 358, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @m5mols_g_volatile_ctrl._entry, ptr @m5mols_g_volatile_ctrl._entry_ptr, ptr @m5mols_init_controls._entry, ptr @m5mols_init_controls._entry_ptr, ptr @m5mols_s_ctrl._entry, ptr @m5mols_s_ctrl._entry_ptr, ptr @m5mols_set_color_effect._entry, ptr @m5mols_set_color_effect._entry_ptr, ptr @m5mols_set_exposure._entry, ptr @m5mols_set_exposure._entry.11, ptr @m5mols_set_exposure._entry_ptr, ptr @m5mols_set_exposure._entry_ptr.13, ptr @m5mols_set_white_balance._entry, ptr @m5mols_set_white_balance._entry_ptr, ptr @m5mols_default_scenemode, ptr @m5mols_init_controls._key, ptr @.str.1, ptr @m5mols_ctrl_ops, ptr @ev_bias_qmenu, ptr @iso_qmenu, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @m5mols_set_white_balance.wb, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_default_scenemode to i32), i32 238, i32 288, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ev_bias_qmenu to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iso_qmenu to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_g_volatile_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_set_exposure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_set_exposure._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_set_white_balance.wb to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_set_white_balance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5mols_set_color_effect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @m5mols_do_scenemode(ptr noundef %info, i8 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sd1 = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 1
  %idxprom = zext i8 %mode to i32
  %arrayidx = getelementptr [14 x %struct.m5mols_scenemode], ptr @m5mols_default_scenemode, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %scenemode.sroa.0.0.copyload = load i8, ptr %arrayidx, align 1
  %scenemode.sroa.5.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 1
  %1 = ptrtoint ptr %scenemode.sroa.5.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %scenemode.sroa.5.0.copyload = load i8, ptr %scenemode.sroa.5.0.arrayidx.sroa_idx, align 1
  %scenemode.sroa.7.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 2
  %2 = ptrtoint ptr %scenemode.sroa.7.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %scenemode.sroa.7.0.copyload = load i8, ptr %scenemode.sroa.7.0.arrayidx.sroa_idx, align 1
  %scenemode.sroa.9.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 3
  %3 = ptrtoint ptr %scenemode.sroa.9.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %scenemode.sroa.9.0.copyload = load i8, ptr %scenemode.sroa.9.0.arrayidx.sroa_idx, align 1
  %scenemode.sroa.11.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %4 = ptrtoint ptr %scenemode.sroa.11.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %scenemode.sroa.11.0.copyload = load i8, ptr %scenemode.sroa.11.0.arrayidx.sroa_idx, align 1
  %scenemode.sroa.13.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 5
  %5 = ptrtoint ptr %scenemode.sroa.13.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %scenemode.sroa.13.0.copyload = load i8, ptr %scenemode.sroa.13.0.arrayidx.sroa_idx, align 1
  %scenemode.sroa.15.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 6
  %6 = ptrtoint ptr %scenemode.sroa.15.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %scenemode.sroa.15.0.copyload = load i8, ptr %scenemode.sroa.15.0.arrayidx.sroa_idx, align 1
  %scenemode.sroa.17.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 7
  %7 = ptrtoint ptr %scenemode.sroa.17.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %scenemode.sroa.17.0.copyload = load i8, ptr %scenemode.sroa.17.0.arrayidx.sroa_idx, align 1
  %scenemode.sroa.19.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %8 = ptrtoint ptr %scenemode.sroa.19.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %scenemode.sroa.19.0.copyload = load i8, ptr %scenemode.sroa.19.0.arrayidx.sroa_idx, align 1
  %scenemode.sroa.21.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 9
  %9 = ptrtoint ptr %scenemode.sroa.21.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %scenemode.sroa.21.0.copyload = load i8, ptr %scenemode.sroa.21.0.arrayidx.sroa_idx, align 1
  %scenemode.sroa.23.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 10
  %10 = ptrtoint ptr %scenemode.sroa.23.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %scenemode.sroa.23.0.copyload = load i8, ptr %scenemode.sroa.23.0.arrayidx.sroa_idx, align 1
  %scenemode.sroa.25.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 11
  %11 = ptrtoint ptr %scenemode.sroa.25.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %scenemode.sroa.25.0.copyload = load i8, ptr %scenemode.sroa.25.0.arrayidx.sroa_idx, align 1
  %scenemode.sroa.27.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 12
  %12 = ptrtoint ptr %scenemode.sroa.27.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %scenemode.sroa.27.0.copyload = load i8, ptr %scenemode.sroa.27.0.arrayidx.sroa_idx, align 1
  %scenemode.sroa.29.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 13
  %13 = ptrtoint ptr %scenemode.sroa.29.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %scenemode.sroa.29.0.copyload = load i8, ptr %scenemode.sroa.29.0.arrayidx.sroa_idx, align 1
  %scenemode.sroa.31.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 14
  %14 = ptrtoint ptr %scenemode.sroa.31.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %scenemode.sroa.31.0.copyload = load i8, ptr %scenemode.sroa.31.0.arrayidx.sroa_idx, align 1
  %scenemode.sroa.33.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 15
  %15 = ptrtoint ptr %scenemode.sroa.33.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %scenemode.sroa.33.0.copyload = load i8, ptr %scenemode.sroa.33.0.arrayidx.sroa_idx, align 1
  %scenemode.sroa.35.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 16
  %16 = ptrtoint ptr %scenemode.sroa.35.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %scenemode.sroa.35.0.copyload = load i8, ptr %scenemode.sroa.35.0.arrayidx.sroa_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %mode)
  %cmp = icmp ugt i8 %mode, 13
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock_3a = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 9
  %17 = ptrtoint ptr %lock_3a to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lock_3a, align 4
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %22, i32 noundef 0) #4
  %call.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %18, i32 noundef 0) #4
  %23 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lock.i2.i, align 4
  tail call void @mutex_unlock(ptr noundef %26) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call5 = tail call i32 @m5mols_write(ptr noundef %sd1, i32 noundef 199169, i32 noundef %idxprom) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool7.not = icmp eq i32 %call5, 0
  br i1 %tobool7.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call10 = tail call i32 @m5mols_write(ptr noundef %sd1, i32 noundef 199425, i32 noundef %idxprom) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool12.not = icmp eq i32 %call10, 0
  br i1 %tobool12.not, label %if.end16, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %conv14 = zext i8 %scenemode.sroa.0.0.copyload to i32
  %call15 = tail call i32 @m5mols_write(ptr noundef %sd1, i32 noundef 196865, i32 noundef %conv14) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool17.not = icmp eq i32 %call15, 0
  br i1 %tobool17.not, label %if.end21, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %conv19 = zext i8 %scenemode.sroa.5.0.copyload to i32
  %call20 = tail call i32 @m5mols_write(ptr noundef %sd1, i32 noundef 210945, i32 noundef %conv19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool22.not = icmp eq i32 %call20, 0
  br i1 %tobool22.not, label %if.end26, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %conv24 = zext i8 %scenemode.sroa.7.0.copyload to i32
  %call25 = tail call i32 @m5mols_write(ptr noundef %sd1, i32 noundef 393729, i32 noundef %conv24) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool27.not = icmp eq i32 %call25, 0
  br i1 %tobool27.not, label %if.end31, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %conv29 = zext i8 %scenemode.sroa.9.0.copyload to i32
  %call30 = tail call i32 @m5mols_write(ptr noundef %sd1, i32 noundef 393985, i32 noundef %conv29) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool32.not = icmp eq i32 %call30, 0
  br i1 %tobool32.not, label %if.end36, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %conv34 = zext i8 %scenemode.sroa.11.0.copyload to i32
  %call35 = tail call i32 @m5mols_write(ptr noundef %sd1, i32 noundef 135169, i32 noundef %conv34) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool37.not = icmp eq i32 %call35, 0
  br i1 %tobool37.not, label %if.end41, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end41:                                         ; preds = %if.end36
  %conv39 = zext i8 %scenemode.sroa.13.0.copyload to i32
  %call40 = tail call i32 @m5mols_write(ptr noundef %sd1, i32 noundef 134913, i32 noundef %conv39) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool42.not = icmp eq i32 %call40, 0
  br i1 %tobool42.not, label %if.end46, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end46:                                         ; preds = %if.end41
  %conv44 = zext i8 %scenemode.sroa.15.0.copyload to i32
  %call45 = tail call i32 @m5mols_write(ptr noundef %sd1, i32 noundef 135681, i32 noundef %conv44) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool47.not = icmp eq i32 %call45, 0
  br i1 %tobool47.not, label %if.end51, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end51:                                         ; preds = %if.end46
  %conv49 = zext i8 %scenemode.sroa.17.0.copyload to i32
  %call50 = tail call i32 @m5mols_write(ptr noundef %sd1, i32 noundef 135425, i32 noundef %conv49) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool52.not = icmp eq i32 %call50, 0
  br i1 %tobool52.not, label %land.lhs.true, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end51
  %af = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 20, i32 7
  %27 = ptrtoint ptr %af to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %af, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool54.not = icmp eq i8 %28, 0
  br i1 %tobool54.not, label %land.lhs.true.if.end73_crit_edge, label %if.end58

land.lhs.true.if.end73_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end73

if.end58:                                         ; preds = %land.lhs.true
  %conv56 = zext i8 %scenemode.sroa.19.0.copyload to i32
  %call57 = tail call i32 @m5mols_write(ptr noundef %sd1, i32 noundef 655617, i32 noundef %conv56) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool59.not = icmp eq i32 %call57, 0
  br i1 %tobool59.not, label %land.lhs.true60, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true60:                                  ; preds = %if.end58
  %29 = ptrtoint ptr %af to i32
  call void @__asan_load1_noabort(i32 %29)
  %.pr = load i8, ptr %af, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool64.not = icmp eq i8 %.pr, 0
  br i1 %tobool64.not, label %land.lhs.true60.if.end73_crit_edge, label %if.end68

land.lhs.true60.if.end73_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end73

if.end68:                                         ; preds = %land.lhs.true60
  %conv66 = zext i8 %scenemode.sroa.21.0.copyload to i32
  %call67 = tail call i32 @m5mols_write(ptr noundef %sd1, i32 noundef 589825, i32 noundef %conv66) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool69.not = icmp eq i32 %call67, 0
  br i1 %tobool69.not, label %if.end68.if.end73_crit_edge, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end68.if.end73_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end73

if.end73:                                         ; preds = %if.end68.if.end73_crit_edge, %land.lhs.true60.if.end73_crit_edge, %land.lhs.true.if.end73_crit_edge
  %conv71 = zext i8 %scenemode.sroa.29.0.copyload to i32
  %call72 = tail call i32 @m5mols_write(ptr noundef %sd1, i32 noundef 140545, i32 noundef %conv71) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool74.not = icmp eq i32 %call72, 0
  br i1 %tobool74.not, label %if.end78, label %if.end73.cleanup_crit_edge

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end78:                                         ; preds = %if.end73
  %conv76 = zext i8 %scenemode.sroa.31.0.copyload to i32
  %call77 = tail call i32 @m5mols_write(ptr noundef %sd1, i32 noundef 197889, i32 noundef %conv76) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool79.not = icmp eq i32 %call77, 0
  br i1 %tobool79.not, label %if.end82, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end82:                                         ; preds = %if.end78
  %call81 = tail call i32 @m5mols_set_mode(ptr noundef %info, i8 noundef zeroext 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool83.not = icmp eq i32 %call81, 0
  br i1 %tobool83.not, label %if.end87, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end87:                                         ; preds = %if.end82
  %conv85 = zext i8 %scenemode.sroa.35.0.copyload to i32
  %call86 = tail call i32 @m5mols_write(ptr noundef %sd1, i32 noundef 732161, i32 noundef %conv85) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool88.not = icmp eq i32 %call86, 0
  br i1 %tobool88.not, label %if.end92, label %if.end87.cleanup_crit_edge

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end92:                                         ; preds = %if.end87
  %conv90 = zext i8 %scenemode.sroa.23.0.copyload to i32
  %call91 = tail call i32 @m5mols_write(ptr noundef %sd1, i32 noundef 728321, i32 noundef %conv90) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool93.not = icmp eq i32 %call91, 0
  br i1 %tobool93.not, label %if.end97, label %if.end92.cleanup_crit_edge

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end97:                                         ; preds = %if.end92
  %conv95 = zext i8 %scenemode.sroa.25.0.copyload to i32
  %call96 = tail call i32 @m5mols_write(ptr noundef %sd1, i32 noundef 737281, i32 noundef %conv95) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool98.not = icmp eq i32 %call96, 0
  br i1 %tobool98.not, label %if.end102, label %if.end97.cleanup_crit_edge

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end102:                                        ; preds = %if.end97
  %conv100 = zext i8 %scenemode.sroa.27.0.copyload to i32
  %call101 = tail call i32 @m5mols_write(ptr noundef %sd1, i32 noundef 737537, i32 noundef %conv100) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool103.not = icmp eq i32 %call101, 0
  br i1 %tobool103.not, label %if.end107, label %if.end102.cleanup_crit_edge

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end107:                                        ; preds = %if.end102
  %conv105 = zext i8 %scenemode.sroa.33.0.copyload to i32
  %call106 = tail call i32 @m5mols_write(ptr noundef %sd1, i32 noundef 786433, i32 noundef %conv105) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool108.not = icmp eq i32 %call106, 0
  br i1 %tobool108.not, label %if.then109, label %if.end107.cleanup_crit_edge

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then109:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #6
  %call110 = tail call i32 @m5mols_set_mode(ptr noundef %info, i8 noundef zeroext 2) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then109, %if.end107.cleanup_crit_edge, %if.end102.cleanup_crit_edge, %if.end97.cleanup_crit_edge, %if.end92.cleanup_crit_edge, %if.end87.cleanup_crit_edge, %if.end82.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %if.end73.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call106, %if.end107.cleanup_crit_edge ], [ %call110, %if.then109 ], [ %call101, %if.end102.cleanup_crit_edge ], [ %call96, %if.end97.cleanup_crit_edge ], [ %call91, %if.end92.cleanup_crit_edge ], [ %call86, %if.end87.cleanup_crit_edge ], [ %call81, %if.end82.cleanup_crit_edge ], [ %call77, %if.end78.cleanup_crit_edge ], [ %call72, %if.end73.cleanup_crit_edge ], [ %call67, %if.end68.cleanup_crit_edge ], [ %call57, %if.end58.cleanup_crit_edge ], [ %call50, %if.end51.cleanup_crit_edge ], [ %call45, %if.end46.cleanup_crit_edge ], [ %call40, %if.end41.cleanup_crit_edge ], [ %call35, %if.end36.cleanup_crit_edge ], [ %call30, %if.end31.cleanup_crit_edge ], [ %call25, %if.end26.cleanup_crit_edge ], [ %call20, %if.end21.cleanup_crit_edge ], [ %call15, %if.end16.cleanup_crit_edge ], [ %call10, %if.end11.cleanup_crit_edge ], [ %call5, %if.end6.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m5mols_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m5mols_set_mode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @m5mols_init_controls(ptr noundef %sd) local_unnamed_addr #0 align 64 {
entry:
  %exposure_max = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %exposure_max) #4
  %0 = ptrtoint ptr %exposure_max to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %exposure_max, align 2, !annotation !59
  %call1 = call i32 @m5mols_read_u16(ptr noundef %sd, i32 noundef 203266, ptr noundef nonnull %exposure_max) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %str = getelementptr i8, ptr %sd, i32 730
  %1 = ptrtoint ptr %str to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %str, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %2)
  %cmp3 = icmp eq i8 %2, 79
  br i1 %cmp3, label %land.rhs, label %if.end.land.end_crit_edge

if.end.land.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx7 = getelementptr i8, ptr %sd, i32 731
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %4)
  %cmp10 = icmp eq i8 %4, 80
  %phi.cast = select i1 %cmp10, i16 31, i16 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.land.end_crit_edge
  %5 = phi i16 [ 1, %if.end.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %handle = getelementptr i8, ptr %sd, i32 284
  %call13 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %handle, i32 noundef 20, ptr noundef nonnull @m5mols_init_controls._key, ptr noundef nonnull @.str.1) #4
  %call15 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %handle, ptr noundef nonnull @m5mols_ctrl_ops, i32 noundef 10094868, i8 noundef zeroext 9, i64 noundef -1023, i8 noundef zeroext 1) #4
  %auto_wb = getelementptr i8, ptr %sd, i32 492
  %6 = ptrtoint ptr %auto_wb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call15, ptr %auto_wb, align 4
  %call17 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %handle, ptr noundef nonnull @m5mols_ctrl_ops, i32 noundef 10094849, i8 noundef zeroext 1, i64 noundef -4, i8 noundef zeroext 0) #4
  %7 = getelementptr i8, ptr %sd, i32 468
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call17, ptr %7, align 4
  %9 = ptrtoint ptr %exposure_max to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %exposure_max, align 2
  %conv19 = zext i16 %10 to i64
  %11 = lshr i16 %10, 1
  %12 = zext i16 %11 to i64
  %call22 = call ptr @v4l2_ctrl_new_std(ptr noundef %handle, ptr noundef nonnull @m5mols_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef %conv19, i64 noundef 1, i64 noundef %12) #4
  %exposure = getelementptr i8, ptr %sd, i32 476
  %13 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call22, ptr %exposure, align 4
  %call24 = call ptr @v4l2_ctrl_new_int_menu(ptr noundef %handle, ptr noundef nonnull @m5mols_ctrl_ops, i32 noundef 10094867, i8 noundef zeroext 8, i8 noundef zeroext 3, ptr noundef nonnull @ev_bias_qmenu) #4
  %exposure_bias = getelementptr i8, ptr %sd, i32 472
  %14 = ptrtoint ptr %exposure_bias to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call24, ptr %exposure_bias, align 4
  %call26 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %handle, ptr noundef nonnull @m5mols_ctrl_ops, i32 noundef 10094873, i8 noundef zeroext 2, i64 noundef -8, i8 noundef zeroext 0) #4
  %metering = getelementptr i8, ptr %sd, i32 480
  %15 = ptrtoint ptr %metering to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call26, ptr %metering, align 4
  %call28 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %handle, ptr noundef nonnull @m5mols_ctrl_ops, i32 noundef 10094872, i8 noundef zeroext 1, i64 noundef -4, i8 noundef zeroext 1) #4
  %16 = getelementptr i8, ptr %sd, i32 484
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call28, ptr %16, align 4
  %call30 = call ptr @v4l2_ctrl_new_int_menu(ptr noundef %handle, ptr noundef nonnull @m5mols_ctrl_ops, i32 noundef 10094871, i8 noundef zeroext 6, i8 noundef zeroext 2, ptr noundef nonnull @iso_qmenu) #4
  %iso = getelementptr i8, ptr %sd, i32 488
  %18 = ptrtoint ptr %iso to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call30, ptr %iso, align 4
  %call32 = call ptr @v4l2_ctrl_new_std(ptr noundef %handle, ptr noundef nonnull @m5mols_ctrl_ops, i32 noundef 9963778, i64 noundef 1, i64 noundef 5, i64 noundef 1, i64 noundef 3) #4
  %saturation = getelementptr i8, ptr %sd, i32 504
  %19 = ptrtoint ptr %saturation to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call32, ptr %saturation, align 4
  %conv34 = zext i16 %5 to i64
  %call35 = call ptr @v4l2_ctrl_new_std(ptr noundef %handle, ptr noundef nonnull @m5mols_ctrl_ops, i32 noundef 10094861, i64 noundef 1, i64 noundef 70, i64 noundef %conv34, i64 noundef 1) #4
  %zoom = getelementptr i8, ptr %sd, i32 508
  %20 = ptrtoint ptr %zoom to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call35, ptr %zoom, align 4
  %call37 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %handle, ptr noundef nonnull @m5mols_ctrl_ops, i32 noundef 9963807, i8 noundef zeroext 4, i64 noundef 0, i8 noundef zeroext 0) #4
  %colorfx = getelementptr i8, ptr %sd, i32 500
  %21 = ptrtoint ptr %colorfx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call37, ptr %colorfx, align 4
  %call39 = call ptr @v4l2_ctrl_new_std(ptr noundef %handle, ptr noundef nonnull @m5mols_ctrl_ops, i32 noundef 10094869, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #4
  %wdr = getelementptr i8, ptr %sd, i32 512
  %22 = ptrtoint ptr %wdr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call39, ptr %wdr, align 4
  %call41 = call ptr @v4l2_ctrl_new_std(ptr noundef %handle, ptr noundef nonnull @m5mols_ctrl_ops, i32 noundef 10094870, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #4
  %stabilization = getelementptr i8, ptr %sd, i32 516
  %23 = ptrtoint ptr %stabilization to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call41, ptr %stabilization, align 4
  %call43 = call ptr @v4l2_ctrl_new_std(ptr noundef %handle, ptr noundef nonnull @m5mols_ctrl_ops, i32 noundef 10291459, i64 noundef 1, i64 noundef 100, i64 noundef 1, i64 noundef 80) #4
  %jpeg_quality = getelementptr i8, ptr %sd, i32 520
  %24 = ptrtoint ptr %jpeg_quality to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call43, ptr %jpeg_quality, align 4
  %call45 = call ptr @v4l2_ctrl_new_std(ptr noundef %handle, ptr noundef nonnull @m5mols_ctrl_ops, i32 noundef 10094875, i64 noundef 0, i64 noundef 7, i64 noundef 0, i64 noundef 0) #4
  %lock_3a = getelementptr i8, ptr %sd, i32 496
  %25 = ptrtoint ptr %lock_3a to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call45, ptr %lock_3a, align 4
  %error = getelementptr i8, ptr %sd, i32 416
  %26 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not = icmp eq i32 %27, 0
  br i1 %tobool.not, label %if.end54, label %if.then47

if.then47:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %27) #7
  call void @v4l2_ctrl_handler_free(ptr noundef %handle) #4
  br label %cleanup

if.end54:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @v4l2_ctrl_auto_cluster(i32 noundef 4, ptr noundef %7, i8 noundef zeroext 1, i1 noundef zeroext false) #4
  %28 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %16, align 4
  %flags = getelementptr inbounds %struct.v4l2_ctrl, ptr %29, i32 0, i32 20
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  %or = or i32 %31, 136
  store i32 %or, ptr %flags, align 4
  call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %16, i8 noundef zeroext 0, i1 noundef zeroext false) #4
  %32 = ptrtoint ptr %lock_3a to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lock_3a, align 4
  %flags59 = getelementptr inbounds %struct.v4l2_ctrl, ptr %33, i32 0, i32 20
  %34 = ptrtoint ptr %flags59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags59, align 4
  %or60 = or i32 %35, 128
  store i32 %or60, ptr %flags59, align 4
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %7, align 4
  %priv.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %37, i32 0, i32 21
  %38 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 1 to ptr), ptr %priv.i, align 8
  %39 = ptrtoint ptr %auto_wb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %auto_wb, align 4
  %priv.i114 = getelementptr inbounds %struct.v4l2_ctrl, ptr %40, i32 0, i32 21
  %41 = ptrtoint ptr %priv.i114 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 1 to ptr), ptr %priv.i114, align 8
  %42 = ptrtoint ptr %colorfx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %colorfx, align 4
  %priv.i115 = getelementptr inbounds %struct.v4l2_ctrl, ptr %43, i32 0, i32 21
  %44 = ptrtoint ptr %priv.i115 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 2 to ptr), ptr %priv.i115, align 8
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 8
  %45 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %handle, ptr %ctrl_handler, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then47, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %27, %if.then47 ], [ 0, %if.end54 ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %exposure_max) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m5mols_read_u16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_int_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m5mols_g_volatile_ctrl(ptr nocapture noundef %ctrl) #0 align 64 {
entry:
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %sd.i = getelementptr i8, ptr %1, i32 -284
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #4
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %status, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @m5mols_debug to i32))
  %3 = load i32, ptr @m5mols_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr i8, ptr %1, i32 -168
  %name3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 9
  %4 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name3, align 4
  %isp_ready = getelementptr i8, ptr %1, i32 516
  %6 = ptrtoint ptr %isp_ready to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %isp_ready, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name, ptr noundef nonnull @.str.6, ptr noundef %5, i32 noundef %bf.cast) #7
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %isp_ready7 = getelementptr i8, ptr %1, i32 516
  %7 = ptrtoint ptr %isp_ready7 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load8 = load i8, ptr %isp_ready7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load8)
  %tobool.not = icmp sgt i8 %bf.load8, -1
  br i1 %tobool.not, label %do.end6.cleanup_crit_edge, label %if.end12

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %do.end6
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end12.cleanup_crit_edge [
    i32 10094872, label %sw.bb
    i32 10094875, label %sw.bb24
  ]

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end12
  %call13 = call i32 @m5mols_read_u8(ptr noundef %sd.i, i32 noundef 197889, ptr noundef nonnull %status) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %status, align 1
  br i1 %cmp14, label %if.then15, label %sw.bb.if.end17_crit_edge

sw.bb.if.end17_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then15:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool16.not = icmp eq i8 %12, 0
  %lnot.ext = zext i1 %tobool16.not to i32
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %lnot.ext, ptr %val, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %sw.bb.if.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp18.not = icmp eq i8 %12, 0
  br i1 %cmp18.not, label %if.end17.cleanup_crit_edge, label %if.then20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %12 to i32
  %sub = add nsw i32 %conv, -1
  %iso = getelementptr i8, ptr %1, i32 204
  %14 = ptrtoint ptr %iso to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iso, align 4
  %val22 = getelementptr inbounds %struct.v4l2_ctrl, ptr %15, i32 0, i32 22
  %16 = ptrtoint ptr %val22 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub, ptr %val22, align 4
  br label %cleanup

sw.bb24:                                          ; preds = %if.end12
  %val25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %17 = ptrtoint ptr %val25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val25, align 4
  %and = and i32 %18, -8
  store i32 %and, ptr %val25, align 4
  %call26 = call i32 @m5mols_read_u8(ptr noundef %sd.i, i32 noundef 196609, ptr noundef nonnull %status) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %sw.bb24.cleanup_crit_edge

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end29:                                         ; preds = %sw.bb24
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool30.not = icmp eq i8 %20, 0
  br i1 %tobool30.not, label %if.end29.if.end33_crit_edge, label %if.then31

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  %lock_3a = getelementptr i8, ptr %1, i32 212
  %21 = ptrtoint ptr %lock_3a to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lock_3a, align 4
  %val32 = getelementptr inbounds %struct.v4l2_ctrl, ptr %22, i32 0, i32 22
  %23 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val32, align 4
  %or = or i32 %24, 1
  store i32 %or, ptr %val32, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end29.if.end33_crit_edge
  %call34 = call i32 @m5mols_read_u8(ptr noundef %sd.i, i32 noundef 393217, ptr noundef nonnull %status) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool38.not = icmp eq i8 %26, 0
  br i1 %tobool38.not, label %if.end37.if.end43_crit_edge, label %if.then39

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  %lock_3a40 = getelementptr i8, ptr %1, i32 212
  %27 = ptrtoint ptr %lock_3a40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lock_3a40, align 4
  %val41 = getelementptr inbounds %struct.v4l2_ctrl, ptr %28, i32 0, i32 22
  %29 = ptrtoint ptr %val41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val41, align 4
  %or42 = or i32 %30, 1
  store i32 %or42, ptr %val41, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end37.if.end43_crit_edge
  %call44 = call i32 @m5mols_read_u8(ptr noundef %sd.i, i32 noundef 655873, ptr noundef nonnull %status) #4
  %31 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool45.not = icmp eq i8 %32, 0
  br i1 %tobool45.not, label %if.then46, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  %lock_3a47 = getelementptr i8, ptr %1, i32 212
  %33 = ptrtoint ptr %lock_3a47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lock_3a47, align 4
  %val48 = getelementptr inbounds %struct.v4l2_ctrl, ptr %34, i32 0, i32 22
  %35 = ptrtoint ptr %val48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val48, align 4
  %or49 = or i32 %36, 1
  store i32 %or49, ptr %val48, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %if.end43.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %sw.bb24.cleanup_crit_edge, %if.then20, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end6.cleanup_crit_edge ], [ %call26, %sw.bb24.cleanup_crit_edge ], [ %call34, %if.end33.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ %call44, %if.end43.cleanup_crit_edge ], [ %call44, %if.then46 ], [ %call13, %if.then20 ], [ %call13, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m5mols_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 21
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %3 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %handler.i, align 8
  %sd.i = getelementptr i8, ptr %4, i32 -284
  %add.ptr.i = getelementptr i8, ptr %4, i32 -288
  %mode = getelementptr i8, ptr %4, i32 518
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mode, align 2
  %isp_ready = getelementptr i8, ptr %4, i32 516
  %7 = ptrtoint ptr %isp_ready to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %isp_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %bf.clear = and i8 %bf.load, -33
  %8 = ptrtoint ptr %isp_ready to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bf.clear, ptr %isp_ready, align 4
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @m5mols_debug to i32))
  %9 = load i32, ptr @m5mols_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %do.end, label %do.body.do.end11_crit_edge

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr i8, ptr %4, i32 -168
  %name7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 9
  %10 = ptrtoint ptr %name7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name7, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name, ptr noundef nonnull @.str.8, ptr noundef %11, i32 noundef %13, ptr noundef %1) #7
  br label %do.end11

do.end11:                                         ; preds = %do.end, %do.body.do.end11_crit_edge
  %tobool12.not = icmp eq ptr %1, null
  br i1 %tobool12.not, label %do.end11.if.end24_crit_edge, label %land.lhs.true

do.end11.if.end24_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

land.lhs.true:                                    ; preds = %do.end11
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mode, align 2
  %conv14 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv14)
  %cmp15.not = icmp eq i32 %2, %conv14
  br i1 %cmp15.not, label %land.lhs.true.if.end24_crit_edge, label %if.then17

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then17:                                        ; preds = %land.lhs.true
  %conv18 = trunc i32 %2 to i8
  %call19 = tail call i32 @m5mols_set_mode(ptr noundef %add.ptr.i, i8 noundef zeroext %conv18) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then17.cleanup_crit_edge, label %if.then17.if.end24_crit_edge

if.then17.if.end24_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24:                                         ; preds = %if.then17.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge, %do.end11.if.end24_crit_edge
  %ret.0 = phi i32 [ %call19, %if.then17.if.end24_crit_edge ], [ 0, %land.lhs.true.if.end24_crit_edge ], [ 0, %do.end11.if.end24_crit_edge ]
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %17, label %if.end24.sw.epilog_crit_edge [
    i32 10094875, label %sw.bb
    i32 10094861, label %sw.bb26
    i32 10094849, label %sw.bb29
    i32 10094871, label %sw.bb32
    i32 10094868, label %sw.bb35
    i32 9963778, label %sw.bb38
    i32 9963807, label %sw.bb41
    i32 10094869, label %sw.bb44
    i32 10094870, label %sw.bb47
    i32 10291459, label %sw.bb50
  ]

if.end24.sw.epilog_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %call25 = tail call fastcc i32 @m5mols_3a_lock(ptr noundef %add.ptr.i, ptr noundef %ctrl)
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %val27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %19 = ptrtoint ptr %val27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val27, align 4
  %call28 = tail call i32 @m5mols_write(ptr noundef %sd.i, i32 noundef 131329, i32 noundef %20) #4
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end24
  %val30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %21 = ptrtoint ptr %val30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val30, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %22, label %sw.bb29.land.lhs.true55_crit_edge [
    i32 0, label %if.then.i
    i32 1, label %if.then22.i
  ]

sw.bb29.land.lhs.true55_crit_edge:                ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true55

if.then.i:                                        ; preds = %sw.bb29
  %lock_3a.i = getelementptr i8, ptr %4, i32 212
  %24 = ptrtoint ptr %lock_3a.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lock_3a.i, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %25, i32 0, i32 22
  %26 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.i, align 4
  %and.i = and i32 %27, -2
  store i32 %and.i, ptr %val.i, align 4
  %28 = load ptr, ptr %lock_3a.i, align 4
  %call.i = tail call fastcc i32 @m5mols_3a_lock(ptr noundef %add.ptr.i, ptr noundef %28) #4
  %metering.i = getelementptr i8, ptr %4, i32 196
  %29 = ptrtoint ptr %metering.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %metering.i, align 4
  %val3.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %30, i32 0, i32 22
  %31 = ptrtoint ptr %val3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %switch.selectcmp.i.i = icmp eq i32 %32, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 6, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %switch.selectcmp2.i.i = icmp eq i32 %32, 1
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 3, i32 %switch.select.i.i
  %call.i.i = tail call i32 @m5mols_write(ptr noundef %sd.i, i32 noundef 196865, i32 noundef %switch.select3.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp5.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp5.i, label %if.then.i.cleanup_crit_edge, label %do.body.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body.i:                                        ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @m5mols_debug to i32))
  %33 = load i32, ptr @m5mols_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp7.i = icmp sgt i32 %33, 0
  br i1 %cmp7.i, label %do.end.i, label %do.body.i.do.end16.i_crit_edge

do.body.i.do.end16.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end16.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %name.i = getelementptr i8, ptr %4, i32 -168
  %exposure_bias.i = getelementptr i8, ptr %4, i32 188
  %34 = ptrtoint ptr %exposure_bias.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %exposure_bias.i, align 4
  %val10.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %35, i32 0, i32 22
  %36 = ptrtoint ptr %val10.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val10.i, align 4
  %38 = ptrtoint ptr %metering.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %metering.i, align 4
  %val12.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %39, i32 0, i32 22
  %40 = ptrtoint ptr %val12.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val12.i, align 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name.i, ptr noundef nonnull @.str.10, i32 noundef %37, i32 noundef %41) #7
  br label %do.end16.i

do.end16.i:                                       ; preds = %do.end.i, %do.body.i.do.end16.i_crit_edge
  %exposure_bias17.i = getelementptr i8, ptr %4, i32 188
  %42 = ptrtoint ptr %exposure_bias17.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %exposure_bias17.i, align 4
  %val18.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %43, i32 0, i32 22
  %44 = ptrtoint ptr %val18.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val18.i, align 4
  %call19.i = tail call i32 @m5mols_write(ptr noundef %sd.i, i32 noundef 210945, i32 noundef %45) #4
  br label %sw.epilog

if.then22.i:                                      ; preds = %sw.bb29
  %call23.i = tail call i32 @m5mols_write(ptr noundef %sd.i, i32 noundef 196865, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp eq i32 %call23.i, 0
  br i1 %cmp24.i, label %if.end29.i, label %if.then22.i.do.body36.i_crit_edge

if.then22.i.do.body36.i_crit_edge:                ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body36.i

if.end29.i:                                       ; preds = %if.then22.i
  %exposure26.i = getelementptr i8, ptr %4, i32 192
  %46 = ptrtoint ptr %exposure26.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %exposure26.i, align 4
  %val27.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %47, i32 0, i32 22
  %48 = ptrtoint ptr %val27.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val27.i, align 4
  %call28.i = tail call i32 @m5mols_write(ptr noundef %sd.i, i32 noundef 201218, i32 noundef %49) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp30.i = icmp eq i32 %call28.i, 0
  br i1 %cmp30.i, label %if.then31.i, label %if.end29.i.do.body36.i_crit_edge

if.end29.i.do.body36.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body36.i

if.then31.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %exposure26.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %exposure26.i, align 4
  %val33.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %51, i32 0, i32 22
  %52 = ptrtoint ptr %val33.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val33.i, align 4
  %call34.i = tail call i32 @m5mols_write(ptr noundef %sd.i, i32 noundef 206338, i32 noundef %53) #4
  br label %do.body36.i

do.body36.i:                                      ; preds = %if.then31.i, %if.end29.i.do.body36.i_crit_edge, %if.then22.i.do.body36.i_crit_edge
  %ret.1.i = phi i32 [ %call34.i, %if.then31.i ], [ %call28.i, %if.end29.i.do.body36.i_crit_edge ], [ %call23.i, %if.then22.i.do.body36.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @m5mols_debug to i32))
  %54 = load i32, ptr @m5mols_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp37.i = icmp sgt i32 %54, 0
  br i1 %cmp37.i, label %do.end41.i, label %do.body36.i.sw.epilog_crit_edge

do.body36.i.sw.epilog_crit_edge:                  ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end41.i:                                       ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #6
  %name43.i = getelementptr i8, ptr %4, i32 -168
  %exposure45.i = getelementptr i8, ptr %4, i32 192
  %55 = ptrtoint ptr %exposure45.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %exposure45.i, align 4
  %val46.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %56, i32 0, i32 22
  %57 = ptrtoint ptr %val46.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val46.i, align 4
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name43.i, ptr noundef nonnull @.str.10, i32 noundef %58) #7
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end24
  %val33 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %59 = ptrtoint ptr %val33 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i = icmp eq i32 %60, 0
  br i1 %tobool.not.i, label %cond.false.i, label %sw.bb32.m5mols_set_iso.exit_crit_edge

sw.bb32.m5mols_set_iso.exit_crit_edge:            ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #6
  br label %m5mols_set_iso.exit

cond.false.i:                                     ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #6
  %iso1.i = getelementptr i8, ptr %4, i32 204
  %61 = ptrtoint ptr %iso1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %iso1.i, align 4
  %val.i106 = getelementptr inbounds %struct.v4l2_ctrl, ptr %62, i32 0, i32 22
  %63 = ptrtoint ptr %val.i106 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %val.i106, align 4
  %add.i = add i32 %64, 1
  br label %m5mols_set_iso.exit

m5mols_set_iso.exit:                              ; preds = %cond.false.i, %sw.bb32.m5mols_set_iso.exit_crit_edge
  %cond.i = phi i32 [ %add.i, %cond.false.i ], [ 0, %sw.bb32.m5mols_set_iso.exit_crit_edge ]
  %call.i108 = tail call i32 @m5mols_write(ptr noundef %sd.i, i32 noundef 197889, i32 noundef %cond.i) #4
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end24
  %val36 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %65 = ptrtoint ptr %val36 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %val36, align 4
  %name.i110 = getelementptr i8, ptr %4, i32 -168
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb35
  %retval.054.i = phi i32 [ undef, %sw.bb35 ], [ %retval.149.i, %for.inc.i.for.body.i_crit_edge ]
  %ret.053.i = phi i32 [ -22, %sw.bb35 ], [ %ret.248.i, %for.inc.i.for.body.i_crit_edge ]
  %i.051.i = phi i32 [ 0, %sw.bb35 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [9 x [2 x i16]], ptr @m5mols_set_white_balance.wb, i32 0, i32 %i.051.i
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %68 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %conv.i)
  %cmp3.not.i = icmp eq i32 %66, %conv.i
  br i1 %cmp3.not.i, label %do.body.i112, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

do.body.i112:                                     ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @m5mols_debug to i32))
  %69 = load i32, ptr @m5mols_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp5.i111 = icmp sgt i32 %69, 0
  br i1 %cmp5.i111, label %do.end.i114, label %do.body.i112.do.end14.i_crit_edge

do.body.i112.do.end14.i_crit_edge:                ; preds = %do.body.i112
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end14.i

do.end.i114:                                      ; preds = %do.body.i112
  call void @__sanitizer_cov_trace_pc() #6
  %call.i113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i110, i32 noundef %66) #7
  br label %do.end14.i

do.end14.i:                                       ; preds = %do.end.i114, %do.body.i112.do.end14.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %68)
  %cmp18.i = icmp eq i16 %68, 1
  %cond.i115 = select i1 %cmp18.i, i32 1, i32 2
  %call20.i = tail call i32 @m5mols_write(ptr noundef %sd.i, i32 noundef 393729, i32 noundef %cond.i115) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp slt i32 %call20.i, 0
  %brmerge.i = select i1 %cmp21.i, i1 true, i1 %cmp18.i
  br i1 %brmerge.i, label %cleanup.i, label %if.then26.i

if.then26.i:                                      ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx28.i = getelementptr [9 x [2 x i16]], ptr @m5mols_set_white_balance.wb, i32 0, i32 %i.051.i, i32 1
  %70 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx28.i, align 2
  %conv29.i = zext i16 %71 to i32
  %call30.i = tail call i32 @m5mols_write(ptr noundef %sd.i, i32 noundef 393985, i32 noundef %conv29.i) #4
  br label %for.inc.i

cleanup.i:                                        ; preds = %do.end14.i
  %call20.mux.i = select i1 %cmp21.i, i32 %call20.i, i32 %retval.054.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call20.i)
  %cond50.i = icmp sgt i32 %call20.i, -1
  br i1 %cond50.i, label %cleanup.i.for.inc.i_crit_edge, label %cleanup.i.sw.epilog_crit_edge

cleanup.i.sw.epilog_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

cleanup.i.for.inc.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %cleanup.i.for.inc.i_crit_edge, %if.then26.i, %for.body.i.for.inc.i_crit_edge
  %retval.149.i = phi i32 [ %call20.mux.i, %cleanup.i.for.inc.i_crit_edge ], [ %retval.054.i, %for.body.i.for.inc.i_crit_edge ], [ %retval.054.i, %if.then26.i ]
  %ret.248.i = phi i32 [ %call20.i, %cleanup.i.for.inc.i_crit_edge ], [ %ret.053.i, %for.body.i.for.inc.i_crit_edge ], [ %call30.i, %if.then26.i ]
  %inc.i = add nuw nsw i32 %i.051.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 9
  br i1 %exitcond.not.i, label %for.inc.i.sw.epilog_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.sw.epilog_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end24
  %val39 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %72 = ptrtoint ptr %val39 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %val39, align 4
  %call.i117 = tail call i32 @m5mols_write(ptr noundef %sd.i, i32 noundef 134913, i32 noundef %73) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %cmp.i = icmp slt i32 %call.i117, 0
  br i1 %cmp.i, label %sw.bb38.cleanup_crit_edge, label %if.end.i

sw.bb38.cleanup_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #6
  %call2.i = tail call i32 @m5mols_write(ptr noundef %sd.i, i32 noundef 135169, i32 noundef 1) #4
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end24
  %val42 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %74 = ptrtoint ptr %val42 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %val42, align 4
  %76 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %75, label %sw.bb41.sw.epilog.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 3, label %sw.bb2.i
    i32 4, label %sw.bb3.i
    i32 2, label %sw.bb4.i
  ]

sw.bb41.sw.epilog.i_crit_edge:                    ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb.i, %sw.bb41.sw.epilog.i_crit_edge
  %p_effect.0.i = phi i32 [ 0, %sw.bb41.sw.epilog.i_crit_edge ], [ 0, %sw.bb4.i ], [ 6, %sw.bb3.i ], [ 1, %sw.bb2.i ], [ 0, %sw.bb.i ]
  %cfix_r.0.i = phi i32 [ 0, %sw.bb41.sw.epilog.i_crit_edge ], [ 24, %sw.bb4.i ], [ 0, %sw.bb3.i ], [ 0, %sw.bb2.i ], [ 0, %sw.bb.i ]
  %cfix_b.0.i = phi i32 [ 0, %sw.bb41.sw.epilog.i_crit_edge ], [ 216, %sw.bb4.i ], [ 0, %sw.bb3.i ], [ 0, %sw.bb2.i ], [ 0, %sw.bb.i ]
  %cmp6.i = phi i1 [ true, %sw.bb41.sw.epilog.i_crit_edge ], [ false, %sw.bb4.i ], [ true, %sw.bb3.i ], [ true, %sw.bb2.i ], [ false, %sw.bb.i ]
  %m_effect.0.i = phi i32 [ 0, %sw.bb41.sw.epilog.i_crit_edge ], [ 1, %sw.bb4.i ], [ 0, %sw.bb3.i ], [ 0, %sw.bb2.i ], [ 1, %sw.bb.i ]
  %call.i121 = tail call i32 @m5mols_write(ptr noundef %sd.i, i32 noundef 68353, i32 noundef %p_effect.0.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %tobool.not.i122 = icmp eq i32 %call.i121, 0
  br i1 %tobool.not.i122, label %if.end.i125, label %sw.epilog.i.do.body.i127_crit_edge

sw.epilog.i.do.body.i127_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i127

if.end.i125:                                      ; preds = %sw.epilog.i
  %call5.i = tail call i32 @m5mols_write(ptr noundef %sd.i, i32 noundef 133889, i32 noundef %m_effect.0.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i123 = icmp ne i32 %call5.i, 0
  %brmerge.i124 = or i1 %cmp6.i, %cmp.i123
  br i1 %brmerge.i124, label %if.end.i125.do.body.i127_crit_edge, label %if.then7.i

if.end.i125.do.body.i127_crit_edge:               ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i127

if.then7.i:                                       ; preds = %if.end.i125
  %call8.i = tail call i32 @m5mols_write(ptr noundef %sd.i, i32 noundef 133633, i32 noundef %cfix_r.0.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.then7.i.do.body.i127_crit_edge

if.then7.i.do.body.i127_crit_edge:                ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i127

if.then10.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  %call11.i = tail call i32 @m5mols_write(ptr noundef %sd.i, i32 noundef 133377, i32 noundef %cfix_b.0.i) #4
  br label %do.body.i127

do.body.i127:                                     ; preds = %if.then10.i, %if.then7.i.do.body.i127_crit_edge, %if.end.i125.do.body.i127_crit_edge, %sw.epilog.i.do.body.i127_crit_edge
  %ret.1.i126 = phi i32 [ %call8.i, %if.then7.i.do.body.i127_crit_edge ], [ %call11.i, %if.then10.i ], [ %call5.i, %if.end.i125.do.body.i127_crit_edge ], [ %call.i121, %sw.epilog.i.do.body.i127_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @m5mols_debug to i32))
  %77 = load i32, ptr @m5mols_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp14.i = icmp sgt i32 %77, 0
  br i1 %cmp14.i, label %do.end.i129, label %do.body.i127.sw.epilog_crit_edge

do.body.i127.sw.epilog_crit_edge:                 ; preds = %do.body.i127
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end.i129:                                      ; preds = %do.body.i127
  call void @__sanitizer_cov_trace_pc() #6
  %name.i128 = getelementptr i8, ptr %4, i32 -168
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i128, i32 noundef %p_effect.0.i, i32 noundef %m_effect.0.i, i32 noundef %cfix_r.0.i, i32 noundef %cfix_b.0.i, i32 noundef %ret.1.i126) #7
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end24
  %val45 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %78 = ptrtoint ptr %val45 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i131 = icmp eq i32 %79, 0
  %cond.i132 = select i1 %tobool.not.i131, i32 5, i32 9
  %call.i133 = tail call i32 @m5mols_write(ptr noundef %sd.i, i32 noundef 140545, i32 noundef %cond.i132) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %cmp.i134 = icmp slt i32 %call.i133, 0
  br i1 %cmp.i134, label %sw.bb44.cleanup_crit_edge, label %if.end.i135

sw.bb44.cleanup_crit_edge:                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i135:                                      ; preds = %sw.bb44
  %call1.i = tail call i32 @m5mols_set_mode(ptr noundef %add.ptr.i, i8 noundef zeroext 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i135.cleanup_crit_edge, label %if.end4.i

if.end.i135.cleanup_crit_edge:                    ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #6
  %call6.i = tail call i32 @m5mols_write(ptr noundef %sd.i, i32 noundef 732161, i32 noundef %79) #4
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end24
  %val48 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %80 = ptrtoint ptr %val48 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %val48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i139 = icmp eq i32 %81, 0
  %cond.i140 = select i1 %tobool.not.i139, i32 0, i32 14
  %call.i141 = tail call i32 @m5mols_write(ptr noundef %sd.i, i32 noundef 199169, i32 noundef %cond.i140) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %cmp.i142 = icmp slt i32 %call.i141, 0
  br i1 %cmp.i142, label %sw.bb47.cleanup_crit_edge, label %if.end.i144

sw.bb47.cleanup_crit_edge:                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i144:                                      ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #6
  %call2.i143 = tail call i32 @m5mols_write(ptr noundef %sd.i, i32 noundef 199425, i32 noundef %cond.i140) #4
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %val51 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %82 = ptrtoint ptr %val51 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %val51, align 4
  %call52 = tail call i32 @m5mols_write(ptr noundef %sd.i, i32 noundef 726785, i32 noundef %83) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb50, %if.end.i144, %if.end4.i, %do.end.i129, %do.body.i127.sw.epilog_crit_edge, %if.end.i, %for.inc.i.sw.epilog_crit_edge, %cleanup.i.sw.epilog_crit_edge, %m5mols_set_iso.exit, %do.end41.i, %do.body36.i.sw.epilog_crit_edge, %do.end16.i, %sw.bb26, %sw.bb, %if.end24.sw.epilog_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end24.sw.epilog_crit_edge ], [ %call52, %sw.bb50 ], [ %call.i108, %m5mols_set_iso.exit ], [ %call28, %sw.bb26 ], [ %call25, %sw.bb ], [ %call19.i, %do.end16.i ], [ %ret.1.i, %do.end41.i ], [ %ret.1.i, %do.body36.i.sw.epilog_crit_edge ], [ %call2.i, %if.end.i ], [ %ret.1.i126, %do.body.i127.sw.epilog_crit_edge ], [ %ret.1.i126, %do.end.i129 ], [ %call6.i, %if.end4.i ], [ %call2.i143, %if.end.i144 ], [ %ret.248.i, %for.inc.i.sw.epilog_crit_edge ], [ %call20.mux.i, %cleanup.i.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp53 = icmp eq i32 %ret.1, 0
  br i1 %cmp53, label %sw.epilog.land.lhs.true55_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.epilog.land.lhs.true55_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true55

land.lhs.true55:                                  ; preds = %sw.epilog.land.lhs.true55_crit_edge, %sw.bb29.land.lhs.true55_crit_edge
  %84 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %mode, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %85, i8 %6)
  %cmp58.not = icmp eq i8 %85, %6
  br i1 %cmp58.not, label %land.lhs.true55.cleanup_crit_edge, label %if.then60

land.lhs.true55.cleanup_crit_edge:                ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then60:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #6
  %call62 = tail call i32 @m5mols_set_mode(ptr noundef %add.ptr.i, i8 noundef zeroext %6) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %land.lhs.true55.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb47.cleanup_crit_edge, %if.end.i135.cleanup_crit_edge, %sw.bb44.cleanup_crit_edge, %sw.bb38.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call19, %if.then17.cleanup_crit_edge ], [ %call62, %if.then60 ], [ 0, %land.lhs.true55.cleanup_crit_edge ], [ %ret.1, %sw.epilog.cleanup_crit_edge ], [ %call.i141, %sw.bb47.cleanup_crit_edge ], [ %call1.i, %if.end.i135.cleanup_crit_edge ], [ %call.i133, %sw.bb44.cleanup_crit_edge ], [ %call.i117, %sw.bb38.cleanup_crit_edge ], [ %call.i.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m5mols_read_u8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @m5mols_3a_lock(ptr noundef %info, ptr nocapture noundef readonly %ctrl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 23
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur, align 8
  %xor = xor i32 %3, %1
  %and3 = and i32 %xor, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then:                                          ; preds = %entry
  %and6 = and i32 %1, 1
  %sd = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 1
  %call = tail call i32 @m5mols_write(ptr noundef %sd, i32 noundef 196609, i32 noundef %and6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.then.if.end12_crit_edge, label %if.then.cleanup51_crit_edge

if.then.cleanup51_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup51

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.end12:                                         ; preds = %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %6 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur, align 8
  %xor16 = xor i32 %7, %5
  %and17 = and i32 %xor16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end12.if.end36_crit_edge, label %land.lhs.true

if.end12.if.end36_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end12
  %auto_wb = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 8
  %8 = ptrtoint ptr %auto_wb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %auto_wb, align 4
  %val19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %9, i32 0, i32 22
  %10 = ptrtoint ptr %val19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool20.not = icmp eq i32 %11, 0
  br i1 %tobool20.not, label %land.lhs.true.if.end36_crit_edge, label %if.then21

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then21:                                        ; preds = %land.lhs.true
  %sd26 = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 1
  %and23 = lshr i32 %5, 1
  %and23.lobit = and i32 %and23, 1
  %call29 = tail call i32 @m5mols_write(ptr noundef %sd26, i32 noundef 393217, i32 noundef %and23.lobit) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then21.if.end36_crit_edge, label %if.then21.cleanup51_crit_edge

if.then21.cleanup51_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup51

if.then21.if.end36_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.end36:                                         ; preds = %if.then21.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %if.end12.if.end36_crit_edge
  %af = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 20, i32 7
  %12 = ptrtoint ptr %af to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %af, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool37.not = icmp eq i8 %13, 0
  %brmerge = select i1 %tobool37.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end36.cleanup51_crit_edge, label %if.end40

if.end36.cleanup51_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup51

if.end40:                                         ; preds = %if.end36
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %16 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cur, align 8
  %xor44 = xor i32 %17, %15
  %and45 = and i32 %xor44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end40.cleanup51_crit_edge, label %if.then47

if.end40.cleanup51_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup51

if.then47:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  %sd48 = getelementptr inbounds %struct.m5mols_info, ptr %info, i32 0, i32 1
  %call49 = tail call i32 @m5mols_write(ptr noundef %sd48, i32 noundef 655873, i32 noundef 0) #4
  br label %cleanup51

cleanup51:                                        ; preds = %if.then47, %if.end40.cleanup51_crit_edge, %if.end36.cleanup51_crit_edge, %if.then21.cleanup51_crit_edge, %if.then.cleanup51_crit_edge
  %retval.3 = phi i32 [ %call29, %if.then21.cleanup51_crit_edge ], [ %call, %if.then.cleanup51_crit_edge ], [ 0, %if.end36.cleanup51_crit_edge ], [ %call49, %if.then47 ], [ 0, %if.end40.cleanup51_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/m5mols/m5mols_controls.c", i32 549, i32 14}
!2 = !{ptr @m5mols_init_controls._key, !3, !"_key", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/m5mols/m5mols_controls.c", i32 550, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/m5mols/m5mols_controls.c", i32 606, i32 3}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @m5mols_init_controls._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @m5mols_init_controls._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @m5mols_default_scenemode, !12, !"m5mols_default_scenemode", i1 false, i1 false}
!12 = !{!"../drivers/media/i2c/m5mols/m5mols_controls.c", i32 20, i32 32}
!13 = !{ptr @m5mols_ctrl_ops, !14, !"m5mols_ctrl_ops", i1 false, i1 false}
!14 = !{!"../drivers/media/i2c/m5mols/m5mols_controls.c", i32 520, i32 35}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/m5mols/m5mols_controls.c", i32 407, i32 2}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @m5mols_g_volatile_ctrl._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @m5mols_g_volatile_ctrl._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/m5mols/m5mols_controls.c", i32 463, i32 2}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @m5mols_s_ctrl._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @m5mols_s_ctrl._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/i2c/m5mols/m5mols_controls.c", i32 252, i32 3}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @m5mols_set_exposure._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @m5mols_set_exposure._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/m5mols/m5mols_controls.c", i32 269, i32 3}
!32 = !{ptr @m5mols_set_exposure._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @m5mols_set_exposure._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @m5mols_set_white_balance.wb, !35, !"wb", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/m5mols/m5mols_controls.c", i32 278, i32 30}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/m5mols/m5mols_controls.c", i32 298, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @m5mols_set_white_balance._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @m5mols_set_white_balance._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/m5mols/m5mols_controls.c", i32 358, i32 2}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @m5mols_set_color_effect._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @m5mols_set_color_effect._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @ev_bias_qmenu, !47, !"ev_bias_qmenu", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/m5mols/m5mols_controls.c", i32 532, i32 18}
!48 = !{ptr @iso_qmenu, !49, !"iso_qmenu", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/m5mols/m5mols_controls.c", i32 526, i32 18}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"auto-init"}
