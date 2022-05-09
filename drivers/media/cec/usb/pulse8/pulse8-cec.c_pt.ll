; ModuleID = '/llk/IR_all_yes/drivers/media/cec/usb/pulse8/pulse8-cec.c_pt.bc'
source_filename = "../drivers/media/cec/usb/pulse8/pulse8-cec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cec_adap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.pulse8 = type { ptr, ptr, ptr, i32, %struct.delayed_work, %struct.work_struct, [8 x %struct.cec_msg], i32, i32, %struct.spinlock, [16 x i8], i8, %struct.work_struct, i32, i32, %struct.cec_msg, i8, %struct.completion, [256 x i8], i32, [256 x i8], i32, i8, i8, %struct.mutex, i8, i8, i8 }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_connector_info = type { i32, %union.anon.73 }
%union.anon.73 = type { [16 x i32] }

@__UNIQUE_ID_author232 = internal constant [52 x i8] c"pulse8_cec.author=Hans Verkuil <hverkuil@xs4all.nl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [51 x i8] c"pulse8_cec.description=Pulse Eight HDMI CEC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [56 x i8] c"pulse8_cec.file=drivers/media/cec/usb/pulse8/pulse8-cec\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [23 x i8] c"pulse8_cec.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [17 x i8] c"pulse8_cec.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype236 = internal constant [30 x i8] c"pulse8_cec.parmtype=debug:int\00", section ".modinfo", align 1
@__param_str_persistent_config = internal constant [29 x i8] c"pulse8_cec.persistent_config\00", align 1
@persistent_config = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_persistent_config = internal constant %struct.kernel_param { ptr @__param_str_persistent_config, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @persistent_config } }, section "__param", align 4
@__UNIQUE_ID_persistent_configtype237 = internal constant [42 x i8] c"pulse8_cec.parmtype=persistent_config:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug238 = internal constant [40 x i8] c"pulse8_cec.parm=debug:debug level (0-2)\00", section ".modinfo", align 1
@__UNIQUE_ID_persistent_config239 = internal constant [75 x i8] c"pulse8_cec.parm=persistent_config:read config from persistent memory (0-1)\00", section ".modinfo", align 1
@__initcall__kmod_pulse8_cec__250_921_pulse8_drv_init6 = internal global ptr @pulse8_drv_init, section ".initcall6.init", align 4
@pulse8_drv = internal global { %struct.serio_driver, [44 x i8] } { %struct.serio_driver { ptr @.str.1, ptr @pulse8_serio_ids, i8 0, ptr null, ptr @pulse8_interrupt, ptr @pulse8_connect, ptr null, ptr null, ptr @pulse8_disconnect, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__exitcall_pulse8_drv_exit = internal global ptr @pulse8_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pulse8_cec\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Pulse Eight HDMI CEC driver\00", [36 x i8] zeroinitializer }, align 32
@pulse8_serio_ids = internal constant { [2 x %struct.serio_device_id], [24 x i8] } { [2 x %struct.serio_device_id] [%struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 64 }, %struct.serio_device_id zeroinitializer], [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pulse8-cec\00", [21 x i8] zeroinitializer }, align 32
@pulse8_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 384, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"received %s: %*ph\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pulse8_interrupt\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/cec/usb/pulse8/pulse8-cec.c\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pulse8_interrupt._entry_ptr = internal global ptr @pulse8_interrupt._entry, section ".printk_index", align 4
@pulse8_interrupt._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 411, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"message queue is full, dropping %*ph\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pulse8_interrupt._entry_ptr.11 = internal global ptr @pulse8_interrupt._entry.8, section ".printk_index", align 4
@pulse8_interrupt.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.12, i8 0, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"throwing away %d bytes of garbage\0A\00", [61 x i8] zeroinitializer }, align 32
@pulse8_msgname.unknown_msg = internal global { [5 x i8], [27 x i8] } zeroinitializer, align 32
@pulse8_msgnames = internal constant { [44 x ptr], [48 x i8] } { [44 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0x%02x\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NOTHING\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PING\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TIMEOUT_ERROR\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HIGH_ERROR\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LOW_ERROR\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FRAME_START\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FRAME_DATA\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RECEIVE_FAILED\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"COMMAND_ACCEPTED\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"COMMAND_REJECTED\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SET_ACK_MASK\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TRANSMIT\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TRANSMIT_EOM\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TRANSMIT_IDLETIME\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TRANSMIT_ACK_POLARITY\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TRANSMIT_LINE_TIMEOUT\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TRANSMIT_SUCCEEDED\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TRANSMIT_FAILED_LINE\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TRANSMIT_FAILED_ACK\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"TRANSMIT_FAILED_TIMEOUT_DATA\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"TRANSMIT_FAILED_TIMEOUT_LINE\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FIRMWARE_VERSION\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"START_BOOTLOADER\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GET_BUILDDATE\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SET_CONTROLLED\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GET_AUTO_ENABLED\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SET_AUTO_ENABLED\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GET_DEFAULT_LOGICAL_ADDRESS\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SET_DEFAULT_LOGICAL_ADDRESS\00", [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"GET_LOGICAL_ADDRESS_MASK\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SET_LOGICAL_ADDRESS_MASK\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GET_PHYSICAL_ADDRESS\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SET_PHYSICAL_ADDRESS\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GET_DEVICE_TYPE\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SET_DEVICE_TYPE\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GET_HDMI_VERSION\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SET_HDMI_VERSION\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GET_OSD_NAME\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SET_OSD_NAME\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"WRITE_EEPROM\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GET_ADAPTER_TYPE\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SET_ACTIVE_SOURCE\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GET_AUTO_POWER_ON\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SET_AUTO_POWER_ON\00", [46 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@pulse8_cec_adap_ops = internal constant { %struct.cec_adap_ops, [56 x i8] } { %struct.cec_adap_ops { ptr @pulse8_cec_adap_enable, ptr null, ptr null, ptr @pulse8_cec_adap_log_addr, ptr @pulse8_cec_adap_transmit, ptr null, ptr @pulse8_cec_adap_free, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@pulse8_connect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&pulse8->irq_work)\00", [59 x i8] zeroinitializer }, align 32
@pulse8_connect.__key.59 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&pulse8->tx_work)\00", [60 x i8] zeroinitializer }, align 32
@pulse8_connect.__key.61 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&(&pulse8->ping_eeprom_work)->work)\00", [42 x i8] zeroinitializer }, align 32
@pulse8_connect.__key.63 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.64 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&(&pulse8->ping_eeprom_work)->timer\00", [60 x i8] zeroinitializer }, align 32
@pulse8_connect.__key.65 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&pulse8->lock\00", [18 x i8] zeroinitializer }, align 32
@pulse8_connect.__key.67 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&pulse8->msg_lock\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pulse8_send_and_wait_once._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.5, i32 240, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"transmit %s: %*ph\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pulse8_send_and_wait_once\00", [38 x i8] zeroinitializer }, align 32
@pulse8_send_and_wait_once._entry_ptr = internal global ptr @pulse8_send_and_wait_once._entry, section ".printk_index", align 4
@pulse8_send_and_wait_once._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.5, i32 258, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"transmit %s failed with %s\0A\00", [36 x i8] zeroinitializer }, align 32
@pulse8_send_and_wait_once._entry_ptr.73 = internal global ptr @pulse8_send_and_wait_once._entry.71, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@pulse8_cec_adap_transmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.5, i32 631, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adap transmit %*ph\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pulse8_cec_adap_transmit\00", [39 x i8] zeroinitializer }, align 32
@pulse8_cec_adap_transmit._entry_ptr = internal global ptr @pulse8_cec_adap_transmit._entry, section ".printk_index", align 4
@pulse8_irq_work_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.5, i32 343, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adap received %*ph\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pulse8_irq_work_handler\00", [40 x i8] zeroinitializer }, align 32
@pulse8_irq_work_handler._entry_ptr = internal global ptr @pulse8_irq_work_handler._entry, section ".printk_index", align 4
@pulse8_tx_work_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.5, i32 323, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s(0x%02x) failed with error %d for msg %*ph\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pulse8_tx_work_handler\00", [41 x i8] zeroinitializer }, align 32
@pulse8_tx_work_handler._entry_ptr = internal global ptr @pulse8_tx_work_handler._entry, section ".printk_index", align 4
@pulse8_ping_eeprom_work_handler.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.5, ptr @.str.82, i8 0, i8 -52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pulse8_ping_eeprom_work_handler\00", [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"writing pending config to EEPROM\0A\00", [62 x i8] zeroinitializer }, align 32
@pulse8_ping_eeprom_work_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.5, i32 823, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to write pending config to EEPROM\0A\00", [54 x i8] zeroinitializer }, align 32
@pulse8_ping_eeprom_work_handler._entry_ptr = internal global ptr @pulse8_ping_eeprom_work_handler._entry, section ".printk_index", align 4
@pulse8_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.5, i32 678, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Firmware version %04x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pulse8_setup\00", [19 x i8] zeroinitializer }, align 32
@pulse8_setup._entry_ptr = internal global ptr @pulse8_setup._entry, section ".printk_index", align 4
@pulse8_setup._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.5, i32 689, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Firmware build date %ptT\0A\00", [38 x i8] zeroinitializer }, align 32
@pulse8_setup._entry_ptr.88 = internal global ptr @pulse8_setup._entry.86, section ".printk_index", align 4
@pulse8_setup.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.5, ptr @.str.89, i8 0, i8 -84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Persistent config:\0A\00", [44 x i8] zeroinitializer }, align 32
@pulse8_setup.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.5, ptr @.str.90, i8 0, i8 -82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Autonomous mode: %s\00", [44 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@pulse8_setup.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.5, ptr @.str.93, i8 0, i8 -80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Auto Power On: %s\00", [46 x i8] zeroinitializer }, align 32
@pulse8_setup.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.5, ptr @.str.94, i8 0, i8 -78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Primary device type: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@pulse8_setup._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.85, ptr @.str.5, i32 747, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unknown Primary Device Type: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@pulse8_setup._entry_ptr.97 = internal global ptr @pulse8_setup._entry.95, section ".printk_index", align 4
@pulse8_setup.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.5, ptr @.str.98, i8 0, i8 -67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Logical address ACK mask: %x\0A\00", [34 x i8] zeroinitializer }, align 32
@pulse8_setup.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.5, ptr @.str.99, i8 0, i8 -65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Physical address: %x.%x.%x.%x\0A\00", [33 x i8] zeroinitializer }, align 32
@pulse8_setup.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.5, ptr @.str.100, i8 0, i8 -62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CEC version: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@pulse8_setup.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.5, ptr @.str.101, i8 0, i8 -60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"OSD name: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@switch.table.pulse8_cec_adap_log_addr = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 518, i32 0, i32 1224, i32 2320, i32 32, i32 32768, i32 16384], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 254, i64 255]
@__sancov_gen_cov_switch_values.102 = internal global [13 x i64] [i64 11, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 16, i64 17, i64 18, i64 19, i64 20]
@__sancov_gen_cov_switch_values.103 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.104 = internal global [5 x i64] [i64 3, i64 8, i64 23, i64 24, i64 26]
@___asan_gen_.105 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 48, i32 12 }
@___asan_gen_.108 = private unnamed_addr constant [18 x i8] c"persistent_config\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 49, i32 12 }
@___asan_gen_.111 = private unnamed_addr constant [11 x i8] c"pulse8_drv\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 910, i32 28 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 921, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 914, i32 17 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"pulse8_serio_ids\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 898, i32 37 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 912, i32 11 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 382, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 408, i32 5 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 474, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [12 x i8] c"unknown_msg\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 154, i32 14 }
@___asan_gen_.159 = private unnamed_addr constant [16 x i8] c"pulse8_msgnames\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 105, i32 27 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 158, i32 45 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 106, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 107, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 108, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 109, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 110, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 111, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 112, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 113, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 114, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 115, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 116, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 117, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 118, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 119, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 120, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 121, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 122, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 123, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 124, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 125, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 126, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 127, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 128, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 129, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 130, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 131, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 132, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 133, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 134, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 135, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 136, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 137, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 138, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 139, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 140, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 141, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 142, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 143, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 144, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 145, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 146, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 147, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 148, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 149, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant [20 x i8] c"pulse8_cec_adap_ops\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 647, i32 34 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 856, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 857, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 858, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 860, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 861, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 239, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 256, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.355 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 87, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 630, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 341, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 321, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 819, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 823, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 678, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 689, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 691, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 697, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 704, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 713, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 746, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 756, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 766, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 776, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.445 = private constant [45 x i8] c"../drivers/media/cec/usb/pulse8/pulse8-cec.c\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 784, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant [38 x i8] c"switch.table.pulse8_cec_adap_log_addr\00", align 1
@llvm.compiler.used = appending global [139 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_debug238, ptr @__UNIQUE_ID_debugtype236, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__UNIQUE_ID_persistent_config239, ptr @__UNIQUE_ID_persistent_configtype237, ptr @__exitcall_pulse8_drv_exit, ptr @__initcall__kmod_pulse8_cec__250_921_pulse8_drv_init6, ptr @__param_debug, ptr @__param_persistent_config, ptr @pulse8_cec_adap_transmit._entry, ptr @pulse8_cec_adap_transmit._entry_ptr, ptr @pulse8_drv_exit, ptr @pulse8_interrupt._entry, ptr @pulse8_interrupt._entry.8, ptr @pulse8_interrupt._entry_ptr, ptr @pulse8_interrupt._entry_ptr.11, ptr @pulse8_irq_work_handler._entry, ptr @pulse8_irq_work_handler._entry_ptr, ptr @pulse8_ping_eeprom_work_handler._entry, ptr @pulse8_ping_eeprom_work_handler._entry_ptr, ptr @pulse8_send_and_wait_once._entry, ptr @pulse8_send_and_wait_once._entry.71, ptr @pulse8_send_and_wait_once._entry_ptr, ptr @pulse8_send_and_wait_once._entry_ptr.73, ptr @pulse8_setup._entry, ptr @pulse8_setup._entry.86, ptr @pulse8_setup._entry.95, ptr @pulse8_setup._entry_ptr, ptr @pulse8_setup._entry_ptr.88, ptr @pulse8_setup._entry_ptr.97, ptr @pulse8_tx_work_handler._entry, ptr @pulse8_tx_work_handler._entry_ptr, ptr @debug, ptr @persistent_config, ptr @pulse8_drv, ptr @.str, ptr @.str.1, ptr @pulse8_serio_ids, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @pulse8_msgname.unknown_msg, ptr @pulse8_msgnames, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @pulse8_cec_adap_ops, ptr @pulse8_connect.__key, ptr @.str.58, ptr @pulse8_connect.__key.59, ptr @.str.60, ptr @pulse8_connect.__key.61, ptr @.str.62, ptr @pulse8_connect.__key.63, ptr @.str.64, ptr @pulse8_connect.__key.65, ptr @.str.66, ptr @pulse8_connect.__key.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @init_completion.__key, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @switch.table.pulse8_cec_adap_log_addr], section "llvm.metadata"
@0 = internal global [115 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_config to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pulse8_drv to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pulse8_serio_ids to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pulse8_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pulse8_interrupt._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pulse8_msgname.unknown_msg to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pulse8_msgnames to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pulse8_cec_adap_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pulse8_connect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pulse8_connect.__key.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pulse8_connect.__key.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pulse8_connect.__key.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pulse8_connect.__key.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pulse8_connect.__key.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pulse8_send_and_wait_once._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pulse8_send_and_wait_once._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pulse8_cec_adap_transmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pulse8_irq_work_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pulse8_tx_work_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pulse8_ping_eeprom_work_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pulse8_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pulse8_setup._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pulse8_setup._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pulse8_cec_adap_log_addr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pulse8_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serio_register_driver(ptr noundef nonnull @pulse8_drv, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pulse8_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @serio_unregister_driver(ptr noundef nonnull @pulse8_drv) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serio_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pulse8_interrupt(ptr nocapture noundef readonly %serio, i8 noundef zeroext %data, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %started = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %started, align 1, !range !247
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %data)
  %cmp.not = icmp eq i8 %data, -1
  %or.cond = or i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %data)
  %cmp3 = icmp eq i8 %data, -3
  %escape = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 22
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %escape to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %escape, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %escape to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %escape, align 4, !range !247
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool8.not = icmp eq i8 %6, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i8 %data, 3
  %7 = ptrtoint ptr %escape to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %escape, align 4
  br label %if.end222

if.else:                                          ; preds = %if.end6
  %8 = zext i8 %data to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %data, label %if.else.if.end222_crit_edge [
    i8 -2, label %if.then16
    i8 -1, label %if.then217
  ]

if.else.if.end222_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end222

if.then16:                                        ; preds = %if.else
  %buf = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buf, align 8
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp17 = icmp sgt i32 %11, 1
  br i1 %cmp17, label %do.end, label %if.then16.if.end23_crit_edge

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %call20 = tail call fastcc ptr @pulse8_msgname(i8 noundef zeroext %10)
  %idx21 = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 21
  %14 = ptrtoint ptr %idx21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idx21, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef %call20, i32 noundef %15, ptr noundef %buf) #12
  br label %if.end23

if.end23:                                         ; preds = %do.end, %if.then16.if.end23_crit_edge
  %conv24 = zext i8 %10 to i32
  %and = and i32 %conv24, 63
  %16 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %and, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %if.end23.sw.bb33_crit_edge
    i32 16, label %sw.bb91
    i32 18, label %sw.bb121
    i32 17, label %if.end23.sw.bb160_crit_edge
    i32 19, label %if.end23.sw.bb160_crit_edge329
    i32 20, label %if.end23.sw.bb160_crit_edge330
    i32 3, label %if.end23.sw.bb196_crit_edge
    i32 4, label %if.end23.sw.bb196_crit_edge331
    i32 7, label %if.end23.sw.bb196_crit_edge332
    i32 2, label %if.end23.sw.bb196_crit_edge333
  ]

if.end23.sw.bb196_crit_edge333:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb196

if.end23.sw.bb196_crit_edge332:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb196

if.end23.sw.bb196_crit_edge331:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb196

if.end23.sw.bb196_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb196

if.end23.sw.bb160_crit_edge330:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb160

if.end23.sw.bb160_crit_edge329:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb160

if.end23.sw.bb160_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb160

if.end23.sw.bb33_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb33

sw.bb:                                            ; preds = %if.end23
  %and26 = and i32 %conv24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.then28, label %sw.bb.sw.bb33_crit_edge

sw.bb.sw.bb33_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb33

if.then28:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %new_rx_msg_len = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %new_rx_msg_len to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %new_rx_msg_len, align 4
  %arrayidx30 = getelementptr %struct.pulse8, ptr %1, i32 0, i32 20, i32 1
  %18 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx30, align 1
  %new_rx_msg = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %new_rx_msg to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %new_rx_msg, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %sw.bb.sw.bb33_crit_edge, %if.end23.sw.bb33_crit_edge
  %new_rx_msg_len34 = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %new_rx_msg_len34 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %new_rx_msg_len34, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %22)
  %cmp36 = icmp ult i8 %22, 16
  br i1 %cmp36, label %if.then38, label %sw.bb33.if.end44_crit_edge

sw.bb33.if.end44_crit_edge:                       ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then38:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #11
  %conv35 = zext i8 %22 to i32
  %arrayidx40 = getelementptr %struct.pulse8, ptr %1, i32 0, i32 20, i32 1
  %23 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx40, align 1
  %inc = add nuw nsw i8 %22, 1
  %25 = ptrtoint ptr %new_rx_msg_len34 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %inc, ptr %new_rx_msg_len34, align 4
  %arrayidx43 = getelementptr %struct.pulse8, ptr %1, i32 0, i32 10, i32 %conv35
  %26 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %24, ptr %arrayidx43, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then38, %sw.bb33.if.end44_crit_edge
  %and46 = and i32 %conv24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end44.sw.epilog_crit_edge, label %do.body51

if.end44.sw.epilog_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body51:                                        ; preds = %if.end44
  %msg_lock = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 9
  %call55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %msg_lock) #9
  %rx_msg_num = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %rx_msg_num to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_msg_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %28)
  %cmp62 = icmp eq i32 %28, 8
  br i1 %cmp62, label %do.end67, label %if.end75

do.end67:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  %31 = ptrtoint ptr %new_rx_msg_len34 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %new_rx_msg_len34, align 4
  %conv70 = zext i8 %32 to i32
  %new_rx_msg71 = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.9, i32 noundef %conv70, ptr noundef %new_rx_msg71) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %msg_lock, i32 noundef %call55) #9
  %33 = ptrtoint ptr %new_rx_msg_len34 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %new_rx_msg_len34, align 4
  br label %sw.epilog

if.end75:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  %rx_msg_cur_idx = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 7
  %34 = ptrtoint ptr %rx_msg_cur_idx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_msg_cur_idx, align 8
  %add60 = add i32 %35, %28
  %rem = and i32 %add60, 7
  %inc77 = add i32 %28, 1
  %36 = ptrtoint ptr %rx_msg_num to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %inc77, ptr %rx_msg_num, align 4
  %msg = getelementptr %struct.pulse8, ptr %1, i32 0, i32 6, i32 %rem, i32 6
  %new_rx_msg80 = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 10
  %37 = ptrtoint ptr %new_rx_msg_len34 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %new_rx_msg_len34, align 4
  %conv83 = zext i8 %38 to i32
  %39 = call ptr @memcpy(ptr %msg, ptr %new_rx_msg80, i32 %conv83)
  %40 = load i8, ptr %new_rx_msg_len34, align 4
  %conv85 = zext i8 %40 to i32
  %len = getelementptr %struct.pulse8, ptr %1, i32 0, i32 6, i32 %rem, i32 2
  %41 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv85, ptr %len, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %msg_lock, i32 noundef %call55) #9
  %irq_work = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %42 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %42, ptr noundef %irq_work) #9
  %43 = ptrtoint ptr %new_rx_msg_len34 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %new_rx_msg_len34, align 4
  br label %sw.epilog

sw.bb91:                                          ; preds = %if.end23
  %tx_done_status = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 13
  %44 = ptrtoint ptr %tx_done_status to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_done_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool92.not = icmp eq i32 %45, 0
  br i1 %tobool92.not, label %sw.bb91.if.end110_crit_edge, label %do.end104, !prof !248

sw.bb91.if.end110_crit_edge:                      ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

do.end104:                                        ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 426, i32 noundef 9, ptr noundef null) #9
  br label %if.end110

if.end110:                                        ; preds = %do.end104, %sw.bb91.if.end110_crit_edge
  %46 = ptrtoint ptr %tx_done_status to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %tx_done_status, align 4
  %irq_work119 = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %47 = load ptr, ptr @system_wq, align 4
  %call.i.i325 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %47, ptr noundef %irq_work119) #9
  br label %sw.epilog

sw.bb121:                                         ; preds = %if.end23
  %tx_msg_is_bcast = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 16
  %48 = ptrtoint ptr %tx_msg_is_bcast to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %tx_msg_is_bcast, align 8, !range !247
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool122.not = icmp eq i8 %49, 0
  br i1 %tobool122.not, label %if.end124, label %sw.bb121.sw.epilog_crit_edge

sw.bb121.sw.epilog_crit_edge:                     ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end124:                                        ; preds = %sw.bb121
  %tx_done_status126 = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 13
  %50 = ptrtoint ptr %tx_done_status126 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_done_status126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool127.not = icmp eq i32 %51, 0
  br i1 %tobool127.not, label %if.end124.if.end149_crit_edge, label %do.end143, !prof !248

if.end124.if.end149_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149

do.end143:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 437, i32 noundef 9, ptr noundef null) #9
  br label %if.end149

if.end149:                                        ; preds = %do.end143, %if.end124.if.end149_crit_edge
  %52 = ptrtoint ptr %tx_done_status126 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4, ptr %tx_done_status126, align 4
  %irq_work158 = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %53 = load ptr, ptr @system_wq, align 4
  %call.i.i326 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %53, ptr noundef %irq_work158) #9
  br label %sw.epilog

sw.bb160:                                         ; preds = %if.end23.sw.bb160_crit_edge, %if.end23.sw.bb160_crit_edge329, %if.end23.sw.bb160_crit_edge330
  %tx_done_status162 = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 13
  %54 = ptrtoint ptr %tx_done_status162 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_done_status162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool163.not = icmp eq i32 %55, 0
  br i1 %tobool163.not, label %sw.bb160.if.end185_crit_edge, label %do.end179, !prof !248

sw.bb160.if.end185_crit_edge:                     ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end185

do.end179:                                        ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 444, i32 noundef 9, ptr noundef null) #9
  br label %if.end185

if.end185:                                        ; preds = %do.end179, %sw.bb160.if.end185_crit_edge
  %56 = ptrtoint ptr %tx_done_status162 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 16, ptr %tx_done_status162, align 4
  %irq_work194 = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %57 = load ptr, ptr @system_wq, align 4
  %call.i.i327 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %57, ptr noundef %irq_work194) #9
  br label %sw.epilog

sw.bb196:                                         ; preds = %if.end23.sw.bb196_crit_edge, %if.end23.sw.bb196_crit_edge331, %if.end23.sw.bb196_crit_edge332, %if.end23.sw.bb196_crit_edge333
  %new_rx_msg_len197 = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 11
  %58 = ptrtoint ptr %new_rx_msg_len197 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %new_rx_msg_len197, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end23
  %idx199 = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 21
  %59 = ptrtoint ptr %idx199 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %idx199, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp200 = icmp eq i32 %60, 0
  br i1 %cmp200, label %sw.default.sw.epilog_crit_edge, label %if.end203

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end203:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %data204 = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 18
  %61 = call ptr @memcpy(ptr %data204, ptr %buf, i32 %60)
  %62 = ptrtoint ptr %idx199 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %idx199, align 8
  %len210 = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 19
  %64 = ptrtoint ptr %len210 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %len210, align 4
  %cmd_done = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 17
  tail call void @complete(ptr noundef %cmd_done) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end203, %sw.default.sw.epilog_crit_edge, %sw.bb196, %if.end185, %if.end149, %sw.bb121.sw.epilog_crit_edge, %if.end110, %if.end75, %do.end67, %if.end44.sw.epilog_crit_edge, %if.then28
  %idx211 = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 21
  %65 = ptrtoint ptr %idx211 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %idx211, align 8
  %66 = ptrtoint ptr %started to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %started, align 1
  br label %cleanup

if.then217:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %idx218 = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 21
  %67 = ptrtoint ptr %idx218 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %idx218, align 8
  %68 = ptrtoint ptr %started to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %started, align 1
  br label %cleanup

if.end222:                                        ; preds = %if.else.if.end222_crit_edge, %if.then9
  %data.addr.0 = phi i8 [ %add, %if.then9 ], [ %data, %if.else.if.end222_crit_edge ]
  %idx223 = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 21
  %69 = ptrtoint ptr %idx223 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %idx223, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %70)
  %cmp224 = icmp ugt i32 %70, 255
  br i1 %cmp224, label %do.body227, label %if.end222.if.end244_crit_edge

if.end222.if.end244_crit_edge:                    ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end244

do.body227:                                       ; preds = %if.end222
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pulse8_interrupt.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pulse8_interrupt, %if.then237)) #9
          to label %do.end242 [label %if.then237], !srcloc !249

if.then237:                                       ; preds = %do.body227
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 8
  %73 = ptrtoint ptr %idx223 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %idx223, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pulse8_interrupt.__UNIQUE_ID_ddebug240, ptr noundef %72, ptr noundef nonnull @.str.12, i32 noundef %74) #9
  br label %do.end242

do.end242:                                        ; preds = %if.then237, %do.body227
  %75 = ptrtoint ptr %idx223 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %idx223, align 8
  br label %if.end244

if.end244:                                        ; preds = %do.end242, %if.end222.if.end244_crit_edge
  %76 = ptrtoint ptr %idx223 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %idx223, align 8
  %inc247 = add i32 %77, 1
  store i32 %inc247, ptr %idx223, align 8
  %arrayidx248 = getelementptr %struct.pulse8, ptr %1, i32 0, i32 20, i32 %77
  %78 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %data.addr.0, ptr %arrayidx248, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end244, %if.then217, %sw.epilog, %if.then5, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pulse8_connect(ptr noundef %serio, ptr noundef %drv) #2 align 64 {
entry:
  %log_addrs = alloca %struct.cec_log_addrs, align 4
  %pa = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %log_addrs) #9
  %0 = call ptr @memset(ptr %log_addrs, i32 0, i32 92)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pa) #9
  %1 = ptrtoint ptr %pa to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %pa, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1472) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %serio1 = getelementptr inbounds %struct.pulse8, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %serio1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %serio, ptr %serio1, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  %init_name.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.end.dev_name.exit_crit_edge ]
  %call3 = tail call ptr @cec_allocate_adapter(ptr noundef nonnull @pulse8_cec_adap_ops, ptr noundef nonnull %call7.i.i, ptr noundef %retval.0.i, i32 noundef 63, i8 noundef zeroext 1) #9
  %adap = getelementptr inbounds %struct.pulse8, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call3, ptr %adap, align 8
  %cmp.i.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  %cmp145 = icmp slt ptr %call3, null
  %cmp = and i1 %cmp.i.i, %cmp145
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call3 to i32
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end7:                                          ; preds = %dev_name.exit
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %irq_work = getelementptr inbounds %struct.pulse8, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %irq_work, i32 noundef 0) #9
  %12 = ptrtoint ptr %irq_work to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %irq_work, align 4
  %lockdep_map = getelementptr inbounds %struct.pulse8, ptr %call7.i.i, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.58, ptr noundef nonnull @pulse8_connect.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry13 = getelementptr inbounds %struct.pulse8, ptr %call7.i.i, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %entry13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry13, ptr %entry13, align 8
  %prev.i = getelementptr inbounds %struct.pulse8, ptr %call7.i.i, i32 0, i32 5, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry13, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.pulse8, ptr %call7.i.i, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @pulse8_irq_work_handler, ptr %func, align 8
  %tx_work = getelementptr inbounds %struct.pulse8, ptr %call7.i.i, i32 0, i32 12
  tail call void @__init_work(ptr noundef %tx_work, i32 noundef 0) #9
  %16 = ptrtoint ptr %tx_work to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %tx_work, align 8
  %lockdep_map21 = getelementptr inbounds %struct.pulse8, ptr %call7.i.i, i32 0, i32 12, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map21, ptr noundef nonnull @.str.60, ptr noundef nonnull @pulse8_connect.__key.59, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry23 = getelementptr inbounds %struct.pulse8, ptr %call7.i.i, i32 0, i32 12, i32 1
  %17 = ptrtoint ptr %entry23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry23, ptr %entry23, align 4
  %prev.i142 = getelementptr inbounds %struct.pulse8, ptr %call7.i.i, i32 0, i32 12, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i142 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry23, ptr %prev.i142, align 8
  %func25 = getelementptr inbounds %struct.pulse8, ptr %call7.i.i, i32 0, i32 12, i32 2
  %19 = ptrtoint ptr %func25 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @pulse8_tx_work_handler, ptr %func25, align 4
  %ping_eeprom_work = getelementptr inbounds %struct.pulse8, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %ping_eeprom_work, i32 noundef 0) #9
  %20 = ptrtoint ptr %ping_eeprom_work to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -64, ptr %ping_eeprom_work, align 8
  %lockdep_map37 = getelementptr inbounds %struct.pulse8, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map37, ptr noundef nonnull @.str.62, ptr noundef nonnull @pulse8_connect.__key.61, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry40 = getelementptr inbounds %struct.pulse8, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %21 = ptrtoint ptr %entry40 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %entry40, ptr %entry40, align 4
  %prev.i143 = getelementptr inbounds %struct.pulse8, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i143 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %entry40, ptr %prev.i143, align 8
  %func43 = getelementptr inbounds %struct.pulse8, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 2
  %23 = ptrtoint ptr %func43 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @pulse8_ping_eeprom_work_handler, ptr %func43, align 4
  %timer = getelementptr inbounds %struct.pulse8, ptr %call7.i.i, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.64, ptr noundef nonnull @pulse8_connect.__key.63) #9
  %lock = getelementptr inbounds %struct.pulse8, ptr %call7.i.i, i32 0, i32 24
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.66, ptr noundef nonnull @pulse8_connect.__key.65) #9
  %msg_lock = getelementptr inbounds %struct.pulse8, ptr %call7.i.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %msg_lock, ptr noundef nonnull @.str.68, ptr noundef nonnull @pulse8_connect.__key.67, i16 noundef signext 3) #9
  %config_pending = getelementptr inbounds %struct.pulse8, ptr %call7.i.i, i32 0, i32 25
  %24 = ptrtoint ptr %config_pending to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %config_pending, align 4
  %call59 = tail call i32 @serio_open(ptr noundef %serio, ptr noundef %drv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end7.delete_adap_crit_edge

if.end7.delete_adap_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %delete_adap

if.end62:                                         ; preds = %if.end7
  %call63 = call fastcc i32 @pulse8_setup(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %log_addrs, ptr noundef nonnull %pa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.end62.close_serio_crit_edge

if.end62.close_serio_crit_edge:                   ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %close_serio

if.end66:                                         ; preds = %if.end62
  %25 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adap, align 8
  %call69 = call i32 @cec_register_adapter(ptr noundef %26, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.end66.close_serio_crit_edge, label %if.end72

if.end66.close_serio_crit_edge:                   ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %close_serio

if.end72:                                         ; preds = %if.end66
  %27 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adap, align 8
  %devnode = getelementptr inbounds %struct.cec_adapter, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %devnode, ptr %call7.i.i, align 8
  %30 = load i32, ptr @persistent_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool76.not = icmp eq i32 %30, 0
  br i1 %tobool76.not, label %if.end72.if.end83_crit_edge, label %land.lhs.true

if.end72.if.end83_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

land.lhs.true:                                    ; preds = %if.end72
  %autonomous = getelementptr inbounds %struct.pulse8, ptr %call7.i.i, i32 0, i32 27
  %31 = ptrtoint ptr %autonomous to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %autonomous, align 2, !range !247
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool77.not = icmp eq i8 %32, 0
  br i1 %tobool77.not, label %land.lhs.true.if.end83_crit_edge, label %if.then78

land.lhs.true.if.end83_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then78:                                        ; preds = %land.lhs.true
  %33 = ptrtoint ptr %pa to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %pa, align 2
  %call79 = call fastcc i32 @pulse8_apply_persistent_config(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %log_addrs, i16 noundef zeroext %34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.then78.close_serio_crit_edge

if.then78.close_serio_crit_edge:                  ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  br label %close_serio

if.end82:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  %restoring_config = getelementptr inbounds %struct.pulse8, ptr %call7.i.i, i32 0, i32 26
  %35 = ptrtoint ptr %restoring_config to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %restoring_config, align 1
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %land.lhs.true.if.end83_crit_edge, %if.end72.if.end83_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %36 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %ping_eeprom_work, i32 noundef 1500) #9
  br label %cleanup

close_serio:                                      ; preds = %if.then78.close_serio_crit_edge, %if.end66.close_serio_crit_edge, %if.end62.close_serio_crit_edge
  %err.0 = phi i32 [ %call63, %if.end62.close_serio_crit_edge ], [ %call69, %if.end66.close_serio_crit_edge ], [ %call79, %if.then78.close_serio_crit_edge ]
  %37 = ptrtoint ptr %serio1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %serio1, align 4
  %38 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %driver_data.i.i, align 4
  call void @serio_close(ptr noundef %serio) #9
  br label %delete_adap

delete_adap:                                      ; preds = %close_serio, %if.end7.delete_adap_crit_edge
  %err.1 = phi i32 [ %call59, %if.end7.delete_adap_crit_edge ], [ %err.0, %close_serio ]
  %39 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adap, align 8
  call void @cec_delete_adapter(ptr noundef %40) #9
  br label %cleanup

cleanup:                                          ; preds = %delete_adap, %if.end83, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then6 ], [ %err.1, %delete_adap ], [ 0, %if.end83 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pa) #9
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %log_addrs) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pulse8_disconnect(ptr noundef %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adap = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 8
  tail call void @cec_unregister_adapter(ptr noundef %3) #9
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @serio_close(ptr noundef %serio) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pulse8_msgname(i8 noundef zeroext %cmd) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %cmd to i32
  %and = and i32 %conv, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %and)
  %cmp = icmp ult i32 %and, 44
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [44 x ptr], ptr @pulse8_msgnames, i32 0, i32 %and
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @pulse8_msgname.unknown_msg, i32 noundef 5, ptr noundef nonnull @.str.13, i32 noundef %conv)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %1, %if.then ], [ @pulse8_msgname.unknown_msg, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_allocate_adapter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pulse8_irq_work_handler(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -116
  %msg_lock = getelementptr i8, ptr %work, i32 500
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %msg_lock) #9
  %rx_msg_num = getelementptr i8, ptr %work, i32 496
  %0 = ptrtoint ptr %rx_msg_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_msg_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not71 = icmp eq i32 %1, 0
  br i1 %tobool.not71, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %rx_msg = getelementptr i8, ptr %work, i32 44
  %rx_msg_cur_idx = getelementptr i8, ptr %work, i32 492
  %adap = getelementptr i8, ptr %work, i32 -108
  br label %while.body

while.body:                                       ; preds = %if.end35.while.body_crit_edge, %while.body.lr.ph
  %flags.072 = phi i32 [ %call3, %while.body.lr.ph ], [ %call26, %if.end35.while.body_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %msg_lock, i32 noundef %flags.072) #9
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool7.not = icmp eq i32 %2, 0
  br i1 %tobool7.not, label %while.body.if.end_crit_edge, label %do.end10

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end10:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %5 = ptrtoint ptr %rx_msg_cur_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_msg_cur_idx, align 8
  %arrayidx = getelementptr [8 x %struct.cec_msg], ptr %rx_msg, i32 0, i32 %6
  %len = getelementptr inbounds %struct.cec_msg, ptr %arrayidx, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 8
  %msg = getelementptr inbounds %struct.cec_msg, ptr %arrayidx, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.77, i32 noundef %8, ptr noundef %msg) #12
  br label %if.end

if.end:                                           ; preds = %do.end10, %while.body.if.end_crit_edge
  %9 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adap, align 8
  %11 = ptrtoint ptr %rx_msg_cur_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_msg_cur_idx, align 8
  %arrayidx16 = getelementptr [8 x %struct.cec_msg], ptr %rx_msg, i32 0, i32 %12
  %call.i = tail call i64 @ktime_get() #9
  tail call void @cec_received_msg_ts(ptr noundef %10, ptr noundef %arrayidx16, i64 noundef %call.i) #9
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %msg_lock) #9
  %13 = ptrtoint ptr %rx_msg_num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_msg_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool32.not = icmp eq i32 %14, 0
  br i1 %tobool32.not, label %if.end35.thread, label %if.end35

if.end35.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %rx_msg_cur_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_msg_cur_idx, align 8
  %add73 = add i32 %16, 1
  %rem74 = and i32 %add73, 7
  store i32 %rem74, ptr %rx_msg_cur_idx, align 8
  br label %while.end

if.end35:                                         ; preds = %if.end
  %dec = add i32 %14, -1
  %17 = ptrtoint ptr %rx_msg_num to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %dec, ptr %rx_msg_num, align 4
  %18 = ptrtoint ptr %rx_msg_cur_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_msg_cur_idx, align 8
  %add = add i32 %19, 1
  %rem = and i32 %add, 7
  store i32 %rem, ptr %rx_msg_cur_idx, align 8
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end35.while.end_crit_edge, label %if.end35.while.body_crit_edge

if.end35.while.body_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end35.while.end_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end35.while.end_crit_edge, %if.end35.thread, %entry.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call3, %entry.while.end_crit_edge ], [ %call26, %if.end35.thread ], [ %call26, %if.end35.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %msg_lock, i32 noundef %flags.0.lcssa) #9
  %lock = getelementptr i8, ptr %work, i32 1260
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %tx_done_status = getelementptr i8, ptr %work, i32 608
  %20 = ptrtoint ptr %tx_done_status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_done_status, align 4
  store i32 0, ptr %tx_done_status, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool41.not = icmp eq i32 %21, 0
  br i1 %tobool41.not, label %while.end.if.end45_crit_edge, label %if.then42

while.end.if.end45_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then42:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %adap43 = getelementptr i8, ptr %work, i32 -108
  %22 = ptrtoint ptr %adap43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adap43, align 8
  %conv44 = trunc i32 %21 to i8
  %call.i70 = tail call i64 @ktime_get() #9
  tail call void @cec_transmit_attempt_done_ts(ptr noundef %23, i8 noundef zeroext %conv44, i64 noundef %call.i70) #9
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %while.end.if.end45_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pulse8_tx_work_handler(ptr noundef %work) #2 align 64 {
entry:
  %cmd_sc.i129 = alloca [2 x i8], align 1
  %cmd_sc.i115 = alloca [2 x i8], align 1
  %cmd_sc.i101 = alloca [2 x i8], align 1
  %cmd_sc.i = alloca [2 x i8], align 1
  %cmd = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -680
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #9
  %0 = getelementptr inbounds [2 x i8], ptr %cmd, i32 0, i32 1
  %len = getelementptr i8, ptr %work, i32 72
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %work, i32 696
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 13, ptr %cmd, align 1
  %tx_signal_free_time = getelementptr i8, ptr %work, i32 48
  %4 = ptrtoint ptr %tx_signal_free_time to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_signal_free_time, align 8
  %conv = trunc i32 %5 to i8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_sc.i) #9
  %call.i = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %add.ptr, ptr noundef nonnull %cmd, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, -25
  br i1 %cmp.not.i, label %if.end.i, label %if.end.pulse8_send_and_wait.exit_crit_edge

if.end.pulse8_send_and_wait.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %pulse8_send_and_wait.exit

if.end.i:                                         ; preds = %if.end
  %7 = getelementptr inbounds [2 x i8], ptr %cmd_sc.i, i32 0, i32 1
  %8 = ptrtoint ptr %cmd_sc.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 24, ptr %cmd_sc.i, align 1
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %7, align 1
  %call2.i = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %add.ptr, ptr noundef nonnull %cmd_sc.i, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.then3.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %add.ptr, ptr noundef nonnull %cmd, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 1) #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %err.0.i = phi i32 [ %call2.i, %if.end.i.if.end5.i_crit_edge ], [ %call4.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %err.0.i)
  %cmp6.i = icmp eq i32 %err.0.i, -25
  %spec.select = select i1 %cmp6.i, i32 -5, i32 %err.0.i
  br label %pulse8_send_and_wait.exit

pulse8_send_and_wait.exit:                        ; preds = %if.end5.i, %if.end.pulse8_send_and_wait.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.pulse8_send_and_wait.exit_crit_edge ], [ %spec.select, %if.end5.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_sc.i) #9
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 14, ptr %cmd, align 1
  %msg1.i = getelementptr i8, ptr %work, i32 88
  %11 = ptrtoint ptr %msg1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %msg1.i, align 8
  %13 = and i8 %12, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %13)
  %cmp.i = icmp eq i8 %13, 15
  %conv4 = zext i1 %cmp.i to i8
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv4, ptr %0, align 1
  %tx_msg_is_bcast = getelementptr i8, ptr %work, i32 112
  %15 = ptrtoint ptr %tx_msg_is_bcast to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv4, ptr %tx_msg_is_bcast, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool7.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool7.not, label %if.then8, label %pulse8_send_and_wait.exit.if.end11_crit_edge

pulse8_send_and_wait.exit.if.end11_crit_edge:     ; preds = %pulse8_send_and_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %pulse8_send_and_wait.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_sc.i101) #9
  %call.i102 = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %add.ptr, ptr noundef nonnull %cmd, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %call.i102)
  %cmp.not.i103 = icmp eq i32 %call.i102, -25
  br i1 %cmp.not.i103, label %if.end.i106, label %if.then8.pulse8_send_and_wait.exit114_crit_edge

if.then8.pulse8_send_and_wait.exit114_crit_edge:  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %pulse8_send_and_wait.exit114

if.end.i106:                                      ; preds = %if.then8
  %16 = getelementptr inbounds [2 x i8], ptr %cmd_sc.i101, i32 0, i32 1
  %17 = ptrtoint ptr %cmd_sc.i101 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 24, ptr %cmd_sc.i101, align 1
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %16, align 1
  %call2.i104 = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %add.ptr, ptr noundef nonnull %cmd_sc.i101, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i104)
  %tobool.not.i105 = icmp eq i32 %call2.i104, 0
  br i1 %tobool.not.i105, label %if.then3.i108, label %if.end.i106.if.end5.i112_crit_edge

if.end.i106.if.end5.i112_crit_edge:               ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i112

if.then3.i108:                                    ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i107 = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %add.ptr, ptr noundef nonnull %cmd, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 1) #9
  br label %if.end5.i112

if.end5.i112:                                     ; preds = %if.then3.i108, %if.end.i106.if.end5.i112_crit_edge
  %err.0.i109 = phi i32 [ %call2.i104, %if.end.i106.if.end5.i112_crit_edge ], [ %call4.i107, %if.then3.i108 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %err.0.i109)
  %cmp6.i110 = icmp eq i32 %err.0.i109, -25
  %spec.select.i111 = select i1 %cmp6.i110, i32 -5, i32 %err.0.i109
  br label %pulse8_send_and_wait.exit114

pulse8_send_and_wait.exit114:                     ; preds = %if.end5.i112, %if.then8.pulse8_send_and_wait.exit114_crit_edge
  %retval.0.i113 = phi i32 [ %spec.select.i111, %if.end5.i112 ], [ %call.i102, %if.then8.pulse8_send_and_wait.exit114_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_sc.i101) #9
  br label %if.end11

if.end11:                                         ; preds = %pulse8_send_and_wait.exit114, %pulse8_send_and_wait.exit.if.end11_crit_edge
  %err.0 = phi i32 [ %retval.0.i, %pulse8_send_and_wait.exit.if.end11_crit_edge ], [ %retval.0.i113, %pulse8_send_and_wait.exit114 ]
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp13 = icmp eq i32 %20, 1
  %conv15 = select i1 %cmp13, i8 12, i8 11
  %21 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv15, ptr %cmd, align 1
  %22 = ptrtoint ptr %msg1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %msg1.i, align 8
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool20.not = icmp eq i32 %err.0, 0
  br i1 %tobool20.not, label %if.then21, label %if.end11.if.end24_crit_edge

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then21:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_sc.i115) #9
  %call.i116 = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %add.ptr, ptr noundef nonnull %cmd, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %call.i116)
  %cmp.not.i117 = icmp eq i32 %call.i116, -25
  br i1 %cmp.not.i117, label %if.end.i120, label %if.then21.pulse8_send_and_wait.exit128_crit_edge

if.then21.pulse8_send_and_wait.exit128_crit_edge: ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %pulse8_send_and_wait.exit128

if.end.i120:                                      ; preds = %if.then21
  %25 = getelementptr inbounds [2 x i8], ptr %cmd_sc.i115, i32 0, i32 1
  %26 = ptrtoint ptr %cmd_sc.i115 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 24, ptr %cmd_sc.i115, align 1
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %25, align 1
  %call2.i118 = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %add.ptr, ptr noundef nonnull %cmd_sc.i115, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i118)
  %tobool.not.i119 = icmp eq i32 %call2.i118, 0
  br i1 %tobool.not.i119, label %if.then3.i122, label %if.end.i120.if.end5.i126_crit_edge

if.end.i120.if.end5.i126_crit_edge:               ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i126

if.then3.i122:                                    ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i121 = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %add.ptr, ptr noundef nonnull %cmd, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 1) #9
  br label %if.end5.i126

if.end5.i126:                                     ; preds = %if.then3.i122, %if.end.i120.if.end5.i126_crit_edge
  %err.0.i123 = phi i32 [ %call2.i118, %if.end.i120.if.end5.i126_crit_edge ], [ %call4.i121, %if.then3.i122 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %err.0.i123)
  %cmp6.i124 = icmp eq i32 %err.0.i123, -25
  %spec.select.i125 = select i1 %cmp6.i124, i32 -5, i32 %err.0.i123
  br label %pulse8_send_and_wait.exit128

pulse8_send_and_wait.exit128:                     ; preds = %if.end5.i126, %if.then21.pulse8_send_and_wait.exit128_crit_edge
  %retval.0.i127 = phi i32 [ %spec.select.i125, %if.end5.i126 ], [ %call.i116, %if.then21.pulse8_send_and_wait.exit128_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_sc.i115) #9
  br label %if.end24

if.end24:                                         ; preds = %pulse8_send_and_wait.exit128, %if.end11.if.end24_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end11.if.end24_crit_edge ], [ %retval.0.i127, %pulse8_send_and_wait.exit128 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool25.not = icmp eq i32 %err.1, 0
  br i1 %tobool25.not, label %land.lhs.true, label %if.end24.if.end45_crit_edge

if.end24.if.end45_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

land.lhs.true:                                    ; preds = %if.end24
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp27 = icmp ugt i32 %29, 1
  br i1 %cmp27, label %for.cond.preheader, label %land.lhs.true.if.end62.critedge_crit_edge

land.lhs.true.if.end62.critedge_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.critedge

for.cond.preheader:                               ; preds = %land.lhs.true
  %30 = getelementptr inbounds [2 x i8], ptr %cmd_sc.i129, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %pulse8_send_and_wait.exit142.land.rhs_crit_edge, %for.cond.preheader
  %i.0151 = phi i32 [ 1, %for.cond.preheader ], [ %inc, %pulse8_send_and_wait.exit142.land.rhs_crit_edge ]
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0151, i32 %32)
  %cmp32 = icmp ult i32 %i.0151, %32
  br i1 %cmp32, label %for.body, label %land.rhs.if.end62.critedge_crit_edge

land.rhs.if.end62.critedge_crit_edge:             ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.critedge

for.body:                                         ; preds = %land.rhs
  %sub = add i32 %32, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0151, i32 %sub)
  %cmp35 = icmp eq i32 %i.0151, %sub
  %conv38 = select i1 %cmp35, i8 12, i8 11
  %33 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv38, ptr %cmd, align 1
  %arrayidx41 = getelementptr [16 x i8], ptr %msg1.i, i32 0, i32 %i.0151
  %34 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx41, align 1
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_sc.i129) #9
  %call.i130 = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %add.ptr, ptr noundef nonnull %cmd, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %call.i130)
  %cmp.not.i131 = icmp eq i32 %call.i130, -25
  br i1 %cmp.not.i131, label %if.end.i134, label %for.body.pulse8_send_and_wait.exit142_crit_edge

for.body.pulse8_send_and_wait.exit142_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %pulse8_send_and_wait.exit142

if.end.i134:                                      ; preds = %for.body
  %37 = ptrtoint ptr %cmd_sc.i129 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 24, ptr %cmd_sc.i129, align 1
  %38 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %30, align 1
  %call2.i132 = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %add.ptr, ptr noundef nonnull %cmd_sc.i129, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i132)
  %tobool.not.i133 = icmp eq i32 %call2.i132, 0
  br i1 %tobool.not.i133, label %if.then3.i136, label %if.end.i134.if.end5.i140_crit_edge

if.end.i134.if.end5.i140_crit_edge:               ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i140

if.then3.i136:                                    ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i135 = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %add.ptr, ptr noundef nonnull %cmd, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 1) #9
  br label %if.end5.i140

if.end5.i140:                                     ; preds = %if.then3.i136, %if.end.i134.if.end5.i140_crit_edge
  %err.0.i137 = phi i32 [ %call2.i132, %if.end.i134.if.end5.i140_crit_edge ], [ %call4.i135, %if.then3.i136 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %err.0.i137)
  %cmp6.i138 = icmp eq i32 %err.0.i137, -25
  br i1 %cmp6.i138, label %if.end45.thread, label %if.end5.i140.pulse8_send_and_wait.exit142_crit_edge

if.end5.i140.pulse8_send_and_wait.exit142_crit_edge: ; preds = %if.end5.i140
  call void @__sanitizer_cov_trace_pc() #11
  br label %pulse8_send_and_wait.exit142

if.end45.thread:                                  ; preds = %if.end5.i140
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_sc.i129) #9
  br label %land.lhs.true47

pulse8_send_and_wait.exit142:                     ; preds = %if.end5.i140.pulse8_send_and_wait.exit142_crit_edge, %for.body.pulse8_send_and_wait.exit142_crit_edge
  %retval.0.i141 = phi i32 [ %err.0.i137, %if.end5.i140.pulse8_send_and_wait.exit142_crit_edge ], [ %call.i130, %for.body.pulse8_send_and_wait.exit142_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_sc.i129) #9
  %inc = add nuw i32 %i.0151, 1
  %tobool30.not = icmp eq i32 %retval.0.i141, 0
  br i1 %tobool30.not, label %pulse8_send_and_wait.exit142.land.rhs_crit_edge, label %pulse8_send_and_wait.exit142.if.end45_crit_edge

pulse8_send_and_wait.exit142.if.end45_crit_edge:  ; preds = %pulse8_send_and_wait.exit142
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

pulse8_send_and_wait.exit142.land.rhs_crit_edge:  ; preds = %pulse8_send_and_wait.exit142
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

if.end45:                                         ; preds = %pulse8_send_and_wait.exit142.if.end45_crit_edge, %if.end24.if.end45_crit_edge
  %err.3 = phi i32 [ %err.1, %if.end24.if.end45_crit_edge ], [ %retval.0.i141, %pulse8_send_and_wait.exit142.if.end45_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %tobool46.not = icmp eq i32 %err.3, 0
  br i1 %tobool46.not, label %if.end45.if.end62.critedge_crit_edge, label %if.end45.land.lhs.true47_crit_edge

if.end45.land.lhs.true47_crit_edge:               ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true47

if.end45.if.end62.critedge_crit_edge:             ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.critedge

land.lhs.true47:                                  ; preds = %if.end45.land.lhs.true47_crit_edge, %if.end45.thread
  %err.3159 = phi i32 [ -5, %if.end45.thread ], [ %err.3, %if.end45.land.lhs.true47_crit_edge ]
  %39 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool48.not = icmp eq i32 %39, 0
  br i1 %tobool48.not, label %land.lhs.true47.if.then61_crit_edge, label %do.end

land.lhs.true47.if.then61_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then61

do.end:                                           ; preds = %land.lhs.true47
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr, align 8
  %42 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %cmd, align 1
  %conv.i = zext i8 %43 to i32
  %and.i = and i32 %conv.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %and.i)
  %cmp.i143 = icmp ult i32 %and.i, 44
  br i1 %cmp.i143, label %if.then.i, label %if.end.i145

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr [44 x ptr], ptr @pulse8_msgnames, i32 0, i32 %and.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i, align 4
  br label %pulse8_msgname.exit

if.end.i145:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i144 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @pulse8_msgname.unknown_msg, i32 noundef 5, ptr noundef nonnull @.str.13, i32 noundef %conv.i) #9
  br label %pulse8_msgname.exit

pulse8_msgname.exit:                              ; preds = %if.end.i145, %if.then.i
  %retval.0.i146 = phi ptr [ %45, %if.then.i ], [ @pulse8_msgname.unknown_msg, %if.end.i145 ]
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %0, align 1
  %conv53 = zext i8 %47 to i32
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.79, ptr noundef %retval.0.i146, i32 noundef %conv53, i32 noundef %err.3159, i32 noundef %49, ptr noundef %msg1.i) #12
  br label %if.then61

if.then61:                                        ; preds = %pulse8_msgname.exit, %land.lhs.true47.if.then61_crit_edge
  %50 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %len, align 8
  call void @mutex_unlock(ptr noundef %lock) #9
  %adap = getelementptr i8, ptr %work, i32 -672
  %51 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %adap, align 8
  %call.i147 = call i64 @ktime_get() #9
  call void @cec_transmit_attempt_done_ts(ptr noundef %52, i8 noundef zeroext 16, i64 noundef %call.i147) #9
  br label %cleanup

if.end62.critedge:                                ; preds = %if.end45.if.end62.critedge_crit_edge, %land.rhs.if.end62.critedge_crit_edge, %land.lhs.true.if.end62.critedge_crit_edge
  %53 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %len, align 8
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end62.critedge, %if.then61, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pulse8_ping_eeprom_work_handler(ptr noundef %work) #2 align 64 {
entry:
  %cmd_sc.i32 = alloca [2 x i8], align 1
  %cmd_sc.i = alloca [2 x i8], align 1
  %cmd = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd) #9
  %lock = getelementptr i8, ptr %work, i32 1360
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %cmd, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_sc.i) #9
  %call.i = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %add.ptr, ptr noundef nonnull %cmd, i8 noundef zeroext 1, i8 noundef zeroext 8, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, -25
  br i1 %cmp.not.i, label %if.end.i, label %entry.pulse8_send_and_wait.exit_crit_edge

entry.pulse8_send_and_wait.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pulse8_send_and_wait.exit

if.end.i:                                         ; preds = %entry
  %1 = getelementptr inbounds [2 x i8], ptr %cmd_sc.i, i32 0, i32 1
  %2 = ptrtoint ptr %cmd_sc.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 24, ptr %cmd_sc.i, align 1
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %1, align 1
  %call2.i = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %add.ptr, ptr noundef nonnull %cmd_sc.i, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.then3.i, label %if.end.i.pulse8_send_and_wait.exit_crit_edge

if.end.i.pulse8_send_and_wait.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pulse8_send_and_wait.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %add.ptr, ptr noundef nonnull %cmd, i8 noundef zeroext 1, i8 noundef zeroext 8, i8 noundef zeroext 0) #9
  br label %pulse8_send_and_wait.exit

pulse8_send_and_wait.exit:                        ; preds = %if.then3.i, %if.end.i.pulse8_send_and_wait.exit_crit_edge, %entry.pulse8_send_and_wait.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_sc.i) #9
  %vers = getelementptr i8, ptr %work, i32 -4
  %4 = ptrtoint ptr %vers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ult i32 %5, 2
  br i1 %cmp, label %pulse8_send_and_wait.exit.unlock_crit_edge, label %if.end

pulse8_send_and_wait.exit.unlock_crit_edge:       ; preds = %pulse8_send_and_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end:                                           ; preds = %pulse8_send_and_wait.exit
  %config_pending = getelementptr i8, ptr %work, i32 1452
  %6 = ptrtoint ptr %config_pending to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %config_pending, align 4, !range !247
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.unlock_crit_edge, label %land.lhs.true

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, ptr @persistent_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not = icmp eq i32 %8, 0
  br i1 %tobool1.not, label %land.lhs.true.unlock_crit_edge, label %do.body

land.lhs.true.unlock_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pulse8_ping_eeprom_work_handler.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pulse8_ping_eeprom_work_handler, %if.then8)) #9
          to label %do.end [label %if.then8], !srcloc !249

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pulse8_ping_eeprom_work_handler.__UNIQUE_ID_ddebug249, ptr noundef %10, ptr noundef nonnull @.str.82) #9
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 39, ptr %cmd, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_sc.i32) #9
  %call.i33 = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %add.ptr, ptr noundef nonnull %cmd, i8 noundef zeroext 1, i8 noundef zeroext 8, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %call.i33)
  %cmp.not.i34 = icmp eq i32 %call.i33, -25
  br i1 %cmp.not.i34, label %if.end.i37, label %do.end.pulse8_send_and_wait.exit45_crit_edge

do.end.pulse8_send_and_wait.exit45_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %pulse8_send_and_wait.exit45

if.end.i37:                                       ; preds = %do.end
  %12 = getelementptr inbounds [2 x i8], ptr %cmd_sc.i32, i32 0, i32 1
  %13 = ptrtoint ptr %cmd_sc.i32 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 24, ptr %cmd_sc.i32, align 1
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %12, align 1
  %call2.i35 = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %add.ptr, ptr noundef nonnull %cmd_sc.i32, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i35)
  %tobool.not.i36 = icmp eq i32 %call2.i35, 0
  br i1 %tobool.not.i36, label %if.then3.i39, label %if.end.i37.if.end5.i43_crit_edge

if.end.i37.if.end5.i43_crit_edge:                 ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i43

if.then3.i39:                                     ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i38 = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %add.ptr, ptr noundef nonnull %cmd, i8 noundef zeroext 1, i8 noundef zeroext 8, i8 noundef zeroext 0) #9
  br label %if.end5.i43

if.end5.i43:                                      ; preds = %if.then3.i39, %if.end.i37.if.end5.i43_crit_edge
  %err.0.i40 = phi i32 [ %call2.i35, %if.end.i37.if.end5.i43_crit_edge ], [ %call4.i38, %if.then3.i39 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %err.0.i40)
  %cmp6.i41 = icmp eq i32 %err.0.i40, -25
  br i1 %cmp6.i41, label %pulse8_send_and_wait.exit45.thread, label %if.end5.i43.pulse8_send_and_wait.exit45_crit_edge

if.end5.i43.pulse8_send_and_wait.exit45_crit_edge: ; preds = %if.end5.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %pulse8_send_and_wait.exit45

pulse8_send_and_wait.exit45.thread:               ; preds = %if.end5.i43
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_sc.i32) #9
  br label %do.end15

pulse8_send_and_wait.exit45:                      ; preds = %if.end5.i43.pulse8_send_and_wait.exit45_crit_edge, %do.end.pulse8_send_and_wait.exit45_crit_edge
  %retval.0.i44 = phi i32 [ %err.0.i40, %if.end5.i43.pulse8_send_and_wait.exit45_crit_edge ], [ %call.i33, %do.end.pulse8_send_and_wait.exit45_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_sc.i32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i44)
  %tobool11.not = icmp eq i32 %retval.0.i44, 0
  br i1 %tobool11.not, label %if.else, label %pulse8_send_and_wait.exit45.do.end15_crit_edge

pulse8_send_and_wait.exit45.do.end15_crit_edge:   ; preds = %pulse8_send_and_wait.exit45
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

do.end15:                                         ; preds = %pulse8_send_and_wait.exit45.do.end15_crit_edge, %pulse8_send_and_wait.exit45.thread
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.83) #12
  br label %unlock

if.else:                                          ; preds = %pulse8_send_and_wait.exit45
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %config_pending to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %config_pending, align 4
  br label %unlock

unlock:                                           ; preds = %if.else, %do.end15, %land.lhs.true.unlock_crit_edge, %if.end.unlock_crit_edge, %pulse8_send_and_wait.exit.unlock_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %work, i32 noundef 1500) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pulse8_setup(ptr noundef %pulse8, ptr noundef %log_addrs, ptr nocapture noundef %pa) unnamed_addr #2 align 64 {
entry:
  %cmd_sc.i23 = alloca [2 x i8], align 1
  %cmd_sc.i = alloca [2 x i8], align 1
  %cmd = alloca [2 x i8], align 1
  %date = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.pulse8, ptr %pulse8, i32 0, i32 18, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #9
  %0 = getelementptr inbounds [2 x i8], ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %0, align 1, !annotation !250
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %date) #9
  %2 = ptrtoint ptr %date to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %date, align 8, !annotation !250
  %vers = getelementptr inbounds %struct.pulse8, ptr %pulse8, i32 0, i32 3
  %3 = ptrtoint ptr %vers to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %vers, align 4
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 21, ptr %cmd, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_sc.i) #9
  %call.i = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %pulse8, ptr noundef nonnull %cmd, i8 noundef zeroext 1, i8 noundef zeroext 21, i8 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, -25
  br i1 %cmp.not.i, label %if.end.i, label %entry.pulse8_send_and_wait.exit_crit_edge

entry.pulse8_send_and_wait.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pulse8_send_and_wait.exit

if.end.i:                                         ; preds = %entry
  %5 = getelementptr inbounds [2 x i8], ptr %cmd_sc.i, i32 0, i32 1
  %6 = ptrtoint ptr %cmd_sc.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 24, ptr %cmd_sc.i, align 1
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %5, align 1
  %call2.i = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %pulse8, ptr noundef nonnull %cmd_sc.i, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.then3.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %pulse8, ptr noundef nonnull %cmd, i8 noundef zeroext 1, i8 noundef zeroext 21, i8 noundef zeroext 2) #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %err.0.i = phi i32 [ %call2.i, %if.end.i.if.end5.i_crit_edge ], [ %call4.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %err.0.i)
  %cmp6.i = icmp eq i32 %err.0.i, -25
  br i1 %cmp6.i, label %pulse8_send_and_wait.exit.thread, label %if.end5.i.pulse8_send_and_wait.exit_crit_edge

if.end5.i.pulse8_send_and_wait.exit_crit_edge:    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pulse8_send_and_wait.exit

pulse8_send_and_wait.exit.thread:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_sc.i) #9
  br label %cleanup

pulse8_send_and_wait.exit:                        ; preds = %if.end5.i.pulse8_send_and_wait.exit_crit_edge, %entry.pulse8_send_and_wait.exit_crit_edge
  %retval.0.i22 = phi i32 [ %err.0.i, %if.end5.i.pulse8_send_and_wait.exit_crit_edge ], [ %call.i, %entry.pulse8_send_and_wait.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_sc.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i22)
  %tobool.not = icmp eq i32 %retval.0.i22, 0
  br i1 %tobool.not, label %if.end, label %pulse8_send_and_wait.exit.cleanup_crit_edge

pulse8_send_and_wait.exit.cleanup_crit_edge:      ; preds = %pulse8_send_and_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %pulse8_send_and_wait.exit
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr, align 1
  %conv = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx5 = getelementptr %struct.pulse8, ptr %pulse8, i32 0, i32 18, i32 2
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %11 to i32
  %or = or i32 %shl, %conv6
  %12 = ptrtoint ptr %vers to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %vers, align 4
  %13 = ptrtoint ptr %pulse8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pulse8, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.84, i32 noundef %or) #12
  %15 = ptrtoint ptr %vers to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp = icmp ult i32 %16, 2
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %pa to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %pa, align 2
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 23, ptr %cmd, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_sc.i23) #9
  %call.i24 = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %pulse8, ptr noundef nonnull %cmd, i8 noundef zeroext 1, i8 noundef zeroext 23, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %call.i24)
  %cmp.not.i25 = icmp eq i32 %call.i24, -25
  br i1 %cmp.not.i25, label %if.end.i28, label %if.end12.pulse8_send_and_wait.exit36_crit_edge

if.end12.pulse8_send_and_wait.exit36_crit_edge:   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %pulse8_send_and_wait.exit36

if.end.i28:                                       ; preds = %if.end12
  %19 = getelementptr inbounds [2 x i8], ptr %cmd_sc.i23, i32 0, i32 1
  %20 = ptrtoint ptr %cmd_sc.i23 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 24, ptr %cmd_sc.i23, align 1
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %19, align 1
  %call2.i26 = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %pulse8, ptr noundef nonnull %cmd_sc.i23, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i26)
  %tobool.not.i27 = icmp eq i32 %call2.i26, 0
  br i1 %tobool.not.i27, label %if.then3.i30, label %if.end.i28.if.end5.i34_crit_edge

if.end.i28.if.end5.i34_crit_edge:                 ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i34

if.then3.i30:                                     ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i29 = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %pulse8, ptr noundef nonnull %cmd, i8 noundef zeroext 1, i8 noundef zeroext 23, i8 noundef zeroext 4) #9
  br label %if.end5.i34

if.end5.i34:                                      ; preds = %if.then3.i30, %if.end.i28.if.end5.i34_crit_edge
  %err.0.i31 = phi i32 [ %call2.i26, %if.end.i28.if.end5.i34_crit_edge ], [ %call4.i29, %if.then3.i30 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %err.0.i31)
  %cmp6.i32 = icmp eq i32 %err.0.i31, -25
  br i1 %cmp6.i32, label %pulse8_send_and_wait.exit36.thread, label %if.end5.i34.pulse8_send_and_wait.exit36_crit_edge

if.end5.i34.pulse8_send_and_wait.exit36_crit_edge: ; preds = %if.end5.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %pulse8_send_and_wait.exit36

pulse8_send_and_wait.exit36.thread:               ; preds = %if.end5.i34
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_sc.i23) #9
  br label %cleanup

pulse8_send_and_wait.exit36:                      ; preds = %if.end5.i34.pulse8_send_and_wait.exit36_crit_edge, %if.end12.pulse8_send_and_wait.exit36_crit_edge
  %retval.0.i35 = phi i32 [ %err.0.i31, %if.end5.i34.pulse8_send_and_wait.exit36_crit_edge ], [ %call.i24, %if.end12.pulse8_send_and_wait.exit36_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_sc.i23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i35)
  %tobool17.not = icmp eq i32 %retval.0.i35, 0
  br i1 %tobool17.not, label %if.end19, label %pulse8_send_and_wait.exit36.cleanup_crit_edge

pulse8_send_and_wait.exit36.cleanup_crit_edge:    ; preds = %pulse8_send_and_wait.exit36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %pulse8_send_and_wait.exit36
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr, align 1
  %conv21 = zext i8 %23 to i32
  %shl22 = shl nuw i32 %conv21, 24
  %24 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx5, align 1
  %conv24 = zext i8 %25 to i32
  %shl25 = shl nuw nsw i32 %conv24, 16
  %or26 = or i32 %shl25, %shl22
  %arrayidx27 = getelementptr %struct.pulse8, ptr %pulse8, i32 0, i32 18, i32 3
  %26 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %27 to i32
  %shl29 = shl nuw nsw i32 %conv28, 8
  %or30 = or i32 %or26, %shl29
  %arrayidx31 = getelementptr %struct.pulse8, ptr %pulse8, i32 0, i32 18, i32 4
  %28 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %29 to i32
  %or33 = or i32 %or30, %conv32
  %conv34 = sext i32 %or33 to i64
  %30 = ptrtoint ptr %date to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv34, ptr %date, align 8
  %31 = ptrtoint ptr %pulse8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pulse8, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.87, ptr noundef nonnull %date) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pulse8_setup.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pulse8_setup, %if.then44)) #9
          to label %do.end48 [label %if.then44], !srcloc !249

if.then44:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %pulse8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pulse8, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pulse8_setup.__UNIQUE_ID_ddebug241, ptr noundef %34, ptr noundef nonnull @.str.89) #9
  br label %do.end48

do.end48:                                         ; preds = %if.then44, %if.end19
  %35 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 25, ptr %cmd, align 1
  %call52 = call fastcc i32 @pulse8_send_and_wait(ptr noundef %pulse8, ptr noundef nonnull %cmd, i8 noundef zeroext 1, i8 noundef zeroext 25, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %do.end48.cleanup_crit_edge

do.end48.cleanup_crit_edge:                       ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end55:                                         ; preds = %do.end48
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool57 = icmp ne i8 %37, 0
  %autonomous = getelementptr inbounds %struct.pulse8, ptr %pulse8, i32 0, i32 27
  %frombool58 = zext i1 %tobool57 to i8
  %38 = ptrtoint ptr %autonomous to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool58, ptr %autonomous, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pulse8_setup.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pulse8_setup, %if.then71)) #9
          to label %do.end78 [label %if.then71], !srcloc !249

if.then71:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %pulse8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pulse8, align 8
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool75.not = icmp eq i8 %42, 0
  %cond = select i1 %tobool75.not, ptr @.str.92, ptr @.str.91
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pulse8_setup.__UNIQUE_ID_ddebug242, ptr noundef %40, ptr noundef nonnull @.str.90, ptr noundef nonnull %cond) #9
  br label %do.end78

do.end78:                                         ; preds = %if.then71, %if.end55
  %43 = ptrtoint ptr %vers to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %44)
  %cmp80 = icmp ugt i32 %44, 9
  br i1 %cmp80, label %if.then82, label %do.end78.if.end111_crit_edge

do.end78.if.end111_crit_edge:                     ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

if.then82:                                        ; preds = %do.end78
  %45 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 42, ptr %cmd, align 1
  %call86 = call fastcc i32 @pulse8_send_and_wait(ptr noundef %pulse8, ptr noundef nonnull %cmd, i8 noundef zeroext 1, i8 noundef zeroext 42, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %do.body89, label %if.then82.if.end111_crit_edge

if.then82.if.end111_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

do.body89:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pulse8_setup.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pulse8_setup, %if.then101)) #9
          to label %if.end111 [label %if.then101], !srcloc !249

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %pulse8 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pulse8, align 8
  %48 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool105.not = icmp eq i8 %49, 0
  %cond106 = select i1 %tobool105.not, ptr @.str.92, ptr @.str.91
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pulse8_setup.__UNIQUE_ID_ddebug243, ptr noundef %47, ptr noundef nonnull @.str.93, ptr noundef nonnull %cond106) #9
  br label %if.end111

if.end111:                                        ; preds = %if.then101, %do.body89, %if.then82.if.end111_crit_edge, %do.end78.if.end111_crit_edge
  %50 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 33, ptr %cmd, align 1
  %call115 = call fastcc i32 @pulse8_send_and_wait(ptr noundef %pulse8, ptr noundef nonnull %cmd, i8 noundef zeroext 1, i8 noundef zeroext 33, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end118, label %if.end111.cleanup_crit_edge

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end118:                                        ; preds = %if.end111
  %51 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %add.ptr, align 1
  %primary_device_type = getelementptr inbounds %struct.cec_log_addrs, ptr %log_addrs, i32 0, i32 7
  %53 = ptrtoint ptr %primary_device_type to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %primary_device_type, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pulse8_setup.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pulse8_setup, %if.then133)) #9
          to label %do.end139 [label %if.then133], !srcloc !249

if.then133:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %pulse8 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pulse8, align 8
  %56 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %add.ptr, align 1
  %conv136 = zext i8 %57 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pulse8_setup.__UNIQUE_ID_ddebug244, ptr noundef %55, ptr noundef nonnull @.str.94, i32 noundef %conv136) #9
  br label %do.end139

do.end139:                                        ; preds = %if.then133, %if.end118
  %58 = ptrtoint ptr %primary_device_type to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %primary_device_type, align 1
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.103)
  switch i8 %59, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb145
    i8 3, label %sw.bb150
    i8 4, label %sw.bb155
    i8 5, label %sw.bb160
    i8 6, label %sw.bb165
    i8 7, label %sw.bb170
  ]

sw.bb:                                            ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #11
  %log_addr_type = getelementptr inbounds %struct.cec_log_addrs, ptr %log_addrs, i32 0, i32 8
  %61 = ptrtoint ptr %log_addr_type to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %log_addr_type, align 1
  %all_device_types = getelementptr inbounds %struct.cec_log_addrs, ptr %log_addrs, i32 0, i32 9
  %62 = ptrtoint ptr %all_device_types to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -128, ptr %all_device_types, align 1
  br label %sw.epilog

sw.bb145:                                         ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #11
  %log_addr_type146 = getelementptr inbounds %struct.cec_log_addrs, ptr %log_addrs, i32 0, i32 8
  %63 = ptrtoint ptr %log_addr_type146 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %log_addr_type146, align 1
  %all_device_types148 = getelementptr inbounds %struct.cec_log_addrs, ptr %log_addrs, i32 0, i32 9
  %64 = ptrtoint ptr %all_device_types148 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 64, ptr %all_device_types148, align 1
  br label %sw.epilog

sw.bb150:                                         ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #11
  %log_addr_type151 = getelementptr inbounds %struct.cec_log_addrs, ptr %log_addrs, i32 0, i32 8
  %65 = ptrtoint ptr %log_addr_type151 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 2, ptr %log_addr_type151, align 1
  %all_device_types153 = getelementptr inbounds %struct.cec_log_addrs, ptr %log_addrs, i32 0, i32 9
  %66 = ptrtoint ptr %all_device_types153 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 32, ptr %all_device_types153, align 1
  br label %sw.epilog

sw.bb155:                                         ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #11
  %log_addr_type156 = getelementptr inbounds %struct.cec_log_addrs, ptr %log_addrs, i32 0, i32 8
  %67 = ptrtoint ptr %log_addr_type156 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 3, ptr %log_addr_type156, align 1
  %all_device_types158 = getelementptr inbounds %struct.cec_log_addrs, ptr %log_addrs, i32 0, i32 9
  %68 = ptrtoint ptr %all_device_types158 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 16, ptr %all_device_types158, align 1
  br label %sw.epilog

sw.bb160:                                         ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #11
  %log_addr_type161 = getelementptr inbounds %struct.cec_log_addrs, ptr %log_addrs, i32 0, i32 8
  %69 = ptrtoint ptr %log_addr_type161 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 3, ptr %log_addr_type161, align 1
  %all_device_types163 = getelementptr inbounds %struct.cec_log_addrs, ptr %log_addrs, i32 0, i32 9
  %70 = ptrtoint ptr %all_device_types163 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 8, ptr %all_device_types163, align 1
  br label %sw.epilog

sw.bb165:                                         ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #11
  %log_addr_type166 = getelementptr inbounds %struct.cec_log_addrs, ptr %log_addrs, i32 0, i32 8
  %71 = ptrtoint ptr %log_addr_type166 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 6, ptr %log_addr_type166, align 1
  %all_device_types168 = getelementptr inbounds %struct.cec_log_addrs, ptr %log_addrs, i32 0, i32 9
  %72 = ptrtoint ptr %all_device_types168 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 4, ptr %all_device_types168, align 1
  br label %sw.epilog

sw.bb170:                                         ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #11
  %log_addr_type171 = getelementptr inbounds %struct.cec_log_addrs, ptr %log_addrs, i32 0, i32 8
  %73 = ptrtoint ptr %log_addr_type171 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 5, ptr %log_addr_type171, align 1
  %all_device_types173 = getelementptr inbounds %struct.cec_log_addrs, ptr %log_addrs, i32 0, i32 9
  %74 = ptrtoint ptr %all_device_types173 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 4, ptr %all_device_types173, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #11
  %log_addr_type175 = getelementptr inbounds %struct.cec_log_addrs, ptr %log_addrs, i32 0, i32 8
  %75 = ptrtoint ptr %log_addr_type175 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 6, ptr %log_addr_type175, align 1
  %all_device_types177 = getelementptr inbounds %struct.cec_log_addrs, ptr %log_addrs, i32 0, i32 9
  %76 = ptrtoint ptr %all_device_types177 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 4, ptr %all_device_types177, align 1
  %77 = ptrtoint ptr %pulse8 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pulse8, align 8
  %conv185 = zext i8 %59 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %78, ptr noundef nonnull @.str.96, i32 noundef %conv185) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb170, %sw.bb165, %sw.bb160, %sw.bb155, %sw.bb150, %sw.bb145, %sw.bb
  %79 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 29, ptr %cmd, align 1
  %call189 = call fastcc i32 @pulse8_send_and_wait(ptr noundef %pulse8, ptr noundef nonnull %cmd, i8 noundef zeroext 1, i8 noundef zeroext 29, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.end192, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end192:                                        ; preds = %sw.epilog
  %80 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %add.ptr, align 1
  %conv194 = zext i8 %81 to i16
  %shl195 = shl nuw i16 %conv194, 8
  %82 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx5, align 1
  %conv197 = zext i8 %83 to i16
  %or198 = or i16 %shl195, %conv197
  %log_addr_mask = getelementptr inbounds %struct.cec_log_addrs, ptr %log_addrs, i32 0, i32 1
  %84 = ptrtoint ptr %log_addr_mask to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %or198, ptr %log_addr_mask, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pulse8_setup.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pulse8_setup, %if.then212)) #9
          to label %do.end218 [label %if.then212], !srcloc !249

if.then212:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %pulse8 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pulse8, align 8
  %87 = ptrtoint ptr %log_addr_mask to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %log_addr_mask, align 4
  %conv215 = zext i16 %88 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pulse8_setup.__UNIQUE_ID_ddebug245, ptr noundef %86, ptr noundef nonnull @.str.98, i32 noundef %conv215) #9
  br label %do.end218

do.end218:                                        ; preds = %if.then212, %if.end192
  %89 = ptrtoint ptr %log_addr_mask to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %log_addr_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool220.not = icmp eq i16 %90, 0
  br i1 %tobool220.not, label %do.end218.if.end222_crit_edge, label %if.then221

do.end218.if.end222_crit_edge:                    ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end222

if.then221:                                       ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #11
  %num_log_addrs = getelementptr inbounds %struct.cec_log_addrs, ptr %log_addrs, i32 0, i32 3
  %91 = ptrtoint ptr %num_log_addrs to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %num_log_addrs, align 1
  br label %if.end222

if.end222:                                        ; preds = %if.then221, %do.end218.if.end222_crit_edge
  %92 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 31, ptr %cmd, align 1
  %call226 = call fastcc i32 @pulse8_send_and_wait(ptr noundef %pulse8, ptr noundef nonnull %cmd, i8 noundef zeroext 1, i8 noundef zeroext 31, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226)
  %tobool227.not = icmp eq i32 %call226, 0
  br i1 %tobool227.not, label %if.end229, label %if.end222.cleanup_crit_edge

if.end222.cleanup_crit_edge:                      ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end229:                                        ; preds = %if.end222
  %93 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %add.ptr, align 1
  %conv231 = zext i8 %94 to i16
  %shl232 = shl nuw i16 %conv231, 8
  %95 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx5, align 1
  %conv234 = zext i8 %96 to i16
  %or235 = or i16 %shl232, %conv234
  %97 = ptrtoint ptr %pa to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %or235, ptr %pa, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pulse8_setup.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pulse8_setup, %if.then249)) #9
          to label %do.end261 [label %if.then249], !srcloc !249

if.then249:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %pulse8 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pulse8, align 8
  %100 = ptrtoint ptr %pa to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %pa, align 2
  %conv251 = zext i16 %101 to i32
  %102 = lshr i32 %conv251, 12
  %103 = lshr i32 %conv251, 8
  %and = and i32 %103, 15
  %104 = lshr i32 %conv251, 4
  %and256 = and i32 %104, 15
  %and258 = and i32 %conv251, 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pulse8_setup.__UNIQUE_ID_ddebug246, ptr noundef %99, ptr noundef nonnull @.str.99, i32 noundef %102, i32 noundef %and, i32 noundef %and256, i32 noundef %and258) #9
  br label %do.end261

do.end261:                                        ; preds = %if.then249, %if.end229
  %cec_version = getelementptr inbounds %struct.cec_log_addrs, ptr %log_addrs, i32 0, i32 2
  %105 = ptrtoint ptr %cec_version to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 5, ptr %cec_version, align 2
  %106 = ptrtoint ptr %vers to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %vers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %107)
  %cmp263 = icmp ult i32 %107, 10
  br i1 %cmp263, label %if.then265, label %do.end261.if.end294_crit_edge

do.end261.if.end294_crit_edge:                    ; preds = %do.end261
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end294

if.then265:                                       ; preds = %do.end261
  %108 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 35, ptr %cmd, align 1
  %call269 = call fastcc i32 @pulse8_send_and_wait(ptr noundef %pulse8, ptr noundef nonnull %cmd, i8 noundef zeroext 1, i8 noundef zeroext 35, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call269)
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %if.end272, label %if.then265.cleanup_crit_edge

if.then265.cleanup_crit_edge:                     ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end272:                                        ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #11
  %109 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %add.ptr, align 1
  %111 = ptrtoint ptr %cec_version to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %cec_version, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pulse8_setup.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pulse8_setup, %if.then287)) #9
          to label %if.end294 [label %if.then287], !srcloc !249

if.then287:                                       ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #11
  %112 = ptrtoint ptr %pulse8 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pulse8, align 8
  %114 = ptrtoint ptr %cec_version to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %cec_version, align 2
  %conv290 = zext i8 %115 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pulse8_setup.__UNIQUE_ID_ddebug247, ptr noundef %113, ptr noundef nonnull @.str.100, i32 noundef %conv290) #9
  br label %if.end294

if.end294:                                        ; preds = %if.then287, %if.end272, %do.end261.if.end294_crit_edge
  %116 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 37, ptr %cmd, align 1
  %call298 = call fastcc i32 @pulse8_send_and_wait(ptr noundef %pulse8, ptr noundef nonnull %cmd, i8 noundef zeroext 1, i8 noundef zeroext 37, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call298)
  %tobool299.not = icmp eq i32 %call298, 0
  br i1 %tobool299.not, label %if.end301, label %if.end294.cleanup_crit_edge

if.end294.cleanup_crit_edge:                      ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end301:                                        ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #11
  %osd_name = getelementptr inbounds %struct.cec_log_addrs, ptr %log_addrs, i32 0, i32 6
  %call303 = call i32 @strscpy(ptr noundef %osd_name, ptr noundef %add.ptr, i32 noundef 15) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pulse8_setup.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pulse8_setup, %if.then316)) #9
          to label %cleanup [label %if.then316], !srcloc !249

if.then316:                                       ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #11
  %117 = ptrtoint ptr %pulse8 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pulse8, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pulse8_setup.__UNIQUE_ID_ddebug248, ptr noundef %118, ptr noundef nonnull @.str.101, ptr noundef %osd_name) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then316, %if.end301, %if.end294.cleanup_crit_edge, %if.then265.cleanup_crit_edge, %if.end222.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end111.cleanup_crit_edge, %do.end48.cleanup_crit_edge, %pulse8_send_and_wait.exit36.cleanup_crit_edge, %pulse8_send_and_wait.exit36.thread, %if.then11, %pulse8_send_and_wait.exit.cleanup_crit_edge, %pulse8_send_and_wait.exit.thread
  %retval.0 = phi i32 [ 0, %if.then11 ], [ %retval.0.i22, %pulse8_send_and_wait.exit.cleanup_crit_edge ], [ %retval.0.i35, %pulse8_send_and_wait.exit36.cleanup_crit_edge ], [ %call52, %do.end48.cleanup_crit_edge ], [ %call115, %if.end111.cleanup_crit_edge ], [ %call189, %sw.epilog.cleanup_crit_edge ], [ %call226, %if.end222.cleanup_crit_edge ], [ %call269, %if.then265.cleanup_crit_edge ], [ %call298, %if.end294.cleanup_crit_edge ], [ 0, %if.then316 ], [ -5, %pulse8_send_and_wait.exit.thread ], [ -5, %pulse8_send_and_wait.exit36.thread ], [ 0, %if.end301 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %date) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_register_adapter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pulse8_apply_persistent_config(ptr nocapture noundef readonly %pulse8, ptr noundef %log_addrs, i16 noundef zeroext %pa) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adap = getelementptr inbounds %struct.pulse8, ptr %pulse8, i32 0, i32 2
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %call = tail call i32 @cec_s_log_addrs(ptr noundef %1, ptr noundef %log_addrs, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 8
  tail call void @cec_s_phys_addr(ptr noundef %3, i16 noundef zeroext %pa, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_delete_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pulse8_cec_adap_enable(ptr nocapture noundef readonly %adap, i1 noundef zeroext %enable) #2 align 64 {
entry:
  %cmd_sc.i = alloca [2 x i8], align 1
  %cmd = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #9
  %2 = getelementptr inbounds [16 x i8], ptr %cmd, i32 0, i32 1
  %lock = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 24
  %3 = getelementptr inbounds i8, ptr %cmd, i32 2
  %4 = call ptr @memset(ptr %3, i32 255, i32 14)
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 24, ptr %cmd, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_sc.i) #9
  %call.i = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %1, ptr noundef nonnull %cmd, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, -25
  br i1 %cmp.not.i, label %if.end.i, label %entry.pulse8_send_and_wait.exit_crit_edge

entry.pulse8_send_and_wait.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pulse8_send_and_wait.exit

if.end.i:                                         ; preds = %entry
  %7 = getelementptr inbounds [2 x i8], ptr %cmd_sc.i, i32 0, i32 1
  %8 = ptrtoint ptr %cmd_sc.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 24, ptr %cmd_sc.i, align 1
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %7, align 1
  %call2.i = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %1, ptr noundef nonnull %cmd_sc.i, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.then3.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %1, ptr noundef nonnull %cmd, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 1) #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %err.0.i = phi i32 [ %call2.i, %if.end.i.if.end5.i_crit_edge ], [ %call4.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %err.0.i)
  %cmp6.i = icmp eq i32 %err.0.i, -25
  %spec.select.i = select i1 %cmp6.i, i32 -5, i32 %err.0.i
  br label %pulse8_send_and_wait.exit

pulse8_send_and_wait.exit:                        ; preds = %if.end5.i, %entry.pulse8_send_and_wait.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %if.end5.i ], [ %call.i, %entry.pulse8_send_and_wait.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_sc.i) #9
  br i1 %enable, label %pulse8_send_and_wait.exit.if.end_crit_edge, label %if.then

pulse8_send_and_wait.exit.if.end_crit_edge:       ; preds = %pulse8_send_and_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %pulse8_send_and_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  %rx_msg_num = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %rx_msg_num to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rx_msg_num, align 4
  %tx_done_status = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %tx_done_status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %tx_done_status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %pulse8_send_and_wait.exit.if.end_crit_edge
  %spec.select = phi i32 [ 0, %if.then ], [ %retval.0.i, %pulse8_send_and_wait.exit.if.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #9
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pulse8_cec_adap_log_addr(ptr noundef %adap, i8 noundef zeroext %log_addr) #2 align 64 {
entry:
  %cmd_sc.i211 = alloca [2 x i8], align 1
  %cmd_sc.i197 = alloca [2 x i8], align 1
  %cmd_sc.i = alloca [2 x i8], align 1
  %cmd = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %phys_addr = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 18
  %2 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %phys_addr, align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #9
  %4 = getelementptr inbounds [16 x i8], ptr %cmd, i32 0, i32 1
  %5 = getelementptr inbounds [16 x i8], ptr %cmd, i32 0, i32 2
  %6 = getelementptr inbounds [16 x i8], ptr %cmd, i32 0, i32 5
  %lock = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 24
  %7 = getelementptr inbounds i8, ptr %cmd, i32 3
  %8 = call ptr @memset(ptr %7, i32 255, i32 13)
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %log_addr)
  %cmp.not = icmp eq i8 %log_addr, -1
  %conv = zext i8 %log_addr to i32
  %shl = shl nuw i32 1, %conv
  %mask.0 = select i1 %cmp.not, i32 0, i32 %shl
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 10, ptr %cmd, align 1
  %10 = lshr i32 %mask.0, 8
  %conv5 = trunc i32 %10 to i8
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv5, ptr %4, align 1
  %conv8 = trunc i32 %mask.0 to i8
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv8, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_sc.i) #9
  %call.i = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %1, ptr noundef nonnull %cmd, i8 noundef zeroext 3, i8 noundef zeroext 8, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, -25
  br i1 %cmp.not.i, label %if.end.i, label %entry.pulse8_send_and_wait.exit_crit_edge

entry.pulse8_send_and_wait.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pulse8_send_and_wait.exit

if.end.i:                                         ; preds = %entry
  %13 = getelementptr inbounds [2 x i8], ptr %cmd_sc.i, i32 0, i32 1
  %14 = ptrtoint ptr %cmd_sc.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 24, ptr %cmd_sc.i, align 1
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %13, align 1
  %call2.i = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %1, ptr noundef nonnull %cmd_sc.i, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.then3.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %1, ptr noundef nonnull %cmd, i8 noundef zeroext 3, i8 noundef zeroext 8, i8 noundef zeroext 0) #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %err.0.i = phi i32 [ %call2.i, %if.end.i.if.end5.i_crit_edge ], [ %call4.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %err.0.i)
  %cmp6.i = icmp eq i32 %err.0.i, -25
  %spec.select.i = select i1 %cmp6.i, i32 -5, i32 %err.0.i
  br label %pulse8_send_and_wait.exit

pulse8_send_and_wait.exit:                        ; preds = %if.end5.i, %entry.pulse8_send_and_wait.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %if.end5.i ], [ %call.i, %entry.pulse8_send_and_wait.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_sc.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  %conv4 = and i32 %mask.0, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4)
  %cmp12.not = icmp eq i32 %conv4, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp12.not
  br i1 %or.cond, label %lor.lhs.false, label %pulse8_send_and_wait.exit.unlock_crit_edge

pulse8_send_and_wait.exit.unlock_crit_edge:       ; preds = %pulse8_send_and_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

lor.lhs.false:                                    ; preds = %pulse8_send_and_wait.exit
  %restoring_config = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 26
  %16 = ptrtoint ptr %restoring_config to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %restoring_config, align 1, !range !247
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool14.not = icmp eq i8 %17, 0
  br i1 %tobool14.not, label %if.end17, label %lor.lhs.false.unlock_crit_edge

lor.lhs.false.unlock_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end17:                                         ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 26, ptr %cmd, align 1
  %not.cmp20 = xor i1 %cmp.not, true
  %conv22 = zext i1 %not.cmp20 to i8
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv22, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_sc.i197) #9
  %call.i198 = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %1, ptr noundef nonnull %cmd, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %call.i198)
  %cmp.not.i199 = icmp eq i32 %call.i198, -25
  br i1 %cmp.not.i199, label %if.end.i202, label %if.end17.pulse8_send_and_wait.exit210_crit_edge

if.end17.pulse8_send_and_wait.exit210_crit_edge:  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %pulse8_send_and_wait.exit210

if.end.i202:                                      ; preds = %if.end17
  %20 = getelementptr inbounds [2 x i8], ptr %cmd_sc.i197, i32 0, i32 1
  %21 = ptrtoint ptr %cmd_sc.i197 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 24, ptr %cmd_sc.i197, align 1
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %20, align 1
  %call2.i200 = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %1, ptr noundef nonnull %cmd_sc.i197, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i200)
  %tobool.not.i201 = icmp eq i32 %call2.i200, 0
  br i1 %tobool.not.i201, label %if.then3.i204, label %if.end.i202.if.end5.i208_crit_edge

if.end.i202.if.end5.i208_crit_edge:               ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i208

if.then3.i204:                                    ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i203 = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %1, ptr noundef nonnull %cmd, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 0) #9
  br label %if.end5.i208

if.end5.i208:                                     ; preds = %if.then3.i204, %if.end.i202.if.end5.i208_crit_edge
  %err.0.i205 = phi i32 [ %call2.i200, %if.end.i202.if.end5.i208_crit_edge ], [ %call4.i203, %if.then3.i204 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %err.0.i205)
  %cmp6.i206 = icmp eq i32 %err.0.i205, -25
  br i1 %cmp6.i206, label %pulse8_send_and_wait.exit210.thread, label %if.end5.i208.pulse8_send_and_wait.exit210_crit_edge

if.end5.i208.pulse8_send_and_wait.exit210_crit_edge: ; preds = %if.end5.i208
  call void @__sanitizer_cov_trace_pc() #11
  br label %pulse8_send_and_wait.exit210

pulse8_send_and_wait.exit210.thread:              ; preds = %if.end5.i208
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_sc.i197) #9
  br label %unlock

pulse8_send_and_wait.exit210:                     ; preds = %if.end5.i208.pulse8_send_and_wait.exit210_crit_edge, %if.end17.pulse8_send_and_wait.exit210_crit_edge
  %retval.0.i209 = phi i32 [ %err.0.i205, %if.end5.i208.pulse8_send_and_wait.exit210_crit_edge ], [ %call.i198, %if.end17.pulse8_send_and_wait.exit210_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_sc.i197) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i209)
  %tobool26.not = icmp eq i32 %retval.0.i209, 0
  br i1 %tobool26.not, label %if.end28, label %pulse8_send_and_wait.exit210.unlock_crit_edge

pulse8_send_and_wait.exit210.unlock_crit_edge:    ; preds = %pulse8_send_and_wait.exit210
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end28:                                         ; preds = %pulse8_send_and_wait.exit210
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool30 = icmp ne i8 %24, 0
  %autonomous = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 27
  %frombool = zext i1 %tobool30 to i8
  %25 = ptrtoint ptr %autonomous to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool, ptr %autonomous, align 2
  br i1 %cmp.not, label %if.end28.unlock_crit_edge, label %if.end35

if.end28.unlock_crit_edge:                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end35:                                         ; preds = %if.end28
  %26 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 34, ptr %cmd, align 1
  %primary_device_type = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 31, i32 7
  %27 = ptrtoint ptr %primary_device_type to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %primary_device_type, align 1
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_sc.i211) #9
  %call.i212 = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %1, ptr noundef nonnull %cmd, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %call.i212)
  %cmp.not.i213 = icmp eq i32 %call.i212, -25
  br i1 %cmp.not.i213, label %if.end.i216, label %if.end35.pulse8_send_and_wait.exit224_crit_edge

if.end35.pulse8_send_and_wait.exit224_crit_edge:  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %pulse8_send_and_wait.exit224

if.end.i216:                                      ; preds = %if.end35
  %30 = getelementptr inbounds [2 x i8], ptr %cmd_sc.i211, i32 0, i32 1
  %31 = ptrtoint ptr %cmd_sc.i211 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 24, ptr %cmd_sc.i211, align 1
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %30, align 1
  %call2.i214 = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %1, ptr noundef nonnull %cmd_sc.i211, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i214)
  %tobool.not.i215 = icmp eq i32 %call2.i214, 0
  br i1 %tobool.not.i215, label %if.then3.i218, label %if.end.i216.if.end5.i222_crit_edge

if.end.i216.if.end5.i222_crit_edge:               ; preds = %if.end.i216
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i222

if.then3.i218:                                    ; preds = %if.end.i216
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i217 = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %1, ptr noundef nonnull %cmd, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 0) #9
  br label %if.end5.i222

if.end5.i222:                                     ; preds = %if.then3.i218, %if.end.i216.if.end5.i222_crit_edge
  %err.0.i219 = phi i32 [ %call2.i214, %if.end.i216.if.end5.i222_crit_edge ], [ %call4.i217, %if.then3.i218 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %err.0.i219)
  %cmp6.i220 = icmp eq i32 %err.0.i219, -25
  br i1 %cmp6.i220, label %pulse8_send_and_wait.exit224.thread, label %if.end5.i222.pulse8_send_and_wait.exit224_crit_edge

if.end5.i222.pulse8_send_and_wait.exit224_crit_edge: ; preds = %if.end5.i222
  call void @__sanitizer_cov_trace_pc() #11
  br label %pulse8_send_and_wait.exit224

pulse8_send_and_wait.exit224.thread:              ; preds = %if.end5.i222
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_sc.i211) #9
  br label %unlock

pulse8_send_and_wait.exit224:                     ; preds = %if.end5.i222.pulse8_send_and_wait.exit224_crit_edge, %if.end35.pulse8_send_and_wait.exit224_crit_edge
  %retval.0.i223 = phi i32 [ %err.0.i219, %if.end5.i222.pulse8_send_and_wait.exit224_crit_edge ], [ %call.i212, %if.end35.pulse8_send_and_wait.exit224_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_sc.i211) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i223)
  %tobool41.not = icmp eq i32 %retval.0.i223, 0
  br i1 %tobool41.not, label %if.end43, label %pulse8_send_and_wait.exit224.unlock_crit_edge

pulse8_send_and_wait.exit224.unlock_crit_edge:    ; preds = %pulse8_send_and_wait.exit224
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end43:                                         ; preds = %pulse8_send_and_wait.exit224
  %33 = ptrtoint ptr %primary_device_type to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %primary_device_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %34)
  %35 = icmp ult i8 %34, 8
  br i1 %35, label %switch.lookup, label %if.end43.sw.epilog_crit_edge

if.end43.sw.epilog_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %36 = sext i8 %34 to i32
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.pulse8_cec_adap_log_addr, i32 0, i32 %36
  %37 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %37)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end43.sw.epilog_crit_edge
  %mask.1 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end43.sw.epilog_crit_edge ]
  %38 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 30, ptr %cmd, align 1
  %39 = lshr i32 %mask.1, 8
  %conv57 = trunc i32 %39 to i8
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv57, ptr %4, align 1
  %conv61 = trunc i32 %mask.1 to i8
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv61, ptr %5, align 1
  %call64 = call fastcc i32 @pulse8_send_and_wait(ptr noundef %1, ptr noundef nonnull %cmd, i8 noundef zeroext 3, i8 noundef zeroext 8, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %sw.epilog.unlock_crit_edge

sw.epilog.unlock_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end67:                                         ; preds = %sw.epilog
  %42 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 28, ptr %cmd, align 1
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %log_addr, ptr %4, align 1
  %call71 = call fastcc i32 @pulse8_send_and_wait(ptr noundef %1, ptr noundef nonnull %cmd, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end67.unlock_crit_edge

if.end67.unlock_crit_edge:                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end74:                                         ; preds = %if.end67
  %44 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 32, ptr %cmd, align 1
  %45 = lshr i16 %3, 8
  %conv78 = trunc i16 %45 to i8
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv78, ptr %4, align 1
  %conv82 = trunc i16 %3 to i8
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv82, ptr %5, align 1
  %call85 = call fastcc i32 @pulse8_send_and_wait(ptr noundef %1, ptr noundef nonnull %cmd, i8 noundef zeroext 3, i8 noundef zeroext 8, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end74.unlock_crit_edge

if.end74.unlock_crit_edge:                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end88:                                         ; preds = %if.end74
  %vers = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 3
  %48 = ptrtoint ptr %vers to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %49)
  %cmp89 = icmp ult i32 %49, 10
  br i1 %cmp89, label %if.then91, label %if.end88.if.end100_crit_edge

if.end88.if.end100_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.then91:                                        ; preds = %if.end88
  %50 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 36, ptr %cmd, align 1
  %cec_version = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 31, i32 2
  %51 = ptrtoint ptr %cec_version to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %cec_version, align 2
  %53 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %4, align 1
  %call96 = call fastcc i32 @pulse8_send_and_wait(ptr noundef %1, ptr noundef nonnull %cmd, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then91.if.end100_crit_edge, label %if.then91.unlock_crit_edge

if.then91.unlock_crit_edge:                       ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then91.if.end100_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.end100:                                        ; preds = %if.then91.if.end100_crit_edge, %if.end88.if.end100_crit_edge
  %osd_name = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 31, i32 6
  %54 = ptrtoint ptr %osd_name to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %osd_name, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool103.not = icmp eq i8 %55, 0
  br i1 %tobool103.not, label %if.end100.unlock_crit_edge, label %if.then104

if.end100.unlock_crit_edge:                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then104:                                       ; preds = %if.end100
  %call108 = call i32 @strlen(ptr noundef %osd_name) #14
  %56 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 38, ptr %cmd, align 1
  %call116 = call i32 @strscpy(ptr noundef %4, ptr noundef %osd_name, i32 noundef 15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call108)
  %cmp117 = icmp ult i32 %call108, 4
  br i1 %cmp117, label %if.then119, label %if.then104.if.end126_crit_edge

if.then104.if.end126_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

if.then119:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr120 = getelementptr i8, ptr %4, i32 %call108
  %sub = sub nuw nsw i32 4, %call108
  %57 = call ptr @memset(ptr %add.ptr120, i32 32, i32 %sub)
  %58 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %6, align 1
  %call125 = call i32 @strscpy(ptr noundef %osd_name, ptr noundef %4, i32 noundef 15) #9
  br label %if.end126

if.end126:                                        ; preds = %if.then119, %if.then104.if.end126_crit_edge
  %osd_len.0 = phi i32 [ 4, %if.then119 ], [ %call108, %if.then104.if.end126_crit_edge ]
  %59 = trunc i32 %osd_len.0 to i8
  %conv128 = add i8 %59, 1
  %call129 = call fastcc i32 @pulse8_send_and_wait(ptr noundef %1, ptr noundef nonnull %cmd, i8 noundef zeroext %conv128, i8 noundef zeroext 8, i8 noundef zeroext 0)
  br label %unlock

unlock:                                           ; preds = %if.end126, %if.end100.unlock_crit_edge, %if.then91.unlock_crit_edge, %if.end74.unlock_crit_edge, %if.end67.unlock_crit_edge, %sw.epilog.unlock_crit_edge, %pulse8_send_and_wait.exit224.unlock_crit_edge, %pulse8_send_and_wait.exit224.thread, %if.end28.unlock_crit_edge, %pulse8_send_and_wait.exit210.unlock_crit_edge, %pulse8_send_and_wait.exit210.thread, %lor.lhs.false.unlock_crit_edge, %pulse8_send_and_wait.exit.unlock_crit_edge
  %err.1 = phi i32 [ %retval.0.i, %lor.lhs.false.unlock_crit_edge ], [ %retval.0.i209, %pulse8_send_and_wait.exit210.unlock_crit_edge ], [ 0, %if.end28.unlock_crit_edge ], [ %retval.0.i223, %pulse8_send_and_wait.exit224.unlock_crit_edge ], [ %call64, %sw.epilog.unlock_crit_edge ], [ %call71, %if.end67.unlock_crit_edge ], [ %call85, %if.end74.unlock_crit_edge ], [ %call96, %if.then91.unlock_crit_edge ], [ %call129, %if.end126 ], [ 0, %if.end100.unlock_crit_edge ], [ %retval.0.i, %pulse8_send_and_wait.exit.unlock_crit_edge ], [ -5, %pulse8_send_and_wait.exit210.thread ], [ -5, %pulse8_send_and_wait.exit224.thread ]
  %restoring_config135 = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 26
  %60 = ptrtoint ptr %restoring_config135 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %restoring_config135, align 1, !range !247
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool136.not = icmp eq i8 %61, 0
  br i1 %tobool136.not, label %if.else, label %if.then137

if.then137:                                       ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %restoring_config135 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %restoring_config135, align 1
  br label %if.end139

if.else:                                          ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #11
  %config_pending = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 25
  %63 = ptrtoint ptr %config_pending to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %config_pending, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.else, %if.then137
  call void @mutex_unlock(ptr noundef %lock) #9
  %spec.select = select i1 %cmp.not, i32 0, i32 %err.1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #9
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pulse8_cec_adap_transmit(ptr nocapture noundef readonly %adap, i8 noundef zeroext %attempts, i32 noundef %signal_free_time, ptr noundef %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %tx_msg = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 15
  %2 = call ptr @memcpy(ptr %tx_msg, ptr %msg, i32 56)
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %len = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 8
  %msg1 = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.75, i32 noundef %7, ptr noundef %msg1) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tx_signal_free_time = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %tx_signal_free_time to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %signal_free_time, ptr %tx_signal_free_time, align 8
  %tx_work = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %tx_work) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pulse8_cec_adap_free(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %ping_eeprom_work = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 4
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ping_eeprom_work) #9
  %irq_work = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 5
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %irq_work) #9
  %tx_work = getelementptr inbounds %struct.pulse8, ptr %1, i32 0, i32 12
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %tx_work) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pulse8_send_and_wait(ptr noundef %pulse8, ptr noundef %cmd, i8 noundef zeroext %cmd_len, i8 noundef zeroext %response, i8 noundef zeroext %size) unnamed_addr #2 align 64 {
entry:
  %cmd_sc = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_sc) #9
  %call = tail call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %pulse8, ptr noundef %cmd, i8 noundef zeroext %cmd_len, i8 noundef zeroext %response, i8 noundef zeroext %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %call)
  %cmp.not = icmp eq i32 %call, -25
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds [2 x i8], ptr %cmd_sc, i32 0, i32 1
  %1 = ptrtoint ptr %cmd_sc to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 24, ptr %cmd_sc, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %0, align 1
  %call2 = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %pulse8, ptr noundef nonnull %cmd_sc, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = call fastcc i32 @pulse8_send_and_wait_once(ptr noundef %pulse8, ptr noundef %cmd, i8 noundef zeroext %cmd_len, i8 noundef zeroext %response, i8 noundef zeroext %size)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %err.0 = phi i32 [ %call2, %if.end.if.end5_crit_edge ], [ %call4, %if.then3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %err.0)
  %cmp6 = icmp eq i32 %err.0, -25
  %spec.select = select i1 %cmp6, i32 -5, i32 %err.0
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end5 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_sc) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pulse8_send_and_wait_once(ptr noundef %pulse8, ptr noundef %cmd, i8 noundef zeroext %cmd_len, i8 noundef zeroext %response, i8 noundef zeroext %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %pulse8 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pulse8, align 8
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cmd, align 1
  %conv.i = zext i8 %4 to i32
  %and.i = and i32 %conv.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %and.i)
  %cmp.i = icmp ult i32 %and.i, 44
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr [44 x ptr], ptr @pulse8_msgnames, i32 0, i32 %and.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  br label %pulse8_msgname.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @pulse8_msgname.unknown_msg, i32 noundef 5, ptr noundef nonnull @.str.13, i32 noundef %conv.i) #9
  br label %pulse8_msgname.exit

pulse8_msgname.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %6, %if.then.i ], [ @pulse8_msgname.unknown_msg, %if.end.i ]
  %conv = zext i8 %cmd_len to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.69, ptr noundef %retval.0.i, i32 noundef %conv, ptr noundef %cmd) #12
  br label %if.end

if.end:                                           ; preds = %pulse8_msgname.exit, %entry.if.end_crit_edge
  %cmd_done = getelementptr inbounds %struct.pulse8, ptr %pulse8, i32 0, i32 17
  %7 = ptrtoint ptr %cmd_done to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %cmd_done, align 4
  %wait.i = getelementptr inbounds %struct.pulse8, ptr %pulse8, i32 0, i32 17, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.74, ptr noundef nonnull @init_completion.__key) #9
  %serio = getelementptr inbounds %struct.pulse8, ptr %pulse8, i32 0, i32 1
  %8 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serio, align 4
  %write.i.i = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %serio_write.exit.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

serio_write.exit.i:                               ; preds = %if.end
  %call.i.i = tail call i32 %11(ptr noundef %9, i8 noundef zeroext -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %serio_write.exit.i.cleanup_crit_edge

serio_write.exit.i.cleanup_crit_edge:             ; preds = %serio_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader.i:                             ; preds = %serio_write.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cmd_len)
  %tobool2.not60.i = icmp eq i8 %cmd_len, 0
  br i1 %tobool2.not60.i, label %for.cond.preheader.i.if.then16.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.then16.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %cmd_len.addr.063.i = phi i8 [ %dec.i, %for.inc.i.for.body.i_crit_edge ], [ %cmd_len, %for.cond.preheader.i.for.body.i_crit_edge ]
  %command.addr.061.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %cmd, %for.cond.preheader.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %command.addr.061.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %command.addr.061.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %13)
  %cmp.i70 = icmp ugt i8 %13, -4
  %14 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write.i.i, align 8
  %tobool.not.i33.i = icmp eq ptr %15, null
  br i1 %cmp.i70, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %for.body.i
  br i1 %tobool.not.i33.i, label %if.then5.i.cleanup_crit_edge, label %serio_write.exit37.i

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

serio_write.exit37.i:                             ; preds = %if.then5.i
  %call.i34.i = tail call i32 %15(ptr noundef %9, i8 noundef zeroext -3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34.i)
  %tobool7.not.i = icmp eq i32 %call.i34.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %serio_write.exit37.i.cleanup_crit_edge

serio_write.exit37.i.cleanup_crit_edge:           ; preds = %serio_write.exit37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8.i:                                       ; preds = %serio_write.exit37.i
  %16 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i.i, align 8
  %tobool.not.i39.i = icmp eq ptr %17, null
  br i1 %tobool.not.i39.i, label %if.then8.i.cleanup_crit_edge, label %if.then.i41.i

if.then8.i.cleanup_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i41.i:                                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %command.addr.061.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %command.addr.061.i, align 1
  %sub.i = add i8 %19, -3
  %call.i40.i = tail call i32 %17(ptr noundef %9, i8 noundef zeroext %sub.i) #9
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  br i1 %tobool.not.i33.i, label %if.else.i.cleanup_crit_edge, label %if.then.i47.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i47.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i46.i = tail call i32 %15(ptr noundef %9, i8 noundef zeroext %13) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i47.i, %if.then.i41.i
  %err.1.i = phi i32 [ %call.i40.i, %if.then.i41.i ], [ %call.i46.i, %if.then.i47.i ]
  %incdec.ptr.i = getelementptr i8, ptr %command.addr.061.i, i32 1
  %dec.i = add i8 %cmd_len.addr.063.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool1.not.i = icmp eq i32 %err.1.i, 0
  %tobool1.not.not.i = xor i1 %tobool1.not.i, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i)
  %tobool2.not.i = icmp eq i8 %dec.i, 0
  %or.cond.i = select i1 %tobool1.not.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  br i1 %tobool1.not.i, label %for.end.i.if.then16.i_crit_edge, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.i.if.then16.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i

if.then16.i:                                      ; preds = %for.end.i.if.then16.i_crit_edge, %for.cond.preheader.i.if.then16.i_crit_edge
  %20 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write.i.i, align 8
  %tobool.not.i51.i = icmp eq ptr %21, null
  br i1 %tobool.not.i51.i, label %if.then16.i.cleanup_crit_edge, label %pulse8_send.exit

if.then16.i.cleanup_crit_edge:                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

pulse8_send.exit:                                 ; preds = %if.then16.i
  %call.i52.i = tail call i32 %21(ptr noundef %9, i8 noundef zeroext -2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52.i)
  %tobool.not = icmp eq i32 %call.i52.i, 0
  br i1 %tobool.not, label %if.end3, label %pulse8_send.exit.cleanup_crit_edge

pulse8_send.exit.cleanup_crit_edge:               ; preds = %pulse8_send.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %pulse8_send.exit
  %call5 = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_done, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %data = getelementptr inbounds %struct.pulse8, ptr %pulse8, i32 0, i32 18
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data, align 4
  %24 = and i8 %23, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %24)
  %cmp11 = icmp eq i8 %24, 9
  br i1 %cmp11, label %land.lhs.true, label %if.end8.land.lhs.true31_crit_edge

if.end8.land.lhs.true31_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true31

land.lhs.true:                                    ; preds = %if.end8
  %25 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cmd, align 1
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.104)
  switch i8 %26, label %land.lhs.true.cleanup_crit_edge [
    i8 24, label %land.lhs.true.land.lhs.true31_crit_edge
    i8 26, label %land.lhs.true.land.lhs.true31_crit_edge92
    i8 23, label %land.lhs.true.land.lhs.true31_crit_edge93
  ]

land.lhs.true.land.lhs.true31_crit_edge93:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true31

land.lhs.true.land.lhs.true31_crit_edge92:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true31

land.lhs.true.land.lhs.true31_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true31

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true31:                                  ; preds = %land.lhs.true.land.lhs.true31_crit_edge, %land.lhs.true.land.lhs.true31_crit_edge92, %land.lhs.true.land.lhs.true31_crit_edge93, %if.end8.land.lhs.true31_crit_edge
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %response)
  %cmp37.not = icmp eq i8 %24, %response
  br i1 %cmp37.not, label %lor.lhs.false, label %land.lhs.true31.do.end45_crit_edge

land.lhs.true31.do.end45_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end45

lor.lhs.false:                                    ; preds = %land.lhs.true31
  %len = getelementptr inbounds %struct.pulse8, ptr %pulse8, i32 0, i32 19
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  %conv39 = zext i8 %size to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv39)
  %cmp40.not = icmp ugt i32 %29, %conv39
  br i1 %cmp40.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.end45_crit_edge

lor.lhs.false.do.end45_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end45

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end45:                                         ; preds = %lor.lhs.false.do.end45_crit_edge, %land.lhs.true31.do.end45_crit_edge
  %30 = ptrtoint ptr %pulse8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pulse8, align 8
  %32 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %cmd, align 1
  %conv.i72 = zext i8 %33 to i32
  %and.i73 = and i32 %conv.i72, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %and.i73)
  %cmp.i74 = icmp ult i32 %and.i73, 44
  br i1 %cmp.i74, label %if.then.i76, label %if.end.i78

if.then.i76:                                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i75 = getelementptr [44 x ptr], ptr @pulse8_msgnames, i32 0, i32 %and.i73
  %34 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i75, align 4
  br label %pulse8_msgname.exit80

if.end.i78:                                       ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #11
  %call.i77 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @pulse8_msgname.unknown_msg, i32 noundef 5, ptr noundef nonnull @.str.13, i32 noundef %conv.i72) #9
  br label %pulse8_msgname.exit80

pulse8_msgname.exit80:                            ; preds = %if.end.i78, %if.then.i76
  %retval.0.i79 = phi ptr [ %35, %if.then.i76 ], [ @pulse8_msgname.unknown_msg, %if.end.i78 ]
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %data, align 4
  %conv.i81 = zext i8 %37 to i32
  %and.i82 = and i32 %conv.i81, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %and.i82)
  %cmp.i83 = icmp ult i32 %and.i82, 44
  br i1 %cmp.i83, label %if.then.i85, label %if.end.i87

if.then.i85:                                      ; preds = %pulse8_msgname.exit80
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i84 = getelementptr [44 x ptr], ptr @pulse8_msgnames, i32 0, i32 %and.i82
  %38 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i84, align 4
  br label %pulse8_msgname.exit89

if.end.i87:                                       ; preds = %pulse8_msgname.exit80
  call void @__sanitizer_cov_trace_pc() #11
  %call.i86 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @pulse8_msgname.unknown_msg, i32 noundef 5, ptr noundef nonnull @.str.13, i32 noundef %conv.i81) #9
  br label %pulse8_msgname.exit89

pulse8_msgname.exit89:                            ; preds = %if.end.i87, %if.then.i85
  %retval.0.i88 = phi ptr [ %39, %if.then.i85 ], [ @pulse8_msgname.unknown_msg, %if.end.i87 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.72, ptr noundef %retval.0.i79, ptr noundef %retval.0.i88) #12
  br label %cleanup

cleanup:                                          ; preds = %pulse8_msgname.exit89, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %pulse8_send.exit.cleanup_crit_edge, %if.then16.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.then8.i.cleanup_crit_edge, %serio_write.exit37.i.cleanup_crit_edge, %if.then5.i.cleanup_crit_edge, %serio_write.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %pulse8_msgname.exit89 ], [ %call.i52.i, %pulse8_send.exit.cleanup_crit_edge ], [ -110, %if.end3.cleanup_crit_edge ], [ -25, %land.lhs.true.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.then16.i.cleanup_crit_edge ], [ %err.1.i, %for.end.i.cleanup_crit_edge ], [ %call.i.i, %serio_write.exit.i.cleanup_crit_edge ], [ %call.i34.i, %serio_write.exit37.i.cleanup_crit_edge ], [ -1, %if.then8.i.cleanup_crit_edge ], [ -1, %if.else.i.cleanup_crit_edge ], [ -1, %if.then5.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_received_msg_ts(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_transmit_attempt_done_ts(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_s_log_addrs(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_phys_addr(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !17, !19, !20, !22, !24, !25, !26, !27, !29, !31, !33, !35, !37, !38, !39, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !148, !150, !151, !153, !154, !155, !156, !158, !159, !161, !162, !164, !166, !167, !168, !169, !171, !172, !173, !175, !176, !178, !179, !180, !181, !183, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !204, !206, !207, !208, !210, !211, !213, !214, !215, !216, !218, !219, !221, !222, !224, !225, !226, !228, !229, !231, !232, !234, !235, !237}
!llvm.module.flags = !{!238, !239, !240, !241, !242, !243, !244, !245}
!llvm.ident = !{!246}

!0 = !{ptr @__UNIQUE_ID_author232, !1, !"__UNIQUE_ID_author232", i1 false, i1 false}
!1 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 44, i32 1}
!2 = !{ptr @__UNIQUE_ID_description233, !3, !"__UNIQUE_ID_description233", i1 false, i1 false}
!3 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 45, i32 1}
!4 = !{ptr @__UNIQUE_ID_file234, !5, !"__UNIQUE_ID_file234", i1 false, i1 false}
!5 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 46, i32 1}
!6 = !{ptr @__UNIQUE_ID_license235, !5, !"__UNIQUE_ID_license235", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 50, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype236, !8, !"__UNIQUE_ID_debugtype236", i1 false, i1 false}
!10 = !{ptr @__param_persistent_config, !11, !"__param_persistent_config", i1 false, i1 false}
!11 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 51, i32 1}
!12 = !{ptr @__UNIQUE_ID_persistent_configtype237, !11, !"__UNIQUE_ID_persistent_configtype237", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_debug238, !14, !"__UNIQUE_ID_debug238", i1 false, i1 false}
!14 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 52, i32 1}
!15 = !{ptr @__UNIQUE_ID_persistent_config239, !16, !"__UNIQUE_ID_persistent_config239", i1 false, i1 false}
!16 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 53, i32 1}
!17 = !{ptr @__initcall__kmod_pulse8_cec__250_921_pulse8_drv_init6, !18, !"__initcall__kmod_pulse8_cec__250_921_pulse8_drv_init6", i1 false, i1 false}
!18 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 921, i32 1}
!19 = !{ptr @__exitcall_pulse8_drv_exit, !18, !"__exitcall_pulse8_drv_exit", i1 false, i1 false}
!20 = !{ptr @debug, !21, !"debug", i1 false, i1 false}
!21 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 48, i32 12}
!22 = !{ptr @persistent_config, !23, !"persistent_config", i1 false, i1 false}
!23 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 49, i32 12}
!24 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!25 = !{ptr @__param_str_persistent_config, !11, !"__param_str_persistent_config", i1 false, i1 false}
!26 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 914, i32 17}
!29 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 912, i32 11}
!31 = !{ptr @pulse8_drv, !32, !"pulse8_drv", i1 false, i1 false}
!32 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 910, i32 28}
!33 = !{ptr @pulse8_serio_ids, !34, !"pulse8_serio_ids", i1 false, i1 false}
!34 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 898, i32 37}
!35 = !{ptr @.str.3, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 382, i32 4}
!37 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @pulse8_interrupt._entry, !36, !"_entry", i1 false, i1 false}
!42 = !{ptr @pulse8_interrupt._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 408, i32 5}
!45 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @pulse8_interrupt._entry.8, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @pulse8_interrupt._entry_ptr.11, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 474, i32 3}
!50 = !{ptr @pulse8_interrupt.__UNIQUE_ID_ddebug240, !49, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!51 = !{ptr @pulse8_msgname.unknown_msg, !52, !"unknown_msg", i1 false, i1 false}
!52 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 154, i32 14}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 158, i32 45}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 106, i32 2}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 107, i32 2}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 108, i32 2}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 109, i32 2}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 110, i32 2}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 111, i32 2}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 112, i32 2}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 113, i32 2}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 114, i32 2}
!73 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 115, i32 2}
!75 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 116, i32 2}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 117, i32 2}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 118, i32 2}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 119, i32 2}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 120, i32 2}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 121, i32 2}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 122, i32 2}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 123, i32 2}
!91 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 124, i32 2}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 125, i32 2}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 126, i32 2}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 127, i32 2}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 128, i32 2}
!101 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 129, i32 2}
!103 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 130, i32 2}
!105 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 131, i32 2}
!107 = !{ptr @.str.40, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 132, i32 2}
!109 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 133, i32 2}
!111 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 134, i32 2}
!113 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 135, i32 2}
!115 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 136, i32 2}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 137, i32 2}
!119 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 138, i32 2}
!121 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 139, i32 2}
!123 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 140, i32 2}
!125 = !{ptr @.str.49, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 141, i32 2}
!127 = !{ptr @.str.50, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 142, i32 2}
!129 = !{ptr @.str.51, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 143, i32 2}
!131 = !{ptr @.str.52, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 144, i32 2}
!133 = !{ptr @.str.53, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 145, i32 2}
!135 = !{ptr @.str.54, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 146, i32 2}
!137 = !{ptr @.str.55, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 147, i32 2}
!139 = !{ptr @.str.56, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 148, i32 2}
!141 = !{ptr @.str.57, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 149, i32 2}
!143 = !{ptr @pulse8_msgnames, !144, !"pulse8_msgnames", i1 false, i1 false}
!144 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 105, i32 27}
!145 = !{ptr @pulse8_connect.__key, !146, !"__key", i1 false, i1 false}
!146 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 856, i32 2}
!147 = !{ptr @.str.58, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @pulse8_connect.__key.59, !149, !"__key", i1 false, i1 false}
!149 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 857, i32 2}
!150 = !{ptr @.str.60, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @pulse8_connect.__key.61, !152, !"__key", i1 false, i1 false}
!152 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 858, i32 2}
!153 = !{ptr @.str.62, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @pulse8_connect.__key.63, !152, !"__key", i1 false, i1 false}
!155 = !{ptr @.str.64, !152, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @pulse8_connect.__key.65, !157, !"__key", i1 false, i1 false}
!157 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 860, i32 2}
!158 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @pulse8_connect.__key.67, !160, !"__key", i1 false, i1 false}
!160 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 861, i32 2}
!161 = !{ptr @.str.68, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @pulse8_cec_adap_ops, !163, !"pulse8_cec_adap_ops", i1 false, i1 false}
!163 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 647, i32 34}
!164 = !{ptr @.str.69, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 239, i32 3}
!166 = !{ptr @.str.70, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @pulse8_send_and_wait_once._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @pulse8_send_and_wait_once._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.72, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 256, i32 3}
!171 = !{ptr @pulse8_send_and_wait_once._entry.71, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @pulse8_send_and_wait_once._entry_ptr.73, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @init_completion.__key, !174, !"__key", i1 false, i1 false}
!174 = !{!"../include/linux/completion.h", i32 87, i32 2}
!175 = !{ptr @.str.74, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.75, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 630, i32 3}
!178 = !{ptr @.str.76, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @pulse8_cec_adap_transmit._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @pulse8_cec_adap_transmit._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.77, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 341, i32 4}
!183 = !{ptr @.str.78, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @pulse8_irq_work_handler._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @pulse8_irq_work_handler._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.79, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 321, i32 3}
!188 = !{ptr @.str.80, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @pulse8_tx_work_handler._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @pulse8_tx_work_handler._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.81, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 819, i32 3}
!193 = !{ptr @.str.82, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @pulse8_ping_eeprom_work_handler.__UNIQUE_ID_ddebug249, !192, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!195 = !{ptr @.str.83, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 823, i32 4}
!197 = !{ptr @pulse8_ping_eeprom_work_handler._entry, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @pulse8_ping_eeprom_work_handler._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.84, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 678, i32 2}
!201 = !{ptr @.str.85, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @pulse8_setup._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @pulse8_setup._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.87, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 689, i32 2}
!206 = !{ptr @pulse8_setup._entry.86, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @pulse8_setup._entry_ptr.88, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.89, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 691, i32 2}
!210 = !{ptr @pulse8_setup.__UNIQUE_ID_ddebug241, !209, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!211 = !{ptr @.str.90, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 697, i32 2}
!213 = !{ptr @pulse8_setup.__UNIQUE_ID_ddebug242, !212, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!214 = !{ptr @.str.91, !212, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.92, !212, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.93, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 704, i32 4}
!218 = !{ptr @pulse8_setup.__UNIQUE_ID_ddebug243, !217, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!219 = !{ptr @.str.94, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 713, i32 2}
!221 = !{ptr @pulse8_setup.__UNIQUE_ID_ddebug244, !220, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!222 = !{ptr @.str.96, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 746, i32 3}
!224 = !{ptr @pulse8_setup._entry.95, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @pulse8_setup._entry_ptr.97, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.98, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 756, i32 2}
!228 = !{ptr @pulse8_setup.__UNIQUE_ID_ddebug245, !227, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!229 = !{ptr @.str.99, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 766, i32 2}
!231 = !{ptr @pulse8_setup.__UNIQUE_ID_ddebug246, !230, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!232 = !{ptr @.str.100, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 776, i32 3}
!234 = !{ptr @pulse8_setup.__UNIQUE_ID_ddebug247, !233, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!235 = !{ptr @.str.101, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/cec/usb/pulse8/pulse8-cec.c", i32 784, i32 2}
!237 = !{ptr @pulse8_setup.__UNIQUE_ID_ddebug248, !236, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!238 = !{i32 1, !"wchar_size", i32 2}
!239 = !{i32 1, !"min_enum_size", i32 4}
!240 = !{i32 8, !"branch-target-enforcement", i32 0}
!241 = !{i32 8, !"sign-return-address", i32 0}
!242 = !{i32 8, !"sign-return-address-all", i32 0}
!243 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!244 = !{i32 7, !"uwtable", i32 1}
!245 = !{i32 7, !"frame-pointer", i32 2}
!246 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!247 = !{i8 0, i8 2}
!248 = !{!"branch_weights", i32 2000, i32 1}
!249 = !{i64 2148338615, i64 2148338620, i64 2148338633, i64 2148338677, i64 2148338711, i64 2148338732}
!250 = !{!"auto-init"}
