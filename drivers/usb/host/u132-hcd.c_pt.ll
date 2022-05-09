; ModuleID = '/llk/IR_all_yes/drivers/usb/host/u132-hcd.c_pt.bc'
source_filename = "../drivers/usb/host/u132-hcd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.u132 = type { %struct.kref, %struct.mutex, %struct.mutex, ptr, ptr, [4 x %struct.u132_ring], i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], i32, i32, %struct.delayed_work, i32, [128 x %struct.u132_addr], [4 x %struct.u132_udev], [7 x %struct.u132_port], [100 x ptr] }
%struct.u132_ring = type { i8, i8, ptr, ptr, %struct.delayed_work }
%struct.u132_addr = type { i8 }
%struct.u132_udev = type { %struct.kref, ptr, i8, i8, i8, i8, [16 x i8], [16 x i8] }
%struct.u132_port = type { ptr, i32, i32, i32, i32 }
%struct.u132_endp = type { %struct.kref, i8, i8, i8, i8, ptr, %struct.list_head, ptr, i24, i32, ptr, %struct.u132_spin, i16, i16, i16, [8 x ptr], %struct.list_head, %struct.delayed_work }
%struct.u132_spin = type { %struct.spinlock }
%struct.u132_platform_data = type { i16, i16, i8, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.u132_urbq = type { %struct.list_head, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.69 }>
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { [4 x i8], [4 x i8] }

@__UNIQUE_ID_author232 = internal constant [58 x i8] c"u132_hcd.author=Tony Olech - Elan Digital Systems Limited\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [53 x i8] c"u132_hcd.description=U132 USB Host Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [40 x i8] c"u132_hcd.file=drivers/usb/host/u132-hcd\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [21 x i8] c"u132_hcd.license=GPL\00", section ".modinfo", align 1
@__param_str_testing = internal constant [17 x i8] c"u132_hcd.testing\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@testing = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_testing = internal constant %struct.kernel_param { ptr @__param_str_testing, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @testing } }, section "__param", align 4
@__UNIQUE_ID_testingtype236 = internal constant [30 x i8] c"u132_hcd.parmtype=testing:int\00", section ".modinfo", align 1
@__param_str_distrust_firmware = internal constant [27 x i8] c"u132_hcd.distrust_firmware\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@distrust_firmware = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_distrust_firmware = internal constant %struct.kernel_param { ptr @__param_str_distrust_firmware, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @distrust_firmware } }, section "__param", align 4
@__UNIQUE_ID_distrust_firmwaretype237 = internal constant [41 x i8] c"u132_hcd.parmtype=distrust_firmware:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_distrust_firmware238 = internal constant [83 x i8] c"u132_hcd.parm=distrust_firmware:true to distrust firmware power/overcurrentt setup\00", section ".modinfo", align 1
@__initcall__kmod_u132_hcd__239_3205_u132_hcd_init6 = internal global ptr @u132_hcd_init, section ".initcall6.init", align 4
@u132_module_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @u132_module_lock, i64 52), ptr getelementptr (i8, ptr @u132_module_lock, i64 52) }, ptr @u132_module_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@u132_exiting = internal global { i32, [28 x i8] } zeroinitializer, align 32
@u132_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @u132_probe, ptr @u132_remove, ptr null, ptr @u132_suspend, ptr @u132_resume, %struct.device_driver { ptr @hcd_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@u132_hcd_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 3212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016u132-hcd driver deregistered\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"u132_hcd_exit\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/host/u132-hcd.c\00", [36 x i8] zeroinitializer }, align 32
@u132_hcd_exit._entry_ptr = internal global ptr @u132_hcd_exit._entry, section ".printk_index", align 4
@u132_instances = internal global { i32, [28 x i8] } zeroinitializer, align 32
@u132_hcd_wait = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.248, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @u132_hcd_wait, i64 44), ptr getelementptr (i8, ptr @u132_hcd_wait, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@workqueue = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__exitcall_u132_hcd_exit = internal global ptr @u132_hcd_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file240 = internal constant [40 x i8] c"u132_hcd.file=drivers/usb/host/u132-hcd\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [21 x i8] c"u132_hcd.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias242 = internal constant [33 x i8] c"u132_hcd.alias=platform:u132_hcd\00", section ".modinfo", align 1
@u132_hcd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 3193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\016driver %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"u132_hcd_init\00", [18 x i8] zeroinitializer }, align 32
@u132_hcd_init._entry_ptr = internal global ptr @u132_hcd_init._entry, section ".printk_index", align 4
@hcd_name = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"u132_hcd\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"u132\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"u132_module_lock.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"u132_module_lock\00", [47 x i8] zeroinitializer }, align 32
@u132_hc_driver = internal constant { %struct.hc_driver, [40 x i8] } { %struct.hc_driver { ptr @hcd_name, ptr null, i32 1696, ptr null, i32 17, ptr @u132_hcd_reset, ptr @u132_hcd_start, ptr null, ptr null, ptr @u132_hcd_stop, ptr null, ptr @u132_get_frame, ptr @u132_urb_enqueue, ptr @u132_urb_dequeue, ptr null, ptr null, ptr @u132_endpoint_disable, ptr null, ptr @u132_hub_status_data, ptr @u132_hub_control, ptr @u132_bus_suspend, ptr @u132_bus_resume, ptr @u132_start_port_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@u132_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 3079, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013failed to create the usb hcd struct for U132\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"u132_probe\00", [21 x i8] zeroinitializer }, align 32
@u132_probe._entry_ptr = internal global ptr @u132_probe._entry, section ".printk_index", align 4
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ELAN U132 Host Controller\00", [38 x i8] zeroinitializer }, align 32
@u132_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.2, i32 3095, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"init error %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@u132_probe._entry_ptr.16 = internal global ptr @u132_probe._entry.12, section ".printk_index", align 4
@u132_hcd_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1829, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"device has been removed %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"u132_hcd_reset\00", [17 x i8] zeroinitializer }, align 32
@u132_hcd_reset._entry_ptr = internal global ptr @u132_hcd_reset._entry, section ".printk_index", align 4
@u132_hcd_reset._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 1832, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"device is being removed\0A\00", [39 x i8] zeroinitializer }, align 32
@u132_hcd_reset._entry_ptr.21 = internal global ptr @u132_hcd_reset._entry.19, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@read_roothub_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 425, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error %d accessing device control\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"read_roothub_info\00", [46 x i8] zeroinitializer }, align 32
@read_roothub_info._entry_ptr = internal global ptr @read_roothub_info._entry, section ".printk_index", align 4
@read_roothub_info._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 431, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"device revision is not valid %08X\0A\00", [61 x i8] zeroinitializer }, align 32
@read_roothub_info._entry_ptr.26 = internal global ptr @read_roothub_info._entry.24, section ".printk_index", align 4
@read_roothub_info._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 437, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@read_roothub_info._entry_ptr.28 = internal global ptr @read_roothub_info._entry.27, section ".printk_index", align 4
@read_roothub_info._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.23, ptr @.str.2, i32 444, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"error %d accessing device reg roothub.status\0A\00", [50 x i8] zeroinitializer }, align 32
@read_roothub_info._entry_ptr.31 = internal global ptr @read_roothub_info._entry.29, section ".printk_index", align 4
@read_roothub_info._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.23, ptr @.str.2, i32 450, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error %d accessing device reg roothub.a\0A\00", [55 x i8] zeroinitializer }, align 32
@read_roothub_info._entry_ptr.34 = internal global ptr @read_roothub_info._entry.32, section ".printk_index", align 4
@read_roothub_info._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.23, ptr @.str.2, i32 462, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"error %d accessing device roothub.portstatus[%d]\0A\00", [46 x i8] zeroinitializer }, align 32
@read_roothub_info._entry_ptr.37 = internal global ptr @read_roothub_info._entry.35, section ".printk_index", align 4
@u132_hcd_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.38, ptr @.str.2, i32 1788, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"u132_hcd_start\00", [17 x i8] zeroinitializer }, align 32
@u132_hcd_start._entry_ptr = internal global ptr @u132_hcd_start._entry, section ".printk_index", align 4
@u132_hcd_start._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.38, ptr @.str.2, i32 1791, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_hcd_start._entry_ptr.40 = internal global ptr @u132_hcd_start._entry.39, section ".printk_index", align 4
@u132_hcd_start._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.38, ptr @.str.2, i32 1807, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"WARNING: OPTi workarounds unavailable\0A\00", [57 x i8] zeroinitializer }, align 32
@u132_hcd_start._entry_ptr.43 = internal global ptr @u132_hcd_start._entry.41, section ".printk_index", align 4
@u132_hcd_start._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.38, ptr @.str.2, i32 1819, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"platform_device missing\0A\00", [39 x i8] zeroinitializer }, align 32
@u132_hcd_start._entry_ptr.46 = internal global ptr @u132_hcd_start._entry.44, section ".printk_index", align 4
@u132_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 1613, ptr @.str.49, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"resetting from state '%s', control = %08X\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"u132_run\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@u132_run._entry_ptr = internal global ptr @u132_run._entry, section ".printk_index", align 4
@u132_run._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.48, ptr @.str.2, i32 1666, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"USB HC reset timed out!\0A\00", [39 x i8] zeroinitializer }, align 32
@u132_run._entry_ptr.52 = internal global ptr @u132_run._entry.50, section ".printk_index", align 4
@u132_run._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.48, ptr @.str.2, i32 1706, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"init err(%08x %04x)\0A\00", [43 x i8] zeroinitializer }, align 32
@u132_run._entry_ptr.55 = internal global ptr @u132_run._entry.53, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"resume\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"operational\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"suspend\00", [24 x i8] zeroinitializer }, align 32
@u132_hcd_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 1771, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"u132 device %p(hcd=%p) has been removed %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"u132_hcd_stop\00", [18 x i8] zeroinitializer }, align 32
@u132_hcd_stop._entry_ptr = internal global ptr @u132_hcd_stop._entry, section ".printk_index", align 4
@u132_hcd_stop._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 1774, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"device hcd=%p is being removed\0A\00", [32 x i8] zeroinitializer }, align 32
@u132_hcd_stop._entry_ptr.65 = internal global ptr @u132_hcd_stop._entry.63, section ".printk_index", align 4
@u132_get_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.66, ptr @.str.2, i32 2546, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"u132_get_frame\00", [17 x i8] zeroinitializer }, align 32
@u132_get_frame._entry_ptr = internal global ptr @u132_get_frame._entry, section ".printk_index", align 4
@u132_get_frame._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.66, ptr @.str.2, i32 2549, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_get_frame._entry_ptr.68 = internal global ptr @u132_get_frame._entry.67, section ".printk_index", align 4
@u132_get_frame._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.66, ptr @.str.2, i32 2552, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TODO: u132_get_frame\0A\00", [42 x i8] zeroinitializer }, align 32
@u132_get_frame._entry_ptr.71 = internal global ptr @u132_get_frame._entry.69, section ".printk_index", align 4
@u132_urb_enqueue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 2237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013invalid context for function that might sleep\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"u132_urb_enqueue\00", [47 x i8] zeroinitializer }, align 32
@u132_urb_enqueue._entry_ptr = internal global ptr @u132_urb_enqueue._entry, section ".printk_index", align 4
@u132_urb_enqueue._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.73, ptr @.str.2, i32 2243, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_urb_enqueue._entry_ptr.75 = internal global ptr @u132_urb_enqueue._entry.74, section ".printk_index", align 4
@u132_urb_enqueue._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.73, ptr @.str.2, i32 2247, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"device is being removed urb=%p\0A\00", [32 x i8] zeroinitializer }, align 32
@u132_urb_enqueue._entry_ptr.78 = internal global ptr @u132_urb_enqueue._entry.76, section ".printk_index", align 4
@u132_urb_enqueue._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.73, ptr @.str.2, i32 2293, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"the hardware does not support PIPE_ISOCHRONOUS\0A\00", [48 x i8] zeroinitializer }, align 32
@u132_urb_enqueue._entry_ptr.81 = internal global ptr @u132_urb_enqueue._entry.79, section ".printk_index", align 4
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %02X\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@create_endpoint_and_queue_int.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&endp->queue_lock.slock\00", [40 x i8] zeroinitializer }, align 32
@create_endpoint_and_queue_int.__key.85 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.86 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&endp->scheduler)->work)\00", [51 x i8] zeroinitializer }, align 32
@create_endpoint_and_queue_int.__key.87 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&endp->scheduler)->timer\00", [37 x i8] zeroinitializer }, align 32
@u132_hcd_interrupt_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.89, ptr @.str.2, i32 626, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"u132_hcd_interrupt_recv\00", [40 x i8] zeroinitializer }, align 32
@u132_hcd_interrupt_recv._entry_ptr = internal global ptr @u132_hcd_interrupt_recv._entry, section ".printk_index", align 4
@u132_hcd_interrupt_recv._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.89, ptr @.str.2, i32 637, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_hcd_interrupt_recv._entry_ptr.91 = internal global ptr @u132_hcd_interrupt_recv._entry.90, section ".printk_index", align 4
@u132_hcd_interrupt_recv._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.89, ptr @.str.2, i32 699, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"urb=%p giving back INTERRUPT %s\0A\00", [63 x i8] zeroinitializer }, align 32
@u132_hcd_interrupt_recv._entry_ptr.94 = internal global ptr @u132_hcd_interrupt_recv._entry.92, section ".printk_index", align 4
@cc_to_text = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.114], [32 x i8] zeroinitializer }, align 32
@cc_to_error = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 -84, i32 -71, i32 -84, i32 -32, i32 -62, i32 -71, i32 -71, i32 -75, i32 -121, i32 -5, i32 -5, i32 -70, i32 -63, i32 -114, i32 -114], [32 x i8] zeroinitializer }, align 32
@u132_hcd_interrupt_recv._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.89, ptr @.str.2, i32 708, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CALLBACK called urb=%p unlinked=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@u132_hcd_interrupt_recv._entry_ptr.97 = internal global ptr @u132_hcd_interrupt_recv._entry.95, section ".printk_index", align 4
@u132_hcd_delete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 258, ptr @.str.100, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"FREEING the hcd=%p and thus the u132=%p going=%d pdev=%p\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"u132_hcd_delete\00", [16 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@u132_hcd_delete._entry_ptr = internal global ptr @u132_hcd_delete._entry, section ".printk_index", align 4
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"No Error \00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CRC Error \00", [21 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Bit Stuff \00", [21 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Data Togg \00", [21 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Stall \00", [25 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DevNotResp \00", [20 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PIDCheck \00", [22 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UnExpPID \00", [22 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DataOver \00", [22 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DataUnder \00", [21 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(for hw) \00", [22 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BufferOver \00", [20 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BuffUnder \00", [21 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"(for HCD) \00", [21 x i8] zeroinitializer }, align 32
@u132_hcd_initial_setup_sent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.115, ptr @.str.2, i32 1256, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"u132_hcd_initial_setup_sent\00", [36 x i8] zeroinitializer }, align 32
@u132_hcd_initial_setup_sent._entry_ptr = internal global ptr @u132_hcd_initial_setup_sent._entry, section ".printk_index", align 4
@u132_hcd_initial_setup_sent._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.115, ptr @.str.2, i32 1267, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_hcd_initial_setup_sent._entry_ptr.117 = internal global ptr @u132_hcd_initial_setup_sent._entry.116, section ".printk_index", align 4
@u132_hcd_initial_setup_sent._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.115, ptr @.str.2, i32 1283, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_hcd_initial_setup_sent._entry_ptr.119 = internal global ptr @u132_hcd_initial_setup_sent._entry.118, section ".printk_index", align 4
@u132_hcd_initial_input_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.120, ptr @.str.2, i32 1204, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"u132_hcd_initial_input_recv\00", [36 x i8] zeroinitializer }, align 32
@u132_hcd_initial_input_recv._entry_ptr = internal global ptr @u132_hcd_initial_input_recv._entry, section ".printk_index", align 4
@u132_hcd_initial_input_recv._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.120, ptr @.str.2, i32 1215, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_hcd_initial_input_recv._entry_ptr.122 = internal global ptr @u132_hcd_initial_input_recv._entry.121, section ".printk_index", align 4
@u132_hcd_initial_input_recv._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.120, ptr @.str.2, i32 1239, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_hcd_initial_input_recv._entry_ptr.124 = internal global ptr @u132_hcd_initial_input_recv._entry.123, section ".printk_index", align 4
@u132_hcd_initial_empty_sent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.125, ptr @.str.2, i32 1166, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"u132_hcd_initial_empty_sent\00", [36 x i8] zeroinitializer }, align 32
@u132_hcd_initial_empty_sent._entry_ptr = internal global ptr @u132_hcd_initial_empty_sent._entry, section ".printk_index", align 4
@u132_hcd_initial_empty_sent._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.125, ptr @.str.2, i32 1177, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_hcd_initial_empty_sent._entry_ptr.127 = internal global ptr @u132_hcd_initial_empty_sent._entry.126, section ".printk_index", align 4
@u132_hcd_initial_empty_sent._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.125, ptr @.str.2, i32 1187, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_hcd_initial_empty_sent._entry_ptr.129 = internal global ptr @u132_hcd_initial_empty_sent._entry.128, section ".printk_index", align 4
@u132_hcd_enumeration_address_sent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.130, ptr @.str.2, i32 1123, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"u132_hcd_enumeration_address_sent\00", [62 x i8] zeroinitializer }, align 32
@u132_hcd_enumeration_address_sent._entry_ptr = internal global ptr @u132_hcd_enumeration_address_sent._entry, section ".printk_index", align 4
@u132_hcd_enumeration_address_sent._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.130, ptr @.str.2, i32 1134, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_hcd_enumeration_address_sent._entry_ptr.132 = internal global ptr @u132_hcd_enumeration_address_sent._entry.131, section ".printk_index", align 4
@u132_hcd_enumeration_address_sent._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.130, ptr @.str.2, i32 1150, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_hcd_enumeration_address_sent._entry_ptr.134 = internal global ptr @u132_hcd_enumeration_address_sent._entry.133, section ".printk_index", align 4
@u132_hcd_enumeration_empty_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.135, ptr @.str.2, i32 1084, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"u132_hcd_enumeration_empty_recv\00", [32 x i8] zeroinitializer }, align 32
@u132_hcd_enumeration_empty_recv._entry_ptr = internal global ptr @u132_hcd_enumeration_empty_recv._entry, section ".printk_index", align 4
@u132_hcd_enumeration_empty_recv._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.135, ptr @.str.2, i32 1095, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_hcd_enumeration_empty_recv._entry_ptr.137 = internal global ptr @u132_hcd_enumeration_empty_recv._entry.136, section ".printk_index", align 4
@u132_hcd_enumeration_empty_recv._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.135, ptr @.str.2, i32 1107, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_hcd_enumeration_empty_recv._entry_ptr.139 = internal global ptr @u132_hcd_enumeration_empty_recv._entry.138, section ".printk_index", align 4
@u132_hcd_configure_setup_sent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.140, ptr @.str.2, i32 1025, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"u132_hcd_configure_setup_sent\00", [34 x i8] zeroinitializer }, align 32
@u132_hcd_configure_setup_sent._entry_ptr = internal global ptr @u132_hcd_configure_setup_sent._entry, section ".printk_index", align 4
@u132_hcd_configure_setup_sent._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.140, ptr @.str.2, i32 1036, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_hcd_configure_setup_sent._entry_ptr.142 = internal global ptr @u132_hcd_configure_setup_sent._entry.141, section ".printk_index", align 4
@u132_hcd_configure_setup_sent._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.140, ptr @.str.2, i32 1066, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_hcd_configure_setup_sent._entry_ptr.144 = internal global ptr @u132_hcd_configure_setup_sent._entry.143, section ".printk_index", align 4
@u132_hcd_configure_input_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.145, ptr @.str.2, i32 916, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"u132_hcd_configure_input_recv\00", [34 x i8] zeroinitializer }, align 32
@u132_hcd_configure_input_recv._entry_ptr = internal global ptr @u132_hcd_configure_input_recv._entry, section ".printk_index", align 4
@u132_hcd_configure_input_recv._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.145, ptr @.str.2, i32 927, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_hcd_configure_input_recv._entry_ptr.147 = internal global ptr @u132_hcd_configure_input_recv._entry.146, section ".printk_index", align 4
@u132_hcd_configure_input_recv._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.145, ptr @.str.2, i32 956, ptr @.str.100, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"giving back SETUP INPUT STALL urb %p\0A\00", [58 x i8] zeroinitializer }, align 32
@u132_hcd_configure_input_recv._entry_ptr.150 = internal global ptr @u132_hcd_configure_input_recv._entry.148, section ".printk_index", align 4
@u132_hcd_configure_input_recv._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.145, ptr @.str.2, i32 964, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"giving back SETUP INPUT %s urb %p\0A\00", [61 x i8] zeroinitializer }, align 32
@u132_hcd_configure_input_recv._entry_ptr.153 = internal global ptr @u132_hcd_configure_input_recv._entry.151, section ".printk_index", align 4
@u132_hcd_configure_input_recv._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.145, ptr @.str.2, i32 971, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_hcd_configure_input_recv._entry_ptr.155 = internal global ptr @u132_hcd_configure_input_recv._entry.154, section ".printk_index", align 4
@u132_hcd_configure_empty_sent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.156, ptr @.str.2, i32 878, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"u132_hcd_configure_empty_sent\00", [34 x i8] zeroinitializer }, align 32
@u132_hcd_configure_empty_sent._entry_ptr = internal global ptr @u132_hcd_configure_empty_sent._entry, section ".printk_index", align 4
@u132_hcd_configure_empty_sent._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.156, ptr @.str.2, i32 889, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_hcd_configure_empty_sent._entry_ptr.158 = internal global ptr @u132_hcd_configure_empty_sent._entry.157, section ".printk_index", align 4
@u132_hcd_configure_empty_sent._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.156, ptr @.str.2, i32 899, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_hcd_configure_empty_sent._entry_ptr.160 = internal global ptr @u132_hcd_configure_empty_sent._entry.159, section ".printk_index", align 4
@u132_hcd_configure_empty_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.161, ptr @.str.2, i32 987, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"u132_hcd_configure_empty_recv\00", [34 x i8] zeroinitializer }, align 32
@u132_hcd_configure_empty_recv._entry_ptr = internal global ptr @u132_hcd_configure_empty_recv._entry, section ".printk_index", align 4
@u132_hcd_configure_empty_recv._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.161, ptr @.str.2, i32 998, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_hcd_configure_empty_recv._entry_ptr.163 = internal global ptr @u132_hcd_configure_empty_recv._entry.162, section ".printk_index", align 4
@u132_hcd_configure_empty_recv._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.161, ptr @.str.2, i32 1008, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_hcd_configure_empty_recv._entry_ptr.165 = internal global ptr @u132_hcd_configure_empty_recv._entry.164, section ".printk_index", align 4
@u132_hcd_bulk_input_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.166, ptr @.str.2, i32 777, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"u132_hcd_bulk_input_recv\00", [39 x i8] zeroinitializer }, align 32
@u132_hcd_bulk_input_recv._entry_ptr = internal global ptr @u132_hcd_bulk_input_recv._entry, section ".printk_index", align 4
@u132_hcd_bulk_input_recv._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.166, ptr @.str.2, i32 788, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_hcd_bulk_input_recv._entry_ptr.168 = internal global ptr @u132_hcd_bulk_input_recv._entry.167, section ".printk_index", align 4
@u132_hcd_bulk_input_recv._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.166, ptr @.str.2, i32 838, ptr @.str.100, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"urb=%p(SHORT NOT OK) giving back BULK IN %s\0A\00", [51 x i8] zeroinitializer }, align 32
@u132_hcd_bulk_input_recv._entry_ptr.171 = internal global ptr @u132_hcd_bulk_input_recv._entry.169, section ".printk_index", align 4
@u132_hcd_bulk_input_recv._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.166, ptr @.str.2, i32 854, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"urb=%p giving back BULK IN code=%d %s\0A\00", [57 x i8] zeroinitializer }, align 32
@u132_hcd_bulk_input_recv._entry_ptr.174 = internal global ptr @u132_hcd_bulk_input_recv._entry.172, section ".printk_index", align 4
@u132_hcd_bulk_input_recv._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.166, ptr @.str.2, i32 862, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_hcd_bulk_input_recv._entry_ptr.176 = internal global ptr @u132_hcd_bulk_input_recv._entry.175, section ".printk_index", align 4
@u132_hcd_bulk_output_sent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.177, ptr @.str.2, i32 725, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"u132_hcd_bulk_output_sent\00", [38 x i8] zeroinitializer }, align 32
@u132_hcd_bulk_output_sent._entry_ptr = internal global ptr @u132_hcd_bulk_output_sent._entry, section ".printk_index", align 4
@u132_hcd_bulk_output_sent._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.177, ptr @.str.2, i32 736, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_hcd_bulk_output_sent._entry_ptr.179 = internal global ptr @u132_hcd_bulk_output_sent._entry.178, section ".printk_index", align 4
@u132_hcd_bulk_output_sent._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.177, ptr @.str.2, i32 759, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_hcd_bulk_output_sent._entry_ptr.181 = internal global ptr @u132_hcd_bulk_output_sent._entry.180, section ".printk_index", align 4
@create_endpoint_and_queue_bulk.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@create_endpoint_and_queue_bulk.__key.182 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@create_endpoint_and_queue_bulk.__key.183 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@queue_control_on_old_endpoint._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.185, ptr @.str.2, i32 2185, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"run out of device space\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"queue_control_on_old_endpoint\00", [34 x i8] zeroinitializer }, align 32
@queue_control_on_old_endpoint._entry_ptr = internal global ptr @queue_control_on_old_endpoint._entry, section ".printk_index", align 4
@create_endpoint_and_queue_control.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@create_endpoint_and_queue_control.__key.186 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@create_endpoint_and_queue_control.__key.187 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@u132_urb_dequeue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.188, ptr @.str.2, i32 2507, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"u132_urb_dequeue\00", [47 x i8] zeroinitializer }, align 32
@u132_urb_dequeue._entry_ptr = internal global ptr @u132_urb_dequeue._entry, section ".printk_index", align 4
@u132_endp_urb_dequeue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.190, ptr @.str.2, i32 2423, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"urb=%p not found in endp[%d]=%p ring[%d] %c%c usb_endp=%d usb_addr=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"u132_endp_urb_dequeue\00", [42 x i8] zeroinitializer }, align 32
@u132_endp_urb_dequeue._entry_ptr = internal global ptr @u132_endp_urb_dequeue._entry, section ".printk_index", align 4
@u132_endp_urb_dequeue._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.190, ptr @.str.2, i32 2487, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"urb=%p not found in endp[%d]=%p ring[%d] %c%c usb_endp=%d usb_addr=%d size=%d next=%04X last=%04X\0A\00", [61 x i8] zeroinitializer }, align 32
@u132_endp_urb_dequeue._entry_ptr.193 = internal global ptr @u132_endp_urb_dequeue._entry.191, section ".printk_index", align 4
@dequeue_from_overflow_chain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.194, ptr @.str.2, i32 2402, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dequeue_from_overflow_chain\00", [36 x i8] zeroinitializer }, align 32
@dequeue_from_overflow_chain._entry_ptr = internal global ptr @dequeue_from_overflow_chain._entry, section ".printk_index", align 4
@u132_endpoint_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.196, ptr @.str.2, i32 2533, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"u132 device %p(hcd=%p hep=%p) has been removed %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"u132_endpoint_disable\00", [42 x i8] zeroinitializer }, align 32
@u132_endpoint_disable._entry_ptr = internal global ptr @u132_endpoint_disable._entry, section ".printk_index", align 4
@u132_hub_status_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.198, ptr @.str.2, i32 2758, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"device hcd=%p has been removed %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"u132_hub_status_data\00", [43 x i8] zeroinitializer }, align 32
@u132_hub_status_data._entry_ptr = internal global ptr @u132_hub_status_data._entry, section ".printk_index", align 4
@u132_hub_status_data._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.198, ptr @.str.2, i32 2762, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_hub_status_data._entry_ptr.200 = internal global ptr @u132_hub_status_data._entry.199, section ".printk_index", align 4
@u132_hub_status_data._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.198, ptr @.str.2, i32 2770, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bogus NDP, rereads as NDP=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@u132_hub_status_data._entry_ptr.203 = internal global ptr @u132_hub_status_data._entry.201, section ".printk_index", align 4
@u132_hub_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.204, ptr @.str.2, i32 2810, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"u132_hub_control\00", [47 x i8] zeroinitializer }, align 32
@u132_hub_control._entry_ptr = internal global ptr @u132_hub_control._entry, section ".printk_index", align 4
@u132_hub_control._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.204, ptr @.str.2, i32 2813, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_hub_control._entry_ptr.206 = internal global ptr @u132_hub_control._entry.205, section ".printk_index", align 4
@u132_roothub_clearportfeature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.208, ptr @.str.2, i32 2725, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TODO resume_root_hub\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"u132_roothub_clearportfeature\00", [34 x i8] zeroinitializer }, align 32
@u132_roothub_clearportfeature._entry_ptr = internal global ptr @u132_roothub_clearportfeature._entry, section ".printk_index", align 4
@u132_roothub_portstatus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.210, ptr @.str.2, i32 2618, ptr @.str.49, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Port %d Status Change = %08X\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"u132_roothub_portstatus\00", [40 x i8] zeroinitializer }, align 32
@u132_roothub_portstatus._entry_ptr = internal global ptr @u132_roothub_portstatus._entry, section ".printk_index", align 4
@u132_bus_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.211, ptr @.str.2, i32 2908, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"u132_bus_suspend\00", [47 x i8] zeroinitializer }, align 32
@u132_bus_suspend._entry_ptr = internal global ptr @u132_bus_suspend._entry, section ".printk_index", align 4
@u132_bus_suspend._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.211, ptr @.str.2, i32 2911, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_bus_suspend._entry_ptr.213 = internal global ptr @u132_bus_suspend._entry.212, section ".printk_index", align 4
@u132_bus_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.214, ptr @.str.2, i32 2922, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"u132_bus_resume\00", [16 x i8] zeroinitializer }, align 32
@u132_bus_resume._entry_ptr = internal global ptr @u132_bus_resume._entry, section ".printk_index", align 4
@u132_bus_resume._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.214, ptr @.str.2, i32 2925, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_bus_resume._entry_ptr.216 = internal global ptr @u132_bus_resume._entry.215, section ".printk_index", align 4
@u132_start_port_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.217, ptr @.str.2, i32 2892, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"u132_start_port_reset\00", [42 x i8] zeroinitializer }, align 32
@u132_start_port_reset._entry_ptr = internal global ptr @u132_start_port_reset._entry, section ".printk_index", align 4
@u132_start_port_reset._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.217, ptr @.str.2, i32 2895, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_start_port_reset._entry_ptr.219 = internal global ptr @u132_start_port_reset._entry.218, section ".printk_index", align 4
@u132_initialise.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.220 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&u132->sw_lock\00", [17 x i8] zeroinitializer }, align 32
@u132_initialise.__key.221 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.222 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&u132->scheduler_lock\00", [42 x i8] zeroinitializer }, align 32
@u132_initialise.__key.223 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.224 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&ring->scheduler)->work)\00", [51 x i8] zeroinitializer }, align 32
@u132_initialise.__key.225 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.226 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&ring->scheduler)->timer\00", [37 x i8] zeroinitializer }, align 32
@u132_initialise.__key.227 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.228 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&u132->monitor)->work)\00", [53 x i8] zeroinitializer }, align 32
@u132_initialise.__key.229 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.230 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&u132->monitor)->timer\00", [39 x i8] zeroinitializer }, align 32
@u132_hcd_monitor_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.231, ptr @.str.2, i32 476, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"u132_hcd_monitor_work\00", [42 x i8] zeroinitializer }, align 32
@u132_hcd_monitor_work._entry_ptr = internal global ptr @u132_hcd_monitor_work._entry, section ".printk_index", align 4
@u132_hcd_monitor_work._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.231, ptr @.str.2, i32 480, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_hcd_monitor_work._entry_ptr.233 = internal global ptr @u132_hcd_monitor_work._entry.232, section ".printk_index", align 4
@u132_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.235, ptr @.str.2, i32 2967, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"already being removed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"u132_remove\00", [20 x i8] zeroinitializer }, align 32
@u132_remove._entry_ptr = internal global ptr @u132_remove._entry, section ".printk_index", align 4
@u132_remove._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.235, ptr @.str.2, i32 2973, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"removing device u132.%d\0A\00", [39 x i8] zeroinitializer }, align 32
@u132_remove._entry_ptr.238 = internal global ptr @u132_remove._entry.236, section ".printk_index", align 4
@u132_remove._entry.239 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.235, ptr @.str.2, i32 2988, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016removing device u132.%d\0A\00", [37 x i8] zeroinitializer }, align 32
@u132_remove._entry_ptr.241 = internal global ptr @u132_remove._entry.239, section ".printk_index", align 4
@u132_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.242, ptr @.str.2, i32 3118, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"u132_suspend\00", [19 x i8] zeroinitializer }, align 32
@u132_suspend._entry_ptr = internal global ptr @u132_suspend._entry, section ".printk_index", align 4
@u132_suspend._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.242, ptr @.str.2, i32 3121, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_suspend._entry_ptr.244 = internal global ptr @u132_suspend._entry.243, section ".printk_index", align 4
@u132_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.245, ptr @.str.2, i32 3148, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"u132_resume\00", [20 x i8] zeroinitializer }, align 32
@u132_resume._entry_ptr = internal global ptr @u132_resume._entry, section ".printk_index", align 4
@u132_resume._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.245, ptr @.str.2, i32 3151, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@u132_resume._entry_ptr.247 = internal global ptr @u132_resume._entry.246, section ".printk_index", align 4
@.str.248 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"u132_hcd_wait.lock\00", [45 x i8] zeroinitializer }, align 32
@switch.table.u132_hcd_start = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.249 = internal global [5 x i64] [i64 3, i64 8, i64 64, i64 128, i64 192]
@__sancov_gen_cov_switch_values.250 = internal global [9 x i64] [i64 7, i64 16, i64 8193, i64 8195, i64 8961, i64 8963, i64 40960, i64 40966, i64 41728]
@__sancov_gen_cov_switch_values.251 = internal global [10 x i64] [i64 8, i64 16, i64 1, i64 2, i64 8, i64 16, i64 17, i64 18, i64 19, i64 20]
@__sancov_gen_cov_switch_values.252 = internal global [5 x i64] [i64 3, i64 16, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.253 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.254 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 9]
@__sancov_gen_cov_switch_values.255 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 9]
@__sancov_gen_cov_switch_values.256 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 9]
@___asan_gen_.257 = private unnamed_addr constant [8 x i8] c"testing\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 70, i32 1 }
@___asan_gen_.260 = private unnamed_addr constant [18 x i8] c"distrust_firmware\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 72, i32 13 }
@___asan_gen_.263 = private unnamed_addr constant [17 x i8] c"u132_module_lock\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [13 x i8] c"u132_exiting\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 82, i32 12 }
@___asan_gen_.269 = private unnamed_addr constant [21 x i8] c"u132_platform_driver\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 3177, i32 31 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 3212, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant [15 x i8] c"u132_instances\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 83, i32 12 }
@___asan_gen_.287 = private unnamed_addr constant [14 x i8] c"u132_hcd_wait\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [10 x i8] c"workqueue\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 87, i32 33 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 3193, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant [9 x i8] c"hcd_name\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 244, i32 19 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 3194, i32 14 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 81, i32 8 }
@___asan_gen_.317 = private unnamed_addr constant [15 x i8] c"u132_hc_driver\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2935, i32 31 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 3078, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 3091, i32 23 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 3094, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1828, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1832, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 424, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 430, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 436, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 443, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 449, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 460, i32 5 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1787, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1791, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1806, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1819, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1611, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1665, i32 5 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1705, i32 4 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1542, i32 10 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1544, i32 10 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1546, i32 10 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1548, i32 10 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1770, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1773, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2545, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2549, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2552, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2237, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2242, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2246, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2292, i32 4 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2343, i32 25 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1861, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1872, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 625, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 636, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 697, i32 5 }
@___asan_gen_.542 = private unnamed_addr constant [11 x i8] c"cc_to_text\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 93, i32 20 }
@___asan_gen_.545 = private unnamed_addr constant [12 x i8] c"cc_to_error\00", align 1
@___asan_gen_.546 = private unnamed_addr constant [27 x i8] c"../drivers/usb/host/ohci.h\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 165, i32 33 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 707, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 257, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 94, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 95, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 96, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 97, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 98, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 99, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 100, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 101, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 102, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 103, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 104, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 106, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 107, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 108, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1255, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1266, i32 3 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1282, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1203, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1214, i32 3 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1238, i32 3 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1165, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1176, i32 3 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1186, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1122, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1133, i32 3 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1149, i32 3 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1083, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1094, i32 3 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1106, i32 3 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1024, i32 3 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1035, i32 3 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1065, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 915, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 926, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 955, i32 4 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 962, i32 4 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 970, i32 3 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 877, i32 3 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 888, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 898, i32 3 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 986, i32 3 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 997, i32 3 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1007, i32 3 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 776, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 787, i32 3 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 836, i32 4 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 852, i32 4 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 861, i32 3 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 724, i32 3 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 735, i32 3 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 758, i32 3 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1960, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1971, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2184, i32 5 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2056, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2067, i32 2 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2506, i32 3 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2419, i32 3 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2480, i32 4 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2397, i32 2 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2531, i32 3 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2757, i32 3 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2761, i32 3 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2768, i32 5 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2809, i32 3 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2813, i32 3 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2724, i32 5 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2617, i32 4 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2907, i32 3 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2911, i32 3 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2921, i32 3 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2925, i32 3 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2891, i32 3 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2895, i32 3 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 3009, i32 2 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 3010, i32 2 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 3017, i32 3 }
@___asan_gen_.929 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 3021, i32 2 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 475, i32 3 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 480, i32 3 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2966, i32 4 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2972, i32 4 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2987, i32 4 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 3117, i32 3 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 3121, i32 3 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 3147, i32 3 }
@___asan_gen_.980 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 3151, i32 3 }
@___asan_gen_.983 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.984 = private constant [31 x i8] c"../drivers/usb/host/u132-hcd.c\00", align 1
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 76, i32 8 }
@___asan_gen_.986 = private unnamed_addr constant [28 x i8] c"switch.table.u132_hcd_start\00", align 1
@llvm.compiler.used = appending global [357 x ptr] [ptr @__UNIQUE_ID_alias242, ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_distrust_firmware238, ptr @__UNIQUE_ID_distrust_firmwaretype237, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license235, ptr @__UNIQUE_ID_license241, ptr @__UNIQUE_ID_testingtype236, ptr @__exitcall_u132_hcd_exit, ptr @__initcall__kmod_u132_hcd__239_3205_u132_hcd_init6, ptr @__param_distrust_firmware, ptr @__param_testing, ptr @dequeue_from_overflow_chain._entry, ptr @dequeue_from_overflow_chain._entry_ptr, ptr @queue_control_on_old_endpoint._entry, ptr @queue_control_on_old_endpoint._entry_ptr, ptr @read_roothub_info._entry, ptr @read_roothub_info._entry.24, ptr @read_roothub_info._entry.27, ptr @read_roothub_info._entry.29, ptr @read_roothub_info._entry.32, ptr @read_roothub_info._entry.35, ptr @read_roothub_info._entry_ptr, ptr @read_roothub_info._entry_ptr.26, ptr @read_roothub_info._entry_ptr.28, ptr @read_roothub_info._entry_ptr.31, ptr @read_roothub_info._entry_ptr.34, ptr @read_roothub_info._entry_ptr.37, ptr @u132_bus_resume._entry, ptr @u132_bus_resume._entry.215, ptr @u132_bus_resume._entry_ptr, ptr @u132_bus_resume._entry_ptr.216, ptr @u132_bus_suspend._entry, ptr @u132_bus_suspend._entry.212, ptr @u132_bus_suspend._entry_ptr, ptr @u132_bus_suspend._entry_ptr.213, ptr @u132_endp_urb_dequeue._entry, ptr @u132_endp_urb_dequeue._entry.191, ptr @u132_endp_urb_dequeue._entry_ptr, ptr @u132_endp_urb_dequeue._entry_ptr.193, ptr @u132_endpoint_disable._entry, ptr @u132_endpoint_disable._entry_ptr, ptr @u132_get_frame._entry, ptr @u132_get_frame._entry.67, ptr @u132_get_frame._entry.69, ptr @u132_get_frame._entry_ptr, ptr @u132_get_frame._entry_ptr.68, ptr @u132_get_frame._entry_ptr.71, ptr @u132_hcd_bulk_input_recv._entry, ptr @u132_hcd_bulk_input_recv._entry.167, ptr @u132_hcd_bulk_input_recv._entry.169, ptr @u132_hcd_bulk_input_recv._entry.172, ptr @u132_hcd_bulk_input_recv._entry.175, ptr @u132_hcd_bulk_input_recv._entry_ptr, ptr @u132_hcd_bulk_input_recv._entry_ptr.168, ptr @u132_hcd_bulk_input_recv._entry_ptr.171, ptr @u132_hcd_bulk_input_recv._entry_ptr.174, ptr @u132_hcd_bulk_input_recv._entry_ptr.176, ptr @u132_hcd_bulk_output_sent._entry, ptr @u132_hcd_bulk_output_sent._entry.178, ptr @u132_hcd_bulk_output_sent._entry.180, ptr @u132_hcd_bulk_output_sent._entry_ptr, ptr @u132_hcd_bulk_output_sent._entry_ptr.179, ptr @u132_hcd_bulk_output_sent._entry_ptr.181, ptr @u132_hcd_configure_empty_recv._entry, ptr @u132_hcd_configure_empty_recv._entry.162, ptr @u132_hcd_configure_empty_recv._entry.164, ptr @u132_hcd_configure_empty_recv._entry_ptr, ptr @u132_hcd_configure_empty_recv._entry_ptr.163, ptr @u132_hcd_configure_empty_recv._entry_ptr.165, ptr @u132_hcd_configure_empty_sent._entry, ptr @u132_hcd_configure_empty_sent._entry.157, ptr @u132_hcd_configure_empty_sent._entry.159, ptr @u132_hcd_configure_empty_sent._entry_ptr, ptr @u132_hcd_configure_empty_sent._entry_ptr.158, ptr @u132_hcd_configure_empty_sent._entry_ptr.160, ptr @u132_hcd_configure_input_recv._entry, ptr @u132_hcd_configure_input_recv._entry.146, ptr @u132_hcd_configure_input_recv._entry.148, ptr @u132_hcd_configure_input_recv._entry.151, ptr @u132_hcd_configure_input_recv._entry.154, ptr @u132_hcd_configure_input_recv._entry_ptr, ptr @u132_hcd_configure_input_recv._entry_ptr.147, ptr @u132_hcd_configure_input_recv._entry_ptr.150, ptr @u132_hcd_configure_input_recv._entry_ptr.153, ptr @u132_hcd_configure_input_recv._entry_ptr.155, ptr @u132_hcd_configure_setup_sent._entry, ptr @u132_hcd_configure_setup_sent._entry.141, ptr @u132_hcd_configure_setup_sent._entry.143, ptr @u132_hcd_configure_setup_sent._entry_ptr, ptr @u132_hcd_configure_setup_sent._entry_ptr.142, ptr @u132_hcd_configure_setup_sent._entry_ptr.144, ptr @u132_hcd_delete._entry, ptr @u132_hcd_delete._entry_ptr, ptr @u132_hcd_enumeration_address_sent._entry, ptr @u132_hcd_enumeration_address_sent._entry.131, ptr @u132_hcd_enumeration_address_sent._entry.133, ptr @u132_hcd_enumeration_address_sent._entry_ptr, ptr @u132_hcd_enumeration_address_sent._entry_ptr.132, ptr @u132_hcd_enumeration_address_sent._entry_ptr.134, ptr @u132_hcd_enumeration_empty_recv._entry, ptr @u132_hcd_enumeration_empty_recv._entry.136, ptr @u132_hcd_enumeration_empty_recv._entry.138, ptr @u132_hcd_enumeration_empty_recv._entry_ptr, ptr @u132_hcd_enumeration_empty_recv._entry_ptr.137, ptr @u132_hcd_enumeration_empty_recv._entry_ptr.139, ptr @u132_hcd_exit, ptr @u132_hcd_exit._entry, ptr @u132_hcd_exit._entry_ptr, ptr @u132_hcd_init._entry, ptr @u132_hcd_init._entry_ptr, ptr @u132_hcd_initial_empty_sent._entry, ptr @u132_hcd_initial_empty_sent._entry.126, ptr @u132_hcd_initial_empty_sent._entry.128, ptr @u132_hcd_initial_empty_sent._entry_ptr, ptr @u132_hcd_initial_empty_sent._entry_ptr.127, ptr @u132_hcd_initial_empty_sent._entry_ptr.129, ptr @u132_hcd_initial_input_recv._entry, ptr @u132_hcd_initial_input_recv._entry.121, ptr @u132_hcd_initial_input_recv._entry.123, ptr @u132_hcd_initial_input_recv._entry_ptr, ptr @u132_hcd_initial_input_recv._entry_ptr.122, ptr @u132_hcd_initial_input_recv._entry_ptr.124, ptr @u132_hcd_initial_setup_sent._entry, ptr @u132_hcd_initial_setup_sent._entry.116, ptr @u132_hcd_initial_setup_sent._entry.118, ptr @u132_hcd_initial_setup_sent._entry_ptr, ptr @u132_hcd_initial_setup_sent._entry_ptr.117, ptr @u132_hcd_initial_setup_sent._entry_ptr.119, ptr @u132_hcd_interrupt_recv._entry, ptr @u132_hcd_interrupt_recv._entry.90, ptr @u132_hcd_interrupt_recv._entry.92, ptr @u132_hcd_interrupt_recv._entry.95, ptr @u132_hcd_interrupt_recv._entry_ptr, ptr @u132_hcd_interrupt_recv._entry_ptr.91, ptr @u132_hcd_interrupt_recv._entry_ptr.94, ptr @u132_hcd_interrupt_recv._entry_ptr.97, ptr @u132_hcd_monitor_work._entry, ptr @u132_hcd_monitor_work._entry.232, ptr @u132_hcd_monitor_work._entry_ptr, ptr @u132_hcd_monitor_work._entry_ptr.233, ptr @u132_hcd_reset._entry, ptr @u132_hcd_reset._entry.19, ptr @u132_hcd_reset._entry_ptr, ptr @u132_hcd_reset._entry_ptr.21, ptr @u132_hcd_start._entry, ptr @u132_hcd_start._entry.39, ptr @u132_hcd_start._entry.41, ptr @u132_hcd_start._entry.44, ptr @u132_hcd_start._entry_ptr, ptr @u132_hcd_start._entry_ptr.40, ptr @u132_hcd_start._entry_ptr.43, ptr @u132_hcd_start._entry_ptr.46, ptr @u132_hcd_stop._entry, ptr @u132_hcd_stop._entry.63, ptr @u132_hcd_stop._entry_ptr, ptr @u132_hcd_stop._entry_ptr.65, ptr @u132_hub_control._entry, ptr @u132_hub_control._entry.205, ptr @u132_hub_control._entry_ptr, ptr @u132_hub_control._entry_ptr.206, ptr @u132_hub_status_data._entry, ptr @u132_hub_status_data._entry.199, ptr @u132_hub_status_data._entry.201, ptr @u132_hub_status_data._entry_ptr, ptr @u132_hub_status_data._entry_ptr.200, ptr @u132_hub_status_data._entry_ptr.203, ptr @u132_probe._entry, ptr @u132_probe._entry.12, ptr @u132_probe._entry_ptr, ptr @u132_probe._entry_ptr.16, ptr @u132_remove._entry, ptr @u132_remove._entry.236, ptr @u132_remove._entry.239, ptr @u132_remove._entry_ptr, ptr @u132_remove._entry_ptr.238, ptr @u132_remove._entry_ptr.241, ptr @u132_resume._entry, ptr @u132_resume._entry.246, ptr @u132_resume._entry_ptr, ptr @u132_resume._entry_ptr.247, ptr @u132_roothub_clearportfeature._entry, ptr @u132_roothub_clearportfeature._entry_ptr, ptr @u132_roothub_portstatus._entry, ptr @u132_roothub_portstatus._entry_ptr, ptr @u132_run._entry, ptr @u132_run._entry.50, ptr @u132_run._entry.53, ptr @u132_run._entry_ptr, ptr @u132_run._entry_ptr.52, ptr @u132_run._entry_ptr.55, ptr @u132_start_port_reset._entry, ptr @u132_start_port_reset._entry.218, ptr @u132_start_port_reset._entry_ptr, ptr @u132_start_port_reset._entry_ptr.219, ptr @u132_suspend._entry, ptr @u132_suspend._entry.243, ptr @u132_suspend._entry_ptr, ptr @u132_suspend._entry_ptr.244, ptr @u132_urb_dequeue._entry, ptr @u132_urb_dequeue._entry_ptr, ptr @u132_urb_enqueue._entry, ptr @u132_urb_enqueue._entry.74, ptr @u132_urb_enqueue._entry.76, ptr @u132_urb_enqueue._entry.79, ptr @u132_urb_enqueue._entry_ptr, ptr @u132_urb_enqueue._entry_ptr.75, ptr @u132_urb_enqueue._entry_ptr.78, ptr @u132_urb_enqueue._entry_ptr.81, ptr @testing, ptr @distrust_firmware, ptr @u132_module_lock, ptr @u132_exiting, ptr @u132_platform_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @u132_instances, ptr @u132_hcd_wait, ptr @workqueue, ptr @.str.3, ptr @.str.4, ptr @hcd_name, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @u132_hc_driver, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @create_endpoint_and_queue_int.__key, ptr @.str.84, ptr @create_endpoint_and_queue_int.__key.85, ptr @.str.86, ptr @create_endpoint_and_queue_int.__key.87, ptr @.str.88, ptr @.str.89, ptr @.str.93, ptr @cc_to_text, ptr @cc_to_error, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.120, ptr @.str.125, ptr @.str.130, ptr @.str.135, ptr @.str.140, ptr @.str.145, ptr @.str.149, ptr @.str.152, ptr @.str.156, ptr @.str.161, ptr @.str.166, ptr @.str.170, ptr @.str.173, ptr @.str.177, ptr @create_endpoint_and_queue_bulk.__key, ptr @create_endpoint_and_queue_bulk.__key.182, ptr @create_endpoint_and_queue_bulk.__key.183, ptr @.str.184, ptr @.str.185, ptr @create_endpoint_and_queue_control.__key, ptr @create_endpoint_and_queue_control.__key.186, ptr @create_endpoint_and_queue_control.__key.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.192, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.202, ptr @.str.204, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.214, ptr @.str.217, ptr @u132_initialise.__key, ptr @.str.220, ptr @u132_initialise.__key.221, ptr @.str.222, ptr @u132_initialise.__key.223, ptr @.str.224, ptr @u132_initialise.__key.225, ptr @.str.226, ptr @u132_initialise.__key.227, ptr @.str.228, ptr @u132_initialise.__key.229, ptr @.str.230, ptr @.str.231, ptr @.str.234, ptr @.str.235, ptr @.str.237, ptr @.str.240, ptr @.str.242, ptr @.str.245, ptr @.str.248, ptr @switch.table.u132_hcd_start], section "llvm.metadata"
@0 = internal global [244 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testing to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @distrust_firmware to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_module_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_exiting to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_instances to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @workqueue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcd_name to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hc_driver to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_reset._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_roothub_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_roothub_info._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_roothub_info._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_roothub_info._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_roothub_info._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_roothub_info._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_start._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_start._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_start._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_run._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_run._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_stop._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_get_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_get_frame._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_get_frame._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_urb_enqueue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_urb_enqueue._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_urb_enqueue._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_urb_enqueue._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_endpoint_and_queue_int.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_endpoint_and_queue_int.__key.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_endpoint_and_queue_int.__key.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_interrupt_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_interrupt_recv._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_interrupt_recv._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_to_text to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_to_error to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_interrupt_recv._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_delete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_initial_setup_sent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_initial_setup_sent._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_initial_setup_sent._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_initial_input_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_initial_input_recv._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_initial_input_recv._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_initial_empty_sent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_initial_empty_sent._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_initial_empty_sent._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_enumeration_address_sent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_enumeration_address_sent._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_enumeration_address_sent._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_enumeration_empty_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_enumeration_empty_recv._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_enumeration_empty_recv._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_configure_setup_sent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_configure_setup_sent._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_configure_setup_sent._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_configure_input_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_configure_input_recv._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_configure_input_recv._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_configure_input_recv._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_configure_input_recv._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_configure_empty_sent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_configure_empty_sent._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_configure_empty_sent._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_configure_empty_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_configure_empty_recv._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_configure_empty_recv._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_bulk_input_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_bulk_input_recv._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_bulk_input_recv._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_bulk_input_recv._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_bulk_input_recv._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_bulk_output_sent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_bulk_output_sent._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_bulk_output_sent._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_endpoint_and_queue_bulk.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_endpoint_and_queue_bulk.__key.182 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_endpoint_and_queue_bulk.__key.183 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_control_on_old_endpoint._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_endpoint_and_queue_control.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_endpoint_and_queue_control.__key.186 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_endpoint_and_queue_control.__key.187 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_urb_dequeue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_endp_urb_dequeue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_endp_urb_dequeue._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dequeue_from_overflow_chain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_endpoint_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hub_status_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hub_status_data._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hub_status_data._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hub_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hub_control._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_roothub_clearportfeature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_roothub_portstatus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_bus_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_bus_suspend._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_bus_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_bus_resume._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_start_port_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_start_port_reset._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_initialise.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_initialise.__key.221 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_initialise.__key.223 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_initialise.__key.225 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_initialise.__key.227 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_initialise.__key.229 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_monitor_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_hcd_monitor_work._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_remove._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_remove._entry.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_suspend._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u132_resume._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.u132_hcd_start to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @u132_hcd_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @u132_instances, align 4
  store i32 0, ptr @u132_exiting, align 4
  %call = tail call i32 @usb_disabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @hcd_name) #13
  %call3 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.5, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.6) #10
  store ptr %call3, ptr @workqueue, align 4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %call7 = tail call i32 @__platform_driver_register(ptr noundef nonnull @u132_platform_driver, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.then9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load ptr, ptr @workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ], [ %call7, %if.then9 ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @u132_hcd_exit() #0 section ".exit.text" align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_lock_nested(ptr noundef nonnull @u132_module_lock, i32 noundef 0) #10
  %0 = load i32, ptr @u132_exiting, align 4
  %add = add i32 %0, 1
  store i32 %add, ptr @u132_exiting, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @u132_module_lock) #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @u132_platform_driver) #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 3213) #10
  %1 = load i32, ptr @u132_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.do.end11_crit_edge, label %if.end

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %call614 = call i32 @prepare_to_wait_event(ptr noundef nonnull @u132_hcd_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %3 = load i32, ptr @u132_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp715 = icmp eq i32 %3, 0
  br i1 %cmp715, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #10
  %call6 = call i32 @prepare_to_wait_event(ptr noundef nonnull @u132_hcd_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %4 = load i32, ptr @u132_instances, align 4
  %cmp7 = icmp eq i32 %4, 0
  br i1 %cmp7, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @u132_hcd_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %do.end11

do.end11:                                         ; preds = %for.end, %entry.do.end11_crit_edge
  %5 = load ptr, ptr @workqueue, align 4
  call void @destroy_workqueue(ptr noundef %5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u132_probe(ptr noundef %pdev) #4 align 64 {
entry:
  %control = alloca i32, align 4
  %rh_a = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %control) #10
  %0 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %control, align 4, !annotation !520
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rh_a) #10
  %1 = ptrtoint ptr %rh_a to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rh_a, align 4
  tail call void @msleep(i32 noundef 100) #10
  %2 = load i32, ptr @u132_exiting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %entry.cleanup28_crit_edge, label %if.end

entry.cleanup28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup28

if.end:                                           ; preds = %entry
  %call = tail call i32 @usb_ftdi_elan_write_pcimem(ptr noundef %pdev, i32 noundef 20, i8 noundef zeroext 0, i32 noundef -2147483648) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup28_crit_edge

if.end.cleanup28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup28

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %pdev, i32 noundef 4, i8 noundef zeroext 0, ptr noundef nonnull %control) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup28_crit_edge

if.end3.cleanup28_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup28

if.end7:                                          ; preds = %if.end3
  %call8 = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %pdev, i32 noundef 72, i8 noundef zeroext 0, ptr noundef nonnull %rh_a) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup28_crit_edge

if.end7.cleanup28_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup28

if.end11:                                         ; preds = %if.end7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.dev_name.exit_crit_edge

if.end11.dev_name.exit_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end11.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.end.i ], [ %4, %if.end11.dev_name.exit_crit_edge ]
  %call14 = call ptr @usb_create_hcd(ptr noundef nonnull @u132_hc_driver, ptr noundef %dev, ptr noundef %retval.0.i) #10
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end, label %if.else

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #13
  call void @ftdi_elan_gone_away(ptr noundef %pdev) #10
  br label %cleanup28

if.else:                                          ; preds = %dev_name.exit
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %call14, i32 0, i32 30
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %call14, i32 0, i32 17
  %7 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rsrc_start, align 8
  call void @mutex_lock_nested(ptr noundef nonnull @u132_module_lock, i32 noundef 0) #10
  %8 = load i32, ptr @u132_instances, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr @u132_instances, align 4
  %sequence_num = getelementptr inbounds %struct.usb_hcd, ptr %call14, i32 2, i32 0, i32 9, i32 1, i32 3
  %9 = ptrtoint ptr %sequence_num to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %sequence_num, align 4
  call void @mutex_unlock(ptr noundef nonnull @u132_module_lock) #10
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %hcd_priv.i, i32 noundef 4) #10
  %10 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %hcd_priv.i, align 4
  call fastcc void @u132_initialise(ptr noundef %hcd_priv.i, ptr noundef %pdev)
  %product_desc = getelementptr inbounds %struct.usb_hcd, ptr %call14, i32 0, i32 2
  %11 = ptrtoint ptr %product_desc to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.11, ptr %product_desc, align 4
  %call19 = call i32 @usb_add_hcd(ptr noundef nonnull %call14, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, 0
  br i1 %cmp20.not, label %if.else26, label %do.end24

do.end24:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev = getelementptr inbounds %struct.usb_hcd, ptr %call14, i32 1, i32 4, i32 12
  %12 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %platform_dev, align 4
  %dev25 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.13, i32 noundef %call19) #13
  call fastcc void @u132_u132_put_kref(ptr noundef %hcd_priv.i)
  br label %cleanup28

if.else26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %call14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call14, align 8
  %call27 = call i32 @device_wakeup_enable(ptr noundef %15) #10
  call fastcc void @u132_monitor_queue_work(ptr noundef %hcd_priv.i)
  br label %cleanup28

cleanup28:                                        ; preds = %if.else26, %do.end24, %do.end, %if.end7.cleanup28_crit_edge, %if.end3.cleanup28_crit_edge, %if.end.cleanup28_crit_edge, %entry.cleanup28_crit_edge
  %retval.1 = phi i32 [ -12, %do.end ], [ -19, %entry.cleanup28_crit_edge ], [ %call, %if.end.cleanup28_crit_edge ], [ %call4, %if.end3.cleanup28_crit_edge ], [ %call8, %if.end7.cleanup28_crit_edge ], [ %call19, %do.end24 ], [ 0, %if.else26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rh_a) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control) #10
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u132_remove(ptr nocapture noundef readonly %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup27_crit_edge, label %if.then

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup27

if.then:                                          ; preds = %entry
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 30
  %going = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 1, i32 4
  %2 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %going, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  %platform_dev = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 1, i32 4, i32 12
  %4 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.234) #13
  br label %cleanup27

if.else:                                          ; preds = %if.then
  %sequence_num = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 1, i32 3
  %6 = ptrtoint ptr %sequence_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sequence_num, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.237, i32 noundef %7) #13
  tail call void @msleep(i32 noundef 100) #10
  %sw_lock = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %sw_lock, i32 noundef 0) #10
  %monitor.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 14
  %call.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %monitor.i) #10
  br i1 %call.i, label %if.then.i, label %if.else.u132_monitor_cancel_work.exit_crit_edge

if.else.u132_monitor_cancel_work.exit_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_monitor_cancel_work.exit

if.then.i:                                        ; preds = %if.else
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hcd_priv.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %hcd_priv.i, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hcd_priv.i, ptr %hcd_priv.i, i32 1, ptr elementtype(i32) %hcd_priv.i) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.u132_monitor_cancel_work.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !523

if.end5.i.i.i.i.i.u132_monitor_cancel_work.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_monitor_cancel_work.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %hcd_priv.i, i32 noundef 3) #10
  br label %u132_monitor_cancel_work.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  %9 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %platform_dev, align 4
  %11 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %going, align 4
  %add.i.i = add i32 %12, 1
  store i32 %add.i.i, ptr %going, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @u132_module_lock, i32 noundef 0) #10
  %13 = load i32, ptr @u132_instances, align 4
  %sub.i.i = add i32 %13, -1
  store i32 %sub.i.i, ptr @u132_instances, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @u132_module_lock) #10
  %14 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_dev, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %going, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.98, ptr noundef nonnull %1, ptr noundef %hcd_priv.i, i32 noundef %17, ptr noundef %10) #13
  tail call void @usb_put_hcd(ptr noundef nonnull %1) #10
  br label %u132_monitor_cancel_work.exit

u132_monitor_cancel_work.exit:                    ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.u132_monitor_cancel_work.exit_crit_edge, %if.else.u132_monitor_cancel_work.exit_crit_edge
  %arrayidx = getelementptr %struct.usb_hcd, ptr %1, i32 1, i32 21, i32 3, i32 1
  tail call fastcc void @u132_ring_cancel_work(ptr noundef %hcd_priv.i, ptr noundef %arrayidx)
  %arrayidx.1 = getelementptr %struct.usb_hcd, ptr %1, i32 1, i32 20, i32 1, i32 0, i32 0, i32 4, i32 2
  tail call fastcc void @u132_ring_cancel_work(ptr noundef %hcd_priv.i, ptr noundef %arrayidx.1)
  %arrayidx.2 = getelementptr %struct.usb_hcd, ptr %1, i32 1, i32 8, i32 1, i32 1
  tail call fastcc void @u132_ring_cancel_work(ptr noundef %hcd_priv.i, ptr noundef %arrayidx.2)
  %arrayidx.3 = getelementptr %struct.usb_hcd, ptr %1, i32 1, i32 4, i32 16
  tail call fastcc void @u132_ring_cancel_work(ptr noundef %hcd_priv.i, ptr noundef %arrayidx.3)
  br label %while.body13

while.body13:                                     ; preds = %if.end.while.body13_crit_edge, %u132_monitor_cancel_work.exit
  %dec1156 = phi i32 [ %dec11, %if.end.while.body13_crit_edge ], [ 99, %u132_monitor_cancel_work.exit ]
  %arrayidx15 = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 23, i32 %dec1156
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq ptr %19, null
  br i1 %tobool16.not, label %while.body13.if.end_crit_edge, label %if.then17

while.body13.if.end_crit_edge:                    ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then17:                                        ; preds = %while.body13
  %scheduler.i = getelementptr inbounds %struct.u132_endp, ptr %19, i32 0, i32 17
  %call.i46 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %scheduler.i) #10
  br i1 %call.i46, label %if.then.i50, label %if.then17.if.end_crit_edge

if.then17.if.end_crit_edge:                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i50:                                      ; preds = %if.then17
  %call.i.i.i.i.i.i.i47 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %19, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr nonnull %19, i32 1, i32 3, i32 1) #10
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %19, ptr nonnull %19, i32 1, ptr nonnull elementtype(i32) %19) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i.i48 = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i48)
  %cmp.i.i.i.i.i49 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i48, 1
  br i1 %cmp.i.i.i.i.i49, label %if.then.i.i54, label %if.end5.i.i.i.i.i52

if.end5.i.i.i.i.i52:                              ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i48)
  %.not.i.i.i.i.i51 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i48, 0
  br i1 %.not.i.i.i.i.i51, label %if.end5.i.i.i.i.i52.if.end_crit_edge, label %if.then10.i.i.i.i.i53, !prof !523

if.end5.i.i.i.i.i52.if.end_crit_edge:             ; preds = %if.end5.i.i.i.i.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i.i.i53:                            ; preds = %if.end5.i.i.i.i.i52
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %19, i32 noundef 3) #10
  br label %if.end

if.then.i.i54:                                    ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  tail call fastcc void @u132_endp_delete(ptr noundef nonnull %19) #10, !callees !525
  br label %if.end

if.end:                                           ; preds = %if.then.i.i54, %if.then10.i.i.i.i.i53, %if.end5.i.i.i.i.i52.if.end_crit_edge, %if.then17.if.end_crit_edge, %while.body13.if.end_crit_edge
  %dec11 = add nsw i32 %dec1156, -1
  %cmp12.not = icmp eq i32 %dec1156, 0
  br i1 %cmp12.not, label %while.end18, label %if.end.while.body13_crit_edge

if.end.while.body13_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body13

while.end18:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %going, align 4
  %add = add i32 %22, 1
  store i32 %add, ptr %going, align 4
  %23 = ptrtoint ptr %sequence_num to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sequence_num, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.240, i32 noundef %24) #13
  tail call void @mutex_unlock(ptr noundef %sw_lock) #10
  tail call void @usb_remove_hcd(ptr noundef nonnull %1) #10
  tail call fastcc void @u132_u132_put_kref(ptr noundef %hcd_priv.i)
  br label %cleanup27

cleanup27:                                        ; preds = %while.end18, %do.end, %entry.cleanup27_crit_edge
  %retval.1 = phi i32 [ -19, %do.end ], [ 0, %while.end18 ], [ 0, %entry.cleanup27_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u132_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %state.coerce) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state.coerce.fca.0.extract = extractvalue [1 x i32] %state.coerce, 0
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %going = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 1, i32 4
  %2 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 1, i32 4, i32 12
  %4 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %3) #13
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp4 = icmp eq i32 %3, 1
  br i1 %cmp4, label %do.end8, label %if.else11

do.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev9 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 1, i32 4, i32 12
  %6 = ptrtoint ptr %platform_dev9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_dev9, align 4
  %dev10 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.20) #13
  br label %cleanup

if.else11:                                        ; preds = %if.else
  %8 = zext i32 %state.coerce.fca.0.extract to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state.coerce.fca.0.extract, label %if.else11.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %if.else11.sw.bb14_crit_edge
    i32 4, label %if.else11.sw.bb14_crit_edge25
  ]

if.else11.sw.bb14_crit_edge25:                    ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb14

if.else11.sw.bb14_crit_edge:                      ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb14

if.else11.cleanup_crit_edge:                      ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.else11
  %9 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i = icmp sgt i32 %10, 1
  br i1 %cmp.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 1, i32 4, i32 12
  %11 = ptrtoint ptr %platform_dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %platform_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.17, i32 noundef %10) #13
  br label %cleanup

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp3.i = icmp eq i32 %10, 1
  br i1 %cmp3.i, label %do.end7.i, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end7.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev8.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 1, i32 4, i32 12
  %13 = ptrtoint ptr %platform_dev8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %platform_dev8.i, align 4
  %dev9.i = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull @.str.20) #13
  br label %cleanup

sw.bb14:                                          ; preds = %if.else11.sw.bb14_crit_edge, %if.else11.sw.bb14_crit_edge25
  %power.i = getelementptr %struct.usb_hcd, ptr %1, i32 3, i32 0, i32 9, i32 4
  %15 = ptrtoint ptr %power.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %power.i, align 4
  %power.i.1 = getelementptr %struct.usb_hcd, ptr %1, i32 3, i32 0, i32 9, i32 1, i32 4, i32 6
  %16 = ptrtoint ptr %power.i.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %power.i.1, align 4
  %power.i.2 = getelementptr %struct.usb_hcd, ptr %1, i32 3, i32 0, i32 9, i32 1, i32 4
  %17 = ptrtoint ptr %power.i.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %power.i.2, align 4
  %power.i.3 = getelementptr %struct.usb_hcd, ptr %1, i32 3, i32 0, i32 9
  %18 = ptrtoint ptr %power.i.3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %power.i.3, align 4
  %power.i.4 = getelementptr %struct.usb_hcd, ptr %1, i32 3, i32 0, i32 2
  %19 = ptrtoint ptr %power.i.4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %power.i.4, align 4
  %power.i.5 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 27
  %20 = ptrtoint ptr %power.i.5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %power.i.5, align 4
  %power.i.6 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 25
  %21 = ptrtoint ptr %power.i.6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %power.i.6, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb14, %do.end7.i, %if.else.i.cleanup_crit_edge, %do.end.i, %if.else11.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -108, %do.end8 ], [ 0, %if.else11.cleanup_crit_edge ], [ -19, %do.end.i ], [ -108, %do.end7.i ], [ 0, %if.else.i.cleanup_crit_edge ], [ 0, %sw.bb14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u132_resume(ptr nocapture noundef readonly %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %going = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 1, i32 4
  %2 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 1, i32 4, i32 12
  %4 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %3) #13
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp4 = icmp eq i32 %3, 1
  br i1 %cmp4, label %do.end8, label %if.else11

do.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev9 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 1, i32 4, i32 12
  %6 = ptrtoint ptr %platform_dev9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_dev9, align 4
  %dev10 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.20) #13
  br label %cleanup

if.else11:                                        ; preds = %if.else
  %power = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 25
  %8 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %power, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %while.body.preheader, label %if.else15

while.body.preheader:                             ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #12
  %power.i = getelementptr %struct.usb_hcd, ptr %1, i32 3, i32 0, i32 9, i32 4
  %10 = ptrtoint ptr %power.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %power.i, align 4
  %power.i.1 = getelementptr %struct.usb_hcd, ptr %1, i32 3, i32 0, i32 9, i32 1, i32 4, i32 6
  %11 = ptrtoint ptr %power.i.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %power.i.1, align 4
  %power.i.2 = getelementptr %struct.usb_hcd, ptr %1, i32 3, i32 0, i32 9, i32 1, i32 4
  %12 = ptrtoint ptr %power.i.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %power.i.2, align 4
  %power.i.3 = getelementptr %struct.usb_hcd, ptr %1, i32 3, i32 0, i32 9
  %13 = ptrtoint ptr %power.i.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %power.i.3, align 4
  %power.i.4 = getelementptr %struct.usb_hcd, ptr %1, i32 3, i32 0, i32 2
  %14 = ptrtoint ptr %power.i.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %power.i.4, align 4
  %power.i.5 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 27
  %15 = ptrtoint ptr %power.i.5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %power.i.5, align 4
  %power.i.6 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 25
  %16 = ptrtoint ptr %power.i.6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %power.i.6, align 4
  br label %cleanup

if.else15:                                        ; preds = %if.else11
  %17 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i = icmp sgt i32 %18, 1
  br i1 %cmp.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 1, i32 4, i32 12
  %19 = ptrtoint ptr %platform_dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %platform_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.17, i32 noundef %18) #13
  br label %cleanup

if.else.i:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp3.i = icmp eq i32 %18, 1
  br i1 %cmp3.i, label %do.end7.i, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end7.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev8.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 1, i32 4, i32 12
  %21 = ptrtoint ptr %platform_dev8.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %platform_dev8.i, align 4
  %dev9.i = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull @.str.20) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end7.i, %if.else.i.cleanup_crit_edge, %do.end.i, %while.body.preheader, %do.end8, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -108, %do.end8 ], [ -19, %do.end.i ], [ -108, %do.end7.i ], [ 0, %if.else.i.cleanup_crit_edge ], [ 0, %while.body.preheader ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ftdi_elan_write_pcimem(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ftdi_elan_read_pcimem(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftdi_elan_gone_away(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u132_initialise(ptr noundef %u132, ptr noundef %pdev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %board = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 3
  %2 = ptrtoint ptr %board to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %board, align 4
  %platform_dev = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 4
  %3 = ptrtoint ptr %platform_dev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %platform_dev, align 4
  %power = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 8
  %4 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %power, align 4
  %reset = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 9
  %5 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %reset, align 4
  %sw_lock = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %sw_lock, ptr noundef nonnull @.str.220, ptr noundef nonnull @u132_initialise.__key) #10
  %scheduler_lock = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %scheduler_lock, ptr noundef nonnull @.str.222, ptr noundef nonnull @u132_initialise.__key.221) #10
  %arrayidx = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 3
  %u1325 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 3, i32 2
  %6 = ptrtoint ptr %u1325 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %u132, ptr %u1325, align 4
  %number = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 3, i32 1
  %7 = ptrtoint ptr %number to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %number, align 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %arrayidx, align 4
  %bf.clear = and i8 %bf.load, -128
  store i8 %bf.clear, ptr %arrayidx, align 4
  %curr_endp = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 3, i32 3
  %9 = ptrtoint ptr %curr_endp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %curr_endp, align 4
  %scheduler = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 3, i32 4
  tail call void @__init_work(ptr noundef %scheduler, i32 noundef 0) #10
  %10 = ptrtoint ptr %scheduler to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %scheduler, align 4
  %lockdep_map = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 3, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.224, ptr noundef nonnull @u132_initialise.__key.223, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry14 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 3, i32 4, i32 0, i32 1
  %11 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry14, ptr %entry14, align 4
  %prev.i = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 3, i32 4, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry14, ptr %prev.i, align 4
  %func = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 3, i32 4, i32 0, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @u132_hcd_ring_work_scheduler, ptr %func, align 4
  %timer = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 3, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.226, ptr noundef nonnull @u132_initialise.__key.225) #10
  %arrayidx.1 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 2
  %u1325.1 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 2, i32 2
  %14 = ptrtoint ptr %u1325.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %u132, ptr %u1325.1, align 4
  %number.1 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 2, i32 1
  %15 = ptrtoint ptr %number.1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %number.1, align 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.1 = load i8, ptr %arrayidx.1, align 4
  %bf.clear.1 = and i8 %bf.load.1, -128
  store i8 %bf.clear.1, ptr %arrayidx.1, align 4
  %curr_endp.1 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 2, i32 3
  %17 = ptrtoint ptr %curr_endp.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %curr_endp.1, align 4
  %scheduler.1 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 2, i32 4
  tail call void @__init_work(ptr noundef %scheduler.1, i32 noundef 0) #10
  %18 = ptrtoint ptr %scheduler.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %scheduler.1, align 4
  %lockdep_map.1 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 2, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.1, ptr noundef nonnull @.str.224, ptr noundef nonnull @u132_initialise.__key.223, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry14.1 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 2, i32 4, i32 0, i32 1
  %19 = ptrtoint ptr %entry14.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry14.1, ptr %entry14.1, align 4
  %prev.i.1 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 2, i32 4, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry14.1, ptr %prev.i.1, align 4
  %func.1 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 2, i32 4, i32 0, i32 2
  %21 = ptrtoint ptr %func.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @u132_hcd_ring_work_scheduler, ptr %func.1, align 4
  %timer.1 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 2, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer.1, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.226, ptr noundef nonnull @u132_initialise.__key.225) #10
  %arrayidx.2 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 1
  %u1325.2 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 1, i32 2
  %22 = ptrtoint ptr %u1325.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %u132, ptr %u1325.2, align 4
  %number.2 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 1, i32 1
  %23 = ptrtoint ptr %number.2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %number.2, align 1
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.2 = load i8, ptr %arrayidx.2, align 4
  %bf.clear.2 = and i8 %bf.load.2, -128
  store i8 %bf.clear.2, ptr %arrayidx.2, align 4
  %curr_endp.2 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 1, i32 3
  %25 = ptrtoint ptr %curr_endp.2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %curr_endp.2, align 4
  %scheduler.2 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 1, i32 4
  tail call void @__init_work(ptr noundef %scheduler.2, i32 noundef 0) #10
  %26 = ptrtoint ptr %scheduler.2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -64, ptr %scheduler.2, align 4
  %lockdep_map.2 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 1, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.2, ptr noundef nonnull @.str.224, ptr noundef nonnull @u132_initialise.__key.223, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry14.2 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 1, i32 4, i32 0, i32 1
  %27 = ptrtoint ptr %entry14.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entry14.2, ptr %entry14.2, align 4
  %prev.i.2 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 1, i32 4, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %entry14.2, ptr %prev.i.2, align 4
  %func.2 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 1, i32 4, i32 0, i32 2
  %29 = ptrtoint ptr %func.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @u132_hcd_ring_work_scheduler, ptr %func.2, align 4
  %timer.2 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 1, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer.2, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.226, ptr noundef nonnull @u132_initialise.__key.225) #10
  %arrayidx.3 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 0
  %u1325.3 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 0, i32 2
  %30 = ptrtoint ptr %u1325.3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %u132, ptr %u1325.3, align 4
  %number.3 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 0, i32 1
  %31 = ptrtoint ptr %number.3 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %number.3, align 1
  %32 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.3 = load i8, ptr %arrayidx.3, align 4
  %bf.clear.3 = and i8 %bf.load.3, -128
  store i8 %bf.clear.3, ptr %arrayidx.3, align 4
  %curr_endp.3 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 0, i32 3
  %33 = ptrtoint ptr %curr_endp.3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %curr_endp.3, align 4
  %scheduler.3 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 0, i32 4
  tail call void @__init_work(ptr noundef %scheduler.3, i32 noundef 0) #10
  %34 = ptrtoint ptr %scheduler.3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -64, ptr %scheduler.3, align 4
  %lockdep_map.3 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 0, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.3, ptr noundef nonnull @.str.224, ptr noundef nonnull @u132_initialise.__key.223, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry14.3 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 0, i32 4, i32 0, i32 1
  %35 = ptrtoint ptr %entry14.3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %entry14.3, ptr %entry14.3, align 4
  %prev.i.3 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 0, i32 4, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i.3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %entry14.3, ptr %prev.i.3, align 4
  %func.3 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 0, i32 4, i32 0, i32 2
  %37 = ptrtoint ptr %func.3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @u132_hcd_ring_work_scheduler, ptr %func.3, align 4
  %timer.3 = getelementptr %struct.u132, ptr %u132, i32 0, i32 5, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer.3, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.226, ptr noundef nonnull @u132_initialise.__key.225) #10
  tail call void @mutex_lock_nested(ptr noundef %sw_lock, i32 noundef 0) #10
  %monitor = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 18
  tail call void @__init_work(ptr noundef %monitor, i32 noundef 0) #10
  %38 = ptrtoint ptr %monitor to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -64, ptr %monitor, align 4
  %lockdep_map36 = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 18, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map36, ptr noundef nonnull @.str.228, ptr noundef nonnull @u132_initialise.__key.227, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry39 = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 18, i32 0, i32 1
  %39 = ptrtoint ptr %entry39 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %entry39, ptr %entry39, align 4
  %prev.i148 = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 18, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %prev.i148 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %entry39, ptr %prev.i148, align 4
  %func42 = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 18, i32 0, i32 2
  %41 = ptrtoint ptr %func42 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @u132_hcd_monitor_work, ptr %func42, align 4
  %timer47 = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 18, i32 1
  tail call void @init_timer_key(ptr noundef %timer47, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.230, ptr noundef nonnull @u132_initialise.__key.229) #10
  %arrayidx58 = getelementptr %struct.u132, ptr %u132, i32 0, i32 22, i32 6
  %42 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %u132, ptr %arrayidx58, align 4
  %reset60 = getelementptr %struct.u132, ptr %u132, i32 0, i32 22, i32 6, i32 1
  %arrayidx58.1 = getelementptr %struct.u132, ptr %u132, i32 0, i32 22, i32 5
  %43 = call ptr @memset(ptr %reset60, i32 0, i32 16)
  %44 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %u132, ptr %arrayidx58.1, align 4
  %reset60.1 = getelementptr %struct.u132, ptr %u132, i32 0, i32 22, i32 5, i32 1
  %arrayidx58.2 = getelementptr %struct.u132, ptr %u132, i32 0, i32 22, i32 4
  %45 = call ptr @memset(ptr %reset60.1, i32 0, i32 16)
  %46 = ptrtoint ptr %arrayidx58.2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %u132, ptr %arrayidx58.2, align 4
  %reset60.2 = getelementptr %struct.u132, ptr %u132, i32 0, i32 22, i32 4, i32 1
  %arrayidx58.3 = getelementptr %struct.u132, ptr %u132, i32 0, i32 22, i32 3
  %47 = call ptr @memset(ptr %reset60.2, i32 0, i32 16)
  %48 = ptrtoint ptr %arrayidx58.3 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %u132, ptr %arrayidx58.3, align 4
  %reset60.3 = getelementptr %struct.u132, ptr %u132, i32 0, i32 22, i32 3, i32 1
  %arrayidx58.4 = getelementptr %struct.u132, ptr %u132, i32 0, i32 22, i32 2
  %49 = call ptr @memset(ptr %reset60.3, i32 0, i32 16)
  %50 = ptrtoint ptr %arrayidx58.4 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %u132, ptr %arrayidx58.4, align 4
  %reset60.4 = getelementptr %struct.u132, ptr %u132, i32 0, i32 22, i32 2, i32 1
  %arrayidx58.5 = getelementptr %struct.u132, ptr %u132, i32 0, i32 22, i32 1
  %51 = call ptr @memset(ptr %reset60.4, i32 0, i32 16)
  %52 = ptrtoint ptr %arrayidx58.5 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %u132, ptr %arrayidx58.5, align 4
  %reset60.5 = getelementptr %struct.u132, ptr %u132, i32 0, i32 22, i32 1, i32 1
  %arrayidx58.6 = getelementptr %struct.u132, ptr %u132, i32 0, i32 22, i32 0
  %53 = call ptr @memset(ptr %reset60.5, i32 0, i32 16)
  %54 = ptrtoint ptr %arrayidx58.6 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %u132, ptr %arrayidx58.6, align 4
  %reset60.6 = getelementptr %struct.u132, ptr %u132, i32 0, i32 22, i32 0, i32 1
  %uglygep = getelementptr i8, ptr %u132, i32 852
  %55 = call ptr @memset(ptr %uglygep, i32 0, i32 128)
  %usb_device = getelementptr %struct.u132, ptr %u132, i32 0, i32 21, i32 3, i32 1
  %56 = ptrtoint ptr %usb_device to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %usb_device, align 4
  %udev_number = getelementptr %struct.u132, ptr %u132, i32 0, i32 21, i32 3, i32 3
  %usb_device.1 = getelementptr %struct.u132, ptr %u132, i32 0, i32 21, i32 2, i32 1
  %57 = ptrtoint ptr %usb_device.1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %usb_device.1, align 4
  %udev_number.1 = getelementptr %struct.u132, ptr %u132, i32 0, i32 21, i32 2, i32 3
  %usb_device.2 = getelementptr %struct.u132, ptr %u132, i32 0, i32 21, i32 1, i32 1
  %58 = ptrtoint ptr %usb_device.2 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %usb_device.2, align 4
  %udev_number.2 = getelementptr %struct.u132, ptr %u132, i32 0, i32 21, i32 1, i32 3
  %usb_device.3 = getelementptr %struct.u132, ptr %u132, i32 0, i32 21, i32 0, i32 1
  %59 = ptrtoint ptr %usb_device.3 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %usb_device.3, align 4
  %udev_number.3 = getelementptr %struct.u132, ptr %u132, i32 0, i32 21, i32 0, i32 3
  %uglygep158 = getelementptr i8, ptr %u132, i32 1296
  %60 = call ptr @memset(ptr %uglygep158, i32 0, i32 400)
  %61 = call ptr @memset(ptr %udev_number.3, i32 0, i32 35)
  %62 = call ptr @memset(ptr %udev_number.2, i32 0, i32 35)
  %63 = call ptr @memset(ptr %udev_number.1, i32 0, i32 35)
  %64 = call ptr @memset(ptr %udev_number, i32 0, i32 35)
  %65 = call ptr @memset(ptr %reset60.6, i32 0, i32 16)
  tail call void @mutex_unlock(ptr noundef %sw_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u132_u132_put_kref(ptr noundef %u132) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %u132, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %u132, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %u132, ptr %u132, i32 1, ptr elementtype(i32) %u132) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !523

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %u132, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  %platform_dev.i = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 4
  %1 = ptrtoint ptr %platform_dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_dev.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %u132, i32 -600
  %going.i = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 7
  %3 = ptrtoint ptr %going.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %going.i, align 4
  %add.i = add i32 %4, 1
  store i32 %add.i, ptr %going.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @u132_module_lock, i32 noundef 0) #10
  %5 = load i32, ptr @u132_instances, align 4
  %sub.i = add i32 %5, -1
  store i32 %sub.i, ptr @u132_instances, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @u132_module_lock) #10
  %6 = ptrtoint ptr %platform_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %going.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %going.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.98, ptr noundef %add.ptr.i.i, ptr noundef %u132, i32 noundef %9, ptr noundef %2) #13
  tail call void @usb_put_hcd(ptr noundef %add.ptr.i.i) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u132_monitor_queue_work(ptr noundef %u132) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @workqueue, align 4
  %monitor = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 18
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %monitor, i32 noundef 100) #10
  br i1 %call.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %u132, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %u132, i32 1, i32 3, i32 1) #10
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %u132, ptr %u132, i32 1, ptr elementtype(i32) %u132) #10, !srcloc !526
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !527

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !523

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %u132, i32 noundef %.sink.i.i.i.i) #10
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u132_hcd_reset(ptr noundef %hcd) #4 align 64 {
entry:
  %control.i = alloca i32, align 4
  %rh_a.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %going = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 1, i32 4
  %0 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %2 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %1) #13
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp3 = icmp eq i32 %1, 1
  br i1 %cmp3, label %do.end7, label %if.else10

do.end7:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev8 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %4 = ptrtoint ptr %platform_dev8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_dev8, align 4
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.20) #13
  br label %cleanup

if.else10:                                        ; preds = %if.else
  %sw_lock = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %sw_lock, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %control.i) #10
  %6 = ptrtoint ptr %control.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %control.i, align 4, !annotation !520
  %state.i.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %7 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %state.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %next_statechange.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 13
  %9 = ptrtoint ptr %next_statechange.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %next_statechange.i, align 4
  %platform_dev.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %10 = ptrtoint ptr %platform_dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platform_dev.i, align 4
  %call.i = tail call i32 @usb_ftdi_elan_write_pcimem(ptr noundef %11, i32 noundef 20, i8 noundef zeroext 0, i32 noundef -2147483648) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else10.if.then13_crit_edge

if.else10.if.then13_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.end.i:                                         ; preds = %if.else10
  %12 = ptrtoint ptr %platform_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %platform_dev.i, align 4
  %call3.i = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %13, i32 noundef 4, i8 noundef zeroext 0, ptr noundef nonnull %control.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.if.then13_crit_edge

if.end.i.if.then13_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.end6.i:                                        ; preds = %if.end.i
  %num_ports.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 1, i32 4, i32 2
  %14 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  br i1 %cmp.i, label %if.then7.i, label %if.end6.i.if.end18.i_crit_edge

if.end6.i.if.end18.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.then7.i:                                       ; preds = %if.end6.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rh_a.i) #10
  %16 = ptrtoint ptr %rh_a.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %rh_a.i, align 4
  %17 = ptrtoint ptr %platform_dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %platform_dev.i, align 4
  %call9.i = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %18, i32 noundef 72, i8 noundef zeroext 0, ptr noundef nonnull %rh_a.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %cleanup.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rh_a.i) #10
  br label %if.then13

cleanup.i:                                        ; preds = %if.then7.i
  %19 = ptrtoint ptr %rh_a.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rh_a.i, align 4
  %and.i = and i32 %20, 255
  %21 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and.i, ptr %num_ports.i, align 4
  %call14.i = call fastcc i32 @read_roothub_info(ptr noundef %hcd_priv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rh_a.i) #10
  br i1 %tobool15.not.i, label %if.end18.ithread-pre-split, label %cleanup.i.if.then13_crit_edge

cleanup.i.if.then13_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.end18.ithread-pre-split:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %num_ports.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end18.ithread-pre-split, %if.end6.i.if.end18.i_crit_edge
  %23 = phi i32 [ %.pr, %if.end18.ithread-pre-split ], [ %15, %if.end6.i.if.end18.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %23)
  %cmp20.i = icmp sgt i32 %23, 7
  br i1 %cmp20.i, label %if.end18.i.if.then13_crit_edge, label %u132_init.exit

if.end18.i.if.then13_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

u132_init.exit:                                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control.i) #10
  br label %if.end

if.then13:                                        ; preds = %if.end18.i.if.then13_crit_edge, %cleanup.i.if.then13_crit_edge, %cleanup.thread.i, %if.end.i.if.then13_crit_edge, %if.else10.if.then13_crit_edge
  %retval.1.i.ph = phi i32 [ %call9.i, %cleanup.thread.i ], [ %call3.i, %if.end.i.if.then13_crit_edge ], [ %call.i, %if.else10.if.then13_crit_edge ], [ %call14.i, %cleanup.i.if.then13_crit_edge ], [ -22, %if.end18.i.if.then13_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control.i) #10
  %24 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %state.i.i, align 4
  %25 = ptrtoint ptr %going to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %going, align 4
  br label %if.end

if.end:                                           ; preds = %if.then13, %u132_init.exit
  %retval.1.i29 = phi i32 [ %retval.1.i.ph, %if.then13 ], [ 0, %u132_init.exit ]
  call void @mutex_unlock(ptr noundef %sw_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end7, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -108, %do.end7 ], [ %retval.1.i29, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u132_hcd_start(ptr noundef %hcd) #4 align 64 {
entry:
  %control.i = alloca i32, align 4
  %status.i = alloca i32, align 4
  %fminterval.i = alloca i32, align 4
  %periodicstart.i = alloca i32, align 4
  %cmdstatus.i = alloca i32, align 4
  %roothub_a.i = alloca i32, align 4
  %temp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %going = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 1, i32 4
  %0 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %2 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %1) #13
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp3 = icmp eq i32 %1, 1
  br i1 %cmp3, label %do.end7, label %if.else10

do.end7:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev8 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %4 = ptrtoint ptr %platform_dev8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_dev8, align 4
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.20) #13
  br label %cleanup

if.else10:                                        ; preds = %if.else
  %6 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcd, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.end62, label %if.then11

if.then11:                                        ; preds = %if.else10
  %platform_data.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 4
  %device20 = getelementptr inbounds %struct.u132_platform_data, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %device20 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %device20, align 2
  %sw_lock = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %sw_lock, i32 noundef 0) #10
  tail call void @msleep(i32 noundef 10) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 4130, i16 %11)
  %cmp21 = icmp eq i16 %11, 4130
  call void @__sanitizer_cov_trace_const_cmp2(i16 29708, i16 %13)
  %cmp24 = icmp eq i16 %13, 29708
  %or.cond = select i1 %cmp21, i1 %cmp24, i1 false
  br i1 %or.cond, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 12
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %flags, align 4
  br label %if.end52

if.else27:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_const_cmp2(i16 4165, i16 %11)
  %cmp29 = icmp eq i16 %11, 4165
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14239, i16 %13)
  %cmp33 = icmp eq i16 %13, -14239
  %or.cond87 = select i1 %cmp29, i1 %cmp33, i1 false
  br i1 %or.cond87, label %do.end38, label %if.else41

do.end38:                                         ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev39 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %15 = ptrtoint ptr %platform_dev39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %platform_dev39, align 4
  %dev40 = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.42) #13
  br label %if.end52

if.else41:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_const_cmp2(i16 3601, i16 %11)
  %cmp43 = icmp eq i16 %11, 3601
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24328, i16 %13)
  %cmp47 = icmp eq i16 %13, -24328
  %or.cond88 = select i1 %cmp43, i1 %cmp47, i1 false
  br i1 %or.cond88, label %if.then49, label %if.else41.if.end52_crit_edge

if.else41.if.end52_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then49:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #12
  %flags50 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 12
  %17 = ptrtoint ptr %flags50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags50, align 4
  %or = or i32 %18, 32
  store i32 %or, ptr %flags50, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.else41.if.end52_crit_edge, %do.end38, %if.then26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %control.i) #10
  %19 = ptrtoint ptr %control.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %control.i, align 4, !annotation !520
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #10
  %20 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %status.i, align 4, !annotation !520
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fminterval.i) #10
  %21 = ptrtoint ptr %fminterval.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %fminterval.i, align 4, !annotation !520
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %periodicstart.i) #10
  %22 = ptrtoint ptr %periodicstart.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %periodicstart.i, align 4, !annotation !520
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmdstatus.i) #10
  %23 = ptrtoint ptr %cmdstatus.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %cmdstatus.i, align 4, !annotation !520
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %roothub_a.i) #10
  %24 = ptrtoint ptr %roothub_a.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %roothub_a.i, align 4, !annotation !520
  %hc_fminterval.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 1, i32 4, i32 6
  %25 = ptrtoint ptr %hc_fminterval.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hc_fminterval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i = icmp eq i32 %26, 0
  %state.i.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %27 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %state.i.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.end52.if.end8.i_crit_edge

if.end52.if.end8.i_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then.i:                                        ; preds = %if.end52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #10
  %28 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %temp.i, align 4, !annotation !520
  %platform_dev.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %29 = ptrtoint ptr %platform_dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %platform_dev.i, align 4
  %call.i = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %30, i32 noundef 52, i8 noundef zeroext 0, ptr noundef nonnull %temp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %cleanup281.critedge.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %temp.i, align 4
  %and.i = and i32 %32, 16383
  %33 = mul nuw nsw i32 %and.i, 6
  %mul.i = add nsw i32 %33, -1260
  %div.i = udiv i32 %mul.i, 7
  %and6.i = shl i32 %div.i, 16
  %shl.i = and i32 %and6.i, 2147418112
  %or.i = or i32 %shl.i, %and.i
  %34 = ptrtoint ptr %hc_fminterval.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or.i, ptr %hc_fminterval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #10
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i, %if.end52.if.end8.i_crit_edge
  %platform_dev9.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %35 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %platform_dev9.i, align 4
  %hc_control.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 1, i32 4, i32 3
  %call10.i = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %36, i32 noundef 4, i8 noundef zeroext 0, ptr noundef %hc_control.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %do.end.i, label %if.end8.i.if.then55_crit_edge

if.end8.i.if.then55_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

do.end.i:                                         ; preds = %if.end8.i
  %37 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %platform_dev9.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %hc_control.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hc_control.i, align 4
  %and16.i = lshr i32 %40, 6
  %41 = and i32 %and16.i, 3
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.u132_hcd_start, i32 0, i32 %41
  %42 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %42)
  %switch.load = load ptr, ptr %switch.gep, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.47, ptr noundef nonnull %switch.load, i32 noundef %40) #13
  %43 = ptrtoint ptr %hc_control.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hc_control.i, align 4
  %45 = trunc i32 %44 to i8
  %trunc.i = and i8 %45, -64
  %46 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.249)
  switch i8 %trunc.i, label %sw.default.i [
    i8 -128, label %do.end.i.sw.epilog.i_crit_edge
    i8 -64, label %do.end.i.sw.bb21.i_crit_edge
    i8 64, label %do.end.i.sw.bb21.i_crit_edge128
  ]

do.end.i.sw.bb21.i_crit_edge128:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb21.i

do.end.i.sw.bb21.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb21.i

do.end.i.sw.epilog.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb21.i:                                        ; preds = %do.end.i.sw.bb21.i_crit_edge, %do.end.i.sw.bb21.i_crit_edge128
  %and23.i = and i32 %44, 512
  %or25.i = or i32 %and23.i, 64
  br label %sw.epilog.sink.split.i

sw.default.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %and27.i = and i32 %44, 512
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.default.i, %sw.bb21.i
  %and27.sink.i = phi i32 [ %and27.i, %sw.default.i ], [ %or25.i, %sw.bb21.i ]
  %sleep_time.0.ph.i = phi i32 [ 50, %sw.default.i ], [ 10, %sw.bb21.i ]
  %47 = ptrtoint ptr %hc_control.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and27.sink.i, ptr %hc_control.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %do.end.i.sw.epilog.i_crit_edge
  %sleep_time.0.i = phi i32 [ 0, %do.end.i.sw.epilog.i_crit_edge ], [ %sleep_time.0.ph.i, %sw.epilog.sink.split.i ]
  %48 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %platform_dev9.i, align 4
  %50 = ptrtoint ptr %hc_control.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hc_control.i, align 4
  %call32.i = call i32 @usb_ftdi_elan_write_pcimem(ptr noundef %49, i32 noundef 4, i8 noundef zeroext 0, i32 noundef %51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %sw.epilog.i.if.then55_crit_edge

sw.epilog.i.if.then55_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end35.i:                                       ; preds = %sw.epilog.i
  %52 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %platform_dev9.i, align 4
  %call37.i = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %53, i32 noundef 4, i8 noundef zeroext 0, ptr noundef nonnull %control.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.end35.i.if.then55_crit_edge

if.end35.i.if.then55_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end40.i:                                       ; preds = %if.end35.i
  call void @msleep(i32 noundef %sleep_time.0.i) #10
  %54 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %platform_dev9.i, align 4
  %call42.i = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %55, i32 noundef 72, i8 noundef zeroext 0, ptr noundef nonnull %roothub_a.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %if.end40.i.if.then55_crit_edge

if.end40.i.if.then55_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end45.i:                                       ; preds = %if.end40.i
  %56 = ptrtoint ptr %roothub_a.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %roothub_a.i, align 4
  %and46.i = and i32 %57, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %for.cond.preheader.i, label %if.end45.i.if.end60.i_crit_edge

if.end45.i.if.end60.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.i

for.cond.preheader.i:                             ; preds = %if.end45.i
  %num_ports.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 1, i32 4, i32 2
  %58 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp50428.i = icmp sgt i32 %59, 0
  br i1 %cmp50428.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end60.i_crit_edge

for.cond.preheader.i.if.end60.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %temp49.0429.i, 1
  %60 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_ports.i, align 4
  %cmp50.i = icmp slt i32 %inc.i, %61
  br i1 %cmp50.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end60.i_crit_edge

for.cond.i.if.end60.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %temp49.0429.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %62 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %platform_dev9.i, align 4
  %64 = shl i32 %temp49.0429.i, 2
  %65 = add i32 %64, 84
  %call53.i = call i32 @usb_ftdi_elan_write_pcimem(ptr noundef %63, i32 noundef %65, i8 noundef zeroext 0, i32 noundef 512) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %for.cond.i, label %for.body.i.if.then55_crit_edge

for.body.i.if.then55_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end60.i:                                       ; preds = %for.cond.i.if.end60.i_crit_edge, %for.cond.preheader.i.if.end60.i_crit_edge, %if.end45.i.if.end60.i_crit_edge
  %66 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %platform_dev9.i, align 4
  %call62.i = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %67, i32 noundef 4, i8 noundef zeroext 0, ptr noundef nonnull %control.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool63.not.i = icmp eq i32 %call62.i, 0
  br i1 %tobool63.not.i, label %retry.preheader.i, label %if.end60.i.if.then55_crit_edge

if.end60.i.if.then55_crit_edge:                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

retry.preheader.i:                                ; preds = %if.end60.i
  %68 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %platform_dev9.i, align 4
  %call67434.i = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %69, i32 noundef 8, i8 noundef zeroext 0, ptr noundef nonnull %status.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67434.i)
  %tobool68.not435.i = icmp eq i32 %call67434.i, 0
  br i1 %tobool68.not435.i, label %if.end70.lr.ph.i, label %retry.preheader.i.if.then55_crit_edge

retry.preheader.i.if.then55_crit_edge:            ; preds = %retry.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end70.lr.ph.i:                                 ; preds = %retry.preheader.i
  %flags.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 12
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then147.i.if.end70.i_crit_edge, %if.end70.lr.ph.i
  %reset_timeout.0436.i = phi i32 [ 30, %if.end70.lr.ph.i ], [ %reset_timeout.1432.i, %if.then147.i.if.end70.i_crit_edge ]
  %70 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %platform_dev9.i, align 4
  %call72.i = call i32 @usb_ftdi_elan_write_pcimem(ptr noundef %71, i32 noundef 8, i8 noundef zeroext 0, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %tobool73.not.i = icmp eq i32 %call72.i, 0
  br i1 %tobool73.not.i, label %extra.preheader.i, label %if.end70.i.if.then55_crit_edge

if.end70.i.if.then55_crit_edge:                   ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

extra.preheader.i:                                ; preds = %if.end70.i
  %72 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %platform_dev9.i, align 4
  %call77430.i = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %73, i32 noundef 8, i8 noundef zeroext 0, ptr noundef nonnull %status.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77430.i)
  %tobool78.not431.i = icmp eq i32 %call77430.i, 0
  br i1 %tobool78.not431.i, label %extra.preheader.i.if.end80.i_crit_edge, label %extra.preheader.i.if.then55_crit_edge

extra.preheader.i.if.then55_crit_edge:            ; preds = %extra.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

extra.preheader.i.if.end80.i_crit_edge:           ; preds = %extra.preheader.i
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.else.i.if.end80.i_crit_edge, %extra.preheader.i.if.end80.i_crit_edge
  %reset_timeout.1432.i = phi i32 [ %dec.i, %if.else.i.if.end80.i_crit_edge ], [ %reset_timeout.0436.i, %extra.preheader.i.if.end80.i_crit_edge ]
  %74 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %status.i, align 4
  %and81.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %cmp82.not.i = icmp eq i32 %and81.i, 0
  br i1 %cmp82.not.i, label %if.end93.i, label %if.then84.i

if.then84.i:                                      ; preds = %if.end80.i
  %dec.i = add i32 %reset_timeout.1432.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp85.i = icmp eq i32 %dec.i, 0
  br i1 %cmp85.i, label %do.end90.i, label %if.else.i

do.end90.i:                                       ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %platform_dev9.i, align 4
  %dev92.i = getelementptr inbounds %struct.platform_device, ptr %77, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev92.i, ptr noundef nonnull @.str.51) #13
  br label %if.then55

if.else.i:                                        ; preds = %if.then84.i
  call void @msleep(i32 noundef 5) #10
  %78 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %platform_dev9.i, align 4
  %call77.i = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %79, i32 noundef 8, i8 noundef zeroext 0, ptr noundef nonnull %status.i) #10
  %tobool78.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool78.not.i, label %if.else.i.if.end80.i_crit_edge, label %if.else.i.if.then55_crit_edge

if.else.i.if.then55_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.else.i.if.end80.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80.i

if.end93.i:                                       ; preds = %if.end80.i
  %80 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags.i, align 4
  %and94.i = and i32 %81, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94.i)
  %tobool95.not.i = icmp eq i32 %and94.i, 0
  br i1 %tobool95.not.i, label %if.end93.i.if.end108.i_crit_edge, label %if.then96.i

if.end93.i.if.end108.i_crit_edge:                 ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108.i

if.then96.i:                                      ; preds = %if.end93.i
  %82 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %platform_dev9.i, align 4
  %84 = ptrtoint ptr %hc_control.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %hc_control.i, align 4
  %call99.i = call i32 @usb_ftdi_elan_write_pcimem(ptr noundef %83, i32 noundef 4, i8 noundef zeroext 0, i32 noundef %85) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99.i)
  %tobool100.not.i = icmp eq i32 %call99.i, 0
  br i1 %tobool100.not.i, label %if.end102.i, label %if.then96.i.if.then55_crit_edge

if.then96.i.if.then55_crit_edge:                  ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end102.i:                                      ; preds = %if.then96.i
  %86 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %platform_dev9.i, align 4
  %call104.i = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %87, i32 noundef 4, i8 noundef zeroext 0, ptr noundef nonnull %control.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104.i)
  %tobool105.not.i = icmp eq i32 %call104.i, 0
  br i1 %tobool105.not.i, label %if.end102.i.if.end108.i_crit_edge, label %if.end102.i.if.then55_crit_edge

if.end102.i.if.then55_crit_edge:                  ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end102.i.if.end108.i_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.end102.i.if.end108.i_crit_edge, %if.end93.i.if.end108.i_crit_edge
  %88 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %platform_dev9.i, align 4
  %call110.i = call i32 @usb_ftdi_elan_write_pcimem(ptr noundef %89, i32 noundef 32, i8 noundef zeroext 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i)
  %tobool111.not.i = icmp eq i32 %call110.i, 0
  br i1 %tobool111.not.i, label %if.end113.i, label %if.end108.i.if.then55_crit_edge

if.end108.i.if.then55_crit_edge:                  ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end113.i:                                      ; preds = %if.end108.i
  %90 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %platform_dev9.i, align 4
  %call115.i = call i32 @usb_ftdi_elan_write_pcimem(ptr noundef %91, i32 noundef 40, i8 noundef zeroext 0, i32 noundef 285212672) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i)
  %tobool116.not.i = icmp eq i32 %call115.i, 0
  br i1 %tobool116.not.i, label %if.end118.i, label %if.end113.i.if.then55_crit_edge

if.end113.i.if.then55_crit_edge:                  ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end118.i:                                      ; preds = %if.end113.i
  %92 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %platform_dev9.i, align 4
  %call120.i = call i32 @usb_ftdi_elan_write_pcimem(ptr noundef %93, i32 noundef 24, i8 noundef zeroext 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120.i)
  %tobool121.not.i = icmp eq i32 %call120.i, 0
  br i1 %tobool121.not.i, label %if.end123.i, label %if.end118.i.if.then55_crit_edge

if.end118.i.if.then55_crit_edge:                  ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end123.i:                                      ; preds = %if.end118.i
  %call124.i = call fastcc i32 @u132_periodic_reinit(ptr noundef %hcd_priv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124.i)
  %tobool125.not.i = icmp eq i32 %call124.i, 0
  br i1 %tobool125.not.i, label %if.end127.i, label %if.end123.i.if.then55_crit_edge

if.end123.i.if.then55_crit_edge:                  ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end127.i:                                      ; preds = %if.end123.i
  %94 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %platform_dev9.i, align 4
  %call129.i = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %95, i32 noundef 52, i8 noundef zeroext 0, ptr noundef nonnull %fminterval.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129.i)
  %tobool130.not.i = icmp eq i32 %call129.i, 0
  br i1 %tobool130.not.i, label %if.end132.i, label %if.end127.i.if.then55_crit_edge

if.end127.i.if.then55_crit_edge:                  ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end132.i:                                      ; preds = %if.end127.i
  %96 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %platform_dev9.i, align 4
  %call134.i = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %97, i32 noundef 64, i8 noundef zeroext 0, ptr noundef nonnull %periodicstart.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134.i)
  %tobool135.not.i = icmp eq i32 %call134.i, 0
  br i1 %tobool135.not.i, label %if.end137.i, label %if.end132.i.if.then55_crit_edge

if.end132.i.if.then55_crit_edge:                  ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end137.i:                                      ; preds = %if.end132.i
  %98 = ptrtoint ptr %fminterval.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %fminterval.i, align 4
  %and138.i = and i32 %99, 1073676288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138.i)
  %cmp139.i = icmp eq i32 %and138.i, 0
  br i1 %cmp139.i, label %if.end137.i.if.then143.i_crit_edge, label %lor.lhs.false.i

if.end137.i.if.then143.i_crit_edge:               ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then143.i

lor.lhs.false.i:                                  ; preds = %if.end137.i
  %100 = ptrtoint ptr %periodicstart.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %periodicstart.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp141.i = icmp eq i32 %101, 0
  br i1 %cmp141.i, label %lor.lhs.false.i.if.then143.i_crit_edge, label %lor.lhs.false.i.if.end157.i_crit_edge

lor.lhs.false.i.if.end157.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end157.i

lor.lhs.false.i.if.then143.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then143.i

if.then143.i:                                     ; preds = %lor.lhs.false.i.if.then143.i_crit_edge, %if.end137.i.if.then143.i_crit_edge
  %102 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %flags.i, align 4
  %and145.i = and i32 %103, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145.i)
  %tobool146.not.i = icmp eq i32 %and145.i, 0
  br i1 %tobool146.not.i, label %if.then147.i, label %do.end153.i

if.then147.i:                                     ; preds = %if.then143.i
  %or149.i = or i32 %103, 4
  %104 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %or149.i, ptr %flags.i, align 4
  %105 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %platform_dev9.i, align 4
  %call67.i = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %106, i32 noundef 8, i8 noundef zeroext 0, ptr noundef nonnull %status.i) #10
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %if.then147.i.if.end70.i_crit_edge, label %if.then147.i.if.then55_crit_edge

if.then147.i.if.then55_crit_edge:                 ; preds = %if.then147.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.then147.i.if.end70.i_crit_edge:                ; preds = %if.then147.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70.i

do.end153.i:                                      ; preds = %if.then143.i
  call void @__sanitizer_cov_trace_pc() #12
  %107 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %platform_dev9.i, align 4
  %dev155.i = getelementptr inbounds %struct.platform_device, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %periodicstart.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %periodicstart.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev155.i, ptr noundef nonnull @.str.54, i32 noundef %99, i32 noundef %110) #13
  br label %if.end157.i

if.end157.i:                                      ; preds = %do.end153.i, %lor.lhs.false.i.if.end157.i_crit_edge
  %111 = ptrtoint ptr %hc_control.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %hc_control.i, align 4
  %and159.i = and i32 %112, 512
  %or161.i = or i32 %and159.i, 163
  store i32 %or161.i, ptr %hc_control.i, align 4
  %113 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %platform_dev9.i, align 4
  %call164.i = call i32 @usb_ftdi_elan_write_pcimem(ptr noundef %114, i32 noundef 4, i8 noundef zeroext 0, i32 noundef %or161.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164.i)
  %tobool165.not.i = icmp eq i32 %call164.i, 0
  br i1 %tobool165.not.i, label %if.end167.i, label %if.end157.i.if.then55_crit_edge

if.end157.i.if.then55_crit_edge:                  ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end167.i:                                      ; preds = %if.end157.i
  %115 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %platform_dev9.i, align 4
  %call169.i = call i32 @usb_ftdi_elan_write_pcimem(ptr noundef %116, i32 noundef 8, i8 noundef zeroext 0, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169.i)
  %tobool170.not.i = icmp eq i32 %call169.i, 0
  br i1 %tobool170.not.i, label %if.end172.i, label %if.end167.i.if.then55_crit_edge

if.end167.i.if.then55_crit_edge:                  ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end172.i:                                      ; preds = %if.end167.i
  %117 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %platform_dev9.i, align 4
  %call174.i = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %118, i32 noundef 8, i8 noundef zeroext 0, ptr noundef nonnull %cmdstatus.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174.i)
  %tobool175.not.i = icmp eq i32 %call174.i, 0
  br i1 %tobool175.not.i, label %if.end177.i, label %if.end172.i.if.then55_crit_edge

if.end172.i.if.then55_crit_edge:                  ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end177.i:                                      ; preds = %if.end172.i
  %119 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %platform_dev9.i, align 4
  %call179.i = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %120, i32 noundef 4, i8 noundef zeroext 0, ptr noundef nonnull %control.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179.i)
  %tobool180.not.i = icmp eq i32 %call179.i, 0
  br i1 %tobool180.not.i, label %if.end182.i, label %if.end177.i.if.then55_crit_edge

if.end177.i.if.then55_crit_edge:                  ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end182.i:                                      ; preds = %if.end177.i
  %121 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 1, ptr %state.i.i, align 4
  %122 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %platform_dev9.i, align 4
  %call185.i = call i32 @usb_ftdi_elan_write_pcimem(ptr noundef %123, i32 noundef 80, i8 noundef zeroext 0, i32 noundef 32768) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185.i)
  %tobool186.not.i = icmp eq i32 %call185.i, 0
  br i1 %tobool186.not.i, label %if.end188.i, label %if.end182.i.if.then55_crit_edge

if.end182.i.if.then55_crit_edge:                  ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end188.i:                                      ; preds = %if.end182.i
  %124 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %platform_dev9.i, align 4
  %call190.i = call i32 @usb_ftdi_elan_write_pcimem(ptr noundef %125, i32 noundef 12, i8 noundef zeroext 0, i32 noundef -2147483622) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190.i)
  %tobool191.not.i = icmp eq i32 %call190.i, 0
  br i1 %tobool191.not.i, label %if.end193.i, label %if.end188.i.if.then55_crit_edge

if.end188.i.if.then55_crit_edge:                  ; preds = %if.end188.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end193.i:                                      ; preds = %if.end188.i
  %126 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %platform_dev9.i, align 4
  %call195.i = call i32 @usb_ftdi_elan_write_pcimem(ptr noundef %127, i32 noundef 20, i8 noundef zeroext 0, i32 noundef -1073741697) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195.i)
  %tobool196.not.i = icmp eq i32 %call195.i, 0
  br i1 %tobool196.not.i, label %if.end198.i, label %if.end193.i.if.then55_crit_edge

if.end193.i.if.then55_crit_edge:                  ; preds = %if.end193.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end198.i:                                      ; preds = %if.end193.i
  %128 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %platform_dev9.i, align 4
  %call200.i = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %129, i32 noundef 72, i8 noundef zeroext 0, ptr noundef nonnull %roothub_a.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200.i)
  %tobool201.not.i = icmp eq i32 %call200.i, 0
  br i1 %tobool201.not.i, label %if.end203.i, label %if.end198.i.if.then55_crit_edge

if.end198.i.if.then55_crit_edge:                  ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end203.i:                                      ; preds = %if.end198.i
  %130 = ptrtoint ptr %roothub_a.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %roothub_a.i, align 4
  %and204.i = and i32 %131, -2305
  store i32 %and204.i, ptr %roothub_a.i, align 4
  %132 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %flags.i, align 4
  %and206.i = and i32 %133, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and206.i)
  %tobool207.not.i = icmp eq i32 %and206.i, 0
  br i1 %tobool207.not.i, label %if.else216.i, label %if.then208.i

if.then208.i:                                     ; preds = %if.end203.i
  %or209.i = and i32 %131, 16770303
  %and210.i = or i32 %or209.i, 4096
  %134 = ptrtoint ptr %roothub_a.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %and210.i, ptr %roothub_a.i, align 4
  %135 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %platform_dev9.i, align 4
  %call212.i = call i32 @usb_ftdi_elan_write_pcimem(ptr noundef %136, i32 noundef 72, i8 noundef zeroext 0, i32 noundef %and210.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212.i)
  %tobool213.not.i = icmp eq i32 %call212.i, 0
  br i1 %tobool213.not.i, label %if.then208.i.if.end231.i_crit_edge, label %if.then208.i.if.then55_crit_edge

if.then208.i.if.then55_crit_edge:                 ; preds = %if.then208.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.then208.i.if.end231.i_crit_edge:               ; preds = %if.then208.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end231.i

if.else216.i:                                     ; preds = %if.end203.i
  %and218.i = and i32 %133, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and218.i)
  %tobool219.not.i = icmp eq i32 %and218.i, 0
  br i1 %tobool219.not.i, label %lor.lhs.false220.i, label %if.else216.i.if.then223.i_crit_edge

if.else216.i.if.then223.i_crit_edge:              ; preds = %if.else216.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then223.i

lor.lhs.false220.i:                               ; preds = %if.else216.i
  %137 = load i8, ptr @distrust_firmware, align 1, !range !528
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool221.not.i = icmp eq i8 %137, 0
  br i1 %tobool221.not.i, label %lor.lhs.false220.i.if.end231.i_crit_edge, label %lor.lhs.false220.i.if.then223.i_crit_edge

lor.lhs.false220.i.if.then223.i_crit_edge:        ; preds = %lor.lhs.false220.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then223.i

lor.lhs.false220.i.if.end231.i_crit_edge:         ; preds = %lor.lhs.false220.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end231.i

if.then223.i:                                     ; preds = %lor.lhs.false220.i.if.then223.i_crit_edge, %if.else216.i.if.then223.i_crit_edge
  %or224.i = or i32 %and204.i, 512
  %138 = ptrtoint ptr %roothub_a.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %or224.i, ptr %roothub_a.i, align 4
  %139 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %platform_dev9.i, align 4
  %call226.i = call i32 @usb_ftdi_elan_write_pcimem(ptr noundef %140, i32 noundef 72, i8 noundef zeroext 0, i32 noundef %or224.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226.i)
  %tobool227.not.i = icmp eq i32 %call226.i, 0
  br i1 %tobool227.not.i, label %if.then223.i.if.end231.i_crit_edge, label %if.then223.i.if.then55_crit_edge

if.then223.i.if.then55_crit_edge:                 ; preds = %if.then223.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.then223.i.if.end231.i_crit_edge:               ; preds = %if.then223.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end231.i

if.end231.i:                                      ; preds = %if.then223.i.if.end231.i_crit_edge, %lor.lhs.false220.i.if.end231.i_crit_edge, %if.then208.i.if.end231.i_crit_edge
  %141 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %platform_dev9.i, align 4
  %call233.i = call i32 @usb_ftdi_elan_write_pcimem(ptr noundef %142, i32 noundef 80, i8 noundef zeroext 0, i32 noundef 65536) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233.i)
  %tobool234.not.i = icmp eq i32 %call233.i, 0
  br i1 %tobool234.not.i, label %if.end236.i, label %if.end231.i.if.then55_crit_edge

if.end231.i.if.then55_crit_edge:                  ; preds = %if.end231.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end236.i:                                      ; preds = %if.end231.i
  %143 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %platform_dev9.i, align 4
  %145 = ptrtoint ptr %roothub_a.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %roothub_a.i, align 4
  %and238.i = and i32 %146, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and238.i)
  %tobool239.not.i = icmp eq i32 %and238.i, 0
  %cond.i = select i1 %tobool239.not.i, i32 -65536, i32 0
  %call240.i = call i32 @usb_ftdi_elan_write_pcimem(ptr noundef %144, i32 noundef 76, i8 noundef zeroext 0, i32 noundef %cond.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240.i)
  %tobool241.not.i = icmp eq i32 %call240.i, 0
  br i1 %tobool241.not.i, label %if.end243.i, label %if.end236.i.if.then55_crit_edge

if.end236.i.if.then55_crit_edge:                  ; preds = %if.end236.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end243.i:                                      ; preds = %if.end236.i
  %147 = ptrtoint ptr %platform_dev9.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %platform_dev9.i, align 4
  %call245.i = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %148, i32 noundef 4, i8 noundef zeroext 0, ptr noundef nonnull %control.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245.i)
  %tobool246.not.i = icmp eq i32 %call245.i, 0
  br i1 %tobool246.not.i, label %if.end248.i, label %if.end243.i.if.then55_crit_edge

if.end243.i.if.then55_crit_edge:                  ; preds = %if.end243.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end248.i:                                      ; preds = %if.end243.i
  %149 = ptrtoint ptr %roothub_a.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %roothub_a.i, align 4
  %shr.i = lshr i32 %150, 23
  %and249.i = and i32 %shr.i, 510
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and249.i)
  %tobool277.not447.i = icmp eq i32 %and249.i, 0
  br i1 %tobool277.not447.i, label %if.end248.i.u132_run.exit_crit_edge, label %if.end248.i.while.body.i_crit_edge

if.end248.i.while.body.i_crit_edge:               ; preds = %if.end248.i
  br label %while.body.i

if.end248.i.u132_run.exit_crit_edge:              ; preds = %if.end248.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_run.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end248.i.while.body.i_crit_edge
  %__ms.0448.i = phi i32 [ %dec276.i, %while.body.i.while.body.i_crit_edge ], [ %and249.i, %if.end248.i.while.body.i_crit_edge ]
  %dec276.i = add nsw i32 %__ms.0448.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %151(i32 noundef 214748000) #10
  %tobool277.not.i = icmp eq i32 %dec276.i, 0
  br i1 %tobool277.not.i, label %while.body.i.u132_run.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.u132_run.exit_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_run.exit

cleanup281.critedge.i:                            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #10
  br label %if.then55

u132_run.exit:                                    ; preds = %while.body.i.u132_run.exit_crit_edge, %if.end248.i.u132_run.exit_crit_edge
  %152 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 1, ptr %state.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %roothub_a.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmdstatus.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %periodicstart.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fminterval.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control.i) #10
  br label %if.end57

if.then55:                                        ; preds = %cleanup281.critedge.i, %if.end243.i.if.then55_crit_edge, %if.end236.i.if.then55_crit_edge, %if.end231.i.if.then55_crit_edge, %if.then223.i.if.then55_crit_edge, %if.then208.i.if.then55_crit_edge, %if.end198.i.if.then55_crit_edge, %if.end193.i.if.then55_crit_edge, %if.end188.i.if.then55_crit_edge, %if.end182.i.if.then55_crit_edge, %if.end177.i.if.then55_crit_edge, %if.end172.i.if.then55_crit_edge, %if.end167.i.if.then55_crit_edge, %if.end157.i.if.then55_crit_edge, %if.then147.i.if.then55_crit_edge, %if.end132.i.if.then55_crit_edge, %if.end127.i.if.then55_crit_edge, %if.end123.i.if.then55_crit_edge, %if.end118.i.if.then55_crit_edge, %if.end113.i.if.then55_crit_edge, %if.end108.i.if.then55_crit_edge, %if.end102.i.if.then55_crit_edge, %if.then96.i.if.then55_crit_edge, %if.else.i.if.then55_crit_edge, %do.end90.i, %extra.preheader.i.if.then55_crit_edge, %if.end70.i.if.then55_crit_edge, %retry.preheader.i.if.then55_crit_edge, %if.end60.i.if.then55_crit_edge, %for.body.i.if.then55_crit_edge, %if.end40.i.if.then55_crit_edge, %if.end35.i.if.then55_crit_edge, %sw.epilog.i.if.then55_crit_edge, %if.end8.i.if.then55_crit_edge
  %retval.3.i.ph = phi i32 [ %call67434.i, %retry.preheader.i.if.then55_crit_edge ], [ %call245.i, %if.end243.i.if.then55_crit_edge ], [ %call240.i, %if.end236.i.if.then55_crit_edge ], [ %call233.i, %if.end231.i.if.then55_crit_edge ], [ %call226.i, %if.then223.i.if.then55_crit_edge ], [ %call212.i, %if.then208.i.if.then55_crit_edge ], [ %call200.i, %if.end198.i.if.then55_crit_edge ], [ %call195.i, %if.end193.i.if.then55_crit_edge ], [ %call190.i, %if.end188.i.if.then55_crit_edge ], [ %call185.i, %if.end182.i.if.then55_crit_edge ], [ %call179.i, %if.end177.i.if.then55_crit_edge ], [ %call174.i, %if.end172.i.if.then55_crit_edge ], [ %call169.i, %if.end167.i.if.then55_crit_edge ], [ %call164.i, %if.end157.i.if.then55_crit_edge ], [ %call62.i, %if.end60.i.if.then55_crit_edge ], [ %call42.i, %if.end40.i.if.then55_crit_edge ], [ %call37.i, %if.end35.i.if.then55_crit_edge ], [ %call32.i, %sw.epilog.i.if.then55_crit_edge ], [ %call10.i, %if.end8.i.if.then55_crit_edge ], [ %call.i, %cleanup281.critedge.i ], [ -19, %do.end90.i ], [ %call77.i, %if.else.i.if.then55_crit_edge ], [ %call77430.i, %extra.preheader.i.if.then55_crit_edge ], [ %call67.i, %if.then147.i.if.then55_crit_edge ], [ %call72.i, %if.end70.i.if.then55_crit_edge ], [ %call99.i, %if.then96.i.if.then55_crit_edge ], [ %call104.i, %if.end102.i.if.then55_crit_edge ], [ %call110.i, %if.end108.i.if.then55_crit_edge ], [ %call115.i, %if.end113.i.if.then55_crit_edge ], [ %call120.i, %if.end118.i.if.then55_crit_edge ], [ %call124.i, %if.end123.i.if.then55_crit_edge ], [ %call129.i, %if.end127.i.if.then55_crit_edge ], [ %call134.i, %if.end132.i.if.then55_crit_edge ], [ %call53.i, %for.body.i.if.then55_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %roothub_a.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmdstatus.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %periodicstart.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fminterval.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control.i) #10
  %153 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %state.i.i, align 4
  %154 = ptrtoint ptr %going to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 1, ptr %going, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %u132_run.exit
  %retval.3.i93 = phi i32 [ %retval.3.i.ph, %if.then55 ], [ 0, %u132_run.exit ]
  call void @msleep(i32 noundef 100) #10
  call void @mutex_unlock(ptr noundef %sw_lock) #10
  br label %cleanup

do.end62:                                         ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev63 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %155 = ptrtoint ptr %platform_dev63 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %platform_dev63, align 4
  %dev64 = getelementptr inbounds %struct.platform_device, ptr %156, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev64, ptr noundef nonnull @.str.45) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %if.end57, %do.end7, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -108, %do.end7 ], [ %retval.3.i93, %if.end57 ], [ -19, %do.end62 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @u132_hcd_stop(ptr noundef %hcd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %going = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 1, i32 4
  %0 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %platform_dev = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %2 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef %hcd_priv.i, ptr noundef %hcd, i32 noundef %1) #13
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp3 = icmp eq i32 %1, 1
  br i1 %cmp3, label %do.end7, label %if.else10

do.end7:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev8 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %4 = ptrtoint ptr %platform_dev8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_dev8, align 4
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.64, ptr noundef %hcd) #13
  br label %if.end12

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %sw_lock = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %sw_lock, i32 noundef 0) #10
  tail call void @msleep(i32 noundef 100) #10
  %power4.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 1, i32 4, i32 1
  %6 = ptrtoint ptr %power4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %power4.i, align 4
  %state.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %state.i, align 4
  tail call void @mutex_unlock(ptr noundef %sw_lock) #10
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %do.end7, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u132_get_frame(ptr nocapture noundef readonly %hcd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %going = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 1, i32 4
  %0 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %2 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %1) #13
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp3 = icmp eq i32 %1, 1
  %platform_dev8 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %4 = ptrtoint ptr %platform_dev8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_dev8, align 4
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  br i1 %cmp3, label %do.end7, label %do.end13

do.end7:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.20) #13
  br label %cleanup

do.end13:                                         ; preds = %if.else
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.70) #13
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end13
  %__ms.021 = phi i32 [ 100, %do.end13 ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.021, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #10
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -108, %do.end7 ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u132_urb_enqueue(ptr noundef %hcd, ptr noundef %urb, i32 noundef %mem_flags) #4 align 64 {
entry:
  %data = alloca [94 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !529
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp ne i32 %and.i, 0
  %and.i353 = and i32 %mem_flags, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i353)
  %tobool.i = icmp ne i32 %and.i353, 0
  %or.cond = and i1 %tobool.i, %tobool.not
  br i1 %or.cond, label %do.end14, label %if.end17

do.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #13
  br label %cleanup244

if.end17:                                         ; preds = %entry
  %going = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 1, i32 4
  %1 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp18 = icmp sgt i32 %2, 1
  br i1 %cmp18, label %do.end23, label %if.else

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %3 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %2) #13
  br label %cleanup244

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp26 = icmp eq i32 %2, 1
  br i1 %cmp26, label %do.end31, label %if.else34

do.end31:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev32 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %5 = ptrtoint ptr %platform_dev32 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platform_dev32, align 4
  %dev33 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.77, ptr noundef %urb) #13
  br label %cleanup244

if.else34:                                        ; preds = %if.else
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %7 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pipe, align 4
  %shr = lshr i32 %8, 8
  %9 = trunc i32 %shr to i8
  %conv35 = and i8 %9, 127
  %shr37 = lshr i32 %8, 15
  %10 = trunc i32 %shr37 to i8
  %conv39 = and i8 %10, 15
  %dev40 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %11 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev40, align 4
  %shr42 = lshr i32 %8, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr42)
  %cmp44 = icmp eq i32 %shr42, 1
  br i1 %cmp44, label %if.then46, label %if.else92

if.then46:                                        ; preds = %if.else34
  %idxprom = zext i8 %conv35 to i32
  %arrayidx = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 20, i32 %idxprom
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %idxprom49 = zext i8 %14 to i32
  %arrayidx50 = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 21, i32 %idxprom49
  %ep = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 9
  %15 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ep, align 4
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hcpriv, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %19 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %actual_length, align 4
  %tobool51.not = icmp eq ptr %18, null
  br i1 %tobool51.not, label %if.else83, label %if.then52

if.then52:                                        ; preds = %if.then46
  %queue_lock = getelementptr inbounds %struct.u132_endp, ptr %18, i32 0, i32 11
  %call62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #10
  %call67 = tail call i32 @usb_hcd_link_urb_to_ep(ptr noundef %hcd, ptr noundef %urb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp eq i32 %call67, 0
  br i1 %cmp68, label %if.then70, label %if.then52.if.end75.thread_crit_edge

if.then52.if.end75.thread_crit_edge:              ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75.thread

if.then70:                                        ; preds = %if.then52
  %hcpriv.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %20 = ptrtoint ptr %hcpriv.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %hcd_priv.i, ptr %hcpriv.i, align 4
  %delayed.i = getelementptr inbounds %struct.u132_endp, ptr %18, i32 0, i32 8
  %21 = ptrtoint ptr %delayed.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load.i = load i32, ptr %delayed.i, align 4
  %bf.set.i = or i32 %bf.load.i, 268435456
  store i32 %bf.set.i, ptr %delayed.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %interval.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 25
  %23 = ptrtoint ptr %interval.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %interval.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %24) #10
  %add.i = add i32 %call2.i.i, %22
  %jiffies.i = getelementptr inbounds %struct.u132_endp, ptr %18, i32 0, i32 9
  %25 = ptrtoint ptr %jiffies.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i, ptr %jiffies.i, align 4
  %queue_size.i = getelementptr inbounds %struct.u132_endp, ptr %18, i32 0, i32 12
  %26 = ptrtoint ptr %queue_size.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %queue_size.i, align 4
  %inc.i = add i16 %27, 1
  store i16 %inc.i, ptr %queue_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %27)
  %cmp.i354 = icmp ult i16 %27, 8
  br i1 %cmp.i354, label %if.then.i356, label %if.else.i357

if.then.i356:                                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  %queue_last.i = getelementptr inbounds %struct.u132_endp, ptr %18, i32 0, i32 13
  %28 = ptrtoint ptr %queue_last.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %queue_last.i, align 2
  %inc2.i = add i16 %29, 1
  store i16 %inc2.i, ptr %queue_last.i, align 2
  %30 = and i16 %29, 7
  %and.i355 = zext i16 %30 to i32
  %arrayidx.i = getelementptr %struct.u132_endp, ptr %18, i32 0, i32 15, i32 %and.i355
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %urb, ptr %arrayidx.i, align 4
  br label %if.else80

if.else.i357:                                     ; preds = %if.then70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 2592, i32 noundef 12) #14
  %cmp5.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp5.i, label %if.then73, label %if.else11.i

if.else11.i:                                      ; preds = %if.else.i357
  %urb_more12.i = getelementptr inbounds %struct.u132_endp, ptr %18, i32 0, i32 16
  %prev.i.i = getelementptr inbounds %struct.u132_endp, ptr %18, i32 0, i32 16, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %34, ptr noundef %urb_more12.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else11.i.cleanup.thread.i_crit_edge

if.else11.i.cleanup.thread.i_crit_edge:           ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

if.end.i.i.i:                                     ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %urb_more12.i, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %call7.i.i, ptr %34, align 4
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end.i.i.i, %if.else11.i.cleanup.thread.i_crit_edge
  %urb13.i = getelementptr inbounds %struct.u132_urbq, ptr %call7.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %urb13.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %urb, ptr %urb13.i, align 8
  br label %if.else80

if.then73:                                        ; preds = %if.else.i357
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %queue_size.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %queue_size.i, align 4
  %sub.i = add i16 %41, -1
  store i16 %sub.i, ptr %queue_size.i, align 4
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %hcd, ptr noundef %urb) #10
  br label %if.end75.thread

if.end75.thread:                                  ; preds = %if.then73, %if.then52.if.end75.thread_crit_edge
  %retval53.0.ph = phi i32 [ %call67, %if.then52.if.end75.thread_crit_edge ], [ -12, %if.then73 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call62) #10
  br label %cleanup244

if.else80:                                        ; preds = %cleanup.thread.i, %if.then.i356
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call62) #10
  %42 = ptrtoint ptr %interval.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %interval.i, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %43) #10
  %44 = load ptr, ptr @workqueue, align 4
  %scheduler.i = getelementptr inbounds %struct.u132_endp, ptr %18, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %44, ptr noundef %scheduler.i, i32 noundef %call2.i) #10
  br i1 %call.i.i, label %if.then.i358, label %if.else80.cleanup244_crit_edge

if.else80.cleanup244_crit_edge:                   ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup244

if.then.i358:                                     ; preds = %if.else80
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %18, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %18, i32 1, i32 3, i32 1) #10
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %18, ptr nonnull %18, i32 1, ptr nonnull elementtype(i32) %18) #10, !srcloc !526
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i358.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !527

if.then.i358.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i358
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i358
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %46 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %.not.i.i.i.i.i = icmp sgt i32 %46, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup244_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !523

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup244_crit_edge:           ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup244

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i358.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i358.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %18, i32 noundef %.sink.i.i.i.i.i) #10
  br label %cleanup244

if.else83:                                        ; preds = %if.then46
  %num_endpoints = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 5, i32 4, i32 7
  %47 = ptrtoint ptr %num_endpoints to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_endpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %48)
  %cmp84 = icmp eq i32 %48, 100
  br i1 %cmp84, label %if.else83.cleanup244_crit_edge, label %if.else87

if.else83.cleanup244_crit_edge:                   ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup244

if.else87:                                        ; preds = %if.else83
  %and.i.i.i = and i32 %mem_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %if.else87.kmalloc.exit.i_crit_edge, label %if.end.i.i.i360, !prof !523

if.else87.kmalloc.exit.i_crit_edge:               ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #12
  br label %kmalloc.exit.i

if.end.i.i.i360:                                  ; preds = %if.else87
  %and2.i.i.i = and i32 %mem_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i360.kmalloc.exit.i_crit_edge

if.end.i.i.i360.kmalloc.exit.i_crit_edge:         ; preds = %if.end.i.i.i360
  call void @__sanitizer_cov_trace_pc() #12
  br label %kmalloc.exit.i

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i360
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i.i.i = and i32 %mem_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kmalloc.exit.i

kmalloc.exit.i:                                   ; preds = %if.end5.i.i.i, %if.end.i.i.i360.kmalloc.exit.i_crit_edge, %if.else87.kmalloc.exit.i_crit_edge
  %retval.0.i20.i.i = phi i32 [ 0, %if.else87.kmalloc.exit.i_crit_edge ], [ 3, %if.end.i.i.i360.kmalloc.exit.i_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i.i, i32 8
  %49 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i361 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef %mem_flags, i32 noundef 228) #14
  %tobool.not.i = icmp eq ptr %call7.i.i361, null
  br i1 %tobool.not.i, label %kmalloc.exit.i.cleanup244_crit_edge, label %do.body.i

kmalloc.exit.i.cleanup244_crit_edge:              ; preds = %kmalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup244

do.body.i:                                        ; preds = %kmalloc.exit.i
  %queue_lock.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i361, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %queue_lock.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @create_endpoint_and_queue_int.__key, i16 noundef signext 3) #10
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock.i) #10
  %call13.i = tail call i32 @usb_hcd_link_urb_to_ep(ptr noundef %hcd, ptr noundef %urb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end18.i, label %if.then15.i

if.then15.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i, i32 noundef %call7.i) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i361) #10
  br label %cleanup244

if.end18.i:                                       ; preds = %do.body.i
  %51 = ptrtoint ptr %num_endpoints to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_endpoints, align 4
  %inc.i362 = add i32 %52, 1
  store i32 %inc.i362, ptr %num_endpoints, align 4
  %conv19.i = trunc i32 %inc.i362 to i8
  %conv21.i = and i32 %inc.i362, 255
  %sub.i363 = add nsw i32 %conv21.i, -1
  %arrayidx.i364 = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 23, i32 %sub.i363
  %53 = ptrtoint ptr %arrayidx.i364 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call7.i.i361, ptr %arrayidx.i364, align 4
  %54 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ep, align 4
  %hcpriv.i365 = getelementptr inbounds %struct.usb_host_endpoint, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %hcpriv.i365 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call7.i.i361, ptr %hcpriv.i365, align 4
  %scheduler.i366 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i361, i32 0, i32 17
  tail call void @__init_work(ptr noundef %scheduler.i366, i32 noundef 0) #10
  %57 = ptrtoint ptr %scheduler.i366 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -64, ptr %scheduler.i366, align 8
  %lockdep_map.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i361, i32 0, i32 17, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.86, ptr noundef nonnull @create_endpoint_and_queue_int.__key.85, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry30.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i361, i32 0, i32 17, i32 0, i32 1
  %58 = ptrtoint ptr %entry30.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %entry30.i, ptr %entry30.i, align 4
  %prev.i.i367 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i361, i32 0, i32 17, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %prev.i.i367 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %entry30.i, ptr %prev.i.i367, align 8
  %func.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i361, i32 0, i32 17, i32 0, i32 2
  %60 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @u132_hcd_endp_work_scheduler, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i361, i32 0, i32 17, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.88, ptr noundef nonnull @create_endpoint_and_queue_int.__key.87) #10
  %urb_more.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i361, i32 0, i32 16
  %61 = ptrtoint ptr %urb_more.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %urb_more.i, ptr %urb_more.i, align 8
  %prev.i10.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i361, i32 0, i32 16, i32 1
  %62 = ptrtoint ptr %prev.i10.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %urb_more.i, ptr %prev.i10.i, align 4
  %ring41.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 16
  %ring43.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i361, i32 0, i32 7
  %63 = ptrtoint ptr %ring43.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %ring41.i, ptr %ring43.i, align 4
  %curr_endp.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 5
  %64 = ptrtoint ptr %curr_endp.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %curr_endp.i, align 4
  %tobool44.not.i = icmp eq ptr %65, null
  %endp_ring48.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i361, i32 0, i32 6
  br i1 %tobool44.not.i, label %if.else.i370, label %if.then45.i

if.then45.i:                                      ; preds = %if.end18.i
  %endp_ring47.i = getelementptr inbounds %struct.u132_endp, ptr %65, i32 0, i32 6
  %prev.i11.i = getelementptr inbounds %struct.u132_endp, ptr %65, i32 0, i32 6, i32 1
  %66 = ptrtoint ptr %prev.i11.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i11.i, align 4
  %call.i.i.i368 = tail call zeroext i1 @__list_add_valid(ptr noundef %endp_ring48.i, ptr noundef %67, ptr noundef %endp_ring47.i) #10
  br i1 %call.i.i.i368, label %if.end.i.i12.i, label %if.then45.i.if.end50.i_crit_edge

if.then45.i.if.end50.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

if.end.i.i12.i:                                   ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %prev.i11.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %endp_ring48.i, ptr %prev.i11.i, align 4
  %69 = ptrtoint ptr %endp_ring48.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %endp_ring47.i, ptr %endp_ring48.i, align 4
  %prev3.i.i.i369 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i361, i32 0, i32 6, i32 1
  %70 = ptrtoint ptr %prev3.i.i.i369 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev3.i.i.i369, align 8
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %endp_ring48.i, ptr %67, align 4
  br label %if.end50.i

if.else.i370:                                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %endp_ring48.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %endp_ring48.i, ptr %endp_ring48.i, align 4
  %prev.i13.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i361, i32 0, i32 6, i32 1
  %73 = ptrtoint ptr %prev.i13.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %endp_ring48.i, ptr %prev.i13.i, align 8
  %74 = ptrtoint ptr %curr_endp.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call7.i.i361, ptr %curr_endp.i, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.else.i370, %if.end.i.i12.i, %if.then45.i.if.end50.i_crit_edge
  %75 = ptrtoint ptr %ring41.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load.i371 = load i8, ptr %ring41.i, align 4
  %narrow.i = add i8 %bf.load.i371, 1
  %bf.value.i = and i8 %narrow.i, 127
  %bf.clear52.i = and i8 %bf.load.i371, -128
  %bf.set.i372 = or i8 %bf.value.i, %bf.clear52.i
  store i8 %bf.set.i372, ptr %ring41.i, align 4
  %dequeueing.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i361, i32 0, i32 8
  %76 = ptrtoint ptr %dequeueing.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %bf.load53.i = load i32, ptr %dequeueing.i, align 8
  %endp_number65.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i361, i32 0, i32 2
  %77 = ptrtoint ptr %endp_number65.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv19.i, ptr %endp_number65.i, align 1
  %u13266.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i361, i32 0, i32 5
  %78 = ptrtoint ptr %u13266.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %hcd_priv.i, ptr %u13266.i, align 8
  %79 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ep, align 4
  %hep.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i361, i32 0, i32 10
  %81 = ptrtoint ptr %hep.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %hep.i, align 8
  %82 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pipe, align 4
  %84 = lshr i32 %83, 6
  %bf.shl.i = and i32 %84, 50331648
  %bf.clear70.i = and i32 %bf.load53.i, -868220929
  %bf.set71.i = or i32 %bf.shl.i, %bf.clear70.i
  store i32 %bf.set71.i, ptr %dequeueing.i, align 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i361, i32 noundef 4) #10
  %85 = ptrtoint ptr %call7.i.i361 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 1, ptr %call7.i.i361, align 8
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hcd_priv.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %hcd_priv.i, i32 1, i32 3, i32 1) #10
  %86 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hcd_priv.i, ptr %hcd_priv.i, i32 1, ptr elementtype(i32) %hcd_priv.i) #10, !srcloc !526
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end50.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !527

if.end50.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end50.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %87 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %87)
  %.not.i.i.i.i.i.i = icmp sgt i32 %87, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.u132_endp_init_kref.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !523

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.u132_endp_init_kref.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_endp_init_kref.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end50.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end50.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %hcd_priv.i, i32 noundef %.sink.i.i.i.i.i.i) #10
  br label %u132_endp_init_kref.exit.i

u132_endp_init_kref.exit.i:                       ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.u132_endp_init_kref.exit.i_crit_edge
  %88 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pipe, align 4
  %and73.i = and i32 %89, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  %90 = ptrtoint ptr %dequeueing.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %bf.load96.i = load i32, ptr %dequeueing.i, align 8
  %bf.clear97.i = and i32 %bf.load96.i, 1073741823
  %bf.set98.i = or i32 %bf.clear97.i, -2147483648
  store i32 %bf.set98.i, ptr %dequeueing.i, align 8
  %usb_device99.i = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 21, i32 %idxprom49, i32 1
  %91 = ptrtoint ptr %usb_device99.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %usb_device99.i, align 4
  br i1 %tobool74.not.i, label %if.else94.i, label %if.then75.i

if.then75.i:                                      ; preds = %u132_endp_init_kref.exit.i
  %toggle.i = getelementptr inbounds %struct.usb_device, ptr %92, i32 0, i32 10
  %93 = ptrtoint ptr %toggle.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %toggle.i, align 4
  %conv80.i = zext i8 %conv39 to i32
  %shl.i = shl nuw nsw i32 1, %conv80.i
  %neg.i = xor i32 %shl.i, -1
  %and81.i = and i32 %94, %neg.i
  store i32 %and81.i, ptr %toggle.i, align 4
  %95 = ptrtoint ptr %dequeueing.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %bf.load87.i = load i32, ptr %dequeueing.i, align 8
  %bf.set89.i = and i32 %bf.load87.i, -201326593
  %bf.clear91.i = or i32 %bf.set89.i, 134217728
  store i32 %bf.clear91.i, ptr %dequeueing.i, align 8
  %arrayidx93.i = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 21, i32 %idxprom49, i32 6, i32 %conv80.i
  %96 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv19.i, ptr %arrayidx93.i, align 1
  %call.i.i.i.i.i.i.i14.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx50, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %arrayidx50, i32 1, i32 3, i32 1) #10
  %97 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx50, ptr %arrayidx50, i32 1, ptr elementtype(i32) %arrayidx50) #10, !srcloc !526
  %asmresult.i.i.i.i.i.i.i15.i = extractvalue { i32, i32, i32 } %97, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i15.i)
  %tobool1.not.i.i.i.i.i16.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i15.i, 0
  br i1 %tobool1.not.i.i.i.i.i16.i, label %if.then75.i.if.end122.sink.split.i_crit_edge, label %if.else.i.i.i.i.i19.i, !prof !527

if.then75.i.if.end122.sink.split.i_crit_edge:     ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122.sink.split.i

if.else.i.i.i.i.i19.i:                            ; preds = %if.then75.i
  %add.i.i.i.i.i17.i = add i32 %asmresult.i.i.i.i.i.i.i15.i, 1
  %98 = or i32 %add.i.i.i.i.i17.i, %asmresult.i.i.i.i.i.i.i15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %98)
  %.not.i.i.i.i.i18.i = icmp sgt i32 %98, -1
  br i1 %.not.i.i.i.i.i18.i, label %if.else.i.i.i.i.i19.i.if.end122.i_crit_edge, label %if.else.i.i.i.i.i19.i.if.end122.sink.split.i_crit_edge, !prof !523

if.else.i.i.i.i.i19.i.if.end122.sink.split.i_crit_edge: ; preds = %if.else.i.i.i.i.i19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122.sink.split.i

if.else.i.i.i.i.i19.i.if.end122.i_crit_edge:      ; preds = %if.else.i.i.i.i.i19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122.i

if.else94.i:                                      ; preds = %u132_endp_init_kref.exit.i
  %arrayidx101.i = getelementptr %struct.usb_device, ptr %92, i32 0, i32 10, i32 1
  %99 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx101.i, align 4
  %conv102.i = zext i8 %conv39 to i32
  %shl103.i = shl nuw nsw i32 1, %conv102.i
  %neg104.i = xor i32 %shl103.i, -1
  %and105.i = and i32 %100, %neg104.i
  store i32 %and105.i, ptr %arrayidx101.i, align 4
  %101 = ptrtoint ptr %dequeueing.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %bf.load113.i = load i32, ptr %dequeueing.i, align 8
  %bf.clear118.i = and i32 %bf.load113.i, -201326593
  %bf.set119.i = or i32 %bf.clear118.i, 67108864
  store i32 %bf.set119.i, ptr %dequeueing.i, align 8
  %arrayidx121.i = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 21, i32 %idxprom49, i32 7, i32 %conv102.i
  %102 = ptrtoint ptr %arrayidx121.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv19.i, ptr %arrayidx121.i, align 1
  %call.i.i.i.i.i.i.i22.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx50, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %arrayidx50, i32 1, i32 3, i32 1) #10
  %103 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx50, ptr %arrayidx50, i32 1, ptr elementtype(i32) %arrayidx50) #10, !srcloc !526
  %asmresult.i.i.i.i.i.i.i23.i = extractvalue { i32, i32, i32 } %103, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i23.i)
  %tobool1.not.i.i.i.i.i24.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i23.i, 0
  br i1 %tobool1.not.i.i.i.i.i24.i, label %if.else94.i.if.end122.sink.split.i_crit_edge, label %if.else.i.i.i.i.i27.i, !prof !527

if.else94.i.if.end122.sink.split.i_crit_edge:     ; preds = %if.else94.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122.sink.split.i

if.else.i.i.i.i.i27.i:                            ; preds = %if.else94.i
  %add.i.i.i.i.i25.i = add i32 %asmresult.i.i.i.i.i.i.i23.i, 1
  %104 = or i32 %add.i.i.i.i.i25.i, %asmresult.i.i.i.i.i.i.i23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %104)
  %.not.i.i.i.i.i26.i = icmp sgt i32 %104, -1
  br i1 %.not.i.i.i.i.i26.i, label %if.else.i.i.i.i.i27.i.if.end122.i_crit_edge, label %if.else.i.i.i.i.i27.i.if.end122.sink.split.i_crit_edge, !prof !523

if.else.i.i.i.i.i27.i.if.end122.sink.split.i_crit_edge: ; preds = %if.else.i.i.i.i.i27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122.sink.split.i

if.else.i.i.i.i.i27.i.if.end122.i_crit_edge:      ; preds = %if.else.i.i.i.i.i27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122.i

if.end122.sink.split.i:                           ; preds = %if.else.i.i.i.i.i27.i.if.end122.sink.split.i_crit_edge, %if.else94.i.if.end122.sink.split.i_crit_edge, %if.else.i.i.i.i.i19.i.if.end122.sink.split.i_crit_edge, %if.then75.i.if.end122.sink.split.i_crit_edge
  %.sink.i.i.i.i.i28.sink.i = phi i32 [ 2, %if.then75.i.if.end122.sink.split.i_crit_edge ], [ 1, %if.else.i.i.i.i.i19.i.if.end122.sink.split.i_crit_edge ], [ 2, %if.else94.i.if.end122.sink.split.i_crit_edge ], [ 1, %if.else.i.i.i.i.i27.i.if.end122.sink.split.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %arrayidx50, i32 noundef %.sink.i.i.i.i.i28.sink.i) #10
  br label %if.end122.i

if.end122.i:                                      ; preds = %if.end122.sink.split.i, %if.else.i.i.i.i.i27.i.if.end122.i_crit_edge, %if.else.i.i.i.i.i19.i.if.end122.i_crit_edge
  %hcpriv123.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %105 = ptrtoint ptr %hcpriv123.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %hcd_priv.i, ptr %hcpriv123.i, align 4
  %106 = ptrtoint ptr %dequeueing.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %bf.load125.i = load i32, ptr %dequeueing.i, align 8
  %bf.set127.i = or i32 %bf.load125.i, 268435456
  store i32 %bf.set127.i, ptr %dequeueing.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %107 = load volatile i32, ptr @jiffies, align 128
  %interval.i373 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 25
  %108 = ptrtoint ptr %interval.i373 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %interval.i373, align 4
  %call2.i.i379 = tail call i32 @__msecs_to_jiffies(i32 noundef %109) #10
  %add129.i = add i32 %call2.i.i379, %107
  %jiffies.i382 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i361, i32 0, i32 9
  %110 = ptrtoint ptr %jiffies.i382 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %add129.i, ptr %jiffies.i382, align 4
  %udev_number.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i361, i32 0, i32 1
  %111 = ptrtoint ptr %udev_number.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %14, ptr %udev_number.i, align 4
  %usb_addr130.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i361, i32 0, i32 3
  %112 = ptrtoint ptr %usb_addr130.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv35, ptr %usb_addr130.i, align 2
  %usb_endp131.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i361, i32 0, i32 4
  %113 = ptrtoint ptr %usb_endp131.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv39, ptr %usb_endp131.i, align 1
  %queue_size.i383 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i361, i32 0, i32 12
  %114 = ptrtoint ptr %queue_size.i383 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 1, ptr %queue_size.i383, align 8
  %queue_last.i384 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i361, i32 0, i32 13
  %queue_next.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i361, i32 0, i32 14
  %115 = ptrtoint ptr %queue_next.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 0, ptr %queue_next.i, align 4
  %urb_list.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i361, i32 0, i32 15
  %116 = ptrtoint ptr %queue_last.i384 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 1, ptr %queue_last.i384, align 2
  %117 = ptrtoint ptr %urb_list.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %urb, ptr %urb_list.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i, i32 noundef %call7.i) #10
  %118 = ptrtoint ptr %interval.i373 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %interval.i373, align 4
  %call2.i6.i = tail call i32 @__msecs_to_jiffies(i32 noundef %119) #10
  %120 = load ptr, ptr @workqueue, align 4
  %call.i.i31.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %120, ptr noundef %scheduler.i366, i32 noundef %call2.i6.i) #10
  br i1 %call.i.i31.i, label %if.then.i35.i, label %if.end122.i.cleanup244_crit_edge

if.end122.i.cleanup244_crit_edge:                 ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup244

if.then.i35.i:                                    ; preds = %if.end122.i
  %call.i.i.i.i.i.i.i32.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i361, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %call7.i.i361, i32 1, i32 3, i32 1) #10
  %121 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7.i.i361, ptr nonnull %call7.i.i361, i32 1, ptr nonnull elementtype(i32) %call7.i.i361) #10, !srcloc !526
  %asmresult.i.i.i.i.i.i.i33.i = extractvalue { i32, i32, i32 } %121, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i33.i)
  %tobool1.not.i.i.i.i.i34.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i33.i, 0
  br i1 %tobool1.not.i.i.i.i.i34.i, label %if.then.i35.i.if.end15.sink.split.i.i.i.i.i40.i_crit_edge, label %if.else.i.i.i.i.i38.i, !prof !527

if.then.i35.i.if.end15.sink.split.i.i.i.i.i40.i_crit_edge: ; preds = %if.then.i35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i40.i

if.else.i.i.i.i.i38.i:                            ; preds = %if.then.i35.i
  %add.i.i.i.i.i36.i = add i32 %asmresult.i.i.i.i.i.i.i33.i, 1
  %122 = or i32 %add.i.i.i.i.i36.i, %asmresult.i.i.i.i.i.i.i33.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %122)
  %.not.i.i.i.i.i37.i = icmp sgt i32 %122, -1
  br i1 %.not.i.i.i.i.i37.i, label %if.else.i.i.i.i.i38.i.cleanup244_crit_edge, label %if.else.i.i.i.i.i38.i.if.end15.sink.split.i.i.i.i.i40.i_crit_edge, !prof !523

if.else.i.i.i.i.i38.i.if.end15.sink.split.i.i.i.i.i40.i_crit_edge: ; preds = %if.else.i.i.i.i.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i40.i

if.else.i.i.i.i.i38.i.cleanup244_crit_edge:       ; preds = %if.else.i.i.i.i.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup244

if.end15.sink.split.i.i.i.i.i40.i:                ; preds = %if.else.i.i.i.i.i38.i.if.end15.sink.split.i.i.i.i.i40.i_crit_edge, %if.then.i35.i.if.end15.sink.split.i.i.i.i.i40.i_crit_edge
  %.sink.i.i.i.i.i39.i = phi i32 [ 2, %if.then.i35.i.if.end15.sink.split.i.i.i.i.i40.i_crit_edge ], [ 1, %if.else.i.i.i.i.i38.i.if.end15.sink.split.i.i.i.i.i40.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call7.i.i361, i32 noundef %.sink.i.i.i.i.i39.i) #10
  br label %cleanup244

if.else92:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %8)
  %cmp96 = icmp ult i32 %8, 1073741824
  br i1 %cmp96, label %do.end101, label %if.else104

do.end101:                                        ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev102 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %123 = ptrtoint ptr %platform_dev102 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %platform_dev102, align 4
  %dev103 = getelementptr inbounds %struct.platform_device, ptr %124, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev103, ptr noundef nonnull @.str.80) #13
  br label %cleanup244

if.else104:                                       ; preds = %if.else92
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr42)
  %cmp108 = icmp eq i32 %shr42, 3
  br i1 %cmp108, label %if.then110, label %if.end190.7

if.then110:                                       ; preds = %if.else104
  %idxprom113 = zext i8 %conv35 to i32
  %arrayidx114 = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 20, i32 %idxprom113
  %125 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx114, align 1
  %idxprom118 = zext i8 %126 to i32
  %arrayidx119 = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 21, i32 %idxprom118
  %ep121 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 9
  %127 = ptrtoint ptr %ep121 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ep121, align 4
  %hcpriv122 = getelementptr inbounds %struct.usb_host_endpoint, ptr %128, i32 0, i32 5
  %129 = ptrtoint ptr %hcpriv122 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %hcpriv122, align 4
  %actual_length123 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %131 = ptrtoint ptr %actual_length123 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %actual_length123, align 4
  %tobool124.not = icmp eq ptr %130, null
  br i1 %tobool124.not, label %if.else159, label %if.then125

if.then125:                                       ; preds = %if.then110
  %queue_lock135 = getelementptr inbounds %struct.u132_endp, ptr %130, i32 0, i32 11
  %call138 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock135) #10
  %call143 = tail call i32 @usb_hcd_link_urb_to_ep(ptr noundef %hcd, ptr noundef %urb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %cmp144 = icmp eq i32 %call143, 0
  br i1 %cmp144, label %if.then146, label %if.then125.if.end151.thread_crit_edge

if.then125.if.end151.thread_crit_edge:            ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end151.thread

if.then146:                                       ; preds = %if.then125
  %hcpriv.i388 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %132 = ptrtoint ptr %hcpriv.i388 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %hcd_priv.i, ptr %hcpriv.i388, align 4
  %queue_size.i389 = getelementptr inbounds %struct.u132_endp, ptr %130, i32 0, i32 12
  %133 = ptrtoint ptr %queue_size.i389 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %queue_size.i389, align 4
  %inc.i390 = add i16 %134, 1
  store i16 %inc.i390, ptr %queue_size.i389, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %134)
  %cmp.i391 = icmp ult i16 %134, 8
  br i1 %cmp.i391, label %if.then.i396, label %if.else.i398

if.then.i396:                                     ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #12
  %queue_last.i392 = getelementptr inbounds %struct.u132_endp, ptr %130, i32 0, i32 13
  %135 = ptrtoint ptr %queue_last.i392 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %queue_last.i392, align 2
  %inc2.i393 = add i16 %136, 1
  store i16 %inc2.i393, ptr %queue_last.i392, align 2
  %137 = and i16 %136, 7
  %and.i394 = zext i16 %137 to i32
  %arrayidx.i395 = getelementptr %struct.u132_endp, ptr %130, i32 0, i32 15, i32 %and.i394
  %138 = ptrtoint ptr %arrayidx.i395 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %urb, ptr %arrayidx.i395, align 4
  br label %if.else156

if.else.i398:                                     ; preds = %if.then146
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %139 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i397 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %139, i32 noundef 2592, i32 noundef 12) #14
  %cmp4.i = icmp eq ptr %call7.i.i397, null
  br i1 %cmp4.i, label %if.then149, label %if.else10.i

if.else10.i:                                      ; preds = %if.else.i398
  %urb_more11.i = getelementptr inbounds %struct.u132_endp, ptr %130, i32 0, i32 16
  %prev.i.i399 = getelementptr inbounds %struct.u132_endp, ptr %130, i32 0, i32 16, i32 1
  %140 = ptrtoint ptr %prev.i.i399 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %prev.i.i399, align 4
  %call.i.i.i400 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i397, ptr noundef %141, ptr noundef %urb_more11.i) #10
  br i1 %call.i.i.i400, label %if.end.i.i.i402, label %if.else10.i.cleanup.thread.i403_crit_edge

if.else10.i.cleanup.thread.i403_crit_edge:        ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i403

if.end.i.i.i402:                                  ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #12
  %142 = ptrtoint ptr %prev.i.i399 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %call7.i.i397, ptr %prev.i.i399, align 4
  %143 = ptrtoint ptr %call7.i.i397 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %urb_more11.i, ptr %call7.i.i397, align 8
  %prev3.i.i.i401 = getelementptr inbounds %struct.list_head, ptr %call7.i.i397, i32 0, i32 1
  %144 = ptrtoint ptr %prev3.i.i.i401 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %141, ptr %prev3.i.i.i401, align 4
  %145 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile ptr %call7.i.i397, ptr %141, align 4
  br label %cleanup.thread.i403

cleanup.thread.i403:                              ; preds = %if.end.i.i.i402, %if.else10.i.cleanup.thread.i403_crit_edge
  %urb12.i = getelementptr inbounds %struct.u132_urbq, ptr %call7.i.i397, i32 0, i32 1
  %146 = ptrtoint ptr %urb12.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %urb, ptr %urb12.i, align 8
  br label %if.else156

if.then149:                                       ; preds = %if.else.i398
  call void @__sanitizer_cov_trace_pc() #12
  %147 = ptrtoint ptr %queue_size.i389 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %queue_size.i389, align 4
  %sub.i404 = add i16 %148, -1
  store i16 %sub.i404, ptr %queue_size.i389, align 4
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %hcd, ptr noundef %urb) #10
  br label %if.end151.thread

if.end151.thread:                                 ; preds = %if.then149, %if.then125.if.end151.thread_crit_edge
  %retval127.0.ph = phi i32 [ %call143, %if.then125.if.end151.thread_crit_edge ], [ -12, %if.then149 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock135, i32 noundef %call138) #10
  br label %cleanup244

if.else156:                                       ; preds = %cleanup.thread.i403, %if.then.i396
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock135, i32 noundef %call138) #10
  %149 = load ptr, ptr @workqueue, align 4
  %scheduler.i407 = getelementptr inbounds %struct.u132_endp, ptr %130, i32 0, i32 17
  %call.i.i408 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %149, ptr noundef %scheduler.i407, i32 noundef 0) #10
  br i1 %call.i.i408, label %if.then.i412, label %if.else156.cleanup244_crit_edge

if.else156.cleanup244_crit_edge:                  ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup244

if.then.i412:                                     ; preds = %if.else156
  %call.i.i.i.i.i.i.i409 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %130, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %130, i32 1, i32 3, i32 1) #10
  %150 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %130, ptr nonnull %130, i32 1, ptr nonnull elementtype(i32) %130) #10, !srcloc !526
  %asmresult.i.i.i.i.i.i.i410 = extractvalue { i32, i32, i32 } %150, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i410)
  %tobool1.not.i.i.i.i.i411 = icmp eq i32 %asmresult.i.i.i.i.i.i.i410, 0
  br i1 %tobool1.not.i.i.i.i.i411, label %if.then.i412.if.end15.sink.split.i.i.i.i.i417_crit_edge, label %if.else.i.i.i.i.i415, !prof !527

if.then.i412.if.end15.sink.split.i.i.i.i.i417_crit_edge: ; preds = %if.then.i412
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i417

if.else.i.i.i.i.i415:                             ; preds = %if.then.i412
  %add.i.i.i.i.i413 = add i32 %asmresult.i.i.i.i.i.i.i410, 1
  %151 = or i32 %add.i.i.i.i.i413, %asmresult.i.i.i.i.i.i.i410
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %151)
  %.not.i.i.i.i.i414 = icmp sgt i32 %151, -1
  br i1 %.not.i.i.i.i.i414, label %if.else.i.i.i.i.i415.cleanup244_crit_edge, label %if.else.i.i.i.i.i415.if.end15.sink.split.i.i.i.i.i417_crit_edge, !prof !523

if.else.i.i.i.i.i415.if.end15.sink.split.i.i.i.i.i417_crit_edge: ; preds = %if.else.i.i.i.i.i415
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i417

if.else.i.i.i.i.i415.cleanup244_crit_edge:        ; preds = %if.else.i.i.i.i.i415
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup244

if.end15.sink.split.i.i.i.i.i417:                 ; preds = %if.else.i.i.i.i.i415.if.end15.sink.split.i.i.i.i.i417_crit_edge, %if.then.i412.if.end15.sink.split.i.i.i.i.i417_crit_edge
  %.sink.i.i.i.i.i416 = phi i32 [ 2, %if.then.i412.if.end15.sink.split.i.i.i.i.i417_crit_edge ], [ 1, %if.else.i.i.i.i.i415.if.end15.sink.split.i.i.i.i.i417_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %130, i32 noundef %.sink.i.i.i.i.i416) #10
  br label %cleanup244

if.else159:                                       ; preds = %if.then110
  %num_endpoints160 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 5, i32 4, i32 7
  %152 = ptrtoint ptr %num_endpoints160 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %num_endpoints160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %153)
  %cmp161 = icmp eq i32 %153, 100
  br i1 %cmp161, label %if.else159.cleanup244_crit_edge, label %if.else164

if.else159.cleanup244_crit_edge:                  ; preds = %if.else159
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup244

if.else164:                                       ; preds = %if.else159
  %and.i.i.i420 = and i32 %mem_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i420)
  %cmp.i19.i.i421 = icmp eq i32 %and.i.i.i420, 0
  br i1 %cmp.i19.i.i421, label %if.else164.kmalloc.exit.i433_crit_edge, label %if.end.i.i.i424, !prof !523

if.else164.kmalloc.exit.i433_crit_edge:           ; preds = %if.else164
  call void @__sanitizer_cov_trace_pc() #12
  br label %kmalloc.exit.i433

if.end.i.i.i424:                                  ; preds = %if.else164
  %and2.i.i.i422 = and i32 %mem_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i422)
  %tobool3.not.i.i.i423 = icmp eq i32 %and2.i.i.i422, 0
  br i1 %tobool3.not.i.i.i423, label %if.end5.i.i.i428, label %if.end.i.i.i424.kmalloc.exit.i433_crit_edge

if.end.i.i.i424.kmalloc.exit.i433_crit_edge:      ; preds = %if.end.i.i.i424
  call void @__sanitizer_cov_trace_pc() #12
  br label %kmalloc.exit.i433

if.end5.i.i.i428:                                 ; preds = %if.end.i.i.i424
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i.i.i425 = and i32 %mem_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i425)
  %tobool7.not.i.i.i426 = icmp eq i32 %and6.i.i.i425, 0
  %..i.i.i427 = select i1 %tobool7.not.i.i.i426, i32 1, i32 2
  br label %kmalloc.exit.i433

kmalloc.exit.i433:                                ; preds = %if.end5.i.i.i428, %if.end.i.i.i424.kmalloc.exit.i433_crit_edge, %if.else164.kmalloc.exit.i433_crit_edge
  %retval.0.i20.i.i429 = phi i32 [ 0, %if.else164.kmalloc.exit.i433_crit_edge ], [ 3, %if.end.i.i.i424.kmalloc.exit.i433_crit_edge ], [ %..i.i.i427, %if.end5.i.i.i428 ]
  %arrayidx6.i.i430 = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i.i429, i32 8
  %154 = ptrtoint ptr %arrayidx6.i.i430 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx6.i.i430, align 4
  %call7.i.i431 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %155, i32 noundef %mem_flags, i32 noundef 228) #14
  %tobool.not.i432 = icmp eq ptr %call7.i.i431, null
  br i1 %tobool.not.i432, label %kmalloc.exit.i433.cleanup244_crit_edge, label %do.body.i439

kmalloc.exit.i433.cleanup244_crit_edge:           ; preds = %kmalloc.exit.i433
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup244

do.body.i439:                                     ; preds = %kmalloc.exit.i433
  %queue_lock.i434 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i431, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %queue_lock.i434, ptr noundef nonnull @.str.84, ptr noundef nonnull @create_endpoint_and_queue_bulk.__key, i16 noundef signext 3) #10
  %call7.i435 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock.i434) #10
  %call13.i437 = tail call i32 @usb_hcd_link_urb_to_ep(ptr noundef %hcd, ptr noundef %urb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i437)
  %tobool14.not.i438 = icmp eq i32 %call13.i437, 0
  br i1 %tobool14.not.i438, label %if.end18.i465, label %if.then15.i440

if.then15.i440:                                   ; preds = %do.body.i439
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i434, i32 noundef %call7.i435) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i431) #10
  br label %cleanup244

if.end18.i465:                                    ; preds = %do.body.i439
  %156 = ptrtoint ptr %num_endpoints160 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %num_endpoints160, align 4
  %inc.i442 = add i32 %157, 1
  store i32 %inc.i442, ptr %num_endpoints160, align 4
  %conv19.i443 = trunc i32 %inc.i442 to i8
  %conv21.i444 = and i32 %inc.i442, 255
  %sub.i445 = add nsw i32 %conv21.i444, -1
  %arrayidx.i446 = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 23, i32 %sub.i445
  %158 = ptrtoint ptr %arrayidx.i446 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %call7.i.i431, ptr %arrayidx.i446, align 4
  %159 = ptrtoint ptr %ep121 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ep121, align 4
  %hcpriv.i448 = getelementptr inbounds %struct.usb_host_endpoint, ptr %160, i32 0, i32 5
  %161 = ptrtoint ptr %hcpriv.i448 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %call7.i.i431, ptr %hcpriv.i448, align 4
  %scheduler.i449 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i431, i32 0, i32 17
  tail call void @__init_work(ptr noundef %scheduler.i449, i32 noundef 0) #10
  %162 = ptrtoint ptr %scheduler.i449 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 -64, ptr %scheduler.i449, align 8
  %lockdep_map.i450 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i431, i32 0, i32 17, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i450, ptr noundef nonnull @.str.86, ptr noundef nonnull @create_endpoint_and_queue_bulk.__key.182, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry30.i451 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i431, i32 0, i32 17, i32 0, i32 1
  %163 = ptrtoint ptr %entry30.i451 to i32
  call void @__asan_store4_noabort(i32 %163)
  store volatile ptr %entry30.i451, ptr %entry30.i451, align 4
  %prev.i.i452 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i431, i32 0, i32 17, i32 0, i32 1, i32 1
  %164 = ptrtoint ptr %prev.i.i452 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %entry30.i451, ptr %prev.i.i452, align 8
  %func.i453 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i431, i32 0, i32 17, i32 0, i32 2
  %165 = ptrtoint ptr %func.i453 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr @u132_hcd_endp_work_scheduler, ptr %func.i453, align 4
  %timer.i454 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i431, i32 0, i32 17, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i454, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.88, ptr noundef nonnull @create_endpoint_and_queue_bulk.__key.183) #10
  %urb_more.i455 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i431, i32 0, i32 16
  %166 = ptrtoint ptr %urb_more.i455 to i32
  call void @__asan_store4_noabort(i32 %166)
  store volatile ptr %urb_more.i455, ptr %urb_more.i455, align 8
  %prev.i1.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i431, i32 0, i32 16, i32 1
  %167 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %urb_more.i455, ptr %prev.i1.i, align 4
  %dequeueing.i456 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i431, i32 0, i32 8
  %168 = ptrtoint ptr %dequeueing.i456 to i32
  call void @__asan_load4_noabort(i32 %168)
  %bf.load.i457 = load i32, ptr %dequeueing.i456, align 8
  %endp_number50.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i431, i32 0, i32 2
  %169 = ptrtoint ptr %endp_number50.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %conv19.i443, ptr %endp_number50.i, align 1
  %u13251.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i431, i32 0, i32 5
  %170 = ptrtoint ptr %u13251.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %hcd_priv.i, ptr %u13251.i, align 8
  %171 = ptrtoint ptr %ep121 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ep121, align 4
  %hep.i458 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i431, i32 0, i32 10
  %173 = ptrtoint ptr %hep.i458 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %172, ptr %hep.i458, align 8
  %174 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %pipe, align 4
  %176 = lshr i32 %175, 6
  %bf.shl.i460 = and i32 %176, 50331648
  %bf.clear54.i = and i32 %bf.load.i457, -868220929
  %bf.set55.i = or i32 %bf.shl.i460, %bf.clear54.i
  store i32 %bf.set55.i, ptr %dequeueing.i456, align 8
  %call.i.i.i.i.i.i461 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i431, i32 noundef 4) #10
  %177 = ptrtoint ptr %call7.i.i431 to i32
  call void @__asan_store4_noabort(i32 %177)
  store volatile i32 1, ptr %call7.i.i431, align 8
  %call.i.i.i.i.i.i.i.i462 = tail call zeroext i1 @__kasan_check_write(ptr noundef %hcd_priv.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %hcd_priv.i, i32 1, i32 3, i32 1) #10
  %178 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hcd_priv.i, ptr %hcd_priv.i, i32 1, ptr elementtype(i32) %hcd_priv.i) #10, !srcloc !526
  %asmresult.i.i.i.i.i.i.i.i463 = extractvalue { i32, i32, i32 } %178, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i463)
  %tobool1.not.i.i.i.i.i.i464 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i463, 0
  br i1 %tobool1.not.i.i.i.i.i.i464, label %if.end18.i465.if.end15.sink.split.i.i.i.i.i.i470_crit_edge, label %if.else.i.i.i.i.i.i468, !prof !527

if.end18.i465.if.end15.sink.split.i.i.i.i.i.i470_crit_edge: ; preds = %if.end18.i465
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i470

if.else.i.i.i.i.i.i468:                           ; preds = %if.end18.i465
  %add.i.i.i.i.i.i466 = add i32 %asmresult.i.i.i.i.i.i.i.i463, 1
  %179 = or i32 %add.i.i.i.i.i.i466, %asmresult.i.i.i.i.i.i.i.i463
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %179)
  %.not.i.i.i.i.i.i467 = icmp sgt i32 %179, -1
  br i1 %.not.i.i.i.i.i.i467, label %if.else.i.i.i.i.i.i468.u132_endp_init_kref.exit.i471_crit_edge, label %if.else.i.i.i.i.i.i468.if.end15.sink.split.i.i.i.i.i.i470_crit_edge, !prof !523

if.else.i.i.i.i.i.i468.if.end15.sink.split.i.i.i.i.i.i470_crit_edge: ; preds = %if.else.i.i.i.i.i.i468
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i470

if.else.i.i.i.i.i.i468.u132_endp_init_kref.exit.i471_crit_edge: ; preds = %if.else.i.i.i.i.i.i468
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_endp_init_kref.exit.i471

if.end15.sink.split.i.i.i.i.i.i470:               ; preds = %if.else.i.i.i.i.i.i468.if.end15.sink.split.i.i.i.i.i.i470_crit_edge, %if.end18.i465.if.end15.sink.split.i.i.i.i.i.i470_crit_edge
  %.sink.i.i.i.i.i.i469 = phi i32 [ 2, %if.end18.i465.if.end15.sink.split.i.i.i.i.i.i470_crit_edge ], [ 1, %if.else.i.i.i.i.i.i468.if.end15.sink.split.i.i.i.i.i.i470_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %hcd_priv.i, i32 noundef %.sink.i.i.i.i.i.i469) #10
  br label %u132_endp_init_kref.exit.i471

u132_endp_init_kref.exit.i471:                    ; preds = %if.end15.sink.split.i.i.i.i.i.i470, %if.else.i.i.i.i.i.i468.u132_endp_init_kref.exit.i471_crit_edge
  %180 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %pipe, align 4
  %and57.i = and i32 %181, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  %182 = ptrtoint ptr %dequeueing.i456 to i32
  call void @__asan_load4_noabort(i32 %182)
  %bf.load79.i = load i32, ptr %dequeueing.i456, align 8
  %bf.clear80.i = and i32 %bf.load79.i, 1073741823
  %bf.set81.i = or i32 %bf.clear80.i, -2147483648
  store i32 %bf.set81.i, ptr %dequeueing.i456, align 8
  %usb_device82.i = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 21, i32 %idxprom118, i32 1
  %183 = ptrtoint ptr %usb_device82.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %usb_device82.i, align 4
  br i1 %tobool58.not.i, label %if.else.i476, label %if.then59.i

if.then59.i:                                      ; preds = %u132_endp_init_kref.exit.i471
  %toggle.i472 = getelementptr inbounds %struct.usb_device, ptr %184, i32 0, i32 10
  %185 = ptrtoint ptr %toggle.i472 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %toggle.i472, align 4
  %conv64.i = zext i8 %conv39 to i32
  %shl.i473 = shl nuw nsw i32 1, %conv64.i
  %neg.i474 = xor i32 %shl.i473, -1
  %and65.i = and i32 %186, %neg.i474
  store i32 %and65.i, ptr %toggle.i472, align 4
  %187 = ptrtoint ptr %dequeueing.i456 to i32
  call void @__asan_load4_noabort(i32 %187)
  %bf.load71.i = load i32, ptr %dequeueing.i456, align 8
  %bf.set73.i = and i32 %bf.load71.i, -201326593
  %bf.clear75.i = or i32 %bf.set73.i, 134217728
  store i32 %bf.clear75.i, ptr %dequeueing.i456, align 8
  %arrayidx77.i = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 21, i32 %idxprom118, i32 6, i32 %conv64.i
  %188 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %conv19.i443, ptr %arrayidx77.i, align 1
  %call.i.i.i.i.i.i.i2.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx119, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %arrayidx119, i32 1, i32 3, i32 1) #10
  %189 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx119, ptr %arrayidx119, i32 1, ptr elementtype(i32) %arrayidx119) #10, !srcloc !526
  %asmresult.i.i.i.i.i.i.i3.i = extractvalue { i32, i32, i32 } %189, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i3.i)
  %tobool1.not.i.i.i.i.i4.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i3.i, 0
  br i1 %tobool1.not.i.i.i.i.i4.i, label %if.then59.i.if.end105.sink.split.i_crit_edge, label %if.else.i.i.i.i.i7.i, !prof !527

if.then59.i.if.end105.sink.split.i_crit_edge:     ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105.sink.split.i

if.else.i.i.i.i.i7.i:                             ; preds = %if.then59.i
  %add.i.i.i.i.i5.i = add i32 %asmresult.i.i.i.i.i.i.i3.i, 1
  %190 = or i32 %add.i.i.i.i.i5.i, %asmresult.i.i.i.i.i.i.i3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %190)
  %.not.i.i.i.i.i6.i = icmp sgt i32 %190, -1
  br i1 %.not.i.i.i.i.i6.i, label %if.else.i.i.i.i.i7.i.if.end105.i_crit_edge, label %if.else.i.i.i.i.i7.i.if.end105.sink.split.i_crit_edge, !prof !523

if.else.i.i.i.i.i7.i.if.end105.sink.split.i_crit_edge: ; preds = %if.else.i.i.i.i.i7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105.sink.split.i

if.else.i.i.i.i.i7.i.if.end105.i_crit_edge:       ; preds = %if.else.i.i.i.i.i7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105.i

if.else.i476:                                     ; preds = %u132_endp_init_kref.exit.i471
  %arrayidx84.i = getelementptr %struct.usb_device, ptr %184, i32 0, i32 10, i32 1
  %191 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx84.i, align 4
  %conv85.i = zext i8 %conv39 to i32
  %shl86.i = shl nuw nsw i32 1, %conv85.i
  %neg87.i = xor i32 %shl86.i, -1
  %and88.i = and i32 %192, %neg87.i
  store i32 %and88.i, ptr %arrayidx84.i, align 4
  %193 = ptrtoint ptr %dequeueing.i456 to i32
  call void @__asan_load4_noabort(i32 %193)
  %bf.load96.i475 = load i32, ptr %dequeueing.i456, align 8
  %bf.clear101.i = and i32 %bf.load96.i475, -201326593
  %bf.set102.i = or i32 %bf.clear101.i, 67108864
  store i32 %bf.set102.i, ptr %dequeueing.i456, align 8
  %arrayidx104.i = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 21, i32 %idxprom118, i32 7, i32 %conv85.i
  %194 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %conv19.i443, ptr %arrayidx104.i, align 1
  %call.i.i.i.i.i.i.i10.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx119, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %arrayidx119, i32 1, i32 3, i32 1) #10
  %195 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx119, ptr %arrayidx119, i32 1, ptr elementtype(i32) %arrayidx119) #10, !srcloc !526
  %asmresult.i.i.i.i.i.i.i11.i = extractvalue { i32, i32, i32 } %195, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i11.i)
  %tobool1.not.i.i.i.i.i12.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i11.i, 0
  br i1 %tobool1.not.i.i.i.i.i12.i, label %if.else.i476.if.end105.sink.split.i_crit_edge, label %if.else.i.i.i.i.i15.i, !prof !527

if.else.i476.if.end105.sink.split.i_crit_edge:    ; preds = %if.else.i476
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105.sink.split.i

if.else.i.i.i.i.i15.i:                            ; preds = %if.else.i476
  %add.i.i.i.i.i13.i = add i32 %asmresult.i.i.i.i.i.i.i11.i, 1
  %196 = or i32 %add.i.i.i.i.i13.i, %asmresult.i.i.i.i.i.i.i11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %196)
  %.not.i.i.i.i.i14.i = icmp sgt i32 %196, -1
  br i1 %.not.i.i.i.i.i14.i, label %if.else.i.i.i.i.i15.i.if.end105.i_crit_edge, label %if.else.i.i.i.i.i15.i.if.end105.sink.split.i_crit_edge, !prof !523

if.else.i.i.i.i.i15.i.if.end105.sink.split.i_crit_edge: ; preds = %if.else.i.i.i.i.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105.sink.split.i

if.else.i.i.i.i.i15.i.if.end105.i_crit_edge:      ; preds = %if.else.i.i.i.i.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105.i

if.end105.sink.split.i:                           ; preds = %if.else.i.i.i.i.i15.i.if.end105.sink.split.i_crit_edge, %if.else.i476.if.end105.sink.split.i_crit_edge, %if.else.i.i.i.i.i7.i.if.end105.sink.split.i_crit_edge, %if.then59.i.if.end105.sink.split.i_crit_edge
  %.sink.i.i.i.i.i16.sink.i = phi i32 [ 2, %if.then59.i.if.end105.sink.split.i_crit_edge ], [ 1, %if.else.i.i.i.i.i7.i.if.end105.sink.split.i_crit_edge ], [ 2, %if.else.i476.if.end105.sink.split.i_crit_edge ], [ 1, %if.else.i.i.i.i.i15.i.if.end105.sink.split.i_crit_edge ]
  %ring_number.0.ph.i = phi i32 [ 2, %if.then59.i.if.end105.sink.split.i_crit_edge ], [ 2, %if.else.i.i.i.i.i7.i.if.end105.sink.split.i_crit_edge ], [ 1, %if.else.i476.if.end105.sink.split.i_crit_edge ], [ 1, %if.else.i.i.i.i.i15.i.if.end105.sink.split.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %arrayidx119, i32 noundef %.sink.i.i.i.i.i16.sink.i) #10
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.end105.sink.split.i, %if.else.i.i.i.i.i15.i.if.end105.i_crit_edge, %if.else.i.i.i.i.i7.i.if.end105.i_crit_edge
  %ring_number.0.i = phi i32 [ 2, %if.else.i.i.i.i.i7.i.if.end105.i_crit_edge ], [ 1, %if.else.i.i.i.i.i15.i.if.end105.i_crit_edge ], [ %ring_number.0.ph.i, %if.end105.sink.split.i ]
  %arrayidx108.i = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 5, i32 %ring_number.0.i
  %ring109.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i431, i32 0, i32 7
  %197 = ptrtoint ptr %ring109.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %arrayidx108.i, ptr %ring109.i, align 4
  %curr_endp.i477 = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 5, i32 %ring_number.0.i, i32 3
  %198 = ptrtoint ptr %curr_endp.i477 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %curr_endp.i477, align 4
  %tobool110.not.i = icmp eq ptr %199, null
  %endp_ring115.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i431, i32 0, i32 6
  br i1 %tobool110.not.i, label %if.else114.i, label %if.then111.i

if.then111.i:                                     ; preds = %if.end105.i
  %endp_ring113.i = getelementptr inbounds %struct.u132_endp, ptr %199, i32 0, i32 6
  %prev.i19.i = getelementptr inbounds %struct.u132_endp, ptr %199, i32 0, i32 6, i32 1
  %200 = ptrtoint ptr %prev.i19.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %prev.i19.i, align 4
  %call.i.i.i478 = tail call zeroext i1 @__list_add_valid(ptr noundef %endp_ring115.i, ptr noundef %201, ptr noundef %endp_ring113.i) #10
  br i1 %call.i.i.i478, label %if.end.i.i20.i, label %if.then111.i.if.end117.i_crit_edge

if.then111.i.if.end117.i_crit_edge:               ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end117.i

if.end.i.i20.i:                                   ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #12
  %202 = ptrtoint ptr %prev.i19.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %endp_ring115.i, ptr %prev.i19.i, align 4
  %203 = ptrtoint ptr %endp_ring115.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %endp_ring113.i, ptr %endp_ring115.i, align 4
  %prev3.i.i.i479 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i431, i32 0, i32 6, i32 1
  %204 = ptrtoint ptr %prev3.i.i.i479 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %201, ptr %prev3.i.i.i479, align 8
  %205 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %205)
  store volatile ptr %endp_ring115.i, ptr %201, align 4
  br label %if.end117.i

if.else114.i:                                     ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #12
  %206 = ptrtoint ptr %endp_ring115.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store volatile ptr %endp_ring115.i, ptr %endp_ring115.i, align 4
  %prev.i21.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i431, i32 0, i32 6, i32 1
  %207 = ptrtoint ptr %prev.i21.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %endp_ring115.i, ptr %prev.i21.i, align 8
  %208 = ptrtoint ptr %curr_endp.i477 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %call7.i.i431, ptr %curr_endp.i477, align 4
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.else114.i, %if.end.i.i20.i, %if.then111.i.if.end117.i_crit_edge
  %209 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %bf.load118.i = load i8, ptr %arrayidx108.i, align 4
  %narrow.i480 = add i8 %bf.load118.i, 1
  %bf.value121.i = and i8 %narrow.i480, 127
  %bf.clear122.i = and i8 %bf.load118.i, -128
  %bf.set123.i = or i8 %bf.value121.i, %bf.clear122.i
  store i8 %bf.set123.i, ptr %arrayidx108.i, align 4
  %hcpriv124.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %210 = ptrtoint ptr %hcpriv124.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %hcd_priv.i, ptr %hcpriv124.i, align 4
  %udev_number.i481 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i431, i32 0, i32 1
  %211 = ptrtoint ptr %udev_number.i481 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %126, ptr %udev_number.i481, align 4
  %usb_addr125.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i431, i32 0, i32 3
  %212 = ptrtoint ptr %usb_addr125.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %conv35, ptr %usb_addr125.i, align 2
  %usb_endp126.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i431, i32 0, i32 4
  %213 = ptrtoint ptr %usb_endp126.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %conv39, ptr %usb_endp126.i, align 1
  %queue_size.i482 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i431, i32 0, i32 12
  %214 = ptrtoint ptr %queue_size.i482 to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 1, ptr %queue_size.i482, align 8
  %queue_last.i483 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i431, i32 0, i32 13
  %queue_next.i484 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i431, i32 0, i32 14
  %215 = ptrtoint ptr %queue_next.i484 to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 0, ptr %queue_next.i484, align 4
  %urb_list.i485 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i431, i32 0, i32 15
  %216 = ptrtoint ptr %queue_last.i483 to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 1, ptr %queue_last.i483, align 2
  %217 = ptrtoint ptr %urb_list.i485 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %urb, ptr %urb_list.i485, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i434, i32 noundef %call7.i435) #10
  %218 = load ptr, ptr @workqueue, align 4
  %call.i.i22.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %218, ptr noundef %scheduler.i449, i32 noundef 0) #10
  br i1 %call.i.i22.i, label %if.then.i.i486, label %if.end117.i.cleanup244_crit_edge

if.end117.i.cleanup244_crit_edge:                 ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup244

if.then.i.i486:                                   ; preds = %if.end117.i
  %call.i.i.i.i.i.i.i23.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i431, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %call7.i.i431, i32 1, i32 3, i32 1) #10
  %219 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7.i.i431, ptr nonnull %call7.i.i431, i32 1, ptr nonnull elementtype(i32) %call7.i.i431) #10, !srcloc !526
  %asmresult.i.i.i.i.i.i.i24.i = extractvalue { i32, i32, i32 } %219, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i24.i)
  %tobool1.not.i.i.i.i.i25.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i24.i, 0
  br i1 %tobool1.not.i.i.i.i.i25.i, label %if.then.i.i486.if.end15.sink.split.i.i.i.i.i30.i_crit_edge, label %if.else.i.i.i.i.i28.i, !prof !527

if.then.i.i486.if.end15.sink.split.i.i.i.i.i30.i_crit_edge: ; preds = %if.then.i.i486
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i30.i

if.else.i.i.i.i.i28.i:                            ; preds = %if.then.i.i486
  %add.i.i.i.i.i26.i = add i32 %asmresult.i.i.i.i.i.i.i24.i, 1
  %220 = or i32 %add.i.i.i.i.i26.i, %asmresult.i.i.i.i.i.i.i24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %220)
  %.not.i.i.i.i.i27.i = icmp sgt i32 %220, -1
  br i1 %.not.i.i.i.i.i27.i, label %if.else.i.i.i.i.i28.i.cleanup244_crit_edge, label %if.else.i.i.i.i.i28.i.if.end15.sink.split.i.i.i.i.i30.i_crit_edge, !prof !523

if.else.i.i.i.i.i28.i.if.end15.sink.split.i.i.i.i.i30.i_crit_edge: ; preds = %if.else.i.i.i.i.i28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i30.i

if.else.i.i.i.i.i28.i.cleanup244_crit_edge:       ; preds = %if.else.i.i.i.i.i28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup244

if.end15.sink.split.i.i.i.i.i30.i:                ; preds = %if.else.i.i.i.i.i28.i.if.end15.sink.split.i.i.i.i.i30.i_crit_edge, %if.then.i.i486.if.end15.sink.split.i.i.i.i.i30.i_crit_edge
  %.sink.i.i.i.i.i29.i = phi i32 [ 2, %if.then.i.i486.if.end15.sink.split.i.i.i.i.i30.i_crit_edge ], [ 1, %if.else.i.i.i.i.i28.i.if.end15.sink.split.i.i.i.i.i30.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call7.i.i431, i32 noundef %.sink.i.i.i.i.i29.i) #10
  br label %cleanup244

if.end190.7:                                      ; preds = %if.else104
  %ep171 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 9
  %221 = ptrtoint ptr %ep171 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %ep171, align 4
  %hcpriv172 = getelementptr inbounds %struct.usb_host_endpoint, ptr %222, i32 0, i32 5
  %223 = ptrtoint ptr %hcpriv172 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %hcpriv172, align 4
  %setup_packet = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 21
  %225 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %setup_packet, align 4
  call void @llvm.lifetime.start.p0(i64 94, ptr nonnull %data) #10
  %227 = getelementptr inbounds i8, ptr %data, i32 1
  %228 = call ptr @memset(ptr %227, i32 255, i32 93)
  %229 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 0, ptr %data, align 1
  %incdec.ptr = getelementptr i8, ptr %226, i32 1
  %230 = ptrtoint ptr %226 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %226, align 1
  %conv184 = zext i8 %231 to i32
  %call185 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %data, ptr noundef nonnull @.str.82, i32 noundef %conv184)
  %add.ptr = getelementptr i8, ptr %data, i32 %call185
  %incdec.ptr.1 = getelementptr i8, ptr %226, i32 2
  %232 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %incdec.ptr, align 1
  %conv184.1 = zext i8 %233 to i32
  %call185.1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.82, i32 noundef %conv184.1)
  %add.ptr.1 = getelementptr i8, ptr %add.ptr, i32 %call185.1
  %incdec.ptr.2 = getelementptr i8, ptr %226, i32 3
  %234 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %incdec.ptr.1, align 1
  %conv184.2 = zext i8 %235 to i32
  %call185.2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1, ptr noundef nonnull @.str.82, i32 noundef %conv184.2)
  %add.ptr.2 = getelementptr i8, ptr %add.ptr.1, i32 %call185.2
  %incdec.ptr.3 = getelementptr i8, ptr %226, i32 4
  %236 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %incdec.ptr.2, align 1
  %conv184.3 = zext i8 %237 to i32
  %call185.3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.2, ptr noundef nonnull @.str.82, i32 noundef %conv184.3)
  %add.ptr.3 = getelementptr i8, ptr %add.ptr.2, i32 %call185.3
  %incdec.ptr.4 = getelementptr i8, ptr %226, i32 5
  %238 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %incdec.ptr.3, align 1
  %conv184.4 = zext i8 %239 to i32
  %call185.4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.3, ptr noundef nonnull @.str.82, i32 noundef %conv184.4)
  %add.ptr.4 = getelementptr i8, ptr %add.ptr.3, i32 %call185.4
  %incdec.ptr.5 = getelementptr i8, ptr %226, i32 6
  %240 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %incdec.ptr.4, align 1
  %conv184.5 = zext i8 %241 to i32
  %call185.5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.4, ptr noundef nonnull @.str.82, i32 noundef %conv184.5)
  %add.ptr.5 = getelementptr i8, ptr %add.ptr.4, i32 %call185.5
  %incdec.ptr.6 = getelementptr i8, ptr %226, i32 7
  %242 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %incdec.ptr.5, align 1
  %conv184.6 = zext i8 %243 to i32
  %call185.6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.5, ptr noundef nonnull @.str.82, i32 noundef %conv184.6)
  %add.ptr.6 = getelementptr i8, ptr %add.ptr.5, i32 %call185.6
  %244 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %incdec.ptr.6, align 1
  %conv184.7 = zext i8 %245 to i32
  %call185.7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.6, ptr noundef nonnull @.str.82, i32 noundef %conv184.7)
  %tobool191.not = icmp eq ptr %224, null
  br i1 %tobool191.not, label %if.else226, label %if.then192

if.then192:                                       ; preds = %if.end190.7
  %queue_lock202 = getelementptr inbounds %struct.u132_endp, ptr %224, i32 0, i32 11
  %call205 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock202) #10
  %call210 = tail call i32 @usb_hcd_link_urb_to_ep(ptr noundef %hcd, ptr noundef %urb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %cmp211 = icmp eq i32 %call210, 0
  br i1 %cmp211, label %if.then213, label %if.then192.if.end218.thread_crit_edge

if.then192.if.end218.thread_crit_edge:            ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end218.thread

if.then213:                                       ; preds = %if.then192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv35)
  %cmp.i489 = icmp eq i8 %conv35, 0
  br i1 %cmp.i489, label %if.then.i493, label %if.else89.i

if.then.i493:                                     ; preds = %if.then213
  %246 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %pipe, align 4
  %and.i491 = and i32 %247, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i491)
  %tobool.not.i492 = icmp eq i32 %and.i491, 0
  br i1 %tobool.not.i492, label %if.else20.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i493
  %hcpriv.i494 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %248 = ptrtoint ptr %hcpriv.i494 to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %hcd_priv.i, ptr %hcpriv.i494, align 4
  %queue_size.i495 = getelementptr inbounds %struct.u132_endp, ptr %224, i32 0, i32 12
  %249 = ptrtoint ptr %queue_size.i495 to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %queue_size.i495, align 4
  %inc.i496 = add i16 %250, 1
  store i16 %inc.i496, ptr %queue_size.i495, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %250)
  %cmp4.i497 = icmp ult i16 %250, 8
  br i1 %cmp4.i497, label %if.then6.i, label %if.else.i501

if.then6.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  %queue_last.i498 = getelementptr inbounds %struct.u132_endp, ptr %224, i32 0, i32 13
  %251 = ptrtoint ptr %queue_last.i498 to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %queue_last.i498, align 2
  %inc7.i = add i16 %252, 1
  store i16 %inc7.i, ptr %queue_last.i498, align 2
  %253 = and i16 %252, 7
  %and9.i = zext i16 %253 to i32
  %arrayidx.i499 = getelementptr %struct.u132_endp, ptr %224, i32 0, i32 15, i32 %and9.i
  %254 = ptrtoint ptr %arrayidx.i499 to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %urb, ptr %arrayidx.i499, align 4
  br label %if.else223

if.else.i501:                                     ; preds = %if.then2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %255 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i500 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %255, i32 noundef 2592, i32 noundef 12) #14
  %cmp10.i = icmp eq ptr %call7.i.i500, null
  br i1 %cmp10.i, label %cleanup.i508, label %if.else16.i

if.else16.i:                                      ; preds = %if.else.i501
  %urb_more17.i = getelementptr inbounds %struct.u132_endp, ptr %224, i32 0, i32 16
  %prev.i.i502 = getelementptr inbounds %struct.u132_endp, ptr %224, i32 0, i32 16, i32 1
  %256 = ptrtoint ptr %prev.i.i502 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %prev.i.i502, align 4
  %call.i.i.i503 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i500, ptr noundef %257, ptr noundef %urb_more17.i) #10
  br i1 %call.i.i.i503, label %if.end.i.i.i505, label %if.else16.i.cleanup.thread.i506_crit_edge

if.else16.i.cleanup.thread.i506_crit_edge:        ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i506

if.end.i.i.i505:                                  ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #12
  %258 = ptrtoint ptr %prev.i.i502 to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %call7.i.i500, ptr %prev.i.i502, align 4
  %259 = ptrtoint ptr %call7.i.i500 to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %urb_more17.i, ptr %call7.i.i500, align 8
  %prev3.i.i.i504 = getelementptr inbounds %struct.list_head, ptr %call7.i.i500, i32 0, i32 1
  %260 = ptrtoint ptr %prev3.i.i.i504 to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr %257, ptr %prev3.i.i.i504, align 4
  %261 = ptrtoint ptr %257 to i32
  call void @__asan_store4_noabort(i32 %261)
  store volatile ptr %call7.i.i500, ptr %257, align 4
  br label %cleanup.thread.i506

cleanup.thread.i506:                              ; preds = %if.end.i.i.i505, %if.else16.i.cleanup.thread.i506_crit_edge
  %urb18.i = getelementptr inbounds %struct.u132_urbq, ptr %call7.i.i500, i32 0, i32 1
  %262 = ptrtoint ptr %urb18.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %urb, ptr %urb18.i, align 8
  br label %if.else223

cleanup.i508:                                     ; preds = %if.else.i501
  call void @__sanitizer_cov_trace_pc() #12
  %263 = ptrtoint ptr %queue_size.i495 to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %queue_size.i495, align 4
  %sub.i507 = add i16 %264, -1
  store i16 %sub.i507, ptr %queue_size.i495, align 4
  br label %if.then216

if.else20.i:                                      ; preds = %if.then.i493
  %addr21.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 6
  %265 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %12, align 8
  %arrayidx22.i = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 20, i32 %266
  %usb_device.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 2, i32 20, i32 1, i32 0, i32 0, i32 4, i32 6
  %267 = ptrtoint ptr %usb_device.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %usb_device.i, align 4
  %tobool28.not.i = icmp eq ptr %268, null
  br i1 %tobool28.not.i, label %if.else20.i.if.else30.i_crit_edge, label %while.cond.1.i

if.else20.i.if.else30.i_crit_edge:                ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else30.i

while.cond.1.i:                                   ; preds = %if.else20.i
  %usb_device.1.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 2, i32 21
  %269 = ptrtoint ptr %usb_device.1.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %usb_device.1.i, align 4
  %tobool28.not.1.i = icmp eq ptr %270, null
  br i1 %tobool28.not.1.i, label %while.cond.1.i.if.else30.i_crit_edge, label %while.cond.2.i

while.cond.1.i.if.else30.i_crit_edge:             ; preds = %while.cond.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else30.i

while.cond.2.i:                                   ; preds = %while.cond.1.i
  %usb_device.2.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 2, i32 21, i32 1, i32 0, i32 0, i32 4, i32 7
  %271 = ptrtoint ptr %usb_device.2.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %usb_device.2.i, align 4
  %tobool28.not.2.i = icmp eq ptr %272, null
  br i1 %tobool28.not.2.i, label %while.cond.2.i.if.else30.i_crit_edge, label %do.end.i

while.cond.2.i.if.else30.i_crit_edge:             ; preds = %while.cond.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else30.i

if.else30.i:                                      ; preds = %while.cond.2.i.if.else30.i_crit_edge, %while.cond.1.i.if.else30.i_crit_edge, %if.else20.i.if.else30.i_crit_edge
  %inc26.lcssa.i = phi i32 [ 1, %if.else20.i.if.else30.i_crit_edge ], [ 2, %while.cond.1.i.if.else30.i_crit_edge ], [ 3, %while.cond.2.i.if.else30.i_crit_edge ]
  %usb_device.lcssa.i = phi ptr [ %usb_device.i, %if.else20.i.if.else30.i_crit_edge ], [ %usb_device.1.i, %while.cond.1.i.if.else30.i_crit_edge ], [ %usb_device.2.i, %while.cond.2.i.if.else30.i_crit_edge ]
  %arrayidx27.i = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 21, i32 %inc26.lcssa.i
  %enumeration.i = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 21, i32 %inc26.lcssa.i, i32 2
  %273 = ptrtoint ptr %enumeration.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 1, ptr %enumeration.i, align 4
  %conv31.i = trunc i32 %inc26.lcssa.i to i8
  %274 = ptrtoint ptr %addr21.i to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 %conv31.i, ptr %addr21.i, align 4
  %udev_number.i509 = getelementptr inbounds %struct.u132_endp, ptr %224, i32 0, i32 1
  %275 = ptrtoint ptr %udev_number.i509 to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 %conv31.i, ptr %udev_number.i509, align 4
  %udev_number36.i = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 21, i32 %inc26.lcssa.i, i32 3
  %276 = ptrtoint ptr %udev_number36.i to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 %conv31.i, ptr %udev_number36.i, align 1
  %277 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %12, align 8
  %conv38.i = trunc i32 %278 to i8
  %usb_addr39.i = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 21, i32 %inc26.lcssa.i, i32 4
  %279 = ptrtoint ptr %usb_addr39.i to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %conv38.i, ptr %usb_addr39.i, align 2
  %call.i.i.i.i.i.i510 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx27.i, i32 noundef 4) #10
  %280 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store volatile i32 1, ptr %arrayidx27.i, align 4
  %endp_number.i = getelementptr inbounds %struct.u132_endp, ptr %224, i32 0, i32 2
  %281 = ptrtoint ptr %endp_number.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %endp_number.i, align 1
  %idxprom.i = zext i8 %conv39 to i32
  %arrayidx40.i = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 21, i32 %inc26.lcssa.i, i32 6, i32 %idxprom.i
  %283 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 %282, ptr %arrayidx40.i, align 1
  %call.i.i.i.i.i.i.i.i511 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx27.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %arrayidx27.i, i32 1, i32 3, i32 1) #10
  %284 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx27.i, ptr %arrayidx27.i, i32 1, ptr elementtype(i32) %arrayidx27.i) #10, !srcloc !526
  %asmresult.i.i.i.i.i.i.i.i512 = extractvalue { i32, i32, i32 } %284, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i512)
  %tobool1.not.i.i.i.i.i.i513 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i512, 0
  br i1 %tobool1.not.i.i.i.i.i.i513, label %if.else30.i.if.end15.sink.split.i.i.i.i.i.i518_crit_edge, label %if.else.i.i.i.i.i.i516, !prof !527

if.else30.i.if.end15.sink.split.i.i.i.i.i.i518_crit_edge: ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i518

if.else.i.i.i.i.i.i516:                           ; preds = %if.else30.i
  %add.i.i.i.i.i.i514 = add i32 %asmresult.i.i.i.i.i.i.i.i512, 1
  %285 = or i32 %add.i.i.i.i.i.i514, %asmresult.i.i.i.i.i.i.i.i512
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %285)
  %.not.i.i.i.i.i.i515 = icmp sgt i32 %285, -1
  br i1 %.not.i.i.i.i.i.i515, label %if.else.i.i.i.i.i.i516.u132_udev_get_kref.exit.i_crit_edge, label %if.else.i.i.i.i.i.i516.if.end15.sink.split.i.i.i.i.i.i518_crit_edge, !prof !523

if.else.i.i.i.i.i.i516.if.end15.sink.split.i.i.i.i.i.i518_crit_edge: ; preds = %if.else.i.i.i.i.i.i516
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i518

if.else.i.i.i.i.i.i516.u132_udev_get_kref.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i516
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_udev_get_kref.exit.i

if.end15.sink.split.i.i.i.i.i.i518:               ; preds = %if.else.i.i.i.i.i.i516.if.end15.sink.split.i.i.i.i.i.i518_crit_edge, %if.else30.i.if.end15.sink.split.i.i.i.i.i.i518_crit_edge
  %.sink.i.i.i.i.i.i517 = phi i32 [ 2, %if.else30.i.if.end15.sink.split.i.i.i.i.i.i518_crit_edge ], [ 1, %if.else.i.i.i.i.i.i516.if.end15.sink.split.i.i.i.i.i.i518_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %arrayidx27.i, i32 noundef %.sink.i.i.i.i.i.i517) #10
  br label %u132_udev_get_kref.exit.i

u132_udev_get_kref.exit.i:                        ; preds = %if.end15.sink.split.i.i.i.i.i.i518, %if.else.i.i.i.i.i.i516.u132_udev_get_kref.exit.i_crit_edge
  %286 = ptrtoint ptr %endp_number.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %endp_number.i, align 1
  %arrayidx43.i = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 21, i32 %inc26.lcssa.i, i32 7, i32 %idxprom.i
  %288 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %287, ptr %arrayidx43.i, align 1
  %289 = ptrtoint ptr %usb_device.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %12, ptr %usb_device.lcssa.i, align 4
  %290 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %conv31.i, ptr %arrayidx22.i, align 1
  %291 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %setup_packet, align 4
  %arrayidx47.i = getelementptr i8, ptr %292, i32 2
  %293 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 %conv31.i, ptr %arrayidx47.i, align 1
  %call.i.i.i.i.i.i.i210.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx27.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %arrayidx27.i, i32 1, i32 3, i32 1) #10
  %294 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx27.i, ptr %arrayidx27.i, i32 1, ptr elementtype(i32) %arrayidx27.i) #10, !srcloc !526
  %asmresult.i.i.i.i.i.i.i211.i = extractvalue { i32, i32, i32 } %294, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i211.i)
  %tobool1.not.i.i.i.i.i212.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i211.i, 0
  br i1 %tobool1.not.i.i.i.i.i212.i, label %u132_udev_get_kref.exit.i.if.end15.sink.split.i.i.i.i.i217.i_crit_edge, label %if.else.i.i.i.i.i215.i, !prof !527

u132_udev_get_kref.exit.i.if.end15.sink.split.i.i.i.i.i217.i_crit_edge: ; preds = %u132_udev_get_kref.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i217.i

if.else.i.i.i.i.i215.i:                           ; preds = %u132_udev_get_kref.exit.i
  %add.i.i.i.i.i213.i = add i32 %asmresult.i.i.i.i.i.i.i211.i, 1
  %295 = or i32 %add.i.i.i.i.i213.i, %asmresult.i.i.i.i.i.i.i211.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %295)
  %.not.i.i.i.i.i214.i = icmp sgt i32 %295, -1
  br i1 %.not.i.i.i.i.i214.i, label %if.else.i.i.i.i.i215.i.if.end53.i_crit_edge, label %if.else.i.i.i.i.i215.i.if.end15.sink.split.i.i.i.i.i217.i_crit_edge, !prof !523

if.else.i.i.i.i.i215.i.if.end15.sink.split.i.i.i.i.i217.i_crit_edge: ; preds = %if.else.i.i.i.i.i215.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i217.i

if.else.i.i.i.i.i215.i.if.end53.i_crit_edge:      ; preds = %if.else.i.i.i.i.i215.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.i

if.end15.sink.split.i.i.i.i.i217.i:               ; preds = %if.else.i.i.i.i.i215.i.if.end15.sink.split.i.i.i.i.i217.i_crit_edge, %u132_udev_get_kref.exit.i.if.end15.sink.split.i.i.i.i.i217.i_crit_edge
  %.sink.i.i.i.i.i216.i = phi i32 [ 2, %u132_udev_get_kref.exit.i.if.end15.sink.split.i.i.i.i.i217.i_crit_edge ], [ 1, %if.else.i.i.i.i.i215.i.if.end15.sink.split.i.i.i.i.i217.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %arrayidx27.i, i32 noundef %.sink.i.i.i.i.i216.i) #10
  br label %if.end53.i

do.end.i:                                         ; preds = %while.cond.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %296 = ptrtoint ptr %platform_dev.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %platform_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %297, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.184) #13
  br label %if.then216

if.end53.i:                                       ; preds = %if.end15.sink.split.i.i.i.i.i217.i, %if.else.i.i.i.i.i215.i.if.end53.i_crit_edge
  %hcpriv54.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %298 = ptrtoint ptr %hcpriv54.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %hcd_priv.i, ptr %hcpriv54.i, align 4
  %queue_size55.i = getelementptr inbounds %struct.u132_endp, ptr %224, i32 0, i32 12
  %299 = ptrtoint ptr %queue_size55.i to i32
  call void @__asan_load2_noabort(i32 %299)
  %300 = load i16, ptr %queue_size55.i, align 4
  %inc56.i = add i16 %300, 1
  store i16 %inc56.i, ptr %queue_size55.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %300)
  %cmp58.i = icmp ult i16 %300, 8
  br i1 %cmp58.i, label %if.then60.i, label %if.else67.i

if.then60.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  %queue_last62.i = getelementptr inbounds %struct.u132_endp, ptr %224, i32 0, i32 13
  %301 = ptrtoint ptr %queue_last62.i to i32
  call void @__asan_load2_noabort(i32 %301)
  %302 = load i16, ptr %queue_last62.i, align 2
  %inc63.i = add i16 %302, 1
  store i16 %inc63.i, ptr %queue_last62.i, align 2
  %303 = and i16 %302, 7
  %and65.i519 = zext i16 %303 to i32
  %arrayidx66.i = getelementptr %struct.u132_endp, ptr %224, i32 0, i32 15, i32 %and65.i519
  %304 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr %urb, ptr %arrayidx66.i, align 4
  br label %if.else223

if.else67.i:                                      ; preds = %if.end53.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %305 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i208.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %305, i32 noundef 2592, i32 noundef 12) #14
  %cmp70.i = icmp eq ptr %call7.i208.i, null
  br i1 %cmp70.i, label %if.then72.i, label %if.else77.i

if.then72.i:                                      ; preds = %if.else67.i
  call void @__sanitizer_cov_trace_pc() #12
  %306 = ptrtoint ptr %queue_size55.i to i32
  call void @__asan_load2_noabort(i32 %306)
  %307 = load i16, ptr %queue_size55.i, align 4
  %sub75.i = add i16 %307, -1
  store i16 %sub75.i, ptr %queue_size55.i, align 4
  br label %if.then216

if.else77.i:                                      ; preds = %if.else67.i
  %urb_more79.i = getelementptr inbounds %struct.u132_endp, ptr %224, i32 0, i32 16
  %prev.i219.i = getelementptr inbounds %struct.u132_endp, ptr %224, i32 0, i32 16, i32 1
  %308 = ptrtoint ptr %prev.i219.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %prev.i219.i, align 4
  %call.i.i220.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i208.i, ptr noundef %309, ptr noundef %urb_more79.i) #10
  br i1 %call.i.i220.i, label %if.end.i.i222.i, label %if.else77.i.list_add_tail.exit223.i_crit_edge

if.else77.i.list_add_tail.exit223.i_crit_edge:    ; preds = %if.else77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit223.i

if.end.i.i222.i:                                  ; preds = %if.else77.i
  call void @__sanitizer_cov_trace_pc() #12
  %310 = ptrtoint ptr %prev.i219.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr %call7.i208.i, ptr %prev.i219.i, align 4
  %311 = ptrtoint ptr %call7.i208.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %urb_more79.i, ptr %call7.i208.i, align 8
  %prev3.i.i221.i = getelementptr inbounds %struct.list_head, ptr %call7.i208.i, i32 0, i32 1
  %312 = ptrtoint ptr %prev3.i.i221.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr %309, ptr %prev3.i.i221.i, align 4
  %313 = ptrtoint ptr %309 to i32
  call void @__asan_store4_noabort(i32 %313)
  store volatile ptr %call7.i208.i, ptr %309, align 4
  br label %list_add_tail.exit223.i

list_add_tail.exit223.i:                          ; preds = %if.end.i.i222.i, %if.else77.i.list_add_tail.exit223.i_crit_edge
  %urb80.i = getelementptr inbounds %struct.u132_urbq, ptr %call7.i208.i, i32 0, i32 1
  %314 = ptrtoint ptr %urb80.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr %urb, ptr %urb80.i, align 8
  br label %if.else223

if.else89.i:                                      ; preds = %if.then213
  %conv.i = zext i8 %conv35 to i32
  %arrayidx93.i520 = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 20, i32 %conv.i
  %315 = ptrtoint ptr %arrayidx93.i520 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %arrayidx93.i520, align 1
  %idxprom97.i = zext i8 %316 to i32
  %hcpriv99.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %317 = ptrtoint ptr %hcpriv99.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store ptr %hcd_priv.i, ptr %hcpriv99.i, align 4
  %enumeration100.i = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 21, i32 %idxprom97.i, i32 2
  %318 = ptrtoint ptr %enumeration100.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %enumeration100.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %319)
  %cmp102.not.i = icmp eq i8 %319, 2
  br i1 %cmp102.not.i, label %if.else89.i.if.end106.i_crit_edge, label %if.then104.i

if.else89.i.if.end106.i_crit_edge:                ; preds = %if.else89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106.i

if.then104.i:                                     ; preds = %if.else89.i
  call void @__sanitizer_cov_trace_pc() #12
  %320 = ptrtoint ptr %enumeration100.i to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 2, ptr %enumeration100.i, align 4
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.then104.i, %if.else89.i.if.end106.i_crit_edge
  %queue_size107.i = getelementptr inbounds %struct.u132_endp, ptr %224, i32 0, i32 12
  %321 = ptrtoint ptr %queue_size107.i to i32
  call void @__asan_load2_noabort(i32 %321)
  %322 = load i16, ptr %queue_size107.i, align 4
  %inc108.i = add i16 %322, 1
  store i16 %inc108.i, ptr %queue_size107.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %322)
  %cmp110.i = icmp ult i16 %322, 8
  br i1 %cmp110.i, label %if.then112.i, label %if.else119.i

if.then112.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #12
  %queue_last114.i = getelementptr inbounds %struct.u132_endp, ptr %224, i32 0, i32 13
  %323 = ptrtoint ptr %queue_last114.i to i32
  call void @__asan_load2_noabort(i32 %323)
  %324 = load i16, ptr %queue_last114.i, align 2
  %inc115.i = add i16 %324, 1
  store i16 %inc115.i, ptr %queue_last114.i, align 2
  %325 = and i16 %324, 7
  %and117.i = zext i16 %325 to i32
  %arrayidx118.i = getelementptr %struct.u132_endp, ptr %224, i32 0, i32 15, i32 %and117.i
  %326 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr %urb, ptr %arrayidx118.i, align 4
  br label %if.else223

if.else119.i:                                     ; preds = %if.end106.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %327 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i209.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %327, i32 noundef 2592, i32 noundef 12) #14
  %cmp122.i = icmp eq ptr %call7.i209.i, null
  br i1 %cmp122.i, label %if.then124.i, label %if.else129.i

if.then124.i:                                     ; preds = %if.else119.i
  call void @__sanitizer_cov_trace_pc() #12
  %328 = ptrtoint ptr %queue_size107.i to i32
  call void @__asan_load2_noabort(i32 %328)
  %329 = load i16, ptr %queue_size107.i, align 4
  %sub127.i = add i16 %329, -1
  store i16 %sub127.i, ptr %queue_size107.i, align 4
  br label %if.then216

if.else129.i:                                     ; preds = %if.else119.i
  %urb_more131.i = getelementptr inbounds %struct.u132_endp, ptr %224, i32 0, i32 16
  %prev.i224.i = getelementptr inbounds %struct.u132_endp, ptr %224, i32 0, i32 16, i32 1
  %330 = ptrtoint ptr %prev.i224.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %prev.i224.i, align 4
  %call.i.i225.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i209.i, ptr noundef %331, ptr noundef %urb_more131.i) #10
  br i1 %call.i.i225.i, label %if.end.i.i227.i, label %if.else129.i.list_add_tail.exit228.i_crit_edge

if.else129.i.list_add_tail.exit228.i_crit_edge:   ; preds = %if.else129.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit228.i

if.end.i.i227.i:                                  ; preds = %if.else129.i
  call void @__sanitizer_cov_trace_pc() #12
  %332 = ptrtoint ptr %prev.i224.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr %call7.i209.i, ptr %prev.i224.i, align 4
  %333 = ptrtoint ptr %call7.i209.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr %urb_more131.i, ptr %call7.i209.i, align 8
  %prev3.i.i226.i = getelementptr inbounds %struct.list_head, ptr %call7.i209.i, i32 0, i32 1
  %334 = ptrtoint ptr %prev3.i.i226.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store ptr %331, ptr %prev3.i.i226.i, align 4
  %335 = ptrtoint ptr %331 to i32
  call void @__asan_store4_noabort(i32 %335)
  store volatile ptr %call7.i209.i, ptr %331, align 4
  br label %list_add_tail.exit228.i

list_add_tail.exit228.i:                          ; preds = %if.end.i.i227.i, %if.else129.i.list_add_tail.exit228.i_crit_edge
  %urb132.i = getelementptr inbounds %struct.u132_urbq, ptr %call7.i209.i, i32 0, i32 1
  %336 = ptrtoint ptr %urb132.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr %urb, ptr %urb132.i, align 8
  br label %if.else223

if.then216:                                       ; preds = %if.then124.i, %if.then72.i, %do.end.i, %cleanup.i508
  %retval.5.i = phi i32 [ -12, %cleanup.i508 ], [ -22, %do.end.i ], [ -12, %if.then72.i ], [ -12, %if.then124.i ]
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %hcd, ptr noundef %urb) #10
  br label %if.end218.thread

if.end218.thread:                                 ; preds = %if.then216, %if.then192.if.end218.thread_crit_edge
  %retval194.0.ph = phi i32 [ %call210, %if.then192.if.end218.thread_crit_edge ], [ %retval.5.i, %if.then216 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock202, i32 noundef %call205) #10
  br label %cleanup233

if.else223:                                       ; preds = %list_add_tail.exit228.i, %if.then112.i, %list_add_tail.exit223.i, %if.then60.i, %cleanup.thread.i506, %if.then6.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock202, i32 noundef %call205) #10
  %337 = load ptr, ptr @workqueue, align 4
  %scheduler.i521 = getelementptr inbounds %struct.u132_endp, ptr %224, i32 0, i32 17
  %call.i.i522 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %337, ptr noundef %scheduler.i521, i32 noundef 0) #10
  br i1 %call.i.i522, label %if.then.i526, label %if.else223.cleanup233_crit_edge

if.else223.cleanup233_crit_edge:                  ; preds = %if.else223
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup233

if.then.i526:                                     ; preds = %if.else223
  %call.i.i.i.i.i.i.i523 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %224, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %224, i32 1, i32 3, i32 1) #10
  %338 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %224, ptr nonnull %224, i32 1, ptr nonnull elementtype(i32) %224) #10, !srcloc !526
  %asmresult.i.i.i.i.i.i.i524 = extractvalue { i32, i32, i32 } %338, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i524)
  %tobool1.not.i.i.i.i.i525 = icmp eq i32 %asmresult.i.i.i.i.i.i.i524, 0
  br i1 %tobool1.not.i.i.i.i.i525, label %if.then.i526.if.end15.sink.split.i.i.i.i.i531_crit_edge, label %if.else.i.i.i.i.i529, !prof !527

if.then.i526.if.end15.sink.split.i.i.i.i.i531_crit_edge: ; preds = %if.then.i526
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i531

if.else.i.i.i.i.i529:                             ; preds = %if.then.i526
  %add.i.i.i.i.i527 = add i32 %asmresult.i.i.i.i.i.i.i524, 1
  %339 = or i32 %add.i.i.i.i.i527, %asmresult.i.i.i.i.i.i.i524
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %339)
  %.not.i.i.i.i.i528 = icmp sgt i32 %339, -1
  br i1 %.not.i.i.i.i.i528, label %if.else.i.i.i.i.i529.cleanup233_crit_edge, label %if.else.i.i.i.i.i529.if.end15.sink.split.i.i.i.i.i531_crit_edge, !prof !523

if.else.i.i.i.i.i529.if.end15.sink.split.i.i.i.i.i531_crit_edge: ; preds = %if.else.i.i.i.i.i529
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i531

if.else.i.i.i.i.i529.cleanup233_crit_edge:        ; preds = %if.else.i.i.i.i.i529
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup233

if.end15.sink.split.i.i.i.i.i531:                 ; preds = %if.else.i.i.i.i.i529.if.end15.sink.split.i.i.i.i.i531_crit_edge, %if.then.i526.if.end15.sink.split.i.i.i.i.i531_crit_edge
  %.sink.i.i.i.i.i530 = phi i32 [ 2, %if.then.i526.if.end15.sink.split.i.i.i.i.i531_crit_edge ], [ 1, %if.else.i.i.i.i.i529.if.end15.sink.split.i.i.i.i.i531_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %224, i32 noundef %.sink.i.i.i.i.i530) #10
  br label %cleanup233

if.else226:                                       ; preds = %if.end190.7
  %num_endpoints227 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 5, i32 4, i32 7
  %340 = ptrtoint ptr %num_endpoints227 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %num_endpoints227, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %341)
  %cmp228 = icmp eq i32 %341, 100
  br i1 %cmp228, label %if.else226.cleanup233_crit_edge, label %if.else231

if.else226.cleanup233_crit_edge:                  ; preds = %if.else226
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup233

if.else231:                                       ; preds = %if.else226
  %and.i.i.i534 = and i32 %mem_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i534)
  %cmp.i19.i.i535 = icmp eq i32 %and.i.i.i534, 0
  br i1 %cmp.i19.i.i535, label %if.else231.kmalloc.exit.i547_crit_edge, label %if.end.i.i.i538, !prof !523

if.else231.kmalloc.exit.i547_crit_edge:           ; preds = %if.else231
  call void @__sanitizer_cov_trace_pc() #12
  br label %kmalloc.exit.i547

if.end.i.i.i538:                                  ; preds = %if.else231
  %and2.i.i.i536 = and i32 %mem_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i536)
  %tobool3.not.i.i.i537 = icmp eq i32 %and2.i.i.i536, 0
  br i1 %tobool3.not.i.i.i537, label %if.end5.i.i.i542, label %if.end.i.i.i538.kmalloc.exit.i547_crit_edge

if.end.i.i.i538.kmalloc.exit.i547_crit_edge:      ; preds = %if.end.i.i.i538
  call void @__sanitizer_cov_trace_pc() #12
  br label %kmalloc.exit.i547

if.end5.i.i.i542:                                 ; preds = %if.end.i.i.i538
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i.i.i539 = and i32 %mem_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i539)
  %tobool7.not.i.i.i540 = icmp eq i32 %and6.i.i.i539, 0
  %..i.i.i541 = select i1 %tobool7.not.i.i.i540, i32 1, i32 2
  br label %kmalloc.exit.i547

kmalloc.exit.i547:                                ; preds = %if.end5.i.i.i542, %if.end.i.i.i538.kmalloc.exit.i547_crit_edge, %if.else231.kmalloc.exit.i547_crit_edge
  %retval.0.i20.i.i543 = phi i32 [ 0, %if.else231.kmalloc.exit.i547_crit_edge ], [ 3, %if.end.i.i.i538.kmalloc.exit.i547_crit_edge ], [ %..i.i.i541, %if.end5.i.i.i542 ]
  %arrayidx6.i.i544 = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i.i543, i32 8
  %342 = ptrtoint ptr %arrayidx6.i.i544 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %arrayidx6.i.i544, align 4
  %call7.i.i545 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %343, i32 noundef %mem_flags, i32 noundef 228) #14
  %tobool.not.i546 = icmp eq ptr %call7.i.i545, null
  br i1 %tobool.not.i546, label %kmalloc.exit.i547.cleanup233_crit_edge, label %do.body.i553

kmalloc.exit.i547.cleanup233_crit_edge:           ; preds = %kmalloc.exit.i547
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup233

do.body.i553:                                     ; preds = %kmalloc.exit.i547
  %queue_lock.i548 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %queue_lock.i548, ptr noundef nonnull @.str.84, ptr noundef nonnull @create_endpoint_and_queue_control.__key, i16 noundef signext 3) #10
  %call7.i549 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock.i548) #10
  %call13.i551 = tail call i32 @usb_hcd_link_urb_to_ep(ptr noundef %hcd, ptr noundef %urb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i551)
  %tobool14.not.i552 = icmp eq i32 %call13.i551, 0
  br i1 %tobool14.not.i552, label %if.end18.i576, label %if.then15.i554

if.then15.i554:                                   ; preds = %do.body.i553
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i548, i32 noundef %call7.i549) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i545) #10
  br label %cleanup233

if.end18.i576:                                    ; preds = %do.body.i553
  %344 = ptrtoint ptr %num_endpoints227 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %num_endpoints227, align 4
  %inc.i556 = add i32 %345, 1
  store i32 %inc.i556, ptr %num_endpoints227, align 4
  %conv19.i557 = trunc i32 %inc.i556 to i8
  %conv21.i558 = and i32 %inc.i556, 255
  %sub.i559 = add nsw i32 %conv21.i558, -1
  %arrayidx.i560 = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 23, i32 %sub.i559
  %346 = ptrtoint ptr %arrayidx.i560 to i32
  call void @__asan_store4_noabort(i32 %346)
  store ptr %call7.i.i545, ptr %arrayidx.i560, align 4
  %347 = ptrtoint ptr %ep171 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %ep171, align 4
  %hcpriv.i562 = getelementptr inbounds %struct.usb_host_endpoint, ptr %348, i32 0, i32 5
  %349 = ptrtoint ptr %hcpriv.i562 to i32
  call void @__asan_store4_noabort(i32 %349)
  store ptr %call7.i.i545, ptr %hcpriv.i562, align 4
  %scheduler.i563 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 17
  tail call void @__init_work(ptr noundef %scheduler.i563, i32 noundef 0) #10
  %350 = ptrtoint ptr %scheduler.i563 to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 -64, ptr %scheduler.i563, align 8
  %lockdep_map.i564 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 17, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i564, ptr noundef nonnull @.str.86, ptr noundef nonnull @create_endpoint_and_queue_control.__key.186, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry30.i565 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 17, i32 0, i32 1
  %351 = ptrtoint ptr %entry30.i565 to i32
  call void @__asan_store4_noabort(i32 %351)
  store volatile ptr %entry30.i565, ptr %entry30.i565, align 4
  %prev.i.i566 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 17, i32 0, i32 1, i32 1
  %352 = ptrtoint ptr %prev.i.i566 to i32
  call void @__asan_store4_noabort(i32 %352)
  store ptr %entry30.i565, ptr %prev.i.i566, align 8
  %func.i567 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 17, i32 0, i32 2
  %353 = ptrtoint ptr %func.i567 to i32
  call void @__asan_store4_noabort(i32 %353)
  store ptr @u132_hcd_endp_work_scheduler, ptr %func.i567, align 4
  %timer.i568 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 17, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i568, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.88, ptr noundef nonnull @create_endpoint_and_queue_control.__key.187) #10
  %urb_more.i569 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 16
  %354 = ptrtoint ptr %urb_more.i569 to i32
  call void @__asan_store4_noabort(i32 %354)
  store volatile ptr %urb_more.i569, ptr %urb_more.i569, align 8
  %prev.i1.i570 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 16, i32 1
  %355 = ptrtoint ptr %prev.i1.i570 to i32
  call void @__asan_store4_noabort(i32 %355)
  store ptr %urb_more.i569, ptr %prev.i1.i570, align 4
  %ring41.i571 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 16
  %ring43.i572 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 7
  %356 = ptrtoint ptr %ring43.i572 to i32
  call void @__asan_store4_noabort(i32 %356)
  store ptr %ring41.i571, ptr %ring43.i572, align 4
  %curr_endp.i573 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 5
  %357 = ptrtoint ptr %curr_endp.i573 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %curr_endp.i573, align 4
  %tobool44.not.i574 = icmp eq ptr %358, null
  %endp_ring48.i575 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 6
  br i1 %tobool44.not.i574, label %if.else.i581, label %if.then45.i579

if.then45.i579:                                   ; preds = %if.end18.i576
  %endp_ring47.i577 = getelementptr inbounds %struct.u132_endp, ptr %358, i32 0, i32 6
  %prev.i2.i = getelementptr inbounds %struct.u132_endp, ptr %358, i32 0, i32 6, i32 1
  %359 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i578 = tail call zeroext i1 @__list_add_valid(ptr noundef %endp_ring48.i575, ptr noundef %360, ptr noundef %endp_ring47.i577) #10
  br i1 %call.i.i.i578, label %if.end.i.i3.i, label %if.then45.i579.if.end50.i596_crit_edge

if.then45.i579.if.end50.i596_crit_edge:           ; preds = %if.then45.i579
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i596

if.end.i.i3.i:                                    ; preds = %if.then45.i579
  call void @__sanitizer_cov_trace_pc() #12
  %361 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %361)
  store ptr %endp_ring48.i575, ptr %prev.i2.i, align 4
  %362 = ptrtoint ptr %endp_ring48.i575 to i32
  call void @__asan_store4_noabort(i32 %362)
  store ptr %endp_ring47.i577, ptr %endp_ring48.i575, align 4
  %prev3.i.i.i580 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 6, i32 1
  %363 = ptrtoint ptr %prev3.i.i.i580 to i32
  call void @__asan_store4_noabort(i32 %363)
  store ptr %360, ptr %prev3.i.i.i580, align 8
  %364 = ptrtoint ptr %360 to i32
  call void @__asan_store4_noabort(i32 %364)
  store volatile ptr %endp_ring48.i575, ptr %360, align 4
  br label %if.end50.i596

if.else.i581:                                     ; preds = %if.end18.i576
  call void @__sanitizer_cov_trace_pc() #12
  %365 = ptrtoint ptr %endp_ring48.i575 to i32
  call void @__asan_store4_noabort(i32 %365)
  store volatile ptr %endp_ring48.i575, ptr %endp_ring48.i575, align 4
  %prev.i4.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 6, i32 1
  %366 = ptrtoint ptr %prev.i4.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store ptr %endp_ring48.i575, ptr %prev.i4.i, align 8
  %367 = ptrtoint ptr %curr_endp.i573 to i32
  call void @__asan_store4_noabort(i32 %367)
  store ptr %call7.i.i545, ptr %curr_endp.i573, align 4
  br label %if.end50.i596

if.end50.i596:                                    ; preds = %if.else.i581, %if.end.i.i3.i, %if.then45.i579.if.end50.i596_crit_edge
  %368 = ptrtoint ptr %ring41.i571 to i32
  call void @__asan_load1_noabort(i32 %368)
  %bf.load.i582 = load i8, ptr %ring41.i571, align 4
  %narrow.i583 = add i8 %bf.load.i582, 1
  %bf.value.i584 = and i8 %narrow.i583, 127
  %bf.clear52.i585 = and i8 %bf.load.i582, -128
  %bf.set.i586 = or i8 %bf.value.i584, %bf.clear52.i585
  store i8 %bf.set.i586, ptr %ring41.i571, align 4
  %dequeueing.i587 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 8
  %369 = ptrtoint ptr %dequeueing.i587 to i32
  call void @__asan_load4_noabort(i32 %369)
  %bf.load53.i588 = load i32, ptr %dequeueing.i587, align 8
  %bf.clear63.i = and i32 %bf.load53.i588, -817889281
  store i32 %bf.clear63.i, ptr %dequeueing.i587, align 8
  %endp_number65.i589 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 2
  %370 = ptrtoint ptr %endp_number65.i589 to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 %conv19.i557, ptr %endp_number65.i589, align 1
  %u13266.i590 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 5
  %371 = ptrtoint ptr %u13266.i590 to i32
  call void @__asan_store4_noabort(i32 %371)
  store ptr %hcd_priv.i, ptr %u13266.i590, align 8
  %372 = ptrtoint ptr %ep171 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %ep171, align 4
  %hep.i591 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 10
  %374 = ptrtoint ptr %hep.i591 to i32
  call void @__asan_store4_noabort(i32 %374)
  store ptr %373, ptr %hep.i591, align 8
  %call.i.i.i.i.i.i592 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i545, i32 noundef 4) #10
  %375 = ptrtoint ptr %call7.i.i545 to i32
  call void @__asan_store4_noabort(i32 %375)
  store volatile i32 1, ptr %call7.i.i545, align 8
  %call.i.i.i.i.i.i.i.i593 = tail call zeroext i1 @__kasan_check_write(ptr noundef %hcd_priv.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %hcd_priv.i, i32 1, i32 3, i32 1) #10
  %376 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hcd_priv.i, ptr %hcd_priv.i, i32 1, ptr elementtype(i32) %hcd_priv.i) #10, !srcloc !526
  %asmresult.i.i.i.i.i.i.i.i594 = extractvalue { i32, i32, i32 } %376, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i594)
  %tobool1.not.i.i.i.i.i.i595 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i594, 0
  br i1 %tobool1.not.i.i.i.i.i.i595, label %if.end50.i596.if.end15.sink.split.i.i.i.i.i.i601_crit_edge, label %if.else.i.i.i.i.i.i599, !prof !527

if.end50.i596.if.end15.sink.split.i.i.i.i.i.i601_crit_edge: ; preds = %if.end50.i596
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i601

if.else.i.i.i.i.i.i599:                           ; preds = %if.end50.i596
  %add.i.i.i.i.i.i597 = add i32 %asmresult.i.i.i.i.i.i.i.i594, 1
  %377 = or i32 %add.i.i.i.i.i.i597, %asmresult.i.i.i.i.i.i.i.i594
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %377)
  %.not.i.i.i.i.i.i598 = icmp sgt i32 %377, -1
  br i1 %.not.i.i.i.i.i.i598, label %if.else.i.i.i.i.i.i599.u132_endp_init_kref.exit.i602_crit_edge, label %if.else.i.i.i.i.i.i599.if.end15.sink.split.i.i.i.i.i.i601_crit_edge, !prof !523

if.else.i.i.i.i.i.i599.if.end15.sink.split.i.i.i.i.i.i601_crit_edge: ; preds = %if.else.i.i.i.i.i.i599
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i601

if.else.i.i.i.i.i.i599.u132_endp_init_kref.exit.i602_crit_edge: ; preds = %if.else.i.i.i.i.i.i599
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_endp_init_kref.exit.i602

if.end15.sink.split.i.i.i.i.i.i601:               ; preds = %if.else.i.i.i.i.i.i599.if.end15.sink.split.i.i.i.i.i.i601_crit_edge, %if.end50.i596.if.end15.sink.split.i.i.i.i.i.i601_crit_edge
  %.sink.i.i.i.i.i.i600 = phi i32 [ 2, %if.end50.i596.if.end15.sink.split.i.i.i.i.i.i601_crit_edge ], [ 1, %if.else.i.i.i.i.i.i599.if.end15.sink.split.i.i.i.i.i.i601_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %hcd_priv.i, i32 noundef %.sink.i.i.i.i.i.i600) #10
  br label %u132_endp_init_kref.exit.i602

u132_endp_init_kref.exit.i602:                    ; preds = %if.end15.sink.split.i.i.i.i.i.i601, %if.else.i.i.i.i.i.i599.u132_endp_init_kref.exit.i602_crit_edge
  %call.i.i.i.i.i.i.i5.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i545, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %call7.i.i545, i32 1, i32 3, i32 1) #10
  %378 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7.i.i545, ptr nonnull %call7.i.i545, i32 1, ptr nonnull elementtype(i32) %call7.i.i545) #10, !srcloc !526
  %asmresult.i.i.i.i.i.i.i6.i = extractvalue { i32, i32, i32 } %378, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i6.i)
  %tobool1.not.i.i.i.i.i7.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i6.i, 0
  br i1 %tobool1.not.i.i.i.i.i7.i, label %u132_endp_init_kref.exit.i602.if.end15.sink.split.i.i.i.i.i12.i_crit_edge, label %if.else.i.i.i.i.i10.i, !prof !527

u132_endp_init_kref.exit.i602.if.end15.sink.split.i.i.i.i.i12.i_crit_edge: ; preds = %u132_endp_init_kref.exit.i602
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i12.i

if.else.i.i.i.i.i10.i:                            ; preds = %u132_endp_init_kref.exit.i602
  %add.i.i.i.i.i8.i = add i32 %asmresult.i.i.i.i.i.i.i6.i, 1
  %379 = or i32 %add.i.i.i.i.i8.i, %asmresult.i.i.i.i.i.i.i6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %379)
  %.not.i.i.i.i.i9.i = icmp sgt i32 %379, -1
  br i1 %.not.i.i.i.i.i9.i, label %if.else.i.i.i.i.i10.i.u132_endp_get_kref.exit.i_crit_edge, label %if.else.i.i.i.i.i10.i.if.end15.sink.split.i.i.i.i.i12.i_crit_edge, !prof !523

if.else.i.i.i.i.i10.i.if.end15.sink.split.i.i.i.i.i12.i_crit_edge: ; preds = %if.else.i.i.i.i.i10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i12.i

if.else.i.i.i.i.i10.i.u132_endp_get_kref.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_endp_get_kref.exit.i

if.end15.sink.split.i.i.i.i.i12.i:                ; preds = %if.else.i.i.i.i.i10.i.if.end15.sink.split.i.i.i.i.i12.i_crit_edge, %u132_endp_init_kref.exit.i602.if.end15.sink.split.i.i.i.i.i12.i_crit_edge
  %.sink.i.i.i.i.i11.i = phi i32 [ 2, %u132_endp_init_kref.exit.i602.if.end15.sink.split.i.i.i.i.i12.i_crit_edge ], [ 1, %if.else.i.i.i.i.i10.i.if.end15.sink.split.i.i.i.i.i12.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call7.i.i545, i32 noundef %.sink.i.i.i.i.i11.i) #10
  br label %u132_endp_get_kref.exit.i

u132_endp_get_kref.exit.i:                        ; preds = %if.end15.sink.split.i.i.i.i.i12.i, %if.else.i.i.i.i.i10.i.u132_endp_get_kref.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv35)
  %cmp69.i = icmp eq i8 %conv35, 0
  br i1 %cmp69.i, label %if.then71.i, label %if.else101.i

if.then71.i:                                      ; preds = %u132_endp_get_kref.exit.i
  %addr.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 6
  %380 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %addr.i, align 1
  %idxprom75.i = zext i8 %381 to i32
  %arrayidx76.i = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 21, i32 %idxprom75.i
  %udev_number.i603 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 1
  %382 = ptrtoint ptr %udev_number.i603 to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 %381, ptr %udev_number.i603, align 4
  %usb_addr77.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 3
  %383 = ptrtoint ptr %usb_addr77.i to i32
  call void @__asan_store1_noabort(i32 %383)
  store i8 0, ptr %usb_addr77.i, align 2
  %usb_endp78.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 4
  %384 = ptrtoint ptr %usb_endp78.i to i32
  call void @__asan_store1_noabort(i32 %384)
  store i8 %conv39, ptr %usb_endp78.i, align 1
  %385 = ptrtoint ptr %dequeueing.i587 to i32
  call void @__asan_load4_noabort(i32 %385)
  %bf.load79.i604 = load i32, ptr %dequeueing.i587, align 8
  %386 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %pipe, align 4
  %388 = lshr i32 %387, 6
  %bf.shl.i606 = and i32 %388, 50331648
  %bf.set84.i = and i32 %bf.load79.i604, -251658241
  %bf.clear87.i = or i32 %bf.set84.i, %bf.shl.i606
  %bf.set88.i = or i32 %bf.clear87.i, 201326592
  store i32 %bf.set88.i, ptr %dequeueing.i587, align 8
  %call.i.i.i.i.i13.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx76.i, i32 noundef 4) #10
  %389 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_store4_noabort(i32 %389)
  store volatile i32 1, ptr %arrayidx76.i, align 4
  %call.i.i.i.i.i.i.i14.i607 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx76.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %arrayidx76.i, i32 1, i32 3, i32 1) #10
  %390 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx76.i, ptr %arrayidx76.i, i32 1, ptr elementtype(i32) %arrayidx76.i) #10, !srcloc !526
  %asmresult.i.i.i.i.i.i.i15.i608 = extractvalue { i32, i32, i32 } %390, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i15.i608)
  %tobool1.not.i.i.i.i.i16.i609 = icmp eq i32 %asmresult.i.i.i.i.i.i.i15.i608, 0
  br i1 %tobool1.not.i.i.i.i.i16.i609, label %if.then71.i.if.end15.sink.split.i.i.i.i.i21.i_crit_edge, label %if.else.i.i.i.i.i19.i612, !prof !527

if.then71.i.if.end15.sink.split.i.i.i.i.i21.i_crit_edge: ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i21.i

if.else.i.i.i.i.i19.i612:                         ; preds = %if.then71.i
  %add.i.i.i.i.i17.i610 = add i32 %asmresult.i.i.i.i.i.i.i15.i608, 1
  %391 = or i32 %add.i.i.i.i.i17.i610, %asmresult.i.i.i.i.i.i.i15.i608
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %391)
  %.not.i.i.i.i.i18.i611 = icmp sgt i32 %391, -1
  br i1 %.not.i.i.i.i.i18.i611, label %if.else.i.i.i.i.i19.i612.u132_udev_get_kref.exit.i618_crit_edge, label %if.else.i.i.i.i.i19.i612.if.end15.sink.split.i.i.i.i.i21.i_crit_edge, !prof !523

if.else.i.i.i.i.i19.i612.if.end15.sink.split.i.i.i.i.i21.i_crit_edge: ; preds = %if.else.i.i.i.i.i19.i612
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i21.i

if.else.i.i.i.i.i19.i612.u132_udev_get_kref.exit.i618_crit_edge: ; preds = %if.else.i.i.i.i.i19.i612
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_udev_get_kref.exit.i618

if.end15.sink.split.i.i.i.i.i21.i:                ; preds = %if.else.i.i.i.i.i19.i612.if.end15.sink.split.i.i.i.i.i21.i_crit_edge, %if.then71.i.if.end15.sink.split.i.i.i.i.i21.i_crit_edge
  %.sink.i.i.i.i.i20.i = phi i32 [ 2, %if.then71.i.if.end15.sink.split.i.i.i.i.i21.i_crit_edge ], [ 1, %if.else.i.i.i.i.i19.i612.if.end15.sink.split.i.i.i.i.i21.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %arrayidx76.i, i32 noundef %.sink.i.i.i.i.i20.i) #10
  br label %u132_udev_get_kref.exit.i618

u132_udev_get_kref.exit.i618:                     ; preds = %if.end15.sink.split.i.i.i.i.i21.i, %if.else.i.i.i.i.i19.i612.u132_udev_get_kref.exit.i618_crit_edge
  %idxprom89.i = zext i8 %conv39 to i32
  %arrayidx90.i = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 21, i32 %idxprom75.i, i32 6, i32 %idxprom89.i
  %392 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_store1_noabort(i32 %392)
  store i8 %conv19.i557, ptr %arrayidx90.i, align 1
  %arrayidx92.i = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 21, i32 %idxprom75.i, i32 7, i32 %idxprom89.i
  %393 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_store1_noabort(i32 %393)
  store i8 %conv19.i557, ptr %arrayidx92.i, align 1
  %hcpriv93.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %394 = ptrtoint ptr %hcpriv93.i to i32
  call void @__asan_store4_noabort(i32 %394)
  store ptr %hcd_priv.i, ptr %hcpriv93.i, align 4
  %queue_size.i613 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 12
  %395 = ptrtoint ptr %queue_size.i613 to i32
  call void @__asan_store2_noabort(i32 %395)
  store i16 1, ptr %queue_size.i613, align 8
  %queue_last.i614 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 13
  %queue_next.i615 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 14
  %396 = ptrtoint ptr %queue_next.i615 to i32
  call void @__asan_store2_noabort(i32 %396)
  store i16 0, ptr %queue_next.i615, align 4
  %urb_list.i616 = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 15
  %397 = ptrtoint ptr %queue_last.i614 to i32
  call void @__asan_store2_noabort(i32 %397)
  store i16 1, ptr %queue_last.i614, align 2
  %398 = ptrtoint ptr %urb_list.i616 to i32
  call void @__asan_store4_noabort(i32 %398)
  store ptr %urb, ptr %urb_list.i616, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i548, i32 noundef %call7.i549) #10
  %399 = load ptr, ptr @workqueue, align 4
  %call.i.i22.i617 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %399, ptr noundef %scheduler.i563, i32 noundef 0) #10
  br i1 %call.i.i22.i617, label %if.then.i.i622, label %u132_udev_get_kref.exit.i618.cleanup233_crit_edge

u132_udev_get_kref.exit.i618.cleanup233_crit_edge: ; preds = %u132_udev_get_kref.exit.i618
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup233

if.then.i.i622:                                   ; preds = %u132_udev_get_kref.exit.i618
  %call.i.i.i.i.i.i.i23.i619 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i545, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %call7.i.i545, i32 1, i32 3, i32 1) #10
  %400 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7.i.i545, ptr nonnull %call7.i.i545, i32 1, ptr nonnull elementtype(i32) %call7.i.i545) #10, !srcloc !526
  %asmresult.i.i.i.i.i.i.i24.i620 = extractvalue { i32, i32, i32 } %400, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i24.i620)
  %tobool1.not.i.i.i.i.i25.i621 = icmp eq i32 %asmresult.i.i.i.i.i.i.i24.i620, 0
  br i1 %tobool1.not.i.i.i.i.i25.i621, label %if.then.i.i622.if.end15.sink.split.i.i.i.i.i30.i627_crit_edge, label %if.else.i.i.i.i.i28.i625, !prof !527

if.then.i.i622.if.end15.sink.split.i.i.i.i.i30.i627_crit_edge: ; preds = %if.then.i.i622
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i30.i627

if.else.i.i.i.i.i28.i625:                         ; preds = %if.then.i.i622
  %add.i.i.i.i.i26.i623 = add i32 %asmresult.i.i.i.i.i.i.i24.i620, 1
  %401 = or i32 %add.i.i.i.i.i26.i623, %asmresult.i.i.i.i.i.i.i24.i620
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %401)
  %.not.i.i.i.i.i27.i624 = icmp sgt i32 %401, -1
  br i1 %.not.i.i.i.i.i27.i624, label %if.else.i.i.i.i.i28.i625.cleanup233_crit_edge, label %if.else.i.i.i.i.i28.i625.if.end15.sink.split.i.i.i.i.i30.i627_crit_edge, !prof !523

if.else.i.i.i.i.i28.i625.if.end15.sink.split.i.i.i.i.i30.i627_crit_edge: ; preds = %if.else.i.i.i.i.i28.i625
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i30.i627

if.else.i.i.i.i.i28.i625.cleanup233_crit_edge:    ; preds = %if.else.i.i.i.i.i28.i625
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup233

if.end15.sink.split.i.i.i.i.i30.i627:             ; preds = %if.else.i.i.i.i.i28.i625.if.end15.sink.split.i.i.i.i.i30.i627_crit_edge, %if.then.i.i622.if.end15.sink.split.i.i.i.i.i30.i627_crit_edge
  %.sink.i.i.i.i.i29.i626 = phi i32 [ 2, %if.then.i.i622.if.end15.sink.split.i.i.i.i.i30.i627_crit_edge ], [ 1, %if.else.i.i.i.i.i28.i625.if.end15.sink.split.i.i.i.i.i30.i627_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call7.i.i545, i32 noundef %.sink.i.i.i.i.i29.i626) #10
  br label %cleanup233

if.else101.i:                                     ; preds = %u132_endp_get_kref.exit.i
  %conv68.i = zext i8 %conv35 to i32
  %arrayidx105.i = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 20, i32 %conv68.i
  %402 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %arrayidx105.i, align 1
  %idxprom109.i = zext i8 %403 to i32
  %arrayidx110.i = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 21, i32 %idxprom109.i
  %udev_number111.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 1
  %404 = ptrtoint ptr %udev_number111.i to i32
  call void @__asan_store1_noabort(i32 %404)
  store i8 %403, ptr %udev_number111.i, align 4
  %usb_addr112.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 3
  %405 = ptrtoint ptr %usb_addr112.i to i32
  call void @__asan_store1_noabort(i32 %405)
  store i8 %conv35, ptr %usb_addr112.i, align 2
  %usb_endp113.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 4
  %406 = ptrtoint ptr %usb_endp113.i to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 %conv39, ptr %usb_endp113.i, align 1
  %407 = ptrtoint ptr %dequeueing.i587 to i32
  call void @__asan_load4_noabort(i32 %407)
  %bf.load115.i = load i32, ptr %dequeueing.i587, align 8
  %408 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %pipe, align 4
  %410 = lshr i32 %409, 6
  %bf.shl128.i = and i32 %410, 50331648
  %bf.set121.i = and i32 %bf.load115.i, -251658241
  %bf.clear129.i = or i32 %bf.set121.i, %bf.shl128.i
  %bf.set130.i = or i32 %bf.clear129.i, 201326592
  store i32 %bf.set130.i, ptr %dequeueing.i587, align 8
  %call.i.i.i.i.i.i.i31.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx110.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %arrayidx110.i, i32 1, i32 3, i32 1) #10
  %411 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx110.i, ptr %arrayidx110.i, i32 1, ptr elementtype(i32) %arrayidx110.i) #10, !srcloc !526
  %asmresult.i.i.i.i.i.i.i32.i = extractvalue { i32, i32, i32 } %411, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i32.i)
  %tobool1.not.i.i.i.i.i33.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i32.i, 0
  br i1 %tobool1.not.i.i.i.i.i33.i, label %if.else101.i.if.end15.sink.split.i.i.i.i.i38.i_crit_edge, label %if.else.i.i.i.i.i36.i, !prof !527

if.else101.i.if.end15.sink.split.i.i.i.i.i38.i_crit_edge: ; preds = %if.else101.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i38.i

if.else.i.i.i.i.i36.i:                            ; preds = %if.else101.i
  %add.i.i.i.i.i34.i = add i32 %asmresult.i.i.i.i.i.i.i32.i, 1
  %412 = or i32 %add.i.i.i.i.i34.i, %asmresult.i.i.i.i.i.i.i32.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %412)
  %.not.i.i.i.i.i35.i = icmp sgt i32 %412, -1
  br i1 %.not.i.i.i.i.i35.i, label %if.else.i.i.i.i.i36.i.u132_udev_get_kref.exit39.i_crit_edge, label %if.else.i.i.i.i.i36.i.if.end15.sink.split.i.i.i.i.i38.i_crit_edge, !prof !523

if.else.i.i.i.i.i36.i.if.end15.sink.split.i.i.i.i.i38.i_crit_edge: ; preds = %if.else.i.i.i.i.i36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i38.i

if.else.i.i.i.i.i36.i.u132_udev_get_kref.exit39.i_crit_edge: ; preds = %if.else.i.i.i.i.i36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_udev_get_kref.exit39.i

if.end15.sink.split.i.i.i.i.i38.i:                ; preds = %if.else.i.i.i.i.i36.i.if.end15.sink.split.i.i.i.i.i38.i_crit_edge, %if.else101.i.if.end15.sink.split.i.i.i.i.i38.i_crit_edge
  %.sink.i.i.i.i.i37.i = phi i32 [ 2, %if.else101.i.if.end15.sink.split.i.i.i.i.i38.i_crit_edge ], [ 1, %if.else.i.i.i.i.i36.i.if.end15.sink.split.i.i.i.i.i38.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %arrayidx110.i, i32 noundef %.sink.i.i.i.i.i37.i) #10
  br label %u132_udev_get_kref.exit39.i

u132_udev_get_kref.exit39.i:                      ; preds = %if.end15.sink.split.i.i.i.i.i38.i, %if.else.i.i.i.i.i36.i.u132_udev_get_kref.exit39.i_crit_edge
  %enumeration.i628 = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 21, i32 %idxprom109.i, i32 2
  %413 = ptrtoint ptr %enumeration.i628 to i32
  call void @__asan_store1_noabort(i32 %413)
  store i8 2, ptr %enumeration.i628, align 4
  %idxprom132.i = zext i8 %conv39 to i32
  %arrayidx133.i = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 21, i32 %idxprom109.i, i32 6, i32 %idxprom132.i
  %414 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_store1_noabort(i32 %414)
  store i8 %conv19.i557, ptr %arrayidx133.i, align 1
  %arrayidx136.i = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 21, i32 %idxprom109.i, i32 7, i32 %idxprom132.i
  %415 = ptrtoint ptr %arrayidx136.i to i32
  call void @__asan_store1_noabort(i32 %415)
  store i8 %conv19.i557, ptr %arrayidx136.i, align 1
  %hcpriv137.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %416 = ptrtoint ptr %hcpriv137.i to i32
  call void @__asan_store4_noabort(i32 %416)
  store ptr %hcd_priv.i, ptr %hcpriv137.i, align 4
  %queue_size138.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 12
  %417 = ptrtoint ptr %queue_size138.i to i32
  call void @__asan_store2_noabort(i32 %417)
  store i16 1, ptr %queue_size138.i, align 8
  %queue_last139.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 13
  %queue_next140.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 14
  %418 = ptrtoint ptr %queue_next140.i to i32
  call void @__asan_store2_noabort(i32 %418)
  store i16 0, ptr %queue_next140.i, align 4
  %urb_list141.i = getelementptr inbounds %struct.u132_endp, ptr %call7.i.i545, i32 0, i32 15
  %419 = ptrtoint ptr %queue_last139.i to i32
  call void @__asan_store2_noabort(i32 %419)
  store i16 1, ptr %queue_last139.i, align 2
  %420 = ptrtoint ptr %urb_list141.i to i32
  call void @__asan_store4_noabort(i32 %420)
  store ptr %urb, ptr %urb_list141.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i548, i32 noundef %call7.i549) #10
  %421 = load ptr, ptr @workqueue, align 4
  %call.i.i41.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %421, ptr noundef %scheduler.i563, i32 noundef 0) #10
  br i1 %call.i.i41.i, label %if.then.i45.i, label %u132_udev_get_kref.exit39.i.cleanup233_crit_edge

u132_udev_get_kref.exit39.i.cleanup233_crit_edge: ; preds = %u132_udev_get_kref.exit39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup233

if.then.i45.i:                                    ; preds = %u132_udev_get_kref.exit39.i
  %call.i.i.i.i.i.i.i42.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i545, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %call7.i.i545, i32 1, i32 3, i32 1) #10
  %422 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7.i.i545, ptr nonnull %call7.i.i545, i32 1, ptr nonnull elementtype(i32) %call7.i.i545) #10, !srcloc !526
  %asmresult.i.i.i.i.i.i.i43.i = extractvalue { i32, i32, i32 } %422, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i43.i)
  %tobool1.not.i.i.i.i.i44.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i43.i, 0
  br i1 %tobool1.not.i.i.i.i.i44.i, label %if.then.i45.i.if.end15.sink.split.i.i.i.i.i50.i_crit_edge, label %if.else.i.i.i.i.i48.i, !prof !527

if.then.i45.i.if.end15.sink.split.i.i.i.i.i50.i_crit_edge: ; preds = %if.then.i45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i50.i

if.else.i.i.i.i.i48.i:                            ; preds = %if.then.i45.i
  %add.i.i.i.i.i46.i = add i32 %asmresult.i.i.i.i.i.i.i43.i, 1
  %423 = or i32 %add.i.i.i.i.i46.i, %asmresult.i.i.i.i.i.i.i43.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %423)
  %.not.i.i.i.i.i47.i = icmp sgt i32 %423, -1
  br i1 %.not.i.i.i.i.i47.i, label %if.else.i.i.i.i.i48.i.cleanup233_crit_edge, label %if.else.i.i.i.i.i48.i.if.end15.sink.split.i.i.i.i.i50.i_crit_edge, !prof !523

if.else.i.i.i.i.i48.i.if.end15.sink.split.i.i.i.i.i50.i_crit_edge: ; preds = %if.else.i.i.i.i.i48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i50.i

if.else.i.i.i.i.i48.i.cleanup233_crit_edge:       ; preds = %if.else.i.i.i.i.i48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup233

if.end15.sink.split.i.i.i.i.i50.i:                ; preds = %if.else.i.i.i.i.i48.i.if.end15.sink.split.i.i.i.i.i50.i_crit_edge, %if.then.i45.i.if.end15.sink.split.i.i.i.i.i50.i_crit_edge
  %.sink.i.i.i.i.i49.i = phi i32 [ 2, %if.then.i45.i.if.end15.sink.split.i.i.i.i.i50.i_crit_edge ], [ 1, %if.else.i.i.i.i.i48.i.if.end15.sink.split.i.i.i.i.i50.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call7.i.i545, i32 noundef %.sink.i.i.i.i.i49.i) #10
  br label %cleanup233

cleanup233:                                       ; preds = %if.end15.sink.split.i.i.i.i.i50.i, %if.else.i.i.i.i.i48.i.cleanup233_crit_edge, %u132_udev_get_kref.exit39.i.cleanup233_crit_edge, %if.end15.sink.split.i.i.i.i.i30.i627, %if.else.i.i.i.i.i28.i625.cleanup233_crit_edge, %u132_udev_get_kref.exit.i618.cleanup233_crit_edge, %if.then15.i554, %kmalloc.exit.i547.cleanup233_crit_edge, %if.else226.cleanup233_crit_edge, %if.end15.sink.split.i.i.i.i.i531, %if.else.i.i.i.i.i529.cleanup233_crit_edge, %if.else223.cleanup233_crit_edge, %if.end218.thread
  %retval.5 = phi i32 [ -22, %if.else226.cleanup233_crit_edge ], [ %retval194.0.ph, %if.end218.thread ], [ 0, %if.else223.cleanup233_crit_edge ], [ 0, %if.else.i.i.i.i.i529.cleanup233_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i.i531 ], [ %call13.i551, %if.then15.i554 ], [ -12, %kmalloc.exit.i547.cleanup233_crit_edge ], [ 0, %u132_udev_get_kref.exit.i618.cleanup233_crit_edge ], [ 0, %if.else.i.i.i.i.i28.i625.cleanup233_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i.i30.i627 ], [ 0, %u132_udev_get_kref.exit39.i.cleanup233_crit_edge ], [ 0, %if.else.i.i.i.i.i48.i.cleanup233_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i.i50.i ]
  call void @llvm.lifetime.end.p0(i64 94, ptr nonnull %data) #10
  br label %cleanup244

cleanup244:                                       ; preds = %cleanup233, %if.end15.sink.split.i.i.i.i.i30.i, %if.else.i.i.i.i.i28.i.cleanup244_crit_edge, %if.end117.i.cleanup244_crit_edge, %if.then15.i440, %kmalloc.exit.i433.cleanup244_crit_edge, %if.else159.cleanup244_crit_edge, %if.end15.sink.split.i.i.i.i.i417, %if.else.i.i.i.i.i415.cleanup244_crit_edge, %if.else156.cleanup244_crit_edge, %if.end151.thread, %do.end101, %if.end15.sink.split.i.i.i.i.i40.i, %if.else.i.i.i.i.i38.i.cleanup244_crit_edge, %if.end122.i.cleanup244_crit_edge, %if.then15.i, %kmalloc.exit.i.cleanup244_crit_edge, %if.else83.cleanup244_crit_edge, %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup244_crit_edge, %if.else80.cleanup244_crit_edge, %if.end75.thread, %do.end31, %do.end23, %do.end14
  %retval.7 = phi i32 [ -22, %do.end14 ], [ -19, %do.end23 ], [ -108, %do.end31 ], [ -22, %do.end101 ], [ %retval.5, %cleanup233 ], [ -22, %if.else83.cleanup244_crit_edge ], [ -22, %if.else159.cleanup244_crit_edge ], [ %retval53.0.ph, %if.end75.thread ], [ 0, %if.else80.cleanup244_crit_edge ], [ 0, %if.else.i.i.i.i.i.cleanup244_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i.i ], [ %call13.i, %if.then15.i ], [ -12, %kmalloc.exit.i.cleanup244_crit_edge ], [ 0, %if.end122.i.cleanup244_crit_edge ], [ 0, %if.else.i.i.i.i.i38.i.cleanup244_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i.i40.i ], [ %retval127.0.ph, %if.end151.thread ], [ 0, %if.else156.cleanup244_crit_edge ], [ 0, %if.else.i.i.i.i.i415.cleanup244_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i.i417 ], [ %call13.i437, %if.then15.i440 ], [ -12, %kmalloc.exit.i433.cleanup244_crit_edge ], [ 0, %if.end117.i.cleanup244_crit_edge ], [ 0, %if.else.i.i.i.i.i28.i.cleanup244_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i.i30.i ]
  ret i32 %retval.7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u132_urb_dequeue(ptr noundef %hcd, ptr noundef %urb, i32 noundef %status) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %going = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 1, i32 4
  %0 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp sgt i32 %1, 2
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %2 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %1) #13
  br label %cleanup32

if.else:                                          ; preds = %entry
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %4 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pipe, align 4
  %shr = lshr i32 %5, 8
  %conv = and i32 %shr, 127
  %shr3 = lshr i32 %5, 15
  %conv5 = and i32 %shr3, 15
  %arrayidx = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 20, i32 %conv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %idxprom8 = zext i8 %7 to i32
  %and11 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %if.else19, label %if.then12

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx14 = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 21, i32 %idxprom8, i32 6, i32 %conv5
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx14, align 1
  %conv16 = zext i8 %9 to i32
  %sub = add nsw i32 %conv16, -1
  %arrayidx17 = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 23, i32 %sub
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx17, align 4
  %call18 = tail call fastcc i32 @u132_endp_urb_dequeue(ptr noundef %hcd_priv.i, ptr noundef %11, ptr noundef %urb, i32 noundef %status)
  br label %cleanup32

if.else19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx22 = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 21, i32 %idxprom8, i32 7, i32 %conv5
  %12 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx22, align 1
  %conv25 = zext i8 %13 to i32
  %sub26 = add nsw i32 %conv25, -1
  %arrayidx27 = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 23, i32 %sub26
  %14 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx27, align 4
  %call28 = tail call fastcc i32 @u132_endp_urb_dequeue(ptr noundef %hcd_priv.i, ptr noundef %15, ptr noundef %urb, i32 noundef %status)
  br label %cleanup32

cleanup32:                                        ; preds = %if.else19, %if.then12, %do.end
  %retval.1 = phi i32 [ -19, %do.end ], [ %call18, %if.then12 ], [ %call28, %if.else19 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @u132_endpoint_disable(ptr noundef %hcd, ptr noundef %hep) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %going = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 1, i32 4
  %0 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp sgt i32 %1, 2
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %platform_dev = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %2 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.195, ptr noundef %hcd_priv.i, ptr noundef %hcd, ptr noundef %hep, i32 noundef %1) #13
  br label %if.end3

if.else:                                          ; preds = %entry
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %hep, i32 0, i32 5
  %4 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hcpriv, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else.if.end3_crit_edge, label %if.then2

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.else
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end3_crit_edge, label %if.then10.i.i.i.i.i, !prof !523

if.end5.i.i.i.i.i.if.end3_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #10
  br label %if.end3

if.then.i.i:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  tail call fastcc void @u132_endp_delete(ptr noundef nonnull %5) #10, !callees !525
  br label %if.end3

if.end3:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end3_crit_edge, %if.else.if.end3_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u132_hub_status_data(ptr noundef %hcd, ptr nocapture noundef %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %going = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 1, i32 4
  %0 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %2 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.197, ptr noundef %hcd, i32 noundef %1) #13
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp3 = icmp eq i32 %1, 1
  br i1 %cmp3, label %do.end7, label %if.else10

do.end7:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev8 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %4 = ptrtoint ptr %platform_dev8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_dev8, align 4
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.64, ptr noundef %hcd) #13
  br label %cleanup

if.else10:                                        ; preds = %if.else
  %flags = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 12
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else10.if.end22_crit_edge, label %if.then11

if.else10.if.end22_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then11:                                        ; preds = %if.else10
  %hc_roothub_a = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 2
  %8 = ptrtoint ptr %hc_roothub_a to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hc_roothub_a, align 4
  %and12 = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and12)
  %cmp13 = icmp ugt i32 %and12, 15
  br i1 %cmp13, label %done.thread, label %if.then11.if.end22_crit_edge

if.then11.if.end22_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

done.thread:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev18 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %10 = ptrtoint ptr %platform_dev18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platform_dev18, align 4
  %dev19 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.202, i32 noundef %and12) #13
  br label %27

if.end22:                                         ; preds = %if.then11.if.end22_crit_edge, %if.else10.if.end22_crit_edge
  %hc_roothub_status = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 1, i32 4, i32 7
  %12 = ptrtoint ptr %hc_roothub_status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hc_roothub_status, align 4
  %and23 = and i32 %13, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp ne i32 %and23, 0
  %. = zext i1 %tobool24.not to i8
  %.89 = zext i1 %tobool24.not to i32
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %., ptr %buf, align 1
  %num_ports = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 1, i32 4, i32 2
  %15 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %16)
  %cmp29 = icmp sgt i32 %16, 7
  br i1 %cmp29, label %if.then30, label %if.end22.if.end32_crit_edge

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then30:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx31 = getelementptr i8, ptr %buf, i32 1
  %17 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx31, align 1
  %18 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %num_ports, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end22.if.end32_crit_edge
  %19 = phi i32 [ %.pr, %if.then30 ], [ %16, %if.end22.if.end32_crit_edge ]
  %length.0 = phi i32 [ 2, %if.then30 ], [ 1, %if.end22.if.end32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp3494 = icmp sgt i32 %19, 0
  br i1 %cmp3494, label %if.end32.for.body_crit_edge, label %if.end32.done_crit_edge

if.end32.done_crit_edge:                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end32.for.body_crit_edge
  %changed.197 = phi i32 [ %changed.2, %for.inc.for.body_crit_edge ], [ %.89, %if.end32.for.body_crit_edge ]
  %i.095 = phi i32 [ %inc63, %for.inc.for.body_crit_edge ], [ 0, %if.end32.for.body_crit_edge ]
  %arrayidx35 = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 15, i32 %i.095
  %20 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx35, align 4
  %and36 = and i32 %21, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %for.body.for.inc_crit_edge, label %if.then38

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then38:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.095)
  %cmp39 = icmp ult i32 %i.095, 7
  %shl = shl nuw nsw i32 2, %i.095
  %sub = add nsw i32 %i.095, -7
  %shl44 = shl nuw i32 1, %sub
  %not.cmp39 = xor i1 %cmp39, true
  %buf.sink99.idx = zext i1 %not.cmp39 to i32
  %buf.sink99 = getelementptr i8, ptr %buf, i32 %buf.sink99.idx
  %shl.sink = select i1 %cmp39, i32 %shl, i32 %shl44
  %22 = ptrtoint ptr %buf.sink99 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buf.sink99, align 1
  %24 = trunc i32 %shl.sink to i8
  %conv42 = or i8 %23, %24
  store i8 %conv42, ptr %buf.sink99, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then38, %for.body.for.inc_crit_edge
  %changed.2 = phi i32 [ %changed.197, %for.body.for.inc_crit_edge ], [ 1, %if.then38 ]
  %inc63 = add nuw nsw i32 %i.095, 1
  %25 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_ports, align 4
  %cmp34 = icmp slt i32 %inc63, %26
  br i1 %cmp34, label %for.inc.for.body_crit_edge, label %for.inc.done_crit_edge

for.inc.done_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

done:                                             ; preds = %for.inc.done_crit_edge, %if.end32.done_crit_edge
  %changed.1.lcssa = phi i32 [ %.89, %if.end32.done_crit_edge ], [ %changed.2, %for.inc.done_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %changed.1.lcssa)
  %tobool64.not = icmp eq i32 %changed.1.lcssa, 0
  br i1 %tobool64.not, label %done._crit_edge, label %done.cleanup_crit_edge

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

done._crit_edge:                                  ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  br label %27

27:                                               ; preds = %done._crit_edge, %done.thread
  br label %cleanup

cleanup:                                          ; preds = %27, %done.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -108, %do.end7 ], [ 0, %27 ], [ %length.0, %done.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u132_hub_control(ptr noundef %hcd, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr nocapture noundef %buf, i16 noundef zeroext %wLength) #4 align 64 {
entry:
  %fmnumber.i.i = alloca i32, align 4
  %portstat.i.i = alloca i32, align 4
  %rh_portstatus.i = alloca i32, align 4
  %rh_status.i = alloca i32, align 4
  %rh_a.i = alloca i32, align 4
  %rh_b.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %going = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 1, i32 4
  %0 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %2 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %1) #13
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp3 = icmp eq i32 %1, 1
  br i1 %cmp3, label %do.end7, label %if.else10

do.end7:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev8 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %4 = ptrtoint ptr %platform_dev8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_dev8, align 4
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.20) #13
  br label %cleanup

if.else10:                                        ; preds = %if.else
  %sw_lock = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %sw_lock, i32 noundef 0) #10
  %6 = zext i16 %typeReq to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.250)
  switch i16 %typeReq, label %if.else10.stall_crit_edge [
    i16 8193, label %sw.bb
    i16 8195, label %sw.bb14
    i16 8961, label %sw.bb19
    i16 -24570, label %sw.bb22
    i16 -24576, label %sw.bb27
    i16 -23808, label %sw.bb32
    i16 8963, label %sw.bb37
  ]

if.else10.stall_crit_edge:                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #12
  br label %stall

sw.bb:                                            ; preds = %if.else10
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %wValue)
  %switch = icmp ult i16 %wValue, 2
  br i1 %switch, label %sw.bb.sw.epilog44_crit_edge, label %sw.bb.stall_crit_edge

sw.bb.stall_crit_edge:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %stall

sw.bb.sw.epilog44_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog44

sw.bb14:                                          ; preds = %if.else10
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %wValue)
  %switch71 = icmp ult i16 %wValue, 2
  br i1 %switch71, label %sw.bb14.sw.epilog44_crit_edge, label %sw.bb14.stall_crit_edge

sw.bb14.stall_crit_edge:                          ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  br label %stall

sw.bb14.sw.epilog44_crit_edge:                    ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog44

sw.bb19:                                          ; preds = %if.else10
  %conv.i = zext i16 %wIndex to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wIndex)
  %cmp.i = icmp eq i16 %wIndex, 0
  br i1 %cmp.i, label %sw.bb19.error_crit_edge, label %lor.lhs.false.i

sw.bb19.error_crit_edge:                          ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

lor.lhs.false.i:                                  ; preds = %sw.bb19
  %num_ports.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 1, i32 4, i32 2
  %7 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_ports.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv.i)
  %cmp3.i = icmp slt i32 %8, %conv.i
  br i1 %cmp3.i, label %lor.lhs.false.i.error_crit_edge, label %if.else.i

lor.lhs.false.i.error_crit_edge:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.else.i:                                        ; preds = %lor.lhs.false.i
  %sub.i = add nsw i32 %conv.i, -1
  %conv7.i = zext i16 %wValue to i32
  %shl.i = shl nuw i32 1, %conv7.i
  %neg.i = xor i32 %shl.i, -1
  %Status.i = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 22, i32 %sub.i, i32 4
  %9 = ptrtoint ptr %Status.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %Status.i, align 4
  %and.i = and i32 %10, %neg.i
  store i32 %and.i, ptr %Status.i, align 4
  %11 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.251)
  switch i16 %wValue, label %if.else.i.error_crit_edge [
    i16 1, label %if.else.i.u132_roothub_clearportfeature.exit_crit_edge
    i16 17, label %sw.bb9.i
    i16 2, label %sw.bb10.i
    i16 18, label %sw.bb15.i
    i16 8, label %sw.bb16.i
    i16 16, label %sw.bb17.i
    i16 19, label %sw.bb18.i
    i16 20, label %sw.bb19.i
  ]

if.else.i.u132_roothub_clearportfeature.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_roothub_clearportfeature.exit

if.else.i.error_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

sw.bb9.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_roothub_clearportfeature.exit

sw.bb10.i:                                        ; preds = %if.else.i
  %hc_control.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 1, i32 4, i32 3
  %12 = ptrtoint ptr %hc_control.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hc_control.i, align 4
  %and11.i = and i32 %13, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and11.i)
  %cmp12.not.i = icmp eq i32 %and11.i, 128
  br i1 %cmp12.not.i, label %sw.bb10.i.u132_roothub_clearportfeature.exit_crit_edge, label %do.end.i

sw.bb10.i.u132_roothub_clearportfeature.exit_crit_edge: ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_roothub_clearportfeature.exit

do.end.i:                                         ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %14 = ptrtoint ptr %platform_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.207) #13
  br label %u132_roothub_clearportfeature.exit

sw.bb15.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_roothub_clearportfeature.exit

sw.bb16.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_roothub_clearportfeature.exit

sw.bb17.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_roothub_clearportfeature.exit

sw.bb18.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_roothub_clearportfeature.exit

sw.bb19.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_roothub_clearportfeature.exit

u132_roothub_clearportfeature.exit:               ; preds = %sw.bb19.i, %sw.bb18.i, %sw.bb17.i, %sw.bb16.i, %sw.bb15.i, %do.end.i, %sw.bb10.i.u132_roothub_clearportfeature.exit_crit_edge, %sw.bb9.i, %if.else.i.u132_roothub_clearportfeature.exit_crit_edge
  %temp.0.i = phi i32 [ 1048576, %sw.bb19.i ], [ 524288, %sw.bb18.i ], [ 65536, %sw.bb17.i ], [ 512, %sw.bb16.i ], [ 262144, %sw.bb15.i ], [ 8, %do.end.i ], [ 8, %sw.bb10.i.u132_roothub_clearportfeature.exit_crit_edge ], [ 131072, %sw.bb9.i ], [ 1, %if.else.i.u132_roothub_clearportfeature.exit_crit_edge ]
  %platform_dev20.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %16 = ptrtoint ptr %platform_dev20.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %platform_dev20.i, align 4
  %18 = shl nsw i32 %sub.i, 2
  %19 = add nsw i32 %18, 84
  %call.i = tail call i32 @usb_ftdi_elan_write_pcimem(ptr noundef %17, i32 noundef %19, i8 noundef zeroext 0, i32 noundef %temp.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %u132_roothub_clearportfeature.exit.sw.epilog44_crit_edge, label %u132_roothub_clearportfeature.exit.error_crit_edge

u132_roothub_clearportfeature.exit.error_crit_edge: ; preds = %u132_roothub_clearportfeature.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

u132_roothub_clearportfeature.exit.sw.epilog44_crit_edge: ; preds = %u132_roothub_clearportfeature.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog44

sw.bb22:                                          ; preds = %if.else10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rh_a.i) #10
  %20 = ptrtoint ptr %rh_a.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %rh_a.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rh_b.i) #10
  %21 = ptrtoint ptr %rh_b.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %rh_b.i, align 4
  %platform_dev.i72 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %22 = ptrtoint ptr %platform_dev.i72 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %platform_dev.i72, align 4
  %call.i73 = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %23, i32 noundef 72, i8 noundef zeroext 0, ptr noundef nonnull %rh_a.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool.not.i = icmp eq i32 %call.i73, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb22.u132_roothub_descriptor.exit.thread_crit_edge

sw.bb22.u132_roothub_descriptor.exit.thread_crit_edge: ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_roothub_descriptor.exit.thread

if.end.i:                                         ; preds = %sw.bb22
  %bDescriptorType.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 1
  %24 = ptrtoint ptr %bDescriptorType.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 41, ptr %bDescriptorType.i, align 1
  %25 = ptrtoint ptr %rh_a.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rh_a.i, align 4
  %shr.i = lshr i32 %26, 24
  %conv.i74 = trunc i32 %shr.i to i8
  %bPwrOn2PwrGood.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 4
  %27 = ptrtoint ptr %bPwrOn2PwrGood.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i74, ptr %bPwrOn2PwrGood.i, align 1
  %bHubContrCurrent.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 5
  %28 = ptrtoint ptr %bHubContrCurrent.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %bHubContrCurrent.i, align 1
  %num_ports.i75 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 1, i32 4, i32 2
  %29 = ptrtoint ptr %num_ports.i75 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_ports.i75, align 4
  %conv2.i = trunc i32 %30 to i8
  %bNbrPorts.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 2
  %31 = ptrtoint ptr %bNbrPorts.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv2.i, ptr %bNbrPorts.i, align 1
  %32 = load i32, ptr %num_ports.i75, align 4
  %div.i = sdiv i32 %32, 8
  %div.tr.i = trunc i32 %div.i to i8
  %33 = shl i8 %div.tr.i, 1
  %conv7.i76 = add i8 %33, 9
  %34 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv7.i76, ptr %buf, align 1
  %35 = trunc i32 %26 to i16
  %36 = and i16 %35, 768
  %and21.i = and i32 %26, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  %37 = and i16 %35, 2048
  %temp.2.v.i = select i1 %tobool22.not.i, i16 %37, i16 4096
  %temp.2.i = or i16 %temp.2.v.i, %36
  %wHubCharacteristics.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 3
  %38 = ptrtoint ptr %wHubCharacteristics.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %temp.2.i, ptr %wHubCharacteristics.i, align 1
  %39 = ptrtoint ptr %platform_dev.i72 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %platform_dev.i72, align 4
  %call36.i = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %40, i32 noundef 76, i8 noundef zeroext 0, ptr noundef nonnull %rh_b.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end39.i, label %if.end.i.u132_roothub_descriptor.exit.thread_crit_edge

if.end.i.u132_roothub_descriptor.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_roothub_descriptor.exit.thread

if.end39.i:                                       ; preds = %if.end.i
  %u.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6
  %41 = ptrtoint ptr %u.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 -1, ptr %u.i, align 1
  %42 = ptrtoint ptr %rh_b.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rh_b.i, align 4
  %conv41.i = trunc i32 %43 to i8
  store i8 %conv41.i, ptr %u.i, align 1
  %44 = ptrtoint ptr %num_ports.i75 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_ports.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %45)
  %cmp.i77 = icmp sgt i32 %45, 7
  br i1 %cmp.i77, label %if.then46.i, label %if.else56.i

if.then46.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  %and47.i = lshr i32 %43, 8
  %conv49.i = trunc i32 %and47.i to i8
  %arrayidx52.i = getelementptr %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6, i32 0, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv49.i, ptr %arrayidx52.i, align 1
  %arrayidx55.i = getelementptr %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6, i32 0, i32 0, i32 2
  br label %u132_roothub_descriptor.exit

if.else56.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx59.i = getelementptr %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6, i32 0, i32 0, i32 1
  br label %u132_roothub_descriptor.exit

u132_roothub_descriptor.exit.thread:              ; preds = %if.end.i.u132_roothub_descriptor.exit.thread_crit_edge, %sw.bb22.u132_roothub_descriptor.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call36.i, %if.end.i.u132_roothub_descriptor.exit.thread_crit_edge ], [ %call.i73, %sw.bb22.u132_roothub_descriptor.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rh_b.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rh_a.i) #10
  br label %error

u132_roothub_descriptor.exit:                     ; preds = %if.else56.i, %if.then46.i
  %arrayidx55.sink.i = phi ptr [ %arrayidx55.i, %if.then46.i ], [ %arrayidx59.i, %if.else56.i ]
  %47 = ptrtoint ptr %arrayidx55.sink.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -1, ptr %arrayidx55.sink.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rh_b.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rh_a.i) #10
  br label %sw.epilog44

sw.bb27:                                          ; preds = %if.else10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rh_status.i) #10
  %48 = ptrtoint ptr %rh_status.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %rh_status.i, align 4
  %platform_dev.i78 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %49 = ptrtoint ptr %platform_dev.i78 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %platform_dev.i78, align 4
  %call.i79 = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %50, i32 noundef 80, i8 noundef zeroext 0, ptr noundef nonnull %rh_status.i) #10
  %51 = ptrtoint ptr %rh_status.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rh_status.i, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %52) #10
  %54 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %buf, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rh_status.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool29.not = icmp eq i32 %call.i79, 0
  br i1 %tobool29.not, label %sw.bb27.sw.epilog44_crit_edge, label %sw.bb27.error_crit_edge

sw.bb27.error_crit_edge:                          ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

sw.bb27.sw.epilog44_crit_edge:                    ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog44

sw.bb32:                                          ; preds = %if.else10
  %conv.i80 = zext i16 %wIndex to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wIndex)
  %cmp.i81 = icmp eq i16 %wIndex, 0
  br i1 %cmp.i81, label %sw.bb32.error_crit_edge, label %lor.lhs.false.i84

sw.bb32.error_crit_edge:                          ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

lor.lhs.false.i84:                                ; preds = %sw.bb32
  %num_ports.i82 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 1, i32 4, i32 2
  %55 = ptrtoint ptr %num_ports.i82 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_ports.i82, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %conv.i80)
  %cmp3.i83 = icmp slt i32 %56, %conv.i80
  br i1 %cmp3.i83, label %lor.lhs.false.i84.error_crit_edge, label %if.else.i89

lor.lhs.false.i84.error_crit_edge:                ; preds = %lor.lhs.false.i84
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.else.i89:                                      ; preds = %lor.lhs.false.i84
  %sub.i85 = add nsw i32 %conv.i80, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rh_portstatus.i) #10
  %57 = ptrtoint ptr %rh_portstatus.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %rh_portstatus.i, align 4
  %platform_dev.i86 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %58 = ptrtoint ptr %platform_dev.i86 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %platform_dev.i86, align 4
  %60 = shl nsw i32 %sub.i85, 2
  %61 = add nsw i32 %60, 84
  %call.i87 = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %59, i32 noundef %61, i8 noundef zeroext 0, ptr noundef nonnull %rh_portstatus.i) #10
  %62 = ptrtoint ptr %rh_portstatus.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rh_portstatus.i, align 4
  %64 = call i32 @llvm.bswap.i32(i32 %63) #10
  %65 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %buf, align 4
  %add.ptr.i = getelementptr i32, ptr %buf, i32 2
  %66 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %add.ptr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool.not.i88 = icmp eq i16 %67, 0
  br i1 %tobool.not.i88, label %if.else.i89.u132_roothub_portstatus.exit_crit_edge, label %do.end.i91

if.else.i89.u132_roothub_portstatus.exit_crit_edge: ; preds = %if.else.i89
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_roothub_portstatus.exit

do.end.i91:                                       ; preds = %if.else.i89
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %platform_dev.i86 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %platform_dev.i86, align 4
  %dev.i90 = getelementptr inbounds %struct.platform_device, ptr %69, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i90, ptr noundef nonnull @.str.209, i32 noundef %sub.i85, i32 noundef %64) #13
  br label %u132_roothub_portstatus.exit

u132_roothub_portstatus.exit:                     ; preds = %do.end.i91, %if.else.i89.u132_roothub_portstatus.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rh_portstatus.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool34.not = icmp eq i32 %call.i87, 0
  br i1 %tobool34.not, label %u132_roothub_portstatus.exit.sw.epilog44_crit_edge, label %u132_roothub_portstatus.exit.error_crit_edge

u132_roothub_portstatus.exit.error_crit_edge:     ; preds = %u132_roothub_portstatus.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

u132_roothub_portstatus.exit.sw.epilog44_crit_edge: ; preds = %u132_roothub_portstatus.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog44

sw.bb37:                                          ; preds = %if.else10
  %conv.i94 = zext i16 %wIndex to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wIndex)
  %cmp.i95 = icmp eq i16 %wIndex, 0
  br i1 %cmp.i95, label %sw.bb37.error_crit_edge, label %lor.lhs.false.i98

sw.bb37.error_crit_edge:                          ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

lor.lhs.false.i98:                                ; preds = %sw.bb37
  %num_ports.i96 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 1, i32 4, i32 2
  %70 = ptrtoint ptr %num_ports.i96 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_ports.i96, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %conv.i94)
  %cmp3.i97 = icmp slt i32 %71, %conv.i94
  br i1 %cmp3.i97, label %lor.lhs.false.i98.error_crit_edge, label %if.else.i105

lor.lhs.false.i98.error_crit_edge:                ; preds = %lor.lhs.false.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.else.i105:                                     ; preds = %lor.lhs.false.i98
  %sub.i99 = add nsw i32 %conv.i94, -1
  %conv7.i100 = zext i16 %wValue to i32
  %shl.i101 = shl nuw i32 1, %conv7.i100
  %neg.i102 = xor i32 %shl.i101, -1
  %Status.i103 = getelementptr %struct.u132, ptr %hcd_priv.i, i32 0, i32 22, i32 %sub.i99, i32 4
  %72 = ptrtoint ptr %Status.i103 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %Status.i103, align 4
  %and.i104 = and i32 %73, %neg.i102
  store i32 %and.i104, ptr %Status.i103, align 4
  %74 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.252)
  switch i16 %wValue, label %if.else.i105.error_crit_edge [
    i16 2, label %sw.bb.i
    i16 8, label %sw.bb9.i108
    i16 4, label %sw.bb12.i
  ]

if.else.i105.error_crit_edge:                     ; preds = %if.else.i105
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

sw.bb.i:                                          ; preds = %if.else.i105
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev.i106 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %75 = ptrtoint ptr %platform_dev.i106 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %platform_dev.i106, align 4
  %77 = shl nsw i32 %sub.i99, 2
  %78 = add nsw i32 %77, 84
  %call.i107 = tail call i32 @usb_ftdi_elan_write_pcimem(ptr noundef %76, i32 noundef %78, i8 noundef zeroext 0, i32 noundef 4) #10
  br label %u132_roothub_setportfeature.exit

sw.bb9.i108:                                      ; preds = %if.else.i105
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev10.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %79 = ptrtoint ptr %platform_dev10.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %platform_dev10.i, align 4
  %81 = shl nsw i32 %sub.i99, 2
  %82 = add nsw i32 %81, 84
  %call11.i = tail call i32 @usb_ftdi_elan_write_pcimem(ptr noundef %80, i32 noundef %82, i8 noundef zeroext 0, i32 noundef 256) #10
  br label %u132_roothub_setportfeature.exit

sw.bb12.i:                                        ; preds = %if.else.i105
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fmnumber.i.i) #10
  %83 = ptrtoint ptr %fmnumber.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -1, ptr %fmnumber.i.i, align 4, !annotation !520
  %platform_dev.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %84 = ptrtoint ptr %platform_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %platform_dev.i.i, align 4
  %call.i.i = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %85, i32 noundef 60, i8 noundef zeroext 0, ptr noundef nonnull %fmnumber.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb12.i.u132_roothub_portreset.exit.i_crit_edge

sw.bb12.i.u132_roothub_portreset.exit.i_crit_edge: ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_roothub_portreset.exit.i

if.end.i.i:                                       ; preds = %sw.bb12.i
  %86 = ptrtoint ptr %fmnumber.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %fmnumber.i.i, align 4
  %conv.i.i = trunc i32 %87 to i16
  %conv3.i.i = add i16 %conv.i.i, 10
  %88 = shl nsw i32 %sub.i99, 2
  %89 = add nsw i32 %88, 84
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond46.i.i.do.body.i.i_crit_edge, %if.end.i.i
  %now.0.i.i = phi i16 [ %conv.i.i, %if.end.i.i ], [ %conv45.i.i, %do.cond46.i.i.do.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %portstat.i.i) #10
  %90 = ptrtoint ptr %portstat.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %portstat.i.i, align 4, !annotation !520
  %sub.i.i = sub i16 %now.0.i.i, %conv3.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub.i.i)
  %cmp.i.i = icmp slt i16 %sub.i.i, 0
  br label %do.body4.i.i

do.body4.i.i:                                     ; preds = %if.end9.i.i.do.body4.i.i_crit_edge, %do.body.i.i
  %91 = ptrtoint ptr %platform_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %platform_dev.i.i, align 4
  %call6.i.i = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %92, i32 noundef %89, i8 noundef zeroext 0, ptr noundef nonnull %portstat.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %do.body4.i.i.cleanup.thread.i.i_crit_edge

do.body4.i.i.cleanup.thread.i.i_crit_edge:        ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i.i

if.end9.i.i:                                      ; preds = %do.body4.i.i
  %93 = ptrtoint ptr %portstat.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %portstat.i.i, align 4
  %and.i.i = and i32 %94, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool10.not.i.i = icmp ne i32 %and.i.i, 0
  %or.cond.i.i = select i1 %tobool10.not.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end9.i.i.do.body4.i.i_crit_edge, label %do.end.i.i

if.end9.i.i.do.body4.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i.i

do.end.i.i:                                       ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool18.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end20.i.i, label %do.end.i.i.cleanup.thread.i.i_crit_edge

do.end.i.i.cleanup.thread.i.i_crit_edge:          ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i.i

if.end20.i.i:                                     ; preds = %do.end.i.i
  %and21.i.i = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool22.not.i.i = icmp eq i32 %and21.i.i, 0
  br i1 %tobool22.not.i.i, label %cleanup.i.i, label %if.then23.i.i

if.then23.i.i:                                    ; preds = %if.end20.i.i
  %and24.i.i = and i32 %94, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.then23.i.i.if.end34.i.i_crit_edge, label %if.then26.i.i

if.then23.i.i.if.end34.i.i_crit_edge:             ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i.i

if.then26.i.i:                                    ; preds = %if.then23.i.i
  %95 = ptrtoint ptr %platform_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %platform_dev.i.i, align 4
  %call28.i.i = call i32 @usb_ftdi_elan_write_pcimem(ptr noundef %96, i32 noundef %89, i8 noundef zeroext 0, i32 noundef 1048576) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0
  br i1 %tobool29.not.i.i, label %if.then26.i.i.if.end34.i.i_crit_edge, label %if.then26.i.i.cleanup.thread.i.i_crit_edge

if.then26.i.i.cleanup.thread.i.i_crit_edge:       ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i.i

if.then26.i.i.if.end34.i.i_crit_edge:             ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then26.i.i.if.end34.i.i_crit_edge, %if.then23.i.i.if.end34.i.i_crit_edge
  %97 = ptrtoint ptr %platform_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %platform_dev.i.i, align 4
  %call36.i.i = call i32 @usb_ftdi_elan_write_pcimem(ptr noundef %98, i32 noundef %89, i8 noundef zeroext 0, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i)
  %tobool37.not.i.i = icmp eq i32 %call36.i.i, 0
  br i1 %tobool37.not.i.i, label %if.end39.i.i, label %if.end34.i.i.cleanup.thread.i.i_crit_edge

if.end34.i.i.cleanup.thread.i.i_crit_edge:        ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i.i

if.end39.i.i:                                     ; preds = %if.end34.i.i
  call void @msleep(i32 noundef 10) #10
  %99 = ptrtoint ptr %platform_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %platform_dev.i.i, align 4
  %call41.i.i = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %100, i32 noundef 60, i8 noundef zeroext 0, ptr noundef nonnull %fmnumber.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i.i)
  %tobool42.not.i.i = icmp eq i32 %call41.i.i, 0
  br i1 %tobool42.not.i.i, label %do.cond46.i.i, label %if.end39.i.i.cleanup.thread.i.i_crit_edge

if.end39.i.i.cleanup.thread.i.i_crit_edge:        ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %if.end39.i.i.cleanup.thread.i.i_crit_edge, %if.end34.i.i.cleanup.thread.i.i_crit_edge, %if.then26.i.i.cleanup.thread.i.i_crit_edge, %do.end.i.i.cleanup.thread.i.i_crit_edge, %do.body4.i.i.cleanup.thread.i.i_crit_edge
  %retval.1.ph.i.i = phi i32 [ %call6.i.i, %do.body4.i.i.cleanup.thread.i.i_crit_edge ], [ -19, %do.end.i.i.cleanup.thread.i.i_crit_edge ], [ %call28.i.i, %if.then26.i.i.cleanup.thread.i.i_crit_edge ], [ %call36.i.i, %if.end34.i.i.cleanup.thread.i.i_crit_edge ], [ %call41.i.i, %if.end39.i.i.cleanup.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %portstat.i.i) #10
  br label %u132_roothub_portreset.exit.i

cleanup.i.i:                                      ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %portstat.i.i) #10
  br label %u132_roothub_portreset.exit.i

do.cond46.i.i:                                    ; preds = %if.end39.i.i
  %101 = ptrtoint ptr %fmnumber.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %fmnumber.i.i, align 4
  %conv45.i.i = trunc i32 %102 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %portstat.i.i) #10
  %sub49.i.i = sub i16 %conv45.i.i, %conv3.i.i
  %cmp52.i.i = icmp slt i16 %sub49.i.i, 0
  br i1 %cmp52.i.i, label %do.cond46.i.i.do.body.i.i_crit_edge, label %do.cond46.i.i.u132_roothub_portreset.exit.i_crit_edge

do.cond46.i.i.u132_roothub_portreset.exit.i_crit_edge: ; preds = %do.cond46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_roothub_portreset.exit.i

do.cond46.i.i.do.body.i.i_crit_edge:              ; preds = %do.cond46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

u132_roothub_portreset.exit.i:                    ; preds = %do.cond46.i.i.u132_roothub_portreset.exit.i_crit_edge, %cleanup.i.i, %cleanup.thread.i.i, %sw.bb12.i.u132_roothub_portreset.exit.i_crit_edge
  %retval.2.i.i = phi i32 [ %call.i.i, %sw.bb12.i.u132_roothub_portreset.exit.i_crit_edge ], [ %retval.1.ph.i.i, %cleanup.thread.i.i ], [ 0, %cleanup.i.i ], [ 0, %do.cond46.i.i.u132_roothub_portreset.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fmnumber.i.i) #10
  br label %u132_roothub_setportfeature.exit

u132_roothub_setportfeature.exit:                 ; preds = %u132_roothub_portreset.exit.i, %sw.bb9.i108, %sw.bb.i
  %retval.1.i109 = phi i32 [ %retval.2.i.i, %u132_roothub_portreset.exit.i ], [ %call11.i, %sw.bb9.i108 ], [ %call.i107, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i109)
  %tobool39.not = icmp eq i32 %retval.1.i109, 0
  br i1 %tobool39.not, label %u132_roothub_setportfeature.exit.sw.epilog44_crit_edge, label %u132_roothub_setportfeature.exit.error_crit_edge

u132_roothub_setportfeature.exit.error_crit_edge: ; preds = %u132_roothub_setportfeature.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

u132_roothub_setportfeature.exit.sw.epilog44_crit_edge: ; preds = %u132_roothub_setportfeature.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog44

error:                                            ; preds = %u132_roothub_setportfeature.exit.error_crit_edge, %if.else.i105.error_crit_edge, %lor.lhs.false.i98.error_crit_edge, %sw.bb37.error_crit_edge, %u132_roothub_portstatus.exit.error_crit_edge, %lor.lhs.false.i84.error_crit_edge, %sw.bb32.error_crit_edge, %sw.bb27.error_crit_edge, %u132_roothub_descriptor.exit.thread, %u132_roothub_clearportfeature.exit.error_crit_edge, %if.else.i.error_crit_edge, %lor.lhs.false.i.error_crit_edge, %sw.bb19.error_crit_edge
  %retval11.0 = phi i32 [ %retval.1.i109, %u132_roothub_setportfeature.exit.error_crit_edge ], [ %call.i87, %u132_roothub_portstatus.exit.error_crit_edge ], [ %call.i79, %sw.bb27.error_crit_edge ], [ %call.i, %u132_roothub_clearportfeature.exit.error_crit_edge ], [ %retval.0.i.ph, %u132_roothub_descriptor.exit.thread ], [ -32, %if.else.i.error_crit_edge ], [ -22, %sw.bb19.error_crit_edge ], [ -22, %lor.lhs.false.i.error_crit_edge ], [ -22, %lor.lhs.false.i84.error_crit_edge ], [ -22, %sw.bb32.error_crit_edge ], [ -32, %if.else.i105.error_crit_edge ], [ -22, %sw.bb37.error_crit_edge ], [ -22, %lor.lhs.false.i98.error_crit_edge ]
  %state.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %103 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %state.i, align 4
  %104 = ptrtoint ptr %going to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %going, align 4
  br label %sw.epilog44

stall:                                            ; preds = %sw.bb14.stall_crit_edge, %sw.bb.stall_crit_edge, %if.else10.stall_crit_edge
  br label %sw.epilog44

sw.epilog44:                                      ; preds = %stall, %error, %u132_roothub_setportfeature.exit.sw.epilog44_crit_edge, %u132_roothub_portstatus.exit.sw.epilog44_crit_edge, %sw.bb27.sw.epilog44_crit_edge, %u132_roothub_descriptor.exit, %u132_roothub_clearportfeature.exit.sw.epilog44_crit_edge, %sw.bb14.sw.epilog44_crit_edge, %sw.bb.sw.epilog44_crit_edge
  %retval11.1 = phi i32 [ -32, %stall ], [ %retval11.0, %error ], [ 0, %u132_roothub_setportfeature.exit.sw.epilog44_crit_edge ], [ 0, %u132_roothub_portstatus.exit.sw.epilog44_crit_edge ], [ 0, %sw.bb27.sw.epilog44_crit_edge ], [ 0, %u132_roothub_descriptor.exit ], [ 0, %u132_roothub_clearportfeature.exit.sw.epilog44_crit_edge ], [ 0, %sw.bb14.sw.epilog44_crit_edge ], [ 0, %sw.bb.sw.epilog44_crit_edge ]
  call void @mutex_unlock(ptr noundef %sw_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog44, %do.end7, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -108, %do.end7 ], [ %retval11.1, %sw.epilog44 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u132_bus_suspend(ptr nocapture noundef readonly %hcd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %going = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 1, i32 4
  %0 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %2 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %1) #13
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp3 = icmp eq i32 %1, 1
  br i1 %cmp3, label %do.end7, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end7:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev8 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %4 = ptrtoint ptr %platform_dev8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_dev8, align 4
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.20) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.else.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -108, %do.end7 ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u132_bus_resume(ptr nocapture noundef readonly %hcd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %going = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 1, i32 4
  %0 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %2 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %1) #13
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp3 = icmp eq i32 %1, 1
  br i1 %cmp3, label %do.end7, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end7:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev8 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %4 = ptrtoint ptr %platform_dev8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_dev8, align 4
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.20) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.else.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -108, %do.end7 ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u132_start_port_reset(ptr nocapture noundef readonly %hcd, i32 noundef %port_num) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %going = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 1, i32 4
  %0 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %2 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %1) #13
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp3 = icmp eq i32 %1, 1
  br i1 %cmp3, label %do.end7, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end7:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev8 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4, i32 12
  %4 = ptrtoint ptr %platform_dev8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_dev8, align 4
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.20) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.else.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -108, %do.end7 ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_roothub_info(ptr noundef %u132) unnamed_addr #4 align 64 {
entry:
  %revision = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %revision) #10
  %0 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %revision, align 4, !annotation !520
  %platform_dev = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 4
  %1 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_dev, align 4
  %call = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %2, i32 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull %revision) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call) #13
  br label %cleanup59

if.else:                                          ; preds = %entry
  %5 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %revision, align 4
  %7 = and i32 %6, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %switch = icmp eq i32 %7, 16
  %8 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_dev, align 4
  br i1 %switch, label %if.end15, label %do.end11

do.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %dev13 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.25, i32 noundef %6) #13
  br label %cleanup59

if.end15:                                         ; preds = %if.else
  %hc_control = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 11
  %call17 = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %9, i32 noundef 4, i8 noundef zeroext 0, ptr noundef %hc_control) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  %10 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platform_dev, align 4
  br i1 %tobool18.not, label %if.end25, label %do.end22

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %dev24 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.22, i32 noundef %call17) #13
  br label %cleanup59

if.end25:                                         ; preds = %if.end15
  %hc_roothub_status = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 13
  %call27 = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %11, i32 noundef 80, i8 noundef zeroext 0, ptr noundef %hc_roothub_status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  %12 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %platform_dev, align 4
  br i1 %tobool28.not, label %if.end35, label %do.end32

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %dev34 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef nonnull @.str.30, i32 noundef %call27) #13
  br label %cleanup59

if.end35:                                         ; preds = %if.end25
  %hc_roothub_a = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 14
  %call37 = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %13, i32 noundef 72, i8 noundef zeroext 0, ptr noundef %hc_roothub_a) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end45, label %do.end42

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_dev, align 4
  %dev44 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44, ptr noundef nonnull @.str.33, i32 noundef %call37) #13
  br label %cleanup59

if.end45:                                         ; preds = %if.end35
  %num_ports = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 10
  %16 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp4695 = icmp sgt i32 %17, 0
  br i1 %cmp4695, label %if.end45.while.body_crit_edge, label %if.end45.cleanup59_crit_edge

if.end45.cleanup59_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup59

if.end45.while.body_crit_edge:                    ; preds = %if.end45
  br label %while.body

while.body:                                       ; preds = %if.else56.while.body_crit_edge, %if.end45.while.body_crit_edge
  %i.096 = phi i32 [ %add, %if.else56.while.body_crit_edge ], [ 0, %if.end45.while.body_crit_edge ]
  %18 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %platform_dev, align 4
  %20 = shl i32 %i.096, 2
  %21 = add i32 %20, 84
  %arrayidx = getelementptr %struct.u132, ptr %u132, i32 0, i32 15, i32 %i.096
  %call48 = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %19, i32 noundef %21, i8 noundef zeroext 0, ptr noundef %arrayidx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.else56, label %do.end53

do.end53:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %platform_dev, align 4
  %dev55 = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55, ptr noundef nonnull @.str.36, i32 noundef %call48, i32 noundef %i.096) #13
  br label %cleanup59

if.else56:                                        ; preds = %while.body
  %add = add nuw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %add, %17
  br i1 %exitcond.not, label %if.else56.cleanup59_crit_edge, label %if.else56.while.body_crit_edge

if.else56.while.body_crit_edge:                   ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.else56.cleanup59_crit_edge:                    ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup59

cleanup59:                                        ; preds = %if.else56.cleanup59_crit_edge, %do.end53, %if.end45.cleanup59_crit_edge, %do.end42, %do.end32, %do.end22, %do.end11, %do.end
  %retval.1 = phi i32 [ %call, %do.end ], [ %call17, %do.end22 ], [ %call27, %do.end32 ], [ %call37, %do.end42 ], [ -19, %do.end11 ], [ %call48, %do.end53 ], [ 0, %if.end45.cleanup59_crit_edge ], [ 0, %if.else56.cleanup59_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %revision) #10
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u132_periodic_reinit(ptr nocapture noundef readonly %u132) unnamed_addr #4 align 64 {
entry:
  %fminterval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hc_fminterval = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 12
  %0 = ptrtoint ptr %hc_fminterval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hc_fminterval, align 4
  %and = and i32 %1, 16383
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fminterval) #10
  %2 = ptrtoint ptr %fminterval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %fminterval, align 4, !annotation !520
  %platform_dev = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 4
  %3 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_dev, align 4
  %call = call i32 @usb_ftdi_elan_read_pcimem(ptr noundef %4, i32 noundef 52, i8 noundef zeroext 0, ptr noundef nonnull %fminterval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %fminterval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fminterval, align 4
  %and2 = and i32 %6, -2147483648
  %7 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_dev, align 4
  %xor = xor i32 %and2, -2147483648
  %9 = ptrtoint ptr %hc_fminterval to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hc_fminterval, align 4
  %or = or i32 %xor, %10
  %call5 = call i32 @usb_ftdi_elan_write_pcimem(ptr noundef %8, i32 noundef 52, i8 noundef zeroext 0, i32 noundef %or) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %platform_dev, align 4
  %mul = mul nuw nsw i32 %and, 9
  %div = udiv i32 %mul, 10
  %call11 = call i32 @usb_ftdi_elan_write_pcimem(ptr noundef %12, i32 noundef 64, i8 noundef zeroext 0, i32 noundef %div) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end8 ], [ %call, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fminterval) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_link_urb_to_ep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_unlink_urb_from_ep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @u132_hcd_endp_work_scheduler(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -128
  %u1321 = getelementptr i8, ptr %work, i32 -120
  %0 = ptrtoint ptr %u1321 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u1321, align 4
  %scheduler_lock = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %scheduler_lock, i32 noundef 0) #10
  %ring2 = getelementptr i8, ptr %work, i32 -108
  %2 = ptrtoint ptr %ring2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring2, align 4
  %edset_flush = getelementptr i8, ptr %work, i32 -104
  %4 = ptrtoint ptr %edset_flush to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %edset_flush, align 4
  %5 = and i32 %bf.load, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %bf.clear5 = and i32 %bf.load, -4194305
  %6 = ptrtoint ptr %edset_flush to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %bf.clear5, ptr %edset_flush, align 4
  %7 = and i32 %bf.load, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  br i1 %tobool9.not, label %if.then.if.end_crit_edge, label %if.then10

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_dev, align 4
  %number = getelementptr inbounds %struct.u132_ring, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %number, align 1
  %call = tail call i32 @usb_ftdi_elan_edset_flush(ptr noundef %9, i8 noundef zeroext %11, ptr noundef %add.ptr) #10
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup261_crit_edge, label %if.then10.i.i.i.i.i, !prof !523

if.end5.i.i.i.i.i.cleanup261_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup261

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef 3) #10
  br label %cleanup261

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  tail call fastcc void @u132_endp_delete(ptr noundef %add.ptr) #10, !callees !525
  br label %cleanup261

if.else:                                          ; preds = %entry
  %13 = and i32 %bf.load, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool15.not = icmp eq i32 %13, 0
  br i1 %tobool15.not, label %if.else18, label %if.then16

if.then16:                                        ; preds = %if.else
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %call.i.i.i.i.i.i.i405 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #10
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i.i406 = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i406)
  %cmp.i.i.i.i.i407 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i406, 1
  br i1 %cmp.i.i.i.i.i407, label %if.then.i.i411, label %if.end5.i.i.i.i.i409

if.end5.i.i.i.i.i409:                             ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i406)
  %.not.i.i.i.i.i408 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i406, 0
  br i1 %.not.i.i.i.i.i408, label %if.end5.i.i.i.i.i409.cleanup261_crit_edge, label %if.then10.i.i.i.i.i410, !prof !523

if.end5.i.i.i.i.i409.cleanup261_crit_edge:        ; preds = %if.end5.i.i.i.i.i409
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup261

if.then10.i.i.i.i.i410:                           ; preds = %if.end5.i.i.i.i.i409
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef 3) #10
  br label %cleanup261

if.then.i.i411:                                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  tail call fastcc void @u132_endp_delete(ptr noundef %add.ptr) #10, !callees !525
  br label %cleanup261

if.else18:                                        ; preds = %if.else
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load19 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load19)
  %tobool21.not = icmp sgt i8 %bf.load19, -1
  br i1 %tobool21.not, label %if.else24, label %if.then22

if.then22:                                        ; preds = %if.else18
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %call.i.i.i.i.i.i.i413 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i.i414 = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i414)
  %cmp.i.i.i.i.i415 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i414, 1
  br i1 %cmp.i.i.i.i.i415, label %if.then.i.i419, label %if.end5.i.i.i.i.i417

if.end5.i.i.i.i.i417:                             ; preds = %if.then22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i414)
  %.not.i.i.i.i.i416 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i414, 0
  br i1 %.not.i.i.i.i.i416, label %if.end5.i.i.i.i.i417.cleanup261_crit_edge, label %if.then10.i.i.i.i.i418, !prof !523

if.end5.i.i.i.i.i417.cleanup261_crit_edge:        ; preds = %if.end5.i.i.i.i.i417
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup261

if.then10.i.i.i.i.i418:                           ; preds = %if.end5.i.i.i.i.i417
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef 3) #10
  br label %cleanup261

if.then.i.i419:                                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  tail call fastcc void @u132_endp_delete(ptr noundef %add.ptr) #10, !callees !525
  br label %cleanup261

if.else24:                                        ; preds = %if.else18
  %queue_next = getelementptr i8, ptr %work, i32 -44
  %17 = ptrtoint ptr %queue_next to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %queue_next, align 4
  %conv = zext i16 %18 to i32
  %queue_last = getelementptr i8, ptr %work, i32 -46
  %19 = ptrtoint ptr %queue_last to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %queue_last, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %20)
  %cmp = icmp eq i16 %18, %20
  br i1 %cmp, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.else24
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %call.i.i.i.i.i.i.i421 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i.i422 = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i422)
  %cmp.i.i.i.i.i423 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i422, 1
  br i1 %cmp.i.i.i.i.i423, label %if.then.i.i427, label %if.end5.i.i.i.i.i425

if.end5.i.i.i.i.i425:                             ; preds = %if.then27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i422)
  %.not.i.i.i.i.i424 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i422, 0
  br i1 %.not.i.i.i.i.i424, label %if.end5.i.i.i.i.i425.cleanup261_crit_edge, label %if.then10.i.i.i.i.i426, !prof !523

if.end5.i.i.i.i.i425.cleanup261_crit_edge:        ; preds = %if.end5.i.i.i.i.i425
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup261

if.then10.i.i.i.i.i426:                           ; preds = %if.end5.i.i.i.i.i425
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef 3) #10
  br label %cleanup261

if.then.i.i427:                                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  tail call fastcc void @u132_endp_delete(ptr noundef %add.ptr) #10, !callees !525
  br label %cleanup261

if.else29:                                        ; preds = %if.else24
  %bf.lshr31 = lshr i32 %bf.load, 24
  %bf.clear32 = and i32 %bf.lshr31, 3
  %22 = zext i32 %bf.clear32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.253)
  switch i32 %bf.clear32, label %if.else170 [
    i32 1, label %if.else43
    i32 2, label %if.then70
  ]

if.else43:                                        ; preds = %if.else29
  %usb_addr = getelementptr i8, ptr %work, i32 -122
  %23 = ptrtoint ptr %usb_addr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %usb_addr, align 2
  %idxprom = zext i8 %24 to i32
  %arrayidx = getelementptr %struct.u132, ptr %1, i32 0, i32 20, i32 %idxprom
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx, align 1
  %urb_list = getelementptr i8, ptr %work, i32 -40
  %and = and i32 %conv, 7
  %arrayidx46 = getelementptr [8 x ptr], ptr %urb_list, i32 0, i32 %and
  %27 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx46, align 4
  %bf.set50 = or i32 %bf.load, 536870912
  %29 = ptrtoint ptr %edset_flush to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %bf.set50, ptr %edset_flush, align 4
  %curr_endp = getelementptr inbounds %struct.u132_ring, ptr %3, i32 0, i32 3
  %30 = ptrtoint ptr %curr_endp to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr, ptr %curr_endp, align 4
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load51 = load i8, ptr %3, align 4
  %bf.set53 = or i8 %bf.load51, -128
  store i8 %bf.set53, ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %32 = ptrtoint ptr %edset_flush to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load55 = load i32, ptr %edset_flush, align 4
  %bf.lshr56 = lshr i32 %bf.load55, 30
  %conv57 = trunc i32 %bf.lshr56 to i8
  %platform_dev.i = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %platform_dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %platform_dev.i, align 4
  %number.i = getelementptr inbounds %struct.u132_ring, ptr %3, i32 0, i32 1
  %35 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %number.i, align 1
  %usb_endp.i = getelementptr i8, ptr %work, i32 -121
  %37 = ptrtoint ptr %usb_endp.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %usb_endp.i, align 1
  %call.i = tail call i32 @usb_ftdi_elan_edset_single(ptr noundef %34, i8 noundef zeroext %36, ptr noundef %add.ptr, ptr noundef %28, i8 noundef zeroext %26, i8 noundef zeroext %38, i8 noundef zeroext %conv57, ptr noundef nonnull @u132_hcd_interrupt_recv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp59.not = icmp eq i32 %call.i, 0
  br i1 %cmp59.not, label %if.else43.cleanup261_crit_edge, label %if.then61

if.else43.cleanup261_crit_edge:                   ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup261

if.then61:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %add.ptr, ptr noundef %28, i32 noundef %call.i)
  br label %cleanup261

if.then70:                                        ; preds = %if.else29
  %usb_addr73 = getelementptr i8, ptr %work, i32 -122
  %39 = ptrtoint ptr %usb_addr73 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %usb_addr73, align 2
  %idxprom74 = zext i8 %40 to i32
  %arrayidx75 = getelementptr %struct.u132, ptr %1, i32 0, i32 20, i32 %idxprom74
  %41 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx75, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp85 = icmp eq i8 %42, 0
  br i1 %cmp85, label %if.then87, label %if.else111

if.then87:                                        ; preds = %if.then70
  %urb_list90 = getelementptr i8, ptr %work, i32 -40
  %and93 = and i32 %conv, 7
  %arrayidx94 = getelementptr [8 x ptr], ptr %urb_list90, i32 0, i32 %and93
  %43 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx94, align 4
  %bf.set98 = or i32 %bf.load, 536870912
  %45 = ptrtoint ptr %edset_flush to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %bf.set98, ptr %edset_flush, align 4
  %curr_endp99 = getelementptr inbounds %struct.u132_ring, ptr %3, i32 0, i32 3
  %46 = ptrtoint ptr %curr_endp99 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr, ptr %curr_endp99, align 4
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load100 = load i8, ptr %3, align 4
  %bf.set102 = or i8 %bf.load100, -128
  store i8 %bf.set102, ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %platform_dev.i429 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %48 = ptrtoint ptr %platform_dev.i429 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %platform_dev.i429, align 4
  %number.i430 = getelementptr inbounds %struct.u132_ring, ptr %3, i32 0, i32 1
  %50 = ptrtoint ptr %number.i430 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %number.i430, align 1
  %usb_endp.i431 = getelementptr i8, ptr %work, i32 -121
  %52 = ptrtoint ptr %usb_endp.i431 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %usb_endp.i431, align 1
  %call.i432 = tail call i32 @usb_ftdi_elan_edset_setup(ptr noundef %49, i8 noundef zeroext %51, ptr noundef %add.ptr, ptr noundef %44, i8 noundef zeroext 0, i8 noundef zeroext %53, i8 noundef zeroext 2, ptr noundef nonnull @u132_hcd_initial_setup_sent) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i432)
  %cmp105.not = icmp eq i32 %call.i432, 0
  br i1 %cmp105.not, label %if.then87.cleanup261_crit_edge, label %if.then107

if.then87.cleanup261_crit_edge:                   ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup261

if.then107:                                       ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %add.ptr, ptr noundef %44, i32 noundef %call.i432)
  br label %cleanup261

if.else111:                                       ; preds = %if.then70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp114 = icmp eq i8 %40, 0
  %urb_list119 = getelementptr i8, ptr %work, i32 -40
  %and122 = and i32 %conv, 7
  %arrayidx123 = getelementptr [8 x ptr], ptr %urb_list119, i32 0, i32 %and122
  %54 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx123, align 4
  %bf.set127 = or i32 %bf.load, 536870912
  %56 = ptrtoint ptr %edset_flush to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %bf.set127, ptr %edset_flush, align 4
  %curr_endp128 = getelementptr inbounds %struct.u132_ring, ptr %3, i32 0, i32 3
  %57 = ptrtoint ptr %curr_endp128 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr, ptr %curr_endp128, align 4
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load129 = load i8, ptr %3, align 4
  %bf.set131 = or i8 %bf.load129, -128
  store i8 %bf.set131, ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %platform_dev.i433 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %59 = ptrtoint ptr %platform_dev.i433 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %platform_dev.i433, align 4
  %number.i434 = getelementptr inbounds %struct.u132_ring, ptr %3, i32 0, i32 1
  %61 = ptrtoint ptr %number.i434 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %number.i434, align 1
  %usb_endp.i435 = getelementptr i8, ptr %work, i32 -121
  %63 = ptrtoint ptr %usb_endp.i435 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %usb_endp.i435, align 1
  br i1 %cmp114, label %if.then116, label %if.else140

if.then116:                                       ; preds = %if.else111
  %call.i436 = tail call i32 @usb_ftdi_elan_edset_setup(ptr noundef %60, i8 noundef zeroext %62, ptr noundef %add.ptr, ptr noundef %55, i8 noundef zeroext 0, i8 noundef zeroext %64, i8 noundef zeroext 2, ptr noundef nonnull @u132_hcd_enumeration_address_sent) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i436)
  %cmp134.not = icmp eq i32 %call.i436, 0
  br i1 %cmp134.not, label %if.then116.cleanup261_crit_edge, label %if.then136

if.then116.cleanup261_crit_edge:                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup261

if.then136:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %add.ptr, ptr noundef %55, i32 noundef %call.i436)
  br label %cleanup261

if.else140:                                       ; preds = %if.else111
  %call.i440 = tail call i32 @usb_ftdi_elan_edset_setup(ptr noundef %60, i8 noundef zeroext %62, ptr noundef %add.ptr, ptr noundef %55, i8 noundef zeroext %42, i8 noundef zeroext %64, i8 noundef zeroext 2, ptr noundef nonnull @u132_hcd_configure_setup_sent) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i440)
  %cmp163.not = icmp eq i32 %call.i440, 0
  br i1 %cmp163.not, label %if.else140.cleanup261_crit_edge, label %if.then165

if.else140.cleanup261_crit_edge:                  ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup261

if.then165:                                       ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %add.ptr, ptr noundef %55, i32 noundef %call.i440)
  br label %cleanup261

if.else170:                                       ; preds = %if.else29
  %65 = and i32 %bf.load, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool174.not = icmp eq i32 %65, 0
  %usb_addr221 = getelementptr i8, ptr %work, i32 -122
  %66 = ptrtoint ptr %usb_addr221 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %usb_addr221, align 2
  %idxprom222 = zext i8 %67 to i32
  %arrayidx223 = getelementptr %struct.u132, ptr %1, i32 0, i32 20, i32 %idxprom222
  %68 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx223, align 1
  %urb_list234 = getelementptr i8, ptr %work, i32 -40
  %and237 = and i32 %conv, 7
  %arrayidx238 = getelementptr [8 x ptr], ptr %urb_list234, i32 0, i32 %and237
  %70 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx238, align 4
  %bf.set242 = or i32 %bf.load, 536870912
  %72 = ptrtoint ptr %edset_flush to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %bf.set242, ptr %edset_flush, align 4
  %curr_endp243 = getelementptr inbounds %struct.u132_ring, ptr %3, i32 0, i32 3
  %73 = ptrtoint ptr %curr_endp243 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %add.ptr, ptr %curr_endp243, align 4
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load244 = load i8, ptr %3, align 4
  %bf.set246 = or i8 %bf.load244, -128
  store i8 %bf.set246, ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %75 = ptrtoint ptr %edset_flush to i32
  call void @__asan_load4_noabort(i32 %75)
  %bf.load249 = load i32, ptr %edset_flush, align 4
  %bf.lshr250 = lshr i32 %bf.load249, 30
  %conv251 = trunc i32 %bf.lshr250 to i8
  %platform_dev.i445 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %76 = ptrtoint ptr %platform_dev.i445 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %platform_dev.i445, align 4
  %number.i446 = getelementptr inbounds %struct.u132_ring, ptr %3, i32 0, i32 1
  %78 = ptrtoint ptr %number.i446 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %number.i446, align 1
  %usb_endp.i447 = getelementptr i8, ptr %work, i32 -121
  %80 = ptrtoint ptr %usb_endp.i447 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %usb_endp.i447, align 1
  br i1 %tobool174.not, label %if.else231, label %if.else188

if.else188:                                       ; preds = %if.else170
  %call.i444 = tail call i32 @usb_ftdi_elan_edset_input(ptr noundef %77, i8 noundef zeroext %79, ptr noundef %add.ptr, ptr noundef %71, i8 noundef zeroext %69, i8 noundef zeroext %81, i8 noundef zeroext %conv251, ptr noundef nonnull @u132_hcd_bulk_input_recv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i444)
  %cmp210 = icmp eq i32 %call.i444, 0
  br i1 %cmp210, label %if.else188.cleanup261_crit_edge, label %if.else213

if.else188.cleanup261_crit_edge:                  ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup261

if.else213:                                       ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %add.ptr, ptr noundef %71, i32 noundef %call.i444)
  br label %cleanup261

if.else231:                                       ; preds = %if.else170
  %call.i448 = tail call i32 @usb_ftdi_elan_edset_output(ptr noundef %77, i8 noundef zeroext %79, ptr noundef %add.ptr, ptr noundef %71, i8 noundef zeroext %69, i8 noundef zeroext %81, i8 noundef zeroext %conv251, ptr noundef nonnull @u132_hcd_bulk_output_sent) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i448)
  %cmp253 = icmp eq i32 %call.i448, 0
  br i1 %cmp253, label %if.else231.cleanup261_crit_edge, label %if.else256

if.else231.cleanup261_crit_edge:                  ; preds = %if.else231
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup261

if.else256:                                       ; preds = %if.else231
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %add.ptr, ptr noundef %71, i32 noundef %call.i448)
  br label %cleanup261

cleanup261:                                       ; preds = %if.else256, %if.else231.cleanup261_crit_edge, %if.else213, %if.else188.cleanup261_crit_edge, %if.then165, %if.else140.cleanup261_crit_edge, %if.then136, %if.then116.cleanup261_crit_edge, %if.then107, %if.then87.cleanup261_crit_edge, %if.then61, %if.else43.cleanup261_crit_edge, %if.then.i.i427, %if.then10.i.i.i.i.i426, %if.end5.i.i.i.i.i425.cleanup261_crit_edge, %if.then.i.i419, %if.then10.i.i.i.i.i418, %if.end5.i.i.i.i.i417.cleanup261_crit_edge, %if.then.i.i411, %if.then10.i.i.i.i.i410, %if.end5.i.i.i.i.i409.cleanup261_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup261_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ftdi_elan_edset_flush(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @u132_hcd_interrupt_recv(ptr noundef %data, ptr noundef %urb, ptr nocapture noundef readonly %buf, i32 noundef %len, i32 noundef %toggle_bits, i32 noundef %error_count, i32 noundef %condition_code, i32 noundef %repeat_number, i32 noundef %halted, i32 noundef %skipped, i32 noundef %actual, i32 noundef %non_null) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %u1321 = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %u1321 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u1321, align 4
  %usb_addr = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %usb_addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %usb_addr, align 2
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.u132, ptr %1, i32 0, i32 20, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %idxprom4 = zext i8 %5 to i32
  %scheduler_lock = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %scheduler_lock, i32 noundef 0) #10
  %going = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp sgt i32 %7, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  %platform_dev = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %7) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %data, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %data, ptr %data, i32 1, ptr elementtype(i32) %data) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup190_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !523

if.end5.i.i.i.i.i.i.cleanup190_crit_edge:         ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup190

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %data, i32 noundef 3) #10
  br label %cleanup190

if.then.i.i.i:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  tail call fastcc void @u132_endp_delete(ptr noundef %data) #10, !callees !525
  br label %cleanup190

if.else:                                          ; preds = %entry
  %dequeueing = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 8
  %11 = ptrtoint ptr %dequeueing to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load = load i32, ptr %dequeueing, align 4
  %12 = and i32 %bf.load, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.else13, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear11 = and i32 %bf.load, -8388609
  %13 = ptrtoint ptr %dequeueing to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %bf.clear11, ptr %dequeueing, align 4
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef -4)
  br label %cleanup190

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp15 = icmp sgt i32 %7, 0
  br i1 %cmp15, label %do.end19, label %if.else23

do.end19:                                         ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev20 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %platform_dev20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_dev20, align 4
  %dev21 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.77, ptr noundef %urb) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef -19)
  br label %cleanup190

if.else23:                                        ; preds = %if.else13
  %unlinked = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 1
  %16 = ptrtoint ptr %unlinked to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %unlinked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool24.not = icmp eq i32 %17, 0
  br i1 %tobool24.not, label %if.then25, label %do.end185

if.then25:                                        ; preds = %if.else23
  %ring26 = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 7
  %18 = ptrtoint ptr %ring26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ring26, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp27303 = icmp sgt i32 %len, 0
  br i1 %cmp27303, label %while.body.preheader, label %if.then25.while.end_crit_edge

if.then25.while.end_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.preheader:                             ; preds = %if.then25
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %20 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transfer_buffer, align 4
  %22 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %actual_length, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 %23
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %L.0306 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %len, %while.body.preheader ]
  %b.0305 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %buf, %while.body.preheader ]
  %u.0304 = phi ptr [ %incdec.ptr28, %while.body.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %dec = add nsw i32 %L.0306, -1
  %incdec.ptr = getelementptr i8, ptr %b.0305, i32 1
  %24 = ptrtoint ptr %b.0305 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %b.0305, align 1
  %incdec.ptr28 = getelementptr i8, ptr %u.0304, i32 1
  %26 = ptrtoint ptr %u.0304 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %u.0304, align 1
  %cmp27 = icmp ugt i32 %L.0306, 1
  br i1 %cmp27, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then25.while.end_crit_edge
  %27 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %actual_length, align 4
  %add = add i32 %28, %len
  store i32 %add, ptr %actual_length, align 4
  %29 = zext i32 %condition_code to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.254)
  switch i32 %condition_code, label %while.end.if.else149_crit_edge [
    i32 0, label %land.lhs.true
    i32 9, label %land.lhs.true72
    i32 4, label %if.then129
  ]

while.end.if.else149_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else149

land.lhs.true:                                    ; preds = %while.end
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %30 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %transfer_buffer_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %add)
  %cmp32 = icmp ugt i32 %31, %add
  %32 = ptrtoint ptr %dequeueing to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load35 = load i32, ptr %dequeueing, align 4
  %bf.shl = shl i32 %toggle_bits, 30
  %bf.clear36 = and i32 %bf.load35, 1073741823
  %bf.set37 = or i32 %bf.clear36, %bf.shl
  store i32 %bf.set37, ptr %dequeueing, align 4
  %usb_device = getelementptr %struct.u132, ptr %1, i32 0, i32 21, i32 %idxprom4, i32 1
  %33 = ptrtoint ptr %usb_device to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %usb_device, align 4
  %toggle = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %toggle to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %toggle, align 4
  %usb_endp = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 4
  %37 = ptrtoint ptr %usb_endp to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %usb_endp, align 1
  %conv = zext i8 %38 to i32
  %shl = shl nuw i32 1, %conv
  %neg = xor i32 %shl, -1
  %and = and i32 %36, %neg
  %and39 = and i32 %toggle_bits, 1
  %shl42 = shl nuw i32 %and39, %conv
  %or = or i32 %and, %shl42
  store i32 %or, ptr %toggle, align 4
  br i1 %cmp32, label %if.then33, label %land.lhs.true.if.end176_crit_edge

land.lhs.true.if.end176_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end176

if.then33:                                        ; preds = %land.lhs.true
  %39 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp47.not = icmp eq i32 %40, 0
  br i1 %cmp47.not, label %if.else58, label %if.then49

if.then49:                                        ; preds = %if.then33
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %41 = ptrtoint ptr %dequeueing to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load52 = load i32, ptr %dequeueing, align 4
  %bf.lshr53 = lshr i32 %bf.load52, 30
  %conv54 = trunc i32 %bf.lshr53 to i8
  %platform_dev.i = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %platform_dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %platform_dev.i, align 4
  %number.i = getelementptr inbounds %struct.u132_ring, ptr %19, i32 0, i32 1
  %44 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %number.i, align 1
  %46 = ptrtoint ptr %usb_endp to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %usb_endp, align 1
  %call.i = tail call i32 @usb_ftdi_elan_edset_single(ptr noundef %43, i8 noundef zeroext %45, ptr noundef %data, ptr noundef %urb, i8 noundef zeroext %5, i8 noundef zeroext %47, i8 noundef zeroext %conv54, ptr noundef nonnull @u132_hcd_interrupt_recv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp55.not = icmp eq i32 %call.i, 0
  br i1 %cmp55.not, label %if.then49.cleanup190_crit_edge, label %if.then57

if.then49.cleanup190_crit_edge:                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup190

if.then57:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef %call.i)
  br label %cleanup190

if.else58:                                        ; preds = %if.then33
  %48 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load59 = load i8, ptr %19, align 4
  %bf.clear60 = and i8 %bf.load59, 127
  store i8 %bf.clear60, ptr %19, align 4
  %49 = ptrtoint ptr %dequeueing to i32
  call void @__asan_load4_noabort(i32 %49)
  %bf.load62 = load i32, ptr %dequeueing, align 4
  %bf.clear63 = and i32 %bf.load62, -536870913
  store i32 %bf.clear63, ptr %dequeueing, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %interval = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 25
  %51 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %interval, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %52) #10
  %add66 = add i32 %call2.i, %50
  %jiffies = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 9
  %53 = ptrtoint ptr %jiffies to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add66, ptr %jiffies, align 4
  tail call fastcc void @u132_ring_cancel_work(ptr noundef %1, ptr noundef %19)
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #10
  %54 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #10, !srcloc !526
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.else58.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !527

if.else58.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.else58
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %55 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %.not.i.i.i.i.i = icmp sgt i32 %55, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.u132_ring_queue_work.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !523

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.u132_ring_queue_work.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_ring_queue_work.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.else58.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.else58.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef %.sink.i.i.i.i.i) #10
  br label %u132_ring_queue_work.exit

u132_ring_queue_work.exit:                        ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.u132_ring_queue_work.exit_crit_edge
  tail call fastcc void @u132_ring_requeue_work(ptr noundef %1, ptr noundef %19, i32 noundef 0) #10
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %call.i.i.i.i.i.i.i299 = tail call zeroext i1 @__kasan_check_write(ptr noundef %data, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %data, i32 1, i32 3, i32 1) #10
  %56 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %data, ptr %data, i32 1, ptr elementtype(i32) %data) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %u132_ring_queue_work.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i300 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i300, label %if.end5.i.i.i.i.i.cleanup190_crit_edge, label %if.then10.i.i.i.i.i, !prof !523

if.end5.i.i.i.i.i.cleanup190_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup190

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %data, i32 noundef 3) #10
  br label %cleanup190

if.then.i.i:                                      ; preds = %u132_ring_queue_work.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  tail call fastcc void @u132_endp_delete(ptr noundef %data) #10, !callees !525
  br label %cleanup190

land.lhs.true72:                                  ; preds = %while.end
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 13
  %57 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %transfer_flags, align 4
  %and73 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %cmp74 = icmp eq i32 %and73, 0
  br i1 %cmp74, label %if.then76, label %land.lhs.true72.if.else149_crit_edge

land.lhs.true72.if.else149_crit_edge:             ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else149

if.then76:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %dequeueing to i32
  call void @__asan_load4_noabort(i32 %59)
  %bf.load78 = load i32, ptr %dequeueing, align 4
  %bf.shl80 = shl i32 %toggle_bits, 30
  %bf.clear81 = and i32 %bf.load78, 1073741823
  %bf.set82 = or i32 %bf.clear81, %bf.shl80
  store i32 %bf.set82, ptr %dequeueing, align 4
  %usb_device83 = getelementptr %struct.u132, ptr %1, i32 0, i32 21, i32 %idxprom4, i32 1
  %60 = ptrtoint ptr %usb_device83 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %usb_device83, align 4
  %toggle84 = getelementptr inbounds %struct.usb_device, ptr %61, i32 0, i32 10
  %62 = ptrtoint ptr %toggle84 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %toggle84, align 4
  %usb_endp86 = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 4
  %64 = ptrtoint ptr %usb_endp86 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %usb_endp86, align 1
  %conv87 = zext i8 %65 to i32
  %shl88 = shl nuw i32 1, %conv87
  %neg89 = xor i32 %shl88, -1
  %and90 = and i32 %63, %neg89
  %and91 = and i32 %toggle_bits, 1
  %shl94 = shl nuw i32 %and91, %conv87
  %or95 = or i32 %and90, %shl94
  store i32 %or95, ptr %toggle84, align 4
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef 0)
  br label %cleanup190

if.then129:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %dequeueing to i32
  call void @__asan_load4_noabort(i32 %66)
  %bf.load131 = load i32, ptr %dequeueing, align 4
  %bf.clear132 = and i32 %bf.load131, 1073741823
  %bf.set133 = or i32 %bf.clear132, -2147483648
  store i32 %bf.set133, ptr %dequeueing, align 4
  %usb_device134 = getelementptr %struct.u132, ptr %1, i32 0, i32 21, i32 %idxprom4, i32 1
  %67 = ptrtoint ptr %usb_device134 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %usb_device134, align 4
  %toggle135 = getelementptr inbounds %struct.usb_device, ptr %68, i32 0, i32 10
  %69 = ptrtoint ptr %toggle135 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %toggle135, align 4
  %usb_endp137 = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 4
  %71 = ptrtoint ptr %usb_endp137 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %usb_endp137, align 1
  %conv138 = zext i8 %72 to i32
  %shl139 = shl nuw i32 1, %conv138
  %neg140 = xor i32 %shl139, -1
  %and141 = and i32 %70, %neg140
  store i32 %and141, ptr %toggle135, align 4
  br label %if.end176

if.else149:                                       ; preds = %land.lhs.true72.if.else149_crit_edge, %while.end.if.else149_crit_edge
  %73 = ptrtoint ptr %dequeueing to i32
  call void @__asan_load4_noabort(i32 %73)
  %bf.load151 = load i32, ptr %dequeueing, align 4
  %bf.clear152 = and i32 %bf.load151, 1073741823
  %bf.set153 = or i32 %bf.clear152, -2147483648
  store i32 %bf.set153, ptr %dequeueing, align 4
  %usb_device154 = getelementptr %struct.u132, ptr %1, i32 0, i32 21, i32 %idxprom4, i32 1
  %74 = ptrtoint ptr %usb_device154 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %usb_device154, align 4
  %toggle155 = getelementptr inbounds %struct.usb_device, ptr %75, i32 0, i32 10
  %76 = ptrtoint ptr %toggle155 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %toggle155, align 4
  %usb_endp157 = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 4
  %78 = ptrtoint ptr %usb_endp157 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %usb_endp157, align 1
  %conv158 = zext i8 %79 to i32
  %shl159 = shl nuw i32 1, %conv158
  %neg160 = xor i32 %shl159, -1
  %and161 = and i32 %77, %neg160
  store i32 %and161, ptr %toggle155, align 4
  %platform_dev172 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %80 = ptrtoint ptr %platform_dev172 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %platform_dev172, align 4
  %dev173 = getelementptr inbounds %struct.platform_device, ptr %81, i32 0, i32 3
  %arrayidx174 = getelementptr [16 x ptr], ptr @cc_to_text, i32 0, i32 %condition_code
  %82 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx174, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev173, ptr noundef nonnull @.str.93, ptr noundef %urb, ptr noundef %83) #13
  br label %if.end176

if.end176:                                        ; preds = %if.else149, %if.then129, %land.lhs.true.if.end176_crit_edge
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %arrayidx178 = getelementptr [16 x i32], ptr @cc_to_error, i32 0, i32 %condition_code
  %84 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx178, align 4
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef %85)
  br label %cleanup190

do.end185:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev186 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %86 = ptrtoint ptr %platform_dev186 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %platform_dev186, align 4
  %dev187 = getelementptr inbounds %struct.platform_device, ptr %87, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev187, ptr noundef nonnull @.str.96, ptr noundef %urb, i32 noundef %17) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef 0)
  br label %cleanup190

cleanup190:                                       ; preds = %do.end185, %if.end176, %if.then76, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup190_crit_edge, %if.then57, %if.then49.cleanup190_crit_edge, %do.end19, %if.then8, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup190_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u132_hcd_giveback_urb(ptr noundef %u132, ptr noundef %endp, ptr noundef %urb, i32 noundef %status) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %u132, i32 -600
  %error_count = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 26
  %0 = ptrtoint ptr %error_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %error_count, align 4
  %queue_lock = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #10
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %add.ptr.i, ptr noundef %urb) #10
  %queue_next = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 14
  %1 = ptrtoint ptr %queue_next to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %queue_next, align 4
  %add = add i16 %2, 1
  store i16 %add, ptr %queue_next, align 4
  %queue_size = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 12
  %3 = ptrtoint ptr %queue_size to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %queue_size, align 4
  %dec = add i16 %4, -1
  store i16 %dec, ptr %queue_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %dec)
  %cmp9 = icmp ult i16 %dec, 8
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %active = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 8
  %5 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %active, align 4
  %bf.clear = and i32 %bf.load, -536870913
  store i32 %bf.clear, ptr %active, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call3) #10
  br label %if.end

if.else:                                          ; preds = %entry
  %urb_more = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 16
  %6 = ptrtoint ptr %urb_more to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %urb_more, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del.exit_crit_edge

if.else.list_del.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.else.list_del.exit_crit_edge
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %urb15 = getelementptr inbounds %struct.u132_urbq, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %urb15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %urb15, align 4
  %queue_last = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 13
  %18 = ptrtoint ptr %queue_last to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %queue_last, align 2
  %inc = add i16 %19, 1
  store i16 %inc, ptr %queue_last, align 2
  %20 = and i16 %19, 7
  %and = zext i16 %20 to i32
  %arrayidx = getelementptr %struct.u132_endp, ptr %endp, i32 0, i32 15, i32 %and
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %17, ptr %arrayidx, align 4
  %active17 = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 8
  %22 = ptrtoint ptr %active17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load18 = load i32, ptr %active17, align 4
  %bf.clear19 = and i32 %bf.load18, -536870913
  store i32 %bf.clear19, ptr %active17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call3) #10
  tail call void @kfree(ptr noundef %7) #10
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %if.then
  %scheduler_lock = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %scheduler_lock, i32 noundef 0) #10
  %ring23 = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 7
  %23 = ptrtoint ptr %ring23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ring23, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load24 = load i8, ptr %24, align 4
  %bf.clear25 = and i8 %bf.load24, 127
  store i8 %bf.clear25, ptr %24, align 4
  tail call fastcc void @u132_ring_cancel_work(ptr noundef %u132, ptr noundef %24)
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %u132, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %u132, i32 1, i32 3, i32 1) #10
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %u132, ptr %u132, i32 1, ptr elementtype(i32) %u132) #10, !srcloc !526
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !527

if.end.if.end15.sink.split.i.i.i.i.i_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %27 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %.not.i.i.i.i.i = icmp sgt i32 %27, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.u132_ring_queue_work.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !523

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.u132_ring_queue_work.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_ring_queue_work.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %u132, i32 noundef %.sink.i.i.i.i.i) #10
  br label %u132_ring_queue_work.exit

u132_ring_queue_work.exit:                        ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.u132_ring_queue_work.exit_crit_edge
  tail call fastcc void @u132_ring_requeue_work(ptr noundef %u132, ptr noundef %24, i32 noundef 0) #10
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %call.i.i.i.i.i.i.i52 = tail call zeroext i1 @__kasan_check_write(ptr noundef %endp, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %endp, i32 1, i32 3, i32 1) #10
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %endp, ptr %endp, i32 1, ptr elementtype(i32) %endp) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %u132_ring_queue_work.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i53 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i53, label %if.end5.i.i.i.i.i.u132_endp_put_kref.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !523

if.end5.i.i.i.i.i.u132_endp_put_kref.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_endp_put_kref.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %endp, i32 noundef 3) #10
  br label %u132_endp_put_kref.exit

if.then.i.i:                                      ; preds = %u132_ring_queue_work.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  tail call fastcc void @u132_endp_delete(ptr noundef %endp) #10, !callees !525
  br label %u132_endp_put_kref.exit

u132_endp_put_kref.exit:                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.u132_endp_put_kref.exit_crit_edge
  tail call void @usb_hcd_giveback_urb(ptr noundef %add.ptr.i, ptr noundef %urb, i32 noundef %status) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @u132_hcd_initial_setup_sent(ptr noundef %data, ptr noundef %urb, ptr nocapture noundef readnone %buf, i32 noundef %len, i32 noundef %toggle_bits, i32 noundef %error_count, i32 noundef %condition_code, i32 noundef %repeat_number, i32 noundef %halted, i32 noundef %skipped, i32 noundef %actual, i32 noundef %non_null) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %u1321 = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %u1321 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u1321, align 4
  %usb_addr = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %usb_addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %usb_addr, align 2
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.u132, ptr %1, i32 0, i32 20, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %scheduler_lock = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %scheduler_lock, i32 noundef 0) #10
  %going = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp sgt i32 %7, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  %platform_dev = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %7) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %data, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %data, ptr %data, i32 1, ptr elementtype(i32) %data) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !523

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %data, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  tail call fastcc void @u132_endp_delete(ptr noundef %data) #10, !callees !525
  br label %cleanup

if.else:                                          ; preds = %entry
  %dequeueing = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 8
  %11 = ptrtoint ptr %dequeueing to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load = load i32, ptr %dequeueing, align 4
  %12 = and i32 %bf.load, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.else10, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear8 = and i32 %bf.load, -8388609
  %13 = ptrtoint ptr %dequeueing to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %bf.clear8, ptr %dequeueing, align 4
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef -4)
  br label %cleanup

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp12 = icmp sgt i32 %7, 0
  br i1 %cmp12, label %do.end16, label %if.else20

do.end16:                                         ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev17 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %platform_dev17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_dev17, align 4
  %dev18 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.77, ptr noundef %urb) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef -19)
  br label %cleanup

if.else20:                                        ; preds = %if.else10
  %unlinked = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 1
  %16 = ptrtoint ptr %unlinked to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %unlinked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not = icmp eq i32 %17, 0
  br i1 %tobool21.not, label %if.then22, label %do.end31

if.then22:                                        ; preds = %if.else20
  %ring23 = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 7
  %18 = ptrtoint ptr %ring23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ring23, align 4
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %platform_dev25 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %platform_dev25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %platform_dev25, align 4
  %number = getelementptr inbounds %struct.u132_ring, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %number, align 1
  %usb_endp = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 4
  %24 = ptrtoint ptr %usb_endp to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %usb_endp, align 1
  %call = tail call i32 @usb_ftdi_elan_edset_input(ptr noundef %21, i8 noundef zeroext %23, ptr noundef %data, ptr noundef %urb, i8 noundef zeroext %5, i8 noundef zeroext %25, i8 noundef zeroext 0, ptr noundef nonnull @u132_hcd_initial_input_recv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp26.not = icmp eq i32 %call, 0
  br i1 %cmp26.not, label %if.then22.cleanup_crit_edge, label %if.then27

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then27:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef %call)
  br label %cleanup

do.end31:                                         ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev32 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %platform_dev32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %platform_dev32, align 4
  %dev33 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.96, ptr noundef %urb, i32 noundef %17) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %if.then27, %if.then22.cleanup_crit_edge, %do.end16, %if.then5, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @u132_hcd_enumeration_address_sent(ptr noundef %data, ptr noundef %urb, ptr nocapture noundef readnone %buf, i32 noundef %len, i32 noundef %toggle_bits, i32 noundef %error_count, i32 noundef %condition_code, i32 noundef %repeat_number, i32 noundef %halted, i32 noundef %skipped, i32 noundef %actual, i32 noundef %non_null) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %u1321 = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %u1321 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u1321, align 4
  %scheduler_lock = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %scheduler_lock, i32 noundef 0) #10
  %going = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  %platform_dev = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %3) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %data, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %data, ptr %data, i32 1, ptr elementtype(i32) %data) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !523

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %data, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  tail call fastcc void @u132_endp_delete(ptr noundef %data) #10, !callees !525
  br label %cleanup

if.else:                                          ; preds = %entry
  %dequeueing = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 8
  %7 = ptrtoint ptr %dequeueing to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %dequeueing, align 4
  %8 = and i32 %bf.load, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else9, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear7 = and i32 %bf.load, -8388609
  %9 = ptrtoint ptr %dequeueing to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %bf.clear7, ptr %dequeueing, align 4
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef -4)
  br label %cleanup

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11 = icmp sgt i32 %3, 0
  br i1 %cmp11, label %do.end15, label %if.else19

do.end15:                                         ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev16 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %platform_dev16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platform_dev16, align 4
  %dev17 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.77, ptr noundef %urb) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef -19)
  br label %cleanup

if.else19:                                        ; preds = %if.else9
  %unlinked = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 1
  %12 = ptrtoint ptr %unlinked to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %unlinked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %if.then21, label %do.end30

if.then21:                                        ; preds = %if.else19
  %ring22 = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 7
  %14 = ptrtoint ptr %ring22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring22, align 4
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %platform_dev24 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %platform_dev24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %platform_dev24, align 4
  %number = getelementptr inbounds %struct.u132_ring, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %number, align 1
  %usb_endp = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 4
  %20 = ptrtoint ptr %usb_endp to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %usb_endp, align 1
  %call = tail call i32 @usb_ftdi_elan_edset_input(ptr noundef %17, i8 noundef zeroext %19, ptr noundef %data, ptr noundef %urb, i8 noundef zeroext 0, i8 noundef zeroext %21, i8 noundef zeroext 0, ptr noundef nonnull @u132_hcd_enumeration_empty_recv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp25.not = icmp eq i32 %call, 0
  br i1 %cmp25.not, label %if.then21.cleanup_crit_edge, label %if.then26

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then26:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef %call)
  br label %cleanup

do.end30:                                         ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev31 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %platform_dev31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %platform_dev31, align 4
  %dev32 = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.96, ptr noundef %urb, i32 noundef %13) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %if.then26, %if.then21.cleanup_crit_edge, %do.end15, %if.then4, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @u132_hcd_configure_setup_sent(ptr noundef %data, ptr noundef %urb, ptr nocapture noundef readnone %buf, i32 noundef %len, i32 noundef %toggle_bits, i32 noundef %error_count, i32 noundef %condition_code, i32 noundef %repeat_number, i32 noundef %halted, i32 noundef %skipped, i32 noundef %actual, i32 noundef %non_null) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %u1321 = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %u1321 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u1321, align 4
  %usb_addr = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %usb_addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %usb_addr, align 2
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.u132, ptr %1, i32 0, i32 20, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %scheduler_lock = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %scheduler_lock, i32 noundef 0) #10
  %going = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp sgt i32 %7, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  %platform_dev = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %7) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %data, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %data, ptr %data, i32 1, ptr elementtype(i32) %data) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !523

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %data, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  tail call fastcc void @u132_endp_delete(ptr noundef %data) #10, !callees !525
  br label %cleanup

if.else:                                          ; preds = %entry
  %dequeueing = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 8
  %11 = ptrtoint ptr %dequeueing to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load = load i32, ptr %dequeueing, align 4
  %12 = and i32 %bf.load, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.else10, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear8 = and i32 %bf.load, -8388609
  %13 = ptrtoint ptr %dequeueing to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %bf.clear8, ptr %dequeueing, align 4
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef -4)
  br label %cleanup

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp12 = icmp sgt i32 %7, 0
  br i1 %cmp12, label %do.end16, label %if.else20

do.end16:                                         ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev17 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %platform_dev17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_dev17, align 4
  %dev18 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.77, ptr noundef %urb) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef -19)
  br label %cleanup

if.else20:                                        ; preds = %if.else10
  %unlinked = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 1
  %16 = ptrtoint ptr %unlinked to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %unlinked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not = icmp eq i32 %17, 0
  br i1 %tobool21.not, label %if.then22, label %do.end45

if.then22:                                        ; preds = %if.else20
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %18 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pipe, align 4
  %and = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  %ring33 = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 7
  %20 = ptrtoint ptr %ring33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ring33, align 4
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %platform_dev35 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %platform_dev35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %platform_dev35, align 4
  %number36 = getelementptr inbounds %struct.u132_ring, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %number36 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %number36, align 1
  %usb_endp37 = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 4
  %26 = ptrtoint ptr %usb_endp37 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %usb_endp37, align 1
  br i1 %tobool23.not, label %if.else30, label %if.then24

if.then24:                                        ; preds = %if.then22
  %call = tail call i32 @usb_ftdi_elan_edset_input(ptr noundef %23, i8 noundef zeroext %25, ptr noundef %data, ptr noundef %urb, i8 noundef zeroext %5, i8 noundef zeroext %27, i8 noundef zeroext 0, ptr noundef nonnull @u132_hcd_configure_input_recv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp28.not = icmp eq i32 %call, 0
  br i1 %cmp28.not, label %if.then24.cleanup_crit_edge, label %if.then29

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then29:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef %call)
  br label %cleanup

if.else30:                                        ; preds = %if.then22
  %call38 = tail call i32 @usb_ftdi_elan_edset_input(ptr noundef %23, i8 noundef zeroext %25, ptr noundef %data, ptr noundef %urb, i8 noundef zeroext %5, i8 noundef zeroext %27, i8 noundef zeroext 0, ptr noundef nonnull @u132_hcd_configure_empty_recv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39.not = icmp eq i32 %call38, 0
  br i1 %cmp39.not, label %if.else30.cleanup_crit_edge, label %if.then40

if.else30.cleanup_crit_edge:                      ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then40:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef %call38)
  br label %cleanup

do.end45:                                         ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev46 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %platform_dev46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %platform_dev46, align 4
  %dev47 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.96, ptr noundef %urb, i32 noundef %17) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %if.then40, %if.else30.cleanup_crit_edge, %if.then29, %if.then24.cleanup_crit_edge, %do.end16, %if.then5, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @u132_hcd_bulk_input_recv(ptr noundef %data, ptr noundef %urb, ptr nocapture noundef readonly %buf, i32 noundef %len, i32 noundef %toggle_bits, i32 noundef %error_count, i32 noundef %condition_code, i32 noundef %repeat_number, i32 noundef %halted, i32 noundef %skipped, i32 noundef %actual, i32 noundef %non_null) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %u1321 = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %u1321 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u1321, align 4
  %usb_addr = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %usb_addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %usb_addr, align 2
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.u132, ptr %1, i32 0, i32 20, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %idxprom4 = zext i8 %5 to i32
  %scheduler_lock = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %scheduler_lock, i32 noundef 0) #10
  %going = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp sgt i32 %7, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  %platform_dev = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %7) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %data, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %data, ptr %data, i32 1, ptr elementtype(i32) %data) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup212_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !523

if.end5.i.i.i.i.i.i.cleanup212_crit_edge:         ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup212

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %data, i32 noundef 3) #10
  br label %cleanup212

if.then.i.i.i:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  tail call fastcc void @u132_endp_delete(ptr noundef %data) #10, !callees !525
  br label %cleanup212

if.else:                                          ; preds = %entry
  %dequeueing = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 8
  %11 = ptrtoint ptr %dequeueing to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load = load i32, ptr %dequeueing, align 4
  %12 = and i32 %bf.load, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.else13, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear11 = and i32 %bf.load, -8388609
  %13 = ptrtoint ptr %dequeueing to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %bf.clear11, ptr %dequeueing, align 4
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef -4)
  br label %cleanup212

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp15 = icmp sgt i32 %7, 0
  br i1 %cmp15, label %do.end19, label %if.else23

do.end19:                                         ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev20 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %platform_dev20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_dev20, align 4
  %dev21 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.77, ptr noundef %urb) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef -19)
  br label %cleanup212

if.else23:                                        ; preds = %if.else13
  %unlinked = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 1
  %16 = ptrtoint ptr %unlinked to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %unlinked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool24.not = icmp eq i32 %17, 0
  br i1 %tobool24.not, label %if.then25, label %do.end207

if.then25:                                        ; preds = %if.else23
  %ring26 = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 7
  %18 = ptrtoint ptr %ring26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ring26, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp27336 = icmp sgt i32 %len, 0
  br i1 %cmp27336, label %while.body.preheader, label %if.then25.while.end_crit_edge

if.then25.while.end_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.preheader:                             ; preds = %if.then25
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %20 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transfer_buffer, align 4
  %22 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %actual_length, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 %23
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %L.0339 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %len, %while.body.preheader ]
  %b.0338 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %buf, %while.body.preheader ]
  %u.0337 = phi ptr [ %incdec.ptr28, %while.body.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %dec = add nsw i32 %L.0339, -1
  %incdec.ptr = getelementptr i8, ptr %b.0338, i32 1
  %24 = ptrtoint ptr %b.0338 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %b.0338, align 1
  %incdec.ptr28 = getelementptr i8, ptr %u.0337, i32 1
  %26 = ptrtoint ptr %u.0337 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %u.0337, align 1
  %cmp27 = icmp ugt i32 %L.0339, 1
  br i1 %cmp27, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then25.while.end_crit_edge
  %27 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %actual_length, align 4
  %add = add i32 %28, %len
  store i32 %add, ptr %actual_length, align 4
  %29 = zext i32 %condition_code to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.255)
  switch i32 %condition_code, label %if.else173 [
    i32 0, label %land.lhs.true
    i32 9, label %land.lhs.true87
    i32 4, label %if.then151
  ]

land.lhs.true:                                    ; preds = %while.end
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %30 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %transfer_buffer_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %add)
  %cmp32 = icmp ugt i32 %31, %add
  %32 = ptrtoint ptr %dequeueing to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load35 = load i32, ptr %dequeueing, align 4
  %bf.shl = shl i32 %toggle_bits, 30
  %bf.clear36 = and i32 %bf.load35, 1073741823
  %bf.set37 = or i32 %bf.clear36, %bf.shl
  store i32 %bf.set37, ptr %dequeueing, align 4
  %usb_device = getelementptr %struct.u132, ptr %1, i32 0, i32 21, i32 %idxprom4, i32 1
  %33 = ptrtoint ptr %usb_device to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %usb_device, align 4
  %toggle = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %toggle to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %toggle, align 4
  %usb_endp = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 4
  %37 = ptrtoint ptr %usb_endp to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %usb_endp, align 1
  %conv = zext i8 %38 to i32
  %shl = shl nuw i32 1, %conv
  %neg = xor i32 %shl, -1
  %and = and i32 %36, %neg
  %and39 = and i32 %toggle_bits, 1
  %shl42 = shl nuw i32 %and39, %conv
  %or = or i32 %and, %shl42
  store i32 %or, ptr %toggle, align 4
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  br i1 %cmp32, label %if.then33, label %if.then59.critedge

if.then33:                                        ; preds = %land.lhs.true
  %platform_dev47 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %39 = ptrtoint ptr %platform_dev47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %platform_dev47, align 4
  %number = getelementptr inbounds %struct.u132_ring, ptr %19, i32 0, i32 1
  %41 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %number, align 1
  %43 = ptrtoint ptr %usb_endp to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %usb_endp, align 1
  %45 = ptrtoint ptr %dequeueing to i32
  call void @__asan_load4_noabort(i32 %45)
  %bf.load50 = load i32, ptr %dequeueing, align 4
  %bf.lshr51 = lshr i32 %bf.load50, 30
  %conv52 = trunc i32 %bf.lshr51 to i8
  %call = tail call i32 @usb_ftdi_elan_edset_input(ptr noundef %40, i8 noundef zeroext %42, ptr noundef %data, ptr noundef %urb, i8 noundef zeroext %5, i8 noundef zeroext %44, i8 noundef zeroext %conv52, ptr noundef nonnull @u132_hcd_bulk_input_recv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp53.not = icmp eq i32 %call, 0
  br i1 %cmp53.not, label %if.then33.cleanup212_crit_edge, label %if.then55

if.then33.cleanup212_crit_edge:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup212

if.then55:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef %call)
  br label %cleanup212

if.then59.critedge:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef 0)
  br label %cleanup212

land.lhs.true87:                                  ; preds = %while.end
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 13
  %46 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %transfer_flags, align 4
  %and88 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %cmp89 = icmp eq i32 %and88, 0
  %48 = ptrtoint ptr %dequeueing to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load93 = load i32, ptr %dequeueing, align 4
  %bf.shl95 = shl i32 %toggle_bits, 30
  %bf.clear96 = and i32 %bf.load93, 1073741823
  %bf.set97 = or i32 %bf.clear96, %bf.shl95
  store i32 %bf.set97, ptr %dequeueing, align 4
  %usb_device98 = getelementptr %struct.u132, ptr %1, i32 0, i32 21, i32 %idxprom4, i32 1
  %49 = ptrtoint ptr %usb_device98 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %usb_device98, align 4
  %toggle99 = getelementptr inbounds %struct.usb_device, ptr %50, i32 0, i32 10
  %51 = ptrtoint ptr %toggle99 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %toggle99, align 4
  %usb_endp101 = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 4
  %53 = ptrtoint ptr %usb_endp101 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %usb_endp101, align 1
  %conv102 = zext i8 %54 to i32
  %shl103 = shl nuw i32 1, %conv102
  %neg104 = xor i32 %shl103, -1
  %and105 = and i32 %52, %neg104
  %and106 = and i32 %toggle_bits, 1
  %shl109 = shl nuw i32 %and106, %conv102
  %or110 = or i32 %and105, %shl109
  store i32 %or110, ptr %toggle99, align 4
  br i1 %cmp89, label %if.then91, label %if.then118.critedge

if.then91:                                        ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef 0)
  br label %cleanup212

if.then118.critedge:                              ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev144 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %55 = ptrtoint ptr %platform_dev144 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %platform_dev144, align 4
  %dev145 = getelementptr inbounds %struct.platform_device, ptr %56, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev145, ptr noundef nonnull @.str.170, ptr noundef %urb, ptr noundef nonnull @.str.110) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef 0)
  br label %cleanup212

if.then151:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %dequeueing to i32
  call void @__asan_load4_noabort(i32 %57)
  %bf.load153 = load i32, ptr %dequeueing, align 4
  %bf.clear154 = and i32 %bf.load153, 1073741823
  %bf.set155 = or i32 %bf.clear154, -2147483648
  store i32 %bf.set155, ptr %dequeueing, align 4
  %usb_device156 = getelementptr %struct.u132, ptr %1, i32 0, i32 21, i32 %idxprom4, i32 1
  %58 = ptrtoint ptr %usb_device156 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %usb_device156, align 4
  %toggle157 = getelementptr inbounds %struct.usb_device, ptr %59, i32 0, i32 10
  %60 = ptrtoint ptr %toggle157 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %toggle157, align 4
  %usb_endp159 = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 4
  %62 = ptrtoint ptr %usb_endp159 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %usb_endp159, align 1
  %conv160 = zext i8 %63 to i32
  %shl161 = shl nuw i32 1, %conv160
  %neg162 = xor i32 %shl161, -1
  %and163 = and i32 %61, %neg162
  store i32 %and163, ptr %toggle157, align 4
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef -32)
  br label %cleanup212

if.else173:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %dequeueing to i32
  call void @__asan_load4_noabort(i32 %64)
  %bf.load175 = load i32, ptr %dequeueing, align 4
  %bf.clear176 = and i32 %bf.load175, 1073741823
  %bf.set177 = or i32 %bf.clear176, -2147483648
  store i32 %bf.set177, ptr %dequeueing, align 4
  %usb_device178 = getelementptr %struct.u132, ptr %1, i32 0, i32 21, i32 %idxprom4, i32 1
  %65 = ptrtoint ptr %usb_device178 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %usb_device178, align 4
  %toggle179 = getelementptr inbounds %struct.usb_device, ptr %66, i32 0, i32 10
  %67 = ptrtoint ptr %toggle179 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %toggle179, align 4
  %usb_endp181 = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 4
  %69 = ptrtoint ptr %usb_endp181 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %usb_endp181, align 1
  %conv182 = zext i8 %70 to i32
  %shl183 = shl nuw i32 1, %conv182
  %neg184 = xor i32 %shl183, -1
  %and185 = and i32 %68, %neg184
  store i32 %and185, ptr %toggle179, align 4
  %platform_dev196 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %71 = ptrtoint ptr %platform_dev196 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %platform_dev196, align 4
  %dev197 = getelementptr inbounds %struct.platform_device, ptr %72, i32 0, i32 3
  %arrayidx198 = getelementptr [16 x ptr], ptr @cc_to_text, i32 0, i32 %condition_code
  %73 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx198, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev197, ptr noundef nonnull @.str.173, ptr noundef %urb, i32 noundef %condition_code, ptr noundef %74) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %arrayidx200 = getelementptr [16 x i32], ptr @cc_to_error, i32 0, i32 %condition_code
  %75 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx200, align 4
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef %76)
  br label %cleanup212

do.end207:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev208 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %77 = ptrtoint ptr %platform_dev208 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %platform_dev208, align 4
  %dev209 = getelementptr inbounds %struct.platform_device, ptr %78, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev209, ptr noundef nonnull @.str.96, ptr noundef %urb, i32 noundef %17) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef 0)
  br label %cleanup212

cleanup212:                                       ; preds = %do.end207, %if.else173, %if.then151, %if.then118.critedge, %if.then91, %if.then59.critedge, %if.then55, %if.then33.cleanup212_crit_edge, %do.end19, %if.then8, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup212_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @u132_hcd_bulk_output_sent(ptr noundef %data, ptr noundef %urb, ptr nocapture noundef readnone %buf, i32 noundef %len, i32 noundef %toggle_bits, i32 noundef %error_count, i32 noundef %condition_code, i32 noundef %repeat_number, i32 noundef %halted, i32 noundef %skipped, i32 noundef %actual, i32 noundef %non_null) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %u1321 = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %u1321 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u1321, align 4
  %usb_addr = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %usb_addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %usb_addr, align 2
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.u132, ptr %1, i32 0, i32 20, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %scheduler_lock = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %scheduler_lock, i32 noundef 0) #10
  %going = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp sgt i32 %7, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  %platform_dev = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %7) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %data, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %data, ptr %data, i32 1, ptr elementtype(i32) %data) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup48_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !523

if.end5.i.i.i.i.i.i.cleanup48_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup48

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %data, i32 noundef 3) #10
  br label %cleanup48

if.then.i.i.i:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  tail call fastcc void @u132_endp_delete(ptr noundef %data) #10, !callees !525
  br label %cleanup48

if.else:                                          ; preds = %entry
  %dequeueing = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 8
  %11 = ptrtoint ptr %dequeueing to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load = load i32, ptr %dequeueing, align 4
  %12 = and i32 %bf.load, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.else10, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear8 = and i32 %bf.load, -8388609
  %13 = ptrtoint ptr %dequeueing to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %bf.clear8, ptr %dequeueing, align 4
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef -4)
  br label %cleanup48

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp12 = icmp sgt i32 %7, 0
  br i1 %cmp12, label %do.end16, label %if.else20

do.end16:                                         ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev17 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %platform_dev17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_dev17, align 4
  %dev18 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.77, ptr noundef %urb) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef -19)
  br label %cleanup48

if.else20:                                        ; preds = %if.else10
  %unlinked = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 1
  %16 = ptrtoint ptr %unlinked to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %unlinked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not = icmp eq i32 %17, 0
  br i1 %tobool21.not, label %if.then22, label %do.end43

if.then22:                                        ; preds = %if.else20
  %ring23 = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 7
  %18 = ptrtoint ptr %ring23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ring23, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %20 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %actual_length, align 4
  %add = add i32 %21, %len
  store i32 %add, ptr %actual_length, align 4
  %22 = ptrtoint ptr %dequeueing to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load25 = load i32, ptr %dequeueing, align 4
  %bf.shl = shl i32 %toggle_bits, 30
  %bf.clear26 = and i32 %bf.load25, 1073741823
  %bf.set27 = or i32 %bf.clear26, %bf.shl
  store i32 %bf.set27, ptr %dequeueing, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %23 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %transfer_buffer_length, align 4
  %25 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %25)
  %cmp29 = icmp ugt i32 %24, %25
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  br i1 %cmp29, label %if.then30, label %if.else38

if.then30:                                        ; preds = %if.then22
  %26 = ptrtoint ptr %dequeueing to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load33 = load i32, ptr %dequeueing, align 4
  %bf.lshr34 = lshr i32 %bf.load33, 30
  %conv = trunc i32 %bf.lshr34 to i8
  %platform_dev.i = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %platform_dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %platform_dev.i, align 4
  %number.i = getelementptr inbounds %struct.u132_ring, ptr %19, i32 0, i32 1
  %29 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %number.i, align 1
  %usb_endp.i = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 4
  %31 = ptrtoint ptr %usb_endp.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %usb_endp.i, align 1
  %call.i = tail call i32 @usb_ftdi_elan_edset_output(ptr noundef %28, i8 noundef zeroext %30, ptr noundef %data, ptr noundef %urb, i8 noundef zeroext %5, i8 noundef zeroext %32, i8 noundef zeroext %conv, ptr noundef nonnull @u132_hcd_bulk_output_sent) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp35.not = icmp eq i32 %call.i, 0
  br i1 %cmp35.not, label %if.then30.cleanup48_crit_edge, label %if.then37

if.then30.cleanup48_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup48

if.then37:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef %call.i)
  br label %cleanup48

if.else38:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef 0)
  br label %cleanup48

do.end43:                                         ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev44 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %platform_dev44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %platform_dev44, align 4
  %dev45 = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.96, ptr noundef %urb, i32 noundef %17) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef 0)
  br label %cleanup48

cleanup48:                                        ; preds = %do.end43, %if.else38, %if.then37, %if.then30.cleanup48_crit_edge, %do.end16, %if.then5, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup48_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u132_endp_delete(ptr noundef %kref) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %u1321 = getelementptr inbounds %struct.u132_endp, ptr %kref, i32 0, i32 5
  %0 = ptrtoint ptr %u1321 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u1321, align 4
  %usb_addr2 = getelementptr inbounds %struct.u132_endp, ptr %kref, i32 0, i32 3
  %2 = ptrtoint ptr %usb_addr2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %usb_addr2, align 2
  %usb_endp3 = getelementptr inbounds %struct.u132_endp, ptr %kref, i32 0, i32 4
  %4 = ptrtoint ptr %usb_endp3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %usb_endp3, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.u132, ptr %1, i32 0, i32 20, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %idxprom6 = zext i8 %7 to i32
  %arrayidx7 = getelementptr %struct.u132, ptr %1, i32 0, i32 21, i32 %idxprom6
  %endp_number8 = getelementptr inbounds %struct.u132_endp, ptr %kref, i32 0, i32 2
  %8 = ptrtoint ptr %endp_number8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %endp_number8, align 1
  %hep9 = getelementptr inbounds %struct.u132_endp, ptr %kref, i32 0, i32 10
  %10 = ptrtoint ptr %hep9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hep9, align 4
  %ring10 = getelementptr inbounds %struct.u132_endp, ptr %kref, i32 0, i32 7
  %12 = ptrtoint ptr %ring10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ring10, align 4
  %endp_ring = getelementptr inbounds %struct.u132_endp, ptr %kref, i32 0, i32 6
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %13, align 4
  %sub = add i8 %bf.load, 127
  %bf.value = and i8 %sub, 127
  %bf.clear12 = and i8 %bf.load, -128
  %bf.set = or i8 %bf.value, %bf.clear12
  store i8 %bf.set, ptr %13, align 4
  %curr_endp = getelementptr inbounds %struct.u132_ring, ptr %13, i32 0, i32 3
  %15 = ptrtoint ptr %curr_endp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %curr_endp, align 4
  %cmp = icmp eq ptr %16, %kref
  br i1 %cmp, label %if.then, label %if.else19

if.then:                                          ; preds = %entry
  %17 = ptrtoint ptr %endp_ring to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %endp_ring, align 4
  %cmp.i.not = icmp eq ptr %18, %endp_ring
  br i1 %cmp.i.not, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then
  %19 = ptrtoint ptr %curr_endp to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %curr_endp, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %endp_ring) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then13.if.end20_crit_edge

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.u132_endp, ptr %kref, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %endp_ring to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %endp_ring, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %if.end20

if.else:                                          ; preds = %if.then
  %add.ptr17 = getelementptr i8, ptr %18, i32 -12
  %26 = ptrtoint ptr %curr_endp to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr17, ptr %curr_endp, align 4
  %call.i.i65 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %endp_ring) #10
  br i1 %call.i.i65, label %if.end.i.i68, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end.i.i68:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i66 = getelementptr inbounds %struct.u132_endp, ptr %kref, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %prev.i.i66 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i66, align 4
  %29 = ptrtoint ptr %endp_ring to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %endp_ring, align 4
  %prev1.i.i.i67 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i67 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i67, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %if.end20

if.else19:                                        ; preds = %entry
  %call.i.i71 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %endp_ring) #10
  br i1 %call.i.i71, label %if.end.i.i74, label %if.else19.if.end20_crit_edge

if.else19.if.end20_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end.i.i74:                                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i72 = getelementptr inbounds %struct.u132_endp, ptr %kref, i32 0, i32 6, i32 1
  %33 = ptrtoint ptr %prev.i.i72 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i72, align 4
  %35 = ptrtoint ptr %endp_ring to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %endp_ring, align 4
  %prev1.i.i.i73 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i73 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i73, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end.i.i74, %if.else19.if.end20_crit_edge, %if.end.i.i68, %if.else.if.end20_crit_edge, %if.end.i.i, %if.then13.if.end20_crit_edge
  %39 = ptrtoint ptr %endp_ring to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 256 to ptr), ptr %endp_ring, align 4
  %prev.i = getelementptr inbounds %struct.u132_endp, ptr %kref, i32 0, i32 6, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %input = getelementptr inbounds %struct.u132_endp, ptr %kref, i32 0, i32 8
  %41 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load21 = load i32, ptr %input, align 4
  %42 = and i32 %bf.load21, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool23.not = icmp eq i32 %42, 0
  br i1 %tobool23.not, label %if.end20.if.end27_crit_edge, label %if.then24

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then24:                                        ; preds = %if.end20
  %idxprom25 = zext i8 %5 to i32
  %arrayidx26 = getelementptr %struct.u132, ptr %1, i32 0, i32 21, i32 %idxprom6, i32 6, i32 %idxprom25
  %43 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %arrayidx26, align 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx7, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %arrayidx7, i32 1, i32 3, i32 1) #10
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx7, ptr %arrayidx7, i32 1, ptr elementtype(i32) %arrayidx7) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end27_crit_edge, label %if.then10.i.i.i.i.i, !prof !523

if.end5.i.i.i.i.i.if.end27_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %arrayidx7, i32 noundef 3) #10
  br label %if.end27

if.then.i.i:                                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  %usb_device.i.i = getelementptr %struct.u132, ptr %1, i32 0, i32 21, i32 %idxprom6, i32 1
  %45 = call ptr @memset(ptr %usb_device.i.i, i32 0, i32 7)
  br label %if.end27

if.end27:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end27_crit_edge, %if.end20.if.end27_crit_edge
  %46 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load28 = load i32, ptr %input, align 4
  %47 = and i32 %bf.load28, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool31.not = icmp eq i32 %47, 0
  br i1 %tobool31.not, label %if.end27.if.end35_crit_edge, label %if.then32

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then32:                                        ; preds = %if.end27
  %idxprom33 = zext i8 %5 to i32
  %arrayidx34 = getelementptr %struct.u132, ptr %1, i32 0, i32 21, i32 %idxprom6, i32 7, i32 %idxprom33
  %48 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %arrayidx34, align 1
  %call.i.i.i.i.i.i.i77 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx7, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %arrayidx7, i32 1, i32 3, i32 1) #10
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx7, ptr %arrayidx7, i32 1, ptr elementtype(i32) %arrayidx7) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i.i78 = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i78)
  %cmp.i.i.i.i.i79 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i78, 1
  br i1 %cmp.i.i.i.i.i79, label %if.then.i.i84, label %if.end5.i.i.i.i.i81

if.end5.i.i.i.i.i81:                              ; preds = %if.then32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i78)
  %.not.i.i.i.i.i80 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i78, 0
  br i1 %.not.i.i.i.i.i80, label %if.end5.i.i.i.i.i81.if.end35_crit_edge, label %if.then10.i.i.i.i.i82, !prof !523

if.end5.i.i.i.i.i81.if.end35_crit_edge:           ; preds = %if.end5.i.i.i.i.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then10.i.i.i.i.i82:                            ; preds = %if.end5.i.i.i.i.i81
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %arrayidx7, i32 noundef 3) #10
  br label %if.end35

if.then.i.i84:                                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  %usb_device.i.i83 = getelementptr %struct.u132, ptr %1, i32 0, i32 21, i32 %idxprom6, i32 1
  %50 = call ptr @memset(ptr %usb_device.i.i83, i32 0, i32 7)
  br label %if.end35

if.end35:                                         ; preds = %if.then.i.i84, %if.then10.i.i.i.i.i82, %if.end5.i.i.i.i.i81.if.end35_crit_edge, %if.end27.if.end35_crit_edge
  %conv = zext i8 %9 to i32
  %sub37 = add nsw i32 %conv, -1
  %arrayidx38 = getelementptr %struct.u132, ptr %1, i32 0, i32 23, i32 %sub37
  %51 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %arrayidx38, align 4
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %11, i32 0, i32 5
  %52 = ptrtoint ptr %hcpriv to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %hcpriv, align 4
  tail call void @kfree(ptr noundef %kref) #10
  tail call fastcc void @u132_u132_put_kref(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ftdi_elan_edset_single(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u132_ring_cancel_work(ptr noundef %u132, ptr noundef %ring) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %scheduler = getelementptr inbounds %struct.u132_ring, ptr %ring, i32 0, i32 4
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %scheduler) #10
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %u132, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %u132, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %u132, ptr %u132, i32 1, ptr elementtype(i32) %u132) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !523

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %u132, i32 noundef 3) #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  %platform_dev.i = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 4
  %1 = ptrtoint ptr %platform_dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_dev.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %u132, i32 -600
  %going.i = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 7
  %3 = ptrtoint ptr %going.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %going.i, align 4
  %add.i = add i32 %4, 1
  store i32 %add.i, ptr %going.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @u132_module_lock, i32 noundef 0) #10
  %5 = load i32, ptr @u132_instances, align 4
  %sub.i = add i32 %5, -1
  store i32 %sub.i, ptr @u132_instances, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @u132_module_lock) #10
  %6 = ptrtoint ptr %platform_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %going.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %going.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.98, ptr noundef %add.ptr.i.i, ptr noundef %u132, i32 noundef %9, ptr noundef %2) #13
  tail call void @usb_put_hcd(ptr noundef %add.ptr.i.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u132_ring_requeue_work(ptr noundef %u132, ptr noundef %ring, i32 noundef %delta) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta)
  %cmp.not = icmp eq i32 %delta, 0
  %0 = load ptr, ptr @workqueue, align 4
  %scheduler2 = getelementptr inbounds %struct.u132_ring, ptr %ring, i32 0, i32 4
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %scheduler2, i32 noundef %delta) #10
  br i1 %call.i, label %if.then.return_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.else:                                          ; preds = %entry
  %call.i10 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %scheduler2, i32 noundef 0) #10
  br i1 %call.i10, label %if.else.return_crit_edge, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end6:                                          ; preds = %if.else.if.end6_crit_edge, %if.then.if.end6_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %u132, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %u132, i32 1, i32 3, i32 1) #10
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %u132, ptr %u132, i32 1, ptr elementtype(i32) %u132) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !523

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %u132, i32 noundef 3) #10
  br label %return

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  %platform_dev.i = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 4
  %2 = ptrtoint ptr %platform_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_dev.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %u132, i32 -600
  %going.i = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 7
  %4 = ptrtoint ptr %going.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %going.i, align 4
  %add.i = add i32 %5, 1
  store i32 %add.i, ptr %going.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @u132_module_lock, i32 noundef 0) #10
  %6 = load i32, ptr @u132_instances, align 4
  %sub.i = add i32 %6, -1
  store i32 %sub.i, ptr @u132_instances, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @u132_module_lock) #10
  %7 = ptrtoint ptr %platform_dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %going.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %going.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.98, ptr noundef %add.ptr.i.i, ptr noundef %u132, i32 noundef %10, ptr noundef %3) #13
  tail call void @usb_put_hcd(ptr noundef %add.ptr.i.i) #10
  br label %return

return:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %if.else.return_crit_edge, %if.then.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_giveback_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ftdi_elan_edset_setup(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ftdi_elan_edset_input(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @u132_hcd_initial_input_recv(ptr noundef %data, ptr noundef %urb, ptr nocapture noundef readonly %buf, i32 noundef %len, i32 noundef %toggle_bits, i32 noundef %error_count, i32 noundef %condition_code, i32 noundef %repeat_number, i32 noundef %halted, i32 noundef %skipped, i32 noundef %actual, i32 noundef %non_null) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %u1321 = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %u1321 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u1321, align 4
  %usb_addr = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %usb_addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %usb_addr, align 2
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.u132, ptr %1, i32 0, i32 20, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %scheduler_lock = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %scheduler_lock, i32 noundef 0) #10
  %going = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp sgt i32 %7, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  %platform_dev = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %7) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %data, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %data, ptr %data, i32 1, ptr elementtype(i32) %data) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !523

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %data, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  tail call fastcc void @u132_endp_delete(ptr noundef %data) #10, !callees !525
  br label %cleanup

if.else:                                          ; preds = %entry
  %dequeueing = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 8
  %11 = ptrtoint ptr %dequeueing to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load = load i32, ptr %dequeueing, align 4
  %12 = and i32 %bf.load, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.else10, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear8 = and i32 %bf.load, -8388609
  %13 = ptrtoint ptr %dequeueing to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %bf.clear8, ptr %dequeueing, align 4
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef -4)
  br label %cleanup

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp12 = icmp sgt i32 %7, 0
  br i1 %cmp12, label %do.end16, label %if.else20

do.end16:                                         ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev17 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %platform_dev17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_dev17, align 4
  %dev18 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.77, ptr noundef %urb) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef -19)
  br label %cleanup

if.else20:                                        ; preds = %if.else10
  %unlinked = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 1
  %16 = ptrtoint ptr %unlinked to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %unlinked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not = icmp eq i32 %17, 0
  br i1 %tobool21.not, label %if.then22, label %do.end33

if.then22:                                        ; preds = %if.else20
  %ring23 = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 7
  %18 = ptrtoint ptr %ring23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ring23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp2483 = icmp sgt i32 %len, 0
  br i1 %cmp2483, label %while.body.preheader, label %if.then22.while.end_crit_edge

if.then22.while.end_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.preheader:                             ; preds = %if.then22
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %20 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transfer_buffer, align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %L.086 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %len, %while.body.preheader ]
  %b.085 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %buf, %while.body.preheader ]
  %u.084 = phi ptr [ %incdec.ptr25, %while.body.while.body_crit_edge ], [ %21, %while.body.preheader ]
  %dec = add nsw i32 %L.086, -1
  %incdec.ptr = getelementptr i8, ptr %b.085, i32 1
  %22 = ptrtoint ptr %b.085 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b.085, align 1
  %incdec.ptr25 = getelementptr i8, ptr %u.084, i32 1
  %24 = ptrtoint ptr %u.084 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %u.084, align 1
  %cmp24 = icmp ugt i32 %L.086, 1
  br i1 %cmp24, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then22.while.end_crit_edge
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %25 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %len, ptr %actual_length, align 4
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %platform_dev27 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %platform_dev27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %platform_dev27, align 4
  %number = getelementptr inbounds %struct.u132_ring, ptr %19, i32 0, i32 1
  %28 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %number, align 1
  %usb_endp = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 4
  %30 = ptrtoint ptr %usb_endp to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %usb_endp, align 1
  %call = tail call i32 @usb_ftdi_elan_edset_empty(ptr noundef %27, i8 noundef zeroext %29, ptr noundef %data, ptr noundef %urb, i8 noundef zeroext %5, i8 noundef zeroext %31, i8 noundef zeroext 3, ptr noundef nonnull @u132_hcd_initial_empty_sent) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp28.not = icmp eq i32 %call, 0
  br i1 %cmp28.not, label %while.end.cleanup_crit_edge, label %if.then29

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then29:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef %call)
  br label %cleanup

do.end33:                                         ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev34 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %platform_dev34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %platform_dev34, align 4
  %dev35 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.96, ptr noundef %urb, i32 noundef %17) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %if.then29, %while.end.cleanup_crit_edge, %do.end16, %if.then5, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ftdi_elan_edset_empty(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @u132_hcd_initial_empty_sent(ptr noundef %data, ptr noundef %urb, ptr nocapture noundef readnone %buf, i32 noundef %len, i32 noundef %toggle_bits, i32 noundef %error_count, i32 noundef %condition_code, i32 noundef %repeat_number, i32 noundef %halted, i32 noundef %skipped, i32 noundef %actual, i32 noundef %non_null) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %u1321 = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %u1321 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u1321, align 4
  %scheduler_lock = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %scheduler_lock, i32 noundef 0) #10
  %going = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  %platform_dev = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %3) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %data, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %data, ptr %data, i32 1, ptr elementtype(i32) %data) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !523

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %data, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  tail call fastcc void @u132_endp_delete(ptr noundef %data) #10, !callees !525
  br label %cleanup

if.else:                                          ; preds = %entry
  %dequeueing = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 8
  %7 = ptrtoint ptr %dequeueing to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %dequeueing, align 4
  %8 = and i32 %bf.load, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else9, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear7 = and i32 %bf.load, -8388609
  %9 = ptrtoint ptr %dequeueing to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %bf.clear7, ptr %dequeueing, align 4
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef -4)
  br label %cleanup

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11 = icmp sgt i32 %3, 0
  br i1 %cmp11, label %do.end15, label %if.else19

do.end15:                                         ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev16 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %platform_dev16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platform_dev16, align 4
  %dev17 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.77, ptr noundef %urb) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef -19)
  br label %cleanup

if.else19:                                        ; preds = %if.else9
  %unlinked = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 1
  %12 = ptrtoint ptr %unlinked to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %unlinked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %if.then21, label %do.end26

if.then21:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef 0)
  br label %cleanup

do.end26:                                         ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev27 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %platform_dev27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_dev27, align 4
  %dev28 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.96, ptr noundef %urb, i32 noundef %13) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.then21, %do.end15, %if.then4, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @u132_hcd_enumeration_empty_recv(ptr noundef %data, ptr noundef %urb, ptr nocapture noundef readnone %buf, i32 noundef %len, i32 noundef %toggle_bits, i32 noundef %error_count, i32 noundef %condition_code, i32 noundef %repeat_number, i32 noundef %halted, i32 noundef %skipped, i32 noundef %actual, i32 noundef %non_null) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %u1321 = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %u1321 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u1321, align 4
  %addr = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 20
  %usb_addr = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %usb_addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %usb_addr, align 2
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.u132, ptr %1, i32 0, i32 20, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %idxprom4 = zext i8 %5 to i32
  %scheduler_lock = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %scheduler_lock, i32 noundef 0) #10
  %going = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp sgt i32 %7, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  %platform_dev = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %7) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %data, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %data, ptr %data, i32 1, ptr elementtype(i32) %data) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !523

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %data, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  tail call fastcc void @u132_endp_delete(ptr noundef %data) #10, !callees !525
  br label %cleanup

if.else:                                          ; preds = %entry
  %dequeueing = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 8
  %11 = ptrtoint ptr %dequeueing to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load = load i32, ptr %dequeueing, align 4
  %12 = and i32 %bf.load, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.else13, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear11 = and i32 %bf.load, -8388609
  %13 = ptrtoint ptr %dequeueing to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %bf.clear11, ptr %dequeueing, align 4
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef -4)
  br label %cleanup

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp15 = icmp sgt i32 %7, 0
  br i1 %cmp15, label %do.end19, label %if.else23

do.end19:                                         ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev20 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %platform_dev20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_dev20, align 4
  %dev21 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.77, ptr noundef %urb) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef -19)
  br label %cleanup

if.else23:                                        ; preds = %if.else13
  %unlinked = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 1
  %16 = ptrtoint ptr %unlinked to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %unlinked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool24.not = icmp eq i32 %17, 0
  br i1 %tobool24.not, label %if.then25, label %do.end35

if.then25:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %addr, align 4
  %usb_addr29 = getelementptr %struct.u132, ptr %1, i32 0, i32 21, i32 %idxprom4, i32 4
  %19 = ptrtoint ptr %usb_addr29 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %usb_addr29, align 2
  %21 = ptrtoint ptr %usb_addr to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %usb_addr, align 2
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef 0)
  br label %cleanup

do.end35:                                         ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev36 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %platform_dev36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %platform_dev36, align 4
  %dev37 = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37, ptr noundef nonnull @.str.96, ptr noundef %urb, i32 noundef %17) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.then25, %do.end19, %if.then8, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @u132_hcd_configure_input_recv(ptr noundef %data, ptr noundef %urb, ptr nocapture noundef readonly %buf, i32 noundef %len, i32 noundef %toggle_bits, i32 noundef %error_count, i32 noundef %condition_code, i32 noundef %repeat_number, i32 noundef %halted, i32 noundef %skipped, i32 noundef %actual, i32 noundef %non_null) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %u1321 = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %u1321 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u1321, align 4
  %usb_addr = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %usb_addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %usb_addr, align 2
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.u132, ptr %1, i32 0, i32 20, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %scheduler_lock = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %scheduler_lock, i32 noundef 0) #10
  %going = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp sgt i32 %7, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  %platform_dev = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %7) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %data, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %data, ptr %data, i32 1, ptr elementtype(i32) %data) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup64_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !523

if.end5.i.i.i.i.i.i.cleanup64_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup64

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %data, i32 noundef 3) #10
  br label %cleanup64

if.then.i.i.i:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  tail call fastcc void @u132_endp_delete(ptr noundef %data) #10, !callees !525
  br label %cleanup64

if.else:                                          ; preds = %entry
  %dequeueing = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 8
  %11 = ptrtoint ptr %dequeueing to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load = load i32, ptr %dequeueing, align 4
  %12 = and i32 %bf.load, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.else10, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear8 = and i32 %bf.load, -8388609
  %13 = ptrtoint ptr %dequeueing to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %bf.clear8, ptr %dequeueing, align 4
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef -4)
  br label %cleanup64

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp12 = icmp sgt i32 %7, 0
  br i1 %cmp12, label %do.end16, label %if.else20

do.end16:                                         ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev17 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %platform_dev17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_dev17, align 4
  %dev18 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.77, ptr noundef %urb) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef -19)
  br label %cleanup64

if.else20:                                        ; preds = %if.else10
  %unlinked = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 1
  %16 = ptrtoint ptr %unlinked to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %unlinked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not = icmp eq i32 %17, 0
  br i1 %tobool21.not, label %if.then22, label %do.end59

if.then22:                                        ; preds = %if.else20
  %ring23 = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 7
  %18 = ptrtoint ptr %ring23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ring23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp24128 = icmp sgt i32 %len, 0
  br i1 %cmp24128, label %while.body.preheader, label %if.then22.while.end_crit_edge

if.then22.while.end_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.preheader:                             ; preds = %if.then22
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %20 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transfer_buffer, align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %L.0131 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %len, %while.body.preheader ]
  %b.0130 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %buf, %while.body.preheader ]
  %u.0129 = phi ptr [ %incdec.ptr25, %while.body.while.body_crit_edge ], [ %21, %while.body.preheader ]
  %dec = add nsw i32 %L.0131, -1
  %incdec.ptr = getelementptr i8, ptr %b.0130, i32 1
  %22 = ptrtoint ptr %b.0130 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b.0130, align 1
  %incdec.ptr25 = getelementptr i8, ptr %u.0129, i32 1
  %24 = ptrtoint ptr %u.0129 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %u.0129, align 1
  %cmp24 = icmp ugt i32 %L.0131, 1
  br i1 %cmp24, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then22.while.end_crit_edge
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %25 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %len, ptr %actual_length, align 4
  %26 = zext i32 %condition_code to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.256)
  switch i32 %condition_code, label %while.end.if.else44_crit_edge [
    i32 0, label %while.end.if.then29_crit_edge
    i32 9, label %land.lhs.true
    i32 4, label %if.then36
  ]

while.end.if.then29_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

while.end.if.else44_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else44

land.lhs.true:                                    ; preds = %while.end
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 13
  %27 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %transfer_flags, align 4
  %and = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp28 = icmp eq i32 %and, 0
  br i1 %cmp28, label %land.lhs.true.if.then29_crit_edge, label %land.lhs.true.if.else44_crit_edge

land.lhs.true.if.else44_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else44

land.lhs.true.if.then29_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

if.then29:                                        ; preds = %land.lhs.true.if.then29_crit_edge, %while.end.if.then29_crit_edge
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %platform_dev31 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %platform_dev31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %platform_dev31, align 4
  %number = getelementptr inbounds %struct.u132_ring, ptr %19, i32 0, i32 1
  %31 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %number, align 1
  %usb_endp = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 4
  %33 = ptrtoint ptr %usb_endp to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %usb_endp, align 1
  %call = tail call i32 @usb_ftdi_elan_edset_empty(ptr noundef %30, i8 noundef zeroext %32, ptr noundef %data, ptr noundef %urb, i8 noundef zeroext %5, i8 noundef zeroext %34, i8 noundef zeroext 3, ptr noundef nonnull @u132_hcd_configure_empty_sent) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp32.not = icmp eq i32 %call, 0
  br i1 %cmp32.not, label %if.then29.cleanup64_crit_edge, label %if.then33

if.then29.cleanup64_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup64

if.then33:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef %call)
  br label %cleanup64

if.then36:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %platform_dev41 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %platform_dev41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %platform_dev41, align 4
  %dev42 = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev42, ptr noundef nonnull @.str.149, ptr noundef %urb) #13
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef -32)
  br label %cleanup64

if.else44:                                        ; preds = %land.lhs.true.if.else44_crit_edge, %while.end.if.else44_crit_edge
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %platform_dev49 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %platform_dev49 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %platform_dev49, align 4
  %dev50 = getelementptr inbounds %struct.platform_device, ptr %38, i32 0, i32 3
  %arrayidx51 = getelementptr [16 x ptr], ptr @cc_to_text, i32 0, i32 %condition_code
  %39 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx51, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50, ptr noundef nonnull @.str.152, ptr noundef %40, ptr noundef %urb) #13
  %arrayidx52 = getelementptr [16 x i32], ptr @cc_to_error, i32 0, i32 %condition_code
  %41 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx52, align 4
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef %42)
  br label %cleanup64

do.end59:                                         ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev60 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %43 = ptrtoint ptr %platform_dev60 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %platform_dev60, align 4
  %dev61 = getelementptr inbounds %struct.platform_device, ptr %44, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev61, ptr noundef nonnull @.str.96, ptr noundef %urb, i32 noundef %17) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef 0)
  br label %cleanup64

cleanup64:                                        ; preds = %do.end59, %if.else44, %if.then36, %if.then33, %if.then29.cleanup64_crit_edge, %do.end16, %if.then5, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup64_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @u132_hcd_configure_empty_recv(ptr noundef %data, ptr noundef %urb, ptr nocapture noundef readnone %buf, i32 noundef %len, i32 noundef %toggle_bits, i32 noundef %error_count, i32 noundef %condition_code, i32 noundef %repeat_number, i32 noundef %halted, i32 noundef %skipped, i32 noundef %actual, i32 noundef %non_null) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %u1321 = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %u1321 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u1321, align 4
  %scheduler_lock = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %scheduler_lock, i32 noundef 0) #10
  %going = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  %platform_dev = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %3) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %data, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %data, ptr %data, i32 1, ptr elementtype(i32) %data) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !523

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %data, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  tail call fastcc void @u132_endp_delete(ptr noundef %data) #10, !callees !525
  br label %cleanup

if.else:                                          ; preds = %entry
  %dequeueing = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 8
  %7 = ptrtoint ptr %dequeueing to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %dequeueing, align 4
  %8 = and i32 %bf.load, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else9, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear7 = and i32 %bf.load, -8388609
  %9 = ptrtoint ptr %dequeueing to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %bf.clear7, ptr %dequeueing, align 4
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef -4)
  br label %cleanup

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11 = icmp sgt i32 %3, 0
  br i1 %cmp11, label %do.end15, label %if.else19

do.end15:                                         ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev16 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %platform_dev16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platform_dev16, align 4
  %dev17 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.77, ptr noundef %urb) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef -19)
  br label %cleanup

if.else19:                                        ; preds = %if.else9
  %unlinked = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 1
  %12 = ptrtoint ptr %unlinked to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %unlinked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %if.then21, label %do.end26

if.then21:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef 0)
  br label %cleanup

do.end26:                                         ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev27 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %platform_dev27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_dev27, align 4
  %dev28 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.96, ptr noundef %urb, i32 noundef %13) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.then21, %do.end15, %if.then4, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @u132_hcd_configure_empty_sent(ptr noundef %data, ptr noundef %urb, ptr nocapture noundef readnone %buf, i32 noundef %len, i32 noundef %toggle_bits, i32 noundef %error_count, i32 noundef %condition_code, i32 noundef %repeat_number, i32 noundef %halted, i32 noundef %skipped, i32 noundef %actual, i32 noundef %non_null) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %u1321 = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %u1321 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u1321, align 4
  %scheduler_lock = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %scheduler_lock, i32 noundef 0) #10
  %going = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  %platform_dev = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %3) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %data, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %data, ptr %data, i32 1, ptr elementtype(i32) %data) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !523

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %data, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  tail call fastcc void @u132_endp_delete(ptr noundef %data) #10, !callees !525
  br label %cleanup

if.else:                                          ; preds = %entry
  %dequeueing = getelementptr inbounds %struct.u132_endp, ptr %data, i32 0, i32 8
  %7 = ptrtoint ptr %dequeueing to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %dequeueing, align 4
  %8 = and i32 %bf.load, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else9, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear7 = and i32 %bf.load, -8388609
  %9 = ptrtoint ptr %dequeueing to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %bf.clear7, ptr %dequeueing, align 4
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef -4)
  br label %cleanup

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11 = icmp sgt i32 %3, 0
  br i1 %cmp11, label %do.end15, label %if.else19

do.end15:                                         ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev16 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %platform_dev16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platform_dev16, align 4
  %dev17 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.77, ptr noundef %urb) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef -19)
  br label %cleanup

if.else19:                                        ; preds = %if.else9
  %unlinked = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 1
  %12 = ptrtoint ptr %unlinked to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %unlinked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %if.then21, label %do.end26

if.then21:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef 0)
  br label %cleanup

do.end26:                                         ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev27 = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %platform_dev27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_dev27, align 4
  %dev28 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.96, ptr noundef %urb, i32 noundef %13) #13
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_hcd_giveback_urb(ptr noundef %1, ptr noundef %data, ptr noundef %urb, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.then21, %do.end15, %if.then4, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ftdi_elan_edset_output(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u132_endp_urb_dequeue(ptr noundef %u132, ptr noundef %endp, ptr noundef %urb, i32 noundef %status) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_lock = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #10
  %add.ptr.i = getelementptr i8, ptr %u132, i32 -600
  %call6 = tail call i32 @usb_hcd_check_unlink_urb(ptr noundef %add.ptr.i, ptr noundef %urb, i32 noundef %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call2) #10
  br label %cleanup158

if.end:                                           ; preds = %entry
  %queue_size = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 12
  %0 = ptrtoint ptr %queue_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp10 = icmp eq i16 %1, 0
  br i1 %cmp10, label %do.end15, label %if.end28

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 4
  %2 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %endp_number = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 2
  %4 = ptrtoint ptr %endp_number to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %endp_number, align 1
  %conv16 = zext i8 %5 to i32
  %ring = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 7
  %6 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring, align 4
  %number = getelementptr inbounds %struct.u132_ring, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %number, align 1
  %conv17 = zext i8 %9 to i32
  %input = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 8
  %10 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %input, align 4
  %11 = and i32 %bf.load, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool18.not = icmp eq i32 %11, 0
  %cond = select i1 %tobool18.not, i32 32, i32 73
  %12 = and i32 %bf.load, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool22.not = icmp eq i32 %12, 0
  %cond23 = select i1 %tobool22.not, i32 32, i32 79
  %usb_endp = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 4
  %13 = ptrtoint ptr %usb_endp to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %usb_endp, align 1
  %conv24 = zext i8 %14 to i32
  %usb_addr = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 3
  %15 = ptrtoint ptr %usb_addr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %usb_addr, align 2
  %conv25 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.189, ptr noundef %urb, i32 noundef %conv16, ptr noundef %endp, i32 noundef %conv17, i32 noundef %cond, i32 noundef %cond23, i32 noundef %conv24, i32 noundef %conv25) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call2) #10
  br label %cleanup158

if.end28:                                         ; preds = %if.end
  %queue_next = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 14
  %17 = ptrtoint ptr %queue_next to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %queue_next, align 4
  %19 = and i16 %18, 7
  %and = zext i16 %19 to i32
  %arrayidx = getelementptr %struct.u132_endp, ptr %endp, i32 0, i32 15, i32 %and
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %cmp30 = icmp eq ptr %21, %urb
  br i1 %cmp30, label %if.then32, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end28
  %22 = add i16 %1, -1
  %23 = add i16 %1, %18
  %24 = add i16 %23, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp55.not = icmp eq i16 %22, 0
  br i1 %cmp55.not, label %while.cond.preheader.land.rhs75_crit_edge, label %while.body

while.cond.preheader.land.rhs75_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs75

if.then32:                                        ; preds = %if.end28
  %active = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 8
  %25 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load33 = load i32, ptr %active, align 4
  %26 = and i32 %bf.load33, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool36.not = icmp eq i32 %26, 0
  br i1 %tobool36.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.then32
  %bf.set42 = or i32 %bf.load33, 12582912
  %27 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %bf.set42, ptr %active, align 4
  %28 = load ptr, ptr @workqueue, align 4
  %scheduler.i = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %scheduler.i, i32 noundef 0) #10
  br i1 %call.i.i, label %if.then.i, label %if.then37.u132_endp_queue_work.exit_crit_edge

if.then37.u132_endp_queue_work.exit_crit_edge:    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_endp_queue_work.exit

if.then.i:                                        ; preds = %if.then37
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %endp, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %endp, i32 1, i32 3, i32 1) #10
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %endp, ptr %endp, i32 1, ptr elementtype(i32) %endp) #10, !srcloc !526
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !527

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %30 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %.not.i.i.i.i.i = icmp sgt i32 %30, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.u132_endp_queue_work.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !523

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.u132_endp_queue_work.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_endp_queue_work.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %endp, i32 noundef %.sink.i.i.i.i.i) #10
  br label %u132_endp_queue_work.exit

u132_endp_queue_work.exit:                        ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.u132_endp_queue_work.exit_crit_edge, %if.then37.u132_endp_queue_work.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call2) #10
  br label %cleanup158

if.else:                                          ; preds = %if.then32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call2) #10
  %error_count.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 26
  %31 = ptrtoint ptr %error_count.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %error_count.i, align 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #10
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %add.ptr.i, ptr noundef %urb) #10
  %32 = ptrtoint ptr %queue_next to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %queue_next, align 4
  %add.i = add i16 %33, 1
  store i16 %add.i, ptr %queue_next, align 4
  %34 = ptrtoint ptr %queue_size to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %queue_size, align 4
  %dec.i = add i16 %35, -1
  store i16 %dec.i, ptr %queue_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %dec.i)
  %cmp9.i = icmp ult i16 %dec.i, 8
  br i1 %cmp9.i, label %if.then.i241, label %if.else.i

if.then.i241:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %36)
  %bf.load.i = load i32, ptr %active, align 4
  %bf.clear.i = and i32 %bf.load.i, -536870913
  store i32 %bf.clear.i, ptr %active, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call3.i) #10
  br label %u132_hcd_abandon_urb.exit

if.else.i:                                        ; preds = %if.else
  %urb_more.i = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 16
  %37 = ptrtoint ptr %urb_more.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %urb_more.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %38) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.list_del.exit.i_crit_edge

if.else.i.list_del.exit.i_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i.i, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %38, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.else.i.list_del.exit.i_crit_edge
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %38, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %urb15.i = getelementptr inbounds %struct.u132_urbq, ptr %38, i32 0, i32 1
  %47 = ptrtoint ptr %urb15.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %urb15.i, align 4
  %queue_last.i = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 13
  %49 = ptrtoint ptr %queue_last.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %queue_last.i, align 2
  %inc.i = add i16 %50, 1
  store i16 %inc.i, ptr %queue_last.i, align 2
  %51 = and i16 %50, 7
  %and.i = zext i16 %51 to i32
  %arrayidx.i = getelementptr %struct.u132_endp, ptr %endp, i32 0, i32 15, i32 %and.i
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %48, ptr %arrayidx.i, align 4
  %53 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %53)
  %bf.load18.i = load i32, ptr %active, align 4
  %bf.clear19.i = and i32 %bf.load18.i, -536870913
  store i32 %bf.clear19.i, ptr %active, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call3.i) #10
  tail call void @kfree(ptr noundef %38) #10
  br label %u132_hcd_abandon_urb.exit

u132_hcd_abandon_urb.exit:                        ; preds = %list_del.exit.i, %if.then.i241
  tail call void @usb_hcd_giveback_urb(ptr noundef %add.ptr.i, ptr noundef %urb, i32 noundef %status) #10
  br label %cleanup158

while.body:                                       ; preds = %while.cond.preheader
  %inc58 = add i16 %18, 1
  %54 = and i16 %inc58, 7
  %and60 = zext i16 %54 to i32
  %arrayidx61 = getelementptr %struct.u132_endp, ptr %endp, i32 0, i32 15, i32 %and60
  %55 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx61, align 4
  %cmp62 = icmp eq ptr %56, %urb
  br i1 %cmp62, label %while.body.land.rhs75_crit_edge, label %while.cond.1

while.body.land.rhs75_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs75

while.cond.1:                                     ; preds = %while.body
  %dec.1 = add i16 %1, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec.1)
  %cmp55.not.1 = icmp eq i16 %dec.1, 0
  br i1 %cmp55.not.1, label %while.cond.1.land.rhs75_crit_edge, label %while.body.1

while.cond.1.land.rhs75_crit_edge:                ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs75

while.body.1:                                     ; preds = %while.cond.1
  %inc58.1 = add i16 %18, 2
  %57 = and i16 %inc58.1, 7
  %and60.1 = zext i16 %57 to i32
  %arrayidx61.1 = getelementptr %struct.u132_endp, ptr %endp, i32 0, i32 15, i32 %and60.1
  %58 = ptrtoint ptr %arrayidx61.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx61.1, align 4
  %cmp62.1 = icmp eq ptr %59, %urb
  br i1 %cmp62.1, label %while.body.1.land.rhs75_crit_edge, label %while.cond.2

while.body.1.land.rhs75_crit_edge:                ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs75

while.cond.2:                                     ; preds = %while.body.1
  %dec.2 = add i16 %1, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec.2)
  %cmp55.not.2 = icmp eq i16 %dec.2, 0
  br i1 %cmp55.not.2, label %while.cond.2.land.rhs75_crit_edge, label %while.body.2

while.cond.2.land.rhs75_crit_edge:                ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs75

while.body.2:                                     ; preds = %while.cond.2
  %inc58.2 = add i16 %18, 3
  %60 = and i16 %inc58.2, 7
  %and60.2 = zext i16 %60 to i32
  %arrayidx61.2 = getelementptr %struct.u132_endp, ptr %endp, i32 0, i32 15, i32 %and60.2
  %61 = ptrtoint ptr %arrayidx61.2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx61.2, align 4
  %cmp62.2 = icmp eq ptr %62, %urb
  br i1 %cmp62.2, label %while.body.2.land.rhs75_crit_edge, label %while.cond.3

while.body.2.land.rhs75_crit_edge:                ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs75

while.cond.3:                                     ; preds = %while.body.2
  %dec.3 = add i16 %1, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec.3)
  %cmp55.not.3 = icmp eq i16 %dec.3, 0
  br i1 %cmp55.not.3, label %while.cond.3.land.rhs75_crit_edge, label %while.body.3

while.cond.3.land.rhs75_crit_edge:                ; preds = %while.cond.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs75

while.body.3:                                     ; preds = %while.cond.3
  %inc58.3 = add i16 %18, 4
  %63 = and i16 %inc58.3, 7
  %and60.3 = zext i16 %63 to i32
  %arrayidx61.3 = getelementptr %struct.u132_endp, ptr %endp, i32 0, i32 15, i32 %and60.3
  %64 = ptrtoint ptr %arrayidx61.3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx61.3, align 4
  %cmp62.3 = icmp eq ptr %65, %urb
  br i1 %cmp62.3, label %while.body.3.land.rhs75_crit_edge, label %while.cond.4

while.body.3.land.rhs75_crit_edge:                ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs75

while.cond.4:                                     ; preds = %while.body.3
  %dec.4 = add i16 %1, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec.4)
  %cmp55.not.4 = icmp eq i16 %dec.4, 0
  br i1 %cmp55.not.4, label %while.cond.4.land.rhs75_crit_edge, label %while.body.4

while.cond.4.land.rhs75_crit_edge:                ; preds = %while.cond.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs75

while.body.4:                                     ; preds = %while.cond.4
  %inc58.4 = add i16 %18, 5
  %66 = and i16 %inc58.4, 7
  %and60.4 = zext i16 %66 to i32
  %arrayidx61.4 = getelementptr %struct.u132_endp, ptr %endp, i32 0, i32 15, i32 %and60.4
  %67 = ptrtoint ptr %arrayidx61.4 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx61.4, align 4
  %cmp62.4 = icmp eq ptr %68, %urb
  br i1 %cmp62.4, label %while.body.4.land.rhs75_crit_edge, label %while.cond.5

while.body.4.land.rhs75_crit_edge:                ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs75

while.cond.5:                                     ; preds = %while.body.4
  %dec.5 = add i16 %1, -6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec.5)
  %cmp55.not.5 = icmp eq i16 %dec.5, 0
  br i1 %cmp55.not.5, label %while.cond.5.land.rhs75_crit_edge, label %while.body.5

while.cond.5.land.rhs75_crit_edge:                ; preds = %while.cond.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs75

while.body.5:                                     ; preds = %while.cond.5
  %inc58.5 = add i16 %18, 6
  %69 = and i16 %inc58.5, 7
  %and60.5 = zext i16 %69 to i32
  %arrayidx61.5 = getelementptr %struct.u132_endp, ptr %endp, i32 0, i32 15, i32 %and60.5
  %70 = ptrtoint ptr %arrayidx61.5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx61.5, align 4
  %cmp62.5 = icmp eq ptr %71, %urb
  br i1 %cmp62.5, label %while.body.5.land.rhs75_crit_edge, label %while.cond.6

while.body.5.land.rhs75_crit_edge:                ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs75

while.cond.6:                                     ; preds = %while.body.5
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %1)
  %cmp55.not.6 = icmp eq i16 %1, 7
  br i1 %cmp55.not.6, label %while.cond.6.while.end91_crit_edge, label %while.body.6

while.cond.6.while.end91_crit_edge:               ; preds = %while.cond.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end91

while.body.6:                                     ; preds = %while.cond.6
  call void @__sanitizer_cov_trace_pc() #12
  %inc58.6 = add i16 %18, 7
  %72 = and i16 %inc58.6, 7
  %and60.6 = zext i16 %72 to i32
  %arrayidx61.6 = getelementptr %struct.u132_endp, ptr %endp, i32 0, i32 15, i32 %and60.6
  %73 = ptrtoint ptr %arrayidx61.6 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx61.6, align 4
  %cmp62.6 = icmp eq ptr %74, %urb
  %spec.select = select i1 %cmp62.6, ptr %arrayidx61.6, ptr null
  br label %while.end91

land.rhs75:                                       ; preds = %while.body.5.land.rhs75_crit_edge, %while.cond.5.land.rhs75_crit_edge, %while.body.4.land.rhs75_crit_edge, %while.cond.4.land.rhs75_crit_edge, %while.body.3.land.rhs75_crit_edge, %while.cond.3.land.rhs75_crit_edge, %while.body.2.land.rhs75_crit_edge, %while.cond.2.land.rhs75_crit_edge, %while.body.1.land.rhs75_crit_edge, %while.cond.1.land.rhs75_crit_edge, %while.body.land.rhs75_crit_edge, %while.cond.preheader.land.rhs75_crit_edge
  %cmp73 = phi i1 [ true, %while.body.land.rhs75_crit_edge ], [ true, %while.cond.preheader.land.rhs75_crit_edge ], [ true, %while.cond.1.land.rhs75_crit_edge ], [ true, %while.body.1.land.rhs75_crit_edge ], [ true, %while.cond.2.land.rhs75_crit_edge ], [ true, %while.body.2.land.rhs75_crit_edge ], [ true, %while.cond.3.land.rhs75_crit_edge ], [ true, %while.body.3.land.rhs75_crit_edge ], [ true, %while.cond.4.land.rhs75_crit_edge ], [ true, %while.body.4.land.rhs75_crit_edge ], [ false, %while.cond.5.land.rhs75_crit_edge ], [ false, %while.body.5.land.rhs75_crit_edge ]
  %cmp73.1 = phi i1 [ true, %while.body.land.rhs75_crit_edge ], [ true, %while.cond.preheader.land.rhs75_crit_edge ], [ true, %while.cond.1.land.rhs75_crit_edge ], [ true, %while.body.1.land.rhs75_crit_edge ], [ true, %while.cond.2.land.rhs75_crit_edge ], [ true, %while.body.2.land.rhs75_crit_edge ], [ true, %while.cond.3.land.rhs75_crit_edge ], [ true, %while.body.3.land.rhs75_crit_edge ], [ false, %while.cond.4.land.rhs75_crit_edge ], [ false, %while.body.4.land.rhs75_crit_edge ], [ false, %while.cond.5.land.rhs75_crit_edge ], [ false, %while.body.5.land.rhs75_crit_edge ]
  %cmp73.2 = phi i1 [ true, %while.body.land.rhs75_crit_edge ], [ true, %while.cond.preheader.land.rhs75_crit_edge ], [ true, %while.cond.1.land.rhs75_crit_edge ], [ true, %while.body.1.land.rhs75_crit_edge ], [ true, %while.cond.2.land.rhs75_crit_edge ], [ true, %while.body.2.land.rhs75_crit_edge ], [ false, %while.cond.3.land.rhs75_crit_edge ], [ false, %while.body.3.land.rhs75_crit_edge ], [ false, %while.cond.4.land.rhs75_crit_edge ], [ false, %while.body.4.land.rhs75_crit_edge ], [ false, %while.cond.5.land.rhs75_crit_edge ], [ false, %while.body.5.land.rhs75_crit_edge ]
  %cmp73.3 = phi i1 [ true, %while.body.land.rhs75_crit_edge ], [ true, %while.cond.preheader.land.rhs75_crit_edge ], [ true, %while.cond.1.land.rhs75_crit_edge ], [ true, %while.body.1.land.rhs75_crit_edge ], [ false, %while.cond.2.land.rhs75_crit_edge ], [ false, %while.body.2.land.rhs75_crit_edge ], [ false, %while.cond.3.land.rhs75_crit_edge ], [ false, %while.body.3.land.rhs75_crit_edge ], [ false, %while.cond.4.land.rhs75_crit_edge ], [ false, %while.body.4.land.rhs75_crit_edge ], [ false, %while.cond.5.land.rhs75_crit_edge ], [ false, %while.body.5.land.rhs75_crit_edge ]
  %cmp73.4 = phi i1 [ true, %while.body.land.rhs75_crit_edge ], [ true, %while.cond.preheader.land.rhs75_crit_edge ], [ false, %while.cond.1.land.rhs75_crit_edge ], [ false, %while.body.1.land.rhs75_crit_edge ], [ false, %while.cond.2.land.rhs75_crit_edge ], [ false, %while.body.2.land.rhs75_crit_edge ], [ false, %while.cond.3.land.rhs75_crit_edge ], [ false, %while.body.3.land.rhs75_crit_edge ], [ false, %while.cond.4.land.rhs75_crit_edge ], [ false, %while.body.4.land.rhs75_crit_edge ], [ false, %while.cond.5.land.rhs75_crit_edge ], [ false, %while.body.5.land.rhs75_crit_edge ]
  %urb_slot.1268.ph = phi ptr [ %arrayidx61, %while.body.land.rhs75_crit_edge ], [ null, %while.cond.preheader.land.rhs75_crit_edge ], [ null, %while.cond.1.land.rhs75_crit_edge ], [ %arrayidx61.1, %while.body.1.land.rhs75_crit_edge ], [ null, %while.cond.2.land.rhs75_crit_edge ], [ %arrayidx61.2, %while.body.2.land.rhs75_crit_edge ], [ null, %while.cond.3.land.rhs75_crit_edge ], [ %arrayidx61.3, %while.body.3.land.rhs75_crit_edge ], [ null, %while.cond.4.land.rhs75_crit_edge ], [ %arrayidx61.4, %while.body.4.land.rhs75_crit_edge ], [ null, %while.cond.5.land.rhs75_crit_edge ], [ %arrayidx61.5, %while.body.5.land.rhs75_crit_edge ]
  %queue_scan.2267.ph = phi i16 [ %inc58, %while.body.land.rhs75_crit_edge ], [ %24, %while.cond.preheader.land.rhs75_crit_edge ], [ %24, %while.cond.1.land.rhs75_crit_edge ], [ %inc58.1, %while.body.1.land.rhs75_crit_edge ], [ %24, %while.cond.2.land.rhs75_crit_edge ], [ %inc58.2, %while.body.2.land.rhs75_crit_edge ], [ %24, %while.cond.3.land.rhs75_crit_edge ], [ %inc58.3, %while.body.3.land.rhs75_crit_edge ], [ %24, %while.cond.4.land.rhs75_crit_edge ], [ %inc58.4, %while.body.4.land.rhs75_crit_edge ], [ %24, %while.cond.5.land.rhs75_crit_edge ], [ %inc58.5, %while.body.5.land.rhs75_crit_edge ]
  %queue_size48.2266.ph = phi i16 [ %22, %while.body.land.rhs75_crit_edge ], [ 0, %while.cond.preheader.land.rhs75_crit_edge ], [ 0, %while.cond.1.land.rhs75_crit_edge ], [ %dec.1, %while.body.1.land.rhs75_crit_edge ], [ 0, %while.cond.2.land.rhs75_crit_edge ], [ %dec.2, %while.body.2.land.rhs75_crit_edge ], [ 0, %while.cond.3.land.rhs75_crit_edge ], [ %dec.3, %while.body.3.land.rhs75_crit_edge ], [ 0, %while.cond.4.land.rhs75_crit_edge ], [ %dec.4, %while.body.4.land.rhs75_crit_edge ], [ 0, %while.cond.5.land.rhs75_crit_edge ], [ %dec.5, %while.body.5.land.rhs75_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %queue_size48.2266.ph)
  %cmp78.not = icmp eq i16 %queue_size48.2266.ph, 1
  br i1 %cmp78.not, label %land.rhs75.while.end91_crit_edge, label %while.body81

land.rhs75.while.end91_crit_edge:                 ; preds = %land.rhs75
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end91

while.body81:                                     ; preds = %land.rhs75
  %inc83 = add i16 %queue_scan.2267.ph, 1
  %75 = and i16 %inc83, 7
  %and85 = zext i16 %75 to i32
  %arrayidx86 = getelementptr %struct.u132_endp, ptr %endp, i32 0, i32 15, i32 %and85
  %76 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx86, align 4
  %78 = ptrtoint ptr %urb_slot.1268.ph to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %urb_slot.1268.ph, align 4
  %cmp73.not = xor i1 %cmp73, true
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %queue_size48.2266.ph)
  %cmp78.not.1 = icmp eq i16 %queue_size48.2266.ph, 2
  %or.cond = select i1 %cmp73.not, i1 true, i1 %cmp78.not.1
  br i1 %or.cond, label %while.body81.while.end91_crit_edge, label %while.body81.1

while.body81.while.end91_crit_edge:               ; preds = %while.body81
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end91

while.body81.1:                                   ; preds = %while.body81
  %inc83.1 = add i16 %queue_scan.2267.ph, 2
  %79 = and i16 %inc83.1, 7
  %and85.1 = zext i16 %79 to i32
  %arrayidx86.1 = getelementptr %struct.u132_endp, ptr %endp, i32 0, i32 15, i32 %and85.1
  %80 = ptrtoint ptr %arrayidx86.1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx86.1, align 4
  %82 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %arrayidx86, align 4
  %cmp73.1.not = xor i1 %cmp73.1, true
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %queue_size48.2266.ph)
  %cmp78.not.2 = icmp eq i16 %queue_size48.2266.ph, 3
  %or.cond287 = select i1 %cmp73.1.not, i1 true, i1 %cmp78.not.2
  br i1 %or.cond287, label %while.body81.1.while.end91_crit_edge, label %while.body81.2

while.body81.1.while.end91_crit_edge:             ; preds = %while.body81.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end91

while.body81.2:                                   ; preds = %while.body81.1
  %inc83.2 = add i16 %queue_scan.2267.ph, 3
  %83 = and i16 %inc83.2, 7
  %and85.2 = zext i16 %83 to i32
  %arrayidx86.2 = getelementptr %struct.u132_endp, ptr %endp, i32 0, i32 15, i32 %and85.2
  %84 = ptrtoint ptr %arrayidx86.2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx86.2, align 4
  %86 = ptrtoint ptr %arrayidx86.1 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %85, ptr %arrayidx86.1, align 4
  %cmp73.2.not = xor i1 %cmp73.2, true
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %queue_size48.2266.ph)
  %cmp78.not.3 = icmp eq i16 %queue_size48.2266.ph, 4
  %or.cond288 = select i1 %cmp73.2.not, i1 true, i1 %cmp78.not.3
  br i1 %or.cond288, label %while.body81.2.while.end91_crit_edge, label %while.body81.3

while.body81.2.while.end91_crit_edge:             ; preds = %while.body81.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end91

while.body81.3:                                   ; preds = %while.body81.2
  %inc83.3 = add i16 %queue_scan.2267.ph, 4
  %87 = and i16 %inc83.3, 7
  %and85.3 = zext i16 %87 to i32
  %arrayidx86.3 = getelementptr %struct.u132_endp, ptr %endp, i32 0, i32 15, i32 %and85.3
  %88 = ptrtoint ptr %arrayidx86.3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx86.3, align 4
  %90 = ptrtoint ptr %arrayidx86.2 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %arrayidx86.2, align 4
  %cmp73.3.not = xor i1 %cmp73.3, true
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %queue_size48.2266.ph)
  %cmp78.not.4 = icmp eq i16 %queue_size48.2266.ph, 5
  %or.cond289 = select i1 %cmp73.3.not, i1 true, i1 %cmp78.not.4
  br i1 %or.cond289, label %while.body81.3.while.end91_crit_edge, label %while.body81.4

while.body81.3.while.end91_crit_edge:             ; preds = %while.body81.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end91

while.body81.4:                                   ; preds = %while.body81.3
  %inc83.4 = add i16 %queue_scan.2267.ph, 5
  %91 = and i16 %inc83.4, 7
  %and85.4 = zext i16 %91 to i32
  %arrayidx86.4 = getelementptr %struct.u132_endp, ptr %endp, i32 0, i32 15, i32 %and85.4
  %92 = ptrtoint ptr %arrayidx86.4 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx86.4, align 4
  %94 = ptrtoint ptr %arrayidx86.3 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %arrayidx86.3, align 4
  %cmp73.4.not = xor i1 %cmp73.4, true
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %queue_size48.2266.ph)
  %cmp78.not.5 = icmp eq i16 %queue_size48.2266.ph, 6
  %or.cond290 = select i1 %cmp73.4.not, i1 true, i1 %cmp78.not.5
  br i1 %or.cond290, label %while.body81.4.while.end91_crit_edge, label %while.body81.5

while.body81.4.while.end91_crit_edge:             ; preds = %while.body81.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end91

while.body81.5:                                   ; preds = %while.body81.4
  call void @__sanitizer_cov_trace_pc() #12
  %inc83.5 = add i16 %queue_scan.2267.ph, 6
  %95 = and i16 %inc83.5, 7
  %and85.5 = zext i16 %95 to i32
  %arrayidx86.5 = getelementptr %struct.u132_endp, ptr %endp, i32 0, i32 15, i32 %and85.5
  %96 = ptrtoint ptr %arrayidx86.5 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx86.5, align 4
  %98 = ptrtoint ptr %arrayidx86.4 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %97, ptr %arrayidx86.4, align 4
  br label %while.end91

while.end91:                                      ; preds = %while.body81.5, %while.body81.4.while.end91_crit_edge, %while.body81.3.while.end91_crit_edge, %while.body81.2.while.end91_crit_edge, %while.body81.1.while.end91_crit_edge, %while.body81.while.end91_crit_edge, %land.rhs75.while.end91_crit_edge, %while.body.6, %while.cond.6.while.end91_crit_edge
  %urb_slot.1.lcssa = phi ptr [ null, %while.cond.6.while.end91_crit_edge ], [ %spec.select, %while.body.6 ], [ %arrayidx86, %while.body81.while.end91_crit_edge ], [ %urb_slot.1268.ph, %land.rhs75.while.end91_crit_edge ], [ %arrayidx86.1, %while.body81.1.while.end91_crit_edge ], [ %arrayidx86.2, %while.body81.2.while.end91_crit_edge ], [ %arrayidx86.3, %while.body81.3.while.end91_crit_edge ], [ %arrayidx86.4, %while.body81.4.while.end91_crit_edge ], [ %arrayidx86.5, %while.body81.5 ]
  %tobool92.not = icmp eq ptr %urb_slot.1.lcssa, null
  br i1 %tobool92.not, label %if.else111, label %if.then93

if.then93:                                        ; preds = %while.end91
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %add.ptr.i, ptr noundef %urb) #10
  %99 = ptrtoint ptr %queue_size to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %queue_size, align 4
  %sub = add i16 %100, -1
  store i16 %sub, ptr %queue_size, align 4
  %urb_more = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 16
  %101 = ptrtoint ptr %urb_more to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile ptr, ptr %urb_more, align 4
  %cmp.i.not = icmp eq ptr %102, %urb_more
  br i1 %cmp.i.not, label %if.then100, label %if.else103

if.then100:                                       ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call2) #10
  br label %if.end110

if.else103:                                       ; preds = %if.then93
  %call.i.i243 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %102) #10
  br i1 %call.i.i243, label %if.end.i.i, label %if.else103.list_del.exit_crit_edge

if.else103.list_del.exit_crit_edge:               ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i244 = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %prev.i.i244 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %prev.i.i244, align 4
  %105 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %102, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %104, ptr %prev1.i.i.i, align 4
  %108 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %106, ptr %104, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.else103.list_del.exit_crit_edge
  %109 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr inttoptr (i32 256 to ptr), ptr %102, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  %110 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %urb107 = getelementptr inbounds %struct.u132_urbq, ptr %102, i32 0, i32 1
  %111 = ptrtoint ptr %urb107 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %urb107, align 4
  %113 = ptrtoint ptr %urb_slot.1.lcssa to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %112, ptr %urb_slot.1.lcssa, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call2) #10
  tail call void @kfree(ptr noundef %102) #10
  br label %if.end110

if.end110:                                        ; preds = %list_del.exit, %if.then100
  %error_count = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 26
  %114 = ptrtoint ptr %error_count to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %error_count, align 4
  tail call void @usb_hcd_giveback_urb(ptr noundef %add.ptr.i, ptr noundef %urb, i32 noundef %status) #10
  br label %cleanup158

if.else111:                                       ; preds = %while.end91
  %urb_more112 = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 16
  %115 = ptrtoint ptr %urb_more112 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile ptr, ptr %urb_more112, align 4
  %cmp.i245.not = icmp eq ptr %116, %urb_more112
  br i1 %cmp.i245.not, label %do.end118, label %if.else149

do.end118:                                        ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev119 = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 4
  %117 = ptrtoint ptr %platform_dev119 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %platform_dev119, align 4
  %dev120 = getelementptr inbounds %struct.platform_device, ptr %118, i32 0, i32 3
  %endp_number121 = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 2
  %119 = ptrtoint ptr %endp_number121 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %endp_number121, align 1
  %conv122 = zext i8 %120 to i32
  %ring123 = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 7
  %121 = ptrtoint ptr %ring123 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ring123, align 4
  %number124 = getelementptr inbounds %struct.u132_ring, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %number124 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %number124, align 1
  %conv125 = zext i8 %124 to i32
  %input126 = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 8
  %125 = ptrtoint ptr %input126 to i32
  call void @__asan_load4_noabort(i32 %125)
  %bf.load127 = load i32, ptr %input126, align 4
  %126 = and i32 %bf.load127, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool130.not = icmp eq i32 %126, 0
  %cond131 = select i1 %tobool130.not, i32 32, i32 73
  %127 = and i32 %bf.load127, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool136.not = icmp eq i32 %127, 0
  %cond137 = select i1 %tobool136.not, i32 32, i32 79
  %usb_endp138 = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 4
  %128 = ptrtoint ptr %usb_endp138 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %usb_endp138, align 1
  %conv139 = zext i8 %129 to i32
  %usb_addr140 = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 3
  %130 = ptrtoint ptr %usb_addr140 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %usb_addr140, align 2
  %conv141 = zext i8 %131 to i32
  %132 = ptrtoint ptr %queue_size to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %queue_size, align 4
  %conv143 = zext i16 %133 to i32
  %134 = ptrtoint ptr %queue_next to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %queue_next, align 4
  %conv145 = zext i16 %135 to i32
  %queue_last = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 13
  %136 = ptrtoint ptr %queue_last to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %queue_last, align 2
  %conv146 = zext i16 %137 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev120, ptr noundef nonnull @.str.192, ptr noundef %urb, i32 noundef %conv122, ptr noundef %endp, i32 noundef %conv125, i32 noundef %cond131, i32 noundef %cond137, i32 noundef %conv139, i32 noundef %conv141, i32 noundef %conv143, i32 noundef %conv145, i32 noundef %conv146) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call2) #10
  br label %cleanup158

if.else149:                                       ; preds = %if.else111
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %add.ptr.i, ptr noundef %urb) #10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.else149
  %urbq.0.in.i = phi ptr [ %urb_more112, %if.else149 ], [ %urbq.0.i, %for.body.i.for.cond.i_crit_edge ]
  %138 = ptrtoint ptr %urbq.0.in.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %urbq.0.i = load ptr, ptr %urbq.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %urbq.0.i, %urb_more112
  br i1 %cmp.not.i, label %do.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %urb3.i = getelementptr inbounds %struct.u132_urbq, ptr %urbq.0.i, i32 0, i32 1
  %139 = ptrtoint ptr %urb3.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %urb3.i, align 4
  %cmp4.i = icmp eq ptr %140, %urb
  br i1 %cmp4.i, label %if.then.i251, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.then.i251:                                     ; preds = %for.body.i
  %call.i.i.i250 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %urbq.0.i) #10
  br i1 %call.i.i.i250, label %if.end.i.i.i254, label %if.then.i251.list_del.exit.i258_crit_edge

if.then.i251.list_del.exit.i258_crit_edge:        ; preds = %if.then.i251
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i258

if.end.i.i.i254:                                  ; preds = %if.then.i251
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i252 = getelementptr inbounds %struct.list_head, ptr %urbq.0.i, i32 0, i32 1
  %141 = ptrtoint ptr %prev.i.i.i252 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %prev.i.i.i252, align 4
  %143 = ptrtoint ptr %urbq.0.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %urbq.0.i, align 4
  %prev1.i.i.i.i253 = getelementptr inbounds %struct.list_head, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %prev1.i.i.i.i253 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %142, ptr %prev1.i.i.i.i253, align 4
  %146 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %144, ptr %142, align 4
  br label %list_del.exit.i258

list_del.exit.i258:                               ; preds = %if.end.i.i.i254, %if.then.i251.list_del.exit.i258_crit_edge
  %147 = ptrtoint ptr %urbq.0.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr inttoptr (i32 256 to ptr), ptr %urbq.0.i, align 4
  %prev.i.i255 = getelementptr inbounds %struct.list_head, ptr %urbq.0.i, i32 0, i32 1
  %148 = ptrtoint ptr %prev.i.i255 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i255, align 4
  %149 = ptrtoint ptr %queue_size to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %queue_size, align 4
  %sub.i = add i16 %150, -1
  store i16 %sub.i, ptr %queue_size, align 4
  %error_count.i257 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 26
  %151 = ptrtoint ptr %error_count.i257 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %error_count.i257, align 4
  tail call void @usb_hcd_giveback_urb(ptr noundef %add.ptr.i, ptr noundef %urb, i32 noundef 0) #10
  br label %dequeue_from_overflow_chain.exit

do.end.i:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev.i = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 4
  %152 = ptrtoint ptr %platform_dev.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %platform_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %153, i32 0, i32 3
  %endp_number.i = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 2
  %154 = ptrtoint ptr %endp_number.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %endp_number.i, align 1
  %conv12.i = zext i8 %155 to i32
  %ring.i = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 7
  %156 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ring.i, align 4
  %number.i = getelementptr inbounds %struct.u132_ring, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %number.i, align 1
  %conv13.i = zext i8 %159 to i32
  %input.i = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 8
  %160 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %bf.load.i259 = load i32, ptr %input.i, align 4
  %161 = and i32 %bf.load.i259, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool.not.i = icmp eq i32 %161, 0
  %cond.i = select i1 %tobool.not.i, i32 32, i32 73
  %162 = and i32 %bf.load.i259, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool17.not.i = icmp eq i32 %162, 0
  %cond18.i = select i1 %tobool17.not.i, i32 32, i32 79
  %usb_endp.i = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 4
  %163 = ptrtoint ptr %usb_endp.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %usb_endp.i, align 1
  %conv19.i = zext i8 %164 to i32
  %usb_addr.i = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 3
  %165 = ptrtoint ptr %usb_addr.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %usb_addr.i, align 2
  %conv20.i = zext i8 %166 to i32
  %167 = ptrtoint ptr %queue_size to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %queue_size, align 4
  %conv22.i = zext i16 %168 to i32
  %169 = ptrtoint ptr %queue_next to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %queue_next, align 4
  %conv23.i = zext i16 %170 to i32
  %queue_last.i261 = getelementptr inbounds %struct.u132_endp, ptr %endp, i32 0, i32 13
  %171 = ptrtoint ptr %queue_last.i261 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %queue_last.i261, align 2
  %conv24.i = zext i16 %172 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.192, ptr noundef %urb, i32 noundef %conv12.i, ptr noundef %endp, i32 noundef %conv13.i, i32 noundef %cond.i, i32 noundef %cond18.i, i32 noundef %conv19.i, i32 noundef %conv20.i, i32 noundef %conv22.i, i32 noundef %conv23.i, i32 noundef %conv24.i) #13
  br label %dequeue_from_overflow_chain.exit

dequeue_from_overflow_chain.exit:                 ; preds = %do.end.i, %list_del.exit.i258
  %retval.0.i = phi i32 [ 0, %list_del.exit.i258 ], [ -22, %do.end.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call2) #10
  br label %cleanup158

cleanup158:                                       ; preds = %dequeue_from_overflow_chain.exit, %do.end118, %if.end110, %u132_hcd_abandon_urb.exit, %u132_endp_queue_work.exit, %do.end15, %if.then
  %retval.1 = phi i32 [ %call6, %if.then ], [ -22, %do.end15 ], [ 0, %u132_endp_queue_work.exit ], [ 0, %u132_hcd_abandon_urb.exit ], [ 0, %if.end110 ], [ -22, %do.end118 ], [ %retval.0.i, %dequeue_from_overflow_chain.exit ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_check_unlink_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @u132_hcd_ring_work_scheduler(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -12
  %u1321 = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %u1321 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u1321, align 4
  %scheduler_lock = getelementptr inbounds %struct.u132, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %scheduler_lock, i32 noundef 0) #10
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_ring_put_kref(ptr noundef %1)
  br label %cleanup79

if.else:                                          ; preds = %entry
  %curr_endp = getelementptr i8, ptr %work, i32 -4
  %3 = ptrtoint ptr %curr_endp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %curr_endp, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.else77, label %if.then4

if.then4:                                         ; preds = %if.else
  %endp_ring = getelementptr inbounds %struct.u132_endp, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %endp_ring to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn159 = load ptr, ptr %endp_ring, align 4
  %cmp.not160 = icmp eq ptr %.pn159, %endp_ring
  br i1 %cmp.not160, label %if.then4.for.end_crit_edge, label %if.then4.for.body_crit_edge

if.then4.for.body_crit_edge:                      ; preds = %if.then4
  br label %for.body

if.then4.for.end_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then4.for.body_crit_edge
  %.pn162 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn159, %if.then4.for.body_crit_edge ]
  %wakeup.0161 = phi i32 [ %wakeup.2, %for.inc.for.body_crit_edge ], [ 0, %if.then4.for.body_crit_edge ]
  %queue_next = getelementptr i8, ptr %.pn162, i32 72
  %6 = ptrtoint ptr %queue_next to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %queue_next, align 4
  %queue_last = getelementptr i8, ptr %.pn162, i32 70
  %8 = ptrtoint ptr %queue_last to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %queue_last, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp12 = icmp eq i16 %7, %9
  br i1 %cmp12, label %for.body.for.inc_crit_edge, label %if.else15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else15:                                        ; preds = %for.body
  %delayed = getelementptr i8, ptr %.pn162, i32 12
  %10 = ptrtoint ptr %delayed to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load16 = load i32, ptr %delayed, align 4
  %11 = and i32 %bf.load16, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp18 = icmp eq i32 %11, 0
  br i1 %cmp18, label %if.else15.if.then22_crit_edge, label %lor.lhs.false

if.else15.if.then22_crit_edge:                    ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

lor.lhs.false:                                    ; preds = %if.else15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %jiffies = getelementptr i8, ptr %.pn162, i32 16
  %13 = ptrtoint ptr %jiffies to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %jiffies, align 4
  %sub = sub i32 %12, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp20 = icmp sgt i32 %sub, -1
  br i1 %cmp20, label %lor.lhs.false.if.then22_crit_edge, label %if.else25

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %if.else15.if.then22_crit_edge
  %endp.0.le = getelementptr i8, ptr %.pn162, i32 -12
  %15 = ptrtoint ptr %curr_endp to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %endp.0.le, ptr %curr_endp, align 4
  %scheduler.i = getelementptr inbounds %struct.u132_endp, ptr %4, i32 0, i32 17
  %call.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %scheduler.i) #10
  br i1 %call.i, label %if.then.i, label %if.then22.u132_endp_cancel_work.exit_crit_edge

if.then22.u132_endp_cancel_work.exit_crit_edge:   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_endp_cancel_work.exit

if.then.i:                                        ; preds = %if.then22
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %4, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %4, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.u132_endp_cancel_work.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !523

if.end5.i.i.i.i.i.u132_endp_cancel_work.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_endp_cancel_work.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #10
  br label %u132_endp_cancel_work.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  tail call fastcc void @u132_endp_delete(ptr noundef %4) #10, !callees !525
  br label %u132_endp_cancel_work.exit

u132_endp_cancel_work.exit:                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.u132_endp_cancel_work.exit_crit_edge, %if.then22.u132_endp_cancel_work.exit_crit_edge
  %17 = load ptr, ptr @workqueue, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %scheduler.i, i32 noundef 0) #10
  br i1 %call.i.i, label %if.then.i132, label %u132_endp_cancel_work.exit.u132_endp_queue_work.exit_crit_edge

u132_endp_cancel_work.exit.u132_endp_queue_work.exit_crit_edge: ; preds = %u132_endp_cancel_work.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_endp_queue_work.exit

if.then.i132:                                     ; preds = %u132_endp_cancel_work.exit
  %call.i.i.i.i.i.i.i131 = tail call zeroext i1 @__kasan_check_write(ptr noundef %4, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %4, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #10, !srcloc !526
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i132.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !527

if.then.i132.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i132
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %19 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not.i.i.i.i.i133 = icmp sgt i32 %19, -1
  br i1 %.not.i.i.i.i.i133, label %if.else.i.i.i.i.i.u132_endp_queue_work.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !523

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.u132_endp_queue_work.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_endp_queue_work.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i132.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i132.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef %.sink.i.i.i.i.i) #10
  br label %u132_endp_queue_work.exit

u132_endp_queue_work.exit:                        ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.u132_endp_queue_work.exit_crit_edge, %u132_endp_cancel_work.exit.u132_endp_queue_work.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_ring_put_kref(ptr noundef %1)
  br label %cleanup79

if.else25:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub27 = sub i32 %14, %20
  %21 = tail call i32 @llvm.umax.i32(i32 %sub27, i32 %wakeup.0161)
  br label %for.inc

for.inc:                                          ; preds = %if.else25, %for.body.for.inc_crit_edge
  %wakeup.2 = phi i32 [ %wakeup.0161, %for.body.for.inc_crit_edge ], [ %21, %if.else25 ]
  %22 = ptrtoint ptr %.pn162 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn162, align 4
  %cmp.not = icmp eq ptr %.pn, %endp_ring
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then4.for.end_crit_edge
  %wakeup.0.lcssa = phi i32 [ 0, %if.then4.for.end_crit_edge ], [ %wakeup.2, %for.inc.for.end_crit_edge ]
  %queue_next38 = getelementptr inbounds %struct.u132_endp, ptr %4, i32 0, i32 14
  %23 = ptrtoint ptr %queue_next38 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %queue_next38, align 4
  %queue_last40 = getelementptr inbounds %struct.u132_endp, ptr %4, i32 0, i32 13
  %25 = ptrtoint ptr %queue_last40 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %queue_last40, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %26)
  %cmp42 = icmp eq i16 %24, %26
  br i1 %cmp42, label %for.end.if.end68_crit_edge, label %if.else45

for.end.if.end68_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.else45:                                        ; preds = %for.end
  %delayed46 = getelementptr inbounds %struct.u132_endp, ptr %4, i32 0, i32 8
  %27 = ptrtoint ptr %delayed46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load47 = load i32, ptr %delayed46, align 4
  %28 = and i32 %bf.load47, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp50 = icmp eq i32 %28, 0
  br i1 %cmp50, label %if.else45.if.then57_crit_edge, label %lor.lhs.false52

if.else45.if.then57_crit_edge:                    ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

lor.lhs.false52:                                  ; preds = %if.else45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %jiffies53 = getelementptr inbounds %struct.u132_endp, ptr %4, i32 0, i32 9
  %30 = ptrtoint ptr %jiffies53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %jiffies53, align 4
  %sub54 = sub i32 %29, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub54)
  %cmp55 = icmp sgt i32 %sub54, -1
  br i1 %cmp55, label %lor.lhs.false52.if.then57_crit_edge, label %if.else59

lor.lhs.false52.if.then57_crit_edge:              ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

if.then57:                                        ; preds = %lor.lhs.false52.if.then57_crit_edge, %if.else45.if.then57_crit_edge
  %scheduler.i134 = getelementptr inbounds %struct.u132_endp, ptr %4, i32 0, i32 17
  %call.i135 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %scheduler.i134) #10
  br i1 %call.i135, label %if.then.i139, label %if.then57.u132_endp_cancel_work.exit144_crit_edge

if.then57.u132_endp_cancel_work.exit144_crit_edge: ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_endp_cancel_work.exit144

if.then.i139:                                     ; preds = %if.then57
  %call.i.i.i.i.i.i.i136 = tail call zeroext i1 @__kasan_check_write(ptr noundef %4, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %4, i32 1, i32 3, i32 1) #10
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i.i137 = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i137)
  %cmp.i.i.i.i.i138 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i137, 1
  br i1 %cmp.i.i.i.i.i138, label %if.then.i.i143, label %if.end5.i.i.i.i.i141

if.end5.i.i.i.i.i141:                             ; preds = %if.then.i139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i137)
  %.not.i.i.i.i.i140 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i137, 0
  br i1 %.not.i.i.i.i.i140, label %if.end5.i.i.i.i.i141.u132_endp_cancel_work.exit144_crit_edge, label %if.then10.i.i.i.i.i142, !prof !523

if.end5.i.i.i.i.i141.u132_endp_cancel_work.exit144_crit_edge: ; preds = %if.end5.i.i.i.i.i141
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_endp_cancel_work.exit144

if.then10.i.i.i.i.i142:                           ; preds = %if.end5.i.i.i.i.i141
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #10
  br label %u132_endp_cancel_work.exit144

if.then.i.i143:                                   ; preds = %if.then.i139
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  tail call fastcc void @u132_endp_delete(ptr noundef %4) #10, !callees !525
  br label %u132_endp_cancel_work.exit144

u132_endp_cancel_work.exit144:                    ; preds = %if.then.i.i143, %if.then10.i.i.i.i.i142, %if.end5.i.i.i.i.i141.u132_endp_cancel_work.exit144_crit_edge, %if.then57.u132_endp_cancel_work.exit144_crit_edge
  %33 = load ptr, ptr @workqueue, align 4
  %call.i.i146 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %scheduler.i134, i32 noundef 0) #10
  br i1 %call.i.i146, label %if.then.i150, label %u132_endp_cancel_work.exit144.u132_endp_queue_work.exit156_crit_edge

u132_endp_cancel_work.exit144.u132_endp_queue_work.exit156_crit_edge: ; preds = %u132_endp_cancel_work.exit144
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_endp_queue_work.exit156

if.then.i150:                                     ; preds = %u132_endp_cancel_work.exit144
  %call.i.i.i.i.i.i.i147 = tail call zeroext i1 @__kasan_check_write(ptr noundef %4, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %4, i32 1, i32 3, i32 1) #10
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #10, !srcloc !526
  %asmresult.i.i.i.i.i.i.i148 = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i148)
  %tobool1.not.i.i.i.i.i149 = icmp eq i32 %asmresult.i.i.i.i.i.i.i148, 0
  br i1 %tobool1.not.i.i.i.i.i149, label %if.then.i150.if.end15.sink.split.i.i.i.i.i155_crit_edge, label %if.else.i.i.i.i.i153, !prof !527

if.then.i150.if.end15.sink.split.i.i.i.i.i155_crit_edge: ; preds = %if.then.i150
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i155

if.else.i.i.i.i.i153:                             ; preds = %if.then.i150
  %add.i.i.i.i.i151 = add i32 %asmresult.i.i.i.i.i.i.i148, 1
  %35 = or i32 %add.i.i.i.i.i151, %asmresult.i.i.i.i.i.i.i148
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %.not.i.i.i.i.i152 = icmp sgt i32 %35, -1
  br i1 %.not.i.i.i.i.i152, label %if.else.i.i.i.i.i153.u132_endp_queue_work.exit156_crit_edge, label %if.else.i.i.i.i.i153.if.end15.sink.split.i.i.i.i.i155_crit_edge, !prof !523

if.else.i.i.i.i.i153.if.end15.sink.split.i.i.i.i.i155_crit_edge: ; preds = %if.else.i.i.i.i.i153
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i155

if.else.i.i.i.i.i153.u132_endp_queue_work.exit156_crit_edge: ; preds = %if.else.i.i.i.i.i153
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_endp_queue_work.exit156

if.end15.sink.split.i.i.i.i.i155:                 ; preds = %if.else.i.i.i.i.i153.if.end15.sink.split.i.i.i.i.i155_crit_edge, %if.then.i150.if.end15.sink.split.i.i.i.i.i155_crit_edge
  %.sink.i.i.i.i.i154 = phi i32 [ 2, %if.then.i150.if.end15.sink.split.i.i.i.i.i155_crit_edge ], [ 1, %if.else.i.i.i.i.i153.if.end15.sink.split.i.i.i.i.i155_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef %.sink.i.i.i.i.i154) #10
  br label %u132_endp_queue_work.exit156

u132_endp_queue_work.exit156:                     ; preds = %if.end15.sink.split.i.i.i.i.i155, %if.else.i.i.i.i.i153.u132_endp_queue_work.exit156_crit_edge, %u132_endp_cancel_work.exit144.u132_endp_queue_work.exit156_crit_edge
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_ring_put_kref(ptr noundef %1)
  br label %cleanup79

if.else59:                                        ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %sub62 = sub i32 %31, %36
  %37 = tail call i32 @llvm.umax.i32(i32 %sub62, i32 %wakeup.0.lcssa)
  br label %if.end68

if.end68:                                         ; preds = %if.else59, %for.end.if.end68_crit_edge
  %wakeup.4 = phi i32 [ %wakeup.0.lcssa, %for.end.if.end68_crit_edge ], [ %37, %if.else59 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wakeup.4)
  %cmp69.not = icmp eq i32 %wakeup.4, 0
  br i1 %cmp69.not, label %if.else73, label %if.then71

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @u132_ring_requeue_work(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %wakeup.4)
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  br label %cleanup79

if.else73:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_ring_put_kref(ptr noundef %1)
  br label %cleanup79

if.else77:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %scheduler_lock) #10
  tail call fastcc void @u132_ring_put_kref(ptr noundef %1)
  br label %cleanup79

cleanup79:                                        ; preds = %if.else77, %if.else73, %if.then71, %u132_endp_queue_work.exit156, %u132_endp_queue_work.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @u132_hcd_monitor_work(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -748
  %going = getelementptr i8, ptr %work, i32 -100
  %0 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %going, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev = getelementptr i8, ptr %work, i32 -556
  %2 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %1) #13
  tail call fastcc void @u132_monitor_put_kref(ptr noundef %add.ptr)
  br label %cleanup18

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp3 = icmp eq i32 %1, 1
  br i1 %cmp3, label %do.end7, label %if.else10

do.end7:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %platform_dev8 = getelementptr i8, ptr %work, i32 -556
  %4 = ptrtoint ptr %platform_dev8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_dev8, align 4
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.20) #13
  tail call fastcc void @u132_monitor_put_kref(ptr noundef %add.ptr)
  br label %cleanup18

if.else10:                                        ; preds = %if.else
  %sw_lock = getelementptr i8, ptr %work, i32 -744
  tail call void @mutex_lock_nested(ptr noundef %sw_lock, i32 noundef 0) #10
  %call = tail call fastcc i32 @read_roothub_info(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else16, label %if.then11

if.then11:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %work, i32 -1348
  %state.i = getelementptr i8, ptr %work, i32 -760
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %state.i, align 4
  %7 = ptrtoint ptr %going to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %going, align 4
  tail call void @mutex_unlock(ptr noundef %sw_lock) #10
  tail call void @usb_hc_died(ptr noundef %add.ptr.i) #10
  %platform_dev15 = getelementptr i8, ptr %work, i32 -556
  %8 = ptrtoint ptr %platform_dev15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_dev15, align 4
  tail call void @ftdi_elan_gone_away(ptr noundef %9) #10
  tail call fastcc void @u132_monitor_put_kref(ptr noundef %add.ptr)
  br label %cleanup18

if.else16:                                        ; preds = %if.else10
  %10 = load ptr, ptr @workqueue, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %work, i32 noundef 500) #10
  br i1 %call.i.i, label %if.else16.u132_monitor_requeue_work.exit_crit_edge, label %if.then.i

if.else16.u132_monitor_requeue_work.exit_crit_edge: ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_monitor_requeue_work.exit

if.then.i:                                        ; preds = %if.else16
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.u132_monitor_requeue_work.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !523

if.end5.i.i.i.i.i.u132_monitor_requeue_work.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u132_monitor_requeue_work.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef 3) #10
  br label %u132_monitor_requeue_work.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  %platform_dev.i.i = getelementptr i8, ptr %work, i32 -556
  %12 = ptrtoint ptr %platform_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %platform_dev.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %work, i32 -1348
  %14 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %going, align 4
  %add.i.i = add i32 %15, 1
  store i32 %add.i.i, ptr %going, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @u132_module_lock, i32 noundef 0) #10
  %16 = load i32, ptr @u132_instances, align 4
  %sub.i.i = add i32 %16, -1
  store i32 %sub.i.i, ptr @u132_instances, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @u132_module_lock) #10
  %17 = ptrtoint ptr %platform_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %platform_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %going to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %going, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.98, ptr noundef %add.ptr.i.i.i, ptr noundef %add.ptr, i32 noundef %20, ptr noundef %13) #13
  tail call void @usb_put_hcd(ptr noundef %add.ptr.i.i.i) #10
  br label %u132_monitor_requeue_work.exit

u132_monitor_requeue_work.exit:                   ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.u132_monitor_requeue_work.exit_crit_edge, %if.else16.u132_monitor_requeue_work.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %sw_lock) #10
  br label %cleanup18

cleanup18:                                        ; preds = %u132_monitor_requeue_work.exit, %if.then11, %do.end7, %do.end
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u132_ring_put_kref(ptr noundef %u132) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %u132, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %u132, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %u132, ptr %u132, i32 1, ptr elementtype(i32) %u132) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !523

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %u132, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  %platform_dev.i = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 4
  %1 = ptrtoint ptr %platform_dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_dev.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %u132, i32 -600
  %going.i = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 7
  %3 = ptrtoint ptr %going.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %going.i, align 4
  %add.i = add i32 %4, 1
  store i32 %add.i, ptr %going.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @u132_module_lock, i32 noundef 0) #10
  %5 = load i32, ptr @u132_instances, align 4
  %sub.i = add i32 %5, -1
  store i32 %sub.i, ptr @u132_instances, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @u132_module_lock) #10
  %6 = ptrtoint ptr %platform_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %going.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %going.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.98, ptr noundef %add.ptr.i.i, ptr noundef %u132, i32 noundef %9, ptr noundef %2) #13
  tail call void @usb_put_hcd(ptr noundef %add.ptr.i.i) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u132_monitor_put_kref(ptr noundef %u132) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %u132, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @llvm.prefetch.p0(ptr %u132, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %u132, ptr %u132, i32 1, ptr elementtype(i32) %u132) #10, !srcloc !522
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !523

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %u132, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !524
  %platform_dev.i = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 4
  %1 = ptrtoint ptr %platform_dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_dev.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %u132, i32 -600
  %going.i = getelementptr inbounds %struct.u132, ptr %u132, i32 0, i32 7
  %3 = ptrtoint ptr %going.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %going.i, align 4
  %add.i = add i32 %4, 1
  store i32 %add.i, ptr %going.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @u132_module_lock, i32 noundef 0) #10
  %5 = load i32, ptr @u132_instances, align 4
  %sub.i = add i32 %5, -1
  store i32 %sub.i, ptr @u132_instances, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @u132_module_lock) #10
  %6 = ptrtoint ptr %platform_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %going.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %going.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.98, ptr noundef %add.ptr.i.i, ptr noundef %u132, i32 noundef %9, ptr noundef %2) #13
  tail call void @usb_put_hcd(ptr noundef %add.ptr.i.i) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hc_died(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 244)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 244)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !17, !19, !20, !21, !22, !23, !25, !27, !28, !30, !32, !34, !36, !37, !38, !39, !41, !43, !44, !45, !46, !48, !49, !51, !53, !54, !55, !57, !59, !60, !61, !62, !64, !66, !67, !68, !69, !70, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !138, !140, !142, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !162, !163, !164, !166, !167, !168, !169, !171, !172, !174, !175, !176, !178, !179, !180, !182, !184, !186, !187, !189, !190, !191, !192, !194, !195, !196, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !212, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !248, !249, !251, !252, !254, !255, !257, !258, !259, !261, !262, !264, !265, !267, !268, !269, !271, !272, !274, !275, !277, !278, !279, !281, !282, !284, !285, !287, !288, !289, !291, !292, !294, !295, !297, !298, !299, !301, !302, !304, !305, !307, !308, !309, !311, !312, !314, !315, !316, !318, !319, !320, !322, !323, !325, !326, !327, !329, !330, !332, !333, !335, !336, !337, !339, !340, !342, !343, !345, !346, !347, !349, !350, !352, !353, !354, !356, !357, !358, !360, !361, !363, !364, !365, !367, !368, !370, !371, !373, !375, !376, !378, !379, !380, !381, !383, !385, !386, !388, !389, !390, !392, !393, !394, !395, !397, !398, !399, !401, !402, !403, !405, !406, !407, !408, !410, !411, !412, !413, !415, !416, !418, !419, !420, !422, !423, !424, !426, !427, !429, !430, !431, !432, !434, !435, !436, !437, !439, !440, !441, !443, !444, !446, !447, !448, !450, !451, !453, !454, !455, !457, !458, !460, !461, !463, !464, !466, !467, !468, !469, !471, !472, !473, !474, !476, !477, !478, !480, !481, !483, !484, !485, !486, !488, !489, !490, !492, !493, !494, !496, !497, !498, !500, !501, !503, !504, !505, !507, !508, !510}
!llvm.module.flags = !{!511, !512, !513, !514, !515, !516, !517, !518}
!llvm.ident = !{!519}

!0 = !{ptr @__UNIQUE_ID_author232, !1, !"__UNIQUE_ID_author232", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/u132-hcd.c", i32 66, i32 1}
!2 = !{ptr @__UNIQUE_ID_description233, !3, !"__UNIQUE_ID_description233", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/u132-hcd.c", i32 67, i32 1}
!4 = !{ptr @__UNIQUE_ID_file234, !5, !"__UNIQUE_ID_file234", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/u132-hcd.c", i32 68, i32 1}
!6 = !{ptr @__UNIQUE_ID_license235, !5, !"__UNIQUE_ID_license235", i1 false, i1 false}
!7 = !{ptr @__param_testing, !8, !"__param_testing", i1 false, i1 false}
!8 = !{!"../drivers/usb/host/u132-hcd.c", i32 70, i32 1}
!9 = !{ptr @__UNIQUE_ID_testingtype236, !8, !"__UNIQUE_ID_testingtype236", i1 false, i1 false}
!10 = !{ptr @__param_distrust_firmware, !11, !"__param_distrust_firmware", i1 false, i1 false}
!11 = !{!"../drivers/usb/host/u132-hcd.c", i32 73, i32 1}
!12 = !{ptr @__UNIQUE_ID_distrust_firmwaretype237, !11, !"__UNIQUE_ID_distrust_firmwaretype237", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_distrust_firmware238, !14, !"__UNIQUE_ID_distrust_firmware238", i1 false, i1 false}
!14 = !{!"../drivers/usb/host/u132-hcd.c", i32 74, i32 1}
!15 = !{ptr @__initcall__kmod_u132_hcd__239_3205_u132_hcd_init6, !16, !"__initcall__kmod_u132_hcd__239_3205_u132_hcd_init6", i1 false, i1 false}
!16 = !{!"../drivers/usb/host/u132-hcd.c", i32 3205, i32 1}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/host/u132-hcd.c", i32 3212, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @u132_hcd_exit._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @u132_hcd_exit._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @__exitcall_u132_hcd_exit, !24, !"__exitcall_u132_hcd_exit", i1 false, i1 false}
!24 = !{!"../drivers/usb/host/u132-hcd.c", i32 3218, i32 1}
!25 = !{ptr @__UNIQUE_ID_file240, !26, !"__UNIQUE_ID_file240", i1 false, i1 false}
!26 = !{!"../drivers/usb/host/u132-hcd.c", i32 3219, i32 1}
!27 = !{ptr @__UNIQUE_ID_license241, !26, !"__UNIQUE_ID_license241", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_alias242, !29, !"__UNIQUE_ID_alias242", i1 false, i1 false}
!29 = !{!"../drivers/usb/host/u132-hcd.c", i32 3220, i32 1}
!30 = !{ptr @u132_exiting, !31, !"u132_exiting", i1 false, i1 false}
!31 = !{!"../drivers/usb/host/u132-hcd.c", i32 82, i32 12}
!32 = !{ptr @u132_instances, !33, !"u132_instances", i1 false, i1 false}
!33 = !{!"../drivers/usb/host/u132-hcd.c", i32 83, i32 12}
!34 = !{ptr @workqueue, !35, !"workqueue", i1 false, i1 false}
!35 = !{!"../drivers/usb/host/u132-hcd.c", i32 87, i32 33}
!36 = !{ptr @__param_str_testing, !8, !"__param_str_testing", i1 false, i1 false}
!37 = !{ptr @testing, !8, !"testing", i1 false, i1 false}
!38 = !{ptr @__param_str_distrust_firmware, !11, !"__param_str_distrust_firmware", i1 false, i1 false}
!39 = !{ptr @distrust_firmware, !40, !"distrust_firmware", i1 false, i1 false}
!40 = !{!"../drivers/usb/host/u132-hcd.c", i32 72, i32 13}
!41 = !{ptr @.str.3, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/host/u132-hcd.c", i32 3193, i32 2}
!43 = !{ptr @.str.4, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @u132_hcd_init._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @u132_hcd_init._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.5, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/host/u132-hcd.c", i32 3194, i32 14}
!48 = !{ptr @.str.6, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @hcd_name, !50, !"hcd_name", i1 false, i1 false}
!50 = !{!"../drivers/usb/host/u132-hcd.c", i32 244, i32 19}
!51 = !{ptr @.str.7, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/host/u132-hcd.c", i32 81, i32 8}
!53 = !{ptr @.str.8, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @u132_module_lock, !52, !"u132_module_lock", i1 false, i1 false}
!55 = !{ptr @u132_platform_driver, !56, !"u132_platform_driver", i1 false, i1 false}
!56 = !{!"../drivers/usb/host/u132-hcd.c", i32 3177, i32 31}
!57 = !{ptr @.str.9, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/host/u132-hcd.c", i32 3078, i32 3}
!59 = !{ptr @.str.10, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @u132_probe._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @u132_probe._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.11, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/host/u132-hcd.c", i32 3091, i32 23}
!64 = !{ptr @.str.13, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/host/u132-hcd.c", i32 3094, i32 4}
!66 = !{ptr @.str.14, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.15, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @u132_probe._entry.12, !65, !"_entry", i1 false, i1 false}
!69 = !{ptr @u132_probe._entry_ptr.16, !65, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @u132_hc_driver, !71, !"u132_hc_driver", i1 false, i1 false}
!71 = !{!"../drivers/usb/host/u132-hcd.c", i32 2935, i32 31}
!72 = !{ptr @.str.17, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/host/u132-hcd.c", i32 1828, i32 3}
!74 = !{ptr @.str.18, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @u132_hcd_reset._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @u132_hcd_reset._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.20, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/host/u132-hcd.c", i32 1832, i32 3}
!79 = !{ptr @u132_hcd_reset._entry.19, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @u132_hcd_reset._entry_ptr.21, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.22, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/host/u132-hcd.c", i32 424, i32 3}
!83 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @read_roothub_info._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @read_roothub_info._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.25, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/host/u132-hcd.c", i32 430, i32 3}
!88 = !{ptr @read_roothub_info._entry.24, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @read_roothub_info._entry_ptr.26, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @read_roothub_info._entry.27, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../drivers/usb/host/u132-hcd.c", i32 436, i32 3}
!92 = !{ptr @read_roothub_info._entry_ptr.28, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.30, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/host/u132-hcd.c", i32 443, i32 3}
!95 = !{ptr @read_roothub_info._entry.29, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @read_roothub_info._entry_ptr.31, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/host/u132-hcd.c", i32 449, i32 3}
!99 = !{ptr @read_roothub_info._entry.32, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @read_roothub_info._entry_ptr.34, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/host/u132-hcd.c", i32 460, i32 5}
!103 = !{ptr @read_roothub_info._entry.35, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @read_roothub_info._entry_ptr.37, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/host/u132-hcd.c", i32 1787, i32 3}
!107 = !{ptr @u132_hcd_start._entry, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @u132_hcd_start._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @u132_hcd_start._entry.39, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../drivers/usb/host/u132-hcd.c", i32 1791, i32 3}
!111 = !{ptr @u132_hcd_start._entry_ptr.40, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/host/u132-hcd.c", i32 1806, i32 4}
!114 = !{ptr @u132_hcd_start._entry.41, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @u132_hcd_start._entry_ptr.43, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/host/u132-hcd.c", i32 1819, i32 3}
!118 = !{ptr @u132_hcd_start._entry.44, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @u132_hcd_start._entry_ptr.46, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/host/u132-hcd.c", i32 1611, i32 2}
!122 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @u132_run._entry, !121, !"_entry", i1 false, i1 false}
!125 = !{ptr @u132_run._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/host/u132-hcd.c", i32 1665, i32 5}
!128 = !{ptr @u132_run._entry.50, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @u132_run._entry_ptr.52, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/usb/host/u132-hcd.c", i32 1705, i32 4}
!132 = !{ptr @u132_run._entry.53, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @u132_run._entry_ptr.55, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/usb/host/u132-hcd.c", i32 1542, i32 10}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/host/u132-hcd.c", i32 1544, i32 10}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/usb/host/u132-hcd.c", i32 1546, i32 10}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/host/u132-hcd.c", i32 1548, i32 10}
!142 = distinct !{null, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/usb/host/u132-hcd.c", i32 1550, i32 9}
!144 = !{ptr @.str.61, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/host/u132-hcd.c", i32 1770, i32 3}
!146 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @u132_hcd_stop._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @u132_hcd_stop._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/host/u132-hcd.c", i32 1773, i32 3}
!151 = !{ptr @u132_hcd_stop._entry.63, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @u132_hcd_stop._entry_ptr.65, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.66, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/host/u132-hcd.c", i32 2545, i32 3}
!155 = !{ptr @u132_get_frame._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @u132_get_frame._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @u132_get_frame._entry.67, !158, !"_entry", i1 false, i1 false}
!158 = !{!"../drivers/usb/host/u132-hcd.c", i32 2549, i32 3}
!159 = !{ptr @u132_get_frame._entry_ptr.68, !158, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/usb/host/u132-hcd.c", i32 2552, i32 3}
!162 = !{ptr @u132_get_frame._entry.69, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @u132_get_frame._entry_ptr.71, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.72, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/usb/host/u132-hcd.c", i32 2237, i32 4}
!166 = !{ptr @.str.73, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @u132_urb_enqueue._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @u132_urb_enqueue._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @u132_urb_enqueue._entry.74, !170, !"_entry", i1 false, i1 false}
!170 = !{!"../drivers/usb/host/u132-hcd.c", i32 2242, i32 3}
!171 = !{ptr @u132_urb_enqueue._entry_ptr.75, !170, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.77, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/host/u132-hcd.c", i32 2246, i32 3}
!174 = !{ptr @u132_urb_enqueue._entry.76, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @u132_urb_enqueue._entry_ptr.78, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/usb/host/u132-hcd.c", i32 2292, i32 4}
!178 = !{ptr @u132_urb_enqueue._entry.79, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @u132_urb_enqueue._entry_ptr.81, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.82, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/usb/host/u132-hcd.c", i32 2343, i32 25}
!182 = distinct !{null, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/host/u132-hcd.c", i32 2347, i32 22}
!184 = !{ptr @create_endpoint_and_queue_int.__key, !185, !"__key", i1 false, i1 false}
!185 = !{!"../drivers/usb/host/u132-hcd.c", i32 1861, i32 2}
!186 = !{ptr @.str.84, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @create_endpoint_and_queue_int.__key.85, !188, !"__key", i1 false, i1 false}
!188 = !{!"../drivers/usb/host/u132-hcd.c", i32 1872, i32 2}
!189 = !{ptr @.str.86, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @create_endpoint_and_queue_int.__key.87, !188, !"__key", i1 false, i1 false}
!191 = !{ptr @.str.88, !188, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.89, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/usb/host/u132-hcd.c", i32 625, i32 3}
!194 = !{ptr @u132_hcd_interrupt_recv._entry, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @u132_hcd_interrupt_recv._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @u132_hcd_interrupt_recv._entry.90, !197, !"_entry", i1 false, i1 false}
!197 = !{!"../drivers/usb/host/u132-hcd.c", i32 636, i32 3}
!198 = !{ptr @u132_hcd_interrupt_recv._entry_ptr.91, !197, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.93, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/usb/host/u132-hcd.c", i32 697, i32 5}
!201 = !{ptr @u132_hcd_interrupt_recv._entry.92, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @u132_hcd_interrupt_recv._entry_ptr.94, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.96, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/usb/host/u132-hcd.c", i32 707, i32 3}
!205 = !{ptr @u132_hcd_interrupt_recv._entry.95, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @u132_hcd_interrupt_recv._entry_ptr.97, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.98, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/usb/host/u132-hcd.c", i32 257, i32 2}
!209 = !{ptr @.str.99, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.100, !208, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @u132_hcd_delete._entry, !208, !"_entry", i1 false, i1 false}
!212 = !{ptr @u132_hcd_delete._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.101, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/usb/host/u132-hcd.c", i32 94, i32 2}
!215 = !{ptr @.str.102, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/usb/host/u132-hcd.c", i32 95, i32 2}
!217 = !{ptr @.str.103, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/usb/host/u132-hcd.c", i32 96, i32 2}
!219 = !{ptr @.str.104, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/usb/host/u132-hcd.c", i32 97, i32 2}
!221 = !{ptr @.str.105, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/usb/host/u132-hcd.c", i32 98, i32 2}
!223 = !{ptr @.str.106, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/usb/host/u132-hcd.c", i32 99, i32 2}
!225 = !{ptr @.str.107, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/usb/host/u132-hcd.c", i32 100, i32 2}
!227 = !{ptr @.str.108, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/usb/host/u132-hcd.c", i32 101, i32 2}
!229 = !{ptr @.str.109, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/usb/host/u132-hcd.c", i32 102, i32 2}
!231 = !{ptr @.str.110, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/usb/host/u132-hcd.c", i32 103, i32 2}
!233 = !{ptr @.str.111, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/usb/host/u132-hcd.c", i32 104, i32 2}
!235 = !{ptr @.str.112, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/usb/host/u132-hcd.c", i32 106, i32 2}
!237 = !{ptr @.str.113, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/usb/host/u132-hcd.c", i32 107, i32 2}
!239 = !{ptr @.str.114, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/usb/host/u132-hcd.c", i32 108, i32 2}
!241 = !{ptr @cc_to_text, !242, !"cc_to_text", i1 false, i1 false}
!242 = !{!"../drivers/usb/host/u132-hcd.c", i32 93, i32 20}
!243 = !{ptr @cc_to_error, !244, !"cc_to_error", i1 false, i1 false}
!244 = !{!"../drivers/usb/host/ohci.h", i32 165, i32 33}
!245 = !{ptr @.str.115, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/usb/host/u132-hcd.c", i32 1255, i32 3}
!247 = !{ptr @u132_hcd_initial_setup_sent._entry, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @u132_hcd_initial_setup_sent._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @u132_hcd_initial_setup_sent._entry.116, !250, !"_entry", i1 false, i1 false}
!250 = !{!"../drivers/usb/host/u132-hcd.c", i32 1266, i32 3}
!251 = !{ptr @u132_hcd_initial_setup_sent._entry_ptr.117, !250, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @u132_hcd_initial_setup_sent._entry.118, !253, !"_entry", i1 false, i1 false}
!253 = !{!"../drivers/usb/host/u132-hcd.c", i32 1282, i32 3}
!254 = !{ptr @u132_hcd_initial_setup_sent._entry_ptr.119, !253, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.120, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/usb/host/u132-hcd.c", i32 1203, i32 3}
!257 = !{ptr @u132_hcd_initial_input_recv._entry, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @u132_hcd_initial_input_recv._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @u132_hcd_initial_input_recv._entry.121, !260, !"_entry", i1 false, i1 false}
!260 = !{!"../drivers/usb/host/u132-hcd.c", i32 1214, i32 3}
!261 = !{ptr @u132_hcd_initial_input_recv._entry_ptr.122, !260, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @u132_hcd_initial_input_recv._entry.123, !263, !"_entry", i1 false, i1 false}
!263 = !{!"../drivers/usb/host/u132-hcd.c", i32 1238, i32 3}
!264 = !{ptr @u132_hcd_initial_input_recv._entry_ptr.124, !263, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.125, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/usb/host/u132-hcd.c", i32 1165, i32 3}
!267 = !{ptr @u132_hcd_initial_empty_sent._entry, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @u132_hcd_initial_empty_sent._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @u132_hcd_initial_empty_sent._entry.126, !270, !"_entry", i1 false, i1 false}
!270 = !{!"../drivers/usb/host/u132-hcd.c", i32 1176, i32 3}
!271 = !{ptr @u132_hcd_initial_empty_sent._entry_ptr.127, !270, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @u132_hcd_initial_empty_sent._entry.128, !273, !"_entry", i1 false, i1 false}
!273 = !{!"../drivers/usb/host/u132-hcd.c", i32 1186, i32 3}
!274 = !{ptr @u132_hcd_initial_empty_sent._entry_ptr.129, !273, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.130, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/usb/host/u132-hcd.c", i32 1122, i32 3}
!277 = !{ptr @u132_hcd_enumeration_address_sent._entry, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @u132_hcd_enumeration_address_sent._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @u132_hcd_enumeration_address_sent._entry.131, !280, !"_entry", i1 false, i1 false}
!280 = !{!"../drivers/usb/host/u132-hcd.c", i32 1133, i32 3}
!281 = !{ptr @u132_hcd_enumeration_address_sent._entry_ptr.132, !280, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @u132_hcd_enumeration_address_sent._entry.133, !283, !"_entry", i1 false, i1 false}
!283 = !{!"../drivers/usb/host/u132-hcd.c", i32 1149, i32 3}
!284 = !{ptr @u132_hcd_enumeration_address_sent._entry_ptr.134, !283, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.135, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/usb/host/u132-hcd.c", i32 1083, i32 3}
!287 = !{ptr @u132_hcd_enumeration_empty_recv._entry, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @u132_hcd_enumeration_empty_recv._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @u132_hcd_enumeration_empty_recv._entry.136, !290, !"_entry", i1 false, i1 false}
!290 = !{!"../drivers/usb/host/u132-hcd.c", i32 1094, i32 3}
!291 = !{ptr @u132_hcd_enumeration_empty_recv._entry_ptr.137, !290, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @u132_hcd_enumeration_empty_recv._entry.138, !293, !"_entry", i1 false, i1 false}
!293 = !{!"../drivers/usb/host/u132-hcd.c", i32 1106, i32 3}
!294 = !{ptr @u132_hcd_enumeration_empty_recv._entry_ptr.139, !293, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.140, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/usb/host/u132-hcd.c", i32 1024, i32 3}
!297 = !{ptr @u132_hcd_configure_setup_sent._entry, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @u132_hcd_configure_setup_sent._entry_ptr, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @u132_hcd_configure_setup_sent._entry.141, !300, !"_entry", i1 false, i1 false}
!300 = !{!"../drivers/usb/host/u132-hcd.c", i32 1035, i32 3}
!301 = !{ptr @u132_hcd_configure_setup_sent._entry_ptr.142, !300, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @u132_hcd_configure_setup_sent._entry.143, !303, !"_entry", i1 false, i1 false}
!303 = !{!"../drivers/usb/host/u132-hcd.c", i32 1065, i32 3}
!304 = !{ptr @u132_hcd_configure_setup_sent._entry_ptr.144, !303, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.145, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/usb/host/u132-hcd.c", i32 915, i32 3}
!307 = !{ptr @u132_hcd_configure_input_recv._entry, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @u132_hcd_configure_input_recv._entry_ptr, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @u132_hcd_configure_input_recv._entry.146, !310, !"_entry", i1 false, i1 false}
!310 = !{!"../drivers/usb/host/u132-hcd.c", i32 926, i32 3}
!311 = !{ptr @u132_hcd_configure_input_recv._entry_ptr.147, !310, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.149, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/usb/host/u132-hcd.c", i32 955, i32 4}
!314 = !{ptr @u132_hcd_configure_input_recv._entry.148, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @u132_hcd_configure_input_recv._entry_ptr.150, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.152, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/usb/host/u132-hcd.c", i32 962, i32 4}
!318 = !{ptr @u132_hcd_configure_input_recv._entry.151, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @u132_hcd_configure_input_recv._entry_ptr.153, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @u132_hcd_configure_input_recv._entry.154, !321, !"_entry", i1 false, i1 false}
!321 = !{!"../drivers/usb/host/u132-hcd.c", i32 970, i32 3}
!322 = !{ptr @u132_hcd_configure_input_recv._entry_ptr.155, !321, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.156, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/usb/host/u132-hcd.c", i32 877, i32 3}
!325 = !{ptr @u132_hcd_configure_empty_sent._entry, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @u132_hcd_configure_empty_sent._entry_ptr, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @u132_hcd_configure_empty_sent._entry.157, !328, !"_entry", i1 false, i1 false}
!328 = !{!"../drivers/usb/host/u132-hcd.c", i32 888, i32 3}
!329 = !{ptr @u132_hcd_configure_empty_sent._entry_ptr.158, !328, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @u132_hcd_configure_empty_sent._entry.159, !331, !"_entry", i1 false, i1 false}
!331 = !{!"../drivers/usb/host/u132-hcd.c", i32 898, i32 3}
!332 = !{ptr @u132_hcd_configure_empty_sent._entry_ptr.160, !331, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.161, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/usb/host/u132-hcd.c", i32 986, i32 3}
!335 = !{ptr @u132_hcd_configure_empty_recv._entry, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @u132_hcd_configure_empty_recv._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @u132_hcd_configure_empty_recv._entry.162, !338, !"_entry", i1 false, i1 false}
!338 = !{!"../drivers/usb/host/u132-hcd.c", i32 997, i32 3}
!339 = !{ptr @u132_hcd_configure_empty_recv._entry_ptr.163, !338, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @u132_hcd_configure_empty_recv._entry.164, !341, !"_entry", i1 false, i1 false}
!341 = !{!"../drivers/usb/host/u132-hcd.c", i32 1007, i32 3}
!342 = !{ptr @u132_hcd_configure_empty_recv._entry_ptr.165, !341, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.166, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/usb/host/u132-hcd.c", i32 776, i32 3}
!345 = !{ptr @u132_hcd_bulk_input_recv._entry, !344, !"_entry", i1 false, i1 false}
!346 = !{ptr @u132_hcd_bulk_input_recv._entry_ptr, !344, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @u132_hcd_bulk_input_recv._entry.167, !348, !"_entry", i1 false, i1 false}
!348 = !{!"../drivers/usb/host/u132-hcd.c", i32 787, i32 3}
!349 = !{ptr @u132_hcd_bulk_input_recv._entry_ptr.168, !348, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.170, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/usb/host/u132-hcd.c", i32 836, i32 4}
!352 = !{ptr @u132_hcd_bulk_input_recv._entry.169, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @u132_hcd_bulk_input_recv._entry_ptr.171, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.173, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/usb/host/u132-hcd.c", i32 852, i32 4}
!356 = !{ptr @u132_hcd_bulk_input_recv._entry.172, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @u132_hcd_bulk_input_recv._entry_ptr.174, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @u132_hcd_bulk_input_recv._entry.175, !359, !"_entry", i1 false, i1 false}
!359 = !{!"../drivers/usb/host/u132-hcd.c", i32 861, i32 3}
!360 = !{ptr @u132_hcd_bulk_input_recv._entry_ptr.176, !359, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.177, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/usb/host/u132-hcd.c", i32 724, i32 3}
!363 = !{ptr @u132_hcd_bulk_output_sent._entry, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @u132_hcd_bulk_output_sent._entry_ptr, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @u132_hcd_bulk_output_sent._entry.178, !366, !"_entry", i1 false, i1 false}
!366 = !{!"../drivers/usb/host/u132-hcd.c", i32 735, i32 3}
!367 = !{ptr @u132_hcd_bulk_output_sent._entry_ptr.179, !366, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @u132_hcd_bulk_output_sent._entry.180, !369, !"_entry", i1 false, i1 false}
!369 = !{!"../drivers/usb/host/u132-hcd.c", i32 758, i32 3}
!370 = !{ptr @u132_hcd_bulk_output_sent._entry_ptr.181, !369, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @create_endpoint_and_queue_bulk.__key, !372, !"__key", i1 false, i1 false}
!372 = !{!"../drivers/usb/host/u132-hcd.c", i32 1960, i32 2}
!373 = !{ptr @create_endpoint_and_queue_bulk.__key.182, !374, !"__key", i1 false, i1 false}
!374 = !{!"../drivers/usb/host/u132-hcd.c", i32 1971, i32 2}
!375 = !{ptr @create_endpoint_and_queue_bulk.__key.183, !374, !"__key", i1 false, i1 false}
!376 = !{ptr @.str.184, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/usb/host/u132-hcd.c", i32 2184, i32 5}
!378 = !{ptr @.str.185, !377, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @queue_control_on_old_endpoint._entry, !377, !"_entry", i1 false, i1 false}
!380 = !{ptr @queue_control_on_old_endpoint._entry_ptr, !377, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @create_endpoint_and_queue_control.__key, !382, !"__key", i1 false, i1 false}
!382 = !{!"../drivers/usb/host/u132-hcd.c", i32 2056, i32 2}
!383 = !{ptr @create_endpoint_and_queue_control.__key.186, !384, !"__key", i1 false, i1 false}
!384 = !{!"../drivers/usb/host/u132-hcd.c", i32 2067, i32 2}
!385 = !{ptr @create_endpoint_and_queue_control.__key.187, !384, !"__key", i1 false, i1 false}
!386 = !{ptr @.str.188, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/usb/host/u132-hcd.c", i32 2506, i32 3}
!388 = !{ptr @u132_urb_dequeue._entry, !387, !"_entry", i1 false, i1 false}
!389 = !{ptr @u132_urb_dequeue._entry_ptr, !387, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @.str.189, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/usb/host/u132-hcd.c", i32 2419, i32 3}
!392 = !{ptr @.str.190, !391, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @u132_endp_urb_dequeue._entry, !391, !"_entry", i1 false, i1 false}
!394 = !{ptr @u132_endp_urb_dequeue._entry_ptr, !391, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @.str.192, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/usb/host/u132-hcd.c", i32 2480, i32 4}
!397 = !{ptr @u132_endp_urb_dequeue._entry.191, !396, !"_entry", i1 false, i1 false}
!398 = !{ptr @u132_endp_urb_dequeue._entry_ptr.193, !396, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @.str.194, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/usb/host/u132-hcd.c", i32 2397, i32 2}
!401 = !{ptr @dequeue_from_overflow_chain._entry, !400, !"_entry", i1 false, i1 false}
!402 = !{ptr @dequeue_from_overflow_chain._entry_ptr, !400, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @.str.195, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/usb/host/u132-hcd.c", i32 2531, i32 3}
!405 = !{ptr @.str.196, !404, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @u132_endpoint_disable._entry, !404, !"_entry", i1 false, i1 false}
!407 = !{ptr @u132_endpoint_disable._entry_ptr, !404, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.197, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/usb/host/u132-hcd.c", i32 2757, i32 3}
!410 = !{ptr @.str.198, !409, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @u132_hub_status_data._entry, !409, !"_entry", i1 false, i1 false}
!412 = !{ptr @u132_hub_status_data._entry_ptr, !409, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @u132_hub_status_data._entry.199, !414, !"_entry", i1 false, i1 false}
!414 = !{!"../drivers/usb/host/u132-hcd.c", i32 2761, i32 3}
!415 = !{ptr @u132_hub_status_data._entry_ptr.200, !414, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @.str.202, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/usb/host/u132-hcd.c", i32 2768, i32 5}
!418 = !{ptr @u132_hub_status_data._entry.201, !417, !"_entry", i1 false, i1 false}
!419 = !{ptr @u132_hub_status_data._entry_ptr.203, !417, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @.str.204, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/usb/host/u132-hcd.c", i32 2809, i32 3}
!422 = !{ptr @u132_hub_control._entry, !421, !"_entry", i1 false, i1 false}
!423 = !{ptr @u132_hub_control._entry_ptr, !421, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @u132_hub_control._entry.205, !425, !"_entry", i1 false, i1 false}
!425 = !{!"../drivers/usb/host/u132-hcd.c", i32 2813, i32 3}
!426 = !{ptr @u132_hub_control._entry_ptr.206, !425, !"_entry_ptr", i1 false, i1 false}
!427 = !{ptr @.str.207, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/usb/host/u132-hcd.c", i32 2724, i32 5}
!429 = !{ptr @.str.208, !428, !"<string literal>", i1 false, i1 false}
!430 = !{ptr @u132_roothub_clearportfeature._entry, !428, !"_entry", i1 false, i1 false}
!431 = !{ptr @u132_roothub_clearportfeature._entry_ptr, !428, !"_entry_ptr", i1 false, i1 false}
!432 = !{ptr @.str.209, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/usb/host/u132-hcd.c", i32 2617, i32 4}
!434 = !{ptr @.str.210, !433, !"<string literal>", i1 false, i1 false}
!435 = !{ptr @u132_roothub_portstatus._entry, !433, !"_entry", i1 false, i1 false}
!436 = !{ptr @u132_roothub_portstatus._entry_ptr, !433, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @.str.211, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/usb/host/u132-hcd.c", i32 2907, i32 3}
!439 = !{ptr @u132_bus_suspend._entry, !438, !"_entry", i1 false, i1 false}
!440 = !{ptr @u132_bus_suspend._entry_ptr, !438, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @u132_bus_suspend._entry.212, !442, !"_entry", i1 false, i1 false}
!442 = !{!"../drivers/usb/host/u132-hcd.c", i32 2911, i32 3}
!443 = !{ptr @u132_bus_suspend._entry_ptr.213, !442, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @.str.214, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/usb/host/u132-hcd.c", i32 2921, i32 3}
!446 = !{ptr @u132_bus_resume._entry, !445, !"_entry", i1 false, i1 false}
!447 = !{ptr @u132_bus_resume._entry_ptr, !445, !"_entry_ptr", i1 false, i1 false}
!448 = !{ptr @u132_bus_resume._entry.215, !449, !"_entry", i1 false, i1 false}
!449 = !{!"../drivers/usb/host/u132-hcd.c", i32 2925, i32 3}
!450 = !{ptr @u132_bus_resume._entry_ptr.216, !449, !"_entry_ptr", i1 false, i1 false}
!451 = !{ptr @.str.217, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/usb/host/u132-hcd.c", i32 2891, i32 3}
!453 = !{ptr @u132_start_port_reset._entry, !452, !"_entry", i1 false, i1 false}
!454 = !{ptr @u132_start_port_reset._entry_ptr, !452, !"_entry_ptr", i1 false, i1 false}
!455 = !{ptr @u132_start_port_reset._entry.218, !456, !"_entry", i1 false, i1 false}
!456 = !{!"../drivers/usb/host/u132-hcd.c", i32 2895, i32 3}
!457 = !{ptr @u132_start_port_reset._entry_ptr.219, !456, !"_entry_ptr", i1 false, i1 false}
!458 = !{ptr @u132_initialise.__key, !459, !"__key", i1 false, i1 false}
!459 = !{!"../drivers/usb/host/u132-hcd.c", i32 3009, i32 2}
!460 = !{ptr @.str.220, !459, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @u132_initialise.__key.221, !462, !"__key", i1 false, i1 false}
!462 = !{!"../drivers/usb/host/u132-hcd.c", i32 3010, i32 2}
!463 = !{ptr @.str.222, !462, !"<string literal>", i1 false, i1 false}
!464 = !{ptr @u132_initialise.__key.223, !465, !"__key", i1 false, i1 false}
!465 = !{!"../drivers/usb/host/u132-hcd.c", i32 3017, i32 3}
!466 = !{ptr @.str.224, !465, !"<string literal>", i1 false, i1 false}
!467 = !{ptr @u132_initialise.__key.225, !465, !"__key", i1 false, i1 false}
!468 = !{ptr @.str.226, !465, !"<string literal>", i1 false, i1 false}
!469 = !{ptr @u132_initialise.__key.227, !470, !"__key", i1 false, i1 false}
!470 = !{!"../drivers/usb/host/u132-hcd.c", i32 3021, i32 2}
!471 = !{ptr @.str.228, !470, !"<string literal>", i1 false, i1 false}
!472 = !{ptr @u132_initialise.__key.229, !470, !"__key", i1 false, i1 false}
!473 = !{ptr @.str.230, !470, !"<string literal>", i1 false, i1 false}
!474 = !{ptr @.str.231, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/usb/host/u132-hcd.c", i32 475, i32 3}
!476 = !{ptr @u132_hcd_monitor_work._entry, !475, !"_entry", i1 false, i1 false}
!477 = !{ptr @u132_hcd_monitor_work._entry_ptr, !475, !"_entry_ptr", i1 false, i1 false}
!478 = !{ptr @u132_hcd_monitor_work._entry.232, !479, !"_entry", i1 false, i1 false}
!479 = !{!"../drivers/usb/host/u132-hcd.c", i32 480, i32 3}
!480 = !{ptr @u132_hcd_monitor_work._entry_ptr.233, !479, !"_entry_ptr", i1 false, i1 false}
!481 = !{ptr @.str.234, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/usb/host/u132-hcd.c", i32 2966, i32 4}
!483 = !{ptr @.str.235, !482, !"<string literal>", i1 false, i1 false}
!484 = !{ptr @u132_remove._entry, !482, !"_entry", i1 false, i1 false}
!485 = !{ptr @u132_remove._entry_ptr, !482, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @.str.237, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/usb/host/u132-hcd.c", i32 2972, i32 4}
!488 = !{ptr @u132_remove._entry.236, !487, !"_entry", i1 false, i1 false}
!489 = !{ptr @u132_remove._entry_ptr.238, !487, !"_entry_ptr", i1 false, i1 false}
!490 = !{ptr @.str.240, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/usb/host/u132-hcd.c", i32 2987, i32 4}
!492 = !{ptr @u132_remove._entry.239, !491, !"_entry", i1 false, i1 false}
!493 = !{ptr @u132_remove._entry_ptr.241, !491, !"_entry_ptr", i1 false, i1 false}
!494 = !{ptr @.str.242, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/usb/host/u132-hcd.c", i32 3117, i32 3}
!496 = !{ptr @u132_suspend._entry, !495, !"_entry", i1 false, i1 false}
!497 = !{ptr @u132_suspend._entry_ptr, !495, !"_entry_ptr", i1 false, i1 false}
!498 = !{ptr @u132_suspend._entry.243, !499, !"_entry", i1 false, i1 false}
!499 = !{!"../drivers/usb/host/u132-hcd.c", i32 3121, i32 3}
!500 = !{ptr @u132_suspend._entry_ptr.244, !499, !"_entry_ptr", i1 false, i1 false}
!501 = !{ptr @.str.245, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/usb/host/u132-hcd.c", i32 3147, i32 3}
!503 = !{ptr @u132_resume._entry, !502, !"_entry", i1 false, i1 false}
!504 = !{ptr @u132_resume._entry_ptr, !502, !"_entry_ptr", i1 false, i1 false}
!505 = !{ptr @u132_resume._entry.246, !506, !"_entry", i1 false, i1 false}
!506 = !{!"../drivers/usb/host/u132-hcd.c", i32 3151, i32 3}
!507 = !{ptr @u132_resume._entry_ptr.247, !506, !"_entry_ptr", i1 false, i1 false}
!508 = !{ptr @.str.248, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/usb/host/u132-hcd.c", i32 76, i32 8}
!510 = !{ptr @u132_hcd_wait, !509, !"u132_hcd_wait", i1 false, i1 false}
!511 = !{i32 1, !"wchar_size", i32 2}
!512 = !{i32 1, !"min_enum_size", i32 4}
!513 = !{i32 8, !"branch-target-enforcement", i32 0}
!514 = !{i32 8, !"sign-return-address", i32 0}
!515 = !{i32 8, !"sign-return-address-all", i32 0}
!516 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!517 = !{i32 7, !"uwtable", i32 1}
!518 = !{i32 7, !"frame-pointer", i32 2}
!519 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!520 = !{!"auto-init"}
!521 = !{i64 2148389157}
!522 = !{i64 2148303621, i64 2148303653, i64 2148303682, i64 2148303716, i64 2148303747, i64 2148303770}
!523 = !{!"branch_weights", i32 2000, i32 1}
!524 = !{i64 2149395605}
!525 = distinct !{ptr @u132_endp_delete, null, null}
!526 = !{i64 2148301156, i64 2148301188, i64 2148301217, i64 2148301251, i64 2148301282, i64 2148301305}
!527 = !{!"branch_weights", i32 1, i32 2000}
!528 = !{i8 0, i8 2}
!529 = !{i64 694839}
