; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/s5c73m3/s5c73m3-ctrls.c_pt.bc'
source_filename = "../drivers/media/i2c/s5c73m3/s5c73m3-ctrls.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.s5c73m3 = type { %struct.v4l2_subdev, [2 x %struct.media_pad], %struct.v4l2_subdev, [3 x %struct.media_pad], %struct.spi_driver, ptr, ptr, i32, i32, [6 x %struct.regulator_bulk_data], [2 x %struct.s5c73m3_gpio], ptr, i32, i32, [2 x ptr], [2 x ptr], i32, ptr, %struct.v4l2_mbus_frame_desc, %struct.mutex, %struct.s5c73m3_ctrls, i8, i16, [8 x i8], [14 x i8], [2 x i8], i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.s5c73m3_gpio = type { i32, i32 }
%struct.v4l2_mbus_frame_desc = type { [4 x %struct.v4l2_mbus_frame_desc_entry], i16 }
%struct.v4l2_mbus_frame_desc_entry = type { i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.s5c73m3_ctrls = type { %struct.v4l2_ctrl_handler, %struct.anon.92, %struct.anon.93, ptr, %struct.anon.94, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.92 = type { ptr, ptr, ptr }
%struct.anon.93 = type { ptr, ptr }
%struct.anon.94 = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.83, %union.anon.84, i32, ptr, i32, %struct.anon.85, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.83 = type { i64 }
%union.anon.84 = type { ptr }
%struct.anon.85 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@s5c73m3_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @s5c73m3_g_volatile_ctrl, ptr null, ptr @s5c73m3_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@s5c73m3_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"s5c73m3_ctrls:449:(hdl)->_lock\00", [33 x i8] zeroinitializer }, align 32
@ev_bias_qmenu = internal constant { [9 x i64], [56 x i8] } { [9 x i64] [i64 -2000, i64 -1500, i64 -1000, i64 -500, i64 0, i64 500, i64 1000, i64 1500, i64 2000], [56 x i8] zeroinitializer }, align 32
@iso_qmenu = internal constant { [4 x i64], [32 x i8] } { [4 x i64] [i64 100, i64 200, i64 400, i64 800], [32 x i8] zeroinitializer }, align 32
@s5c73m3_get_af_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: Unknown AF status %#x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s5c73m3_get_af_status\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/i2c/s5c73m3/s5c73m3-ctrls.c\00", [54 x i8] zeroinitializer }, align 32
@s5c73m3_get_af_status._entry_ptr = internal global ptr @s5c73m3_get_af_status._entry, section ".printk_index", align 4
@s5c73m3_dbg = external dso_local local_unnamed_addr global i32, align 4
@s5c73m3_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: set_ctrl: %s, value: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5c73m3_s_ctrl\00", [17 x i8] zeroinitializer }, align 32
@s5c73m3_s_ctrl._entry_ptr = internal global ptr @s5c73m3_s_ctrl._entry, section ".printk_index", align 4
@s5c73m3_set_white_balance.wb = internal constant { [6 x [2 x i16]], [40 x i8] } { [6 x [2 x i16]] [[2 x i16] [i16 2, i16 0], [2 x i16] [i16 3, i16 1], [2 x i16] [i16 4, i16 2], [2 x i16] [i16 8, i16 4], [2 x i16] [i16 6, i16 3], [2 x i16] [i16 1, i16 5]], [40 x i8] zeroinitializer }, align 32
@s5c73m3_set_white_balance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: Setting white balance to: %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s5c73m3_set_white_balance\00", [38 x i8] zeroinitializer }, align 32
@s5c73m3_set_white_balance._entry_ptr = internal global ptr @s5c73m3_set_white_balance._entry, section ".printk_index", align 4
@s5c73m3_set_colorfx.colorfx = internal constant { [5 x [2 x i16]], [44 x i8] } { [5 x [2 x i16]] [[2 x i16] [i16 0, i16 1], [2 x i16] [i16 1, i16 5], [2 x i16] [i16 2, i16 4], [2 x i16] [i16 3, i16 2], [2 x i16] [i16 10, i16 3]], [44 x i8] zeroinitializer }, align 32
@s5c73m3_set_colorfx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: Setting %s color effect\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s5c73m3_set_colorfx\00", [44 x i8] zeroinitializer }, align 32
@s5c73m3_set_colorfx._entry_ptr = internal global ptr @s5c73m3_set_colorfx._entry, section ".printk_index", align 4
@s5c73m3_set_exposure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: %s: exposure bias: %#x, metering: %#x (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s5c73m3_set_exposure\00", [43 x i8] zeroinitializer }, align 32
@s5c73m3_set_exposure._entry_ptr = internal global ptr @s5c73m3_set_exposure._entry, section ".printk_index", align 4
@s5c73m3_set_stabilization._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: Image stabilization: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s5c73m3_set_stabilization\00", [38 x i8] zeroinitializer }, align 32
@s5c73m3_set_stabilization._entry_ptr = internal global ptr @s5c73m3_set_stabilization._entry, section ".printk_index", align 4
@s5c73m3_set_scene_program.scene_lookup = internal constant { [14 x i16], [36 x i8] } { [14 x i16] [i16 0, i16 10, i16 5, i16 13, i16 7, i16 8, i16 11, i16 2, i16 9, i16 4, i16 1, i16 3, i16 6, i16 12], [36 x i8] zeroinitializer }, align 32
@s5c73m3_set_scene_program._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: Setting %s scene mode\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s5c73m3_set_scene_program\00", [38 x i8] zeroinitializer }, align 32
@s5c73m3_set_scene_program._entry_ptr = internal global ptr @s5c73m3_set_scene_program._entry, section ".printk_index", align 4
@switch.table.s5c73m3_s_ctrl = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 5, i32 0, i32 1, i32 2, i32 0, i32 4, i32 0, i32 3], [32 x i8] zeroinitializer }, align 32
@switch.table.s5c73m3_s_ctrl.16 = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 16, i64 1, i64 2, i64 3, i64 4, i64 16, i64 32, i64 48, i64 64]
@__sancov_gen_cov_switch_values.17 = internal global [17 x i64] [i64 15, i64 32, i64 9963777, i64 9963778, i64 9963800, i64 9963803, i64 9963807, i64 10094849, i64 10094860, i64 10094861, i64 10094868, i64 10094869, i64 10094870, i64 10094871, i64 10094874, i64 10094875, i64 10291459]
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"s5c73m3_ctrl_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 426, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 449, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"ev_bias_qmenu\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 438, i32 18 }
@___asan_gen_.30 = private unnamed_addr constant [10 x i8] c"iso_qmenu\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 432, i32 18 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 48, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 343, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 144, i32 30 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 158, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [8 x i8] c"colorfx\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 82, i32 30 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 95, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 135, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 270, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [13 x i8] c"scene_lookup\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 292, i32 30 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private constant [45 x i8] c"../drivers/media/i2c/s5c73m3/s5c73m3-ctrls.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 309, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [28 x i8] c"switch.table.s5c73m3_s_ctrl\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [31 x i8] c"switch.table.s5c73m3_s_ctrl.16\00", align 1
@llvm.compiler.used = appending global [39 x ptr] [ptr @s5c73m3_get_af_status._entry, ptr @s5c73m3_get_af_status._entry_ptr, ptr @s5c73m3_s_ctrl._entry, ptr @s5c73m3_s_ctrl._entry_ptr, ptr @s5c73m3_set_colorfx._entry, ptr @s5c73m3_set_colorfx._entry_ptr, ptr @s5c73m3_set_exposure._entry, ptr @s5c73m3_set_exposure._entry_ptr, ptr @s5c73m3_set_scene_program._entry, ptr @s5c73m3_set_scene_program._entry_ptr, ptr @s5c73m3_set_stabilization._entry, ptr @s5c73m3_set_stabilization._entry_ptr, ptr @s5c73m3_set_white_balance._entry, ptr @s5c73m3_set_white_balance._entry_ptr, ptr @s5c73m3_ctrl_ops, ptr @s5c73m3_init_controls._key, ptr @.str, ptr @ev_bias_qmenu, ptr @iso_qmenu, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @s5c73m3_set_white_balance.wb, ptr @.str.6, ptr @.str.7, ptr @s5c73m3_set_colorfx.colorfx, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @s5c73m3_set_scene_program.scene_lookup, ptr @.str.14, ptr @.str.15, ptr @switch.table.s5c73m3_s_ctrl, ptr @switch.table.s5c73m3_s_ctrl.16], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ev_bias_qmenu to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iso_qmenu to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_get_af_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_set_white_balance.wb to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_set_white_balance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_set_colorfx.colorfx to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_set_colorfx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_set_exposure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_set_stabilization._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_set_scene_program.scene_lookup to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_set_scene_program._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s5c73m3_s_ctrl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s5c73m3_s_ctrl.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5c73m3_init_controls(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrls1 = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 20
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls1, i32 noundef 22, ptr noundef nonnull @s5c73m3_init_controls._key, ptr noundef nonnull @.str) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls1, ptr noundef nonnull @s5c73m3_ctrl_ops, i32 noundef 10094868, i8 noundef zeroext 9, i64 noundef -351, i8 noundef zeroext 1) #4
  %auto_wb = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 20, i32 3
  %0 = ptrtoint ptr %auto_wb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %auto_wb, align 4
  %call3 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls1, ptr noundef nonnull @s5c73m3_ctrl_ops, i32 noundef 10094849, i8 noundef zeroext 0, i64 noundef -2, i8 noundef zeroext 0) #4
  %1 = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 20, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %1, align 4
  %call4 = tail call ptr @v4l2_ctrl_new_int_menu(ptr noundef %ctrls1, ptr noundef nonnull @s5c73m3_ctrl_ops, i32 noundef 10094867, i8 noundef zeroext 8, i8 noundef zeroext 3, ptr noundef nonnull @ev_bias_qmenu) #4
  %exposure_bias = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 20, i32 1, i32 1
  %3 = ptrtoint ptr %exposure_bias to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %exposure_bias, align 4
  %call5 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls1, ptr noundef nonnull @s5c73m3_ctrl_ops, i32 noundef 10094873, i8 noundef zeroext 2, i64 noundef -8, i8 noundef zeroext 0) #4
  %exposure_metering = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 20, i32 1, i32 2
  %4 = ptrtoint ptr %exposure_metering to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %exposure_metering, align 4
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @s5c73m3_ctrl_ops, i32 noundef 10094860, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #4
  %5 = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 20, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %5, align 4
  %call7 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @s5c73m3_ctrl_ops, i32 noundef 10094876, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #4
  %af_start = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 20, i32 4, i32 1
  %7 = ptrtoint ptr %af_start to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7, ptr %af_start, align 4
  %call8 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @s5c73m3_ctrl_ops, i32 noundef 10094877, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #4
  %af_stop = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 20, i32 4, i32 2
  %8 = ptrtoint ptr %af_stop to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8, ptr %af_stop, align 4
  %call9 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @s5c73m3_ctrl_ops, i32 noundef 10094878, i64 noundef 0, i64 noundef 7, i64 noundef 0, i64 noundef 0) #4
  %af_status = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 20, i32 4, i32 3
  %9 = ptrtoint ptr %af_status to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9, ptr %af_status, align 4
  %call10 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls1, ptr noundef nonnull @s5c73m3_ctrl_ops, i32 noundef 10094879, i8 noundef zeroext 2, i64 noundef -7, i8 noundef zeroext 1) #4
  %af_distance = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 20, i32 4, i32 4
  %10 = ptrtoint ptr %af_distance to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call10, ptr %af_distance, align 4
  %call11 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls1, ptr noundef nonnull @s5c73m3_ctrl_ops, i32 noundef 10094872, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 1) #4
  %11 = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 20, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call11, ptr %11, align 4
  %call12 = tail call ptr @v4l2_ctrl_new_int_menu(ptr noundef %ctrls1, ptr noundef nonnull @s5c73m3_ctrl_ops, i32 noundef 10094871, i8 noundef zeroext 3, i8 noundef zeroext 1, ptr noundef nonnull @iso_qmenu) #4
  %iso = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 20, i32 2, i32 1
  %13 = ptrtoint ptr %iso to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call12, ptr %iso, align 4
  %call13 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @s5c73m3_ctrl_ops, i32 noundef 9963777, i64 noundef -2, i64 noundef 2, i64 noundef 1, i64 noundef 0) #4
  %contrast = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 20, i32 7
  %14 = ptrtoint ptr %contrast to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call13, ptr %contrast, align 4
  %call14 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @s5c73m3_ctrl_ops, i32 noundef 9963778, i64 noundef -2, i64 noundef 2, i64 noundef 1, i64 noundef 0) #4
  %saturation = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 20, i32 8
  %15 = ptrtoint ptr %saturation to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call14, ptr %saturation, align 4
  %call15 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @s5c73m3_ctrl_ops, i32 noundef 9963803, i64 noundef -2, i64 noundef 2, i64 noundef 1, i64 noundef 0) #4
  %sharpness = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 20, i32 9
  %16 = ptrtoint ptr %sharpness to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call15, ptr %sharpness, align 4
  %call16 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @s5c73m3_ctrl_ops, i32 noundef 10094861, i64 noundef 0, i64 noundef 30, i64 noundef 1, i64 noundef 0) #4
  %zoom = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 20, i32 10
  %17 = ptrtoint ptr %zoom to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call16, ptr %zoom, align 4
  %call17 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls1, ptr noundef nonnull @s5c73m3_ctrl_ops, i32 noundef 9963807, i8 noundef zeroext 10, i64 noundef -1040, i8 noundef zeroext 0) #4
  %colorfx = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 20, i32 6
  %18 = ptrtoint ptr %colorfx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call17, ptr %colorfx, align 4
  %call18 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @s5c73m3_ctrl_ops, i32 noundef 10094869, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #4
  %wdr = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 20, i32 11
  %19 = ptrtoint ptr %wdr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call18, ptr %wdr, align 4
  %call19 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @s5c73m3_ctrl_ops, i32 noundef 10094870, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #4
  %stabilization = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 20, i32 12
  %20 = ptrtoint ptr %stabilization to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call19, ptr %stabilization, align 4
  %call20 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls1, ptr noundef nonnull @s5c73m3_ctrl_ops, i32 noundef 9963800, i8 noundef zeroext 3, i64 noundef 0, i8 noundef zeroext 3) #4
  %call21 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @s5c73m3_ctrl_ops, i32 noundef 10291459, i64 noundef 1, i64 noundef 100, i64 noundef 1, i64 noundef 80) #4
  %jpeg_quality = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 20, i32 13
  %21 = ptrtoint ptr %jpeg_quality to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call21, ptr %jpeg_quality, align 4
  %call22 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls1, ptr noundef nonnull @s5c73m3_ctrl_ops, i32 noundef 10094874, i8 noundef zeroext 13, i64 noundef -16384, i8 noundef zeroext 0) #4
  %scene_mode = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 20, i32 14
  %22 = ptrtoint ptr %scene_mode to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call22, ptr %scene_mode, align 4
  %call23 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @s5c73m3_ctrl_ops, i32 noundef 10094875, i64 noundef 0, i64 noundef 7, i64 noundef 0, i64 noundef 0) #4
  %aaa_lock = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 20, i32 5
  %23 = ptrtoint ptr %aaa_lock to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call23, ptr %aaa_lock, align 4
  %error = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 20, i32 0, i32 9
  %24 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool24.not = icmp eq i32 %25, 0
  br i1 %tobool24.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls1) #4
  br label %cleanup

if.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 3, ptr noundef %1, i8 noundef zeroext 0, i1 noundef zeroext false) #4
  %26 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %11, align 4
  %flags = getelementptr inbounds %struct.v4l2_ctrl, ptr %27, i32 0, i32 20
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %or = or i32 %29, 136
  store i32 %or, ptr %flags, align 4
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %11, i8 noundef zeroext 0, i1 noundef zeroext false) #4
  %30 = ptrtoint ptr %af_status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %af_status, align 4
  %flags32 = getelementptr inbounds %struct.v4l2_ctrl, ptr %31, i32 0, i32 20
  %32 = ptrtoint ptr %flags32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags32, align 4
  %or33 = or i32 %33, 128
  store i32 %or33, ptr %flags32, align 4
  tail call void @v4l2_ctrl_cluster(i32 noundef 5, ptr noundef %5) #4
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %state, i32 0, i32 8
  %34 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %ctrls1, ptr %ctrl_handler, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %25, %if.then25 ], [ 0, %if.end27 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_int_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5c73m3_g_volatile_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -928
  %power = getelementptr i8, ptr %1, i32 270
  %2 = ptrtoint ptr %power to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %power, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10094860, i32 %5)
  %cond = icmp eq i32 %5, 10094860
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %af_status = getelementptr i8, ptr %1, i32 220
  %6 = ptrtoint ptr %af_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %af_status, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #4
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 64, ptr %reg.i, align 2
  %call.i = call i32 @s5c73m3_read(ptr noundef %add.ptr.i, i32 noundef 614016, ptr noundef nonnull %reg.i) #4
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %reg.i, align 2
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i16 %10, label %do.end.i [
    i16 1, label %sw.bb.s5c73m3_get_af_status.exit_crit_edge
    i16 32, label %sw.bb.s5c73m3_get_af_status.exit_crit_edge12
    i16 2, label %sw.bb.s5c73m3_get_af_status.exit_crit_edge13
    i16 3, label %sw.bb.sw.bb1.i_crit_edge
    i16 48, label %sw.bb.sw.bb1.i_crit_edge14
    i16 4, label %sw.bb.sw.bb5.i_crit_edge
    i16 64, label %sw.bb.sw.bb5.i_crit_edge15
    i16 16, label %sw.bb.sw.bb5.i_crit_edge16
  ]

sw.bb.sw.bb5.i_crit_edge16:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5.i

sw.bb.sw.bb5.i_crit_edge15:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5.i

sw.bb.sw.bb5.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5.i

sw.bb.sw.bb1.i_crit_edge14:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1.i

sw.bb.sw.bb1.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1.i

sw.bb.s5c73m3_get_af_status.exit_crit_edge13:     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %s5c73m3_get_af_status.exit

sw.bb.s5c73m3_get_af_status.exit_crit_edge12:     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %s5c73m3_get_af_status.exit

sw.bb.s5c73m3_get_af_status.exit_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %s5c73m3_get_af_status.exit

sw.bb1.i:                                         ; preds = %sw.bb.sw.bb1.i_crit_edge, %sw.bb.sw.bb1.i_crit_edge14
  br label %s5c73m3_get_af_status.exit

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = zext i16 %10 to i32
  %name.i = getelementptr i8, ptr %1, i32 -812
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %name.i, i32 noundef %conv.i) #7
  br label %sw.bb5.i

sw.bb5.i:                                         ; preds = %do.end.i, %sw.bb.sw.bb5.i_crit_edge, %sw.bb.sw.bb5.i_crit_edge15, %sw.bb.sw.bb5.i_crit_edge16
  br label %s5c73m3_get_af_status.exit

s5c73m3_get_af_status.exit:                       ; preds = %sw.bb5.i, %sw.bb1.i, %sw.bb.s5c73m3_get_af_status.exit_crit_edge, %sw.bb.s5c73m3_get_af_status.exit_crit_edge12, %sw.bb.s5c73m3_get_af_status.exit_crit_edge13
  %.sink.i = phi i32 [ 4, %sw.bb5.i ], [ 2, %sw.bb1.i ], [ 1, %sw.bb.s5c73m3_get_af_status.exit_crit_edge ], [ 1, %sw.bb.s5c73m3_get_af_status.exit_crit_edge12 ], [ 1, %sw.bb.s5c73m3_get_af_status.exit_crit_edge13 ]
  %val6.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %7, i32 0, i32 22
  %12 = ptrtoint ptr %val6.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink.i, ptr %val6.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %s5c73m3_get_af_status.exit.sw.epilog_crit_edge, label %s5c73m3_get_af_status.exit.cleanup_crit_edge

s5c73m3_get_af_status.exit.cleanup_crit_edge:     ; preds = %s5c73m3_get_af_status.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

s5c73m3_get_af_status.exit.sw.epilog_crit_edge:   ; preds = %s5c73m3_get_af_status.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %s5c73m3_get_af_status.exit.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %s5c73m3_get_af_status.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -16, %entry.cleanup_crit_edge ], [ %call.i, %s5c73m3_get_af_status.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5c73m3_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -928
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @s5c73m3_dbg to i32))
  %2 = load i32, ptr @s5c73m3_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr i8, ptr %1, i32 -812
  %name3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 9
  %3 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name3, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name, ptr noundef %4, i32 noundef %6) #7
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %lock = getelementptr i8, ptr %1, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %power = getelementptr i8, ptr %1, i32 270
  %7 = ptrtoint ptr %power to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %power, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp7 = icmp eq i16 %8, 0
  br i1 %cmp7, label %do.end6.unlock_crit_edge, label %if.end10

do.end6.unlock_crit_edge:                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

if.end10:                                         ; preds = %do.end6
  %flags = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 20
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end12, label %if.end10.unlock_crit_edge

if.end10.unlock_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

if.end12:                                         ; preds = %if.end10
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %12, label %if.end12.unlock_crit_edge [
    i32 10094875, label %sw.bb
    i32 10094868, label %sw.bb14
    i32 9963777, label %sw.bb17
    i32 9963807, label %sw.bb20
    i32 10094849, label %sw.bb23
    i32 10094860, label %sw.bb26
    i32 10094870, label %sw.bb29
    i32 10094871, label %sw.bb32
    i32 10291459, label %sw.bb35
    i32 9963800, label %sw.bb38
    i32 9963778, label %sw.bb41
    i32 10094874, label %sw.bb44
    i32 9963803, label %sw.bb47
    i32 10094869, label %sw.bb50
    i32 10094861, label %sw.bb56
  ]

if.end12.unlock_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

sw.bb:                                            ; preds = %if.end12
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i, align 4
  %and6.i = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %cur.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 23
  %16 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cur.i, align 8
  %xor.i = xor i32 %17, %15
  %and11.i = and i32 %xor.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %sw.bb.if.end16.i_crit_edge, label %if.then.i

sw.bb.if.end16.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16.i

if.then.i:                                        ; preds = %sw.bb
  %18 = trunc i32 %15 to i16
  %19 = and i16 %18, 1
  %20 = xor i16 %19, 1
  %call.i = tail call i32 @s5c73m3_isp_command(ptr noundef %add.ptr.i, i16 noundef zeroext 3072, i16 noundef zeroext %20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool14.not.i, label %if.then.i.if.end16.i_crit_edge, label %if.then.i.unlock_crit_edge

if.then.i.unlock_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

if.then.i.if.end16.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then.i.if.end16.i_crit_edge, %sw.bb.if.end16.i_crit_edge
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i, align 4
  %23 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cur.i, align 8
  %xor20.i = xor i32 %24, %22
  %and21.i = and i32 %xor20.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end16.i.if.end34.i_crit_edge, label %land.lhs.true.i

if.end16.i.if.end34.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.i

land.lhs.true.i:                                  ; preds = %if.end16.i
  %auto_wb.i = getelementptr i8, ptr %1, i32 204
  %25 = ptrtoint ptr %auto_wb.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %auto_wb.i, align 4
  %val23.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %26, i32 0, i32 22
  %27 = ptrtoint ptr %val23.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool24.not.i = icmp eq i32 %28, 0
  br i1 %tobool24.not.i, label %land.lhs.true.i.if.end34.i_crit_edge, label %if.then25.i

land.lhs.true.i.if.end34.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.i

if.then25.i:                                      ; preds = %land.lhs.true.i
  %29 = trunc i32 %15 to i16
  %30 = lshr i16 %29, 1
  %31 = and i16 %30, 1
  %32 = xor i16 %31, 1
  %call30.i = tail call i32 @s5c73m3_isp_command(ptr noundef %add.ptr.i, i16 noundef zeroext 3328, i16 noundef zeroext %32) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.then25.i.if.end34.i_crit_edge, label %if.then25.i.unlock_crit_edge

if.then25.i.unlock_crit_edge:                     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

if.then25.i.if.end34.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then25.i.if.end34.i_crit_edge, %land.lhs.true.i.if.end34.i_crit_edge, %if.end16.i.if.end34.i_crit_edge
  %33 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val.i, align 4
  %35 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cur.i, align 8
  %xor38.i = xor i32 %36, %34
  %and39.i = and i32 %xor38.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.end34.i.unlock_crit_edge, label %if.then41.i

if.end34.i.unlock_crit_edge:                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

if.then41.i:                                      ; preds = %if.end34.i
  br i1 %tobool7.not.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i = tail call i32 @s5c73m3_isp_command(ptr noundef %add.ptr.i, i16 noundef zeroext 3584, i16 noundef zeroext 0) #4
  br label %unlock

if.end.i.i:                                       ; preds = %if.then41.i
  %37 = getelementptr i8, ptr %1, i32 208
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %val.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %39, i32 0, i32 22
  %40 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool1.not.i.i = icmp eq i32 %41, 0
  br i1 %tobool1.not.i.i, label %if.end4.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call3.i.i = tail call i32 @s5c73m3_isp_command(ptr noundef %add.ptr.i, i16 noundef zeroext 3586, i16 noundef zeroext 4) #4
  br label %unlock

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call5.i.i = tail call i32 @s5c73m3_isp_command(ptr noundef %add.ptr.i, i16 noundef zeroext 3584, i16 noundef zeroext 2) #4
  br label %unlock

sw.bb14:                                          ; preds = %if.end12
  %val15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %42 = ptrtoint ptr %val15 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val15, align 4
  %switch.tableidx = add i32 %43, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %44 = icmp ult i32 %switch.tableidx, 8
  br i1 %44, label %switch.hole_check, label %sw.bb14.unlock_crit_edge

sw.bb14.unlock_crit_edge:                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

switch.hole_check:                                ; preds = %sw.bb14
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -81, %switch.maskindex
  %45 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %switch.lobit.not = icmp eq i8 %45, 0
  br i1 %switch.lobit.not, label %switch.hole_check.unlock_crit_edge, label %switch.lookup

switch.hole_check.unlock_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.s5c73m3_s_ctrl, i32 0, i32 %switch.tableidx
  %46 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %46)
  %switch.load = load i32, ptr %switch.gep, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @s5c73m3_dbg to i32))
  %47 = load i32, ptr @s5c73m3_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp4.i = icmp sgt i32 %47, 0
  br i1 %cmp4.i, label %do.end.i, label %switch.lookup.do.end12.i_crit_edge

switch.lookup.do.end12.i_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12.i

do.end.i:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  %name.i = getelementptr i8, ptr %1, i32 -812
  %auto_wb.i98 = getelementptr i8, ptr %1, i32 204
  %48 = ptrtoint ptr %auto_wb.i98 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %auto_wb.i98, align 4
  %id.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %id.i, align 8
  %call.i99 = tail call ptr @v4l2_ctrl_get_menu(i32 noundef %51) #4
  %arrayidx8.i = getelementptr ptr, ptr %call.i99, i32 %switch.load
  %52 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx8.i, align 4
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i, ptr noundef %53) #7
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %switch.lookup.do.end12.i_crit_edge
  %arrayidx14.i = getelementptr [6 x [2 x i16]], ptr @s5c73m3_set_white_balance.wb, i32 0, i32 %switch.load, i32 1
  %54 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx14.i, align 2
  %call15.i = tail call i32 @s5c73m3_isp_command(ptr noundef %add.ptr.i, i16 noundef zeroext 3330, i16 noundef zeroext %55) #4
  br label %unlock

sw.bb17:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %val18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %56 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i = icmp slt i32 %57, 0
  %add.i = sub i32 2, %57
  %cond.i = select i1 %cmp.i, i32 %add.i, i32 %57
  %conv.i = trunc i32 %cond.i to i16
  %call.i101 = tail call i32 @s5c73m3_isp_command(ptr noundef %add.ptr.i, i16 noundef zeroext 3096, i16 noundef zeroext %conv.i) #4
  br label %unlock

sw.bb20:                                          ; preds = %if.end12
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %58 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %val21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %59)
  %60 = icmp ult i32 %59, 11
  br i1 %60, label %switch.hole_check175, label %sw.bb20.unlock_crit_edge

sw.bb20.unlock_crit_edge:                         ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

switch.hole_check175:                             ; preds = %sw.bb20
  %switch.maskindex177 = trunc i32 %59 to i16
  %switch.shifted178 = lshr i16 1039, %switch.maskindex177
  %61 = and i16 %switch.shifted178, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %switch.lobit179.not = icmp eq i16 %61, 0
  br i1 %switch.lobit179.not, label %switch.hole_check175.unlock_crit_edge, label %switch.lookup176

switch.hole_check175.unlock_crit_edge:            ; preds = %switch.hole_check175
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

switch.lookup176:                                 ; preds = %switch.hole_check175
  %switch.gep180 = getelementptr inbounds [11 x i32], ptr @switch.table.s5c73m3_s_ctrl.16, i32 0, i32 %59
  %62 = ptrtoint ptr %switch.gep180 to i32
  call void @__asan_load4_noabort(i32 %62)
  %switch.load181 = load i32, ptr %switch.gep180, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @s5c73m3_dbg to i32))
  %63 = load i32, ptr @s5c73m3_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp4.i107 = icmp sgt i32 %63, 0
  br i1 %cmp4.i107, label %do.end.i114, label %switch.lookup176.do.end12.i117_crit_edge

switch.lookup176.do.end12.i117_crit_edge:         ; preds = %switch.lookup176
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12.i117

do.end.i114:                                      ; preds = %switch.lookup176
  call void @__sanitizer_cov_trace_pc() #6
  %name.i109 = getelementptr i8, ptr %1, i32 -812
  %colorfx.i = getelementptr i8, ptr %1, i32 232
  %64 = ptrtoint ptr %colorfx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %colorfx.i, align 4
  %id.i110 = getelementptr inbounds %struct.v4l2_ctrl, ptr %65, i32 0, i32 8
  %66 = ptrtoint ptr %id.i110 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %id.i110, align 8
  %call.i111 = tail call ptr @v4l2_ctrl_get_menu(i32 noundef %67) #4
  %arrayidx8.i112 = getelementptr ptr, ptr %call.i111, i32 %switch.load181
  %68 = ptrtoint ptr %arrayidx8.i112 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx8.i112, align 4
  %call9.i113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i109, ptr noundef %69) #7
  br label %do.end12.i117

do.end12.i117:                                    ; preds = %do.end.i114, %switch.lookup176.do.end12.i117_crit_edge
  %arrayidx14.i115 = getelementptr [5 x [2 x i16]], ptr @s5c73m3_set_colorfx.colorfx, i32 0, i32 %switch.load181, i32 1
  %70 = ptrtoint ptr %arrayidx14.i115 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx14.i115, align 2
  %call15.i116 = tail call i32 @s5c73m3_isp_command(ptr noundef %add.ptr.i, i16 noundef zeroext 2826, i16 noundef zeroext %71) #4
  br label %unlock

sw.bb23:                                          ; preds = %if.end12
  %exposure_metering.i = getelementptr i8, ptr %1, i32 192
  %72 = ptrtoint ptr %exposure_metering.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %exposure_metering.i, align 4
  %is_new.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %is_new.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %bf.load.i = load i32, ptr %is_new.i, align 4
  %75 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i = icmp eq i32 %75, 0
  br i1 %tobool.not.i, label %sw.bb23.land.lhs.true.i121_crit_edge, label %if.end.i

sw.bb23.land.lhs.true.i121_crit_edge:             ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i121

if.end.i:                                         ; preds = %sw.bb23
  %val.i119 = getelementptr inbounds %struct.v4l2_ctrl, ptr %73, i32 0, i32 22
  %76 = ptrtoint ptr %val.i119 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %val.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %77)
  %switch.selectcmp.i = icmp eq i32 %77, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i16 1, i16 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %77)
  %switch.selectcmp1.i = icmp eq i32 %77, 1
  %switch.select2.i = select i1 %switch.selectcmp1.i, i16 0, i16 %switch.select.i
  %call.i120 = tail call i32 @s5c73m3_isp_command(ptr noundef %add.ptr.i, i16 noundef zeroext 3078, i16 noundef zeroext %switch.select2.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool4.not.i = icmp eq i32 %call.i120, 0
  br i1 %tobool4.not.i, label %if.end.i.land.lhs.true.i121_crit_edge, label %if.end.i.do.body.i124_crit_edge

if.end.i.do.body.i124_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i124

if.end.i.land.lhs.true.i121_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i121

land.lhs.true.i121:                               ; preds = %if.end.i.land.lhs.true.i121_crit_edge, %sw.bb23.land.lhs.true.i121_crit_edge
  %exposure_bias.i = getelementptr i8, ptr %1, i32 188
  %78 = ptrtoint ptr %exposure_bias.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %exposure_bias.i, align 4
  %is_new5.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %79, i32 0, i32 5
  %80 = ptrtoint ptr %is_new5.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %bf.load6.i = load i32, ptr %is_new5.i, align 4
  %81 = and i32 %bf.load6.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool9.not.i = icmp eq i32 %81, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i121.do.body.i124_crit_edge, label %if.then10.i

land.lhs.true.i121.do.body.i124_crit_edge:        ; preds = %land.lhs.true.i121
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i124

if.then10.i:                                      ; preds = %land.lhs.true.i121
  call void @__sanitizer_cov_trace_pc() #6
  %val12.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %79, i32 0, i32 22
  %82 = ptrtoint ptr %val12.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %val12.i, align 4
  %conv.i122 = trunc i32 %83 to i16
  %call13.i = tail call i32 @s5c73m3_isp_command(ptr noundef %add.ptr.i, i16 noundef zeroext 3076, i16 noundef zeroext %conv.i122) #4
  br label %do.body.i124

do.body.i124:                                     ; preds = %if.then10.i, %land.lhs.true.i121.do.body.i124_crit_edge, %if.end.i.do.body.i124_crit_edge
  %ret.1.i = phi i32 [ %call.i120, %if.end.i.do.body.i124_crit_edge ], [ %call13.i, %if.then10.i ], [ 0, %land.lhs.true.i121.do.body.i124_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @s5c73m3_dbg to i32))
  %84 = load i32, ptr @s5c73m3_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp.i123 = icmp sgt i32 %84, 0
  br i1 %cmp.i123, label %do.end.i126, label %do.body.i124.unlock_crit_edge

do.body.i124.unlock_crit_edge:                    ; preds = %do.body.i124
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

do.end.i126:                                      ; preds = %do.body.i124
  call void @__sanitizer_cov_trace_pc() #6
  %name.i125 = getelementptr i8, ptr %1, i32 -812
  %exposure_bias18.i = getelementptr i8, ptr %1, i32 188
  %85 = ptrtoint ptr %exposure_bias18.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %exposure_bias18.i, align 4
  %val19.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %86, i32 0, i32 22
  %87 = ptrtoint ptr %val19.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %val19.i, align 4
  %89 = ptrtoint ptr %exposure_metering.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %exposure_metering.i, align 4
  %val21.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %90, i32 0, i32 22
  %91 = ptrtoint ptr %val21.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %val21.i, align 4
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i125, ptr noundef nonnull @.str.11, i32 noundef %88, i32 noundef %92, i32 noundef %ret.1.i) #7
  br label %unlock

sw.bb26:                                          ; preds = %if.end12
  %93 = getelementptr i8, ptr %1, i32 208
  %af_distance.i = getelementptr i8, ptr %1, i32 224
  %94 = ptrtoint ptr %af_distance.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %af_distance.i, align 4
  %is_new.i127 = getelementptr inbounds %struct.v4l2_ctrl, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %is_new.i127 to i32
  call void @__asan_load4_noabort(i32 %96)
  %bf.load.i128 = load i32, ptr %is_new.i127, align 4
  %97 = and i32 %bf.load.i128, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.not.i129 = icmp eq i32 %97, 0
  br i1 %tobool.not.i129, label %lor.lhs.false.i, label %if.then.i134

if.then.i134:                                     ; preds = %sw.bb26
  %val.i130 = getelementptr inbounds %struct.v4l2_ctrl, ptr %95, i32 0, i32 22
  %98 = ptrtoint ptr %val.i130 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %val.i130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %99)
  %cmp.i131 = icmp eq i32 %99, 2
  %conv.i132 = zext i1 %cmp.i131 to i16
  %call.i133 = tail call i32 @s5c73m3_isp_command(ptr noundef %add.ptr.i, i16 noundef zeroext 3586, i16 noundef zeroext %conv.i132) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %cmp2.not.i = icmp eq i32 %call.i133, 0
  br i1 %cmp2.not.i, label %if.then.i134.if.then21.i_crit_edge, label %if.then.i134.unlock_crit_edge

if.then.i134.unlock_crit_edge:                    ; preds = %if.then.i134
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

if.then.i134.if.then21.i_crit_edge:               ; preds = %if.then.i134
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21.i

lor.lhs.false.i:                                  ; preds = %sw.bb26
  %100 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %93, align 4
  %is_new7.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %101, i32 0, i32 5
  %102 = ptrtoint ptr %is_new7.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %bf.load8.i = load i32, ptr %is_new7.i, align 4
  %103 = and i32 %bf.load8.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool11.not.i = icmp eq i32 %103, 0
  br i1 %tobool11.not.i, label %lor.lhs.false15.i, label %land.lhs.true.i136

land.lhs.true.i136:                               ; preds = %lor.lhs.false.i
  %val13.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %101, i32 0, i32 22
  %104 = ptrtoint ptr %val13.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %val13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool14.not.i135 = icmp eq i32 %105, 0
  br i1 %tobool14.not.i135, label %lor.lhs.false15.thread.i, label %land.lhs.true.i136.if.then21.i_crit_edge

land.lhs.true.i136.if.then21.i_crit_edge:         ; preds = %land.lhs.true.i136
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21.i

lor.lhs.false15.i:                                ; preds = %lor.lhs.false.i
  %af_start.i = getelementptr i8, ptr %1, i32 212
  %106 = ptrtoint ptr %af_start.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %af_start.i, align 4
  %is_new16.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %107, i32 0, i32 5
  %108 = ptrtoint ptr %is_new16.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %bf.load17.i = load i32, ptr %is_new16.i, align 4
  %109 = and i32 %bf.load17.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool20.not.i = icmp eq i32 %109, 0
  br i1 %tobool20.not.i, label %lor.lhs.false33.i, label %lor.lhs.false15.i.if.then21.i_crit_edge

lor.lhs.false15.i.if.then21.i_crit_edge:          ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21.i

lor.lhs.false15.thread.i:                         ; preds = %land.lhs.true.i136
  %af_start4.i = getelementptr i8, ptr %1, i32 212
  %110 = ptrtoint ptr %af_start4.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %af_start4.i, align 4
  %is_new165.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %111, i32 0, i32 5
  %112 = ptrtoint ptr %is_new165.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %bf.load176.i = load i32, ptr %is_new165.i, align 4
  %113 = and i32 %bf.load176.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool20.not7.i = icmp eq i32 %113, 0
  br i1 %tobool20.not7.i, label %lor.lhs.false15.thread.i.if.then39.i_crit_edge, label %lor.lhs.false15.thread.i.if.then21.i_crit_edge

lor.lhs.false15.thread.i.if.then21.i_crit_edge:   ; preds = %lor.lhs.false15.thread.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21.i

lor.lhs.false15.thread.i.if.then39.i_crit_edge:   ; preds = %lor.lhs.false15.thread.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then39.i

if.then21.i:                                      ; preds = %lor.lhs.false15.thread.i.if.then21.i_crit_edge, %lor.lhs.false15.i.if.then21.i_crit_edge, %land.lhs.true.i136.if.then21.i_crit_edge, %if.then.i134.if.then21.i_crit_edge
  %114 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %93, align 4
  %val.i.i137 = getelementptr inbounds %struct.v4l2_ctrl, ptr %115, i32 0, i32 22
  %116 = ptrtoint ptr %val.i.i137 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %val.i.i137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool1.not.i.i138 = icmp eq i32 %117, 0
  br i1 %tobool1.not.i.i138, label %if.end4.i.i142, label %if.then2.i.i140

if.then2.i.i140:                                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #6
  %call3.i.i139 = tail call i32 @s5c73m3_isp_command(ptr noundef %add.ptr.i, i16 noundef zeroext 3586, i16 noundef zeroext 4) #4
  br label %unlock

if.end4.i.i142:                                   ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #6
  %call5.i.i141 = tail call i32 @s5c73m3_isp_command(ptr noundef %add.ptr.i, i16 noundef zeroext 3584, i16 noundef zeroext 2) #4
  br label %unlock

lor.lhs.false33.i:                                ; preds = %lor.lhs.false15.i
  %af_stop.i = getelementptr i8, ptr %1, i32 216
  %118 = ptrtoint ptr %af_stop.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %af_stop.i, align 4
  %is_new34.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %119, i32 0, i32 5
  %120 = ptrtoint ptr %is_new34.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %bf.load35.i = load i32, ptr %is_new34.i, align 4
  %121 = and i32 %bf.load35.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool38.not.i = icmp eq i32 %121, 0
  br i1 %tobool38.not.i, label %lor.lhs.false33.i.unlock_crit_edge, label %lor.lhs.false33.i.if.then39.i_crit_edge

lor.lhs.false33.i.if.then39.i_crit_edge:          ; preds = %lor.lhs.false33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then39.i

lor.lhs.false33.i.unlock_crit_edge:               ; preds = %lor.lhs.false33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

if.then39.i:                                      ; preds = %lor.lhs.false33.i.if.then39.i_crit_edge, %lor.lhs.false15.thread.i.if.then39.i_crit_edge
  %call.i.i143 = tail call i32 @s5c73m3_isp_command(ptr noundef %add.ptr.i, i16 noundef zeroext 3584, i16 noundef zeroext 0) #4
  br label %unlock

sw.bb29:                                          ; preds = %if.end12
  %val30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %122 = ptrtoint ptr %val30 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %val30, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @s5c73m3_dbg to i32))
  %124 = load i32, ptr @s5c73m3_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp.i144 = icmp sgt i32 %124, 0
  br i1 %cmp.i144, label %do.end.i147, label %sw.bb29.s5c73m3_set_stabilization.exit_crit_edge

sw.bb29.s5c73m3_set_stabilization.exit_crit_edge: ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #6
  br label %s5c73m3_set_stabilization.exit

do.end.i147:                                      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #6
  %name.i145 = getelementptr i8, ptr %1, i32 -812
  %call.i146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name.i145, i32 noundef %123) #7
  br label %s5c73m3_set_stabilization.exit

s5c73m3_set_stabilization.exit:                   ; preds = %do.end.i147, %sw.bb29.s5c73m3_set_stabilization.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool.not.i148 = icmp eq i32 %123, 0
  %conv.i149 = select i1 %tobool.not.i148, i16 0, i16 19
  %call4.i = tail call i32 @s5c73m3_isp_command(ptr noundef %add.ptr.i, i16 noundef zeroext 3102, i16 noundef zeroext %conv.i149) #4
  br label %unlock

sw.bb32:                                          ; preds = %if.end12
  %val33 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %125 = ptrtoint ptr %val33 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %val33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp.i150 = icmp eq i32 %126, 0
  br i1 %cmp.i150, label %if.then.i151, label %sw.bb32.s5c73m3_set_iso.exit_crit_edge

sw.bb32.s5c73m3_set_iso.exit_crit_edge:           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #6
  br label %s5c73m3_set_iso.exit

if.then.i151:                                     ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #6
  %iso1.i = getelementptr i8, ptr %1, i32 200
  %127 = ptrtoint ptr %iso1.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %iso1.i, align 4
  %val2.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %128, i32 0, i32 22
  %129 = ptrtoint ptr %val2.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %val2.i, align 4
  %131 = trunc i32 %130 to i16
  %phi.cast.i = add i16 %131, 1
  br label %s5c73m3_set_iso.exit

s5c73m3_set_iso.exit:                             ; preds = %if.then.i151, %sw.bb32.s5c73m3_set_iso.exit_crit_edge
  %iso.0.i = phi i16 [ %phi.cast.i, %if.then.i151 ], [ 0, %sw.bb32.s5c73m3_set_iso.exit_crit_edge ]
  %call.i152 = tail call i32 @s5c73m3_isp_command(ptr noundef %add.ptr.i, i16 noundef zeroext 3074, i16 noundef zeroext %iso.0.i) #4
  br label %unlock

sw.bb35:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %val36 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %132 = ptrtoint ptr %val36 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %val36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %133)
  %cmp.i154 = icmp slt i32 %133, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 76, i32 %133)
  %cmp1.i = icmp slt i32 %133, 76
  %..i = zext i1 %cmp1.i to i16
  %reg.0.i = select i1 %cmp.i154, i16 2, i16 %..i
  %call.i155 = tail call i32 @s5c73m3_isp_command(ptr noundef %add.ptr.i, i16 noundef zeroext 2828, i16 noundef zeroext %reg.0.i) #4
  br label %unlock

sw.bb38:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %val39 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %134 = ptrtoint ptr %val39 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %val39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %135)
  %switch.selectcmp.i156 = icmp eq i32 %135, 1
  %switch.select.i157 = select i1 %switch.selectcmp.i156, i16 4, i16 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %135)
  %switch.selectcmp4.i = icmp eq i32 %135, 2
  %switch.select5.i = select i1 %switch.selectcmp4.i, i16 5, i16 %switch.select.i157
  %call.i158 = tail call i32 @s5c73m3_isp_command(ptr noundef %add.ptr.i, i16 noundef zeroext 3090, i16 noundef zeroext %switch.select5.i) #4
  br label %unlock

sw.bb41:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %val42 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %136 = ptrtoint ptr %val42 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %val42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp.i159 = icmp slt i32 %137, 0
  %add.i160 = sub i32 2, %137
  %cond.i161 = select i1 %cmp.i159, i32 %add.i160, i32 %137
  %conv.i162 = trunc i32 %cond.i161 to i16
  %call.i163 = tail call i32 @s5c73m3_isp_command(ptr noundef %add.ptr.i, i16 noundef zeroext 3094, i16 noundef zeroext %conv.i162) #4
  br label %unlock

sw.bb44:                                          ; preds = %if.end12
  %val45 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %138 = ptrtoint ptr %val45 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %val45, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @s5c73m3_dbg to i32))
  %140 = load i32, ptr @s5c73m3_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %cmp.i164 = icmp sgt i32 %140, 0
  br i1 %cmp.i164, label %do.end.i168, label %sw.bb44.s5c73m3_set_scene_program.exit_crit_edge

sw.bb44.s5c73m3_set_scene_program.exit_crit_edge: ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #6
  br label %s5c73m3_set_scene_program.exit

do.end.i168:                                      ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #6
  %name.i165 = getelementptr i8, ptr %1, i32 -812
  %scene_mode.i = getelementptr i8, ptr %1, i32 264
  %141 = ptrtoint ptr %scene_mode.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %scene_mode.i, align 4
  %id.i166 = getelementptr inbounds %struct.v4l2_ctrl, ptr %142, i32 0, i32 8
  %143 = ptrtoint ptr %id.i166 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %id.i166, align 8
  %call.i167 = tail call ptr @v4l2_ctrl_get_menu(i32 noundef %144) #4
  %arrayidx.i = getelementptr ptr, ptr %call.i167, i32 %139
  %145 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx.i, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i165, ptr noundef %146) #7
  br label %s5c73m3_set_scene_program.exit

s5c73m3_set_scene_program.exit:                   ; preds = %do.end.i168, %sw.bb44.s5c73m3_set_scene_program.exit_crit_edge
  %arrayidx4.i = getelementptr [14 x i16], ptr @s5c73m3_set_scene_program.scene_lookup, i32 0, i32 %139
  %147 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %arrayidx4.i, align 2
  %call5.i = tail call i32 @s5c73m3_isp_command(ptr noundef %add.ptr.i, i16 noundef zeroext 3098, i16 noundef zeroext %148) #4
  br label %unlock

sw.bb47:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %val48 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %149 = ptrtoint ptr %val48 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %val48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp.i169 = icmp slt i32 %150, 0
  %add.i170 = sub i32 2, %150
  %cond.i171 = select i1 %cmp.i169, i32 %add.i170, i32 %150
  %conv.i172 = trunc i32 %cond.i171 to i16
  %call.i173 = tail call i32 @s5c73m3_isp_command(ptr noundef %add.ptr.i, i16 noundef zeroext 3092, i16 noundef zeroext %conv.i172) #4
  br label %unlock

sw.bb50:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %val51 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %151 = ptrtoint ptr %val51 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %val51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool52 = icmp ne i32 %152, 0
  %conv54 = zext i1 %tobool52 to i16
  %call55 = tail call i32 @s5c73m3_isp_command(ptr noundef %add.ptr.i, i16 noundef zeroext 3080, i16 noundef zeroext %conv54) #4
  br label %unlock

sw.bb56:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %val57 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %153 = ptrtoint ptr %val57 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %val57, align 4
  %conv58 = trunc i32 %154 to i16
  %call59 = tail call i32 @s5c73m3_isp_command(ptr noundef %add.ptr.i, i16 noundef zeroext 2816, i16 noundef zeroext %conv58) #4
  br label %unlock

unlock:                                           ; preds = %sw.bb56, %sw.bb50, %sw.bb47, %s5c73m3_set_scene_program.exit, %sw.bb41, %sw.bb38, %sw.bb35, %s5c73m3_set_iso.exit, %s5c73m3_set_stabilization.exit, %if.then39.i, %lor.lhs.false33.i.unlock_crit_edge, %if.end4.i.i142, %if.then2.i.i140, %if.then.i134.unlock_crit_edge, %do.end.i126, %do.body.i124.unlock_crit_edge, %do.end12.i117, %switch.hole_check175.unlock_crit_edge, %sw.bb20.unlock_crit_edge, %sw.bb17, %do.end12.i, %switch.hole_check.unlock_crit_edge, %sw.bb14.unlock_crit_edge, %if.end4.i.i, %if.then2.i.i, %if.then.i.i, %if.end34.i.unlock_crit_edge, %if.then25.i.unlock_crit_edge, %if.then.i.unlock_crit_edge, %if.end12.unlock_crit_edge, %if.end10.unlock_crit_edge, %do.end6.unlock_crit_edge
  %ret.0 = phi i32 [ 0, %do.end6.unlock_crit_edge ], [ 0, %if.end12.unlock_crit_edge ], [ %call59, %sw.bb56 ], [ %call55, %sw.bb50 ], [ %call.i173, %sw.bb47 ], [ %call5.i, %s5c73m3_set_scene_program.exit ], [ %call.i163, %sw.bb41 ], [ %call.i158, %sw.bb38 ], [ %call.i155, %sw.bb35 ], [ %call.i152, %s5c73m3_set_iso.exit ], [ %call4.i, %s5c73m3_set_stabilization.exit ], [ %call.i101, %sw.bb17 ], [ -22, %if.end10.unlock_crit_edge ], [ %call.i, %if.then.i.unlock_crit_edge ], [ %call30.i, %if.then25.i.unlock_crit_edge ], [ 0, %if.end34.i.unlock_crit_edge ], [ %call3.i.i, %if.then2.i.i ], [ %call5.i.i, %if.end4.i.i ], [ %call.i.i, %if.then.i.i ], [ %call15.i, %do.end12.i ], [ -22, %sw.bb14.unlock_crit_edge ], [ %call15.i116, %do.end12.i117 ], [ -22, %sw.bb20.unlock_crit_edge ], [ %ret.1.i, %do.body.i124.unlock_crit_edge ], [ %ret.1.i, %do.end.i126 ], [ %call.i133, %if.then.i134.unlock_crit_edge ], [ %call.i.i143, %if.then39.i ], [ 0, %lor.lhs.false33.i.unlock_crit_edge ], [ %call3.i.i139, %if.then2.i.i140 ], [ %call5.i.i141, %if.end4.i.i142 ], [ -22, %switch.hole_check.unlock_crit_edge ], [ -22, %switch.hole_check175.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #4
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5c73m3_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5c73m3_isp_command(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_get_menu(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !20, !21, !22, !23, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !44, !45, !46, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @s5c73m3_init_controls._key, !1, !"_key", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-ctrls.c", i32 449, i32 12}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @s5c73m3_ctrl_ops, !4, !"s5c73m3_ctrl_ops", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-ctrls.c", i32 426, i32 35}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-ctrls.c", i32 48, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @s5c73m3_get_af_status._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @s5c73m3_get_af_status._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-ctrls.c", i32 343, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @s5c73m3_s_ctrl._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @s5c73m3_s_ctrl._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @s5c73m3_set_white_balance.wb, !17, !"wb", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-ctrls.c", i32 144, i32 30}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-ctrls.c", i32 158, i32 3}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @s5c73m3_set_white_balance._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @s5c73m3_set_white_balance._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @s5c73m3_set_colorfx.colorfx, !24, !"colorfx", i1 false, i1 false}
!24 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-ctrls.c", i32 82, i32 30}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-ctrls.c", i32 95, i32 3}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @s5c73m3_set_colorfx._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @s5c73m3_set_colorfx._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-ctrls.c", i32 135, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @s5c73m3_set_exposure._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @s5c73m3_set_exposure._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-ctrls.c", i32 270, i32 2}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @s5c73m3_set_stabilization._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @s5c73m3_set_stabilization._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @s5c73m3_set_scene_program.scene_lookup, !41, !"scene_lookup", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-ctrls.c", i32 292, i32 30}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-ctrls.c", i32 309, i32 2}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @s5c73m3_set_scene_program._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @s5c73m3_set_scene_program._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @ev_bias_qmenu, !48, !"ev_bias_qmenu", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-ctrls.c", i32 438, i32 18}
!49 = !{ptr @iso_qmenu, !50, !"iso_qmenu", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-ctrls.c", i32 432, i32 18}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
