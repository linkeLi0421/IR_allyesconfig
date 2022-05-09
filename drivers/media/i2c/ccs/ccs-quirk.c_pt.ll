; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ccs/ccs-quirk.c_pt.bc'
source_filename = "../drivers/media/i2c/ccs/ccs-quirk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ccs_quirk = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ccs_reg_8 = type { i16, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ccs_sensor = type { %struct.mutex, [3 x %struct.ccs_subdev], i32, ptr, ptr, ptr, ptr, %struct.ccs_hwconfig, ptr, ptr, ptr, ptr, ptr, i8, [64 x %struct.ccs_binning_subtype], i32, ptr, ptr, i32, i32, %struct.ccs_data_container, %struct.ccs_data_container, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, %struct.ccs_module_info, %struct.ccs_pll, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x ptr] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ccs_subdev = type { %struct.v4l2_subdev, [2 x %struct.media_pad], %struct.v4l2_rect, [2 x %struct.v4l2_rect], %struct.v4l2_rect, i16, i16, i32, ptr, %struct.v4l2_ctrl_handler }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ccs_hwconfig = type { i16, i16, i32, i32, i32, ptr, i32, ptr }
%struct.ccs_binning_subtype = type { i8 }
%struct.ccs_data_container = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, ptr, i8, ptr }
%struct.ccs_module_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.ccs_pll = type { i8, i8, i8, %struct.anon.92, i8, i8, i8, i8, i8, i8, i16, i32, i32, %struct.ccs_pll_branch_fr, %struct.ccs_pll_branch_bk, %struct.ccs_pll_branch_fr, %struct.ccs_pll_branch_bk, i32, i32 }
%struct.anon.92 = type { i8 }
%struct.ccs_pll_branch_fr = type { i16, i16, i32, i32 }
%struct.ccs_pll_branch_bk = type { i16, i16, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }

@smiapp_jt8ew9_quirk = dso_local constant { %struct.ccs_quirk, [32 x i8] } { %struct.ccs_quirk { ptr @jt8ew9_limits, ptr @jt8ew9_post_poweron, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@smiapp_imx125es_quirk = dso_local constant { %struct.ccs_quirk, [32 x i8] } { %struct.ccs_quirk { ptr null, ptr @imx125es_post_poweron, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@smiapp_jt8ev1_quirk = dso_local constant { %struct.ccs_quirk, [32 x i8] } { %struct.ccs_quirk { ptr @jt8ev1_limits, ptr @jt8ev1_post_poweron, ptr @jt8ev1_pre_streamon, ptr @jt8ev1_post_streamoff, ptr null, ptr @jt8ev1_init, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@smiapp_tcm8500md_quirk = dso_local constant { %struct.ccs_quirk, [32 x i8] } { %struct.ccs_quirk { ptr @tcm8500md_limits, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@jt8ew9_post_poweron.regs = internal constant { [28 x %struct.ccs_reg_8], [48 x i8] } { [28 x %struct.ccs_reg_8] [%struct.ccs_reg_8 { i16 12451, i8 -40 }, %struct.ccs_reg_8 { i16 12462, i8 0 }, %struct.ccs_reg_8 { i16 12463, i8 -48 }, %struct.ccs_reg_8 { i16 12845, i8 4 }, %struct.ccs_reg_8 { i16 12885, i8 15 }, %struct.ccs_reg_8 { i16 12886, i8 21 }, %struct.ccs_reg_8 { i16 12888, i8 112 }, %struct.ccs_reg_8 { i16 12889, i8 112 }, %struct.ccs_reg_8 { i16 12895, i8 124 }, %struct.ccs_reg_8 { i16 13058, i8 6 }, %struct.ccs_reg_8 { i16 13060, i8 0 }, %struct.ccs_reg_8 { i16 13063, i8 34 }, %struct.ccs_reg_8 { i16 13064, i8 -115 }, %struct.ccs_reg_8 { i16 13086, i8 15 }, %struct.ccs_reg_8 { i16 13088, i8 48 }, %struct.ccs_reg_8 { i16 13089, i8 17 }, %struct.ccs_reg_8 { i16 13090, i8 -104 }, %struct.ccs_reg_8 { i16 13091, i8 100 }, %struct.ccs_reg_8 { i16 13093, i8 -125 }, %struct.ccs_reg_8 { i16 13104, i8 24 }, %struct.ccs_reg_8 { i16 13116, i8 1 }, %struct.ccs_reg_8 { i16 13125, i8 47 }, %struct.ccs_reg_8 { i16 13278, i8 56 }, %struct.ccs_reg_8 { i16 13024, i8 5 }, %struct.ccs_reg_8 { i16 13025, i8 5 }, %struct.ccs_reg_8 { i16 13026, i8 4 }, %struct.ccs_reg_8 { i16 13029, i8 4 }, %struct.ccs_reg_8 { i16 13030, i8 4 }], [48 x i8] zeroinitializer }, align 32
@ccs_write_addr_8s._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 28, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"error %d writing reg 0x%4.4x, val 0x%2.2x\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ccs_write_addr_8s\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/i2c/ccs/ccs-quirk.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ccs_write_addr_8s._entry_ptr = internal global ptr @ccs_write_addr_8s._entry, section ".printk_index", align 4
@imx125es_post_poweron.regs = internal constant { [3 x %struct.ccs_reg_8], [20 x i8] } { [3 x %struct.ccs_reg_8] [%struct.ccs_reg_8 { i16 13058, i8 1 }, %struct.ccs_reg_8 { i16 12333, i8 0 }, %struct.ccs_reg_8 { i16 15112, i8 -116 }], [20 x i8] zeroinitializer }, align 32
@jt8ev1_post_poweron.regs = internal constant { [19 x %struct.ccs_reg_8], [52 x i8] } { [19 x %struct.ccs_reg_8] [%struct.ccs_reg_8 { i16 12337, i8 -51 }, %struct.ccs_reg_8 { i16 12451, i8 -48 }, %struct.ccs_reg_8 { i16 12855, i8 0 }, %struct.ccs_reg_8 { i16 12856, i8 67 }, %struct.ccs_reg_8 { i16 13057, i8 6 }, %struct.ccs_reg_8 { i16 13058, i8 6 }, %struct.ccs_reg_8 { i16 13060, i8 0 }, %struct.ccs_reg_8 { i16 13061, i8 -120 }, %struct.ccs_reg_8 { i16 13098, i8 20 }, %struct.ccs_reg_8 { i16 13100, i8 107 }, %struct.ccs_reg_8 { i16 13110, i8 1 }, %struct.ccs_reg_8 { i16 13119, i8 31 }, %struct.ccs_reg_8 { i16 13141, i8 0 }, %struct.ccs_reg_8 { i16 13142, i8 32 }, %struct.ccs_reg_8 { i16 13247, i8 32 }, %struct.ccs_reg_8 { i16 13257, i8 32 }, %struct.ccs_reg_8 { i16 13262, i8 48 }, %struct.ccs_reg_8 { i16 13263, i8 -20 }, %struct.ccs_reg_8 { i16 13096, i8 -128 }], [52 x i8] zeroinitializer }, align 32
@jt8ev1_post_poweron.regs_96 = internal constant { [3 x %struct.ccs_reg_8], [20 x i8] } { [3 x %struct.ccs_reg_8] [%struct.ccs_reg_8 { i16 12462, i8 0 }, %struct.ccs_reg_8 { i16 12463, i8 -48 }, %struct.ccs_reg_8 { i16 12464, i8 1 }], [20 x i8] zeroinitializer }, align 32
@jt8ev1_post_poweron._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 161, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no MSRs for %d Hz ext_clk\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"jt8ev1_post_poweron\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@jt8ev1_post_poweron._entry_ptr = internal global ptr @jt8ev1_post_poweron._entry, section ".printk_index", align 4
@___asan_gen_.8 = private unnamed_addr constant [20 x i8] c"smiapp_jt8ew9_quirk\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 87, i32 24 }
@___asan_gen_.11 = private unnamed_addr constant [22 x i8] c"smiapp_imx125es_quirk\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 108, i32 24 }
@___asan_gen_.14 = private unnamed_addr constant [20 x i8] c"smiapp_jt8ev1_quirk\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 201, i32 24 }
@___asan_gen_.17 = private unnamed_addr constant [23 x i8] c"smiapp_tcm8500md_quirk\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 216, i32 24 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 51, i32 32 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 26, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 95, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 124, i32 32 }
@___asan_gen_.47 = private unnamed_addr constant [8 x i8] c"regs_96\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 145, i32 32 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [37 x i8] c"../drivers/media/i2c/ccs/ccs-quirk.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 160, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @ccs_write_addr_8s._entry, ptr @ccs_write_addr_8s._entry_ptr, ptr @jt8ev1_post_poweron._entry, ptr @jt8ev1_post_poweron._entry_ptr, ptr @smiapp_jt8ew9_quirk, ptr @smiapp_imx125es_quirk, ptr @smiapp_jt8ev1_quirk, ptr @smiapp_tcm8500md_quirk, ptr @jt8ew9_post_poweron.regs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @imx125es_post_poweron.regs, ptr @jt8ev1_post_poweron.regs, ptr @jt8ev1_post_poweron.regs_96, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smiapp_jt8ew9_quirk to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smiapp_imx125es_quirk to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smiapp_jt8ev1_quirk to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smiapp_tcm8500md_quirk to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jt8ew9_post_poweron.regs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_write_addr_8s._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx125es_post_poweron.regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jt8ev1_post_poweron.regs to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jt8ev1_post_poweron.regs_96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jt8ev1_post_poweron._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jt8ew9_limits(ptr noundef %sensor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %revision_number = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35, i32 3
  %0 = ptrtoint ptr %revision_number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %revision_number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %1)
  %cmp = icmp ult i32 %1, 768
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %frame_skip = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 27
  %2 = ptrtoint ptr %frame_skip to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %frame_skip, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @ccs_replace_limit(ptr noundef %sensor, i32 noundef 5, i32 noundef 0, i32 noundef 59) #4
  tail call void @ccs_replace_limit(ptr noundef %sensor, i32 noundef 6, i32 noundef 0, i32 noundef 6000) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jt8ew9_post_poweron(ptr noundef %sensor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %src.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 3
  %0 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src.i, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %len.addr.021.i = phi i32 [ %dec.i, %for.inc.i.for.body.i_crit_edge ], [ 28, %entry ]
  %regs.addr.020.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ @jt8ew9_post_poweron.regs, %entry ]
  %4 = ptrtoint ptr %regs.addr.020.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %regs.addr.020.i, align 2
  %conv.i = zext i16 %5 to i32
  %val.i = getelementptr inbounds %struct.ccs_reg_8, ptr %regs.addr.020.i, i32 0, i32 1
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %val.i, align 2
  %conv1.i = zext i8 %7 to i32
  %call2.i = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef %conv.i, i32 noundef %conv1.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i, label %for.inc.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %val.i.le = getelementptr inbounds %struct.ccs_reg_8, ptr %regs.addr.020.i, i32 0, i32 1
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %regs.addr.020.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %regs.addr.020.i, align 2
  %conv6.i = zext i16 %9 to i32
  %10 = ptrtoint ptr %val.i.le to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val.i.le, align 2
  %conv8.i = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str, i32 noundef %call2.i, i32 noundef %conv6.i, i32 noundef %conv8.i) #7
  br label %ccs_write_addr_8s.exit

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add nsw i32 %len.addr.021.i, -1
  %incdec.ptr.i = getelementptr %struct.ccs_reg_8, ptr %regs.addr.020.i, i32 1
  %cmp.i = icmp ugt i32 %len.addr.021.i, 1
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ccs_write_addr_8s.exit_crit_edge

for.inc.i.ccs_write_addr_8s.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ccs_write_addr_8s.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

ccs_write_addr_8s.exit:                           ; preds = %for.inc.i.ccs_write_addr_8s.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ %call2.i, %do.end.i ], [ 0, %for.inc.i.ccs_write_addr_8s.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx125es_post_poweron(ptr noundef %sensor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %src.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 3
  %0 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src.i, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %call2.i = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 13058, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %entry.do.end.i_crit_edge, label %for.inc.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.1.do.end.i_crit_edge, %for.inc.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %regs.addr.020.i.lcssa = phi ptr [ @imx125es_post_poweron.regs, %entry.do.end.i_crit_edge ], [ getelementptr inbounds ([3 x %struct.ccs_reg_8], ptr @imx125es_post_poweron.regs, i32 0, i32 1), %for.inc.i.do.end.i_crit_edge ], [ getelementptr inbounds ([3 x %struct.ccs_reg_8], ptr @imx125es_post_poweron.regs, i32 0, i32 2), %for.inc.i.1.do.end.i_crit_edge ]
  %call2.i.lcssa = phi i32 [ %call2.i, %entry.do.end.i_crit_edge ], [ %call2.i.1, %for.inc.i.do.end.i_crit_edge ], [ %call2.i.2, %for.inc.i.1.do.end.i_crit_edge ]
  %val.i.le = getelementptr inbounds %struct.ccs_reg_8, ptr %regs.addr.020.i.lcssa, i32 0, i32 1
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %regs.addr.020.i.lcssa to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %regs.addr.020.i.lcssa, align 2
  %conv6.i = zext i16 %5 to i32
  %6 = ptrtoint ptr %val.i.le to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %val.i.le, align 2
  %conv8.i = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str, i32 noundef %call2.i.lcssa, i32 noundef %conv6.i, i32 noundef %conv8.i) #7
  br label %ccs_write_addr_8s.exit

for.inc.i:                                        ; preds = %entry
  %call2.i.1 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 12333, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.1)
  %cmp3.i.1 = icmp slt i32 %call2.i.1, 0
  br i1 %cmp3.i.1, label %for.inc.i.do.end.i_crit_edge, label %for.inc.i.1

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

for.inc.i.1:                                      ; preds = %for.inc.i
  %call2.i.2 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 15112, i32 noundef 140) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.2)
  %cmp3.i.2 = icmp slt i32 %call2.i.2, 0
  br i1 %cmp3.i.2, label %for.inc.i.1.do.end.i_crit_edge, label %for.inc.i.1.ccs_write_addr_8s.exit_crit_edge

for.inc.i.1.ccs_write_addr_8s.exit_crit_edge:     ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %ccs_write_addr_8s.exit

for.inc.i.1.do.end.i_crit_edge:                   ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

ccs_write_addr_8s.exit:                           ; preds = %for.inc.i.1.ccs_write_addr_8s.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ %call2.i.lcssa, %do.end.i ], [ 0, %for.inc.i.1.ccs_write_addr_8s.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jt8ev1_limits(ptr noundef %sensor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ccs_replace_limit(ptr noundef %sensor, i32 noundef 77, i32 noundef 0, i32 noundef 4271) #4
  tail call void @ccs_replace_limit(ptr noundef %sensor, i32 noundef 198, i32 noundef 0, i32 noundef 184) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jt8ev1_post_poweron(ptr noundef %sensor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %src = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 3
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %len.addr.021.i = phi i32 [ %dec.i, %for.inc.i.for.body.i_crit_edge ], [ 19, %entry ]
  %regs.addr.020.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ @jt8ev1_post_poweron.regs, %entry ]
  %4 = ptrtoint ptr %regs.addr.020.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %regs.addr.020.i, align 2
  %conv.i = zext i16 %5 to i32
  %val.i = getelementptr inbounds %struct.ccs_reg_8, ptr %regs.addr.020.i, i32 0, i32 1
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %val.i, align 2
  %conv1.i = zext i8 %7 to i32
  %call2.i = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef %conv.i, i32 noundef %conv1.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %ccs_write_addr_8s.exit.thread, label %for.inc.i

ccs_write_addr_8s.exit.thread:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %val.i.le = getelementptr inbounds %struct.ccs_reg_8, ptr %regs.addr.020.i, i32 0, i32 1
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %regs.addr.020.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %regs.addr.020.i, align 2
  %conv6.i = zext i16 %9 to i32
  %10 = ptrtoint ptr %val.i.le to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val.i.le, align 2
  %conv8.i = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str, i32 noundef %call2.i, i32 noundef %conv6.i, i32 noundef %conv8.i) #7
  br label %cleanup

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add nsw i32 %len.addr.021.i, -1
  %incdec.ptr.i = getelementptr %struct.ccs_reg_8, ptr %regs.addr.020.i, i32 1
  %cmp.i = icmp ugt i32 %len.addr.021.i, 1
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end:                                           ; preds = %for.inc.i
  %ext_clk = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 7, i32 2
  %12 = ptrtoint ptr %ext_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ext_clk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9600000, i32 %13)
  %cond = icmp eq i32 %13, 9600000
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %if.end
  %14 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %src, align 4
  %dev_priv.i.i12 = getelementptr inbounds %struct.v4l2_subdev, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %dev_priv.i.i12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv.i.i12, align 4
  %call2.i18 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 12462, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i18)
  %cmp3.i19 = icmp slt i32 %call2.i18, 0
  br i1 %cmp3.i19, label %sw.bb.do.end.i25_crit_edge, label %for.inc.i29

sw.bb.do.end.i25_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i25

do.end.i25:                                       ; preds = %for.inc.i29.1.do.end.i25_crit_edge, %for.inc.i29.do.end.i25_crit_edge, %sw.bb.do.end.i25_crit_edge
  %regs.addr.020.i14.lcssa = phi ptr [ @jt8ev1_post_poweron.regs_96, %sw.bb.do.end.i25_crit_edge ], [ getelementptr inbounds ([3 x %struct.ccs_reg_8], ptr @jt8ev1_post_poweron.regs_96, i32 0, i32 1), %for.inc.i29.do.end.i25_crit_edge ], [ getelementptr inbounds ([3 x %struct.ccs_reg_8], ptr @jt8ev1_post_poweron.regs_96, i32 0, i32 2), %for.inc.i29.1.do.end.i25_crit_edge ]
  %call2.i18.lcssa = phi i32 [ %call2.i18, %sw.bb.do.end.i25_crit_edge ], [ %call2.i18.1, %for.inc.i29.do.end.i25_crit_edge ], [ %call2.i18.2, %for.inc.i29.1.do.end.i25_crit_edge ]
  %val.i16.le = getelementptr inbounds %struct.ccs_reg_8, ptr %regs.addr.020.i14.lcssa, i32 0, i32 1
  %dev.i22 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %regs.addr.020.i14.lcssa to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %regs.addr.020.i14.lcssa, align 2
  %conv6.i23 = zext i16 %19 to i32
  %20 = ptrtoint ptr %val.i16.le to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %val.i16.le, align 2
  %conv8.i24 = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i22, ptr noundef nonnull @.str, i32 noundef %call2.i18.lcssa, i32 noundef %conv6.i23, i32 noundef %conv8.i24) #7
  br label %cleanup

for.inc.i29:                                      ; preds = %sw.bb
  %call2.i18.1 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 12463, i32 noundef 208) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i18.1)
  %cmp3.i19.1 = icmp slt i32 %call2.i18.1, 0
  br i1 %cmp3.i19.1, label %for.inc.i29.do.end.i25_crit_edge, label %for.inc.i29.1

for.inc.i29.do.end.i25_crit_edge:                 ; preds = %for.inc.i29
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i25

for.inc.i29.1:                                    ; preds = %for.inc.i29
  %call2.i18.2 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 12464, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i18.2)
  %cmp3.i19.2 = icmp slt i32 %call2.i18.2, 0
  br i1 %cmp3.i19.2, label %for.inc.i29.1.do.end.i25_crit_edge, label %for.inc.i29.1.cleanup_crit_edge

for.inc.i29.1.cleanup_crit_edge:                  ; preds = %for.inc.i29.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc.i29.1.do.end.i25_crit_edge:               ; preds = %for.inc.i29.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i25

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %13) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.inc.i29.1.cleanup_crit_edge, %do.end.i25, %ccs_write_addr_8s.exit.thread
  %retval.0 = phi i32 [ 0, %do.end ], [ %call2.i, %ccs_write_addr_8s.exit.thread ], [ %call2.i18.lcssa, %do.end.i25 ], [ 0, %for.inc.i29.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jt8ev1_pre_streamon(ptr noundef %sensor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 13096, i32 noundef 0) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jt8ev1_post_streamoff(ptr noundef %sensor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 12805, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2050, i32 noundef 2) #4
  %call1 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 12805, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef 13096, i32 noundef 128) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @jt8ev1_init(ptr nocapture noundef %sensor) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 10
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  %2 = or i16 %1, 12
  store i16 %2, ptr %flags, align 2
  %vt_lanes = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 2
  %3 = ptrtoint ptr %vt_lanes to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %vt_lanes, align 2
  %csi2 = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 3
  %4 = ptrtoint ptr %csi2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %csi2, align 1
  %op_lanes = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 36, i32 1
  %6 = ptrtoint ptr %op_lanes to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %op_lanes, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm8500md_limits(ptr noundef %sensor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ccs_replace_limit(ptr noundef %sensor, i32 noundef 38, i32 noundef 0, i32 noundef 2700000) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccs_replace_limit(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccs_write_addr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !24, !26, !27, !28, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @smiapp_jt8ew9_quirk, !1, !"smiapp_jt8ew9_quirk", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ccs/ccs-quirk.c", i32 87, i32 24}
!2 = !{ptr @smiapp_imx125es_quirk, !3, !"smiapp_imx125es_quirk", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/ccs/ccs-quirk.c", i32 108, i32 24}
!4 = !{ptr @smiapp_jt8ev1_quirk, !5, !"smiapp_jt8ev1_quirk", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/ccs/ccs-quirk.c", i32 201, i32 24}
!6 = !{ptr @smiapp_tcm8500md_quirk, !7, !"smiapp_tcm8500md_quirk", i1 false, i1 false}
!7 = !{!"../drivers/media/i2c/ccs/ccs-quirk.c", i32 216, i32 24}
!8 = !{ptr @jt8ew9_post_poweron.regs, !9, !"regs", i1 false, i1 false}
!9 = !{!"../drivers/media/i2c/ccs/ccs-quirk.c", i32 51, i32 32}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ccs/ccs-quirk.c", i32 26, i32 4}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ccs_write_addr_8s._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @ccs_write_addr_8s._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @imx125es_post_poweron.regs, !19, !"regs", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/ccs/ccs-quirk.c", i32 95, i32 32}
!20 = !{ptr @jt8ev1_post_poweron.regs, !21, !"regs", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/ccs/ccs-quirk.c", i32 124, i32 32}
!22 = !{ptr @jt8ev1_post_poweron.regs_96, !23, !"regs_96", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/ccs/ccs-quirk.c", i32 145, i32 32}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/ccs/ccs-quirk.c", i32 160, i32 3}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @jt8ev1_post_poweron._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @jt8ev1_post_poweron._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
