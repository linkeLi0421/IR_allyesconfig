; ModuleID = '/llk/IR_all_yes/drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c_pt.bc'
source_filename = "../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.pvr2_hdw = type { ptr, ptr, %struct.v4l2_device, ptr, %struct.work_struct, ptr, %struct.mutex, i32, [32 x i8], [32 x i8], %struct.i2c_adapter, %struct.i2c_algorithm, [128 x ptr], i32, i32, i32, %struct.IR_i2c_init_data, [500 x i32], i32, %struct.mutex, i32, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.completion, [64 x i8], i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_tuner, i32, %struct.v4l2_cropcap, i32, i64, i64, i64, i32, i32, %struct.pvr2_ctl_info, %struct.pvr2_ctl_info, %struct.pvr2_ctl_info, %struct.pvr2_ctl_info, [32 x ptr], [32 x [16 x i8]], i32, i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_cropcap = type { i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_fract }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.pvr2_ctl_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.149 }
%union.anon.149 = type { %struct.anon.150 }
%struct.anon.150 = type { i32, i32 }
%struct.cx2341x_mpeg_params = type { i32, i32, i16, i16, i16, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i16, i32, i32, i32, i16, i32, i16, i16, i16, i16 }
%struct.pvr2_device_desc = type { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i16 }
%struct.pvr2_device_client_table = type { ptr, i8 }
%struct.pvr2_string_table = type { ptr, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@__param_str_i2c_scan = internal constant [17 x i8] c"pvrusb2.i2c_scan\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@i2c_scan = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_i2c_scan = internal constant %struct.kernel_param { ptr @__param_str_i2c_scan, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @i2c_scan } }, section "__param", align 4
@__UNIQUE_ID_i2c_scantype388 = internal constant [30 x i8] c"pvrusb2.parmtype=i2c_scan:int\00", section ".modinfo", align 1
@__UNIQUE_ID_i2c_scan389 = internal constant [50 x i8] c"pvrusb2.parm=i2c_scan:scan i2c bus at insmod time\00", section ".modinfo", align 1
@__param_str_ir_mode = internal constant [16 x i8] c"pvrusb2.ir_mode\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_ir_mode = internal constant %struct.kparam_array { i32 20, i32 4, ptr null, ptr @param_ops_int, ptr @ir_mode }, align 4
@__param_ir_mode = internal constant %struct.kernel_param { ptr @__param_str_ir_mode, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_ir_mode } }, section "__param", align 4
@__UNIQUE_ID_ir_modetype390 = internal constant [38 x i8] c"pvrusb2.parmtype=ir_mode:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_ir_mode391 = internal constant [66 x i8] c"pvrusb2.parm=ir_mode:specify: 0=disable IR reception, 1=normal IR\00", section ".modinfo", align 1
@__param_str_disable_autoload_ir_video = internal constant [34 x i8] c"pvrusb2.disable_autoload_ir_video\00", align 1
@pvr2_disable_ir_video = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_disable_autoload_ir_video = internal constant %struct.kernel_param { ptr @__param_str_disable_autoload_ir_video, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @pvr2_disable_ir_video } }, section "__param", align 4
@__UNIQUE_ID_disable_autoload_ir_videotype392 = internal constant [47 x i8] c"pvrusb2.parmtype=disable_autoload_ir_video:int\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_autoload_ir_video393 = internal constant [85 x i8] c"pvrusb2.parm=disable_autoload_ir_video:1=do not try to autoload ir_video IR receiver\00", section ".modinfo", align 1
@ir_mode = internal global { [20 x i32], [48 x i8] } { [20 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [48 x i8] zeroinitializer }, align 32
@pvr2_i2c_core_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: IR disabled\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pvr2_i2c_core_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c\00", [51 x i8] zeroinitializer }, align 32
@pvr2_i2c_core_init._entry_ptr = internal global ptr @pvr2_i2c_core_init._entry, section ".printk_index", align 4
@pvr2_i2c_algo_template = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @pvr2_i2c_xfer, ptr null, ptr null, ptr null, ptr @pvr2_i2c_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pvrusb2_debug = external dso_local local_unnamed_addr global i32, align 4
@pvr2_i2c_core_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016pvrusb2: Device has newer IR hardware; disabling unneeded virtual IR device\0A\00", [49 x i8] zeroinitializer }, align 32
@pvr2_i2c_core_init._entry_ptr.5 = internal global ptr @pvr2_i2c_core_init._entry.3, section ".printk_index", align 4
@pvr2_i2c_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\016pvrusb2: Killing an I2C read to %u that has wlen too large (desired=%u limit=%u)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pvr2_i2c_read\00", [18 x i8] zeroinitializer }, align 32
@pvr2_i2c_read._entry_ptr = internal global ptr @pvr2_i2c_read._entry, section ".printk_index", align 4
@pvr2_i2c_read._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\016pvrusb2: Killing an I2C read to %u that has rlen too large (desired=%u limit=%u)\0A\00", [44 x i8] zeroinitializer }, align 32
@pvr2_i2c_read._entry_ptr.10 = internal global ptr @pvr2_i2c_read._entry.8, section ".printk_index", align 4
@pvr2_i2c_read._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016pvrusb2: unexpected status from i2_read[%d]: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@pvr2_i2c_read._entry_ptr.13 = internal global ptr @pvr2_i2c_read._entry.11, section ".printk_index", align 4
@pvr2_i2c_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016pvrusb2: Killing an I2C write to %u that is too large (desired=%u limit=%u)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pvr2_i2c_write\00", [17 x i8] zeroinitializer }, align 32
@pvr2_i2c_write._entry_ptr = internal global ptr @pvr2_i2c_write._entry, section ".printk_index", align 4
@pvr2_i2c_write._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016pvrusb2: unexpected status from i2_write[%d]: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@pvr2_i2c_write._entry_ptr.18 = internal global ptr @pvr2_i2c_write._entry.16, section ".printk_index", align 4
@i2c_hack_cx25840._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\016pvrusb2: ***WARNING*** Detected a wedged cx25840 chip; the device will not work.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"i2c_hack_cx25840\00", [47 x i8] zeroinitializer }, align 32
@i2c_hack_cx25840._entry_ptr = internal global ptr @i2c_hack_cx25840._entry, section ".printk_index", align 4
@i2c_hack_cx25840._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016pvrusb2: ***WARNING*** Try power cycling the pvrusb2 device.\0A\00", [32 x i8] zeroinitializer }, align 32
@i2c_hack_cx25840._entry_ptr.23 = internal global ptr @i2c_hack_cx25840._entry.21, section ".printk_index", align 4
@i2c_hack_cx25840._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\016pvrusb2: ***WARNING*** Disabling further access to the device to prevent other foul-ups.\0A\00", [36 x i8] zeroinitializer }, align 32
@i2c_hack_cx25840._entry_ptr.26 = internal global ptr @i2c_hack_cx25840._entry.24, section ".printk_index", align 4
@i2c_hack_cx25840._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016pvrusb2: cx25840 appears to be OK.\0A\00", [58 x i8] zeroinitializer }, align 32
@i2c_hack_cx25840._entry_ptr.29 = internal global ptr @i2c_hack_cx25840._entry.27, section ".printk_index", align 4
@pvr2_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\016pvrusb2: i2c refusing 2 phase transfer with conflicting target addresses\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pvr2_i2c_xfer\00", [18 x i8] zeroinitializer }, align 32
@pvr2_i2c_xfer._entry_ptr = internal global ptr @pvr2_i2c_xfer._entry, section ".printk_index", align 4
@pvr2_i2c_xfer._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016pvrusb2: i2c refusing complex transfer read0=%d read1=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@pvr2_i2c_xfer._entry_ptr.34 = internal global ptr @pvr2_i2c_xfer._entry.32, section ".printk_index", align 4
@pvr2_i2c_xfer._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.2, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016pvrusb2: i2c refusing %d phase transfer\0A\00", [53 x i8] zeroinitializer }, align 32
@pvr2_i2c_xfer._entry_ptr.37 = internal global ptr @pvr2_i2c_xfer._entry.35, section ".printk_index", align 4
@pvr2_i2c_xfer._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.2, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016pvrusb2 i2c xfer %u/%u: addr=0x%x len=%d %s\00", [50 x i8] zeroinitializer }, align 32
@pvr2_i2c_xfer._entry_ptr.40 = internal global ptr @pvr2_i2c_xfer._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@pvr2_i2c_xfer._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.31, ptr @.str.2, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c [\00", [27 x i8] zeroinitializer }, align 32
@pvr2_i2c_xfer._entry_ptr.45 = internal global ptr @pvr2_i2c_xfer._entry.43, section ".printk_index", align 4
@pvr2_i2c_xfer._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.31, ptr @.str.2, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c \00", [28 x i8] zeroinitializer }, align 32
@pvr2_i2c_xfer._entry_ptr.48 = internal global ptr @pvr2_i2c_xfer._entry.46, section ".printk_index", align 4
@pvr2_i2c_xfer._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.31, ptr @.str.2, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c%02x\00", [25 x i8] zeroinitializer }, align 32
@pvr2_i2c_xfer._entry_ptr.51 = internal global ptr @pvr2_i2c_xfer._entry.49, section ".printk_index", align 4
@pvr2_i2c_xfer._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.31, ptr @.str.2, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c ...\00", [25 x i8] zeroinitializer }, align 32
@pvr2_i2c_xfer._entry_ptr.54 = internal global ptr @pvr2_i2c_xfer._entry.52, section ".printk_index", align 4
@pvr2_i2c_xfer._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.31, ptr @.str.2, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c]\00", [28 x i8] zeroinitializer }, align 32
@pvr2_i2c_xfer._entry_ptr.57 = internal global ptr @pvr2_i2c_xfer._entry.55, section ".printk_index", align 4
@pvr2_i2c_xfer._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.31, ptr @.str.2, i32 488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01c result=%d\00", [19 x i8] zeroinitializer }, align 32
@pvr2_i2c_xfer._entry_ptr.60 = internal global ptr @pvr2_i2c_xfer._entry.58, section ".printk_index", align 4
@pvr2_i2c_xfer._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.31, ptr @.str.2, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@pvr2_i2c_xfer._entry_ptr.63 = internal global ptr @pvr2_i2c_xfer._entry.61, section ".printk_index", align 4
@pvr2_i2c_xfer._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.31, ptr @.str.2, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016pvrusb2 i2c xfer null transfer result=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@pvr2_i2c_xfer._entry_ptr.66 = internal global ptr @pvr2_i2c_xfer._entry.64, section ".printk_index", align 4
@do_i2c_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: i2c scan beginning\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"do_i2c_scan\00", [20 x i8] zeroinitializer }, align 32
@do_i2c_scan._entry_ptr = internal global ptr @do_i2c_scan._entry, section ".printk_index", align 4
@do_i2c_scan._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: i2c scan: found device @ 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@do_i2c_scan._entry_ptr.71 = internal global ptr @do_i2c_scan._entry.69, section ".printk_index", align 4
@do_i2c_scan._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.2, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s: i2c scan done.\0A\00", [42 x i8] zeroinitializer }, align 32
@do_i2c_scan._entry_ptr.74 = internal global ptr @do_i2c_scan._entry.72, section ".printk_index", align 4
@pvr2_i2c_register_ir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016pvrusb2: Automatic binding of ir_video has been disabled.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pvr2_i2c_register_ir\00", [43 x i8] zeroinitializer }, align 32
@pvr2_i2c_register_ir._entry_ptr = internal global ptr @pvr2_i2c_register_ir._entry, section ".printk_index", align 4
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-hauppauge\00", [19 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ir_video\00", [23 x i8] zeroinitializer }, align 32
@pvr2_i2c_register_ir._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.76, ptr @.str.2, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016pvrusb2: Binding %s to i2c address 0x%02x.\0A\00", [50 x i8] zeroinitializer }, align 32
@pvr2_i2c_register_ir._entry_ptr.81 = internal global ptr @pvr2_i2c_register_ir._entry.79, section ".printk_index", align 4
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ir_z8f0811_haup\00", [16 x i8] zeroinitializer }, align 32
@pvr2_i2c_register_ir._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.76, ptr @.str.2, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pvr2_i2c_register_ir._entry_ptr.84 = internal global ptr @pvr2_i2c_register_ir._entry.83, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.85 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 8]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 8]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 2]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 16, i64 256, i64 257]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 10]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.94 = private unnamed_addr constant [9 x i8] c"i2c_scan\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 25, i32 21 }
@___asan_gen_.97 = private unnamed_addr constant [22 x i8] c"pvr2_disable_ir_video\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 33, i32 12 }
@___asan_gen_.100 = private unnamed_addr constant [8 x i8] c"ir_mode\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 29, i32 12 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 603, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [23 x i8] c"pvr2_i2c_algo_template\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 505, i32 35 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 637, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 102, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 109, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 139, i32 5 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 50, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 78, i32 5 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 335, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 337, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 339, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 348, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 426, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 458, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 463, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 471, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 479, i32 5 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 481, i32 16 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 482, i32 6 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 484, i32 21 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 485, i32 5 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 488, i32 5 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 490, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 493, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 533, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 536, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 540, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 548, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 556, i32 38 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 564, i32 22 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 565, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 579, i32 22 }
@___asan_gen_.313 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.314 = private constant [48 x i8] c"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 580, i32 3 }
@llvm.compiler.used = appending global [112 x ptr] [ptr @__UNIQUE_ID_disable_autoload_ir_video393, ptr @__UNIQUE_ID_disable_autoload_ir_videotype392, ptr @__UNIQUE_ID_i2c_scan389, ptr @__UNIQUE_ID_i2c_scantype388, ptr @__UNIQUE_ID_ir_mode391, ptr @__UNIQUE_ID_ir_modetype390, ptr @__param_disable_autoload_ir_video, ptr @__param_i2c_scan, ptr @__param_ir_mode, ptr @do_i2c_scan._entry, ptr @do_i2c_scan._entry.69, ptr @do_i2c_scan._entry.72, ptr @do_i2c_scan._entry_ptr, ptr @do_i2c_scan._entry_ptr.71, ptr @do_i2c_scan._entry_ptr.74, ptr @i2c_hack_cx25840._entry, ptr @i2c_hack_cx25840._entry.21, ptr @i2c_hack_cx25840._entry.24, ptr @i2c_hack_cx25840._entry.27, ptr @i2c_hack_cx25840._entry_ptr, ptr @i2c_hack_cx25840._entry_ptr.23, ptr @i2c_hack_cx25840._entry_ptr.26, ptr @i2c_hack_cx25840._entry_ptr.29, ptr @pvr2_i2c_core_init._entry, ptr @pvr2_i2c_core_init._entry.3, ptr @pvr2_i2c_core_init._entry_ptr, ptr @pvr2_i2c_core_init._entry_ptr.5, ptr @pvr2_i2c_read._entry, ptr @pvr2_i2c_read._entry.11, ptr @pvr2_i2c_read._entry.8, ptr @pvr2_i2c_read._entry_ptr, ptr @pvr2_i2c_read._entry_ptr.10, ptr @pvr2_i2c_read._entry_ptr.13, ptr @pvr2_i2c_register_ir._entry, ptr @pvr2_i2c_register_ir._entry.79, ptr @pvr2_i2c_register_ir._entry.83, ptr @pvr2_i2c_register_ir._entry_ptr, ptr @pvr2_i2c_register_ir._entry_ptr.81, ptr @pvr2_i2c_register_ir._entry_ptr.84, ptr @pvr2_i2c_write._entry, ptr @pvr2_i2c_write._entry.16, ptr @pvr2_i2c_write._entry_ptr, ptr @pvr2_i2c_write._entry_ptr.18, ptr @pvr2_i2c_xfer._entry, ptr @pvr2_i2c_xfer._entry.32, ptr @pvr2_i2c_xfer._entry.35, ptr @pvr2_i2c_xfer._entry.38, ptr @pvr2_i2c_xfer._entry.43, ptr @pvr2_i2c_xfer._entry.46, ptr @pvr2_i2c_xfer._entry.49, ptr @pvr2_i2c_xfer._entry.52, ptr @pvr2_i2c_xfer._entry.55, ptr @pvr2_i2c_xfer._entry.58, ptr @pvr2_i2c_xfer._entry.61, ptr @pvr2_i2c_xfer._entry.64, ptr @pvr2_i2c_xfer._entry_ptr, ptr @pvr2_i2c_xfer._entry_ptr.34, ptr @pvr2_i2c_xfer._entry_ptr.37, ptr @pvr2_i2c_xfer._entry_ptr.40, ptr @pvr2_i2c_xfer._entry_ptr.45, ptr @pvr2_i2c_xfer._entry_ptr.48, ptr @pvr2_i2c_xfer._entry_ptr.51, ptr @pvr2_i2c_xfer._entry_ptr.54, ptr @pvr2_i2c_xfer._entry_ptr.57, ptr @pvr2_i2c_xfer._entry_ptr.60, ptr @pvr2_i2c_xfer._entry_ptr.63, ptr @pvr2_i2c_xfer._entry_ptr.66, ptr @i2c_scan, ptr @pvr2_disable_ir_video, ptr @ir_mode, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @pvr2_i2c_algo_template, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_scan to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_disable_ir_video to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_mode to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_i2c_core_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_i2c_algo_template to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_i2c_core_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_i2c_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_i2c_read._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_i2c_read._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_i2c_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_i2c_write._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hack_cx25840._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hack_cx25840._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hack_cx25840._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hack_cx25840._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_i2c_xfer._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_i2c_xfer._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_i2c_xfer._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_i2c_xfer._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_i2c_xfer._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_i2c_xfer._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_i2c_xfer._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_i2c_xfer._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_i2c_xfer._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_i2c_xfer._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_i2c_xfer._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_i2c_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_i2c_scan._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_i2c_scan._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_i2c_register_ir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_i2c_register_ir._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_i2c_register_ir._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pvr2_i2c_core_init(ptr noundef %hdw) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.i2c_board_info, align 4
  %msg.i.i = alloca [1 x %struct.i2c_msg], align 4
  %msg.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %idx.0106 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pvr2_hdw, ptr %hdw, i32 0, i32 12, i32 %idx.0106
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @pvr2_i2c_basic_op, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %idx.0106, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %unit_number = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 94
  %1 = ptrtoint ptr %unit_number to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %unit_number, align 8
  %arrayidx1 = getelementptr [20 x i32], ptr @ir_mode, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %for.end.if.end14_crit_edge [
    i32 0, label %do.end
    i32 1, label %if.then8
  ]

for.end.if.end14_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #9
  br label %if.end14.sink.split

if.then8:                                         ; preds = %for.end
  %ir_scheme_active = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 15
  %6 = ptrtoint ptr %ir_scheme_active to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ir_scheme_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp9 = icmp eq i32 %7, 1
  br i1 %cmp9, label %if.then8.if.end14.sink.split_crit_edge, label %if.then8.if.end14_crit_edge

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then8.if.end14.sink.split_crit_edge:           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.then8.if.end14.sink.split_crit_edge, %do.end
  %i2c_24xxx_ir.sink = phi ptr [ @i2c_black_hole, %do.end ], [ @i2c_24xxx_ir, %if.then8.if.end14.sink.split_crit_edge ]
  %arrayidx12 = getelementptr %struct.pvr2_hdw, ptr %hdw, i32 0, i32 12, i32 24
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %i2c_24xxx_ir.sink, ptr %arrayidx12, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %if.then8.if.end14_crit_edge, %for.end.if.end14_crit_edge
  %hdw_desc = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 3
  %9 = ptrtoint ptr %hdw_desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdw_desc, align 8
  %flag_has_cx25840 = getelementptr inbounds %struct.pvr2_device_desc, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %flag_has_cx25840 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %flag_has_cx25840, align 1
  %12 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end14.if.end18_crit_edge, label %if.then15

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then15:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx17 = getelementptr %struct.pvr2_hdw, ptr %hdw, i32 0, i32 12, i32 68
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @i2c_hack_cx25840, ptr %arrayidx17, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end14.if.end18_crit_edge
  %14 = ptrtoint ptr %flag_has_cx25840 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load20 = load i8, ptr %flag_has_cx25840, align 1
  %15 = and i8 %bf.load20, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool24.not = icmp eq i8 %15, 0
  br i1 %tobool24.not, label %if.end18.if.end28_crit_edge, label %if.then25

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then25:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx27 = getelementptr %struct.pvr2_hdw, ptr %hdw, i32 0, i32 12, i32 27
  %16 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @i2c_hack_wm8775, ptr %arrayidx27, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end18.if.end28_crit_edge
  %i2c_adap = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 10
  %17 = call ptr @memset(ptr %i2c_adap, i32 0, i32 1360)
  %i2c_algo = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 11
  %18 = call ptr @memcpy(ptr %i2c_algo, ptr @pvr2_i2c_algo_template, i32 28)
  %name30 = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 10, i32 12
  %name32 = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 8
  %call34 = tail call i32 @strscpy(ptr noundef %name30, ptr noundef %name32, i32 noundef 48) #6
  %19 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hdw, align 8
  %dev = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  %parent = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 10, i32 9, i32 1
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev, ptr %parent, align 8
  %algo = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 10, i32 2
  %22 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %i2c_algo, ptr %algo, align 8
  %algo_data = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 10, i32 3
  %23 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %hdw, ptr %algo_data, align 4
  %i2c_linked = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 14
  %24 = ptrtoint ptr %i2c_linked to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %i2c_linked, align 8
  %v4l2_dev = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 2
  %driver_data.i.i = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 10, i32 9, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %v4l2_dev, ptr %driver_data.i.i, align 4
  %call42 = tail call i32 @i2c_add_adapter(ptr noundef %i2c_adap) #6
  %arrayidx44 = getelementptr %struct.pvr2_hdw, ptr %hdw, i32 0, i32 12, i32 24
  %26 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx44, align 4
  %cmp45 = icmp eq ptr %27, @i2c_24xxx_ir
  br i1 %cmp45, label %if.then46, label %if.end28.if.end65_crit_edge

if.end28.if.end65_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then46:                                        ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %28 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 65535, ptr %28, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %31 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %buf.i, align 4
  %32 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 113, ptr %msg.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  br i1 %cmp.i.not, label %do.body50, label %if.then46.if.end65_crit_edge

if.then46.if.end65_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

do.body50:                                        ; preds = %if.then46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %33 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp eq i32 %and, 0
  br i1 %tobool51.not, label %do.body50.do.end60_crit_edge, label %do.end55

do.body50.do.end60_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end60

do.end55:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #8
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %do.end60

do.end60:                                         ; preds = %do.end55, %do.body50.do.end60_crit_edge
  %34 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %arrayidx44, align 4
  %ir_scheme_active63 = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 15
  %35 = ptrtoint ptr %ir_scheme_active63 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %ir_scheme_active63, align 4
  br label %if.end65

if.end65:                                         ; preds = %do.end60, %if.then46.if.end65_crit_edge, %if.end28.if.end65_crit_edge
  %36 = load i32, ptr @i2c_scan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool66.not = icmp eq i32 %36, 0
  br i1 %tobool66.not, label %if.end65.if.end68_crit_edge, label %if.then67

if.end65.if.end68_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then67:                                        ; preds = %if.end65
  %call.i101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %name32) #9
  %37 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then67
  %i.022.i = phi i32 [ 0, %if.then67 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 65535, ptr %37, align 4
  %39 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %flags.i.i, align 2
  %40 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %buf.i.i, align 4
  %conv.i.i = trunc i32 %i.022.i to i16
  %41 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.not.i = icmp eq i32 %call.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  br i1 %cmp.i.not.i, label %do.end4.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

do.end4.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %name32, i32 noundef %i.022.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end4.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %do_i2c_scan.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do_i2c_scan.exit:                                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name32) #9
  br label %if.end68

if.end68:                                         ; preds = %do_i2c_scan.exit, %if.end65.if.end68_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info.i) #6
  %ir_init_data.i = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 16
  %42 = load i32, ptr @pvr2_disable_ir_video, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %if.end68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %43 = load i32, ptr @pvrusb2_debug, align 4
  %and.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.pvr2_i2c_register_ir.exit_crit_edge, label %do.end.i

do.body.i.pvr2_i2c_register_ir.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pvr2_i2c_register_ir.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #9
  br label %pvr2_i2c_register_ir.exit

if.end6.i:                                        ; preds = %if.end68
  %44 = call ptr @memset(ptr %info.i, i32 0, i32 56)
  %ir_scheme_active.i = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 15
  %45 = ptrtoint ptr %ir_scheme_active.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ir_scheme_active.i, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %46, label %if.end6.i.pvr2_i2c_register_ir.exit_crit_edge [
    i32 1, label %if.end6.i.sw.bb.i_crit_edge
    i32 4, label %if.end6.i.sw.bb.i_crit_edge107
    i32 2, label %if.end6.i.sw.bb25.i_crit_edge
    i32 3, label %if.end6.i.sw.bb25.i_crit_edge108
  ]

if.end6.i.sw.bb25.i_crit_edge108:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb25.i

if.end6.i.sw.bb25.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb25.i

if.end6.i.sw.bb.i_crit_edge107:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end6.i.sw.bb.i_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end6.i.pvr2_i2c_register_ir.exit_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pvr2_i2c_register_ir.exit

sw.bb.i:                                          ; preds = %if.end6.i.sw.bb.i_crit_edge, %if.end6.i.sw.bb.i_crit_edge107
  %48 = ptrtoint ptr %ir_init_data.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.77, ptr %ir_init_data.i, align 8
  %internal_get_key_func.i = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 16, i32 5
  %49 = ptrtoint ptr %internal_get_key_func.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %internal_get_key_func.i, align 8
  %type.i = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 16, i32 2
  %50 = ptrtoint ptr %type.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 4, ptr %type.i, align 8
  %51 = ptrtoint ptr %hdw_desc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hdw_desc, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %name.i103 = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 16, i32 1
  %55 = ptrtoint ptr %name.i103 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %name.i103, align 4
  %polling_interval.i = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 16, i32 3
  %56 = ptrtoint ptr %polling_interval.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 100, ptr %polling_interval.i, align 8
  %addr.i = getelementptr inbounds %struct.i2c_board_info, ptr %info.i, i32 0, i32 2
  %57 = ptrtoint ptr %addr.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 24, ptr %addr.i, align 2
  %platform_data.i = getelementptr inbounds %struct.i2c_board_info, ptr %info.i, i32 0, i32 4
  %58 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %ir_init_data.i, ptr %platform_data.i, align 4
  %call8.i104 = call i32 @strscpy(ptr noundef nonnull %info.i, ptr noundef nonnull @.str.78, i32 noundef 20) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %59 = load i32, ptr @pvrusb2_debug, align 4
  %and10.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %sw.bb.i.do.end23.i_crit_edge, label %do.end15.i

sw.bb.i.do.end23.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

do.end15.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %61 to i32
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull %info.i, i32 noundef %conv.i) #9
  br label %do.end23.i

do.end23.i:                                       ; preds = %do.end15.i, %sw.bb.i.do.end23.i_crit_edge
  %call24.i = call ptr @i2c_new_client_device(ptr noundef %i2c_adap, ptr noundef nonnull %info.i) #6
  br label %pvr2_i2c_register_ir.exit

sw.bb25.i:                                        ; preds = %if.end6.i.sw.bb25.i_crit_edge, %if.end6.i.sw.bb25.i_crit_edge108
  %62 = ptrtoint ptr %ir_init_data.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.77, ptr %ir_init_data.i, align 8
  %internal_get_key_func27.i = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 16, i32 5
  %63 = ptrtoint ptr %internal_get_key_func27.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 5, ptr %internal_get_key_func27.i, align 8
  %type28.i = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 16, i32 2
  %64 = ptrtoint ptr %type28.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 786436, ptr %type28.i, align 8
  %65 = ptrtoint ptr %hdw_desc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hdw_desc, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 8
  %name31.i = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 16, i32 1
  %69 = ptrtoint ptr %name31.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %name31.i, align 4
  %addr32.i = getelementptr inbounds %struct.i2c_board_info, ptr %info.i, i32 0, i32 2
  %70 = ptrtoint ptr %addr32.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 113, ptr %addr32.i, align 2
  %platform_data33.i = getelementptr inbounds %struct.i2c_board_info, ptr %info.i, i32 0, i32 4
  %71 = ptrtoint ptr %platform_data33.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %ir_init_data.i, ptr %platform_data33.i, align 4
  %call36.i = call i32 @strscpy(ptr noundef nonnull %info.i, ptr noundef nonnull @.str.82, i32 noundef 20) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %72 = load i32, ptr @pvrusb2_debug, align 4
  %and38.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %sw.bb25.i.do.end52.i_crit_edge, label %do.end43.i

sw.bb25.i.do.end52.i_crit_edge:                   ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end52.i

do.end43.i:                                       ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %addr32.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %addr32.i, align 2
  %conv48.i = zext i16 %74 to i32
  %call49.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull %info.i, i32 noundef %conv48.i) #9
  br label %do.end52.i

do.end52.i:                                       ; preds = %do.end43.i, %sw.bb25.i.do.end52.i_crit_edge
  %call54.i = call ptr @i2c_new_client_device(ptr noundef %i2c_adap, ptr noundef nonnull %info.i) #6
  br label %pvr2_i2c_register_ir.exit

pvr2_i2c_register_ir.exit:                        ; preds = %do.end52.i, %do.end23.i, %if.end6.i.pvr2_i2c_register_ir.exit_crit_edge, %do.end.i, %do.body.i.pvr2_i2c_register_ir.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info.i) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_i2c_basic_op(ptr noundef %hdw, i8 noundef zeroext %i2c_addr, ptr noundef readonly %wdata, i16 noundef zeroext %wlen, ptr noundef writeonly %rdata, i16 noundef zeroext %rlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rdata, null
  %spec.store.select = select i1 %tobool.not, i16 0, i16 %rlen
  %tobool1.not = icmp eq ptr %wdata, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %spec.store.select)
  %tobool4.not = icmp ne i16 %spec.store.select, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wlen)
  %tobool5.not34 = icmp eq i16 %wlen, 0
  %tobool5.not = or i1 %tobool1.not, %tobool5.not34
  %or.cond = or i1 %tobool5.not, %tobool4.not
  br i1 %or.cond, label %if.then6, label %if.else

if.then6:                                         ; preds = %entry
  %spec.select.i = select i1 %tobool1.not, i16 0, i16 %wlen
  %conv.i = zext i16 %spec.select.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 60, i16 %spec.select.i)
  %cmp.i = icmp ugt i16 %spec.select.i, 60
  br i1 %cmp.i, label %do.body.i, label %if.end11.i

do.body.i:                                        ; preds = %if.then6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %0 = load i32, ptr @pvrusb2_debug, align 4
  %and.i = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %do.body.i.return_crit_edge, label %do.end.i

do.body.i.return_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i = zext i8 %i2c_addr to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv6.i, i32 noundef %conv.i, i32 noundef 60) #9
  br label %return

if.end11.i:                                       ; preds = %if.then6
  br i1 %tobool.not, label %if.end11.i.do.body32.i_crit_edge, label %land.lhs.true.i

if.end11.i.do.body32.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body32.i

land.lhs.true.i:                                  ; preds = %if.end11.i
  %conv13.i = zext i16 %spec.store.select to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %spec.store.select)
  %cmp14.i = icmp ugt i16 %spec.store.select, 63
  br i1 %cmp14.i, label %do.body17.i, label %land.lhs.true.i.do.body32.i_crit_edge

land.lhs.true.i.do.body32.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body32.i

do.body17.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %1 = load i32, ptr @pvrusb2_debug, align 4
  %and18.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %do.body17.i.return_crit_edge, label %do.end23.i

do.body17.i.return_crit_edge:                     ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end23.i:                                       ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv25.i = zext i8 %i2c_addr to i32
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv25.i, i32 noundef %conv13.i, i32 noundef 63) #9
  br label %return

do.body32.i:                                      ; preds = %land.lhs.true.i.do.body32.i_crit_edge, %if.end11.i.do.body32.i_crit_edge
  %ctl_lock_mutex.i = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %ctl_lock_mutex.i, i32 noundef 0) #6
  %ctl_lock_held.i = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 20
  %2 = ptrtoint ptr %ctl_lock_held.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %ctl_lock_held.i, align 8
  %cmd_buffer.i = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 29
  %3 = call ptr @memset(ptr %cmd_buffer.i, i32 0, i32 64)
  %4 = ptrtoint ptr %cmd_buffer.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 9, ptr %cmd_buffer.i, align 8
  %conv36.i = trunc i16 %spec.select.i to i8
  %arrayidx38.i = getelementptr %struct.pvr2_hdw, ptr %hdw, i32 0, i32 29, i32 1
  %5 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv36.i, ptr %arrayidx38.i, align 1
  %conv39.i = trunc i16 %spec.store.select to i8
  %arrayidx41.i = getelementptr %struct.pvr2_hdw, ptr %hdw, i32 0, i32 29, i32 2
  %6 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv39.i, ptr %arrayidx41.i, align 2
  %arrayidx43.i = getelementptr %struct.pvr2_hdw, ptr %hdw, i32 0, i32 29, i32 3
  %7 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %i2c_addr, ptr %arrayidx43.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %spec.select.i)
  %tobool44.not.i = icmp eq i16 %spec.select.i, 0
  br i1 %tobool44.not.i, label %do.body32.i.if.end49.i_crit_edge, label %if.then45.i

do.body32.i.if.end49.i_crit_edge:                 ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.i

if.then45.i:                                      ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr %struct.pvr2_hdw, ptr %hdw, i32 0, i32 29, i32 4
  %8 = call ptr @memcpy(ptr %add.ptr.i, ptr %wdata, i32 %conv.i)
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then45.i, %do.body32.i.if.end49.i_crit_edge
  %add.i = add nuw nsw i32 %conv.i, 4
  %conv55.i = zext i16 %spec.store.select to i32
  %add56.i = add nuw nsw i32 %conv55.i, 1
  %call57.i = tail call i32 @pvr2_send_request(ptr noundef %hdw, ptr noundef %cmd_buffer.i, i32 noundef %add.i, ptr noundef %cmd_buffer.i, i32 noundef %add56.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.then59.i, label %if.end49.i.if.end90.i_crit_edge

if.end49.i.if.end90.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90.i

if.then59.i:                                      ; preds = %if.end49.i
  %9 = ptrtoint ptr %cmd_buffer.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cmd_buffer.i, align 8
  %conv62.i = zext i8 %10 to i32
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %10, label %do.body72.i [
    i8 8, label %if.end90.thread.i
    i8 7, label %if.then59.i.if.end90.i_crit_edge
  ]

if.then59.i.if.end90.i_crit_edge:                 ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90.i

do.body72.i:                                      ; preds = %if.then59.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %12 = load i32, ptr @pvrusb2_debug, align 4
  %and73.i = and i32 %12, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  br i1 %tobool74.not.i, label %do.body72.i.if.end90.i_crit_edge, label %do.end78.i

do.body72.i.if.end90.i_crit_edge:                 ; preds = %do.body72.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90.i

do.end78.i:                                       ; preds = %do.body72.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv80.i = zext i8 %i2c_addr to i32
  %call84.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv80.i, i32 noundef %conv62.i) #9
  br label %if.end90.i

if.end90.i:                                       ; preds = %do.end78.i, %do.body72.i.if.end90.i_crit_edge, %if.then59.i.if.end90.i_crit_edge, %if.end49.i.if.end90.i_crit_edge
  %ret.0.i = phi i32 [ %call57.i, %if.end49.i.if.end90.i_crit_edge ], [ -5, %do.end78.i ], [ -5, %do.body72.i.if.end90.i_crit_edge ], [ -5, %if.then59.i.if.end90.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %spec.store.select)
  %tobool94.not.i = icmp eq i16 %spec.store.select, 0
  %or.cond.i = or i1 %tobool.not, %tobool94.not.i
  br i1 %or.cond.i, label %if.end90.i.do.body105.i_crit_edge, label %if.then97.i

if.end90.i.do.body105.i_crit_edge:                ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body105.i

if.end90.thread.i:                                ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %spec.store.select)
  %tobool94.not147.i = icmp eq i16 %spec.store.select, 0
  %or.cond148.i = or i1 %tobool.not, %tobool94.not147.i
  br i1 %or.cond148.i, label %if.end90.thread.i.do.body105.i_crit_edge, label %if.else.i

if.end90.thread.i.do.body105.i_crit_edge:         ; preds = %if.end90.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body105.i

if.then97.i:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = call ptr @memset(ptr %rdata, i32 0, i32 %conv55.i)
  br label %do.body105.i

if.else.i:                                        ; preds = %if.end90.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = call ptr @memcpy(ptr %rdata, ptr %arrayidx38.i, i32 %conv55.i)
  br label %do.body105.i

do.body105.i:                                     ; preds = %if.else.i, %if.then97.i, %if.end90.thread.i.do.body105.i_crit_edge, %if.end90.i.do.body105.i_crit_edge
  %ret.0150.i = phi i32 [ 0, %if.end90.thread.i.do.body105.i_crit_edge ], [ %ret.0.i, %if.end90.i.do.body105.i_crit_edge ], [ 0, %if.else.i ], [ %ret.0.i, %if.then97.i ]
  %15 = ptrtoint ptr %ctl_lock_held.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ctl_lock_held.i, align 8
  tail call void @mutex_unlock(ptr noundef %ctl_lock_mutex.i) #6
  br label %return

if.else:                                          ; preds = %entry
  %conv.i18 = zext i16 %wlen to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 61, i16 %wlen)
  %cmp.i19 = icmp ugt i16 %wlen, 61
  br i1 %cmp.i19, label %do.body.i22, label %if.end26.i

do.body.i22:                                      ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %16 = load i32, ptr @pvrusb2_debug, align 4
  %and.i20 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20)
  %tobool3.not.i21 = icmp eq i32 %and.i20, 0
  br i1 %tobool3.not.i21, label %do.body.i22.return_crit_edge, label %do.end.i25

do.body.i22.return_crit_edge:                     ; preds = %do.body.i22
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end.i25:                                       ; preds = %do.body.i22
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i23 = zext i8 %i2c_addr to i32
  %call.i24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv6.i23, i32 noundef %conv.i18, i32 noundef 61) #9
  br label %return

if.end26.i:                                       ; preds = %if.else
  %ctl_lock_mutex.i26 = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %ctl_lock_mutex.i26, i32 noundef 0) #6
  %ctl_lock_held.i27 = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 20
  %17 = ptrtoint ptr %ctl_lock_held.i27 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %ctl_lock_held.i27, align 8
  %cmd_buffer.i28 = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 29
  %18 = call ptr @memset(ptr %cmd_buffer.i28, i32 0, i32 64)
  %19 = ptrtoint ptr %cmd_buffer.i28 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 8, ptr %cmd_buffer.i28, align 8
  %arrayidx17.i = getelementptr %struct.pvr2_hdw, ptr %hdw, i32 0, i32 29, i32 1
  %20 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %i2c_addr, ptr %arrayidx17.i, align 1
  %conv18.i = trunc i16 %wlen to i8
  %arrayidx20.i = getelementptr %struct.pvr2_hdw, ptr %hdw, i32 0, i32 29, i32 2
  %21 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv18.i, ptr %arrayidx20.i, align 2
  %add.ptr.i29 = getelementptr %struct.pvr2_hdw, ptr %hdw, i32 0, i32 29, i32 3
  %22 = call ptr @memcpy(ptr %add.ptr.i29, ptr %wdata, i32 %conv.i18)
  %add.i30 = add nuw nsw i32 %conv.i18, 3
  %call32.i = tail call i32 @pvr2_send_request(ptr noundef %hdw, ptr noundef %cmd_buffer.i28, i32 noundef %add.i30, ptr noundef %cmd_buffer.i28, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.then34.i, label %if.end26.i.do.body66.i_crit_edge

if.end26.i.do.body66.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body66.i

if.then34.i:                                      ; preds = %if.end26.i
  %23 = ptrtoint ptr %cmd_buffer.i28 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cmd_buffer.i28, align 8
  %conv37.i = zext i8 %24 to i32
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %24, label %do.body47.i [
    i8 8, label %if.then34.i.do.body66.i_crit_edge
    i8 7, label %do.body66.fold.split.i
  ]

if.then34.i.do.body66.i_crit_edge:                ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body66.i

do.body47.i:                                      ; preds = %if.then34.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %26 = load i32, ptr @pvrusb2_debug, align 4
  %and48.i = and i32 %26, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %do.body47.i.do.body66.i_crit_edge, label %do.end53.i

do.body47.i.do.body66.i_crit_edge:                ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body66.i

do.end53.i:                                       ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv55.i31 = zext i8 %i2c_addr to i32
  %call59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %conv55.i31, i32 noundef %conv37.i) #9
  br label %do.body66.i

do.body66.fold.split.i:                           ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body66.i

do.body66.i:                                      ; preds = %do.body66.fold.split.i, %do.end53.i, %do.body47.i.do.body66.i_crit_edge, %if.then34.i.do.body66.i_crit_edge, %if.end26.i.do.body66.i_crit_edge
  %ret.0.i32 = phi i32 [ %call32.i, %if.end26.i.do.body66.i_crit_edge ], [ -5, %do.end53.i ], [ -5, %do.body47.i.do.body66.i_crit_edge ], [ 0, %if.then34.i.do.body66.i_crit_edge ], [ -5, %do.body66.fold.split.i ]
  %27 = ptrtoint ptr %ctl_lock_held.i27 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %ctl_lock_held.i27, align 8
  tail call void @mutex_unlock(ptr noundef %ctl_lock_mutex.i26) #6
  br label %return

return:                                           ; preds = %do.body66.i, %do.end.i25, %do.body.i22.return_crit_edge, %do.body105.i, %do.end23.i, %do.body17.i.return_crit_edge, %do.end.i, %do.body.i.return_crit_edge
  %retval.0 = phi i32 [ %ret.0150.i, %do.body105.i ], [ -524, %do.end.i ], [ -524, %do.body.i.return_crit_edge ], [ -524, %do.end23.i ], [ -524, %do.body17.i.return_crit_edge ], [ %ret.0.i32, %do.body66.i ], [ -524, %do.end.i25 ], [ -524, %do.body.i22.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @i2c_black_hole(ptr nocapture noundef readnone %hdw, i8 noundef zeroext %i2c_addr, ptr nocapture noundef readnone %wdata, i16 noundef zeroext %wlen, ptr nocapture noundef readnone %rdata, i16 noundef zeroext %rlen) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_24xxx_ir(ptr noundef %hdw, i8 noundef zeroext %i2c_addr, ptr nocapture noundef readnone %wdata, i16 noundef zeroext %wlen, ptr nocapture noundef writeonly %rdata, i16 noundef zeroext %rlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i16 %rlen, %wlen
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %1 = icmp eq i16 %0, 0
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rlen)
  %tobool.not = icmp eq i16 %rlen, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wlen)
  %cmp.not = icmp ne i16 %wlen, 0
  %or.cond118 = or i1 %cmp.not, %tobool.not
  br i1 %or.cond118, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %rlen)
  %cmp12 = icmp ult i16 %rlen, 3
  br i1 %cmp12, label %if.then18, label %do.body

if.then18:                                        ; preds = %if.end10
  %2 = ptrtoint ptr %rdata to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %rdata, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %rlen)
  %cmp21 = icmp eq i16 %rlen, 2
  br i1 %cmp21, label %if.then18.cleanup.sink.split_crit_edge, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then18.cleanup.sink.split_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.body:                                          ; preds = %if.end10
  %ctl_lock_mutex = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %ctl_lock_mutex, i32 noundef 0) #6
  %ctl_lock_held = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 20
  %3 = ptrtoint ptr %ctl_lock_held to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %ctl_lock_held, align 8
  %cmd_buffer = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 29
  %4 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -20, ptr %cmd_buffer, align 8
  %call = tail call i32 @pvr2_send_request(ptr noundef %hdw, ptr noundef %cmd_buffer, i32 noundef 1, ptr noundef %cmd_buffer, i32 noundef 4) #6
  %5 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cmd_buffer, align 8
  %arrayidx36 = getelementptr %struct.pvr2_hdw, ptr %hdw, i32 0, i32 29, i32 1
  %7 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx36, align 1
  %arrayidx39 = getelementptr %struct.pvr2_hdw, ptr %hdw, i32 0, i32 29, i32 2
  %9 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx39, align 2
  %11 = ptrtoint ptr %ctl_lock_held to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ctl_lock_held, align 8
  tail call void @mutex_unlock(ptr noundef %ctl_lock_mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp51.not = icmp eq i32 %call, 0
  br i1 %cmp51.not, label %if.end54, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end54:                                         ; preds = %do.body
  %arrayidx55 = getelementptr i8, ptr %rdata, i32 2
  %12 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -63, ptr %arrayidx55, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp58.not = icmp eq i8 %6, 1
  br i1 %cmp58.not, label %if.else, label %if.then60

if.then60:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %rdata to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %rdata, align 1
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %conv65 = zext i8 %8 to i16
  %shl = shl nuw i16 %conv65, 8
  %conv68 = zext i8 %10 to i16
  %or = or i16 %shl, %conv68
  %14 = lshr i16 %or, 1
  %or76 = lshr i8 %8, 1
  %15 = or i8 %or76, -128
  %16 = ptrtoint ptr %rdata to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %rdata, align 1
  %17 = trunc i16 %14 to i8
  %conv85 = and i8 %17, -4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then60, %if.then18.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ 0, %if.then60 ], [ %conv85, %if.else ], [ 0, %if.then18.cleanup.sink.split_crit_edge ]
  %arrayidx62 = getelementptr i8, ptr %rdata, i32 1
  %18 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink, ptr %arrayidx62, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ 0, %if.then18.cleanup_crit_edge ], [ %call, %do.body.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_hack_cx25840(ptr noundef %hdw, i8 noundef zeroext %i2c_addr, ptr noundef %wdata, i16 noundef zeroext %wlen, ptr noundef %rdata, i16 noundef zeroext %rlen) #0 align 64 {
entry:
  %wbuf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf) #6
  %0 = getelementptr inbounds [2 x i8], ptr %wbuf, i32 0, i32 1
  %i2c_cx25840_hack_state = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 13
  %1 = ptrtoint ptr %i2c_cx25840_hack_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i2c_cx25840_hack_state, align 4
  %3 = or i16 %rlen, %wlen
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @pvr2_i2c_basic_op(ptr noundef %hdw, i8 noundef zeroext %i2c_addr, ptr noundef %wdata, i16 noundef zeroext %wlen, ptr noundef %rdata, i16 noundef zeroext %rlen)
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = zext i16 %wlen to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.88)
  switch i16 %wlen, label %if.end5.fail_crit_edge [
    i16 0, label %if.then9
    i16 2, label %if.then14
  ]

if.end5.fail_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.then9:                                         ; preds = %if.end5
  %6 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %2, label %if.then9.fail_crit_edge [
    i32 1, label %if.then9.if.end24_crit_edge
    i32 2, label %sw.bb10
  ]

if.then9.if.end24_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then9.fail_crit_edge:                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

sw.bb10:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then14:                                        ; preds = %if.end5
  %7 = ptrtoint ptr %wdata to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wdata, align 1
  %conv15 = zext i8 %8 to i16
  %shl = shl nuw i16 %conv15, 8
  %arrayidx16 = getelementptr i8, ptr %wdata, i32 1
  %9 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %10 to i16
  %or = or i16 %shl, %conv17
  %11 = zext i16 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.90)
  switch i16 %or, label %if.then14.fail_crit_edge [
    i16 256, label %if.then14.if.end24_crit_edge
    i16 257, label %sw.bb19
  ]

if.then14.if.end24_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then14.fail_crit_edge:                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

sw.bb19:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end24:                                         ; preds = %sw.bb19, %if.then14.if.end24_crit_edge, %sw.bb10, %if.then9.if.end24_crit_edge
  %state.0 = phi i32 [ 2, %sw.bb10 ], [ 2, %sw.bb19 ], [ %2, %if.then9.if.end24_crit_edge ], [ 1, %if.then14.if.end24_crit_edge ]
  %subaddr.0 = phi i8 [ 1, %sw.bb10 ], [ 1, %sw.bb19 ], [ 0, %if.then9.if.end24_crit_edge ], [ 0, %if.then14.if.end24_crit_edge ]
  %12 = zext i16 %rlen to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.91)
  switch i16 %rlen, label %if.end24.fail_crit_edge [
    i16 0, label %if.end24.success_crit_edge
    i16 1, label %if.end32
  ]

if.end24.success_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %success

if.end24.fail_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end32:                                         ; preds = %if.end24
  %13 = ptrtoint ptr %wbuf to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %wbuf, align 1
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %subaddr.0, ptr %0, align 1
  %call37 = call i32 @pvr2_i2c_basic_op(ptr noundef %hdw, i8 noundef zeroext %i2c_addr, ptr noundef nonnull %wbuf, i16 noundef zeroext 2, ptr noundef %rdata, i16 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38.not = icmp eq i32 %call37, 0
  br i1 %cmp38.not, label %lor.lhs.false40, label %if.end32.do.body_crit_edge

if.end32.do.body_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false40:                                  ; preds = %if.end32
  %15 = ptrtoint ptr %rdata to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rdata, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.92)
  switch i8 %16, label %do.body82 [
    i8 4, label %lor.lhs.false40.do.body_crit_edge
    i8 10, label %lor.lhs.false40.do.body_crit_edge123
  ]

lor.lhs.false40.do.body_crit_edge123:             ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false40.do.body_crit_edge:                ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false40.do.body_crit_edge, %lor.lhs.false40.do.body_crit_edge123, %if.end32.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %18 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  br i1 %tobool49.not, label %do.body.do.body56_crit_edge, label %do.end

do.body.do.body56_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body56

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #9
  br label %do.body56

do.body56:                                        ; preds = %do.end, %do.body.do.body56_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %19 = load i32, ptr @pvrusb2_debug, align 4
  %and57 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %do.body56.do.body68_crit_edge, label %do.end62

do.body56.do.body68_crit_edge:                    ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body68

do.end62:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #8
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #9
  br label %do.body68

do.body68:                                        ; preds = %do.end62, %do.body56.do.body68_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %20 = load i32, ptr @pvrusb2_debug, align 4
  %and69 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %do.body68.do.end79_crit_edge, label %do.end74

do.body68.do.end79_crit_edge:                     ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end79

do.end74:                                         ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #8
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #9
  br label %do.end79

do.end79:                                         ; preds = %do.end74, %do.body68.do.end79_crit_edge
  %arrayidx80 = getelementptr %struct.pvr2_hdw, ptr %hdw, i32 0, i32 12, i32 68
  %21 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx80, align 4
  call void @pvr2_hdw_render_useless(ptr noundef %hdw) #6
  br label %fail

do.body82:                                        ; preds = %lor.lhs.false40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %22 = load i32, ptr @pvrusb2_debug, align 4
  %and83 = and i32 %22, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %do.body82.success_crit_edge, label %do.end88

do.body82.success_crit_edge:                      ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #8
  br label %success

do.end88:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #8
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #9
  br label %success

success:                                          ; preds = %do.end88, %do.body82.success_crit_edge, %if.end24.success_crit_edge
  %state.1 = phi i32 [ %state.0, %if.end24.success_crit_edge ], [ 3, %do.end88 ], [ 3, %do.body82.success_crit_edge ]
  %23 = ptrtoint ptr %i2c_cx25840_hack_state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %state.1, ptr %i2c_cx25840_hack_state, align 4
  br label %cleanup

fail:                                             ; preds = %do.end79, %if.end24.fail_crit_edge, %if.then14.fail_crit_edge, %if.then9.fail_crit_edge, %if.end5.fail_crit_edge
  %state.2 = phi i32 [ %2, %if.then9.fail_crit_edge ], [ 0, %do.end79 ], [ %2, %if.then14.fail_crit_edge ], [ %2, %if.end5.fail_crit_edge ], [ 0, %if.end24.fail_crit_edge ]
  %24 = ptrtoint ptr %i2c_cx25840_hack_state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %state.2, ptr %i2c_cx25840_hack_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail, %success, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then4 ], [ -5, %fail ], [ 0, %success ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_hack_wm8775(ptr noundef %hdw, i8 noundef zeroext %i2c_addr, ptr noundef %wdata, i16 noundef zeroext %wlen, ptr noundef %rdata, i16 noundef zeroext %rlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i16 %rlen, %wlen
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %1 = icmp eq i16 %0, 0
  br i1 %1, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @pvr2_i2c_basic_op(ptr noundef %hdw, i8 noundef zeroext %i2c_addr, ptr noundef %wdata, i16 noundef zeroext %wlen, ptr noundef %rdata, i16 noundef zeroext %rlen)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pvr2_i2c_core_done(ptr noundef %hdw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_linked = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 14
  %0 = ptrtoint ptr %i2c_linked to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i2c_linked, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_adap = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 10
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap) #6
  %2 = ptrtoint ptr %i2c_linked to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %i2c_linked, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_send_request(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvr2_hdw_render_useless(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_i2c_xfer(ptr nocapture noundef readonly %i2c_adap, ptr noundef readonly %msgs, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %tobool.not = icmp eq i32 %num, 0
  br i1 %tobool.not, label %done.thread, label %if.end

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %msgs, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %3)
  %cmp = icmp ult i16 %3, 128
  br i1 %cmp, label %if.end6, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end6:                                          ; preds = %if.end
  %conv = zext i16 %3 to i32
  %arrayidx5 = getelementptr %struct.pvr2_hdw, ptr %1, i32 0, i32 12, i32 %conv
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx5, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %if.end6.done_crit_edge, label %if.end9

if.end6.done_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end9:                                          ; preds = %if.end6
  %6 = zext i32 %num to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %num, label %do.body163 [
    i32 1, label %if.then12
    i32 2, label %if.then66
  ]

if.then12:                                        ; preds = %if.end9
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags, align 2
  %9 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool15.not = icmp eq i16 %9, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.then12
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool18.not = icmp eq i16 %11, 0
  br i1 %tobool18.not, label %if.then19, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.then16
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  br label %while.body

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %conv22 = trunc i16 %3 to i8
  %call = tail call i32 %5(ptr noundef %1, i8 noundef zeroext %conv22, ptr noundef null, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool23.not = icmp eq i32 %call, 0
  %. = select i1 %tobool23.not, i32 1, i32 -5
  br label %done

while.body:                                       ; preds = %if.end43.while.body_crit_edge, %while.body.lr.ph
  %tcnt.0374 = phi i16 [ %11, %while.body.lr.ph ], [ %sub, %if.end43.while.body_crit_edge ]
  %offs.0373 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %if.end43.while.body_crit_edge ]
  %12 = tail call i16 @llvm.umin.i16(i16 %tcnt.0374, i16 63)
  %13 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %msgs, align 4
  %conv37 = trunc i16 %14 to i8
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf, align 4
  %conv39 = and i32 %offs.0373, 65535
  %add.ptr = getelementptr i8, ptr %16, i32 %conv39
  %call40 = tail call i32 %5(ptr noundef %1, i8 noundef zeroext %conv37, ptr noundef null, i16 noundef zeroext 0, ptr noundef %add.ptr, i16 noundef zeroext %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %while.body.done_crit_edge

while.body.done_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end43:                                         ; preds = %while.body
  %conv44 = zext i16 %12 to i32
  %add = add nuw nsw i32 %conv39, %conv44
  %sub = sub i16 %tcnt.0374, %12
  %tobool29.not = icmp eq i16 %sub, 0
  br i1 %tobool29.not, label %if.end43.done_crit_edge, label %if.end43.while.body_crit_edge

if.end43.while.body_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end43.done_crit_edge:                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %conv54 = trunc i16 %3 to i8
  %buf56 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %17 = ptrtoint ptr %buf56 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf56, align 4
  %len58 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %19 = ptrtoint ptr %len58 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %len58, align 4
  %call59 = tail call i32 %5(ptr noundef %1, i8 noundef zeroext %conv54, ptr noundef %18, i16 noundef zeroext %20, ptr noundef null, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  %spec.select = select i1 %tobool60.not, i32 1, i32 -5
  br label %done

if.then66:                                        ; preds = %if.end9
  %arrayidx70 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1
  %21 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx70, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %22)
  %cmp73.not = icmp eq i16 %3, %22
  br i1 %cmp73.not, label %if.end84, label %do.body

do.body:                                          ; preds = %if.then66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %23 = load i32, ptr @pvrusb2_debug, align 4
  %and76 = and i32 %23, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %do.body.done_crit_edge, label %do.end

do.body.done_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #9
  br label %done

if.end84:                                         ; preds = %if.then66
  %flags86 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %24 = ptrtoint ptr %flags86 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flags86, align 2
  %26 = and i16 %25, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool89.not = icmp eq i16 %26, 0
  br i1 %tobool89.not, label %land.lhs.true, label %if.end84.do.body141_crit_edge

if.end84.do.body141_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body141

land.lhs.true:                                    ; preds = %if.end84
  %flags91 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %27 = ptrtoint ptr %flags91 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flags91, align 2
  %29 = and i16 %28, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool94.not = icmp eq i16 %29, 0
  br i1 %tobool94.not, label %land.lhs.true.do.body141_crit_edge, label %if.then95

land.lhs.true.do.body141_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body141

if.then95:                                        ; preds = %land.lhs.true
  %len100 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %30 = ptrtoint ptr %len100 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %len100, align 4
  %len102 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %32 = ptrtoint ptr %len102 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %len102, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool105.not365 = icmp eq i16 %31, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool107.not366 = icmp eq i16 %33, 0
  %or.cond367 = select i1 %tobool105.not365, i1 %tobool107.not366, i1 false
  br i1 %or.cond367, label %if.then95.done_crit_edge, label %while.body108.lr.ph

if.then95.done_crit_edge:                         ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

while.body108.lr.ph:                              ; preds = %if.then95
  %buf118 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %buf120 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  br label %while.body108

while.body108:                                    ; preds = %if.end126.while.body108_crit_edge, %while.body108.lr.ph
  %tcnt96.0370 = phi i16 [ %31, %while.body108.lr.ph ], [ %sub133, %if.end126.while.body108_crit_edge ]
  %wcnt.0369 = phi i16 [ %33, %while.body108.lr.ph ], [ 0, %if.end126.while.body108_crit_edge ]
  %offs98.0368 = phi i32 [ 0, %while.body108.lr.ph ], [ %add129, %if.end126.while.body108_crit_edge ]
  %34 = tail call i16 @llvm.umin.i16(i16 %tcnt96.0370, i16 63)
  %35 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %msgs, align 4
  %conv116 = trunc i16 %36 to i8
  %37 = ptrtoint ptr %buf118 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buf118, align 4
  %39 = ptrtoint ptr %buf120 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buf120, align 4
  %conv121 = and i32 %offs98.0368, 65535
  %add.ptr122 = getelementptr i8, ptr %40, i32 %conv121
  %call123 = tail call i32 %5(ptr noundef %1, i8 noundef zeroext %conv116, ptr noundef %38, i16 noundef zeroext %wcnt.0369, ptr noundef %add.ptr122, i16 noundef zeroext %34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end126, label %while.body108.done_crit_edge

while.body108.done_crit_edge:                     ; preds = %while.body108
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end126:                                        ; preds = %while.body108
  %conv127 = zext i16 %34 to i32
  %add129 = add nuw nsw i32 %conv121, %conv127
  %sub133 = sub i16 %tcnt96.0370, %34
  %tobool105.not = icmp eq i16 %sub133, 0
  br i1 %tobool105.not, label %if.end126.done_crit_edge, label %if.end126.while.body108_crit_edge

if.end126.while.body108_crit_edge:                ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body108

if.end126.done_crit_edge:                         ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

do.body141:                                       ; preds = %land.lhs.true.do.body141_crit_edge, %if.end84.do.body141_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %41 = load i32, ptr @pvrusb2_debug, align 4
  %and142 = and i32 %41, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %do.body141.done_crit_edge, label %do.end147

do.body141.done_crit_edge:                        ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

do.end147:                                        ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #8
  %and152 = zext i16 %26 to i32
  %flags154 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %42 = ptrtoint ptr %flags154 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %flags154, align 2
  %44 = and i16 %43, 1
  %and156 = zext i16 %44 to i32
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %and152, i32 noundef %and156) #9
  br label %done

do.body163:                                       ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %45 = load i32, ptr @pvrusb2_debug, align 4
  %and164 = and i32 %45, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %do.body163.done_crit_edge, label %do.end169

do.body163.done_crit_edge:                        ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

do.end169:                                        ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #8
  %call171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %num) #9
  br label %done

done:                                             ; preds = %do.end169, %do.body163.done_crit_edge, %do.end147, %do.body141.done_crit_edge, %if.end126.done_crit_edge, %while.body108.done_crit_edge, %if.then95.done_crit_edge, %do.end, %do.body.done_crit_edge, %if.else, %if.end43.done_crit_edge, %while.body.done_crit_edge, %if.then19, %if.end6.done_crit_edge, %if.end.done_crit_edge
  %ret.2 = phi i32 [ -524, %do.end147 ], [ -524, %do.body141.done_crit_edge ], [ -524, %do.end169 ], [ -524, %do.body163.done_crit_edge ], [ -5, %if.end6.done_crit_edge ], [ %., %if.then19 ], [ %spec.select, %if.else ], [ -524, %do.end ], [ -524, %do.body.done_crit_edge ], [ -5, %if.end.done_crit_edge ], [ 2, %if.then95.done_crit_edge ], [ 1, %if.end43.done_crit_edge ], [ -5, %while.body.done_crit_edge ], [ 2, %if.end126.done_crit_edge ], [ -5, %while.body108.done_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %46 = load i32, ptr @pvrusb2_debug, align 4
  %and178 = and i32 %46, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178)
  %tobool179.not = icmp eq i32 %and178, 0
  br i1 %tobool179.not, label %done.cleanup281_crit_edge, label %for.cond.preheader

done.cleanup281_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup281

done.thread:                                      ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %47 = load i32, ptr @pvrusb2_debug, align 4
  %and178386 = and i32 %47, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178386)
  %tobool179.not387 = icmp eq i32 %and178386, 0
  br i1 %tobool179.not387, label %done.thread.cleanup281_crit_edge, label %done.thread.do.end276_crit_edge

done.thread.do.end276_crit_edge:                  ; preds = %done.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end276

done.thread.cleanup281_crit_edge:                 ; preds = %done.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup281

for.cond.preheader:                               ; preds = %done
  br i1 %tobool.not, label %for.cond.preheader.do.end276_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.end276_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end276

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %cmp201 = icmp sgt i32 %ret.2, 0
  br label %for.body

for.body:                                         ; preds = %do.end266.for.body_crit_edge, %for.body.lr.ph
  %idx.0380 = phi i32 [ 0, %for.body.lr.ph ], [ %add191, %do.end266.for.body_crit_edge ]
  %arrayidx184 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %idx.0380
  %len185 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %idx.0380, i32 2
  %48 = ptrtoint ptr %len185 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %len185, align 4
  %conv186 = zext i16 %49 to i32
  %add191 = add nuw i32 %idx.0380, 1
  %50 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx184, align 4
  %conv194 = zext i16 %51 to i32
  %flags196 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %idx.0380, i32 1
  %52 = ptrtoint ptr %flags196 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %flags196, align 2
  %54 = and i16 %53, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool199.not = icmp eq i16 %54, 0
  %cond = select i1 %tobool199.not, ptr @.str.42, ptr @.str.41
  %call200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %add191, i32 noundef %num, i32 noundef %conv194, i32 noundef %conv186, ptr noundef nonnull %cond) #9
  br i1 %cmp201, label %for.body.if.then208_crit_edge, label %lor.lhs.false

for.body.if.then208_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then208

lor.lhs.false:                                    ; preds = %for.body
  %55 = ptrtoint ptr %flags196 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %flags196, align 2
  %57 = and i16 %56, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool207.not = icmp eq i16 %57, 0
  br i1 %tobool207.not, label %lor.lhs.false.if.then208_crit_edge, label %lor.lhs.false.if.end253_crit_edge

lor.lhs.false.if.end253_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end253

lor.lhs.false.if.then208_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then208

if.then208:                                       ; preds = %lor.lhs.false.if.then208_crit_edge, %for.body.if.then208_crit_edge
  %58 = tail call i32 @llvm.umin.i32(i32 %conv186, i32 8)
  %call217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp219377.not = icmp eq i32 %58, 0
  br i1 %cmp219377.not, label %if.then208.do.end250_crit_edge, label %do.end232.peel

if.then208.do.end250_crit_edge:                   ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end250

do.end232.peel:                                   ; preds = %if.then208
  %buf235 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %idx.0380, i32 3
  %59 = ptrtoint ptr %buf235 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %buf235, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %60, align 1
  %conv237.peel = zext i8 %62 to i32
  %call238.peel = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %conv237.peel) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %exitcond.peel.not = icmp eq i32 %58, 1
  br i1 %exitcond.peel.not, label %do.end232.peel.do.end250_crit_edge, label %do.end232.peel.do.end232_crit_edge

do.end232.peel.do.end232_crit_edge:               ; preds = %do.end232.peel
  br label %do.end232

do.end232.peel.do.end250_crit_edge:               ; preds = %do.end232.peel
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end250

do.end232:                                        ; preds = %do.end232.do.end232_crit_edge, %do.end232.peel.do.end232_crit_edge
  %offs181.0378 = phi i32 [ %inc, %do.end232.do.end232_crit_edge ], [ 1, %do.end232.peel.do.end232_crit_edge ]
  %call228 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #9
  %63 = ptrtoint ptr %buf235 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %buf235, align 4
  %arrayidx236 = getelementptr i8, ptr %64, i32 %offs181.0378
  %65 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx236, align 1
  %conv237 = zext i8 %66 to i32
  %call238 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %conv237) #9
  %inc = add nuw nsw i32 %offs181.0378, 1
  %exitcond.not = icmp eq i32 %inc, %58
  br i1 %exitcond.not, label %do.end232.do.end250_crit_edge, label %do.end232.do.end232_crit_edge, !llvm.loop !169

do.end232.do.end232_crit_edge:                    ; preds = %do.end232
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end232

do.end232.do.end250_crit_edge:                    ; preds = %do.end232
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end250

do.end250:                                        ; preds = %do.end232.do.end250_crit_edge, %do.end232.peel.do.end250_crit_edge, %if.then208.do.end250_crit_edge
  %call252 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #9
  br label %if.end253

if.end253:                                        ; preds = %do.end250, %lor.lhs.false.if.end253_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %add191, i32 %num)
  %cmp255 = icmp eq i32 %add191, %num
  br i1 %cmp255, label %do.end260, label %if.end253.do.end266_crit_edge

if.end253.do.end266_crit_edge:                    ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end266

do.end260:                                        ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #8
  %call262 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %ret.2) #9
  br label %do.end266

do.end266:                                        ; preds = %do.end260, %if.end253.do.end266_crit_edge
  %call268 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #9
  %exitcond384.not = icmp eq i32 %add191, %num
  br i1 %exitcond384.not, label %for.end271, label %do.end266.for.body_crit_edge

do.end266.for.body_crit_edge:                     ; preds = %do.end266
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end271:                                       ; preds = %do.end266
  br i1 %tobool.not, label %for.end271.do.end276_crit_edge, label %for.end271.cleanup281_crit_edge

for.end271.cleanup281_crit_edge:                  ; preds = %for.end271
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup281

for.end271.do.end276_crit_edge:                   ; preds = %for.end271
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end276

do.end276:                                        ; preds = %for.end271.do.end276_crit_edge, %for.cond.preheader.do.end276_crit_edge, %done.thread.do.end276_crit_edge
  %ret.2389393 = phi i32 [ %ret.2, %for.end271.do.end276_crit_edge ], [ %ret.2, %for.cond.preheader.do.end276_crit_edge ], [ -22, %done.thread.do.end276_crit_edge ]
  %call278 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %ret.2389393) #9
  br label %cleanup281

cleanup281:                                       ; preds = %do.end276, %for.end271.cleanup281_crit_edge, %done.thread.cleanup281_crit_edge, %done.cleanup281_crit_edge
  %ret.2390 = phi i32 [ -22, %done.thread.cleanup281_crit_edge ], [ %ret.2, %done.cleanup281_crit_edge ], [ %ret.2389393, %do.end276 ], [ %ret.2, %for.end271.cleanup281_crit_edge ]
  ret i32 %ret.2390
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pvr2_i2c_functionality(ptr nocapture noundef readnone %adap) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !29, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !147, !149, !151, !153, !154, !155, !157, !159}
!llvm.module.flags = !{!160, !161, !162, !163, !164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = !{ptr @__param_i2c_scan, !1, !"__param_i2c_scan", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_i2c_scantype388, !1, !"__UNIQUE_ID_i2c_scantype388", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_i2c_scan389, !4, !"__UNIQUE_ID_i2c_scan389", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 27, i32 1}
!5 = !{ptr @__param_ir_mode, !6, !"__param_ir_mode", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 30, i32 1}
!7 = !{ptr @__UNIQUE_ID_ir_modetype390, !6, !"__UNIQUE_ID_ir_modetype390", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_ir_mode391, !9, !"__UNIQUE_ID_ir_mode391", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 31, i32 1}
!10 = !{ptr @__param_disable_autoload_ir_video, !11, !"__param_disable_autoload_ir_video", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 34, i32 1}
!12 = !{ptr @__UNIQUE_ID_disable_autoload_ir_videotype392, !11, !"__UNIQUE_ID_disable_autoload_ir_videotype392", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_disable_autoload_ir_video393, !14, !"__UNIQUE_ID_disable_autoload_ir_video393", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 36, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 603, i32 3}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @pvr2_i2c_core_init._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @pvr2_i2c_core_init._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 637, i32 4}
!23 = !{ptr @pvr2_i2c_core_init._entry.3, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @pvr2_i2c_core_init._entry_ptr.5, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @i2c_scan, !26, !"i2c_scan", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 25, i32 21}
!27 = !{ptr @pvr2_disable_ir_video, !28, !"pvr2_disable_ir_video", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 33, i32 12}
!29 = !{ptr @__param_str_i2c_scan, !1, !"__param_str_i2c_scan", i1 false, i1 false}
!30 = !{ptr @__param_str_ir_mode, !6, !"__param_str_ir_mode", i1 false, i1 false}
!31 = !{ptr @__param_arr_ir_mode, !6, !"__param_arr_ir_mode", i1 false, i1 false}
!32 = !{ptr @__param_str_disable_autoload_ir_video, !11, !"__param_str_disable_autoload_ir_video", i1 false, i1 false}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 102, i32 3}
!35 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @pvr2_i2c_read._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @pvr2_i2c_read._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 109, i32 3}
!40 = !{ptr @pvr2_i2c_read._entry.8, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @pvr2_i2c_read._entry_ptr.10, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 139, i32 5}
!44 = !{ptr @pvr2_i2c_read._entry.11, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @pvr2_i2c_read._entry_ptr.13, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 50, i32 3}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @pvr2_i2c_write._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @pvr2_i2c_write._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 78, i32 5}
!53 = !{ptr @pvr2_i2c_write._entry.16, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @pvr2_i2c_write._entry_ptr.18, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @ir_mode, !56, !"ir_mode", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 29, i32 12}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 335, i32 3}
!59 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @i2c_hack_cx25840._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @i2c_hack_cx25840._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 337, i32 3}
!64 = !{ptr @i2c_hack_cx25840._entry.21, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @i2c_hack_cx25840._entry_ptr.23, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 339, i32 3}
!68 = !{ptr @i2c_hack_cx25840._entry.24, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @i2c_hack_cx25840._entry_ptr.26, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 348, i32 2}
!72 = !{ptr @i2c_hack_cx25840._entry.27, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @i2c_hack_cx25840._entry_ptr.29, !71, !"_entry_ptr", i1 false, i1 false}
!74 = distinct !{null, !75, !"pvr2_i2c_adap_template", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 510, i32 33}
!76 = !{ptr @pvr2_i2c_algo_template, !77, !"pvr2_i2c_algo_template", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 505, i32 35}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 426, i32 4}
!80 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @pvr2_i2c_xfer._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @pvr2_i2c_xfer._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 458, i32 4}
!85 = !{ptr @pvr2_i2c_xfer._entry.32, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @pvr2_i2c_xfer._entry_ptr.34, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 463, i32 3}
!89 = !{ptr @pvr2_i2c_xfer._entry.35, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @pvr2_i2c_xfer._entry_ptr.37, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 471, i32 4}
!93 = !{ptr @pvr2_i2c_xfer._entry.38, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @pvr2_i2c_xfer._entry_ptr.40, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 479, i32 5}
!99 = !{ptr @pvr2_i2c_xfer._entry.43, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @pvr2_i2c_xfer._entry_ptr.45, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 481, i32 16}
!103 = !{ptr @pvr2_i2c_xfer._entry.46, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @pvr2_i2c_xfer._entry_ptr.48, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 482, i32 6}
!107 = !{ptr @pvr2_i2c_xfer._entry.49, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @pvr2_i2c_xfer._entry_ptr.51, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 484, i32 21}
!111 = !{ptr @pvr2_i2c_xfer._entry.52, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @pvr2_i2c_xfer._entry_ptr.54, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 485, i32 5}
!115 = !{ptr @pvr2_i2c_xfer._entry.55, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @pvr2_i2c_xfer._entry_ptr.57, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 488, i32 5}
!119 = !{ptr @pvr2_i2c_xfer._entry.58, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @pvr2_i2c_xfer._entry_ptr.60, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 490, i32 4}
!123 = !{ptr @pvr2_i2c_xfer._entry.61, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @pvr2_i2c_xfer._entry_ptr.63, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 493, i32 4}
!127 = !{ptr @pvr2_i2c_xfer._entry.64, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @pvr2_i2c_xfer._entry_ptr.66, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.67, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 533, i32 2}
!131 = !{ptr @.str.68, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @do_i2c_scan._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @do_i2c_scan._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 536, i32 4}
!136 = !{ptr @do_i2c_scan._entry.69, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @do_i2c_scan._entry_ptr.71, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.73, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 540, i32 2}
!140 = !{ptr @do_i2c_scan._entry.72, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @do_i2c_scan._entry_ptr.74, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.75, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 548, i32 3}
!144 = !{ptr @.str.76, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @pvr2_i2c_register_ir._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @pvr2_i2c_register_ir._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.77, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 556, i32 38}
!149 = !{ptr @.str.78, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 564, i32 22}
!151 = !{ptr @.str.80, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 565, i32 3}
!153 = !{ptr @pvr2_i2c_register_ir._entry.79, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @pvr2_i2c_register_ir._entry_ptr.81, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.82, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 579, i32 22}
!157 = !{ptr @pvr2_i2c_register_ir._entry.83, !158, !"_entry", i1 false, i1 false}
!158 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c", i32 580, i32 3}
!159 = !{ptr @pvr2_i2c_register_ir._entry_ptr.84, !158, !"_entry_ptr", i1 false, i1 false}
!160 = !{i32 1, !"wchar_size", i32 2}
!161 = !{i32 1, !"min_enum_size", i32 4}
!162 = !{i32 8, !"branch-target-enforcement", i32 0}
!163 = !{i32 8, !"sign-return-address", i32 0}
!164 = !{i32 8, !"sign-return-address-all", i32 0}
!165 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!166 = !{i32 7, !"uwtable", i32 1}
!167 = !{i32 7, !"frame-pointer", i32 2}
!168 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!169 = distinct !{!169, !170}
!170 = !{!"llvm.loop.peeled.count", i32 1}
