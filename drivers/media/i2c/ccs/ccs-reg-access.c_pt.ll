; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ccs/ccs-reg-access.c_pt.bc'
source_filename = "../drivers/media/i2c/ccs/ccs-reg-access.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ccs_sensor = type { %struct.mutex, [3 x %struct.ccs_subdev], i32, ptr, ptr, ptr, ptr, %struct.ccs_hwconfig, ptr, ptr, ptr, ptr, ptr, i8, [64 x %struct.ccs_binning_subtype], i32, ptr, ptr, i32, i32, %struct.ccs_data_container, %struct.ccs_data_container, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, %struct.ccs_module_info, %struct.ccs_pll, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x ptr] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.ccs_reg = type { i16, i16, ptr }
%struct.ccs_quirk = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@ccs_write_addr_no_quirk.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ccs\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ccs_write_addr_no_quirk\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/i2c/ccs/ccs-reg-access.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"writing reg 0x%4.4x value 0x%*.*x (%u)\0A\00", [56 x i8] zeroinitializer }, align 32
@ccs_write_addr_no_quirk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 348, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"wrote 0x%x to offset 0x%x error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ccs_write_addr_no_quirk._entry_ptr = internal global ptr @ccs_write_addr_no_quirk._entry, section ".printk_index", align 4
@ccs_write_data_regs.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ccs_write_data_regs\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"writing msr reg 0x%4.4x value 0x%s\0A\00", [60 x i8] zeroinitializer }, align 32
@ccs_write_data_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 409, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"error writing %u octets to address 0x%4.4x\0A\00", [52 x i8] zeroinitializer }, align 32
@ccs_write_data_regs._entry_ptr = internal global ptr @ccs_write_data_regs._entry, section ".printk_index", align 4
@ireal32_to_u32_mul_1000000._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 149, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"value %u overflows!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ireal32_to_u32_mul_1000000\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ireal32_to_u32_mul_1000000._entry_ptr = internal global ptr @ireal32_to_u32_mul_1000000._entry, section ".printk_index", align 4
@float_to_u32_mul_1000000._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 26, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"this is a negative number\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"float_to_u32_mul_1000000\00", [39 x i8] zeroinitializer }, align 32
@float_to_u32_mul_1000000._entry_ptr = internal global ptr @float_to_u32_mul_1000000._entry, section ".printk_index", align 4
@float_to_u32_mul_1000000._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 34, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NaN or other special number\0A\00", [35 x i8] zeroinitializer }, align 32
@float_to_u32_mul_1000000._entry_ptr.17 = internal global ptr @float_to_u32_mul_1000000._entry.15, section ".printk_index", align 4
@____ccs_read_addr._entry = internal constant %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 110, ptr @.str.5, ptr @.str.6 }, align 1
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"read from offset 0x%x error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"____ccs_read_addr\00", [46 x i8] zeroinitializer }, align 32
@____ccs_read_addr._entry_ptr = internal global ptr @____ccs_read_addr._entry, section ".printk_index", align 4
@ccs_write_retry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 314, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sensor i2c stall encountered. retries: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ccs_write_retry\00", [16 x i8] zeroinitializer }, align 32
@ccs_write_retry._entry_ptr = internal global ptr @ccs_write_retry._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 340, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 346, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 396, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 407, i32 5 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 149, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 26, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 34, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 110, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [42 x i8] c"../drivers/media/i2c/ccs/ccs-reg-access.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 312, i32 4 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @____ccs_read_addr._entry, ptr @____ccs_read_addr._entry_ptr, ptr @ccs_write_addr_no_quirk._entry, ptr @ccs_write_addr_no_quirk._entry_ptr, ptr @ccs_write_data_regs._entry, ptr @ccs_write_data_regs._entry_ptr, ptr @ccs_write_retry._entry, ptr @ccs_write_retry._entry_ptr, ptr @float_to_u32_mul_1000000._entry, ptr @float_to_u32_mul_1000000._entry.15, ptr @float_to_u32_mul_1000000._entry_ptr, ptr @float_to_u32_mul_1000000._entry_ptr.17, ptr @ireal32_to_u32_mul_1000000._entry, ptr @ireal32_to_u32_mul_1000000._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_write_addr_no_quirk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_write_data_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ireal32_to_u32_mul_1000000._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @float_to_u32_mul_1000000._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @float_to_u32_mul_1000000._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_write_retry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ccs_reg_width(i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %reg, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and1 = and i32 %reg, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %. = select i1 %tobool2.not, i32 1, i32 4
  %retval.0 = select i1 %tobool.not, i32 %., i32 2
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ccs_reg_conv(ptr noundef %sensor, i32 noundef %reg, i32 noundef %val) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %src = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 3
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %and = and i32 %reg, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else7, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ccs_get_limit(ptr noundef %sensor, i32 noundef 101, i32 noundef 0) #6
  %and2 = and i32 %call1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 281475071, i32 %val)
  %cmp.i = icmp ugt i32 %val, 281475071
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.10, i32 noundef %val) #9
  br label %if.end13

if.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %shr.i = lshr i32 %val, 10
  %mul.i = mul nuw i32 %shr.i, 15625
  %and.i = and i32 %val, 1023
  %mul2.i = mul nuw nsw i32 %and.i, 15625
  %div6.i = lshr i32 %mul2.i, 10
  %add.i = add i32 %div6.i, %mul.i
  br label %if.end13

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp.i21 = icmp slt i32 %val, 0
  br i1 %cmp.i21, label %do.end.i23, label %if.end.i24

do.end.i23:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i22 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i22, ptr noundef nonnull @.str.13) #9
  br label %if.end13

if.end.i24:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %val)
  %cmp1.i = icmp eq i32 %val, 2139095040
  br i1 %cmp1.i, label %if.end.i24.if.end13_crit_edge, label %if.end3.i

if.end.i24.if.end13_crit_edge:                    ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end3.i:                                        ; preds = %if.end.i24
  %and.i25 = and i32 %val, 2139095040
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %and.i25)
  %cmp4.i = icmp eq i32 %and.i25, 2139095040
  br i1 %cmp4.i, label %do.end8.i, label %if.end10.i

do.end8.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev9.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull @.str.16) #9
  br label %if.end13

if.end10.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp11.i = icmp eq i32 %val, 0
  br i1 %cmp11.i, label %if.end10.i.if.end13_crit_edge, label %if.end13.i

if.end10.i.if.end13_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end13.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1333788672, i32 %val)
  %cmp14.i = icmp ugt i32 %val, 1333788672
  br i1 %cmp14.i, label %if.end13.i.if.end13_crit_edge, label %if.end16.i

if.end13.i.if.end13_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end16.i:                                       ; preds = %if.end13.i
  %shr43.i = lshr i32 %val, 23
  %and17.i = and i32 %val, 8388607
  %or.i = or i32 %and17.i, 8388608
  %conv.i = zext i32 %or.i to i64
  %mul.i26 = mul nuw nsw i64 %conv.i, 1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1065353216, i32 %val)
  %cmp18.i = icmp ult i32 %val, 1065353216
  br i1 %cmp18.i, label %if.then20.i, label %if.else.i

if.then20.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub21.i = sub nsw i32 127, %shr43.i
  %sh_prom.i = zext i32 %sub21.i to i64
  %shr22.i = lshr i64 %mul.i26, %sh_prom.i
  %extract.i = lshr i64 %shr22.i, 23
  %extract.t.i = trunc i64 %extract.i to i32
  br label %if.end13

if.else.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add nsw i32 %shr43.i, -127
  %sh_prom23.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %mul.i26, %sh_prom23.i
  %extract41.i = lshr i64 %shl.i, 23
  %extract.t42.i = trunc i64 %extract41.i to i32
  br label %if.end13

if.else7:                                         ; preds = %entry
  %and8 = and i32 %reg, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else7.if.end13_crit_edge, label %if.then10

if.else7.if.end13_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then10:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_const_cmp4(i32 281475071, i32 %val)
  %cmp.i28 = icmp ugt i32 %val, 281475071
  br i1 %cmp.i28, label %do.end.i30, label %if.end.i37

do.end.i30:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i29 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i29, ptr noundef nonnull @.str.10, i32 noundef %val) #9
  br label %if.end13

if.end.i37:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %shr.i31 = lshr i32 %val, 10
  %mul.i32 = mul nuw i32 %shr.i31, 15625
  %and.i33 = and i32 %val, 1023
  %mul2.i34 = mul nuw nsw i32 %and.i33, 15625
  %div6.i35 = lshr i32 %mul2.i34, 10
  %add.i36 = add i32 %div6.i35, %mul.i32
  br label %if.end13

if.end13:                                         ; preds = %if.end.i37, %do.end.i30, %if.else7.if.end13_crit_edge, %if.else.i, %if.then20.i, %if.end13.i.if.end13_crit_edge, %if.end10.i.if.end13_crit_edge, %do.end8.i, %if.end.i24.if.end13_crit_edge, %do.end.i23, %if.end.i, %do.end.i
  %val.addr.0 = phi i32 [ %val, %if.else7.if.end13_crit_edge ], [ -1, %do.end.i ], [ %add.i, %if.end.i ], [ 0, %do.end.i23 ], [ 0, %do.end8.i ], [ -1, %if.end.i24.if.end13_crit_edge ], [ 0, %if.end10.i.if.end13_crit_edge ], [ -1, %if.end13.i.if.end13_crit_edge ], [ %extract.t.i, %if.then20.i ], [ %extract.t42.i, %if.else.i ], [ -1, %do.end.i30 ], [ %add.i36, %if.end.i37 ]
  ret i32 %val.addr.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccs_get_limit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ccs_read_addr(ptr noundef %sensor, i32 noundef %reg, ptr noundef %val) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ccs_read_addr_raw(ptr noundef %sensor, i32 noundef %reg, ptr noundef %val, i1 noundef zeroext false, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccs_read_addr_raw(ptr noundef %sensor, i32 noundef %reg, ptr noundef %val, i1 noundef zeroext %force8, i1 noundef zeroext %conv) unnamed_addr #1 align 64 {
entry:
  %reg.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %reg, ptr %reg.addr, align 4
  %num_sensor_read_only_regs.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 20, i32 1
  %1 = ptrtoint ptr %num_sensor_read_only_regs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_sensor_read_only_regs.i, align 4
  %and.i.i.i = and i32 %reg, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %and1.i.i.i = and i32 %reg, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %and1.i.i.i, 0
  %..i.i.i = select i1 %tobool2.not.i.i.i, i32 1, i32 4
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %..i.i.i, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp65.not.i.i = icmp eq i32 %2, 0
  br i1 %cmp65.not.i.i, label %entry.if.end.i_crit_edge, label %for.body.lr.ph.i.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.body.lr.ph.i.i:                               ; preds = %entry
  %sensor_read_only_regs.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 20, i32 2
  %3 = ptrtoint ptr %sensor_read_only_regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sensor_read_only_regs.i, align 4
  %conv3.i.i = and i32 %reg, 65535
  %add4.i.i = add nuw nsw i32 %retval.0.i.i.i, %conv3.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.067.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %regs.addr.066.i.i = phi ptr [ %4, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %5 = ptrtoint ptr %regs.addr.066.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %regs.addr.066.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  %len.i.i = getelementptr inbounds %struct.ccs_reg, ptr %regs.addr.066.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %len.i.i, align 2
  %conv1.i.i = zext i16 %8 to i32
  %add.i.i = add nuw nsw i32 %conv1.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %add4.i.i)
  %cmp5.i.i = icmp ult i32 %add.i.i, %add4.i.i
  br i1 %cmp5.i.i, label %for.inc.i.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %conv.i.i.le = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.i.i, i32 %conv.i.i.le)
  %cmp11.i.i = icmp ult i32 %conv3.i.i, %conv.i.i.le
  br i1 %cmp11.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.end14.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end14.i.i:                                     ; preds = %if.end.i.i
  %value.i.i = getelementptr inbounds %struct.ccs_reg, ptr %regs.addr.066.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %value.i.i, align 4
  %sub.i.i = sub nsw i32 %conv3.i.i, %conv.i.i.le
  %arrayidx.i.i = getelementptr i8, ptr %10, i32 %sub.i.i
  %11 = zext i32 %retval.0.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i.i.i, label %do.end.i.i [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb20.i.i
    i32 4, label %sw.bb23.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.i, align 1
  %conv19.i.i = zext i8 %13 to i32
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv19.i.i, ptr %val, align 4
  br label %cleanup

sw.bb20.i.i:                                      ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %arrayidx.i.i, align 1
  %conv22.i.i = zext i16 %16 to i32
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv22.i.i, ptr %val, align 4
  br label %cleanup

sw.bb23.i.i:                                      ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %arrayidx.i.i, align 1
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %val, align 4
  br label %cleanup

do.end.i.i:                                       ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.067.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.ccs_reg, ptr %regs.addr.066.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %2
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %for.inc.i.i.if.end.i_crit_edge, %do.end.i.i, %if.end.i.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %num_module_read_only_regs.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 21, i32 7
  %21 = ptrtoint ptr %num_module_read_only_regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_module_read_only_regs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp65.not.i15.i = icmp eq i32 %22, 0
  br i1 %cmp65.not.i15.i, label %if.end.i.if.then8_crit_edge, label %for.body.lr.ph.i18.i

if.end.i.if.then8_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

for.body.lr.ph.i18.i:                             ; preds = %if.end.i
  %module_read_only_regs.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 21, i32 8
  %23 = ptrtoint ptr %module_read_only_regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %module_read_only_regs.i, align 4
  %conv3.i16.i = and i32 %reg, 65535
  %add4.i17.i = add nuw nsw i32 %retval.0.i.i.i, %conv3.i16.i
  br label %for.body.i26.i

for.body.i26.i:                                   ; preds = %for.inc.i43.i.for.body.i26.i_crit_edge, %for.body.lr.ph.i18.i
  %i.067.i19.i = phi i32 [ 0, %for.body.lr.ph.i18.i ], [ %inc.i40.i, %for.inc.i43.i.for.body.i26.i_crit_edge ]
  %regs.addr.066.i20.i = phi ptr [ %24, %for.body.lr.ph.i18.i ], [ %incdec.ptr.i41.i, %for.inc.i43.i.for.body.i26.i_crit_edge ]
  %25 = ptrtoint ptr %regs.addr.066.i20.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %regs.addr.066.i20.i, align 4
  %conv.i21.i = zext i16 %26 to i32
  %len.i22.i = getelementptr inbounds %struct.ccs_reg, ptr %regs.addr.066.i20.i, i32 0, i32 1
  %27 = ptrtoint ptr %len.i22.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %len.i22.i, align 2
  %conv1.i23.i = zext i16 %28 to i32
  %add.i24.i = add nuw nsw i32 %conv1.i23.i, %conv.i21.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i24.i, i32 %add4.i17.i)
  %cmp5.i25.i = icmp ult i32 %add.i24.i, %add4.i17.i
  br i1 %cmp5.i25.i, label %for.inc.i43.i, label %if.end.i29.i

if.end.i29.i:                                     ; preds = %for.body.i26.i
  %conv.i21.i.le = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.i16.i, i32 %conv.i21.i.le)
  %cmp11.i28.i = icmp ult i32 %conv3.i16.i, %conv.i21.i.le
  br i1 %cmp11.i28.i, label %if.end.i29.i.if.then8_crit_edge, label %if.end14.i33.i

if.end.i29.i.if.then8_crit_edge:                  ; preds = %if.end.i29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

if.end14.i33.i:                                   ; preds = %if.end.i29.i
  %value.i30.i = getelementptr inbounds %struct.ccs_reg, ptr %regs.addr.066.i20.i, i32 0, i32 2
  %29 = ptrtoint ptr %value.i30.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %value.i30.i, align 4
  %sub.i31.i = sub nsw i32 %conv3.i16.i, %conv.i21.i.le
  %arrayidx.i32.i = getelementptr i8, ptr %30, i32 %sub.i31.i
  %31 = zext i32 %retval.0.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %retval.0.i.i.i, label %do.end.i39.i [
    i32 1, label %sw.bb.i35.i
    i32 2, label %sw.bb20.i37.i
    i32 4, label %sw.bb23.i38.i
  ]

sw.bb.i35.i:                                      ; preds = %if.end14.i33.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %arrayidx.i32.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i32.i, align 1
  %conv19.i34.i = zext i8 %33 to i32
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv19.i34.i, ptr %val, align 4
  br label %cleanup

sw.bb20.i37.i:                                    ; preds = %if.end14.i33.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %arrayidx.i32.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %arrayidx.i32.i, align 1
  %conv22.i36.i = zext i16 %36 to i32
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv22.i36.i, ptr %val, align 4
  br label %cleanup

sw.bb23.i38.i:                                    ; preds = %if.end14.i33.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %arrayidx.i32.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %arrayidx.i32.i, align 1
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %val, align 4
  br label %cleanup

do.end.i39.i:                                     ; preds = %if.end14.i33.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %if.then8

for.inc.i43.i:                                    ; preds = %for.body.i26.i
  %inc.i40.i = add nuw i32 %i.067.i19.i, 1
  %incdec.ptr.i41.i = getelementptr %struct.ccs_reg, ptr %regs.addr.066.i20.i, i32 1
  %exitcond.not.i42.i = icmp eq i32 %inc.i40.i, %22
  br i1 %exitcond.not.i42.i, label %for.inc.i43.i.if.then8_crit_edge, label %for.inc.i43.i.for.body.i26.i_crit_edge

for.inc.i43.i.for.body.i26.i_crit_edge:           ; preds = %for.inc.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i26.i

for.inc.i43.i.if.then8_crit_edge:                 ; preds = %for.inc.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

if.then8:                                         ; preds = %for.inc.i43.i.if.then8_crit_edge, %do.end.i39.i, %if.end.i29.i.if.then8_crit_edge, %if.end.i.if.then8_crit_edge
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %val, align 4
  %quirk9 = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35, i32 16
  %42 = ptrtoint ptr %quirk9 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %quirk9, align 4
  %tobool10.not = icmp eq ptr %43, null
  br i1 %tobool10.not, label %if.then8.if.end24_crit_edge, label %land.lhs.true

if.then8.if.end24_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true:                                    ; preds = %if.then8
  %reg_access = getelementptr inbounds %struct.ccs_quirk, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %reg_access to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_access, align 4
  %tobool13.not = icmp eq ptr %45, null
  br i1 %tobool13.not, label %land.lhs.true.if.end24_crit_edge, label %cond.end

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

cond.end:                                         ; preds = %land.lhs.true
  %call17 = call i32 %45(ptr noundef %sensor, i1 noundef zeroext false, ptr noundef nonnull %reg.addr, ptr noundef %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call17)
  %cmp = icmp eq i32 %call17, -515
  br i1 %cmp, label %cond.end.cleanup_crit_edge, label %if.end20

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp21 = icmp slt i32 %call17, 0
  br i1 %cmp21, label %if.end20.cleanup_crit_edge, label %if.end20.if.end24_crit_edge

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.end20.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge, %if.then8.if.end24_crit_edge
  %46 = ptrtoint ptr %reg.addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %reg.addr, align 4
  br i1 %force8, label %if.then26, label %if.end30

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = call fastcc i32 @__ccs_read_addr(ptr noundef %sensor, i32 noundef %47, ptr noundef %val, i1 noundef zeroext true, i1 noundef zeroext %conv)
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  %48 = ptrtoint ptr %quirk9 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %quirk9, align 4
  %tobool33.not = icmp eq ptr %49, null
  br i1 %tobool33.not, label %if.end30.cond.end38_crit_edge, label %cond.true34

if.end30.cond.end38_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end38

cond.true34:                                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.ccs_quirk, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags, align 4
  %and = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %phi.cmp = icmp ne i32 %and, 0
  br label %cond.end38

cond.end38:                                       ; preds = %cond.true34, %if.end30.cond.end38_crit_edge
  %cond39 = phi i1 [ %phi.cmp, %cond.true34 ], [ false, %if.end30.cond.end38_crit_edge ]
  %call42 = call fastcc i32 @__ccs_read_addr(ptr noundef %sensor, i32 noundef %47, ptr noundef %val, i1 noundef zeroext %cond39, i1 noundef zeroext %conv)
  br label %cleanup

cleanup:                                          ; preds = %cond.end38, %if.then26, %if.end20.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %sw.bb23.i38.i, %sw.bb20.i37.i, %sw.bb.i35.i, %sw.bb23.i.i, %sw.bb20.i.i, %sw.bb.i.i
  %retval.0 = phi i32 [ %call28, %if.then26 ], [ %call42, %cond.end38 ], [ 0, %cond.end.cleanup_crit_edge ], [ %call17, %if.end20.cleanup_crit_edge ], [ 0, %sw.bb.i.i ], [ 0, %sw.bb20.i.i ], [ 0, %sw.bb23.i.i ], [ 0, %sw.bb.i35.i ], [ 0, %sw.bb20.i37.i ], [ 0, %sw.bb23.i38.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ccs_read_addr_8only(ptr noundef %sensor, i32 noundef %reg, ptr noundef %val) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ccs_read_addr_raw(ptr noundef %sensor, i32 noundef %reg, ptr noundef %val, i1 noundef zeroext true, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ccs_read_addr_noconv(ptr noundef %sensor, i32 noundef %reg, ptr noundef %val) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ccs_read_addr_raw(ptr noundef %sensor, i32 noundef %reg, ptr noundef %val, i1 noundef zeroext false, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ccs_write_addr_no_quirk(ptr nocapture noundef readonly %sensor, i32 noundef %reg, i32 noundef %val) local_unnamed_addr #1 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  %data = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %src = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 3
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %4 = getelementptr inbounds i8, ptr %msg, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data) #6
  %6 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 2
  %and.i = and i32 %reg, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and1.i = and i32 %reg, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %..i = select i1 %tobool2.not.i, i32 1, i32 4
  %retval.0.i47 = select i1 %tobool.not.i, i32 %..i, i32 2
  %addr = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr, align 2
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %11 = trunc i32 %retval.0.i47 to i16
  %conv = add nuw nsw i16 %11, 2
  %len3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %12 = ptrtoint ptr %len3 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %len3, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %data, ptr %buf, align 4
  %conv4 = trunc i32 %reg to i16
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv4, ptr %data, align 2
  %.neg = mul nsw i32 %retval.0.i47, -8
  %mul = add nsw i32 %.neg, 32
  %shl = shl i32 %val, %mul
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %shl, ptr %6, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_write_addr_no_quirk.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_write_addr_no_quirk, %if.then10)) #6
          to label %do.end [label %if.then10], !srcloc !54

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %conv12 = and i32 %reg, 65535
  %shl14 = shl nuw nsw i32 %retval.0.i47, 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_write_addr_no_quirk.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %conv12, i32 noundef %shl14, i32 noundef %shl14, i32 noundef %val, i32 noundef %val) #6
  br label %do.end

do.end:                                           ; preds = %if.then10, %entry
  %call18 = call fastcc i32 @ccs_write_retry(ptr noundef %3, ptr noundef nonnull %msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.end.cleanup_crit_edge, label %do.end23

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end23:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev24 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %conv26 = and i32 %reg, 65535
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.4, i32 noundef %val, i32 noundef %conv26, i32 noundef %call18) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  ret i32 %call18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccs_write_retry(ptr noundef %client, ptr noundef %msg) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %call = tail call i32 @i2c_transfer(ptr noundef %1, ptr noundef %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp1.not = icmp eq i32 %call, 1
  br i1 %cmp1.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %call.1 = tail call i32 @i2c_transfer(ptr noundef %3, ptr noundef %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.1)
  %cmp1.not.1 = icmp eq i32 %call.1, 1
  br i1 %cmp1.not.1, label %if.then.do.end_crit_edge, label %if.then.1

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then.1:                                        ; preds = %if.then
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %call.2 = tail call i32 @i2c_transfer(ptr noundef %5, ptr noundef %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.2)
  %cmp1.not.2 = icmp eq i32 %call.2, 1
  br i1 %cmp1.not.2, label %if.then.1.do.end_crit_edge, label %if.then.2

if.then.1.do.end_crit_edge:                       ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then.2:                                        ; preds = %if.then.1
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %call.3 = tail call i32 @i2c_transfer(ptr noundef %7, ptr noundef %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.3)
  %cmp1.not.3 = icmp eq i32 %call.3, 1
  br i1 %cmp1.not.3, label %if.then.2.do.end_crit_edge, label %if.then.3

if.then.2.do.end_crit_edge:                       ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then.3:                                        ; preds = %if.then.2
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %call.4 = tail call i32 @i2c_transfer(ptr noundef %9, ptr noundef %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.4)
  %cmp1.not.4 = icmp eq i32 %call.4, 1
  br i1 %cmp1.not.4, label %if.then.3.do.end_crit_edge, label %if.then.4

if.then.3.do.end_crit_edge:                       ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then.4:                                        ; preds = %if.then.3
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %call.5 = tail call i32 @i2c_transfer(ptr noundef %11, ptr noundef %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.5)
  %cmp1.not.5 = icmp eq i32 %call.5, 1
  br i1 %cmp1.not.5, label %if.then.4.do.end_crit_edge, label %if.then.5

if.then.4.do.end_crit_edge:                       ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then.5:                                        ; preds = %if.then.4
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %call.6 = tail call i32 @i2c_transfer(ptr noundef %13, ptr noundef %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.6)
  %cmp1.not.6 = icmp eq i32 %call.6, 1
  br i1 %cmp1.not.6, label %if.then.5.do.end_crit_edge, label %if.then.6

if.then.5.do.end_crit_edge:                       ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then.6:                                        ; preds = %if.then.5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter, align 8
  %call.7 = tail call i32 @i2c_transfer(ptr noundef %15, ptr noundef %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.7)
  %cmp1.not.7 = icmp eq i32 %call.7, 1
  br i1 %cmp1.not.7, label %if.then.6.do.end_crit_edge, label %if.then.7

if.then.6.do.end_crit_edge:                       ; preds = %if.then.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then.7:                                        ; preds = %if.then.6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %16 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter, align 8
  %call.8 = tail call i32 @i2c_transfer(ptr noundef %17, ptr noundef %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.8)
  %cmp1.not.8 = icmp eq i32 %call.8, 1
  br i1 %cmp1.not.8, label %if.then.7.do.end_crit_edge, label %if.then.8

if.then.7.do.end_crit_edge:                       ; preds = %if.then.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then.8:                                        ; preds = %if.then.7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %18 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter, align 8
  %call.9 = tail call i32 @i2c_transfer(ptr noundef %19, ptr noundef %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.9)
  %cmp1.not.9 = icmp eq i32 %call.9, 1
  br i1 %cmp1.not.9, label %if.then.8.do.end_crit_edge, label %if.then.9

if.then.8.do.end_crit_edge:                       ; preds = %if.then.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then.9:                                        ; preds = %if.then.8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  br label %cleanup

do.end:                                           ; preds = %if.then.8.do.end_crit_edge, %if.then.7.do.end_crit_edge, %if.then.6.do.end_crit_edge, %if.then.5.do.end_crit_edge, %if.then.4.do.end_crit_edge, %if.then.3.do.end_crit_edge, %if.then.2.do.end_crit_edge, %if.then.1.do.end_crit_edge, %if.then.do.end_crit_edge
  %retries.012.lcssa.ph = phi i32 [ 9, %if.then.8.do.end_crit_edge ], [ 8, %if.then.7.do.end_crit_edge ], [ 7, %if.then.6.do.end_crit_edge ], [ 6, %if.then.5.do.end_crit_edge ], [ 5, %if.then.4.do.end_crit_edge ], [ 4, %if.then.3.do.end_crit_edge ], [ 3, %if.then.2.do.end_crit_edge ], [ 2, %if.then.1.do.end_crit_edge ], [ 1, %if.then.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %retries.012.lcssa.ph) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %call.9, %if.then.9 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ccs_write_addr(ptr noundef %sensor, i32 noundef %reg, i32 noundef %val) local_unnamed_addr #1 align 64 {
entry:
  %reg.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %reg, ptr %reg.addr, align 4
  %1 = ptrtoint ptr %val.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %val, ptr %val.addr, align 4
  %quirk = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 35, i32 16
  %2 = ptrtoint ptr %quirk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %quirk, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %land.lhs.true

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %reg_access = getelementptr inbounds %struct.ccs_quirk, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %reg_access to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_access, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end9_crit_edge, label %cond.end

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

cond.end:                                         ; preds = %land.lhs.true
  %call = call i32 %5(ptr noundef %sensor, i1 noundef zeroext true, ptr noundef nonnull %reg.addr, ptr noundef nonnull %val.addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call)
  %cmp = icmp eq i32 %call, -515
  br i1 %cmp, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %6 = ptrtoint ptr %reg.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg.addr, align 4
  %8 = ptrtoint ptr %val.addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.addr, align 4
  %call10 = call i32 @ccs_write_addr_no_quirk(ptr noundef %sensor, i32 noundef %7, i32 noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ 0, %cond.end.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ccs_write_data_regs(ptr nocapture noundef readonly %sensor, ptr nocapture noundef readonly %regs, i32 noundef %num_regs) local_unnamed_addr #1 align 64 {
entry:
  %buf = alloca [34 x i8], align 2
  %msg = alloca %struct.i2c_msg, align 4
  %printbuf = alloca [65 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %src = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 3
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %buf) #6
  %4 = call ptr @memset(ptr %buf, i32 255, i32 34)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %5 = getelementptr inbounds i8, ptr %msg, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr1, align 2
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %buf2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buf, ptr %buf2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_regs)
  %cmp103.not = icmp eq i32 %num_regs, 0
  br i1 %cmp103.not, label %entry.cleanup65_crit_edge, label %for.body.lr.ph

entry.cleanup65_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup65

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %add.ptr = getelementptr inbounds i8, ptr %buf, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc63.for.body_crit_edge, %for.body.lr.ph
  %regs.addr.0105 = phi ptr [ %regs, %for.body.lr.ph ], [ %incdec.ptr, %for.inc63.for.body_crit_edge ]
  %i.0104 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc63.for.body_crit_edge ]
  %len4 = getelementptr inbounds %struct.ccs_reg, ptr %regs.addr.0105, i32 0, i32 1
  %12 = ptrtoint ptr %len4 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %len4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp599.not = icmp eq i16 %13, 0
  br i1 %cmp599.not, label %for.body.for.inc63_crit_edge, label %for.body7.preheader

for.body.for.inc63_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc63

for.body7.preheader:                              ; preds = %for.body
  %conv98 = zext i16 %13 to i32
  %value = getelementptr inbounds %struct.ccs_reg, ptr %regs.addr.0105, i32 0, i32 2
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %value, align 4
  br label %for.body7

for.body7:                                        ; preds = %for.inc.for.body7_crit_edge, %for.body7.preheader
  %conv102 = phi i32 [ %conv, %for.inc.for.body7_crit_edge ], [ %conv98, %for.body7.preheader ]
  %j.0101 = phi i32 [ %add54, %for.inc.for.body7_crit_edge ], [ 0, %for.body7.preheader ]
  %regdata.0100 = phi ptr [ %add.ptr58, %for.inc.for.body7_crit_edge ], [ %15, %for.body7.preheader ]
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %printbuf) #6
  %16 = call ptr @memset(ptr %printbuf, i32 0, i32 65)
  %sub = sub i32 %conv102, %j.0101
  %17 = call i32 @llvm.umin.i32(i32 %sub, i32 32)
  %conv12 = trunc i32 %17 to i16
  %18 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv12, ptr %len, align 4
  %call17 = call ptr @bin2hex(ptr noundef nonnull %printbuf, ptr noundef %regdata.0100, i32 noundef %17) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_write_data_regs.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_write_data_regs, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !54

if.then:                                          ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %regs.addr.0105 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %regs.addr.0105, align 4
  %conv23 = zext i16 %20 to i32
  %add = add i32 %j.0101, %conv23
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_write_data_regs.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %add, ptr noundef nonnull %printbuf) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %for.body7
  %21 = ptrtoint ptr %regs.addr.0105 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %regs.addr.0105, align 4
  %23 = trunc i32 %j.0101 to i16
  %conv28 = add i16 %22, %23
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv28, ptr %buf, align 2
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %len, align 4
  %conv32 = zext i16 %26 to i32
  %27 = call ptr @memcpy(ptr %add.ptr, ptr %regdata.0100, i32 %conv32)
  %add35 = add i16 %26, 2
  store i16 %add35, ptr %len, align 4
  %call37 = call fastcc i32 @ccs_write_retry(ptr noundef %3, ptr noundef nonnull %msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %for.inc, label %cleanup59.thread

cleanup59.thread:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %len, align 4
  %conv45 = zext i16 %29 to i32
  %30 = ptrtoint ptr %regs.addr.0105 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %regs.addr.0105, align 4
  %conv47 = zext i16 %31 to i32
  %add48 = add i32 %j.0101, %conv47
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %conv45, i32 noundef %add48) #9
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %printbuf) #6
  br label %cleanup65

for.inc:                                          ; preds = %do.end
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %printbuf) #6
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %len, align 4
  %conv52 = zext i16 %33 to i32
  %sub53 = add nsw i32 %conv52, -2
  %add54 = add i32 %sub53, %j.0101
  %add.ptr58 = getelementptr i8, ptr %regdata.0100, i32 %sub53
  %34 = ptrtoint ptr %len4 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %len4, align 2
  %conv = zext i16 %35 to i32
  %cmp5 = icmp ult i32 %add54, %conv
  br i1 %cmp5, label %for.inc.for.body7_crit_edge, label %for.inc.for.inc63_crit_edge

for.inc.for.inc63_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc63

for.inc.for.body7_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7

for.inc63:                                        ; preds = %for.inc.for.inc63_crit_edge, %for.body.for.inc63_crit_edge
  %inc = add nuw i32 %i.0104, 1
  %incdec.ptr = getelementptr %struct.ccs_reg, ptr %regs.addr.0105, i32 1
  %exitcond.not = icmp eq i32 %inc, %num_regs
  br i1 %exitcond.not, label %for.inc63.cleanup65_crit_edge, label %for.inc63.for.body_crit_edge

for.inc63.for.body_crit_edge:                     ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc63.cleanup65_crit_edge:                    ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup65

cleanup65:                                        ; preds = %for.inc63.cleanup65_crit_edge, %cleanup59.thread, %entry.cleanup65_crit_edge
  %retval.4 = phi i32 [ %call37, %cleanup59.thread ], [ 0, %entry.cleanup65_crit_edge ], [ 0, %for.inc63.cleanup65_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %buf) #6
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bin2hex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ccs_read_addr(ptr noundef %sensor, i32 noundef %reg, ptr nocapture noundef %val, i1 noundef zeroext %only8, i1 noundef zeroext %conv) unnamed_addr #1 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %data_buf.i.i = alloca [4 x i8], align 4
  %offset_buf.i.i = alloca [2 x i8], align 2
  %msg.i = alloca %struct.i2c_msg, align 4
  %data_buf.i = alloca [4 x i8], align 4
  %offset_buf.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %reg, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and1.i = and i32 %reg, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %..i = select i1 %tobool2.not.i, i32 1, i32 4
  %retval.0.i = select i1 %tobool.not.i, i32 %..i, i32 2
  %conv5 = trunc i32 %reg to i16
  br i1 %only8, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %src.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 3
  %0 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src.i, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 196607, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i) #6
  %6 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %data_buf.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %offset_buf.i) #6
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr.i, align 2
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %offset_buf.i, ptr %buf.i, align 4
  %12 = ptrtoint ptr %offset_buf.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv5, ptr %offset_buf.i, align 2
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 8
  %call5.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp6.not.i = icmp eq i32 %call5.i, 1
  br i1 %cmp6.not.i, label %if.end13.i, label %if.then.do.end.i_crit_edge

if.then.do.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end13.i:                                       ; preds = %if.then
  %conv3 = trunc i32 %retval.0.i to i16
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv3, ptr %4, align 4
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags.i, align 2
  %sub.i = sub nuw nsw i32 4, %retval.0.i
  %arrayidx.i = getelementptr [4 x i8], ptr %data_buf.i, i32 0, i32 %sub.i
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx.i, ptr %buf.i, align 4
  %18 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter.i, align 8
  %call19.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19.i)
  %cmp20.not.i = icmp eq i32 %call19.i, 1
  br i1 %cmp20.not.i, label %if.end27.i, label %if.end13.i.do.end.i_crit_edge

if.end13.i.do.end.i_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end27.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_buf.i, align 4
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %val, align 4
  br label %____ccs_read_addr.exit

do.end.i:                                         ; preds = %if.end13.i.do.end.i_crit_edge, %if.then.do.end.i_crit_edge
  %call5.sink47.i = phi i32 [ %call5.i, %if.then.do.end.i_crit_edge ], [ %call19.i, %if.end13.i.do.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.sink47.i)
  %cmp9.i = icmp sgt i32 %call5.sink47.i, -1
  %spec.store.select.i = select i1 %cmp9.i, i32 -16, i32 %call5.sink47.i
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %conv30.i = and i32 %reg, 65535
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.18, i32 noundef %conv30.i, i32 noundef %spec.store.select.i) #9
  br label %____ccs_read_addr.exit

____ccs_read_addr.exit:                           ; preds = %do.end.i, %if.end27.i
  %retval.0.i26 = phi i32 [ %spec.store.select.i, %do.end.i ], [ 0, %if.end27.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %offset_buf.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %val, align 4
  %src.i.i = getelementptr inbounds %struct.ccs_sensor, ptr %sensor, i32 0, i32 3
  %24 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %arrayidx.i.i = getelementptr inbounds [4 x i8], ptr %data_buf.i.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.thread.i.for.body.i_crit_edge, %if.else
  %i.025.i = phi i32 [ 0, %if.else ], [ %inc.i, %cleanup.thread.i.for.body.i_crit_edge ]
  %25 = trunc i32 %i.025.i to i16
  %conv3.i = add i16 %25, %conv5
  %26 = ptrtoint ptr %src.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %src.i.i, align 4
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i.i) #6
  %31 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %data_buf.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %offset_buf.i.i) #6
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %addr.i.i, align 2
  %34 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %msg.i.i, align 4
  %35 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i.i, align 2
  %36 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 2, ptr %24, align 4
  %37 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %offset_buf.i.i, ptr %buf.i.i, align 4
  %38 = ptrtoint ptr %offset_buf.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv3.i, ptr %offset_buf.i.i, align 2
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 3
  %39 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter.i.i, align 8
  %call5.i.i = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i.i)
  %cmp6.not.i.i = icmp eq i32 %call5.i.i, 1
  br i1 %cmp6.not.i.i, label %if.end13.i.i, label %for.body.i.if.end.thread_crit_edge

for.body.i.if.end.thread_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.thread

if.end13.i.i:                                     ; preds = %for.body.i
  %41 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %24, align 4
  %42 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %flags.i.i, align 2
  %43 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %arrayidx.i.i, ptr %buf.i.i, align 4
  %44 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter.i.i, align 8
  %call19.i.i = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19.i.i)
  %cmp20.not.i.i = icmp eq i32 %call19.i.i, 1
  br i1 %cmp20.not.i.i, label %cleanup.thread.i, label %if.end13.i.i.if.end.thread_crit_edge

if.end13.i.i.if.end.thread_crit_edge:             ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.thread

cleanup.thread.i:                                 ; preds = %if.end13.i.i
  %46 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %offset_buf.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  %48 = xor i32 %i.025.i, -1
  %sub7.i = add nsw i32 %retval.0.i, %48
  %shl.i = shl i32 %sub7.i, 3
  %shl8.i = shl i32 %47, %shl.i
  %49 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val, align 4
  %or.i = or i32 %50, %shl8.i
  store i32 %or.i, ptr %val, align 4
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %retval.0.i
  br i1 %exitcond.not.i, label %cleanup.thread.i.if.end_crit_edge, label %cleanup.thread.i.for.body.i_crit_edge

cleanup.thread.i.for.body.i_crit_edge:            ; preds = %cleanup.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cleanup.thread.i.if.end_crit_edge:                ; preds = %cleanup.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.thread:                                    ; preds = %if.end13.i.i.if.end.thread_crit_edge, %for.body.i.if.end.thread_crit_edge
  %call5.sink47.i.i = phi i32 [ %call5.i.i, %for.body.i.if.end.thread_crit_edge ], [ %call19.i.i, %if.end13.i.i.if.end.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.sink47.i.i)
  %cmp9.i.i = icmp sgt i32 %call5.sink47.i.i, -1
  %spec.store.select.i.i = select i1 %cmp9.i.i, i32 -16, i32 %call5.sink47.i.i
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  %conv30.i.i = zext i16 %conv3.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.18, i32 noundef %conv30.i.i, i32 noundef %spec.store.select.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %offset_buf.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  br label %cleanup

if.end:                                           ; preds = %cleanup.thread.i.if.end_crit_edge, %____ccs_read_addr.exit
  %rval.0 = phi i32 [ %retval.0.i26, %____ccs_read_addr.exit ], [ 0, %cleanup.thread.i.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rval.0)
  %cmp = icmp sgt i32 %rval.0, -1
  %51 = and i1 %cmp, %conv
  br i1 %51, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val, align 4
  %call14 = call i32 @ccs_reg_conv(ptr noundef %sensor, i32 noundef %reg, i32 noundef %53)
  %54 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call14, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %if.end.thread
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %rval.0, %if.end.cleanup_crit_edge ], [ %spec.store.select.i.i, %if.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ccs/ccs-reg-access.c", i32 340, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ccs_write_addr_no_quirk.__UNIQUE_ID_ddebug292, !1, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/i2c/ccs/ccs-reg-access.c", i32 346, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ccs_write_addr_no_quirk._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @ccs_write_addr_no_quirk._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ccs/ccs-reg-access.c", i32 396, i32 4}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ccs_write_data_regs.__UNIQUE_ID_ddebug295, !13, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/ccs/ccs-reg-access.c", i32 407, i32 5}
!18 = !{ptr @ccs_write_data_regs._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @ccs_write_data_regs._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/ccs/ccs-reg-access.c", i32 149, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ireal32_to_u32_mul_1000000._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @ireal32_to_u32_mul_1000000._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/ccs/ccs-reg-access.c", i32 26, i32 3}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @float_to_u32_mul_1000000._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @float_to_u32_mul_1000000._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/ccs/ccs-reg-access.c", i32 34, i32 3}
!33 = !{ptr @float_to_u32_mul_1000000._entry.15, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @float_to_u32_mul_1000000._entry_ptr.17, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/ccs/ccs-reg-access.c", i32 110, i32 2}
!37 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @____ccs_read_addr._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @____ccs_read_addr._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/ccs/ccs-reg-access.c", i32 312, i32 4}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ccs_write_retry._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @ccs_write_retry._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2148776250, i64 2148776255, i64 2148776268, i64 2148776312, i64 2148776346, i64 2148776367}
