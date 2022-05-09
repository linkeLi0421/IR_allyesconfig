; ModuleID = '/llk/IR_all_yes/drivers/usb/host/isp116x-hcd.c_pt.bc'
source_filename = "../drivers/usb/host/isp116x-hcd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.isp116x_platform_data = type { i8, ptr }
%struct.isp116x_ep = type { ptr, ptr, %struct.ptd, i8, i8, i8, i16, i16, ptr, ptr, i16, i16, i16, ptr, %struct.list_head }
%struct.ptd = type { i16, i16, i16, i16 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.isp116x = type { %struct.spinlock, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, %struct.list_head, [32 x i16], [32 x ptr], i32, i16, ptr, i32, i32, i32, %struct.atomic_t }
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.70 }>
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { [4 x i8], [4 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__UNIQUE_ID_description284 = internal constant [59 x i8] c"isp116x_hcd.description=ISP116x USB Host Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file285 = internal constant [46 x i8] c"isp116x_hcd.file=drivers/usb/host/isp116x-hcd\00", section ".modinfo", align 1
@__UNIQUE_ID_license286 = internal constant [24 x i8] c"isp116x_hcd.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias321 = internal constant [39 x i8] c"isp116x_hcd.alias=platform:isp116x-hcd\00", section ".modinfo", align 1
@__initcall__kmod_isp116x_hcd__322_1695_isp116x_driver_init6 = internal global ptr @isp116x_driver_init, section ".initcall6.init", align 4
@isp116x_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @isp116x_probe, ptr @isp116x_remove, ptr null, ptr @isp116x_suspend, ptr @isp116x_resume, %struct.device_driver { ptr @hcd_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_isp116x_driver_exit = internal global ptr @isp116x_driver_exit, section ".exitcall.exit", align 4
@hcd_name = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"isp116x-hcd\00", [20 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@isp116x_hc_driver = internal constant { %struct.hc_driver, [40 x i8] } { %struct.hc_driver { ptr @hcd_name, ptr @.str.13, i32 324, ptr @isp116x_irq, i32 16, ptr @isp116x_reset, ptr @isp116x_start, ptr null, ptr null, ptr @isp116x_stop, ptr null, ptr @isp116x_get_frame, ptr @isp116x_urb_enqueue, ptr @isp116x_urb_dequeue, ptr null, ptr null, ptr @isp116x_endpoint_disable, ptr null, ptr @isp116x_hub_status_data, ptr @isp116x_hub_control, ptr @isp116x_bus_suspend, ptr @isp116x_bus_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@isp116x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&isp116x->lock\00", [17 x i8] zeroinitializer }, align 32
@isp116x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013116x: Platform data structure not initialized\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isp116x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/usb/host/isp116x-hcd.c\00", [33 x i8] zeroinitializer }, align 32
@isp116x_probe._entry_ptr = internal global ptr @isp116x_probe._entry, section ".printk_index", align 4
@isp116x_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013116x: USE_PLATFORM_DELAY defined, but delay function not implemented.\0A\00", [55 x i8] zeroinitializer }, align 32
@isp116x_probe._entry_ptr.6 = internal global ptr @isp116x_probe._entry.4, section ".printk_index", align 4
@isp116x_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013116x: See comments in drivers/usb/host/isp116x-hcd.c\0A\00", [40 x i8] zeroinitializer }, align 32
@isp116x_probe._entry_ptr.9 = internal global ptr @isp116x_probe._entry.7, section ".printk_index", align 4
@isp116x_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013116x: init error, %d\0A\00", [40 x i8] zeroinitializer }, align 32
@isp116x_probe._entry_ptr.12 = internal global ptr @isp116x_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ISP116x Host Controller\00", [40 x i8] zeroinitializer }, align 32
@isp116x_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013116x: Unrecoverable error, HC is dead!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"isp116x_irq\00", [20 x i8] zeroinitializer }, align 32
@isp116x_irq._entry_ptr = internal global ptr @isp116x_irq._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@isp116x_irq.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.15, ptr @.str.3, ptr @.str.17, i8 0, i8 -100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"isp116x_hcd\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"116x: ---- remote wakeup\0A\00", [38 x i8] zeroinitializer }, align 32
@postproc_atl_queue.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"postproc_atl_queue\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"116x: Allowed or control data underrun\0A\00", [56 x i8] zeroinitializer }, align 32
@cc_to_error = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 -84, i32 -71, i32 -84, i32 -32, i32 -62, i32 -71, i32 -71, i32 -75, i32 -121, i32 -5, i32 -5, i32 -70, i32 -63, i32 -114, i32 -114], [32 x i8] zeroinitializer }, align 32
@postproc_atl_queue.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.18, ptr @.str.3, ptr @.str.20, i8 0, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"116x: Zero packet requested\0A\00", [35 x i8] zeroinitializer }, align 32
@finish_request.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"finish_request\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"116x: deschedule qh%d/%p branch %d\0A\00", [60 x i8] zeroinitializer }, align 32
@preproc_atl_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013116x: %s %d: ep->nextpid %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"preproc_atl_queue\00", [46 x i8] zeroinitializer }, align 32
@preproc_atl_queue._entry_ptr = internal global ptr @preproc_atl_queue._entry, section ".printk_index", align 4
@isp116x_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 1268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013116x: Clock not ready after %dms\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isp116x_reset\00", [18 x i8] zeroinitializer }, align 32
@isp116x_reset._entry_ptr = internal global ptr @isp116x_reset._entry, section ".printk_index", align 4
@isp116x_reset._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 1271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013116x: Please make sure that the H_WAKEUP pin is pulled low!\0A\00", [33 x i8] zeroinitializer }, align 32
@isp116x_reset._entry_ptr.29 = internal global ptr @isp116x_reset._entry.27, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@isp116x_sw_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 1240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013116x: Software reset timeout\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isp116x_sw_reset\00", [47 x i8] zeroinitializer }, align 32
@isp116x_sw_reset._entry_ptr = internal global ptr @isp116x_sw_reset._entry, section ".printk_index", align 4
@isp116x_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 1315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013116x: Invalid chip ID %04x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isp116x_start\00", [18 x i8] zeroinitializer }, align 32
@isp116x_start._entry_ptr = internal global ptr @isp116x_start._entry, section ".printk_index", align 4
@isp116x_show_regs_log.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.35, ptr @.str.36, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"isp116x_show_regs_log\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/usb/host/isp116x.h\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"116x: %-12s[%02x]: %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HCREVISION\00", [21 x i8] zeroinitializer }, align 32
@isp116x_show_regs_log.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.35, ptr @.str.36, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HCCONTROL\00", [22 x i8] zeroinitializer }, align 32
@isp116x_show_regs_log.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.35, ptr @.str.36, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HCCMDSTAT\00", [22 x i8] zeroinitializer }, align 32
@isp116x_show_regs_log.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.35, ptr @.str.36, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HCINTSTAT\00", [22 x i8] zeroinitializer }, align 32
@isp116x_show_regs_log.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.35, ptr @.str.36, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HCINTENB\00", [23 x i8] zeroinitializer }, align 32
@isp116x_show_regs_log.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.35, ptr @.str.36, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HCFMINTVL\00", [22 x i8] zeroinitializer }, align 32
@isp116x_show_regs_log.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.35, ptr @.str.36, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HCFMREM\00", [24 x i8] zeroinitializer }, align 32
@isp116x_show_regs_log.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.35, ptr @.str.36, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HCFMNUM\00", [24 x i8] zeroinitializer }, align 32
@isp116x_show_regs_log.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.35, ptr @.str.36, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HCLSTHRESH\00", [21 x i8] zeroinitializer }, align 32
@isp116x_show_regs_log.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.35, ptr @.str.36, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HCRHDESCA\00", [22 x i8] zeroinitializer }, align 32
@isp116x_show_regs_log.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.35, ptr @.str.36, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HCRHDESCB\00", [22 x i8] zeroinitializer }, align 32
@isp116x_show_regs_log.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.35, ptr @.str.36, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HCRHSTATUS\00", [21 x i8] zeroinitializer }, align 32
@isp116x_show_regs_log.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.35, ptr @.str.36, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HCRHPORT1\00", [22 x i8] zeroinitializer }, align 32
@isp116x_show_regs_log.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.35, ptr @.str.36, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HCRHPORT2\00", [22 x i8] zeroinitializer }, align 32
@isp116x_show_regs_log.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.35, ptr @.str.51, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"116x: %-12s[%02x]:     %04x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HCHWCFG\00", [24 x i8] zeroinitializer }, align 32
@isp116x_show_regs_log.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.35, ptr @.str.51, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HCDMACFG\00", [23 x i8] zeroinitializer }, align 32
@isp116x_show_regs_log.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.35, ptr @.str.51, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HCXFERCTR\00", [22 x i8] zeroinitializer }, align 32
@isp116x_show_regs_log.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.35, ptr @.str.51, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HCuPINT\00", [24 x i8] zeroinitializer }, align 32
@isp116x_show_regs_log.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.35, ptr @.str.51, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HCuPINTENB\00", [21 x i8] zeroinitializer }, align 32
@isp116x_show_regs_log.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.35, ptr @.str.51, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HCCHIPID\00", [23 x i8] zeroinitializer }, align 32
@isp116x_show_regs_log.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.35, ptr @.str.51, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HCSCRATCH\00", [22 x i8] zeroinitializer }, align 32
@isp116x_show_regs_log.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.35, ptr @.str.51, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HCITLBUFLEN\00", [20 x i8] zeroinitializer }, align 32
@isp116x_show_regs_log.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.35, ptr @.str.51, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HCATLBUFLEN\00", [20 x i8] zeroinitializer }, align 32
@isp116x_show_regs_log.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.35, ptr @.str.51, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HCBUFSTAT\00", [22 x i8] zeroinitializer }, align 32
@isp116x_show_regs_log.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.35, ptr @.str.51, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HCRDITL0LEN\00", [20 x i8] zeroinitializer }, align 32
@isp116x_show_regs_log.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.35, ptr @.str.51, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HCRDITL1LEN\00", [20 x i8] zeroinitializer }, align 32
@isp116x_urb_enqueue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013116x: Isochronous transfers not supported\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"isp116x_urb_enqueue\00", [44 x i8] zeroinitializer }, align 32
@isp116x_urb_enqueue._entry_ptr = internal global ptr @isp116x_urb_enqueue._entry, section ".printk_index", align 4
@isp116x_urb_enqueue.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.65, ptr @.str.3, ptr @.str.66, i8 0, i8 -58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"116x: schedule qh%d/%p branch %d\0A\00", [62 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/usb.h\00", [44 x i8] zeroinitializer }, align 32
@isp116x_endpoint_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014116x: ep %p not empty?\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"isp116x_endpoint_disable\00", [39 x i8] zeroinitializer }, align 32
@isp116x_endpoint_disable._entry_ptr = internal global ptr @isp116x_endpoint_disable._entry, section ".printk_index", align 4
@isp116x_hub_control.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.70, ptr @.str.3, ptr @.str.71, i8 0, i8 -3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"isp116x_hub_control\00", [44 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"116x: ClearHubFeature: \00", [40 x i8] zeroinitializer }, align 32
@isp116x_hub_control.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.70, ptr @.str.3, ptr @.str.72, i8 0, i8 -2, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"116x: C_HUB_OVER_CURRENT\0A\00", [38 x i8] zeroinitializer }, align 32
@isp116x_hub_control.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.70, ptr @.str.3, ptr @.str.73, i8 1, i8 0, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"116x: C_HUB_LOCAL_POWER\0A\00", [39 x i8] zeroinitializer }, align 32
@isp116x_hub_control.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.70, ptr @.str.3, ptr @.str.74, i8 1, i8 1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"116x: SetHubFeature: \00", [42 x i8] zeroinitializer }, align 32
@isp116x_hub_control.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.70, ptr @.str.3, ptr @.str.75, i8 1, i8 2, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"116x: C_HUB_OVER_CURRENT or C_HUB_LOCAL_POWER\0A\00", [49 x i8] zeroinitializer }, align 32
@isp116x_hub_control.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.70, ptr @.str.3, ptr @.str.76, i8 1, i8 4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"116x: GetHubDescriptor\0A\00", [40 x i8] zeroinitializer }, align 32
@isp116x_hub_control.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.70, ptr @.str.3, ptr @.str.77, i8 1, i8 5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"116x: GetHubStatus\0A\00", [44 x i8] zeroinitializer }, align 32
@isp116x_hub_control.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.70, ptr @.str.3, ptr @.str.78, i8 1, i8 6, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"116x: GetPortStatus\0A\00", [43 x i8] zeroinitializer }, align 32
@isp116x_hub_control.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.70, ptr @.str.3, ptr @.str.79, i8 1, i8 8, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"116x: GetPortStatus: port[%d]  %08x\0A\00", [59 x i8] zeroinitializer }, align 32
@isp116x_hub_control.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.70, ptr @.str.3, ptr @.str.80, i8 1, i8 9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"116x: ClearPortFeature: \00", [39 x i8] zeroinitializer }, align 32
@isp116x_hub_control.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.70, ptr @.str.3, ptr @.str.81, i8 1, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"116x: USB_PORT_FEAT_ENABLE\0A\00", [36 x i8] zeroinitializer }, align 32
@isp116x_hub_control.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.70, ptr @.str.3, ptr @.str.82, i8 1, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"116x: USB_PORT_FEAT_C_ENABLE\0A\00", [34 x i8] zeroinitializer }, align 32
@isp116x_hub_control.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.70, ptr @.str.3, ptr @.str.83, i8 1, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"116x: USB_PORT_FEAT_SUSPEND\0A\00", [35 x i8] zeroinitializer }, align 32
@isp116x_hub_control.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.70, ptr @.str.3, ptr @.str.84, i8 1, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"116x: USB_PORT_FEAT_C_SUSPEND\0A\00", [33 x i8] zeroinitializer }, align 32
@isp116x_hub_control.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.70, ptr @.str.3, ptr @.str.85, i8 1, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"116x: USB_PORT_FEAT_POWER\0A\00", [37 x i8] zeroinitializer }, align 32
@isp116x_hub_control.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.70, ptr @.str.3, ptr @.str.86, i8 1, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"116x: USB_PORT_FEAT_C_CONNECTION\0A\00", [62 x i8] zeroinitializer }, align 32
@isp116x_hub_control.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.70, ptr @.str.3, ptr @.str.87, i8 1, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"116x: USB_PORT_FEAT_C_OVER_CURRENT\0A\00", [60 x i8] zeroinitializer }, align 32
@isp116x_hub_control.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.70, ptr @.str.3, ptr @.str.88, i8 1, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"116x: USB_PORT_FEAT_C_RESET\0A\00", [35 x i8] zeroinitializer }, align 32
@isp116x_hub_control.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.70, ptr @.str.3, ptr @.str.89, i8 1, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"116x: SetPortFeature: \00", [41 x i8] zeroinitializer }, align 32
@isp116x_hub_control.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.70, ptr @.str.3, ptr @.str.83, i8 1, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@isp116x_hub_control.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.70, ptr @.str.3, ptr @.str.85, i8 1, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@isp116x_hub_control.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.70, ptr @.str.3, ptr @.str.90, i8 1, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"116x: USB_PORT_FEAT_RESET\0A\00", [37 x i8] zeroinitializer }, align 32
@isp116x_hub_control.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.70, ptr @.str.3, ptr @.str.91, i8 1, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"116x: PROTOCOL STALL\0A\00", [42 x i8] zeroinitializer }, align 32
@isp116x_bus_resume.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.92, ptr @.str.3, ptr @.str.93, i8 1, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"isp116x_bus_resume\00", [45 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"116x: Chip has been reset while suspended. Reinit from scratch.\0A\00", [63 x i8] zeroinitializer }, align 32
@isp116x_bus_resume.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.92, ptr @.str.3, ptr @.str.94, i8 1, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"116x: %s: Resuming port %d\0A\00", [36 x i8] zeroinitializer }, align 32
@usb_debug_root = external dso_local local_unnamed_addr global ptr, align 4
@isp116x_debug_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @isp116x_debug_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s\0A%s version %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"03 Nov 2005\00", [20 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HCD is suspended\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HCD not running\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hc_irq_enable\00", [18 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hc_irq_status\00", [18 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hc_int_enable\00", [18 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hc_int_status\00", [18 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s %04x%s%s%s%s%s%s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" clkrdy\00", [24 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.107 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" susp\00", [26 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" opr\00", [27 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" eot\00", [27 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" atl\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" sof\00", [27 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s %08x%s%s%s%s%s%s%s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" MIE\00", [27 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" rhsc\00", [26 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" fno\00", [27 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" ue\00", [28 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" rd\00", [28 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" so\00", [28 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%-12s[%02x]: %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%-12s[%02x]:     %04x\0A\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.121 = internal global [9 x i64] [i64 7, i64 16, i64 8193, i64 8195, i64 8961, i64 8963, i64 40960, i64 40966, i64 41728]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.123 = internal global [10 x i64] [i64 8, i64 16, i64 1, i64 2, i64 8, i64 16, i64 17, i64 18, i64 19, i64 20]
@__sancov_gen_cov_switch_values.124 = internal global [5 x i64] [i64 3, i64 16, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.125 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 64, i64 128]
@__sancov_gen_cov_switch_values.126 = internal global [5 x i64] [i64 3, i64 8, i64 64, i64 128, i64 192]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 8, i64 45, i64 210]
@__sancov_gen_cov_switch_values.128 = internal global [6 x i64] [i64 4, i64 8, i64 45, i64 105, i64 210, i64 225]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 15]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 16, i64 4, i64 8]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 15]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 8, i64 105, i64 225]
@__sancov_gen_cov_switch_values.133 = internal global [6 x i64] [i64 4, i64 8, i64 45, i64 105, i64 210, i64 225]
@___asan_gen_.134 = private unnamed_addr constant [15 x i8] c"isp116x_driver\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1685, i32 31 }
@___asan_gen_.137 = private unnamed_addr constant [9 x i8] c"hcd_name\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 83, i32 19 }
@___asan_gen_.140 = private unnamed_addr constant [18 x i8] c"isp116x_hc_driver\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1504, i32 31 }
@___asan_gen_.143 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1614, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1619, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1624, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1626, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1652, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1506, i32 18 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 611, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 626, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 376, i32 5 }
@___asan_gen_.203 = private unnamed_addr constant [12 x i8] c"cc_to_error\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 231, i32 18 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 435, i32 6 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 323, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 270, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1268, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1271, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1240, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1315, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 503, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 700, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 795, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1981, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 887, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1015, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1018, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1024, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1031, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1035, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1042, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1047, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1051, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1058, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1061, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1068, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1072, i32 4 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1076, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1080, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1084, i32 4 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1088, i32 4 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1092, i32 4 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1096, i32 4 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1108, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1128, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1139, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1459, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1477, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant [19 x i8] c"isp116x_debug_fops\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1199, i32 1 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1175, i32 16 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1177, i32 6 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1180, i32 17 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1184, i32 17 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1189, i32 14 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1190, i32 14 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1191, i32 14 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1192, i32 14 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1195, i32 16 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1151, i32 16 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1152, i32 30 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1152, i32 42 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1153, i32 28 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1154, i32 27 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1155, i32 30 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1156, i32 27 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1157, i32 27 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1162, i32 16 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1163, i32 25 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1164, i32 26 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1165, i32 25 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1166, i32 24 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1167, i32 24 }
@___asan_gen_.519 = private constant [34 x i8] c"../drivers/usb/host/isp116x-hcd.c\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1168, i32 55 }
@___asan_gen_.524 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.525 = private unnamed_addr constant [30 x i8] c"../drivers/usb/host/isp116x.h\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 495, i32 2 }
@llvm.compiler.used = appending global [150 x ptr] [ptr @__UNIQUE_ID_alias321, ptr @__UNIQUE_ID_description284, ptr @__UNIQUE_ID_file285, ptr @__UNIQUE_ID_license286, ptr @__exitcall_isp116x_driver_exit, ptr @__initcall__kmod_isp116x_hcd__322_1695_isp116x_driver_init6, ptr @isp116x_driver_exit, ptr @isp116x_endpoint_disable._entry, ptr @isp116x_endpoint_disable._entry_ptr, ptr @isp116x_irq._entry, ptr @isp116x_irq._entry_ptr, ptr @isp116x_probe._entry, ptr @isp116x_probe._entry.10, ptr @isp116x_probe._entry.4, ptr @isp116x_probe._entry.7, ptr @isp116x_probe._entry_ptr, ptr @isp116x_probe._entry_ptr.12, ptr @isp116x_probe._entry_ptr.6, ptr @isp116x_probe._entry_ptr.9, ptr @isp116x_reset._entry, ptr @isp116x_reset._entry.27, ptr @isp116x_reset._entry_ptr, ptr @isp116x_reset._entry_ptr.29, ptr @isp116x_start._entry, ptr @isp116x_start._entry_ptr, ptr @isp116x_sw_reset._entry, ptr @isp116x_sw_reset._entry_ptr, ptr @isp116x_urb_enqueue._entry, ptr @isp116x_urb_enqueue._entry_ptr, ptr @preproc_atl_queue._entry, ptr @preproc_atl_queue._entry_ptr, ptr @isp116x_driver, ptr @hcd_name, ptr @isp116x_hc_driver, ptr @isp116x_probe.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @cc_to_error, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @isp116x_debug_fops, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120], section "llvm.metadata"
@0 = internal global [131 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp116x_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcd_name to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp116x_hc_driver to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp116x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp116x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp116x_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp116x_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp116x_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp116x_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_to_error to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preproc_atl_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp116x_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp116x_reset._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp116x_sw_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp116x_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp116x_urb_enqueue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp116x_endpoint_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp116x_debug_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @isp116x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @isp116x_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @isp116x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @isp116x_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp116x_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_disabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 6
  %0 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_resources, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ult i32 %1, 3
  br i1 %cmp, label %if.end.do.end78_crit_edge, label %if.end2

if.end.do.end78_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end78

if.end2:                                          ; preds = %if.end
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %call4 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #10
  %call5 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #10
  %tobool6.not = icmp eq ptr %call4, null
  %tobool7.not = icmp eq ptr %call3, null
  %or.cond = select i1 %tobool6.not, i1 true, i1 %tobool7.not
  %tobool9.not = icmp eq ptr %call5, null
  %or.cond125 = select i1 %or.cond, i1 true, i1 %tobool9.not
  br i1 %or.cond125, label %if.end2.do.end78_crit_edge, label %if.end11

if.end2.do.end78_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end78

if.end11:                                         ; preds = %if.end2
  %2 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call5, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %call5, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 15
  %6 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call4, align 4
  %call13 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %7, i32 noundef 2, ptr noundef nonnull @hcd_name, i32 noundef 0) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end11.do.end78_crit_edge, label %if.end16

if.end11.do.end78_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end78

if.end16:                                         ; preds = %if.end11
  %8 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call4, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call4, i32 0, i32 1
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %9
  %add.i = add i32 %sub.i, %11
  %call19 = tail call ptr @ioremap(i32 noundef %9, i32 noundef %add.i) #10
  %cmp20 = icmp eq ptr %call19, null
  br i1 %cmp20, label %if.end16.err2_crit_edge, label %if.end22

if.end16.err2_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %err2

if.end22:                                         ; preds = %if.end16
  %12 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call3, align 4
  %call24 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %13, i32 noundef 2, ptr noundef nonnull @hcd_name, i32 noundef 0) #10
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end22.err3_crit_edge, label %if.end27

if.end22.err3_crit_edge:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %err3

if.end27:                                         ; preds = %if.end22
  %14 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call3, align 4
  %end.i126 = getelementptr inbounds %struct.resource, ptr %call3, i32 0, i32 1
  %16 = ptrtoint ptr %end.i126 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end.i126, align 4
  %sub.i127 = sub i32 1, %15
  %add.i128 = add i32 %sub.i127, %17
  %call30 = tail call ptr @ioremap(i32 noundef %15, i32 noundef %add.i128) #10
  %cmp31 = icmp eq ptr %call30, null
  br i1 %cmp31, label %if.end27.err4_crit_edge, label %if.end33

if.end27.err4_crit_edge:                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %err4

if.end33:                                         ; preds = %if.end27
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end33.dev_name.exit_crit_edge

if.end33.dev_name.exit_crit_edge:                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end33.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %21, %if.end.i ], [ %19, %if.end33.dev_name.exit_crit_edge ]
  %call36 = tail call ptr @usb_create_hcd(ptr noundef nonnull @isp116x_hc_driver, ptr noundef %dev, ptr noundef %retval.0.i) #10
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %dev_name.exit.err5_crit_edge, label %if.end39

dev_name.exit.err5_crit_edge:                     ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err5

if.end39:                                         ; preds = %dev_name.exit
  %22 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call4, align 4
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %call36, i32 0, i32 17
  %24 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %rsrc_start, align 8
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %call36, i32 0, i32 30
  %data_reg42 = getelementptr inbounds %struct.usb_hcd, ptr %call36, i32 1, i32 0, i32 9, i32 1, i32 4
  %25 = ptrtoint ptr %data_reg42 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call30, ptr %data_reg42, align 4
  %addr_reg43 = getelementptr inbounds %struct.usb_hcd, ptr %call36, i32 1, i32 0, i32 9, i32 1, i32 3
  %26 = ptrtoint ptr %addr_reg43 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call19, ptr %addr_reg43, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %hcd_priv.i, ptr noundef nonnull @.str, ptr noundef nonnull @isp116x_probe.__key, i16 noundef signext 3) #10
  %async = getelementptr inbounds %struct.usb_hcd, ptr %call36, i32 1, i32 0, i32 9, i32 5, i32 1
  %27 = ptrtoint ptr %async to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %async, ptr %async, align 4
  %prev.i = getelementptr inbounds %struct.usb_hcd, ptr %call36, i32 1, i32 0, i32 9, i32 5, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %async, ptr %prev.i, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %29 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %platform_data.i, align 8
  %board = getelementptr inbounds %struct.usb_hcd, ptr %call36, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %31 = ptrtoint ptr %board to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %board, align 4
  %tobool48.not = icmp eq ptr %30, null
  br i1 %tobool48.not, label %if.end39.err6.sink.split_crit_edge, label %if.end54

if.end39.err6.sink.split_crit_edge:               ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %err6.sink.split

if.end54:                                         ; preds = %if.end39
  %delay = getelementptr inbounds %struct.isp116x_platform_data, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %delay, align 4
  %cmp56 = icmp eq ptr %33, null
  br i1 %cmp56, label %do.end60, label %if.end68

do.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  br label %err6.sink.split

if.end68:                                         ; preds = %if.end54
  %call69 = tail call i32 @usb_add_hcd(ptr noundef nonnull %call36, i32 noundef %3, i32 noundef %and) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end68.err6_crit_edge

if.end68.err6_crit_edge:                          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %err6

if.end72:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %call36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call36, align 8
  %call73 = tail call i32 @device_wakeup_enable(ptr noundef %35) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usb_debug_root to i32))
  %36 = load ptr, ptr @usb_debug_root, align 4
  %call.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @hcd_name, i16 noundef zeroext 292, ptr noundef %36, ptr noundef %hcd_priv.i, ptr noundef nonnull @isp116x_debug_fops) #10
  br label %cleanup

err6.sink.split:                                  ; preds = %do.end60, %if.end39.err6.sink.split_crit_edge
  %.str.8.sink = phi ptr [ @.str.8, %do.end60 ], [ @.str.1, %if.end39.err6.sink.split_crit_edge ]
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.8.sink) #13
  br label %err6

err6:                                             ; preds = %err6.sink.split, %if.end68.err6_crit_edge
  %ret.0 = phi i32 [ %call69, %if.end68.err6_crit_edge ], [ -19, %err6.sink.split ]
  tail call void @usb_put_hcd(ptr noundef nonnull %call36) #10
  br label %err5

err5:                                             ; preds = %err6, %dev_name.exit.err5_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err6 ], [ -12, %dev_name.exit.err5_crit_edge ]
  tail call void @iounmap(ptr noundef nonnull %call30) #10
  br label %err4

err4:                                             ; preds = %err5, %if.end27.err4_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err5 ], [ -12, %if.end27.err4_crit_edge ]
  %37 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call3, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %38, i32 noundef 2) #10
  br label %err3

err3:                                             ; preds = %err4, %if.end22.err3_crit_edge
  %ret.3 = phi i32 [ %ret.2, %err4 ], [ -16, %if.end22.err3_crit_edge ]
  tail call void @iounmap(ptr noundef nonnull %call19) #10
  br label %err2

err2:                                             ; preds = %err3, %if.end16.err2_crit_edge
  %ret.4 = phi i32 [ %ret.3, %err3 ], [ -12, %if.end16.err2_crit_edge ]
  %39 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %call4, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %40, i32 noundef 2) #10
  br label %do.end78

do.end78:                                         ; preds = %err2, %if.end11.do.end78_crit_edge, %if.end2.do.end78_crit_edge, %if.end.do.end78_crit_edge
  %ret.5 = phi i32 [ %ret.4, %err2 ], [ -19, %if.end.do.end78_crit_edge ], [ -19, %if.end2.do.end78_crit_edge ], [ -16, %if.end11.do.end78_crit_edge ]
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %ret.5) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end78, %if.end72, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.5, %do.end78 ], [ 0, %if.end72 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp116x_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usb_debug_root to i32))
  %2 = load ptr, ptr @usb_debug_root, align 4
  %call.i = tail call ptr @debugfs_lookup(ptr noundef nonnull @hcd_name, ptr noundef %2) #10
  tail call void @debugfs_remove(ptr noundef %call.i) #10
  tail call void @usb_remove_hcd(ptr noundef nonnull %1) #10
  %data_reg = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 1, i32 0, i32 9, i32 1, i32 4
  %3 = ptrtoint ptr %data_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data_reg, align 4
  tail call void @iounmap(ptr noundef %4) #10
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #10
  %5 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call2, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %6, i32 noundef 2) #10
  %addr_reg = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 1, i32 0, i32 9, i32 1, i32 3
  %7 = ptrtoint ptr %addr_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %addr_reg, align 4
  tail call void @iounmap(ptr noundef %8) #10
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %9 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call3, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %10, i32 noundef 2) #10
  tail call void @usb_put_hcd(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @isp116x_suspend(ptr nocapture noundef readnone %dev, [1 x i32] %state.coerce) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @isp116x_resume(ptr nocapture noundef readnone %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp116x_irq(ptr noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  tail call void @_raw_spin_lock(ptr noundef %hcd_priv.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %0 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 -23296) #10, !srcloc !295
  %board.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %2 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board.i.i, align 4
  %delay.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %delay.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %delay.i.i, align 4
  %6 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcd, align 8
  tail call void %5(ptr noundef %7, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  tail call void @arm_heavy_mb() #10
  %data_reg.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4
  %8 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %9, i16 0) #10, !srcloc !295
  %10 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %delay.i3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %delay.i3.i, align 4
  %14 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hcd, align 8
  tail call void %13(ptr noundef %15, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %17, i16 9216) #10, !srcloc !295
  %18 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %board.i.i, align 4
  %delay.i.i72 = getelementptr inbounds %struct.isp116x_platform_data, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %delay.i.i72 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %delay.i.i72, align 4
  %22 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hcd, align 8
  tail call void %21(ptr noundef %23, i32 noundef 300) #10
  %24 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data_reg.i.i, align 4
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %25) #10, !srcloc !297
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %28 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i75 = getelementptr inbounds %struct.isp116x_platform_data, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %delay.i3.i75 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %delay.i3.i75, align 4
  %32 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hcd, align 8
  tail call void %31(ptr noundef %33, i32 noundef 150) #10
  %conv = zext i16 %27 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %34 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %35, i16 -23552) #10, !srcloc !295
  %36 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %board.i.i, align 4
  %delay.i.i78 = getelementptr inbounds %struct.isp116x_platform_data, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %delay.i.i78 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %delay.i.i78, align 4
  %40 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hcd, align 8
  tail call void %39(ptr noundef %41, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  tail call void @arm_heavy_mb() #10
  %42 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %43, i16 %26) #10, !srcloc !295
  %44 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i81 = getelementptr inbounds %struct.isp116x_platform_data, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %delay.i3.i81 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %delay.i3.i81, align 4
  %48 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hcd, align 8
  tail call void %47(ptr noundef %49, i32 noundef 150) #10
  %and = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %atl_active.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 8, i32 1
  %50 = ptrtoint ptr %atl_active.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %atl_active.i, align 4
  %tobool.not.i = icmp eq ptr %51, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %52 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %53, i16 11264) #10, !srcloc !295
  %54 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %board.i.i, align 4
  %delay.i.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %delay.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %delay.i.i.i, align 4
  %58 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hcd, align 8
  tail call void %57(ptr noundef %59, i32 noundef 300) #10
  %60 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data_reg.i.i, align 4
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %61) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %63 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %delay.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %delay.i3.i.i, align 4
  %67 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hcd, align 8
  tail call void %66(ptr noundef %68, i32 noundef 150) #10
  %69 = and i16 %62, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool1.not.i = icmp eq i16 %69, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %if.end3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end3.i:                                        ; preds = %if.end.i
  %atl_finishing.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 8, i32 3, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %atl_finishing.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %atl_finishing.i, i32 1, i32 3, i32 1) #10
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %atl_finishing.i, ptr %atl_finishing.i, i32 1, ptr elementtype(i32) %atl_finishing.i) #10, !srcloc !299
  %atl_last_dir.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 8, i32 3
  %71 = ptrtoint ptr %atl_last_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %atl_last_dir.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %cmp.i.i = icmp eq i32 %72, 2
  %atl_buflen.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 8, i32 1, i32 1
  %atl_bufshrt.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 8, i32 2
  %cond.in.i.i = select i1 %cmp.i.i, ptr %atl_buflen.i.i, ptr %atl_bufshrt.i.i
  %73 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %cond.i.i = load i32, ptr %cond.in.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %74 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %75, i16 -23552) #10, !srcloc !295
  %76 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %board.i.i, align 4
  %delay.i.i.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %delay.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %delay.i.i.i.i, align 4
  %80 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hcd, align 8
  tail call void %79(ptr noundef %81, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  tail call void @arm_heavy_mb() #10
  %82 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %83, i16 1024) #10, !srcloc !295
  %84 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %delay.i3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %delay.i3.i.i.i, align 4
  %88 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hcd, align 8
  tail call void %87(ptr noundef %89, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %90 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %91, i16 -24064) #10, !srcloc !295
  %92 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %board.i.i, align 4
  %delay.i.i55.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %delay.i.i55.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %delay.i.i55.i.i, align 4
  %96 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hcd, align 8
  tail call void %95(ptr noundef %97, i32 noundef 300) #10
  %conv.i.i.i = trunc i32 %cond.i.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  tail call void @arm_heavy_mb() #10
  %98 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i.i) #10
  %99 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %100, i16 %98) #10, !srcloc !295
  %101 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i58.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %delay.i3.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %delay.i3.i58.i.i, align 4
  %105 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hcd, align 8
  tail call void %104(ptr noundef %106, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %107 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %108, i16 16640) #10, !srcloc !295
  %109 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %board.i.i, align 4
  %delay.i.i11.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %delay.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %delay.i.i11.i, align 4
  %113 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %hcd, align 8
  tail call void %112(ptr noundef %114, i32 noundef 300) #10
  %115 = ptrtoint ptr %atl_active.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %ep.080.i.i = load ptr, ptr %atl_active.i, align 4
  %tobool.not81.i.i = icmp eq ptr %ep.080.i.i, null
  br i1 %tobool.not81.i.i, label %if.end3.i.do.body15.i.i_crit_edge, label %if.end3.i.for.body.i.i_crit_edge

if.end3.i.for.body.i.i_crit_edge:                 ; preds = %if.end3.i
  br label %for.body.i.i

if.end3.i.do.body15.i.i_crit_edge:                ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body15.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end3.i.for.body.i.i_crit_edge
  %ep.083.i.i = phi ptr [ %ep.0.pr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %ep.080.i.i, %if.end3.i.for.body.i.i_crit_edge ]
  %buflen.082.i.i = phi i32 [ %sub10.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %cond.i.i, %if.end3.i.for.body.i.i_crit_edge ]
  %ptd1.i.i = getelementptr inbounds %struct.isp116x_ep, ptr %ep.083.i.i, i32 0, i32 2
  %116 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data_reg.i.i, align 4
  %118 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %117) #10, !srcloc !297
  %119 = tail call i16 @llvm.bswap.i16(i16 %118) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %120 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %board.i.i, align 4
  %delay.i60.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %delay.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %delay.i60.i.i, align 4
  %124 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hcd, align 8
  tail call void %123(ptr noundef %125, i32 noundef 150) #10
  %126 = ptrtoint ptr %ptd1.i.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %119, ptr %ptd1.i.i, align 2
  %127 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %data_reg.i.i, align 4
  %129 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %128) #10, !srcloc !297
  %130 = tail call i16 @llvm.bswap.i16(i16 %129) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %131 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %board.i.i, align 4
  %delay.i64.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %delay.i64.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %delay.i64.i.i, align 4
  %135 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %hcd, align 8
  tail call void %134(ptr noundef %136, i32 noundef 150) #10
  %mps.i.i = getelementptr inbounds %struct.isp116x_ep, ptr %ep.083.i.i, i32 0, i32 2, i32 1
  %137 = ptrtoint ptr %mps.i.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %130, ptr %mps.i.i, align 2
  %138 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %data_reg.i.i, align 4
  %140 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %139) #10, !srcloc !297
  %141 = tail call i16 @llvm.bswap.i16(i16 %140) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %142 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %board.i.i, align 4
  %delay.i68.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %delay.i68.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %delay.i68.i.i, align 4
  %146 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %hcd, align 8
  tail call void %145(ptr noundef %147, i32 noundef 150) #10
  %len.i.i = getelementptr inbounds %struct.isp116x_ep, ptr %ep.083.i.i, i32 0, i32 2, i32 2
  %148 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %141, ptr %len.i.i, align 2
  %149 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %data_reg.i.i, align 4
  %151 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %150) #10, !srcloc !297
  %152 = tail call i16 @llvm.bswap.i16(i16 %151) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %153 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %board.i.i, align 4
  %delay.i72.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %delay.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %delay.i72.i.i, align 4
  %157 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %hcd, align 8
  tail call void %156(ptr noundef %158, i32 noundef 150) #10
  %faddr.i.i = getelementptr inbounds %struct.isp116x_ep, ptr %ep.083.i.i, i32 0, i32 2, i32 3
  %159 = ptrtoint ptr %faddr.i.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %152, ptr %faddr.i.i, align 2
  %sub.i.i = add i32 %buflen.082.i.i, -8
  %active.i.i = getelementptr inbounds %struct.isp116x_ep, ptr %ep.083.i.i, i32 0, i32 9
  %160 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %active.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %161, null
  br i1 %tobool5.not.i.i, label %lor.lhs.false.i.i, label %for.body.i.i.if.then.i.i_crit_edge

for.body.i.i.if.then.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %162 = ptrtoint ptr %atl_last_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %atl_last_dir.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %163)
  %cmp7.i.i = icmp eq i32 %163, 2
  br i1 %cmp7.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i.do.body15.i.i_crit_edge

lor.lhs.false.i.i.do.body15.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body15.i.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %for.body.i.i.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.isp116x_ep, ptr %ep.083.i.i, i32 0, i32 8
  %164 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %data.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.isp116x_ep, ptr %ep.083.i.i, i32 0, i32 7
  %166 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %length.i.i, align 2
  %conv.i.i = zext i16 %167 to i32
  %rem.i7879.i.i = and i16 %167, 3
  %rem.i78.zext.i.i = zext i16 %rem.i7879.i.i to i32
  %168 = ptrtoint ptr %165 to i32
  %and.i.i.i = and i32 %168, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %167)
  %cmp1474.i.i.i = icmp ugt i16 %167, 1
  br i1 %tobool.not.i.i.i, label %for.cond13.preheader.i.i.i, label %for.cond.preheader.i.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.then.i.i
  br i1 %cmp1474.i.i.i, label %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge, label %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge

for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i.i

for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i.i.i

for.cond13.preheader.i.i.i:                       ; preds = %if.then.i.i
  br i1 %cmp1474.i.i.i, label %for.cond13.preheader.i.i.i.for.body16.i.i.i_crit_edge, label %for.cond13.preheader.i.i.i.for.end21.i.i.i_crit_edge

for.cond13.preheader.i.i.i.for.end21.i.i.i_crit_edge: ; preds = %for.cond13.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end21.i.i.i

for.cond13.preheader.i.i.i.for.body16.i.i.i_crit_edge: ; preds = %for.cond13.preheader.i.i.i
  br label %for.body16.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge
  %dp.072.i.i.i = phi ptr [ %incdec.ptr6.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %165, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %len.addr.071.i.i.i = phi i32 [ %sub.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %conv.i.i, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %169 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %data_reg.i.i, align 4
  %171 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %170) #10, !srcloc !297
  %172 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %board.i.i, align 4
  %delay.i.i77.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %delay.i.i77.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %delay.i.i77.i.i, align 4
  %176 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %hcd, align 8
  tail call void %175(ptr noundef %177, i32 noundef 150) #10
  %conv2.i.i.i = trunc i16 %171 to i8
  %incdec.ptr.i.i.i = getelementptr i8, ptr %dp.072.i.i.i, i32 1
  %178 = ptrtoint ptr %dp.072.i.i.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %conv2.i.i.i, ptr %dp.072.i.i.i, align 1
  %179 = lshr i16 %171, 8
  %conv5.i.i.i = trunc i16 %179 to i8
  %incdec.ptr6.i.i.i = getelementptr i8, ptr %dp.072.i.i.i, i32 2
  %180 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %conv5.i.i.i, ptr %incdec.ptr.i.i.i, align 1
  %sub.i.i.i = add nsw i32 %len.addr.071.i.i.i, -2
  %cmp.i.i.i = icmp ugt i32 %len.addr.071.i.i.i, 3
  br i1 %cmp.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.for.end.i.i.i_crit_edge

for.body.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i.for.end.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge
  %len.addr.0.lcssa.i.i.i = phi i32 [ %conv.i.i, %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge ], [ %sub.i.i.i, %for.body.i.i.i.for.end.i.i.i_crit_edge ]
  %dp.0.lcssa.i.i.i = phi ptr [ %165, %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge ], [ %incdec.ptr6.i.i.i, %for.body.i.i.i.for.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.lcssa.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %len.addr.0.lcssa.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %for.end.i.i.i.if.end29.i.i.i_crit_edge, label %if.then8.i.i.i

for.end.i.i.i.if.end29.i.i.i_crit_edge:           ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i.i.i

if.then8.i.i.i:                                   ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %181 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %data_reg.i.i, align 4
  %183 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %182) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %extract107 = lshr i16 %183, 8
  %extract.t108 = trunc i16 %extract107 to i8
  br label %if.end29.sink.split.i.i.i

for.body16.i.i.i:                                 ; preds = %for.body16.i.i.i.for.body16.i.i.i_crit_edge, %for.cond13.preheader.i.i.i.for.body16.i.i.i_crit_edge
  %dp2.076.i.i.i = phi ptr [ %incdec.ptr18.i.i.i, %for.body16.i.i.i.for.body16.i.i.i_crit_edge ], [ %165, %for.cond13.preheader.i.i.i.for.body16.i.i.i_crit_edge ]
  %len.addr.175.i.i.i = phi i32 [ %sub20.i.i.i, %for.body16.i.i.i.for.body16.i.i.i_crit_edge ], [ %conv.i.i, %for.cond13.preheader.i.i.i.for.body16.i.i.i_crit_edge ]
  %184 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %data_reg.i.i, align 4
  %186 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %185) #10, !srcloc !297
  %187 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %board.i.i, align 4
  %delay.i60.i.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %188, i32 0, i32 1
  %189 = ptrtoint ptr %delay.i60.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %delay.i60.i.i.i, align 4
  %191 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %hcd, align 8
  tail call void %190(ptr noundef %192, i32 noundef 150) #10
  %193 = tail call i16 @llvm.bswap.i16(i16 %186) #10
  %incdec.ptr18.i.i.i = getelementptr i16, ptr %dp2.076.i.i.i, i32 1
  %194 = ptrtoint ptr %dp2.076.i.i.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %193, ptr %dp2.076.i.i.i, align 2
  %sub20.i.i.i = add nsw i32 %len.addr.175.i.i.i, -2
  %cmp14.i.i.i = icmp ugt i32 %len.addr.175.i.i.i, 3
  br i1 %cmp14.i.i.i, label %for.body16.i.i.i.for.body16.i.i.i_crit_edge, label %for.body16.i.i.i.for.end21.i.i.i_crit_edge

for.body16.i.i.i.for.end21.i.i.i_crit_edge:       ; preds = %for.body16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end21.i.i.i

for.body16.i.i.i.for.body16.i.i.i_crit_edge:      ; preds = %for.body16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body16.i.i.i

for.end21.i.i.i:                                  ; preds = %for.body16.i.i.i.for.end21.i.i.i_crit_edge, %for.cond13.preheader.i.i.i.for.end21.i.i.i_crit_edge
  %len.addr.1.lcssa.i.i.i = phi i32 [ %conv.i.i, %for.cond13.preheader.i.i.i.for.end21.i.i.i_crit_edge ], [ %sub20.i.i.i, %for.body16.i.i.i.for.end21.i.i.i_crit_edge ]
  %dp2.0.lcssa.i.i.i = phi ptr [ %165, %for.cond13.preheader.i.i.i.for.end21.i.i.i_crit_edge ], [ %incdec.ptr18.i.i.i, %for.body16.i.i.i.for.end21.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.lcssa.i.i.i)
  %tobool22.not.i.i.i = icmp eq i32 %len.addr.1.lcssa.i.i.i, 0
  br i1 %tobool22.not.i.i.i, label %for.end21.i.i.i.if.end29.i.i.i_crit_edge, label %if.then23.i.i.i

for.end21.i.i.i.if.end29.i.i.i_crit_edge:         ; preds = %for.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i.i.i

if.then23.i.i.i:                                  ; preds = %for.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %195 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %data_reg.i.i, align 4
  %197 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %196) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %extract105 = lshr i16 %197, 8
  %extract.t106 = trunc i16 %extract105 to i8
  br label %if.end29.sink.split.i.i.i

if.end29.sink.split.i.i.i:                        ; preds = %if.then23.i.i.i, %if.then8.i.i.i
  %.sink.off8 = phi i8 [ %extract.t106, %if.then23.i.i.i ], [ %extract.t108, %if.then8.i.i.i ]
  %dp2.0.lcssa.sink.i.i.i = phi ptr [ %dp2.0.lcssa.i.i.i, %if.then23.i.i.i ], [ %dp.0.lcssa.i.i.i, %if.then8.i.i.i ]
  %198 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %board.i.i, align 4
  %delay.i64.i.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %delay.i64.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %delay.i64.i.i.i, align 4
  %202 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %hcd, align 8
  tail call void %201(ptr noundef %203, i32 noundef 150) #10
  %204 = ptrtoint ptr %dp2.0.lcssa.sink.i.i.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %.sink.off8, ptr %dp2.0.lcssa.sink.i.i.i, align 1
  br label %if.end29.i.i.i

if.end29.i.i.i:                                   ; preds = %if.end29.sink.split.i.i.i, %for.end21.i.i.i.if.end29.i.i.i_crit_edge, %for.end.i.i.i.if.end29.i.i.i_crit_edge
  %rem.off.i.i.i = add nsw i32 %rem.i78.zext.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rem.off.i.i.i)
  %switch.i.i.i = icmp ult i32 %rem.off.i.i.i, 2
  br i1 %switch.i.i.i, label %if.then34.i.i.i, label %if.end29.i.i.i.for.inc.i.i_crit_edge

if.end29.i.i.i.for.inc.i.i_crit_edge:             ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then34.i.i.i:                                  ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %205 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %data_reg.i.i, align 4
  %207 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %206) #10, !srcloc !297
  %208 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %board.i.i, align 4
  %delay.i68.i.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %209, i32 0, i32 1
  %210 = ptrtoint ptr %delay.i68.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %delay.i68.i.i.i, align 4
  %212 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %hcd, align 8
  tail call void %211(ptr noundef %213, i32 noundef 150) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then34.i.i.i, %if.end29.i.i.i.for.inc.i.i_crit_edge
  %214 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %length.i.i, align 2
  %conv9.i.i = zext i16 %215 to i32
  %add.i.i = add nuw nsw i32 %conv9.i.i, 3
  %and.i.i = and i32 %add.i.i, 131068
  %sub10.i.i = sub i32 %sub.i.i, %and.i.i
  %216 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %ep.0.pr.i.i = load ptr, ptr %active.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %ep.0.pr.i.i, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.do.body15.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.do.body15.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body15.i.i

do.body15.i.i:                                    ; preds = %for.inc.i.i.do.body15.i.i_crit_edge, %lor.lhs.false.i.i.do.body15.i.i_crit_edge, %if.end3.i.do.body15.i.i_crit_edge
  %buflen.0.lcssa.i.i = phi i32 [ %cond.i.i, %if.end3.i.do.body15.i.i_crit_edge ], [ %sub.i.i, %lor.lhs.false.i.i.do.body15.i.i_crit_edge ], [ %sub10.i.i, %for.inc.i.i.do.body15.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen.0.lcssa.i.i)
  %tobool16.not.i.i = icmp eq i32 %buflen.0.lcssa.i.i, 0
  br i1 %tobool16.not.i.i, label %unpack_fifo.exit.i, label %do.body20.i.i, !prof !300

do.body20.i.i:                                    ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/host/isp116x-hcd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 223, 0\0A.popsection", ""() #10, !srcloc !301
  unreachable

unpack_fifo.exit.i:                               ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @postproc_atl_queue(ptr noundef %hcd_priv.i) #10
  %call.i.i10.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %atl_finishing.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %atl_finishing.i, i32 1, i32 3, i32 1) #10
  %217 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %atl_finishing.i, ptr %atl_finishing.i, i32 1, ptr elementtype(i32) %atl_finishing.i) #10, !srcloc !302
  br label %if.end

if.end:                                           ; preds = %unpack_fifo.exit.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %if.then.if.end_crit_edge ], [ 1, %if.end.i.if.end_crit_edge ], [ 1, %unpack_fifo.exit.i ]
  %and4 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end37_crit_edge, label %if.then6

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then6:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %218 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %219, i16 768) #10, !srcloc !295
  %220 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %board.i.i, align 4
  %delay.i.i84 = getelementptr inbounds %struct.isp116x_platform_data, ptr %221, i32 0, i32 1
  %222 = ptrtoint ptr %delay.i.i84 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %delay.i.i84, align 4
  %224 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %hcd, align 8
  tail call void %223(ptr noundef %225, i32 noundef 300) #10
  %226 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %data_reg.i.i, align 4
  %228 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %227) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %229 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i87 = getelementptr inbounds %struct.isp116x_platform_data, ptr %230, i32 0, i32 1
  %231 = ptrtoint ptr %delay.i3.i87 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %delay.i3.i87, align 4
  %233 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %hcd, align 8
  tail call void %232(ptr noundef %234, i32 noundef 150) #10
  %235 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %data_reg.i.i, align 4
  %237 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %236) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %238 = zext i16 %237 to i32
  %239 = zext i16 %228 to i32
  %240 = shl nuw i32 %239, 16
  %241 = or i32 %240, %238
  %242 = tail call i32 @llvm.bswap.i32(i32 %241) #10
  %243 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %244, i32 0, i32 1
  %245 = ptrtoint ptr %delay11.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %delay11.i.i, align 4
  %247 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %hcd, align 8
  tail call void %246(ptr noundef %248, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %249 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %250, i16 -32000) #10, !srcloc !295
  %251 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %board.i.i, align 4
  %delay.i.i90 = getelementptr inbounds %struct.isp116x_platform_data, ptr %252, i32 0, i32 1
  %253 = ptrtoint ptr %delay.i.i90 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %delay.i.i90, align 4
  %255 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %hcd, align 8
  tail call void %254(ptr noundef %256, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  tail call void @arm_heavy_mb() #10
  %257 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %258, i16 %228) #10, !srcloc !295
  %259 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %board.i.i, align 4
  %delay.i4.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %260, i32 0, i32 1
  %261 = ptrtoint ptr %delay.i4.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %delay.i4.i, align 4
  %263 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %hcd, align 8
  tail call void %262(ptr noundef %264, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  tail call void @arm_heavy_mb() #10
  %shr.i.i = lshr i32 %242, 16
  %conv3.i.i = trunc i32 %shr.i.i to i16
  %265 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i) #10
  %266 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %267, i16 %265) #10, !srcloc !295
  %268 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %board.i.i, align 4
  %delay6.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %269, i32 0, i32 1
  %270 = ptrtoint ptr %delay6.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %delay6.i.i, align 4
  %272 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %hcd, align 8
  tail call void %271(ptr noundef %273, i32 noundef 150) #10
  %and8 = and i32 %242, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end12, label %cleanup

if.end12:                                         ; preds = %if.then6
  %and13 = and i32 %242, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end19_crit_edge, label %if.then15

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %rh_timer = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %274 = load volatile i32, ptr @jiffies, align 128
  %add17 = add i32 %274, 3
  %call18 = tail call i32 @mod_timer(ptr noundef %rh_timer, i32 noundef %add17) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end12.if.end19_crit_edge
  %and20 = and i32 %242, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.cleanup.thread_crit_edge, label %do.body23

if.end19.cleanup.thread_crit_edge:                ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

do.body23:                                        ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_irq.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_irq, %if.then29)) #10
          to label %do.end32 [label %if.then29], !srcloc !307

if.then29:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_irq.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.17) #10
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %do.body23
  tail call void @usb_hcd_resume_root_hub(ptr noundef %hcd) #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end32, %if.end19.cleanup.thread_crit_edge
  %and35 = and i16 %27, -17
  br label %if.end37

cleanup:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %275 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 0, ptr %state, align 4
  tail call void @usb_hc_died(ptr noundef %hcd) #10
  br label %done

if.end37:                                         ; preds = %cleanup.thread, %if.end.if.end37_crit_edge
  %ret.2 = phi i32 [ %ret.0, %if.end.if.end37_crit_edge ], [ 1, %cleanup.thread ]
  %irqstat.1 = phi i16 [ %27, %if.end.if.end37_crit_edge ], [ %and35, %cleanup.thread ]
  %276 = and i16 %irqstat.1, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %276)
  %tobool40.not = icmp eq i16 %276, 0
  br i1 %tobool40.not, label %if.end37.if.end42_crit_edge, label %if.then41

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @start_atl_transfers(ptr noundef %hcd_priv.i)
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end37.if.end42_crit_edge
  %irqenb = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 3
  %277 = ptrtoint ptr %irqenb to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %irqenb, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %279 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %280, i16 -23296) #10, !srcloc !295
  %281 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %board.i.i, align 4
  %delay.i.i95 = getelementptr inbounds %struct.isp116x_platform_data, ptr %282, i32 0, i32 1
  %283 = ptrtoint ptr %delay.i.i95 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %delay.i.i95, align 4
  %285 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %hcd, align 8
  tail call void %284(ptr noundef %286, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  tail call void @arm_heavy_mb() #10
  %287 = tail call i16 @llvm.bswap.i16(i16 %278) #10
  %288 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %289, i16 %287) #10, !srcloc !295
  %290 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i98 = getelementptr inbounds %struct.isp116x_platform_data, ptr %291, i32 0, i32 1
  %292 = ptrtoint ptr %delay.i3.i98 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %delay.i3.i98, align 4
  %294 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %hcd, align 8
  tail call void %293(ptr noundef %295, i32 noundef 150) #10
  br label %done

done:                                             ; preds = %if.end42, %cleanup
  %ret.3 = phi i32 [ 1, %cleanup ], [ %ret.2, %if.end42 ]
  tail call void @_raw_spin_unlock(ptr noundef %hcd_priv.i) #10
  ret i32 %ret.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp116x_reset(ptr noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %call1 = tail call fastcc i32 @isp116x_sw_reset(ptr noundef %hcd_priv.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 2
  %addr_reg.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %board.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %data_reg.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %while.body, label %do.end

while.body:                                       ; preds = %while.cond
  tail call void @msleep(i32 noundef 4) #10
  tail call void @_raw_spin_lock_irq(ptr noundef %hcd_priv.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %2 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %3, i16 9216) #10, !srcloc !295
  %4 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board.i.i, align 4
  %delay.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %delay.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %delay.i.i, align 4
  %8 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hcd, align 8
  tail call void %7(ptr noundef %9, i32 noundef 300) #10
  %10 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data_reg.i.i, align 4
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %13 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %delay.i3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %delay.i3.i, align 4
  %17 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hcd, align 8
  tail call void %16(ptr noundef %18, i32 noundef 150) #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %hcd_priv.i) #10
  %19 = and i16 %12, 16384
  %tobool6.not = icmp eq i16 %19, 0
  br i1 %tobool6.not, label %while.body.while.cond_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

do.end:                                           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef 15) #13
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ -19, %do.end ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp116x_start(ptr noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %board1 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %0 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board1, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %2 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %3, i16 -23552) #10, !srcloc !295
  %4 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board1, align 4
  %delay.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %delay.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %delay.i.i, align 4
  %8 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hcd, align 8
  tail call void %7(ptr noundef %9, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  tail call void @arm_heavy_mb() #10
  %data_reg.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4
  %10 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %11, i16 -256) #10, !srcloc !295
  %12 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %board1, align 4
  %delay.i3.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %delay.i3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %delay.i3.i, align 4
  %16 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hcd, align 8
  tail call void %15(ptr noundef %17, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %19, i16 -23296) #10, !srcloc !295
  %20 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %board1, align 4
  %delay.i.i154 = getelementptr inbounds %struct.isp116x_platform_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %delay.i.i154 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %delay.i.i154, align 4
  %24 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hcd, align 8
  tail call void %23(ptr noundef %25, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  tail call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %27, i16 0) #10, !srcloc !295
  %28 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %board1, align 4
  %delay.i3.i157 = getelementptr inbounds %struct.isp116x_platform_data, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %delay.i3.i157 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %delay.i3.i157, align 4
  %32 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hcd, align 8
  tail call void %31(ptr noundef %33, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %34 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %35, i16 9984) #10, !srcloc !295
  %36 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %board1, align 4
  %delay.i.i160 = getelementptr inbounds %struct.isp116x_platform_data, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %delay.i.i160 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %delay.i.i160, align 4
  %40 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hcd, align 8
  tail call void %39(ptr noundef %41, i32 noundef 300) #10
  %42 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data_reg.i.i, align 4
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %43) #10, !srcloc !297
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %46 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %board1, align 4
  %delay.i3.i163 = getelementptr inbounds %struct.isp116x_platform_data, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %delay.i3.i163 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %delay.i3.i163, align 4
  %50 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hcd, align 8
  tail call void %49(ptr noundef %51, i32 noundef 150) #10
  %conv8 = zext i16 %45 to i32
  %and = and i32 %conv8, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 24832, i32 %and)
  %cmp9.not = icmp eq i32 %and, 24832
  br i1 %cmp9.not, label %if.end, label %do.end13

do.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %conv8) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %uses_new_polling = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 14
  %52 = ptrtoint ptr %uses_new_polling to i32
  call void @__asan_load2_noabort(i32 %52)
  %bf.load = load i16, ptr %uses_new_polling, align 4
  %bf.set = or i16 %bf.load, 1024
  store i16 %bf.set, ptr %uses_new_polling, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %53 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %54, i16 -22016) #10, !srcloc !295
  %55 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %board1, align 4
  %delay.i.i166 = getelementptr inbounds %struct.isp116x_platform_data, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %delay.i.i166 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %delay.i.i166, align 4
  %59 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hcd, align 8
  tail call void %58(ptr noundef %60, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  tail call void @arm_heavy_mb() #10
  %61 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %62, i16 0) #10, !srcloc !295
  %63 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %board1, align 4
  %delay.i3.i169 = getelementptr inbounds %struct.isp116x_platform_data, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %delay.i3.i169 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %delay.i3.i169, align 4
  %67 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hcd, align 8
  tail call void %66(ptr noundef %68, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %69 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %70, i16 -21760) #10, !srcloc !295
  %71 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %board1, align 4
  %delay.i.i172 = getelementptr inbounds %struct.isp116x_platform_data, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %delay.i.i172 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %delay.i.i172, align 4
  %75 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hcd, align 8
  tail call void %74(ptr noundef %76, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  tail call void @arm_heavy_mb() #10
  %77 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %78, i16 16) #10, !srcloc !295
  %79 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %board1, align 4
  %delay.i3.i175 = getelementptr inbounds %struct.isp116x_platform_data, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %delay.i3.i175 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %delay.i3.i175, align 4
  %83 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hcd, align 8
  tail call void %82(ptr noundef %84, i32 noundef 150) #10
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load17 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load17)
  %tobool.not = icmp sgt i8 %bf.load17, -1
  %spec.select = select i1 %tobool.not, i16 9, i16 4105
  %86 = and i8 %bf.load17, 8
  %87 = zext i8 %86 to i16
  %88 = shl nuw nsw i16 %87, 8
  %89 = or i16 %88, %spec.select
  %90 = and i8 %bf.load17, 64
  %91 = zext i8 %90 to i16
  %92 = shl nuw nsw i16 %91, 4
  %93 = or i16 %89, %92
  %94 = lshr i8 %bf.load17, 3
  %95 = and i8 %94, 4
  %96 = zext i8 %95 to i16
  %97 = or i16 %93, %96
  %98 = and i8 %94, 2
  %99 = zext i8 %98 to i16
  %100 = or i16 %97, %99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %101 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %102, i16 -24576) #10, !srcloc !295
  %103 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %board1, align 4
  %delay.i.i178 = getelementptr inbounds %struct.isp116x_platform_data, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %delay.i.i178 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %delay.i.i178, align 4
  %107 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hcd, align 8
  tail call void %106(ptr noundef %108, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  tail call void @arm_heavy_mb() #10
  %109 = tail call i16 @llvm.bswap.i16(i16 %100) #10
  %110 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %111, i16 %109) #10, !srcloc !295
  %112 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %board1, align 4
  %delay.i3.i181 = getelementptr inbounds %struct.isp116x_platform_data, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %delay.i3.i181 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %delay.i3.i181, align 4
  %116 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hcd, align 8
  tail call void %115(ptr noundef %117, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %118 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %119, i16 -28160) #10, !srcloc !295
  %120 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %board1, align 4
  %delay.i.i184 = getelementptr inbounds %struct.isp116x_platform_data, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %delay.i.i184 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %delay.i.i184, align 4
  %124 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hcd, align 8
  tail call void %123(ptr noundef %125, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  tail call void @arm_heavy_mb() #10
  %126 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %127, i16 9) #10, !srcloc !295
  %128 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %board1, align 4
  %delay.i4.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %delay.i4.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %delay.i4.i, align 4
  %132 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %hcd, align 8
  tail call void %131(ptr noundef %133, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  tail call void @arm_heavy_mb() #10
  %134 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %135, i16 25) #10, !srcloc !295
  %136 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %board1, align 4
  %delay6.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %delay6.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %delay6.i.i, align 4
  %140 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hcd, align 8
  tail call void %139(ptr noundef %141, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %142 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %143, i16 4608) #10, !srcloc !295
  %144 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %board1, align 4
  %delay.i.i189 = getelementptr inbounds %struct.isp116x_platform_data, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %delay.i.i189 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %delay.i.i189, align 4
  %148 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %hcd, align 8
  tail call void %147(ptr noundef %149, i32 noundef 300) #10
  %150 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %data_reg.i.i, align 4
  %152 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %151) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %153 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %board1, align 4
  %delay.i3.i192 = getelementptr inbounds %struct.isp116x_platform_data, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %delay.i3.i192 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %delay.i3.i192, align 4
  %157 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %hcd, align 8
  tail call void %156(ptr noundef %158, i32 noundef 150) #10
  %159 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %data_reg.i.i, align 4
  %161 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %160) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %162 = zext i16 %161 to i32
  %163 = zext i16 %152 to i32
  %164 = shl nuw i32 %163, 16
  %165 = or i32 %164, %162
  %166 = tail call i32 @llvm.bswap.i32(i32 %165) #10
  %167 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %board1, align 4
  %delay11.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %delay11.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %delay11.i.i, align 4
  %171 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %hcd, align 8
  tail call void %170(ptr noundef %172, i32 noundef 150) #10
  %rhdesca = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 3, i32 1
  %173 = ptrtoint ptr %rhdesca to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %166, ptr %rhdesca, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %174 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %175, i16 -27904) #10, !srcloc !295
  %176 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %board1, align 4
  %delay.i.i195 = getelementptr inbounds %struct.isp116x_platform_data, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %delay.i.i195 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %delay.i.i195, align 4
  %180 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %hcd, align 8
  tail call void %179(ptr noundef %181, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  tail call void @arm_heavy_mb() #10
  %182 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %183, i16 0) #10, !srcloc !295
  %184 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %board1, align 4
  %delay.i4.i198 = getelementptr inbounds %struct.isp116x_platform_data, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %delay.i4.i198 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %delay.i4.i198, align 4
  %188 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %hcd, align 8
  tail call void %187(ptr noundef %189, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  tail call void @arm_heavy_mb() #10
  %190 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %191, i16 -1) #10, !srcloc !295
  %192 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %board1, align 4
  %delay6.i.i199 = getelementptr inbounds %struct.isp116x_platform_data, ptr %193, i32 0, i32 1
  %194 = ptrtoint ptr %delay6.i.i199 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %delay6.i.i199, align 4
  %196 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %hcd, align 8
  tail call void %195(ptr noundef %197, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %198 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %199, i16 4864) #10, !srcloc !295
  %200 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %board1, align 4
  %delay.i.i202 = getelementptr inbounds %struct.isp116x_platform_data, ptr %201, i32 0, i32 1
  %202 = ptrtoint ptr %delay.i.i202 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %delay.i.i202, align 4
  %204 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %hcd, align 8
  tail call void %203(ptr noundef %205, i32 noundef 300) #10
  %206 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %data_reg.i.i, align 4
  %208 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %207) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %209 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %board1, align 4
  %delay.i3.i205 = getelementptr inbounds %struct.isp116x_platform_data, ptr %210, i32 0, i32 1
  %211 = ptrtoint ptr %delay.i3.i205 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %delay.i3.i205, align 4
  %213 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %hcd, align 8
  tail call void %212(ptr noundef %214, i32 noundef 150) #10
  %215 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %data_reg.i.i, align 4
  %217 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %216) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %218 = zext i16 %217 to i32
  %219 = zext i16 %208 to i32
  %220 = shl nuw i32 %219, 16
  %221 = or i32 %220, %218
  %222 = tail call i32 @llvm.bswap.i32(i32 %221) #10
  %223 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %board1, align 4
  %delay11.i.i206 = getelementptr inbounds %struct.isp116x_platform_data, ptr %224, i32 0, i32 1
  %225 = ptrtoint ptr %delay11.i.i206 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %delay11.i.i206, align 4
  %227 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %hcd, align 8
  tail call void %226(ptr noundef %228, i32 noundef 150) #10
  %rhdescb = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 4
  %229 = ptrtoint ptr %rhdescb to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %222, ptr %rhdescb, align 4
  %230 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %230)
  %bf.load56 = load i8, ptr %1, align 4
  %231 = and i8 %bf.load56, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool60.not = icmp eq i8 %231, 0
  br i1 %tobool60.not, label %if.end.if.end69_crit_edge, label %if.then61

if.end.if.end69_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then61:                                        ; preds = %if.end
  %232 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %hcd, align 8
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %233, i32 0, i32 12, i32 1
  %234 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %234)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.then61.if.end69_crit_edge, label %if.then63

if.then61.if.end69_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then63:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %call66 = tail call i32 @device_init_wakeup(ptr noundef %233, i1 noundef zeroext true) #10
  br label %if.end69

if.end69:                                         ; preds = %if.then63, %if.then61.if.end69_crit_edge, %if.end.if.end69_crit_edge
  %val.5 = phi i16 [ 0, %if.end.if.end69_crit_edge ], [ 128, %if.then63 ], [ 128, %if.then61.if.end69_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %235 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %236, i16 -27648) #10, !srcloc !295
  %237 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %board1, align 4
  %delay.i.i209 = getelementptr inbounds %struct.isp116x_platform_data, ptr %238, i32 0, i32 1
  %239 = ptrtoint ptr %delay.i.i209 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %delay.i.i209, align 4
  %241 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %hcd, align 8
  tail call void %240(ptr noundef %242, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  tail call void @arm_heavy_mb() #10
  %243 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %244, i16 %val.5) #10, !srcloc !295
  %245 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %board1, align 4
  %delay.i4.i212 = getelementptr inbounds %struct.isp116x_platform_data, ptr %246, i32 0, i32 1
  %247 = ptrtoint ptr %delay.i4.i212 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %delay.i4.i212, align 4
  %249 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %hcd, align 8
  tail call void %248(ptr noundef %250, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  tail call void @arm_heavy_mb() #10
  %251 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %252, i16 0) #10, !srcloc !295
  %253 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %board1, align 4
  %delay6.i.i213 = getelementptr inbounds %struct.isp116x_platform_data, ptr %254, i32 0, i32 1
  %255 = ptrtoint ptr %delay6.i.i213 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %delay6.i.i213, align 4
  %257 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %hcd, align 8
  tail call void %256(ptr noundef %258, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %259 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %260, i16 5120) #10, !srcloc !295
  %261 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %board1, align 4
  %delay.i.i216 = getelementptr inbounds %struct.isp116x_platform_data, ptr %262, i32 0, i32 1
  %263 = ptrtoint ptr %delay.i.i216 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %delay.i.i216, align 4
  %265 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %hcd, align 8
  tail call void %264(ptr noundef %266, i32 noundef 300) #10
  %267 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %data_reg.i.i, align 4
  %269 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %268) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %270 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %board1, align 4
  %delay.i3.i219 = getelementptr inbounds %struct.isp116x_platform_data, ptr %271, i32 0, i32 1
  %272 = ptrtoint ptr %delay.i3.i219 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %delay.i3.i219, align 4
  %274 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %hcd, align 8
  tail call void %273(ptr noundef %275, i32 noundef 150) #10
  %276 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %data_reg.i.i, align 4
  %278 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %277) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %279 = zext i16 %278 to i32
  %280 = zext i16 %269 to i32
  %281 = shl nuw i32 %280, 16
  %282 = or i32 %281, %279
  %283 = tail call i32 @llvm.bswap.i32(i32 %282) #10
  %284 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %board1, align 4
  %delay11.i.i220 = getelementptr inbounds %struct.isp116x_platform_data, ptr %285, i32 0, i32 1
  %286 = ptrtoint ptr %delay11.i.i220 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %delay11.i.i220, align 4
  %288 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %hcd, align 8
  tail call void %287(ptr noundef %289, i32 noundef 150) #10
  %rhstatus = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 5
  %290 = ptrtoint ptr %rhstatus to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %283, ptr %rhstatus, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %291 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %292, i16 -29440) #10, !srcloc !295
  %293 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %board1, align 4
  %delay.i.i223 = getelementptr inbounds %struct.isp116x_platform_data, ptr %294, i32 0, i32 1
  %295 = ptrtoint ptr %delay.i.i223 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %delay.i.i223, align 4
  %297 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %hcd, align 8
  tail call void %296(ptr noundef %298, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  tail call void @arm_heavy_mb() #10
  %299 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %300, i16 -8402) #10, !srcloc !295
  %301 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %board1, align 4
  %delay.i4.i226 = getelementptr inbounds %struct.isp116x_platform_data, ptr %302, i32 0, i32 1
  %303 = ptrtoint ptr %delay.i4.i226 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %delay.i4.i226, align 4
  %305 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %hcd, align 8
  tail call void %304(ptr noundef %306, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  tail call void @arm_heavy_mb() #10
  %307 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %308, i16 30759) #10, !srcloc !295
  %309 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %board1, align 4
  %delay6.i.i227 = getelementptr inbounds %struct.isp116x_platform_data, ptr %310, i32 0, i32 1
  %311 = ptrtoint ptr %delay6.i.i227 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %delay6.i.i227, align 4
  %313 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %hcd, align 8
  tail call void %312(ptr noundef %314, i32 noundef 150) #10
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %315 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 1, ptr %state, align 4
  %intenb = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 2
  %316 = ptrtoint ptr %intenb to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 -2147483568, ptr %intenb, align 4
  %317 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %317)
  %bf.load71 = load i8, ptr %1, align 4
  %318 = and i8 %bf.load71, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %318)
  %tobool75.not = icmp eq i8 %318, 0
  %spec.store.select = select i1 %tobool75.not, i32 -2147483568, i32 -2147483560
  %319 = ptrtoint ptr %intenb to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %spec.store.select, ptr %intenb, align 4
  %irqenb = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 3
  %320 = ptrtoint ptr %irqenb to i32
  call void @__asan_store2_noabort(i32 %320)
  store i16 18, ptr %irqenb, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %321 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %322, i16 -31744) #10, !srcloc !295
  %323 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %board1, align 4
  %delay.i.i230 = getelementptr inbounds %struct.isp116x_platform_data, ptr %324, i32 0, i32 1
  %325 = ptrtoint ptr %delay.i.i230 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %delay.i.i230, align 4
  %327 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %hcd, align 8
  tail call void %326(ptr noundef %328, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  tail call void @arm_heavy_mb() #10
  %conv.i2.i232 = trunc i32 %spec.store.select to i16
  %329 = shl nuw nsw i16 %conv.i2.i232, 8
  %330 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %331, i16 %329) #10, !srcloc !295
  %332 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %board1, align 4
  %delay.i4.i234 = getelementptr inbounds %struct.isp116x_platform_data, ptr %333, i32 0, i32 1
  %334 = ptrtoint ptr %delay.i4.i234 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %delay.i4.i234, align 4
  %336 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %hcd, align 8
  tail call void %335(ptr noundef %337, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  tail call void @arm_heavy_mb() #10
  %338 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %339, i16 128) #10, !srcloc !295
  %340 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %board1, align 4
  %delay6.i.i235 = getelementptr inbounds %struct.isp116x_platform_data, ptr %341, i32 0, i32 1
  %342 = ptrtoint ptr %delay6.i.i235 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %delay6.i.i235, align 4
  %344 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %hcd, align 8
  tail call void %343(ptr noundef %345, i32 noundef 150) #10
  %346 = ptrtoint ptr %irqenb to i32
  call void @__asan_load2_noabort(i32 %346)
  %347 = load i16, ptr %irqenb, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %348 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %349, i16 -23296) #10, !srcloc !295
  %350 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %board1, align 4
  %delay.i.i238 = getelementptr inbounds %struct.isp116x_platform_data, ptr %351, i32 0, i32 1
  %352 = ptrtoint ptr %delay.i.i238 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %delay.i.i238, align 4
  %354 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %hcd, align 8
  tail call void %353(ptr noundef %355, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  tail call void @arm_heavy_mb() #10
  %356 = tail call i16 @llvm.bswap.i16(i16 %347) #10
  %357 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %358, i16 %356) #10, !srcloc !295
  %359 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %board1, align 4
  %delay.i3.i241 = getelementptr inbounds %struct.isp116x_platform_data, ptr %360, i32 0, i32 1
  %361 = ptrtoint ptr %delay.i3.i241 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %delay.i3.i241, align 4
  %363 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %hcd, align 8
  tail call void %362(ptr noundef %364, i32 noundef 150) #10
  %365 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %365)
  %bf.load83 = load i8, ptr %1, align 4
  %366 = and i8 %bf.load83, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %366)
  %tobool87.not = icmp eq i8 %366, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %367 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %368, i16 -32512) #10, !srcloc !295
  %369 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %board1, align 4
  %delay.i.i244 = getelementptr inbounds %struct.isp116x_platform_data, ptr %370, i32 0, i32 1
  %371 = ptrtoint ptr %delay.i.i244 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %delay.i.i244, align 4
  %373 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %hcd, align 8
  tail call void %372(ptr noundef %374, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  tail call void @arm_heavy_mb() #10
  %conv.i2.i246 = select i1 %tobool87.not, i16 128, i16 1152
  %375 = tail call i16 @llvm.bswap.i16(i16 %conv.i2.i246) #10
  %376 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %377, i16 %375) #10, !srcloc !295
  %378 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %board1, align 4
  %delay.i4.i248 = getelementptr inbounds %struct.isp116x_platform_data, ptr %379, i32 0, i32 1
  %380 = ptrtoint ptr %delay.i4.i248 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %delay.i4.i248, align 4
  %382 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %hcd, align 8
  tail call void %381(ptr noundef %383, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  tail call void @arm_heavy_mb() #10
  %384 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %385, i16 0) #10, !srcloc !295
  %386 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %board1, align 4
  %delay6.i.i249 = getelementptr inbounds %struct.isp116x_platform_data, ptr %387, i32 0, i32 1
  %388 = ptrtoint ptr %delay6.i.i249 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %delay6.i.i249, align 4
  %390 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %hcd, align 8
  tail call void %389(ptr noundef %391, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %392 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %393, i16 -27392) #10, !srcloc !295
  %394 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %board1, align 4
  %delay.i.i252 = getelementptr inbounds %struct.isp116x_platform_data, ptr %395, i32 0, i32 1
  %396 = ptrtoint ptr %delay.i.i252 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %delay.i.i252, align 4
  %398 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %hcd, align 8
  tail call void %397(ptr noundef %399, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  tail call void @arm_heavy_mb() #10
  %400 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %401, i16 256) #10, !srcloc !295
  %402 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %board1, align 4
  %delay.i4.i255 = getelementptr inbounds %struct.isp116x_platform_data, ptr %403, i32 0, i32 1
  %404 = ptrtoint ptr %delay.i4.i255 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %delay.i4.i255, align 4
  %406 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %hcd, align 8
  tail call void %405(ptr noundef %407, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  tail call void @arm_heavy_mb() #10
  %408 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %409, i16 0) #10, !srcloc !295
  %410 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %board1, align 4
  %delay6.i.i256 = getelementptr inbounds %struct.isp116x_platform_data, ptr %411, i32 0, i32 1
  %412 = ptrtoint ptr %delay6.i.i256 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %delay6.i.i256, align 4
  %414 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %hcd, align 8
  tail call void %413(ptr noundef %415, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %416 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %417, i16 -27136) #10, !srcloc !295
  %418 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %board1, align 4
  %delay.i.i259 = getelementptr inbounds %struct.isp116x_platform_data, ptr %419, i32 0, i32 1
  %420 = ptrtoint ptr %delay.i.i259 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %delay.i.i259, align 4
  %422 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %hcd, align 8
  tail call void %421(ptr noundef %423, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  tail call void @arm_heavy_mb() #10
  %424 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %425, i16 256) #10, !srcloc !295
  %426 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %board1, align 4
  %delay.i4.i262 = getelementptr inbounds %struct.isp116x_platform_data, ptr %427, i32 0, i32 1
  %428 = ptrtoint ptr %delay.i4.i262 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %delay.i4.i262, align 4
  %430 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %hcd, align 8
  tail call void %429(ptr noundef %431, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  tail call void @arm_heavy_mb() #10
  %432 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %433, i16 0) #10, !srcloc !295
  %434 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %board1, align 4
  %delay6.i.i263 = getelementptr inbounds %struct.isp116x_platform_data, ptr %435, i32 0, i32 1
  %436 = ptrtoint ptr %delay6.i.i263 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %delay6.i.i263, align 4
  %438 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %hcd, align 8
  tail call void %437(ptr noundef %439, i32 noundef 150) #10
  tail call fastcc void @isp116x_show_regs_log(ptr noundef %hcd_priv.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %do.end13
  %retval.0 = phi i32 [ -19, %do.end13 ], [ 0, %if.end69 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call4) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isp116x_stop(ptr noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %0 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 -23296) #10, !srcloc !295
  %board.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %2 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board.i.i, align 4
  %delay.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %delay.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %delay.i.i, align 4
  %6 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcd, align 8
  tail call void %5(ptr noundef %7, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  tail call void @arm_heavy_mb() #10
  %data_reg.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4
  %8 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %9, i16 0) #10, !srcloc !295
  %10 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %delay.i3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %delay.i3.i, align 4
  %14 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hcd, align 8
  tail call void %13(ptr noundef %15, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %17, i16 4608) #10, !srcloc !295
  %18 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %board.i.i, align 4
  %delay.i.i18 = getelementptr inbounds %struct.isp116x_platform_data, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %delay.i.i18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %delay.i.i18, align 4
  %22 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hcd, align 8
  tail call void %21(ptr noundef %23, i32 noundef 300) #10
  %24 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data_reg.i.i, align 4
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %25) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %27 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i21 = getelementptr inbounds %struct.isp116x_platform_data, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %delay.i3.i21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %delay.i3.i21, align 4
  %31 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hcd, align 8
  tail call void %30(ptr noundef %32, i32 noundef 150) #10
  %33 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data_reg.i.i, align 4
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %34) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %36 = zext i16 %35 to i32
  %37 = zext i16 %26 to i32
  %38 = shl nuw i32 %37, 16
  %39 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %delay11.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %delay11.i.i, align 4
  %43 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hcd, align 8
  tail call void %42(ptr noundef %44, i32 noundef 150) #10
  %.masked = and i32 %38, -262144
  %45 = or i32 %.masked, %36
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %47 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %48, i16 -28160) #10, !srcloc !295
  %49 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %board.i.i, align 4
  %delay.i.i24 = getelementptr inbounds %struct.isp116x_platform_data, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %delay.i.i24 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %delay.i.i24, align 4
  %53 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hcd, align 8
  tail call void %52(ptr noundef %54, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  tail call void @arm_heavy_mb() #10
  %55 = lshr exact i32 %.masked, 16
  %56 = trunc i32 %55 to i16
  %57 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %58, i16 %56) #10, !srcloc !295
  %59 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %board.i.i, align 4
  %delay.i4.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %delay.i4.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %delay.i4.i, align 4
  %63 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hcd, align 8
  tail call void %62(ptr noundef %64, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  tail call void @arm_heavy_mb() #10
  %shr.i.i = lshr i32 %46, 16
  %conv3.i.i = trunc i32 %shr.i.i to i16
  %65 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i) #10
  %66 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %67, i16 %65) #10, !srcloc !295
  %68 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %board.i.i, align 4
  %delay6.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %delay6.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %delay6.i.i, align 4
  %72 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hcd, align 8
  tail call void %71(ptr noundef %73, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %74 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %75, i16 -27648) #10, !srcloc !295
  %76 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %board.i.i, align 4
  %delay.i.i29 = getelementptr inbounds %struct.isp116x_platform_data, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %delay.i.i29 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %delay.i.i29, align 4
  %80 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hcd, align 8
  tail call void %79(ptr noundef %81, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  tail call void @arm_heavy_mb() #10
  %82 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %83, i16 256) #10, !srcloc !295
  %84 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %board.i.i, align 4
  %delay.i4.i32 = getelementptr inbounds %struct.isp116x_platform_data, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %delay.i4.i32 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %delay.i4.i32, align 4
  %88 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hcd, align 8
  tail call void %87(ptr noundef %89, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  tail call void @arm_heavy_mb() #10
  %90 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %91, i16 0) #10, !srcloc !295
  %92 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %board.i.i, align 4
  %delay6.i.i33 = getelementptr inbounds %struct.isp116x_platform_data, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %delay6.i.i33 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %delay6.i.i33, align 4
  %96 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hcd, align 8
  tail call void %95(ptr noundef %97, i32 noundef 150) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call3) #10
  %call8 = tail call fastcc i32 @isp116x_sw_reset(ptr noundef %hcd_priv.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp116x_get_frame(ptr noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %0 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 3840) #10, !srcloc !295
  %board.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %2 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board.i.i, align 4
  %delay.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %delay.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %delay.i.i, align 4
  %6 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcd, align 8
  tail call void %5(ptr noundef %7, i32 noundef 300) #10
  %data_reg.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4
  %8 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data_reg.i.i, align 4
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %9) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %11 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %delay.i3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %delay.i3.i, align 4
  %15 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hcd, align 8
  tail call void %14(ptr noundef %16, i32 noundef 150) #10
  %17 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data_reg.i.i, align 4
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %20 = zext i16 %19 to i32
  %21 = zext i16 %10 to i32
  %22 = shl nuw i32 %21, 16
  %23 = or i32 %22, %20
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #10
  %25 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %delay11.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %delay11.i.i, align 4
  %29 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hcd, align 8
  tail call void %28(ptr noundef %30, i32 noundef 150) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call3) #10
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp116x_urb_enqueue(ptr noundef %hcd, ptr noundef %urb, i32 noundef %mem_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %pipe1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %2 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pipe1, align 4
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and.lobit318 = lshr exact i32 %and, 7
  %4 = xor i32 %and.lobit318, 1
  %shr = lshr i32 %3, 30
  %shr3 = lshr i32 %3, 15
  %and4 = and i32 %shr3, 15
  %ep = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 9
  %5 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %3)
  %cmp = icmp ult i32 %3, 1073741824
  br i1 %cmp, label %do.end8, label %if.end

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hcpriv, align 4
  %tobool13.not = icmp eq ptr %8, null
  br i1 %tobool13.not, label %if.then14, label %if.end.do.body21_crit_edge

if.end.do.body21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21

if.then14:                                        ; preds = %if.end
  %and.i.i.i = and i32 %mem_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then14.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !300

if.then14.kzalloc.exit_crit_edge:                 ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %if.then14
  %and2.i.i.i = and i32 %mem_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i.i.i = and i32 %mem_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %if.then14.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.then14.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %mem_flags, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %9 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef %or.i, i32 noundef 52) #14
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %kzalloc.exit.cleanup_crit_edge, label %kzalloc.exit.do.body21_crit_edge

kzalloc.exit.do.body21_crit_edge:                 ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body21:                                        ; preds = %kzalloc.exit.do.body21_crit_edge, %if.end.do.body21_crit_edge
  %ep5.0 = phi ptr [ null, %if.end.do.body21_crit_edge ], [ %call7.i.i, %kzalloc.exit.do.body21_crit_edge ]
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  %and30 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.then32, label %if.end33

if.then32:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %ep5.0) #10
  br label %fail_not_linked

if.end33:                                         ; preds = %do.body21
  %call34 = tail call i32 @usb_hcd_link_urb_to_ep(ptr noundef %hcd, ptr noundef %urb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %ep5.0) #10
  br label %fail_not_linked

if.end37:                                         ; preds = %if.end33
  %13 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hcpriv, align 4
  %tobool39.not = icmp eq ptr %14, null
  br i1 %tobool39.not, label %if.else, label %if.end37.if.end92_crit_edge

if.end37.if.end92_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

if.else:                                          ; preds = %if.end37
  %schedule = getelementptr inbounds %struct.isp116x_ep, ptr %ep5.0, i32 0, i32 14
  %15 = ptrtoint ptr %schedule to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %schedule, ptr %schedule, align 4
  %prev.i = getelementptr inbounds %struct.isp116x_ep, ptr %ep5.0, i32 0, i32 14, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %schedule, ptr %prev.i, align 8
  %udev42 = getelementptr inbounds %struct.isp116x_ep, ptr %ep5.0, i32 0, i32 1
  %17 = ptrtoint ptr %udev42 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %1, ptr %udev42, align 4
  %conv43 = trunc i32 %and4 to i8
  %epnum44 = getelementptr inbounds %struct.isp116x_ep, ptr %ep5.0, i32 0, i32 4
  %18 = ptrtoint ptr %epnum44 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv43, ptr %epnum44, align 1
  %19 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pipe1, align 4
  %21 = lshr i32 %20, 15
  %and.i = and i32 %21, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %and24.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  br i1 %tobool25.not.i, label %if.then.i.if.end.i_crit_edge, label %do.end.i, !prof !300

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.67, i32 noundef 1981, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.usb_device, ptr %1, i32 0, i32 22, i32 %and.i
  br label %if.end58.i

if.else.i:                                        ; preds = %if.else
  br i1 %tobool25.not.i, label %do.end43.i, label %if.else.i.if.end49.i_crit_edge, !prof !308

if.else.i.if.end49.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i

do.end43.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.67, i32 noundef 1984, i32 noundef 9, ptr noundef null) #10
  br label %if.end49.i

if.end49.i:                                       ; preds = %do.end43.i, %if.else.i.if.end49.i_crit_edge
  %arrayidx57.i = getelementptr %struct.usb_device, ptr %1, i32 0, i32 21, i32 %and.i
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.end49.i, %if.end.i
  %ep.0.in.i = phi ptr [ %arrayidx.i, %if.end.i ], [ %arrayidx57.i, %if.end49.i ]
  %22 = ptrtoint ptr %ep.0.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %ep.0.i = load ptr, ptr %ep.0.in.i, align 4
  %tobool59.not.i = icmp eq ptr %ep.0.i, null
  br i1 %tobool59.not.i, label %if.end58.i.usb_maxpacket.exit_crit_edge, label %if.end61.i

if.end58.i.usb_maxpacket.exit_crit_edge:          ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_maxpacket.exit

if.end61.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.0.i, i32 0, i32 4
  %23 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %25 = lshr i16 %24, 8
  %extract.t = trunc i16 %25 to i8
  br label %usb_maxpacket.exit

usb_maxpacket.exit:                               ; preds = %if.end61.i, %if.end58.i.usb_maxpacket.exit_crit_edge
  %retval.0.i319.off0 = phi i8 [ %extract.t, %if.end61.i ], [ 0, %if.end58.i.usb_maxpacket.exit_crit_edge ]
  %maxpacket = getelementptr inbounds %struct.isp116x_ep, ptr %ep5.0, i32 0, i32 3
  %26 = ptrtoint ptr %maxpacket to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %retval.0.i319.off0, ptr %maxpacket, align 8
  %arrayidx = getelementptr %struct.usb_device, ptr %1, i32 0, i32 10, i32 %4
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %shl = shl nuw nsw i32 1, %and4
  %neg = xor i32 %shl, -1
  %and48 = and i32 %28, %neg
  store i32 %and48, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr)
  %cmp52 = icmp eq i32 %shr, 2
  %nextpid = getelementptr inbounds %struct.isp116x_ep, ptr %ep5.0, i32 0, i32 5
  %. = select i1 %tobool.not, i8 -31, i8 105
  %.sink368 = select i1 %cmp52, i8 45, i8 %.
  %29 = ptrtoint ptr %nextpid to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %.sink368, ptr %nextpid, align 2
  %interval = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 25
  %30 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool63.not = icmp eq i32 %31, 0
  br i1 %tobool63.not, label %usb_maxpacket.exit.if.end89_crit_edge, label %if.then64

usb_maxpacket.exit.if.end89_crit_edge:            ; preds = %usb_maxpacket.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then64:                                        ; preds = %usb_maxpacket.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp66 = icmp slt i32 %31, 2
  br i1 %cmp66, label %if.then64.if.end76.sink.split_crit_edge, label %if.end70

if.then64.if.end76.sink.split_crit_edge:          ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76.sink.split

if.end70:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %31)
  %cmp72 = icmp ugt i32 %31, 64
  br i1 %cmp72, label %if.end70.if.end76.sink.split_crit_edge, label %if.end70.if.end76_crit_edge

if.end70.if.end76_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.end70.if.end76.sink.split_crit_edge:           ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76.sink.split

if.end76.sink.split:                              ; preds = %if.end70.if.end76.sink.split_crit_edge, %if.then64.if.end76.sink.split_crit_edge
  %.sink = phi i32 [ 2, %if.then64.if.end76.sink.split_crit_edge ], [ 64, %if.end70.if.end76.sink.split_crit_edge ]
  %32 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink, ptr %interval, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.end76.sink.split, %if.end70.if.end76_crit_edge
  %33 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %interval, align 4
  %35 = lshr i32 %34, 1
  %conv79 = trunc i32 %35 to i16
  %period = getelementptr inbounds %struct.isp116x_ep, ptr %ep5.0, i32 0, i32 10
  %36 = ptrtoint ptr %period to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv79, ptr %period, align 8
  %branch = getelementptr inbounds %struct.isp116x_ep, ptr %ep5.0, i32 0, i32 11
  %37 = ptrtoint ptr %branch to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 32, ptr %branch, align 2
  %speed = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %speed, align 4
  br i1 %tobool.not.i, label %if.else.i328, label %if.then.i324

if.then.i324:                                     ; preds = %if.end76
  br i1 %tobool.not, label %if.then.i324.if.end.i327_crit_edge, label %do.end.i325, !prof !300

if.then.i324.if.end.i327_crit_edge:               ; preds = %if.then.i324
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i327

do.end.i325:                                      ; preds = %if.then.i324
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.67, i32 noundef 1981, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i327

if.end.i327:                                      ; preds = %do.end.i325, %if.then.i324.if.end.i327_crit_edge
  %arrayidx.i326 = getelementptr %struct.usb_device, ptr %1, i32 0, i32 22, i32 %and4
  br label %if.end58.i335

if.else.i328:                                     ; preds = %if.end76
  br i1 %tobool.not, label %do.end43.i329, label %if.else.i328.if.end49.i331_crit_edge, !prof !308

if.else.i328.if.end49.i331_crit_edge:             ; preds = %if.else.i328
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i331

do.end43.i329:                                    ; preds = %if.else.i328
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.67, i32 noundef 1984, i32 noundef 9, ptr noundef null) #10
  br label %if.end49.i331

if.end49.i331:                                    ; preds = %do.end43.i329, %if.else.i328.if.end49.i331_crit_edge
  %arrayidx57.i330 = getelementptr %struct.usb_device, ptr %1, i32 0, i32 21, i32 %and4
  br label %if.end58.i335

if.end58.i335:                                    ; preds = %if.end49.i331, %if.end.i327
  %ep.0.in.i332 = phi ptr [ %arrayidx.i326, %if.end.i327 ], [ %arrayidx57.i330, %if.end49.i331 ]
  %40 = ptrtoint ptr %ep.0.in.i332 to i32
  call void @__asan_load4_noabort(i32 %40)
  %ep.0.i333 = load ptr, ptr %ep.0.in.i332, align 4
  %tobool59.not.i334 = icmp eq ptr %ep.0.i333, null
  br i1 %tobool59.not.i334, label %if.end58.i335.usb_maxpacket.exit339_crit_edge, label %if.end61.i337

if.end58.i335.usb_maxpacket.exit339_crit_edge:    ; preds = %if.end58.i335
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_maxpacket.exit339

if.end61.i337:                                    ; preds = %if.end58.i335
  call void @__sanitizer_cov_trace_pc() #12
  %wMaxPacketSize.i.i336 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.0.i333, i32 0, i32 4
  %41 = ptrtoint ptr %wMaxPacketSize.i.i336 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %wMaxPacketSize.i.i336, align 1
  %43 = and i16 %42, -249
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #10
  %phi.cast = zext i16 %44 to i32
  br label %usb_maxpacket.exit339

usb_maxpacket.exit339:                            ; preds = %if.end61.i337, %if.end58.i335.usb_maxpacket.exit339_crit_edge
  %retval.0.i338 = phi i32 [ %phi.cast, %if.end61.i337 ], [ 0, %if.end58.i335.usb_maxpacket.exit339_crit_edge ]
  %call87 = tail call i32 @usb_calc_bus_time(i32 noundef %39, i32 noundef %and.lobit318, i32 noundef 0, i32 noundef %retval.0.i338) #10
  %div = sdiv i32 %call87, 1000
  %conv88 = trunc i32 %div to i16
  %load = getelementptr inbounds %struct.isp116x_ep, ptr %ep5.0, i32 0, i32 12
  %45 = ptrtoint ptr %load to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv88, ptr %load, align 4
  br label %if.end89

if.end89:                                         ; preds = %usb_maxpacket.exit339, %usb_maxpacket.exit.if.end89_crit_edge
  %46 = ptrtoint ptr %hcpriv to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %ep5.0, ptr %hcpriv, align 4
  %47 = ptrtoint ptr %ep5.0 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %6, ptr %ep5.0, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.end89, %if.end37.if.end92_crit_edge
  %ep5.1 = phi ptr [ %ep5.0, %if.end89 ], [ %14, %if.end37.if.end92_crit_edge ]
  %48 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %if.end92.fail.thread_crit_edge [
    i32 2, label %if.end92.sw.bb_crit_edge
    i32 3, label %if.end92.sw.bb_crit_edge389
    i32 1, label %sw.bb99
  ]

if.end92.sw.bb_crit_edge389:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end92.sw.bb_crit_edge:                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end92.fail.thread_crit_edge:                   ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.thread

sw.bb:                                            ; preds = %if.end92.sw.bb_crit_edge, %if.end92.sw.bb_crit_edge389
  %schedule93 = getelementptr inbounds %struct.isp116x_ep, ptr %ep5.1, i32 0, i32 14
  %49 = ptrtoint ptr %schedule93 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %schedule93, align 4
  %cmp.i.not = icmp eq ptr %50, %schedule93
  br i1 %cmp.i.not, label %if.then96, label %sw.bb.fail.thread_crit_edge

sw.bb.fail.thread_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.thread

if.then96:                                        ; preds = %sw.bb
  %async = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 5, i32 1
  %prev.i340 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 5, i32 1, i32 1
  %51 = ptrtoint ptr %prev.i340 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i340, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %schedule93, ptr noundef %52, ptr noundef %async) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then96.fail.thread_crit_edge

if.then96.fail.thread_crit_edge:                  ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.thread

if.end.i.i:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %prev.i340 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %schedule93, ptr %prev.i340, align 4
  %54 = ptrtoint ptr %schedule93 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %async, ptr %schedule93, align 4
  %prev3.i.i = getelementptr inbounds %struct.isp116x_ep, ptr %ep5.1, i32 0, i32 14, i32 1
  %55 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %schedule93, ptr %52, align 4
  br label %fail.thread

sw.bb99:                                          ; preds = %if.end92
  %period100 = getelementptr inbounds %struct.isp116x_ep, ptr %ep5.1, i32 0, i32 10
  %57 = ptrtoint ptr %period100 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %period100, align 4
  %conv101 = zext i16 %58 to i32
  %interval102 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 25
  %59 = ptrtoint ptr %interval102 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv101, ptr %interval102, align 4
  %maxpacket103 = getelementptr inbounds %struct.isp116x_ep, ptr %ep5.1, i32 0, i32 3
  %60 = ptrtoint ptr %maxpacket103 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %maxpacket103, align 4
  %conv104 = zext i8 %61 to i32
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %62 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %transfer_buffer_length, align 4
  %64 = tail call i32 @llvm.umin.i32(i32 %63, i32 %conv104)
  %conv108 = trunc i32 %64 to i16
  %length = getelementptr inbounds %struct.isp116x_ep, ptr %ep5.1, i32 0, i32 7
  %65 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv108, ptr %length, align 2
  %branch109 = getelementptr inbounds %struct.isp116x_ep, ptr %ep5.1, i32 0, i32 11
  %66 = ptrtoint ptr %branch109 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %branch109, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %67)
  %cmp111 = icmp ult i16 %67, 32
  br i1 %cmp111, label %sw.bb99.fail.thread_crit_edge, label %if.end114

sw.bb99.fail.thread_crit_edge:                    ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.thread

if.end114:                                        ; preds = %sw.bb99
  %68 = ptrtoint ptr %period100 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %period100, align 4
  %load116 = getelementptr inbounds %struct.isp116x_ep, ptr %ep5.1, i32 0, i32 12
  %70 = ptrtoint ptr %load116 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %load116, align 4
  %call117 = tail call fastcc i32 @balance(ptr noundef %hcd_priv.i, i16 noundef zeroext %69, i16 noundef zeroext %71)
  %conv118 = trunc i32 %call117 to i16
  %72 = ptrtoint ptr %branch109 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv118, ptr %branch109, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %cmp120 = icmp slt i32 %call117, 0
  br i1 %cmp120, label %if.then197, label %if.end123

if.end123:                                        ; preds = %if.end114
  %fmindex = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 8
  %73 = ptrtoint ptr %fmindex to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %fmindex, align 4
  %75 = and i16 %74, 31
  %and125 = zext i16 %75 to i32
  %conv127 = and i32 %call117, 65535
  %add = add nuw nsw i32 %conv127, %and125
  %start_frame = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 23
  %76 = ptrtoint ptr %start_frame to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add, ptr %start_frame, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_urb_enqueue.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_urb_enqueue, %if.then138)) #10
          to label %do.end145 [label %if.then138], !srcloc !307

if.then138:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %period100 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %period100, align 4
  %conv140 = zext i16 %78 to i32
  %79 = ptrtoint ptr %branch109 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %branch109, align 2
  %conv142 = zext i16 %80 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_urb_enqueue.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.66, i32 noundef %conv140, ptr noundef %ep5.1, i32 noundef %conv142) #10
  br label %do.end145

do.end145:                                        ; preds = %if.then138, %if.end123
  %81 = ptrtoint ptr %branch109 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %branch109, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %82)
  %cmp148357 = icmp ult i16 %82, 32
  br i1 %cmp148357, label %for.body.lr.ph, label %do.end145.for.end_crit_edge

do.end145.for.end_crit_edge:                      ; preds = %do.end145
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end145
  %conv147 = zext i16 %82 to i32
  %next165 = getelementptr inbounds %struct.isp116x_ep, ptr %ep5.1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end166.for.body_crit_edge, %for.body.lr.ph
  %i.0358 = phi i32 [ %conv147, %for.body.lr.ph ], [ %add176, %if.end166.for.body_crit_edge ]
  %arrayidx150 = getelementptr %struct.isp116x, ptr %hcd_priv.i, i32 0, i32 16, i32 %i.0358
  %83 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %83)
  %here.0345 = load ptr, ptr %arrayidx150, align 4
  %tobool151.not346 = icmp eq ptr %here.0345, null
  %cmp152.not347 = icmp eq ptr %ep5.1, %here.0345
  %or.cond348 = select i1 %tobool151.not346, i1 true, i1 %cmp152.not347
  br i1 %or.cond348, label %for.body.while.end_crit_edge, label %while.body.lr.ph

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %for.body
  %84 = ptrtoint ptr %period100 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %period100, align 4
  %period156373 = getelementptr inbounds %struct.isp116x_ep, ptr %here.0345, i32 0, i32 10
  %86 = ptrtoint ptr %period156373 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %period156373, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %85, i16 %87)
  %cmp158374 = icmp ugt i16 %85, %87
  br i1 %cmp158374, label %while.body.lr.ph.if.then164_crit_edge, label %while.body.lr.ph.if.end161_crit_edge

while.body.lr.ph.if.end161_crit_edge:             ; preds = %while.body.lr.ph
  br label %if.end161

while.body.lr.ph.if.then164_crit_edge:            ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then164

while.body:                                       ; preds = %if.end161
  %period156 = getelementptr inbounds %struct.isp116x_ep, ptr %here.0, i32 0, i32 10
  %88 = ptrtoint ptr %period156 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %period156, align 4
  %cmp158 = icmp ugt i16 %85, %89
  br i1 %cmp158, label %if.then164.loopexit, label %while.body.if.end161_crit_edge

while.body.if.end161_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161

if.end161:                                        ; preds = %while.body.if.end161_crit_edge, %while.body.lr.ph.if.end161_crit_edge
  %here.0350375 = phi ptr [ %here.0, %while.body.if.end161_crit_edge ], [ %here.0345, %while.body.lr.ph.if.end161_crit_edge ]
  %next = getelementptr inbounds %struct.isp116x_ep, ptr %here.0350375, i32 0, i32 13
  %90 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %90)
  %here.0 = load ptr, ptr %next, align 4
  %tobool151.not = icmp eq ptr %here.0, null
  %cmp152.not = icmp eq ptr %ep5.1, %here.0
  %or.cond = select i1 %tobool151.not, i1 true, i1 %cmp152.not
  br i1 %or.cond, label %while.end.loopexit, label %while.body

while.end.loopexit:                               ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #12
  %next.le387 = getelementptr inbounds %struct.isp116x_ep, ptr %here.0350375, i32 0, i32 13
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %for.body.while.end_crit_edge
  %prev.0.lcssa = phi ptr [ %arrayidx150, %for.body.while.end_crit_edge ], [ %next.le387, %while.end.loopexit ]
  %here.0.lcssa = phi ptr [ %here.0345, %for.body.while.end_crit_edge ], [ %here.0, %while.end.loopexit ]
  %cmp152.not.lcssa = phi i1 [ %cmp152.not347, %for.body.while.end_crit_edge ], [ %cmp152.not, %while.end.loopexit ]
  br i1 %cmp152.not.lcssa, label %while.end.if.end166_crit_edge, label %while.end.if.then164_crit_edge

while.end.if.then164_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then164

while.end.if.end166_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end166

if.then164.loopexit:                              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %next.le = getelementptr inbounds %struct.isp116x_ep, ptr %here.0350375, i32 0, i32 13
  br label %if.then164

if.then164:                                       ; preds = %if.then164.loopexit, %while.end.if.then164_crit_edge, %while.body.lr.ph.if.then164_crit_edge
  %here.0.lcssa363 = phi ptr [ %here.0.lcssa, %while.end.if.then164_crit_edge ], [ %here.0345, %while.body.lr.ph.if.then164_crit_edge ], [ %here.0, %if.then164.loopexit ]
  %prev.0.lcssa362 = phi ptr [ %prev.0.lcssa, %while.end.if.then164_crit_edge ], [ %arrayidx150, %while.body.lr.ph.if.then164_crit_edge ], [ %next.le, %if.then164.loopexit ]
  %91 = ptrtoint ptr %next165 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %here.0.lcssa363, ptr %next165, align 4
  %92 = ptrtoint ptr %prev.0.lcssa362 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %ep5.1, ptr %prev.0.lcssa362, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.then164, %while.end.if.end166_crit_edge
  %93 = ptrtoint ptr %load116 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %load116, align 4
  %arrayidx170 = getelementptr %struct.isp116x, ptr %hcd_priv.i, i32 0, i32 15, i32 %i.0358
  %95 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx170, align 2
  %add172 = add i16 %96, %94
  store i16 %add172, ptr %arrayidx170, align 2
  %97 = ptrtoint ptr %period100 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %period100, align 4
  %conv175 = zext i16 %98 to i32
  %add176 = add i32 %i.0358, %conv175
  %cmp148 = icmp slt i32 %add176, 32
  br i1 %cmp148, label %if.end166.for.body_crit_edge, label %if.end166.for.end_crit_edge

if.end166.for.end_crit_edge:                      ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end166.for.body_crit_edge:                     ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end166.for.end_crit_edge, %do.end145.for.end_crit_edge
  %99 = ptrtoint ptr %load116 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %load116, align 4
  %101 = ptrtoint ptr %period100 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %period100, align 4
  %103 = udiv i16 %100, %102
  %div181 = zext i16 %103 to i32
  %bandwidth_allocated = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 13
  %104 = ptrtoint ptr %bandwidth_allocated to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %bandwidth_allocated, align 8
  %add182 = add i32 %105, %div181
  store i32 %add182, ptr %bandwidth_allocated, align 8
  %periodic_count = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 7, i32 3, i32 7
  %106 = ptrtoint ptr %periodic_count to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %periodic_count, align 4
  %inc = add i32 %107, 1
  store i32 %inc, ptr %periodic_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool183.not = icmp eq i32 %107, 0
  br i1 %tobool183.not, label %if.then184, label %for.end.fail.thread_crit_edge

for.end.fail.thread_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.thread

if.then184:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %irqenb = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 3
  %108 = ptrtoint ptr %irqenb to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %irqenb, align 4
  %110 = and i16 %109, -4
  %111 = or i16 %110, 1
  store i16 %111, ptr %irqenb, align 4
  %conv193 = zext i16 %111 to i32
  tail call fastcc void @isp116x_write_reg16(ptr noundef %hcd_priv.i, i32 noundef 37, i32 noundef %conv193)
  br label %fail.thread

fail.thread:                                      ; preds = %if.then184, %for.end.fail.thread_crit_edge, %sw.bb99.fail.thread_crit_edge, %if.end.i.i, %if.then96.fail.thread_crit_edge, %sw.bb.fail.thread_crit_edge, %if.end92.fail.thread_crit_edge
  %hcpriv195 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %112 = ptrtoint ptr %hcpriv195 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %6, ptr %hcpriv195, align 4
  tail call fastcc void @start_atl_transfers(ptr noundef %hcd_priv.i)
  br label %fail_not_linked

if.then197:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %hcd, ptr noundef %urb) #10
  br label %fail_not_linked

fail_not_linked:                                  ; preds = %if.then197, %fail.thread, %if.then36, %if.then32
  %ret.2 = phi i32 [ %call34, %if.then36 ], [ %call117, %if.then197 ], [ -19, %if.then32 ], [ 0, %fail.thread ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call25) #10
  br label %cleanup

cleanup:                                          ; preds = %fail_not_linked, %kzalloc.exit.cleanup_crit_edge, %do.end8
  %retval.0 = phi i32 [ -6, %do.end8 ], [ %ret.2, %fail_not_linked ], [ -12, %kzalloc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp116x_urb_dequeue(ptr noundef %hcd, ptr noundef %urb, i32 noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  %call6 = tail call i32 @usb_hcd_check_unlink_urb(ptr noundef %hcd, ptr noundef %urb, i32 noundef %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end:                                           ; preds = %entry
  %hcpriv = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %0 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcpriv, align 4
  %hcpriv7 = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hcpriv7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcpriv7, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cmp9.not = icmp eq ptr %1, %5
  br i1 %cmp9.not, label %if.end.if.end28_crit_edge, label %do.end22, !prof !300

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

do.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 853, i32 noundef 9, ptr noundef null) #10
  br label %if.end28

if.end28:                                         ; preds = %do.end22, %if.end.if.end28_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %urb_list = getelementptr inbounds %struct.usb_host_endpoint, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %urb_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %urb_list, align 4
  %urb_list37 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 5
  %cmp38 = icmp eq ptr %9, %urb_list37
  br i1 %cmp38, label %if.then40, label %if.end28.if.end49_crit_edge

if.end28.if.end49_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then40:                                        ; preds = %if.end28
  %atl_active = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 8, i32 1
  %10 = ptrtoint ptr %atl_active to i32
  call void @__asan_load4_noabort(i32 %10)
  %ep_act.073 = load ptr, ptr %atl_active, align 4
  %tobool41.not74 = icmp eq ptr %ep_act.073, null
  br i1 %tobool41.not74, label %if.then40.if.end49_crit_edge, label %if.then40.for.body_crit_edge

if.then40.for.body_crit_edge:                     ; preds = %if.then40
  br label %for.body

if.then40.if.end49_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

for.cond:                                         ; preds = %for.body
  %active = getelementptr inbounds %struct.isp116x_ep, ptr %ep_act.075, i32 0, i32 9
  %11 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %11)
  %ep_act.0 = load ptr, ptr %active, align 4
  %tobool41.not = icmp eq ptr %ep_act.0, null
  br i1 %tobool41.not, label %for.cond.if.end49_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.if.end49_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then40.for.body_crit_edge
  %ep_act.075 = phi ptr [ %ep_act.0, %for.cond.for.body_crit_edge ], [ %ep_act.073, %if.then40.for.body_crit_edge ]
  %cmp42 = icmp eq ptr %ep_act.075, %3
  br i1 %cmp42, label %for.body.done_crit_edge, label %for.cond

for.body.done_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end49:                                         ; preds = %for.cond.if.end49_crit_edge, %if.then40.if.end49_crit_edge, %if.end28.if.end49_crit_edge
  %tobool50.not = icmp eq ptr %urb, null
  br i1 %tobool50.not, label %if.end49.done_crit_edge, label %if.then51

if.end49.done_crit_edge:                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @finish_request(ptr noundef %hcd_priv.i, ptr noundef %3, ptr noundef nonnull %urb, i32 noundef %status)
  br label %done

done:                                             ; preds = %if.then51, %if.end49.done_crit_edge, %for.body.done_crit_edge, %entry.done_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call3) #10
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isp116x_endpoint_disable(ptr nocapture noundef readnone %hcd, ptr noundef %hep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %hep, i32 0, i32 5
  %0 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcpriv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %urb_list = getelementptr inbounds %struct.usb_host_endpoint, ptr %hep, i32 0, i32 4
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %for.cond.preheader
  %i.018 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %urb_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %urb_list, align 4
  %cmp.i.not = icmp eq ptr %3, %urb_list
  br i1 %cmp.i.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %land.rhs
  tail call void @msleep(i32 noundef 3) #10
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %4 = ptrtoint ptr %urb_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %urb_list, align 4
  %cmp.i16.not = icmp eq ptr %5, %urb_list
  br i1 %cmp.i16.not, label %for.end.if.end7_crit_edge, label %do.end

for.end.if.end7_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull %1) #13
  br label %if.end7

if.end7:                                          ; preds = %do.end, %for.end.if.end7_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #10
  %6 = ptrtoint ptr %hcpriv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %hcpriv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp116x_hub_status_data(ptr noundef %hcd, ptr nocapture noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pprev.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 5, i32 0, i32 1
  %2 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rhdesca = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 3, i32 1
  %4 = ptrtoint ptr %rhdesca to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rhdesca, align 4
  %and5 = and i32 %5, 3
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %6 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 5120) #10, !srcloc !295
  %board.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %8 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %board.i.i, align 4
  %delay.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %delay.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %delay.i.i, align 4
  %12 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hcd, align 8
  tail call void %11(ptr noundef %13, i32 noundef 300) #10
  %data_reg.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4
  %14 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data_reg.i.i, align 4
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %15) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %17 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %delay.i3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %delay.i3.i, align 4
  %21 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hcd, align 8
  tail call void %20(ptr noundef %22, i32 noundef 150) #10
  %23 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data_reg.i.i, align 4
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %24) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %26 = zext i16 %25 to i32
  %27 = zext i16 %16 to i32
  %28 = shl nuw i32 %27, 16
  %29 = or i32 %28, %26
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #10
  %31 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %delay11.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %delay11.i.i, align 4
  %35 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hcd, align 8
  tail call void %34(ptr noundef %36, i32 noundef 150) #10
  %rhstatus = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 5
  %37 = ptrtoint ptr %rhstatus to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %30, ptr %rhstatus, align 4
  %and13 = and i32 %30, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp ne i32 %and13, 0
  %. = zext i1 %tobool14.not to i8
  %.47 = zext i1 %tobool14.not to i32
  %38 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %., ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp1856.not = icmp eq i32 %and5, 0
  br i1 %cmp1856.not, label %if.end4.for.end_crit_edge, label %for.body

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %if.end4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %39 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %40, i16 5376) #10, !srcloc !295
  %41 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %board.i.i, align 4
  %delay.i.i50 = getelementptr inbounds %struct.isp116x_platform_data, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %delay.i.i50 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %delay.i.i50, align 4
  %45 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hcd, align 8
  tail call void %44(ptr noundef %46, i32 noundef 300) #10
  %47 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data_reg.i.i, align 4
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %48) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %50 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i53 = getelementptr inbounds %struct.isp116x_platform_data, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %delay.i3.i53 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %delay.i3.i53, align 4
  %54 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hcd, align 8
  tail call void %53(ptr noundef %55, i32 noundef 150) #10
  %56 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data_reg.i.i, align 4
  %58 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %57) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %59 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i54 = getelementptr inbounds %struct.isp116x_platform_data, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %delay11.i.i54 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %delay11.i.i54, align 4
  %63 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hcd, align 8
  tail call void %62(ptr noundef %64, i32 noundef 150) #10
  %65 = and i16 %58, 7936
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool23.not = icmp eq i16 %65, 0
  br i1 %tobool23.not, label %for.body.if.end28_crit_edge, label %if.then24

for.body.if.end28_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %buf, align 1
  %conv27 = or i8 %67, 2
  store i8 %conv27, ptr %buf, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %for.body.if.end28_crit_edge
  %changed.2 = phi i32 [ 1, %if.then24 ], [ %.47, %for.body.if.end28_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and5)
  %exitcond.not = icmp eq i32 %and5, 1
  br i1 %exitcond.not, label %if.end28.for.end_crit_edge, label %for.body.1

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.1:                                       ; preds = %if.end28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %68 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %69, i16 5632) #10, !srcloc !295
  %70 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %board.i.i, align 4
  %delay.i.i50.1 = getelementptr inbounds %struct.isp116x_platform_data, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %delay.i.i50.1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %delay.i.i50.1, align 4
  %74 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hcd, align 8
  tail call void %73(ptr noundef %75, i32 noundef 300) #10
  %76 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data_reg.i.i, align 4
  %78 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %77) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %79 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i53.1 = getelementptr inbounds %struct.isp116x_platform_data, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %delay.i3.i53.1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %delay.i3.i53.1, align 4
  %83 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hcd, align 8
  tail call void %82(ptr noundef %84, i32 noundef 150) #10
  %85 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data_reg.i.i, align 4
  %87 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %86) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %88 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i54.1 = getelementptr inbounds %struct.isp116x_platform_data, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %delay11.i.i54.1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %delay11.i.i54.1, align 4
  %92 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hcd, align 8
  tail call void %91(ptr noundef %93, i32 noundef 150) #10
  %94 = and i16 %87, 7936
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %tobool23.not.1 = icmp eq i16 %94, 0
  br i1 %tobool23.not.1, label %for.body.1.if.end28.1_crit_edge, label %if.then24.1

for.body.1.if.end28.1_crit_edge:                  ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.1

if.then24.1:                                      ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %buf, align 1
  %conv27.1 = or i8 %96, 4
  store i8 %conv27.1, ptr %buf, align 1
  br label %if.end28.1

if.end28.1:                                       ; preds = %if.then24.1, %for.body.1.if.end28.1_crit_edge
  %changed.2.1 = phi i32 [ 1, %if.then24.1 ], [ %changed.2, %for.body.1.if.end28.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and5)
  %exitcond.not.1 = icmp eq i32 %and5, 2
  br i1 %exitcond.not.1, label %if.end28.1.for.end_crit_edge, label %for.body.2

if.end28.1.for.end_crit_edge:                     ; preds = %if.end28.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.2:                                       ; preds = %if.end28.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %97 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %98, i16 5632) #10, !srcloc !295
  %99 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %board.i.i, align 4
  %delay.i.i50.2 = getelementptr inbounds %struct.isp116x_platform_data, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %delay.i.i50.2 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %delay.i.i50.2, align 4
  %103 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hcd, align 8
  tail call void %102(ptr noundef %104, i32 noundef 300) #10
  %105 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %data_reg.i.i, align 4
  %107 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %106) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %108 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i53.2 = getelementptr inbounds %struct.isp116x_platform_data, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %delay.i3.i53.2 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %delay.i3.i53.2, align 4
  %112 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hcd, align 8
  tail call void %111(ptr noundef %113, i32 noundef 150) #10
  %114 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %data_reg.i.i, align 4
  %116 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %115) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %117 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i54.2 = getelementptr inbounds %struct.isp116x_platform_data, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %delay11.i.i54.2 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %delay11.i.i54.2, align 4
  %121 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hcd, align 8
  tail call void %120(ptr noundef %122, i32 noundef 150) #10
  %123 = and i16 %116, 7936
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %tobool23.not.2 = icmp eq i16 %123, 0
  br i1 %tobool23.not.2, label %for.body.2.for.end_crit_edge, label %if.then24.2

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then24.2:                                      ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #12
  %124 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %buf, align 1
  %conv27.2 = or i8 %125, 8
  store i8 %conv27.2, ptr %buf, align 1
  br label %for.end

for.end:                                          ; preds = %if.then24.2, %for.body.2.for.end_crit_edge, %if.end28.1.for.end_crit_edge, %if.end28.for.end_crit_edge, %if.end4.for.end_crit_edge
  %changed.1.lcssa = phi i32 [ %.47, %if.end4.for.end_crit_edge ], [ %changed.2, %if.end28.for.end_crit_edge ], [ %changed.2.1, %if.end28.1.for.end_crit_edge ], [ 1, %if.then24.2 ], [ %changed.2.1, %for.body.2.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call8) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %changed.1.lcssa, %for.end ], [ -108, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp116x_hub_control(ptr noundef %hcd, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr nocapture noundef writeonly %buf, i16 noundef zeroext %wLength) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %rhdesca = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 3, i32 1
  %0 = ptrtoint ptr %rhdesca to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rhdesca, align 4
  %and = and i32 %1, 3
  %2 = zext i16 %typeReq to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.121)
  switch i16 %typeReq, label %entry.do.body479_crit_edge [
    i16 8193, label %do.body
    i16 8195, label %do.body52
    i16 -24570, label %do.body89
    i16 -24576, label %do.body106
    i16 -23808, label %do.body123
    i16 8961, label %do.body181
    i16 8963, label %do.body363
  ]

entry.do.body479_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body479

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_hub_control.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_hub_control, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !307

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_hub_control.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.71) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %3 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.122)
  switch i16 %wValue, label %do.end.do.body479_crit_edge [
    i16 1, label %do.body7
    i16 0, label %do.end.do.body35_crit_edge
  ]

do.end.do.body35_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body35

do.end.do.body479_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body479

do.body7:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_hub_control.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_hub_control, %if.then19)) #10
          to label %do.body24 [label %if.then19], !srcloc !307

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_hub_control.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.72) #10
  br label %do.body24

do.body24:                                        ; preds = %if.then19, %do.body7
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %4 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 -27648) #10, !srcloc !295
  %board.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %6 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %board.i.i, align 4
  %delay.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %delay.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %delay.i.i, align 4
  %10 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hcd, align 8
  tail call void %9(ptr noundef %11, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  tail call void @arm_heavy_mb() #10
  %data_reg.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4
  %12 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %13, i16 0) #10, !srcloc !295
  %14 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %board.i.i, align 4
  %delay.i4.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %delay.i4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %delay.i4.i, align 4
  %18 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hcd, align 8
  tail call void %17(ptr noundef %19, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 512) #10, !srcloc !295
  %22 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %board.i.i, align 4
  %delay6.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %delay6.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %delay6.i.i, align 4
  %26 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hcd, align 8
  tail call void %25(ptr noundef %27, i32 noundef 150) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call28) #10
  br label %do.body35

do.body35:                                        ; preds = %do.body24, %do.end.do.body35_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_hub_control.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_hub_control, %if.then47)) #10
          to label %sw.epilog495 [label %if.then47], !srcloc !307

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_hub_control.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.73) #10
  br label %sw.epilog495

do.body52:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_hub_control.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_hub_control, %if.then64)) #10
          to label %do.end67 [label %if.then64], !srcloc !307

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_hub_control.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.74) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %do.body52
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %wValue)
  %switch = icmp ult i16 %wValue, 2
  br i1 %switch, label %do.body70, label %do.end67.do.body479_crit_edge

do.end67.do.body479_crit_edge:                    ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body479

do.body70:                                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_hub_control.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_hub_control, %if.then82)) #10
          to label %sw.epilog495 [label %if.then82], !srcloc !307

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_hub_control.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.75) #10
  br label %sw.epilog495

do.body89:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_hub_control.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_hub_control, %if.then101)) #10
          to label %do.end104 [label %if.then101], !srcloc !307

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_hub_control.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.76) #10
  br label %do.end104

do.end104:                                        ; preds = %if.then101, %do.body89
  %28 = ptrtoint ptr %rhdesca to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rhdesca, align 4
  %bDescriptorType.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 1
  %30 = ptrtoint ptr %bDescriptorType.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 41, ptr %bDescriptorType.i, align 1
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 9, ptr %buf, align 1
  %bHubContrCurrent.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 5
  %32 = ptrtoint ptr %bHubContrCurrent.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %bHubContrCurrent.i, align 1
  %33 = trunc i32 %29 to i8
  %conv.i = and i8 %33, 3
  %bNbrPorts.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 2
  %34 = ptrtoint ptr %bNbrPorts.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv.i, ptr %bNbrPorts.i, align 1
  %35 = trunc i32 %29 to i16
  %conv2.i = and i16 %35, 7936
  %wHubCharacteristics.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 3
  %36 = ptrtoint ptr %wHubCharacteristics.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 %conv2.i, ptr %wHubCharacteristics.i, align 1
  %shr3.i = lshr i32 %29, 24
  %conv5.i = trunc i32 %shr3.i to i8
  %bPwrOn2PwrGood.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 4
  %37 = ptrtoint ptr %bPwrOn2PwrGood.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv5.i, ptr %bPwrOn2PwrGood.i, align 1
  %u.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6
  %38 = ptrtoint ptr %u.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %u.i, align 1
  %arrayidx8.i = getelementptr %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6, i32 0, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -1, ptr %arrayidx8.i, align 1
  br label %sw.epilog495

do.body106:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_hub_control.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_hub_control, %if.then118)) #10
          to label %do.end121 [label %if.then118], !srcloc !307

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_hub_control.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.77) #10
  br label %do.end121

do.end121:                                        ; preds = %if.then118, %do.body106
  %40 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %buf, align 4
  br label %sw.epilog495

do.body123:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_hub_control.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_hub_control, %if.then135)) #10
          to label %do.end138 [label %if.then135], !srcloc !307

if.then135:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_hub_control.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.78) #10
  br label %do.end138

do.end138:                                        ; preds = %if.then135, %do.body123
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wIndex)
  %tobool139.not = icmp eq i16 %wIndex, 0
  %conv140 = zext i16 %wIndex to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv140)
  %cmp141 = icmp ult i32 %and, %conv140
  %or.cond = select i1 %tobool139.not, i1 true, i1 %cmp141
  br i1 %or.cond, label %do.end138.do.body479_crit_edge, label %do.body146

do.end138.do.body479_crit_edge:                   ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body479

do.body146:                                       ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #12
  %call154 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  %dec = add i16 %wIndex, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %tobool160.not = icmp eq i16 %dec, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %41 = select i1 %tobool160.not, i16 5376, i16 5632
  %addr_reg.i.i607 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %42 = ptrtoint ptr %addr_reg.i.i607 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %addr_reg.i.i607, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %43, i16 %41) #10, !srcloc !295
  %board.i.i608 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %44 = ptrtoint ptr %board.i.i608 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %board.i.i608, align 4
  %delay.i.i609 = getelementptr inbounds %struct.isp116x_platform_data, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %delay.i.i609 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %delay.i.i609, align 4
  %48 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hcd, align 8
  tail call void %47(ptr noundef %49, i32 noundef 300) #10
  %data_reg.i.i611 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4
  %50 = ptrtoint ptr %data_reg.i.i611 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data_reg.i.i611, align 4
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %51) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %53 = ptrtoint ptr %board.i.i608 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %board.i.i608, align 4
  %delay.i3.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %delay.i3.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %delay.i3.i, align 4
  %57 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hcd, align 8
  tail call void %56(ptr noundef %58, i32 noundef 150) #10
  %59 = ptrtoint ptr %data_reg.i.i611 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data_reg.i.i611, align 4
  %61 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %60) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %62 = zext i16 %61 to i32
  %63 = zext i16 %52 to i32
  %64 = shl nuw i32 %63, 16
  %65 = or i32 %64, %62
  %66 = ptrtoint ptr %board.i.i608 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %board.i.i608, align 4
  %delay11.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %delay11.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %delay11.i.i, align 4
  %70 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hcd, align 8
  tail call void %69(ptr noundef %71, i32 noundef 150) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call154) #10
  %72 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %65, ptr %buf, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_hub_control.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_hub_control, %if.then175)) #10
          to label %sw.epilog495 [label %if.then175], !srcloc !307

if.then175:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #12
  %73 = tail call i32 @llvm.bswap.i32(i32 %65) #10
  %conv159 = zext i16 %dec to i32
  %add = add nuw nsw i32 %conv159, 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_hub_control.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.79, i32 noundef %add, i32 noundef %73) #10
  br label %sw.epilog495

do.body181:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_hub_control.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_hub_control, %if.then193)) #10
          to label %do.end196 [label %if.then193], !srcloc !307

if.then193:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_hub_control.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.80) #10
  br label %do.end196

do.end196:                                        ; preds = %if.then193, %do.body181
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wIndex)
  %tobool197.not = icmp eq i16 %wIndex, 0
  %conv199 = zext i16 %wIndex to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv199)
  %cmp200 = icmp ult i32 %and, %conv199
  %or.cond539 = select i1 %tobool197.not, i1 true, i1 %cmp200
  br i1 %or.cond539, label %do.end196.do.body479_crit_edge, label %if.end203

do.end196.do.body479_crit_edge:                   ; preds = %do.end196
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body479

if.end203:                                        ; preds = %do.end196
  %74 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.123)
  switch i16 %wValue, label %if.end203.do.body479_crit_edge [
    i16 1, label %do.body207
    i16 17, label %do.body224
    i16 2, label %do.body241
    i16 18, label %do.body258
    i16 8, label %do.body275
    i16 16, label %do.body292
    i16 19, label %do.body309
    i16 20, label %do.body326
  ]

if.end203.do.body479_crit_edge:                   ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body479

do.body207:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_hub_control.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_hub_control, %if.then219)) #10
          to label %do.body345 [label %if.then219], !srcloc !307

if.then219:                                       ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_hub_control.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.81) #10
  br label %do.body345

do.body224:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_hub_control.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_hub_control, %if.then236)) #10
          to label %do.body345 [label %if.then236], !srcloc !307

if.then236:                                       ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_hub_control.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.82) #10
  br label %do.body345

do.body241:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_hub_control.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_hub_control, %if.then253)) #10
          to label %do.body345 [label %if.then253], !srcloc !307

if.then253:                                       ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_hub_control.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.83) #10
  br label %do.body345

do.body258:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_hub_control.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_hub_control, %if.then270)) #10
          to label %do.body345 [label %if.then270], !srcloc !307

if.then270:                                       ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_hub_control.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.84) #10
  br label %do.body345

do.body275:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_hub_control.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_hub_control, %if.then287)) #10
          to label %do.body345 [label %if.then287], !srcloc !307

if.then287:                                       ; preds = %do.body275
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_hub_control.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.85) #10
  br label %do.body345

do.body292:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_hub_control.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_hub_control, %if.then304)) #10
          to label %do.body345 [label %if.then304], !srcloc !307

if.then304:                                       ; preds = %do.body292
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_hub_control.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.86) #10
  br label %do.body345

do.body309:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_hub_control.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_hub_control, %if.then321)) #10
          to label %do.body345 [label %if.then321], !srcloc !307

if.then321:                                       ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_hub_control.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.87) #10
  br label %do.body345

do.body326:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_hub_control.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_hub_control, %if.then338)) #10
          to label %do.body345 [label %if.then338], !srcloc !307

if.then338:                                       ; preds = %do.body326
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_hub_control.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.88) #10
  br label %do.body345

do.body345:                                       ; preds = %if.then338, %do.body326, %if.then321, %do.body309, %if.then304, %do.body292, %if.then287, %do.body275, %if.then270, %do.body258, %if.then253, %do.body241, %if.then236, %do.body224, %if.then219, %do.body207
  %tmp.0 = phi i32 [ 1, %if.then219 ], [ 131072, %if.then236 ], [ 8, %if.then253 ], [ 262144, %if.then270 ], [ 512, %if.then287 ], [ 65536, %if.then304 ], [ 524288, %if.then321 ], [ 1048576, %if.then338 ], [ 1, %do.body207 ], [ 131072, %do.body224 ], [ 8, %do.body241 ], [ 262144, %do.body258 ], [ 512, %do.body275 ], [ 65536, %do.body292 ], [ 524288, %do.body309 ], [ 1048576, %do.body326 ]
  %call353 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %wIndex)
  %tobool359.not = icmp eq i16 %wIndex, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %conv.i.i612 = select i1 %tobool359.not, i16 -27392, i16 -27136
  %addr_reg.i.i613 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %75 = ptrtoint ptr %addr_reg.i.i613 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %addr_reg.i.i613, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %76, i16 %conv.i.i612) #10, !srcloc !295
  %board.i.i614 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %77 = ptrtoint ptr %board.i.i614 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %board.i.i614, align 4
  %delay.i.i615 = getelementptr inbounds %struct.isp116x_platform_data, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %delay.i.i615 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %delay.i.i615, align 4
  %81 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hcd, align 8
  tail call void %80(ptr noundef %82, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  tail call void @arm_heavy_mb() #10
  %conv.i2.i = trunc i32 %tmp.0 to i16
  %83 = tail call i16 @llvm.bswap.i16(i16 %conv.i2.i) #10
  %data_reg.i.i617 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4
  %84 = ptrtoint ptr %data_reg.i.i617 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data_reg.i.i617, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %85, i16 %83) #10, !srcloc !295
  %86 = ptrtoint ptr %board.i.i614 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %board.i.i614, align 4
  %delay.i4.i618 = getelementptr inbounds %struct.isp116x_platform_data, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %delay.i4.i618 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %delay.i4.i618, align 4
  %90 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hcd, align 8
  tail call void %89(ptr noundef %91, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  tail call void @arm_heavy_mb() #10
  %sh.diff = lshr i32 %tmp.0, 8
  %tr.sh.diff = trunc i32 %sh.diff to i16
  %92 = and i16 %tr.sh.diff, 7936
  %93 = ptrtoint ptr %data_reg.i.i617 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data_reg.i.i617, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %94, i16 %92) #10, !srcloc !295
  %95 = ptrtoint ptr %board.i.i614 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %board.i.i614, align 4
  %delay6.i.i619 = getelementptr inbounds %struct.isp116x_platform_data, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %delay6.i.i619 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %delay6.i.i619, align 4
  %99 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hcd, align 8
  tail call void %98(ptr noundef %100, i32 noundef 150) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call353) #10
  br label %sw.epilog495

do.body363:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_hub_control.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_hub_control, %if.then375)) #10
          to label %do.end378 [label %if.then375], !srcloc !307

if.then375:                                       ; preds = %do.body363
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_hub_control.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.89) #10
  br label %do.end378

do.end378:                                        ; preds = %if.then375, %do.body363
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wIndex)
  %tobool379.not = icmp eq i16 %wIndex, 0
  %conv381 = zext i16 %wIndex to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv381)
  %cmp382 = icmp ult i32 %and, %conv381
  %or.cond540 = select i1 %tobool379.not, i1 true, i1 %cmp382
  br i1 %or.cond540, label %do.end378.do.body479_crit_edge, label %if.end385

do.end378.do.body479_crit_edge:                   ; preds = %do.end378
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body479

if.end385:                                        ; preds = %do.end378
  %dec386 = add i16 %wIndex, -1
  %101 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.124)
  switch i16 %wValue, label %if.end385.do.body479_crit_edge [
    i16 2, label %do.body389
    i16 8, label %do.body424
    i16 4, label %do.body459
  ]

if.end385.do.body479_crit_edge:                   ; preds = %if.end385
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body479

do.body389:                                       ; preds = %if.end385
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_hub_control.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_hub_control, %if.then401)) #10
          to label %do.body406 [label %if.then401], !srcloc !307

if.then401:                                       ; preds = %do.body389
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_hub_control.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.83) #10
  br label %do.body406

do.body406:                                       ; preds = %if.then401, %do.body389
  %call414 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec386)
  %tobool420.not = icmp eq i16 %dec386, 0
  %cond421 = select i1 %tobool420.not, i32 21, i32 22
  tail call fastcc void @isp116x_write_reg32(ptr noundef %hcd_priv.i, i32 noundef %cond421, i32 noundef 4)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call414) #10
  br label %sw.epilog495

do.body424:                                       ; preds = %if.end385
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_hub_control.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_hub_control, %if.then436)) #10
          to label %do.body441 [label %if.then436], !srcloc !307

if.then436:                                       ; preds = %do.body424
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_hub_control.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.85) #10
  br label %do.body441

do.body441:                                       ; preds = %if.then436, %do.body424
  %call449 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec386)
  %tobool455.not = icmp eq i16 %dec386, 0
  %cond456 = select i1 %tobool455.not, i32 21, i32 22
  tail call fastcc void @isp116x_write_reg32(ptr noundef %hcd_priv.i, i32 noundef %cond456, i32 noundef 256)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call449) #10
  br label %sw.epilog495

do.body459:                                       ; preds = %if.end385
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_hub_control.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_hub_control, %if.then471)) #10
          to label %do.end474 [label %if.then471], !srcloc !307

if.then471:                                       ; preds = %do.body459
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_hub_control.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.90) #10
  br label %do.end474

do.end474:                                        ; preds = %if.then471, %do.body459
  %conv475 = zext i16 %dec386 to i32
  tail call fastcc void @root_port_reset(ptr noundef %hcd_priv.i, i32 noundef %conv475)
  br label %sw.epilog495

do.body479:                                       ; preds = %if.end385.do.body479_crit_edge, %do.end378.do.body479_crit_edge, %if.end203.do.body479_crit_edge, %do.end196.do.body479_crit_edge, %do.end138.do.body479_crit_edge, %do.end67.do.body479_crit_edge, %do.end.do.body479_crit_edge, %entry.do.body479_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_hub_control.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_hub_control, %if.then491)) #10
          to label %sw.epilog495 [label %if.then491], !srcloc !307

if.then491:                                       ; preds = %do.body479
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_hub_control.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.91) #10
  br label %sw.epilog495

sw.epilog495:                                     ; preds = %if.then491, %do.body479, %do.end474, %do.body441, %do.body406, %do.body345, %if.then175, %do.body146, %do.end121, %do.end104, %if.then82, %do.body70, %if.then47, %do.body35
  %ret.0 = phi i32 [ 0, %do.end474 ], [ 0, %do.body441 ], [ 0, %do.body406 ], [ 0, %do.body345 ], [ 0, %if.then175 ], [ 0, %do.end121 ], [ 0, %do.end104 ], [ 0, %if.then82 ], [ 0, %if.then47 ], [ -32, %if.then491 ], [ 0, %do.body35 ], [ 0, %do.body70 ], [ 0, %do.body146 ], [ -32, %do.body479 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp116x_bus_suspend(ptr noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %0 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 256) #10, !srcloc !295
  %board.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %2 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board.i.i, align 4
  %delay.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %delay.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %delay.i.i, align 4
  %6 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcd, align 8
  tail call void %5(ptr noundef %7, i32 noundef 300) #10
  %data_reg.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4
  %8 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data_reg.i.i, align 4
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %9) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %11 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %delay.i3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %delay.i3.i, align 4
  %15 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hcd, align 8
  tail call void %14(ptr noundef %16, i32 noundef 150) #10
  %17 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data_reg.i.i, align 4
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %20 = zext i16 %19 to i32
  %21 = zext i16 %10 to i32
  %22 = shl nuw i32 %21, 16
  %23 = or i32 %22, %20
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #10
  %25 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %delay11.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %delay11.i.i, align 4
  %29 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hcd, align 8
  tail call void %28(ptr noundef %30, i32 noundef 150) #10
  %31 = trunc i32 %24 to i8
  %trunc = and i8 %31, -64
  %32 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.125)
  switch i8 %trunc, label %entry.sw.default_crit_edge [
    i8 -128, label %sw.bb
    i8 64, label %sw.bb25
    i8 0, label %entry.sw.bb28_crit_edge
  ]

entry.sw.bb28_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb28

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call3) #10
  %and8 = and i32 %24, -1217
  %or = or i32 %and8, 192
  %root_hub = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 11
  %33 = ptrtoint ptr %root_hub to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %root_hub, align 8
  %do_remote_wakeup = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 40
  %35 = ptrtoint ptr %do_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %do_remote_wakeup, align 8
  %or9 = or i32 %24, 1216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not60 = icmp slt i8 %bf.load, 0
  %spec.select = select i1 %tobool.not60, i32 %or9, i32 %or
  tail call void @msleep(i32 noundef 2) #10
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %36 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %37, i16 -32512) #10, !srcloc !295
  %38 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %board.i.i, align 4
  %delay.i.i47 = getelementptr inbounds %struct.isp116x_platform_data, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %delay.i.i47 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %delay.i.i47, align 4
  %42 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hcd, align 8
  tail call void %41(ptr noundef %43, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  tail call void @arm_heavy_mb() #10
  %conv.i2.i = trunc i32 %spec.select to i16
  %44 = tail call i16 @llvm.bswap.i16(i16 %conv.i2.i) #10
  %45 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %46, i16 %44) #10, !srcloc !295
  %47 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %board.i.i, align 4
  %delay.i4.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %delay.i4.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %delay.i4.i, align 4
  %51 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hcd, align 8
  tail call void %50(ptr noundef %52, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  tail call void @arm_heavy_mb() #10
  %shr.i.i = lshr i32 %spec.select, 16
  %conv3.i.i = trunc i32 %shr.i.i to i16
  %53 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i) #10
  %54 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %55, i16 %53) #10, !srcloc !295
  %56 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %board.i.i, align 4
  %delay6.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %delay6.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %delay6.i.i, align 4
  %60 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hcd, align 8
  tail call void %59(ptr noundef %61, i32 noundef 150) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call19) #10
  tail call void @msleep(i32 noundef 5) #10
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %62 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %63, i16 -32512) #10, !srcloc !295
  %64 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %board.i.i, align 4
  %delay.i.i52 = getelementptr inbounds %struct.isp116x_platform_data, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %delay.i.i52 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %delay.i.i52, align 4
  %68 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hcd, align 8
  tail call void %67(ptr noundef %69, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  tail call void @arm_heavy_mb() #10
  %70 = trunc i32 %24 to i16
  %conv.i2.i54 = and i16 %70, -193
  %71 = tail call i16 @llvm.bswap.i16(i16 %conv.i2.i54) #10
  %72 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %73, i16 %71) #10, !srcloc !295
  %74 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %board.i.i, align 4
  %delay.i4.i56 = getelementptr inbounds %struct.isp116x_platform_data, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %delay.i4.i56 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %delay.i4.i56, align 4
  %78 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hcd, align 8
  tail call void %77(ptr noundef %79, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  tail call void @arm_heavy_mb() #10
  %shr.i.i57 = lshr i32 %24, 16
  %conv3.i.i58 = trunc i32 %shr.i.i57 to i16
  %80 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i58) #10
  %81 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %82, i16 %80) #10, !srcloc !295
  %83 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %board.i.i, align 4
  %delay6.i.i59 = getelementptr inbounds %struct.isp116x_platform_data, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %delay6.i.i59 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %delay6.i.i59, align 4
  %87 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hcd, align 8
  tail call void %86(ptr noundef %88, i32 noundef 150) #10
  br label %sw.bb28

sw.bb28:                                          ; preds = %sw.bb25, %entry.sw.bb28_crit_edge
  br label %sw.default

sw.default:                                       ; preds = %sw.bb28, %entry.sw.default_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.default_crit_edge ], [ -16, %sw.bb28 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call3) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %ret.1 = phi i32 [ %ret.0, %sw.default ], [ 0, %sw.bb ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp116x_bus_resume(ptr noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  tail call void @msleep(i32 noundef 5) #10
  tail call void @_raw_spin_lock_irq(ptr noundef %hcd_priv.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %0 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 256) #10, !srcloc !295
  %board.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %2 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board.i.i, align 4
  %delay.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %delay.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %delay.i.i, align 4
  %6 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcd, align 8
  tail call void %5(ptr noundef %7, i32 noundef 300) #10
  %data_reg.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4
  %8 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data_reg.i.i, align 4
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %9) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %11 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %delay.i3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %delay.i3.i, align 4
  %15 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hcd, align 8
  tail call void %14(ptr noundef %16, i32 noundef 150) #10
  %17 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data_reg.i.i, align 4
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %20 = zext i16 %19 to i32
  %21 = zext i16 %10 to i32
  %22 = shl nuw i32 %21, 16
  %23 = or i32 %22, %20
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #10
  %25 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %delay11.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %delay11.i.i, align 4
  %29 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hcd, align 8
  tail call void %28(ptr noundef %30, i32 noundef 150) #10
  %31 = trunc i32 %24 to i8
  %trunc = and i8 %31, -64
  %32 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.126)
  switch i8 %trunc, label %sw.default [
    i8 -64, label %sw.bb
    i8 64, label %entry.sw.epilog_crit_edge
    i8 -128, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %33 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %34, i16 -32512) #10, !srcloc !295
  %35 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %board.i.i, align 4
  %delay.i.i84 = getelementptr inbounds %struct.isp116x_platform_data, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %delay.i.i84 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %delay.i.i84, align 4
  %39 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hcd, align 8
  tail call void %38(ptr noundef %40, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  tail call void @arm_heavy_mb() #10
  %41 = trunc i32 %24 to i16
  %42 = and i16 %41, -193
  %conv.i2.i = or i16 %42, 64
  %43 = tail call i16 @llvm.bswap.i16(i16 %conv.i2.i) #10
  %44 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %45, i16 %43) #10, !srcloc !295
  %46 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %board.i.i, align 4
  %delay.i4.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %delay.i4.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %delay.i4.i, align 4
  %50 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hcd, align 8
  tail call void %49(ptr noundef %51, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  tail call void @arm_heavy_mb() #10
  %shr.i.i = lshr i32 %24, 16
  %conv3.i.i = trunc i32 %shr.i.i to i16
  %52 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i) #10
  %53 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %54, i16 %52) #10, !srcloc !295
  %55 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %board.i.i, align 4
  %delay6.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %delay6.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %delay6.i.i, align 4
  %59 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hcd, align 8
  tail call void %58(ptr noundef %60, i32 noundef 150) #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %hcd_priv.i) #10
  br label %cleanup50

sw.default:                                       ; preds = %entry
  tail call void @_raw_spin_unlock_irq(ptr noundef %hcd_priv.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_bus_resume.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_bus_resume, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !307

if.then:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_bus_resume.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.93) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %sw.default
  %call9 = tail call i32 @isp116x_reset(ptr noundef %hcd)
  %call10 = tail call i32 @isp116x_start(ptr noundef %hcd)
  %call11 = tail call i32 @isp116x_hub_control(ptr noundef %hcd, i16 noundef zeroext 8963, i16 noundef zeroext 8, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0)
  %rhdesca = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 3, i32 1
  %61 = ptrtoint ptr %rhdesca to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rhdesca, align 4
  %and12 = and i32 %62, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and12)
  %cmp = icmp eq i32 %and12, 2
  br i1 %cmp, label %if.then13, label %do.end.cleanup50_crit_edge

do.end.cleanup50_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup50

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 @isp116x_hub_control(ptr noundef %hcd, i16 noundef zeroext 8963, i16 noundef zeroext 8, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0)
  br label %cleanup50

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %rhdesca16 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 3, i32 1
  %63 = ptrtoint ptr %rhdesca16 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rhdesca16, align 4
  %and17 = and i32 %64, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not122 = icmp eq i32 %and17, 0
  br i1 %tobool18.not122, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  br label %while.body

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %sw.epilog.while.body_crit_edge
  %dec123.in = phi i32 [ %dec123, %cleanup.while.body_crit_edge ], [ %and17, %sw.epilog.while.body_crit_edge ]
  %dec123 = add nsw i32 %dec123.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec123)
  %tobool19.not = icmp eq i32 %dec123, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %65 = select i1 %tobool19.not, i16 5376, i16 5632
  %66 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %67, i16 %65) #10, !srcloc !295
  %68 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %board.i.i, align 4
  %delay.i.i89 = getelementptr inbounds %struct.isp116x_platform_data, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %delay.i.i89 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %delay.i.i89, align 4
  %72 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hcd, align 8
  tail call void %71(ptr noundef %73, i32 noundef 300) #10
  %74 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data_reg.i.i, align 4
  %76 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %75) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %77 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i92 = getelementptr inbounds %struct.isp116x_platform_data, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %delay.i3.i92 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %delay.i3.i92, align 4
  %81 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hcd, align 8
  tail call void %80(ptr noundef %82, i32 noundef 150) #10
  %83 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data_reg.i.i, align 4
  %85 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %84) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %86 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i93 = getelementptr inbounds %struct.isp116x_platform_data, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %delay11.i.i93 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %delay11.i.i93, align 4
  %90 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hcd, align 8
  tail call void %89(ptr noundef %91, i32 noundef 150) #10
  %92 = and i16 %76, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %tobool22.not = icmp eq i16 %92, 0
  br i1 %tobool22.not, label %while.body.cleanup_crit_edge, label %do.body25

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body25:                                        ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_bus_resume.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_bus_resume, %if.then37)) #10
          to label %do.end40 [label %if.then37], !srcloc !307

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_bus_resume.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.92, i32 noundef %dec123) #10
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %do.body25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %93 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %94, i16 -30720) #10, !srcloc !295
  %95 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %board.i.i, align 4
  %delay.i.i96 = getelementptr inbounds %struct.isp116x_platform_data, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %delay.i.i96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %delay.i.i96, align 4
  %99 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hcd, align 8
  tail call void %98(ptr noundef %100, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  tail call void @arm_heavy_mb() #10
  %101 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %102, i16 %65) #10, !srcloc !295
  %103 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %board.i.i, align 4
  %delay.i4.i100 = getelementptr inbounds %struct.isp116x_platform_data, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %delay.i4.i100 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %delay.i4.i100, align 4
  %107 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hcd, align 8
  tail call void %106(ptr noundef %108, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  tail call void @arm_heavy_mb() #10
  %109 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %110, i16 0) #10, !srcloc !295
  %111 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %board.i.i, align 4
  %delay6.i.i101 = getelementptr inbounds %struct.isp116x_platform_data, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %delay6.i.i101 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %delay6.i.i101, align 4
  %115 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hcd, align 8
  tail call void %114(ptr noundef %116, i32 noundef 150) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %while.body.cleanup_crit_edge
  br i1 %tobool19.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %sw.epilog.while.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %hcd_priv.i) #10
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %117 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 132, ptr %state, align 4
  tail call void @msleep(i32 noundef 40) #10
  tail call void @_raw_spin_lock_irq(ptr noundef %hcd_priv.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %118 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %119, i16 256) #10, !srcloc !295
  %120 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %board.i.i, align 4
  %delay.i.i104 = getelementptr inbounds %struct.isp116x_platform_data, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %delay.i.i104 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %delay.i.i104, align 4
  %124 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hcd, align 8
  tail call void %123(ptr noundef %125, i32 noundef 300) #10
  %126 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %data_reg.i.i, align 4
  %128 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %127) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %129 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i107 = getelementptr inbounds %struct.isp116x_platform_data, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %delay.i3.i107 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %delay.i3.i107, align 4
  %133 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hcd, align 8
  tail call void %132(ptr noundef %134, i32 noundef 150) #10
  %135 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %data_reg.i.i, align 4
  %137 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %136) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %138 = zext i16 %137 to i32
  %139 = zext i16 %128 to i32
  %140 = shl nuw i32 %139, 16
  %141 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i108 = getelementptr inbounds %struct.isp116x_platform_data, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %delay11.i.i108 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %delay11.i.i108, align 4
  %145 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %hcd, align 8
  tail call void %144(ptr noundef %146, i32 noundef 150) #10
  %.masked = and i32 %140, 1073676288
  %147 = or i32 %.masked, %138
  %148 = or i32 %147, -2147483648
  %149 = tail call i32 @llvm.bswap.i32(i32 %148)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %150 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %151, i16 -32512) #10, !srcloc !295
  %152 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %board.i.i, align 4
  %delay.i.i111 = getelementptr inbounds %struct.isp116x_platform_data, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %delay.i.i111 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %delay.i.i111, align 4
  %156 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %hcd, align 8
  tail call void %155(ptr noundef %157, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  tail call void @arm_heavy_mb() #10
  %158 = lshr i32 %148, 16
  %159 = trunc i32 %158 to i16
  %160 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %161, i16 %159) #10, !srcloc !295
  %162 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %board.i.i, align 4
  %delay.i4.i115 = getelementptr inbounds %struct.isp116x_platform_data, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %delay.i4.i115 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %delay.i4.i115, align 4
  %166 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %hcd, align 8
  tail call void %165(ptr noundef %167, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  tail call void @arm_heavy_mb() #10
  %shr.i.i116 = lshr i32 %149, 16
  %conv3.i.i117 = trunc i32 %shr.i.i116 to i16
  %168 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i117) #10
  %169 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %170, i16 %168) #10, !srcloc !295
  %171 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %board.i.i, align 4
  %delay6.i.i118 = getelementptr inbounds %struct.isp116x_platform_data, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %delay6.i.i118 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %delay6.i.i118, align 4
  %175 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %hcd, align 8
  tail call void %174(ptr noundef %176, i32 noundef 150) #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %hcd_priv.i) #10
  %177 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 1, ptr %state, align 4
  br label %cleanup50

cleanup50:                                        ; preds = %while.end, %if.then13, %do.end.cleanup50_crit_edge, %sw.bb3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isp116x_write_reg16(ptr nocapture noundef readonly %isp116x, i32 noundef %reg, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %0 = trunc i32 %reg to i16
  %1 = shl i16 %0, 8
  %conv.i = or i16 %1, -32768
  %addr_reg.i = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %2 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %3, i16 %conv.i) #10, !srcloc !295
  %board.i = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %4 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board.i, align 4
  %delay.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %delay.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %isp116x, i32 -600
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void %7(ptr noundef %9, i32 noundef 300) #10
  %conv = trunc i32 %val to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  tail call void @arm_heavy_mb() #10
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv) #10
  %data_reg.i = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %11 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %12, i16 %10) #10, !srcloc !295
  %13 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %board.i, align 4
  %delay.i3 = getelementptr inbounds %struct.isp116x_platform_data, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %delay.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %delay.i3, align 4
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void %16(ptr noundef %18, i32 noundef 150) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isp116x_write_reg32(ptr nocapture noundef readonly %isp116x, i32 noundef %reg, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %0 = trunc i32 %reg to i16
  %1 = shl i16 %0, 8
  %conv.i = or i16 %1, -32768
  %addr_reg.i = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %2 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %3, i16 %conv.i) #10, !srcloc !295
  %board.i = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %4 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board.i, align 4
  %delay.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %delay.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %isp116x, i32 -600
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void %7(ptr noundef %9, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  tail call void @arm_heavy_mb() #10
  %conv.i2 = trunc i32 %val to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv.i2) #10
  %data_reg.i = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %11 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %12, i16 %10) #10, !srcloc !295
  %13 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %board.i, align 4
  %delay.i4 = getelementptr inbounds %struct.isp116x_platform_data, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %delay.i4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %delay.i4, align 4
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void %16(ptr noundef %18, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  tail call void @arm_heavy_mb() #10
  %shr.i = lshr i32 %val, 16
  %conv3.i = trunc i32 %shr.i to i16
  %19 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #10
  %20 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 %19) #10, !srcloc !295
  %22 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %board.i, align 4
  %delay6.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %delay6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %delay6.i, align 4
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void %25(ptr noundef %27, i32 noundef 150) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hc_died(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_resume_root_hub(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_atl_transfers(ptr noundef %isp116x) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %atl_finishing = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %atl_finishing, i32 noundef 4) #10
  %0 = ptrtoint ptr %atl_finishing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %atl_finishing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %isp116x, i32 -600
  %state = getelementptr i8, ptr %isp116x, i32 -12
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %4 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 11264) #10, !srcloc !295
  %board.i.i = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %6 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %board.i.i, align 4
  %delay.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %delay.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %delay.i.i, align 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  tail call void %9(ptr noundef %11, i32 noundef 300) #10
  %data_reg.i.i = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %12 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data_reg.i.i, align 4
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %13) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %15 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %delay.i3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %delay.i3.i, align 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 8
  tail call void %18(ptr noundef %20, i32 noundef 150) #10
  %21 = and i16 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool7.not = icmp eq i16 %21, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %atl_active = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 19
  %22 = ptrtoint ptr %atl_active to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %atl_active, align 4
  %atl_bufshrt = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 21
  %23 = ptrtoint ptr %atl_bufshrt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %atl_bufshrt, align 4
  %atl_buflen = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 20
  %24 = ptrtoint ptr %atl_buflen to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %atl_buflen, align 4
  %periodic_count = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 17
  %25 = ptrtoint ptr %periodic_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %periodic_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool10.not = icmp eq i32 %26, 0
  br i1 %tobool10.not, label %if.end9.if.end25_crit_edge, label %if.then11

if.end9.if.end25_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then11:                                        ; preds = %if.end9
  %fmindex = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 18
  %27 = ptrtoint ptr %fmindex to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %fmindex, align 4
  %29 = add i16 %28, 1
  %30 = and i16 %29, 31
  %and13 = zext i16 %30 to i32
  store i16 %30, ptr %fmindex, align 4
  %arrayidx = getelementptr %struct.isp116x, ptr %isp116x, i32 0, i32 15, i32 %and13
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool17.not = icmp eq i16 %32, 0
  br i1 %tobool17.not, label %if.then11.if.end25_crit_edge, label %if.then18

if.then11.if.end25_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then18:                                        ; preds = %if.then11
  %arrayidx19 = getelementptr %struct.isp116x, ptr %isp116x, i32 0, i32 16, i32 %and13
  %33 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx19, align 4
  %35 = ptrtoint ptr %atl_active to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %atl_active, align 4
  %next200 = getelementptr inbounds %struct.isp116x_ep, ptr %34, i32 0, i32 13
  %36 = ptrtoint ptr %next200 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %next200, align 4
  %tobool21.not201 = icmp eq ptr %37, null
  br i1 %tobool21.not201, label %if.then18.while.end_crit_edge, label %if.then18.while.body_crit_edge

if.then18.while.body_crit_edge:                   ; preds = %if.then18
  br label %while.body

if.then18.while.end_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then18.while.body_crit_edge
  %38 = phi ptr [ %41, %while.body.while.body_crit_edge ], [ %37, %if.then18.while.body_crit_edge ]
  %last_ep.0202 = phi ptr [ %38, %while.body.while.body_crit_edge ], [ %34, %if.then18.while.body_crit_edge ]
  %active = getelementptr inbounds %struct.isp116x_ep, ptr %last_ep.0202, i32 0, i32 9
  %39 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %active, align 4
  %next = getelementptr inbounds %struct.isp116x_ep, ptr %38, i32 0, i32 13
  %40 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %next, align 4
  %tobool21.not = icmp eq ptr %41, null
  br i1 %tobool21.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then18.while.end_crit_edge
  %last_ep.0.lcssa = phi ptr [ %34, %if.then18.while.end_crit_edge ], [ %38, %while.body.while.end_crit_edge ]
  %active23 = getelementptr inbounds %struct.isp116x_ep, ptr %last_ep.0.lcssa, i32 0, i32 9
  %42 = ptrtoint ptr %active23 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %active23, align 4
  br label %if.end25

if.end25:                                         ; preds = %while.end, %if.then11.if.end25_crit_edge, %if.end9.if.end25_crit_edge
  %load.0 = phi i16 [ %32, %while.end ], [ 0, %if.then11.if.end25_crit_edge ], [ 0, %if.end9.if.end25_crit_edge ]
  %last_ep.1 = phi ptr [ %last_ep.0.lcssa, %while.end ], [ null, %if.then11.if.end25_crit_edge ], [ null, %if.end9.if.end25_crit_edge ]
  %async = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 14
  %43 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn203 = load ptr, ptr %async, align 4
  %cmp.not205 = icmp eq ptr %.pn203, %async
  br i1 %cmp.not205, label %if.end25.for.end_crit_edge, label %if.end25.for.body_crit_edge

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  br label %for.body

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end25.for.body_crit_edge
  %.pn212 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn203, %if.end25.for.body_crit_edge ]
  %last_ep.2209 = phi ptr [ %last_ep.3, %for.inc.for.body_crit_edge ], [ %last_ep.1, %if.end25.for.body_crit_edge ]
  %load.1206 = phi i16 [ %load.2, %for.inc.for.body_crit_edge ], [ %load.0, %if.end25.for.body_crit_edge ]
  %ep.0213 = getelementptr i8, ptr %.pn212, i32 -44
  %44 = ptrtoint ptr %ep.0213 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ep.0213, align 4
  %urb_list = getelementptr inbounds %struct.usb_host_endpoint, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %urb_list to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %urb_list, align 4
  %dev = getelementptr i8, ptr %47, i32 20
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %speed33 = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %speed33 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %speed33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp34 = icmp eq i32 %51, 1
  %cond = select i1 %cmp34, i32 20, i32 1
  %nextpid = getelementptr i8, ptr %.pn212, i32 -26
  %52 = ptrtoint ptr %nextpid to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %nextpid, align 2
  %54 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.127)
  switch i8 %53, label %if.else45 [
    i8 45, label %for.body.if.end82_crit_edge
    i8 -46, label %if.then44
  ]

for.body.if.end82_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then44:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.else45:                                        ; preds = %for.body
  %conv46 = zext i16 %load.1206 to i32
  %sub = sub nsw i32 850, %conv46
  %div = sdiv i32 %sub, %cond
  %cond49 = select i1 %cmp34, i32 64, i32 832
  %55 = tail call i32 @llvm.smin.i32(i32 %div, i32 %cond49)
  %transfer_buffer_length = getelementptr i8, ptr %47, i32 64
  %56 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %transfer_buffer_length, align 4
  %actual_length = getelementptr i8, ptr %47, i32 68
  %58 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %actual_length, align 4
  %sub54 = sub i32 %57, %59
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %sub54)
  %cmp55 = icmp ult i32 %55, %sub54
  br i1 %cmp55, label %if.then57, label %if.else45.do.body_crit_edge

if.else45.do.body_crit_edge:                      ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then57:                                        ; preds = %if.else45
  %maxpacket = getelementptr i8, ptr %.pn212, i32 -28
  %60 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %maxpacket, align 4
  %conv58 = zext i8 %61 to i32
  %rem = srem i32 %55, %conv58
  %sub59 = sub nsw i32 %55, %rem
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub59)
  %tobool60.not = icmp eq i32 %sub59, 0
  br i1 %tobool60.not, label %if.then57.for.inc_crit_edge, label %if.then57.do.body_crit_edge

if.then57.do.body_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then57.for.inc_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body:                                          ; preds = %if.then57.do.body_crit_edge, %if.else45.do.body_crit_edge
  %len.0 = phi i32 [ %sub59, %if.then57.do.body_crit_edge ], [ %sub54, %if.else45.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %cmp68 = icmp slt i32 %len.0, 0
  br i1 %cmp68, label %do.body74, label %do.body.if.end82_crit_edge, !prof !308

do.body.if.end82_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

do.body74:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/host/isp116x-hcd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 548, 0\0A.popsection", ""() #10, !srcloc !309
  unreachable

if.end82:                                         ; preds = %do.body.if.end82_crit_edge, %if.then44, %for.body.if.end82_crit_edge
  %len.1 = phi i32 [ 0, %if.then44 ], [ %len.0, %do.body.if.end82_crit_edge ], [ 8, %for.body.if.end82_crit_edge ]
  %mul = mul i32 %len.1, %cond
  %62 = trunc i32 %mul to i16
  %conv85 = add i16 %load.1206, %62
  call void @__sanitizer_cov_trace_const_cmp2(i16 850, i16 %conv85)
  %cmp87 = icmp ugt i16 %conv85, 850
  br i1 %cmp87, label %if.end82.for.end_crit_edge, label %if.end90

if.end82.for.end_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end90:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  %active91 = getelementptr i8, ptr %.pn212, i32 -16
  %63 = ptrtoint ptr %active91 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %active91, align 4
  %conv92 = trunc i32 %len.1 to i16
  %length = getelementptr i8, ptr %.pn212, i32 -22
  %64 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv92, ptr %length, align 2
  %tobool93.not = icmp eq ptr %last_ep.2209, null
  %active95 = getelementptr inbounds %struct.isp116x_ep, ptr %last_ep.2209, i32 0, i32 9
  %active95.sink = select i1 %tobool93.not, ptr %atl_active, ptr %active95
  %65 = ptrtoint ptr %active95.sink to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %ep.0213, ptr %active95.sink, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end90, %if.then57.for.inc_crit_edge
  %load.2 = phi i16 [ %load.1206, %if.then57.for.inc_crit_edge ], [ %conv85, %if.end90 ]
  %last_ep.3 = phi ptr [ %last_ep.2209, %if.then57.for.inc_crit_edge ], [ %ep.0213, %if.end90 ]
  %66 = ptrtoint ptr %.pn212 to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pn = load ptr, ptr %.pn212, align 4
  %cmp.not = icmp eq ptr %.pn, %async
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end82.for.end_crit_edge, %if.end25.for.end_crit_edge
  %67 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %async, align 4
  %prev = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 14, i32 1
  %69 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev, align 4
  %cmp107.not = icmp eq ptr %68, %70
  br i1 %cmp107.not, label %for.end.if.end113_crit_edge, label %if.then109

for.end.if.end113_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then109:                                       ; preds = %for.end
  %call.i.i182 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %async) #10
  br i1 %call.i.i182, label %if.end.i.i, label %if.then109.__list_del_entry.exit.i_crit_edge

if.then109.__list_del_entry.exit.i_crit_edge:     ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev, align 4
  %73 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %async, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev1.i.i.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %74, ptr %72, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then109.__list_del_entry.exit.i_crit_edge
  %77 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %68, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %async, ptr noundef %68, ptr noundef %78) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.if.end113_crit_edge

__list_del_entry.exit.i.if.end113_crit_edge:      ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %async, ptr %prev1.i.i2.i, align 4
  %80 = ptrtoint ptr %async to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %78, ptr %async, align 4
  %81 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %68, ptr %prev, align 4
  %82 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %async, ptr %68, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.if.end113_crit_edge, %for.end.if.end113_crit_edge
  %83 = ptrtoint ptr %atl_active to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %atl_active, align 4
  %tobool115.not = icmp eq ptr %84, null
  br i1 %tobool115.not, label %if.end113.cleanup_crit_edge, label %for.body.lr.ph.i

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end113
  %atl_last_dir.i = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 22
  br label %for.body.i

for.body.i:                                       ; preds = %if.end85.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ep.0128.i = phi ptr [ %84, %for.body.lr.ph.i ], [ %ep.0.i, %if.end85.i.for.body.i_crit_edge ]
  %85 = ptrtoint ptr %ep.0128.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ep.0128.i, align 4
  %urb_list.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %urb_list.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile ptr, ptr %urb_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %88, %urb_list.i
  br i1 %cmp.i.not.i, label %do.body4.i, label %do.end9.i, !prof !308

do.body4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/host/isp116x-hcd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 241, 0\0A.popsection", ""() #10, !srcloc !310
  unreachable

do.end9.i:                                        ; preds = %for.body.i
  %ptd12.i = getelementptr inbounds %struct.isp116x_ep, ptr %ep.0128.i, i32 0, i32 2
  %length.i = getelementptr inbounds %struct.isp116x_ep, ptr %ep.0128.i, i32 0, i32 7
  %89 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %length.i, align 2
  %transfer_buffer.i = getelementptr i8, ptr %88, i32 44
  %91 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %transfer_buffer.i, align 4
  %actual_length.i = getelementptr i8, ptr %88, i32 68
  %93 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %actual_length.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %92, i32 %94
  %data.i = getelementptr inbounds %struct.isp116x_ep, ptr %ep.0128.i, i32 0, i32 8
  %95 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %add.ptr13.i, ptr %data.i, align 4
  %nextpid.i = getelementptr inbounds %struct.isp116x_ep, ptr %ep.0128.i, i32 0, i32 5
  %96 = ptrtoint ptr %nextpid.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %nextpid.i, align 2
  %98 = zext i8 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.128)
  switch i8 %97, label %do.end35.i [
    i8 105, label %sw.bb.i
    i8 -31, label %sw.bb17.i
    i8 45, label %sw.bb26.i
    i8 -46, label %sw.bb28.i
  ]

sw.bb.i:                                          ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr i8, ptr %88, i32 20
  %99 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev.i, align 4
  %toggle14.i = getelementptr inbounds %struct.usb_device, ptr %100, i32 0, i32 10
  %101 = ptrtoint ptr %toggle14.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %toggle14.i, align 4
  %epnum.i = getelementptr inbounds %struct.isp116x_ep, ptr %ep.0128.i, i32 0, i32 4
  %103 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %epnum.i, align 1
  %conv15.i = zext i8 %104 to i32
  %shr.i = lshr i32 %102, %conv15.i
  %and.i = and i32 %shr.i, 1
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev18.i = getelementptr i8, ptr %88, i32 20
  %105 = ptrtoint ptr %dev18.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev18.i, align 4
  %arrayidx20.i = getelementptr %struct.usb_device, ptr %106, i32 0, i32 10, i32 1
  %107 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx20.i, align 4
  %epnum21.i = getelementptr inbounds %struct.isp116x_ep, ptr %ep.0128.i, i32 0, i32 4
  %109 = ptrtoint ptr %epnum21.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %epnum21.i, align 1
  %conv22.i = zext i8 %110 to i32
  %shr23.i = lshr i32 %108, %conv22.i
  %and24.i = and i32 %shr23.i, 1
  br label %sw.epilog.i

sw.bb26.i:                                        ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %setup_packet.i = getelementptr i8, ptr %88, i32 72
  %111 = ptrtoint ptr %setup_packet.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %setup_packet.i, align 4
  %113 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %112, ptr %data.i, align 4
  br label %sw.epilog.i

sw.bb28.i:                                        ; preds = %do.end9.i
  %transfer_buffer_length.i = getelementptr i8, ptr %88, i32 64
  %114 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %transfer_buffer_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool29.not.i = icmp eq i32 %115, 0
  br i1 %tobool29.not.i, label %sw.bb28.i.sw.epilog.i_crit_edge, label %land.end.i

sw.bb28.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

land.end.i:                                       ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #12
  %pipe.i = getelementptr i8, ptr %88, i32 28
  %116 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %pipe.i, align 4
  %and30.i = and i32 %117, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  %spec.select.i = select i1 %tobool31.not.i, i32 2, i32 1
  br label %sw.epilog.i

do.end35.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %97 to i32
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 270, i32 noundef %conv.i) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/host/isp116x-hcd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 272, 0\0A.popsection", ""() #10, !srcloc !311
  unreachable

sw.epilog.i:                                      ; preds = %land.end.i, %sw.bb28.i.sw.epilog.i_crit_edge, %sw.bb26.i, %sw.bb17.i, %sw.bb.i
  %len.0.i = phi i16 [ 8, %sw.bb26.i ], [ %90, %sw.bb17.i ], [ %90, %sw.bb.i ], [ 0, %sw.bb28.i.sw.epilog.i_crit_edge ], [ 0, %land.end.i ]
  %toggle.0.i = phi i32 [ 0, %sw.bb26.i ], [ %and24.i, %sw.bb17.i ], [ %and.i, %sw.bb.i ], [ 1, %sw.bb28.i.sw.epilog.i_crit_edge ], [ 1, %land.end.i ]
  %dir.0.i = phi i32 [ 0, %sw.bb26.i ], [ 1, %sw.bb17.i ], [ 2, %sw.bb.i ], [ 2, %sw.bb28.i.sw.epilog.i_crit_edge ], [ %spec.select.i, %land.end.i ]
  %toggle.0.tr.i = trunc i32 %toggle.0.i to i16
  %118 = shl nuw nsw i16 %toggle.0.tr.i, 10
  %conv48.i = or i16 %118, -2048
  %119 = ptrtoint ptr %ptd12.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv48.i, ptr %ptd12.i, align 2
  %maxpacket.i = getelementptr inbounds %struct.isp116x_ep, ptr %ep.0128.i, i32 0, i32 3
  %120 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %maxpacket.i, align 4
  %conv49.i = zext i8 %121 to i16
  %dev52.i = getelementptr i8, ptr %88, i32 20
  %122 = ptrtoint ptr %dev52.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev52.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %125)
  %cmp.i = icmp eq i32 %125, 1
  %shl54.i = select i1 %cmp.i, i16 1024, i16 0
  %or56.i = or i16 %shl54.i, %conv49.i
  %epnum57.i = getelementptr inbounds %struct.isp116x_ep, ptr %ep.0128.i, i32 0, i32 4
  %126 = ptrtoint ptr %epnum57.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %epnum57.i, align 1
  %conv58.i = zext i8 %127 to i16
  %shl59.i = shl i16 %conv58.i, 12
  %or61.i = or i16 %or56.i, %shl59.i
  %mps.i = getelementptr inbounds %struct.isp116x_ep, ptr %ep.0128.i, i32 0, i32 2, i32 1
  %128 = ptrtoint ptr %mps.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %or61.i, ptr %mps.i, align 2
  %conv63.i = zext i16 %len.0.i to i32
  %and65.i = and i32 %conv63.i, 1023
  %shl67.i = shl nuw nsw i32 %dir.0.i, 10
  %or69.i = or i32 %shl67.i, %and65.i
  %conv70.i = trunc i32 %or69.i to i16
  %len71.i = getelementptr inbounds %struct.isp116x_ep, ptr %ep.0128.i, i32 0, i32 2, i32 2
  %129 = ptrtoint ptr %len71.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv70.i, ptr %len71.i, align 2
  %pipe72.i = getelementptr i8, ptr %88, i32 28
  %130 = ptrtoint ptr %pipe72.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %pipe72.i, align 4
  %132 = trunc i32 %131 to i16
  %133 = lshr i16 %132, 8
  %conv77.i = and i16 %133, 127
  %faddr.i = getelementptr inbounds %struct.isp116x_ep, ptr %ep.0128.i, i32 0, i32 2, i32 3
  %134 = ptrtoint ptr %faddr.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %conv77.i, ptr %faddr.i, align 2
  %active.i = getelementptr inbounds %struct.isp116x_ep, ptr %ep.0128.i, i32 0, i32 9
  %135 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %active.i, align 4
  %tobool78.not.i = icmp eq ptr %136, null
  br i1 %tobool78.not.i, label %if.then79.i, label %sw.epilog.i.if.end85.i_crit_edge

sw.epilog.i.if.end85.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85.i

if.then79.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %137 = or i16 %or61.i, 2048
  %138 = ptrtoint ptr %mps.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %137, ptr %mps.i, align 2
  %139 = ptrtoint ptr %atl_last_dir.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %dir.0.i, ptr %atl_last_dir.i, align 4
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then79.i, %sw.epilog.i.if.end85.i_crit_edge
  %140 = ptrtoint ptr %atl_buflen to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %atl_buflen, align 4
  %add.i = add i32 %141, 8
  %142 = ptrtoint ptr %atl_bufshrt to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %add.i, ptr %atl_bufshrt, align 4
  %add88.i = add nuw nsw i32 %conv63.i, 3
  %and89.i = and i32 %add88.i, 131068
  %add90.i = add i32 %add.i, %and89.i
  store i32 %add90.i, ptr %atl_buflen, align 4
  %143 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %ep.0.i = load ptr, ptr %active.i, align 4
  %tobool.not.i = icmp eq ptr %ep.0.i, null
  br i1 %tobool.not.i, label %preproc_atl_queue.exit, label %if.end85.i.for.body.i_crit_edge

if.end85.i.for.body.i_crit_edge:                  ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

preproc_atl_queue.exit:                           ; preds = %if.end85.i
  %144 = ptrtoint ptr %atl_last_dir.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %atl_last_dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %145)
  %cmp.i184 = icmp eq i32 %145, 2
  %cond.in.i = select i1 %cmp.i184, ptr %atl_bufshrt, ptr %atl_buflen
  %146 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %cond.i = load i32, ptr %cond.in.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %147 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %148, i16 -23552) #10, !srcloc !295
  %149 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %board.i.i, align 4
  %delay.i.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %delay.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %delay.i.i.i, align 4
  %153 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %add.ptr.i, align 8
  tail call void %152(ptr noundef %154, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  tail call void @arm_heavy_mb() #10
  %155 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %156, i16 1024) #10, !srcloc !295
  %157 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %delay.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %delay.i3.i.i, align 4
  %161 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %add.ptr.i, align 8
  tail call void %160(ptr noundef %162, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %163 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %164, i16 -24064) #10, !srcloc !295
  %165 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %board.i.i, align 4
  %delay.i.i52.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %delay.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %delay.i.i52.i, align 4
  %169 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %add.ptr.i, align 8
  tail call void %168(ptr noundef %170, i32 noundef 300) #10
  %conv.i.i = trunc i32 %cond.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  tail call void @arm_heavy_mb() #10
  %171 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #10
  %172 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %173, i16 %171) #10, !srcloc !295
  %174 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i55.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %delay.i3.i55.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %delay.i3.i55.i, align 4
  %178 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %add.ptr.i, align 8
  tail call void %177(ptr noundef %179, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %180 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %181, i16 -16128) #10, !srcloc !295
  %182 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %board.i.i, align 4
  %delay.i.i187 = getelementptr inbounds %struct.isp116x_platform_data, ptr %183, i32 0, i32 1
  %184 = ptrtoint ptr %delay.i.i187 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %delay.i.i187, align 4
  %186 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %add.ptr.i, align 8
  tail call void %185(ptr noundef %187, i32 noundef 300) #10
  %188 = ptrtoint ptr %atl_active to i32
  call void @__asan_load4_noabort(i32 %188)
  %ep.077.i = load ptr, ptr %atl_active, align 4
  %tobool.not78.i = icmp eq ptr %ep.077.i, null
  br i1 %tobool.not78.i, label %preproc_atl_queue.exit.do.body12.i_crit_edge, label %preproc_atl_queue.exit.for.body.i192_crit_edge

preproc_atl_queue.exit.for.body.i192_crit_edge:   ; preds = %preproc_atl_queue.exit
  br label %for.body.i192

preproc_atl_queue.exit.do.body12.i_crit_edge:     ; preds = %preproc_atl_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12.i

for.body.i192:                                    ; preds = %for.inc.i.for.body.i192_crit_edge, %preproc_atl_queue.exit.for.body.i192_crit_edge
  %ep.080.i = phi ptr [ %ep.0.pr.i, %for.inc.i.for.body.i192_crit_edge ], [ %ep.077.i, %preproc_atl_queue.exit.for.body.i192_crit_edge ]
  %buflen.079.i = phi i32 [ %sub10.i, %for.inc.i.for.body.i192_crit_edge ], [ %cond.i, %preproc_atl_queue.exit.for.body.i192_crit_edge ]
  %ptd1.i = getelementptr inbounds %struct.isp116x_ep, ptr %ep.080.i, i32 0, i32 2
  %189 = ptrtoint ptr %ptd1.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %ptd1.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  tail call void @arm_heavy_mb() #10
  %191 = tail call i16 @llvm.bswap.i16(i16 %190) #10
  %192 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %193, i16 %191) #10, !srcloc !295
  %194 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %board.i.i, align 4
  %delay.i57.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %delay.i57.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %delay.i57.i, align 4
  %198 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %add.ptr.i, align 8
  tail call void %197(ptr noundef %199, i32 noundef 150) #10
  %mps.i189 = getelementptr inbounds %struct.isp116x_ep, ptr %ep.080.i, i32 0, i32 2, i32 1
  %200 = ptrtoint ptr %mps.i189 to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %mps.i189, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  tail call void @arm_heavy_mb() #10
  %202 = tail call i16 @llvm.bswap.i16(i16 %201) #10
  %203 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %204, i16 %202) #10, !srcloc !295
  %205 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %board.i.i, align 4
  %delay.i61.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %delay.i61.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %delay.i61.i, align 4
  %209 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %add.ptr.i, align 8
  tail call void %208(ptr noundef %210, i32 noundef 150) #10
  %len.i = getelementptr inbounds %struct.isp116x_ep, ptr %ep.080.i, i32 0, i32 2, i32 2
  %211 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %len.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  tail call void @arm_heavy_mb() #10
  %213 = tail call i16 @llvm.bswap.i16(i16 %212) #10
  %214 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %215, i16 %213) #10, !srcloc !295
  %216 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %board.i.i, align 4
  %delay.i65.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %217, i32 0, i32 1
  %218 = ptrtoint ptr %delay.i65.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %delay.i65.i, align 4
  %220 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %add.ptr.i, align 8
  tail call void %219(ptr noundef %221, i32 noundef 150) #10
  %faddr.i190 = getelementptr inbounds %struct.isp116x_ep, ptr %ep.080.i, i32 0, i32 2, i32 3
  %222 = ptrtoint ptr %faddr.i190 to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %faddr.i190, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  tail call void @arm_heavy_mb() #10
  %224 = tail call i16 @llvm.bswap.i16(i16 %223) #10
  %225 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %226, i16 %224) #10, !srcloc !295
  %227 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %board.i.i, align 4
  %delay.i69.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %228, i32 0, i32 1
  %229 = ptrtoint ptr %delay.i69.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %delay.i69.i, align 4
  %231 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %add.ptr.i, align 8
  tail call void %230(ptr noundef %232, i32 noundef 150) #10
  %sub.i = add i32 %buflen.079.i, -8
  %active.i191 = getelementptr inbounds %struct.isp116x_ep, ptr %ep.080.i, i32 0, i32 9
  %233 = ptrtoint ptr %active.i191 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %active.i191, align 4
  %tobool5.not.i = icmp eq ptr %234, null
  br i1 %tobool5.not.i, label %lor.lhs.false.i, label %for.body.i192.if.then.i_crit_edge

for.body.i192.if.then.i_crit_edge:                ; preds = %for.body.i192
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %for.body.i192
  %235 = ptrtoint ptr %atl_last_dir.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %atl_last_dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %236)
  %cmp7.not.i = icmp eq i32 %236, 2
  br i1 %cmp7.not.i, label %lor.lhs.false.i.do.body12.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i.do.body12.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %for.body.i192.if.then.i_crit_edge
  %data.i193 = getelementptr inbounds %struct.isp116x_ep, ptr %ep.080.i, i32 0, i32 8
  %237 = ptrtoint ptr %data.i193 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %data.i193, align 4
  %length.i194 = getelementptr inbounds %struct.isp116x_ep, ptr %ep.080.i, i32 0, i32 7
  %239 = ptrtoint ptr %length.i194 to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %length.i194, align 2
  %conv.i195 = zext i16 %240 to i32
  %rem.i7576.i = and i16 %240, 3
  %rem.i75.zext.i = zext i16 %rem.i7576.i to i32
  %241 = ptrtoint ptr %238 to i32
  %and.i.i = and i32 %241, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %240)
  %cmp966.i.i = icmp ugt i16 %240, 1
  br i1 %tobool.not.i.i, label %for.cond8.preheader.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.then.i
  br i1 %cmp966.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.for.end.i.i_crit_edge

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond8.preheader.i.i:                          ; preds = %if.then.i
  br i1 %cmp966.i.i, label %for.cond8.preheader.i.i.for.body11.i.i_crit_edge, label %for.cond8.preheader.i.i.for.end15.i.i_crit_edge

for.cond8.preheader.i.i.for.end15.i.i_crit_edge:  ; preds = %for.cond8.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end15.i.i

for.cond8.preheader.i.i.for.body11.i.i_crit_edge: ; preds = %for.cond8.preheader.i.i
  br label %for.body11.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %dp.064.i.i = phi ptr [ %incdec.ptr1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %238, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %len.addr.063.i.i = phi i32 [ %sub.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %conv.i195, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i8, ptr %dp.064.i.i, i32 1
  %242 = ptrtoint ptr %dp.064.i.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %dp.064.i.i, align 1
  %incdec.ptr1.i.i = getelementptr i8, ptr %dp.064.i.i, i32 2
  %244 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %incdec.ptr.i.i, align 1
  %conv2.i.i = zext i8 %245 to i16
  %shl.i.i = shl nuw i16 %conv2.i.i, 8
  %conv3.i.i = zext i8 %243 to i16
  %or.i.i = or i16 %shl.i.i, %conv3.i.i
  %246 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %247, i16 %or.i.i) #10, !srcloc !295
  %248 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %board.i.i, align 4
  %delay.i.i74.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %249, i32 0, i32 1
  %250 = ptrtoint ptr %delay.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %delay.i.i74.i, align 4
  %252 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %add.ptr.i, align 8
  tail call void %251(ptr noundef %253, i32 noundef 150) #10
  %sub.i.i = add nsw i32 %len.addr.063.i.i, -2
  %cmp.i.i = icmp ugt i32 %len.addr.063.i.i, 3
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %len.addr.0.lcssa.i.i = phi i32 [ %conv.i195, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %sub.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %dp.0.lcssa.i.i = phi ptr [ %238, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %incdec.ptr1.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.lcssa.i.i)
  %tobool5.not.i.i = icmp eq i32 %len.addr.0.lcssa.i.i, 0
  br i1 %tobool5.not.i.i, label %for.end.i.i.if.end22.i.i_crit_edge, label %if.then6.i.i

for.end.i.i.if.end22.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i.i

if.then6.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %254 = ptrtoint ptr %dp.0.lcssa.i.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %dp.0.lcssa.i.i, align 1
  %conv7.i.i = zext i8 %255 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  tail call void @arm_heavy_mb() #10
  %256 = shl nuw i16 %conv7.i.i, 8
  %257 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %258, i16 %256) #10, !srcloc !295
  br label %if.end22.sink.split.i.i

for.body11.i.i:                                   ; preds = %for.body11.i.i.for.body11.i.i_crit_edge, %for.cond8.preheader.i.i.for.body11.i.i_crit_edge
  %dp2.068.i.i = phi ptr [ %incdec.ptr12.i.i, %for.body11.i.i.for.body11.i.i_crit_edge ], [ %238, %for.cond8.preheader.i.i.for.body11.i.i_crit_edge ]
  %len.addr.167.i.i = phi i32 [ %sub14.i.i, %for.body11.i.i.for.body11.i.i_crit_edge ], [ %conv.i195, %for.cond8.preheader.i.i.for.body11.i.i_crit_edge ]
  %incdec.ptr12.i.i = getelementptr i16, ptr %dp2.068.i.i, i32 1
  %259 = ptrtoint ptr %dp2.068.i.i to i32
  call void @__asan_load2_noabort(i32 %259)
  %260 = load i16, ptr %dp2.068.i.i, align 2
  %261 = tail call i16 @llvm.bswap.i16(i16 %260) #10
  %262 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %263, i16 %261) #10, !srcloc !295
  %264 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %board.i.i, align 4
  %delay.i52.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %265, i32 0, i32 1
  %266 = ptrtoint ptr %delay.i52.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %delay.i52.i.i, align 4
  %268 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %add.ptr.i, align 8
  tail call void %267(ptr noundef %269, i32 noundef 150) #10
  %sub14.i.i = add nsw i32 %len.addr.167.i.i, -2
  %cmp9.i.i = icmp ugt i32 %len.addr.167.i.i, 3
  br i1 %cmp9.i.i, label %for.body11.i.i.for.body11.i.i_crit_edge, label %for.body11.i.i.for.end15.i.i_crit_edge

for.body11.i.i.for.end15.i.i_crit_edge:           ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end15.i.i

for.body11.i.i.for.body11.i.i_crit_edge:          ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.i.i

for.end15.i.i:                                    ; preds = %for.body11.i.i.for.end15.i.i_crit_edge, %for.cond8.preheader.i.i.for.end15.i.i_crit_edge
  %len.addr.1.lcssa.i.i = phi i32 [ %conv.i195, %for.cond8.preheader.i.i.for.end15.i.i_crit_edge ], [ %sub14.i.i, %for.body11.i.i.for.end15.i.i_crit_edge ]
  %dp2.0.lcssa.i.i = phi ptr [ %238, %for.cond8.preheader.i.i.for.end15.i.i_crit_edge ], [ %incdec.ptr12.i.i, %for.body11.i.i.for.end15.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.lcssa.i.i)
  %tobool16.not.i.i = icmp eq i32 %len.addr.1.lcssa.i.i, 0
  br i1 %tobool16.not.i.i, label %for.end15.i.i.if.end22.i.i_crit_edge, label %if.then17.i.i

for.end15.i.i.if.end22.i.i_crit_edge:             ; preds = %for.end15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i.i

if.then17.i.i:                                    ; preds = %for.end15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %270 = ptrtoint ptr %dp2.0.lcssa.i.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %dp2.0.lcssa.i.i, align 1
  %conv20.i.i = zext i8 %271 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  tail call void @arm_heavy_mb() #10
  %272 = shl nuw i16 %conv20.i.i, 8
  %273 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %274, i16 %272) #10, !srcloc !295
  br label %if.end22.sink.split.i.i

if.end22.sink.split.i.i:                          ; preds = %if.then17.i.i, %if.then6.i.i
  %275 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %board.i.i, align 4
  %delay.i56.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %276, i32 0, i32 1
  %277 = ptrtoint ptr %delay.i56.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %delay.i56.i.i, align 4
  %279 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %add.ptr.i, align 8
  tail call void %278(ptr noundef %280, i32 noundef 150) #10
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.end22.sink.split.i.i, %for.end15.i.i.if.end22.i.i_crit_edge, %for.end.i.i.if.end22.i.i_crit_edge
  %rem.off.i.i = add nsw i32 %rem.i75.zext.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rem.off.i.i)
  %switch.i.i = icmp ult i32 %rem.off.i.i, 2
  br i1 %switch.i.i, label %if.then27.i.i, label %if.end22.i.i.for.inc.i_crit_edge

if.end22.i.i.for.inc.i_crit_edge:                 ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then27.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %281 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %282, i16 0) #10, !srcloc !295
  %283 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %board.i.i, align 4
  %delay.i60.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %284, i32 0, i32 1
  %285 = ptrtoint ptr %delay.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %delay.i60.i.i, align 4
  %287 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %add.ptr.i, align 8
  tail call void %286(ptr noundef %288, i32 noundef 150) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then27.i.i, %if.end22.i.i.for.inc.i_crit_edge
  %289 = ptrtoint ptr %length.i194 to i32
  call void @__asan_load2_noabort(i32 %289)
  %290 = load i16, ptr %length.i194, align 2
  %conv9.i = zext i16 %290 to i32
  %add.i196 = add nuw nsw i32 %conv9.i, 3
  %and.i197 = and i32 %add.i196, 131068
  %sub10.i = sub i32 %sub.i, %and.i197
  %291 = ptrtoint ptr %active.i191 to i32
  call void @__asan_load4_noabort(i32 %291)
  %ep.0.pr.i = load ptr, ptr %active.i191, align 4
  %tobool.not.i198 = icmp eq ptr %ep.0.pr.i, null
  br i1 %tobool.not.i198, label %for.inc.i.do.body12.i_crit_edge, label %for.inc.i.for.body.i192_crit_edge

for.inc.i.for.body.i192_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i192

for.inc.i.do.body12.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12.i

do.body12.i:                                      ; preds = %for.inc.i.do.body12.i_crit_edge, %lor.lhs.false.i.do.body12.i_crit_edge, %preproc_atl_queue.exit.do.body12.i_crit_edge
  %buflen.0.lcssa.i = phi i32 [ %cond.i, %preproc_atl_queue.exit.do.body12.i_crit_edge ], [ %sub10.i, %for.inc.i.do.body12.i_crit_edge ], [ %sub.i, %lor.lhs.false.i.do.body12.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen.0.lcssa.i)
  %tobool13.not.i = icmp eq i32 %buflen.0.lcssa.i, 0
  br i1 %tobool13.not.i, label %do.body12.i.cleanup_crit_edge, label %do.body17.i, !prof !300

do.body12.i.cleanup_crit_edge:                    ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body17.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/host/isp116x-hcd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 191, 0\0A.popsection", ""() #10, !srcloc !312
  unreachable

cleanup:                                          ; preds = %do.body12.i.cleanup_crit_edge, %if.end113.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @postproc_atl_queue(ptr noundef %isp116x) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %atl_active = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 19
  %0 = ptrtoint ptr %atl_active to i32
  call void @__asan_load4_noabort(i32 %0)
  %ep.0429 = load ptr, ptr %atl_active, align 4
  %tobool.not430 = icmp eq ptr %ep.0429, null
  br i1 %tobool.not430, label %entry.for.end_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %entry.do.body_crit_edge
  %ep.0431 = phi ptr [ %ep.0, %for.inc.do.body_crit_edge ], [ %ep.0429, %entry.do.body_crit_edge ]
  %1 = ptrtoint ptr %ep.0431 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ep.0431, align 4
  %urb_list = getelementptr inbounds %struct.usb_host_endpoint, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %urb_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %urb_list, align 4
  %cmp.i.not = icmp eq ptr %4, %urb_list
  br i1 %cmp.i.not, label %do.body4, label %do.end9, !prof !308

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/host/isp116x-hcd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 359, 0\0A.popsection", ""() #10, !srcloc !313
  unreachable

do.end9:                                          ; preds = %do.body
  %add.ptr = getelementptr i8, ptr %4, i32 -20
  %dev = getelementptr i8, ptr %4, i32 20
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %ptd12 = getelementptr inbounds %struct.isp116x_ep, ptr %ep.0431, i32 0, i32 2
  %7 = ptrtoint ptr %ptd12 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ptd12, align 2
  %9 = lshr i16 %8, 12
  %conv13 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %9)
  %cmp = icmp eq i16 %9, 9
  br i1 %cmp, label %if.then16, label %do.end9.if.end61_crit_edge

do.end9.if.end61_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then16:                                        ; preds = %do.end9
  %transfer_flags = getelementptr i8, ptr %4, i32 40
  %10 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %transfer_flags, align 4
  %and17 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then16.do.body24_crit_edge, label %lor.lhs.false

if.then16.do.body24_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body24

lor.lhs.false:                                    ; preds = %if.then16
  %pipe = getelementptr i8, ptr %4, i32 28
  %12 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pipe, align 4
  %shr19.mask = and i32 %13, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr19.mask)
  %cmp21 = icmp eq i32 %shr19.mask, -2147483648
  br i1 %cmp21, label %lor.lhs.false.do.body24_crit_edge, label %if.else

lor.lhs.false.do.body24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body24

do.body24:                                        ; preds = %lor.lhs.false.do.body24_crit_edge, %if.then16.do.body24_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @postproc_atl_queue.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@postproc_atl_queue, %if.end61.thread)) #10
          to label %if.end61 [label %if.end61.thread], !srcloc !307

if.end61.thread:                                  ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @postproc_atl_queue.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.19) #10
  br label %if.end90

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %error_count = getelementptr inbounds %struct.isp116x_ep, ptr %ep.0431, i32 0, i32 6
  %14 = ptrtoint ptr %error_count to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %error_count, align 4
  %nextpid = getelementptr inbounds %struct.isp116x_ep, ptr %ep.0431, i32 0, i32 5
  %15 = ptrtoint ptr %nextpid to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nextpid, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -31, i8 %16)
  %cmp39 = icmp eq i8 %16, -31
  %conv40 = zext i1 %cmp39 to i32
  %arrayidx = getelementptr %struct.usb_device, ptr %6, i32 0, i32 10, i32 %conv40
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %epnum = getelementptr inbounds %struct.isp116x_ep, ptr %ep.0431, i32 0, i32 4
  %19 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %epnum, align 1
  %conv41 = zext i8 %20 to i32
  %shl = shl nuw i32 1, %conv41
  %neg = xor i32 %shl, -1
  %and42 = and i32 %18, %neg
  %21 = lshr i16 %8, 10
  %22 = and i16 %21, 1
  %23 = zext i16 %22 to i32
  %shl49 = shl nuw i32 %23, %conv41
  %or = or i32 %and42, %shl49
  store i32 %or, ptr %arrayidx, align 4
  %24 = ptrtoint ptr %ptd12 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ptd12, align 2
  %26 = and i16 %25, 1023
  %and58 = zext i16 %26 to i32
  %actual_length = getelementptr i8, ptr %4, i32 68
  %27 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %actual_length, align 4
  %add = add i32 %28, %and58
  store i32 %add, ptr %actual_length, align 4
  br label %if.then318

if.end61:                                         ; preds = %do.body24, %do.end9.if.end61_crit_edge
  %cc.0 = phi i32 [ %conv13, %do.end9.if.end61_crit_edge ], [ 0, %do.body24 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cc.0)
  %cmp63.not = icmp eq i32 %cc.0, 0
  %trunc = trunc i32 %cc.0 to i16
  %29 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.129)
  switch i16 %trunc, label %land.lhs.true68 [
    i16 15, label %if.end61.if.end90_crit_edge
    i16 0, label %if.end61.if.end90_crit_edge444
  ]

if.end61.if.end90_crit_edge444:                   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.end61.if.end90_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

land.lhs.true68:                                  ; preds = %if.end61
  %error_count69 = getelementptr inbounds %struct.isp116x_ep, ptr %ep.0431, i32 0, i32 6
  %30 = ptrtoint ptr %error_count69 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %error_count69, align 4
  %inc = add i16 %31, 1
  store i16 %inc, ptr %error_count69, align 4
  %inc.fr = freeze i16 %inc
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %inc.fr)
  %cmp71 = icmp ugt i16 %inc.fr, 2
  br i1 %cmp71, label %land.lhs.true68.if.then81_crit_edge, label %switch.early.test

land.lhs.true68.if.then81_crit_edge:              ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then81

switch.early.test:                                ; preds = %land.lhs.true68
  %32 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.130)
  switch i16 %trunc, label %switch.early.test.if.end90_crit_edge [
    i16 8, label %switch.early.test.if.then81_crit_edge
    i16 4, label %switch.early.test.if.then81_crit_edge445
  ]

switch.early.test.if.then81_crit_edge445:         ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then81

switch.early.test.if.then81_crit_edge:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then81

switch.early.test.if.end90_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then81:                                        ; preds = %switch.early.test.if.then81_crit_edge, %switch.early.test.if.then81_crit_edge445, %land.lhs.true68.if.then81_crit_edge
  %arrayidx82 = getelementptr [16 x i32], ptr @cc_to_error, i32 0, i32 %cc.0
  %33 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx82, align 4
  %nextpid83 = getelementptr inbounds %struct.isp116x_ep, ptr %ep.0431, i32 0, i32 5
  %35 = ptrtoint ptr %nextpid83 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %nextpid83, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -46, i8 %36)
  %cmp85 = icmp eq i8 %36, -46
  br i1 %cmp85, label %if.then87, label %if.then81.done_crit_edge

if.then81.done_crit_edge:                         ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then87:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %nextpid83 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %nextpid83, align 2
  br label %done

if.end90:                                         ; preds = %switch.early.test.if.end90_crit_edge, %if.end61.if.end90_crit_edge, %if.end61.if.end90_crit_edge444, %if.end61.thread
  %cmp63.not415 = phi i1 [ true, %if.end61.thread ], [ %cmp63.not, %switch.early.test.if.end90_crit_edge ], [ %cmp63.not, %if.end61.if.end90_crit_edge ], [ %cmp63.not, %if.end61.if.end90_crit_edge444 ]
  %conv62413 = phi i32 [ 0, %if.end61.thread ], [ %cc.0, %switch.early.test.if.end90_crit_edge ], [ %cc.0, %if.end61.if.end90_crit_edge ], [ %cc.0, %if.end61.if.end90_crit_edge444 ]
  %pipe91 = getelementptr i8, ptr %4, i32 28
  %38 = ptrtoint ptr %pipe91 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pipe91, align 4
  %shr92.mask = and i32 %39, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr92.mask)
  %cmp94 = icmp eq i32 %shr92.mask, 1073741824
  br i1 %cmp94, label %land.lhs.true96, label %if.end90.if.end102_crit_edge

if.end90.if.end102_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

land.lhs.true96:                                  ; preds = %if.end90
  %len = getelementptr inbounds %struct.isp116x_ep, ptr %ep.0431, i32 0, i32 2, i32 2
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %len, align 2
  %42 = and i16 %41, 1023
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool100.not = icmp eq i16 %42, 0
  br i1 %tobool100.not, label %land.lhs.true96.if.then318_crit_edge, label %land.lhs.true96.if.end102_crit_edge

land.lhs.true96.if.end102_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

land.lhs.true96.if.then318_crit_edge:             ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then318

if.end102:                                        ; preds = %land.lhs.true96.if.end102_crit_edge, %if.end90.if.end102_crit_edge
  %error_count103 = getelementptr inbounds %struct.isp116x_ep, ptr %ep.0431, i32 0, i32 6
  %43 = ptrtoint ptr %error_count103 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %error_count103, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool105.not = icmp eq i16 %44, 0
  br i1 %tobool105.not, label %if.end102.if.end116_crit_edge, label %land.lhs.true106

if.end102.if.end116_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

land.lhs.true106:                                 ; preds = %if.end102
  %45 = zext i32 %conv62413 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %conv62413, label %land.lhs.true106.if.end116_crit_edge [
    i32 0, label %land.lhs.true106.if.then114_crit_edge
    i32 15, label %land.lhs.true106.if.then114_crit_edge446
  ]

land.lhs.true106.if.then114_crit_edge446:         ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then114

land.lhs.true106.if.then114_crit_edge:            ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then114

land.lhs.true106.if.end116_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.then114:                                       ; preds = %land.lhs.true106.if.then114_crit_edge, %land.lhs.true106.if.then114_crit_edge446
  %46 = ptrtoint ptr %error_count103 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %error_count103, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %land.lhs.true106.if.end116_crit_edge, %if.end102.if.end116_crit_edge
  %nextpid117 = getelementptr inbounds %struct.isp116x_ep, ptr %ep.0431, i32 0, i32 5
  %47 = ptrtoint ptr %nextpid117 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %nextpid117, align 2
  %49 = zext i8 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.132)
  switch i8 %48, label %if.end116.if.end172_crit_edge [
    i8 -31, label %if.then121
    i8 105, label %if.then148
  ]

if.end116.if.end172_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end172

if.then121:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx123 = getelementptr %struct.usb_device, ptr %6, i32 0, i32 10, i32 1
  br label %if.end172thread-pre-split

if.then148:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  %toggle149 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 10
  br label %if.end172thread-pre-split

if.end172thread-pre-split:                        ; preds = %if.then148, %if.then121
  %arrayidx123.sink443 = phi ptr [ %arrayidx123, %if.then121 ], [ %toggle149, %if.then148 ]
  %50 = ptrtoint ptr %arrayidx123.sink443 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx123.sink443, align 4
  %epnum124 = getelementptr inbounds %struct.isp116x_ep, ptr %ep.0431, i32 0, i32 4
  %52 = ptrtoint ptr %epnum124 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %epnum124, align 1
  %conv125 = zext i8 %53 to i32
  %shl126 = shl nuw i32 1, %conv125
  %neg127 = xor i32 %shl126, -1
  %and128 = and i32 %51, %neg127
  %54 = ptrtoint ptr %ptd12 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %ptd12, align 2
  %56 = lshr i16 %55, 10
  %57 = and i16 %56, 1
  %58 = zext i16 %57 to i32
  %59 = ptrtoint ptr %error_count103 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %error_count103, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp135 = icmp ne i16 %60, 0
  %conv136 = zext i1 %cmp135 to i32
  %xor = xor i32 %58, %conv136
  %shl139 = shl i32 %xor, %conv125
  %or140 = or i32 %shl139, %and128
  %61 = ptrtoint ptr %arrayidx123.sink443 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or140, ptr %arrayidx123.sink443, align 4
  %62 = ptrtoint ptr %nextpid117 to i32
  call void @__asan_load1_noabort(i32 %62)
  %.pr = load i8, ptr %nextpid117, align 2
  br label %if.end172

if.end172:                                        ; preds = %if.end172thread-pre-split, %if.end116.if.end172_crit_edge
  %63 = phi i8 [ %.pr, %if.end172thread-pre-split ], [ %48, %if.end116.if.end172_crit_edge ]
  %64 = zext i8 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.133)
  switch i8 %63, label %do.body308 [
    i8 105, label %if.end172.sw.bb_crit_edge
    i8 -31, label %if.end172.sw.bb_crit_edge447
    i8 45, label %sw.bb247
    i8 -46, label %sw.bb291
  ]

if.end172.sw.bb_crit_edge447:                     ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end172.sw.bb_crit_edge:                        ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.end172.sw.bb_crit_edge, %if.end172.sw.bb_crit_edge447
  %65 = ptrtoint ptr %ptd12 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %ptd12, align 2
  %67 = and i16 %66, 1023
  %and177 = zext i16 %67 to i32
  %actual_length179 = getelementptr i8, ptr %4, i32 68
  %68 = ptrtoint ptr %actual_length179 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %actual_length179, align 4
  %add180 = add i32 %69, %and177
  store i32 %add180, ptr %actual_length179, align 4
  %70 = load i16, ptr %ptd12, align 2
  %71 = and i16 %70, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool185.not = icmp eq i16 %71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %conv62413)
  %cmp192 = icmp ugt i32 %conv62413, 13
  %72 = or i1 %cmp63.not415, %cmp192
  %or.cond = select i1 %tobool185.not, i1 %72, i1 false
  br i1 %or.cond, label %if.end195, label %sw.bb.lor.lhs.false316_crit_edge

sw.bb.lor.lhs.false316_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false316

if.end195:                                        ; preds = %sw.bb
  %transfer_buffer_length = getelementptr i8, ptr %4, i32 64
  %73 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %transfer_buffer_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %add180)
  %cmp197.not = icmp eq i32 %74, %add180
  br i1 %cmp197.not, label %if.else203, label %if.then199

if.then199:                                       ; preds = %if.end195
  br i1 %cmp, label %if.then199.if.end237_crit_edge, label %if.then199.lor.lhs.false316_crit_edge

if.then199.lor.lhs.false316_crit_edge:            ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false316

if.then199.if.end237_crit_edge:                   ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end237

if.else203:                                       ; preds = %if.end195
  %transfer_flags204 = getelementptr i8, ptr %4, i32 40
  %75 = ptrtoint ptr %transfer_flags204 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %transfer_flags204, align 4
  %and205 = and i32 %76, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and205)
  %tobool206.not = icmp eq i32 %and205, 0
  br i1 %tobool206.not, label %if.else203.if.end237_crit_edge, label %land.lhs.true207

if.else203.if.end237_crit_edge:                   ; preds = %if.else203
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end237

land.lhs.true207:                                 ; preds = %if.else203
  %77 = ptrtoint ptr %nextpid117 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %nextpid117, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -31, i8 %78)
  %cmp210 = icmp eq i8 %78, -31
  br i1 %cmp210, label %land.lhs.true212, label %land.lhs.true207.if.end237_crit_edge

land.lhs.true207.if.end237_crit_edge:             ; preds = %land.lhs.true207
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end237

land.lhs.true212:                                 ; preds = %land.lhs.true207
  %79 = and i16 %70, 1023
  %maxpacket = getelementptr inbounds %struct.isp116x_ep, ptr %ep.0431, i32 0, i32 3
  %80 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %maxpacket, align 4
  %rem.rhs.trunc = zext i8 %81 to i16
  %rem425 = urem i16 %79, %rem.rhs.trunc
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem425)
  %tobool218.not = icmp eq i16 %rem425, 0
  br i1 %tobool218.not, label %do.body220, label %land.lhs.true212.if.end237_crit_edge

land.lhs.true212.if.end237_crit_edge:             ; preds = %land.lhs.true212
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end237

do.body220:                                       ; preds = %land.lhs.true212
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @postproc_atl_queue.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@postproc_atl_queue, %if.then232)) #10
          to label %done [label %if.then232], !srcloc !307

if.then232:                                       ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @postproc_atl_queue.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.20) #10
  br label %lor.lhs.false316

if.end237:                                        ; preds = %land.lhs.true212.if.end237_crit_edge, %land.lhs.true207.if.end237_crit_edge, %if.else203.if.end237_crit_edge, %if.then199.if.end237_crit_edge
  %82 = ptrtoint ptr %pipe91 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pipe91, align 4
  %shr239.mask = and i32 %83, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr239.mask)
  %cmp241 = icmp eq i32 %shr239.mask, -2147483648
  br i1 %cmp241, label %if.then243, label %if.end237.if.then318_crit_edge

if.end237.if.then318_crit_edge:                   ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then318

if.then243:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %nextpid117 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 -46, ptr %nextpid117, align 2
  br label %lor.lhs.false316

sw.bb247:                                         ; preds = %if.end172
  %85 = ptrtoint ptr %ptd12 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %ptd12, align 2
  %87 = and i16 %86, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool252.not = icmp eq i16 %87, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %conv62413)
  %cmp259 = icmp ugt i32 %conv62413, 13
  %88 = or i1 %cmp63.not415, %cmp259
  %or.cond427 = select i1 %tobool252.not, i1 %88, i1 false
  br i1 %or.cond427, label %if.end262, label %sw.bb247.lor.lhs.false316_crit_edge

sw.bb247.lor.lhs.false316_crit_edge:              ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false316

if.end262:                                        ; preds = %sw.bb247
  %transfer_buffer_length263 = getelementptr i8, ptr %4, i32 64
  %89 = ptrtoint ptr %transfer_buffer_length263 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %transfer_buffer_length263, align 4
  %actual_length264 = getelementptr i8, ptr %4, i32 68
  %91 = ptrtoint ptr %actual_length264 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %actual_length264, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %92)
  %cmp265 = icmp eq i32 %90, %92
  br i1 %cmp265, label %if.then267, label %if.else269

if.then267:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #12
  %93 = ptrtoint ptr %nextpid117 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -46, ptr %nextpid117, align 2
  br label %lor.lhs.false316

if.else269:                                       ; preds = %if.end262
  %94 = ptrtoint ptr %pipe91 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pipe91, align 4
  %and271 = and i32 %95, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and271)
  %tobool272.not = icmp eq i32 %and271, 0
  br i1 %tobool272.not, label %if.then273, label %if.else281

if.then273:                                       ; preds = %if.else269
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx275 = getelementptr %struct.usb_device, ptr %6, i32 0, i32 10, i32 1
  %96 = ptrtoint ptr %arrayidx275 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx275, align 4
  %or277 = or i32 %97, 1
  store i32 %or277, ptr %arrayidx275, align 4
  %98 = ptrtoint ptr %nextpid117 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -31, ptr %nextpid117, align 2
  br label %lor.lhs.false316

if.else281:                                       ; preds = %if.else269
  call void @__sanitizer_cov_trace_pc() #12
  %toggle282 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 10
  %99 = ptrtoint ptr %toggle282 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %toggle282, align 4
  %or285 = or i32 %100, 1
  store i32 %or285, ptr %toggle282, align 4
  %101 = ptrtoint ptr %nextpid117 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 105, ptr %nextpid117, align 2
  br label %lor.lhs.false316

sw.bb291:                                         ; preds = %if.end172
  %102 = ptrtoint ptr %ptd12 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %ptd12, align 2
  %104 = and i16 %103, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %tobool296.not = icmp eq i16 %104, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %conv62413)
  %cmp303 = icmp ugt i32 %conv62413, 13
  %105 = or i1 %cmp63.not415, %cmp303
  %or.cond428 = select i1 %tobool296.not, i1 %105, i1 false
  br i1 %or.cond428, label %if.end306, label %sw.bb291.lor.lhs.false316_crit_edge

sw.bb291.lor.lhs.false316_crit_edge:              ; preds = %sw.bb291
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false316

if.end306:                                        ; preds = %sw.bb291
  call void @__sanitizer_cov_trace_pc() #12
  %106 = ptrtoint ptr %nextpid117 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %nextpid117, align 2
  br label %if.then318

do.body308:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/host/isp116x-hcd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 467, 0\0A.popsection", ""() #10, !srcloc !314
  unreachable

done:                                             ; preds = %do.body220, %if.then87, %if.then81.done_crit_edge
  %status.0 = phi i32 [ %34, %if.then87 ], [ %34, %if.then81.done_crit_edge ], [ -115, %do.body220 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %status.0)
  %cmp314.not = icmp eq i32 %status.0, -115
  br i1 %cmp314.not, label %done.lor.lhs.false316_crit_edge, label %done.if.then318_crit_edge

done.if.then318_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then318

done.lor.lhs.false316_crit_edge:                  ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false316

lor.lhs.false316:                                 ; preds = %done.lor.lhs.false316_crit_edge, %sw.bb291.lor.lhs.false316_crit_edge, %if.else281, %if.then273, %if.then267, %sw.bb247.lor.lhs.false316_crit_edge, %if.then243, %if.then232, %if.then199.lor.lhs.false316_crit_edge, %sw.bb.lor.lhs.false316_crit_edge
  %unlinked = getelementptr i8, ptr %4, i32 -16
  %107 = ptrtoint ptr %unlinked to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %unlinked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool317.not = icmp eq i32 %108, 0
  br i1 %tobool317.not, label %lor.lhs.false316.for.inc_crit_edge, label %lor.lhs.false316.if.then318_crit_edge

lor.lhs.false316.if.then318_crit_edge:            ; preds = %lor.lhs.false316
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then318

lor.lhs.false316.for.inc_crit_edge:               ; preds = %lor.lhs.false316
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then318:                                       ; preds = %lor.lhs.false316.if.then318_crit_edge, %done.if.then318_crit_edge, %if.end306, %if.end237.if.then318_crit_edge, %land.lhs.true96.if.then318_crit_edge, %if.else
  %status.0419 = phi i32 [ -115, %lor.lhs.false316.if.then318_crit_edge ], [ %status.0, %done.if.then318_crit_edge ], [ 0, %if.end237.if.then318_crit_edge ], [ 0, %land.lhs.true96.if.then318_crit_edge ], [ -121, %if.else ], [ 0, %if.end306 ]
  tail call fastcc void @finish_request(ptr noundef %isp116x, ptr noundef nonnull %ep.0431, ptr noundef %add.ptr, i32 noundef %status.0419)
  br label %for.inc

for.inc:                                          ; preds = %if.then318, %lor.lhs.false316.for.inc_crit_edge
  %active = getelementptr inbounds %struct.isp116x_ep, ptr %ep.0431, i32 0, i32 9
  %109 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %109)
  %ep.0 = load ptr, ptr %active, align 4
  %tobool.not = icmp eq ptr %ep.0, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @finish_request(ptr noundef %isp116x, ptr noundef %ep, ptr noundef %urb, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %error_count = getelementptr inbounds %struct.isp116x_ep, ptr %ep, i32 0, i32 6
  %0 = ptrtoint ptr %error_count to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %error_count, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %1 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pipe, align 4
  %shr.mask = and i32 %2, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr.mask)
  %cmp = icmp eq i32 %shr.mask, -2147483648
  br i1 %cmp, label %if.then, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %nextpid = getelementptr inbounds %struct.isp116x_ep, ptr %ep, i32 0, i32 5
  %3 = ptrtoint ptr %nextpid to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 45, ptr %nextpid, align 2
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %isp116x, i32 -600
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %add.ptr.i, ptr noundef %urb) #10
  tail call void @_raw_spin_unlock(ptr noundef %isp116x) #10
  tail call void @usb_hcd_giveback_urb(ptr noundef %add.ptr.i, ptr noundef %urb, i32 noundef %status) #10
  tail call void @_raw_spin_lock(ptr noundef %isp116x) #10
  %4 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep, align 4
  %urb_list = getelementptr inbounds %struct.usb_host_endpoint, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %urb_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %urb_list, align 4
  %cmp.i.not = icmp eq ptr %7, %urb_list
  br i1 %cmp.i.not, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %schedule = getelementptr inbounds %struct.isp116x_ep, ptr %ep, i32 0, i32 14
  %8 = ptrtoint ptr %schedule to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %schedule, align 4
  %cmp.i89.not = icmp eq ptr %9, %schedule
  br i1 %cmp.i89.not, label %do.body11, label %if.then8

if.then8:                                         ; preds = %if.end5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %schedule) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then8.list_del_init.exit_crit_edge

if.then8.list_del_init.exit_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.isp116x_ep, ptr %ep, i32 0, i32 14, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %schedule to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %schedule, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then8.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %schedule to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %schedule, ptr %schedule, align 4
  %prev.i3.i = getelementptr inbounds %struct.isp116x_ep, ptr %ep, i32 0, i32 14, i32 1
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %schedule, ptr %prev.i3.i, align 4
  br label %cleanup

do.body11:                                        ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @finish_request.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@finish_request, %if.then16)) #10
          to label %do.end21 [label %if.then16], !srcloc !307

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %period = getelementptr inbounds %struct.isp116x_ep, ptr %ep, i32 0, i32 10
  %18 = ptrtoint ptr %period to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %period, align 4
  %conv = zext i16 %19 to i32
  %branch17 = getelementptr inbounds %struct.isp116x_ep, ptr %ep, i32 0, i32 11
  %20 = ptrtoint ptr %branch17 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %branch17, align 2
  %conv18 = zext i16 %21 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @finish_request.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.22, i32 noundef %conv, ptr noundef %ep, i32 noundef %conv18) #10
  br label %do.end21

do.end21:                                         ; preds = %if.then16, %do.body11
  %branch22 = getelementptr inbounds %struct.isp116x_ep, ptr %ep, i32 0, i32 11
  %22 = ptrtoint ptr %branch22 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %branch22, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %23)
  %cmp2493 = icmp ult i16 %23, 32
  br i1 %cmp2493, label %for.body.lr.ph, label %do.end21.for.end_crit_edge

do.end21.for.end_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end21
  %conv23 = zext i16 %23 to i32
  %next31 = getelementptr inbounds %struct.isp116x_ep, ptr %ep, i32 0, i32 13
  %load = getelementptr inbounds %struct.isp116x_ep, ptr %ep, i32 0, i32 12
  %period38 = getelementptr inbounds %struct.isp116x_ep, ptr %ep, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %if.end32.for.body_crit_edge, %for.body.lr.ph
  %i.094 = phi i32 [ %conv23, %for.body.lr.ph ], [ %add, %if.end32.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.isp116x, ptr %isp116x, i32 0, i32 16, i32 %i.094
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %for.body
  %prev.0 = phi ptr [ %arrayidx, %for.body ], [ %next, %while.cond.while.cond_crit_edge ]
  %24 = ptrtoint ptr %prev.0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.0, align 4
  %tobool26.not = icmp eq ptr %25, null
  %cmp27.not = icmp eq ptr %25, %ep
  %or.cond = or i1 %tobool26.not, %cmp27.not
  %next = getelementptr inbounds %struct.isp116x_ep, ptr %25, i32 0, i32 13
  br i1 %or.cond, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br i1 %tobool26.not, label %while.end.if.end32_crit_edge, label %if.then30

while.end.if.end32_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then30:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %next31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %next31, align 4
  %28 = ptrtoint ptr %prev.0 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %prev.0, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %while.end.if.end32_crit_edge
  %29 = ptrtoint ptr %load to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %load, align 4
  %arrayidx35 = getelementptr %struct.isp116x, ptr %isp116x, i32 0, i32 15, i32 %i.094
  %31 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx35, align 2
  %sub = sub i16 %32, %30
  store i16 %sub, ptr %arrayidx35, align 2
  %33 = ptrtoint ptr %period38 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %period38, align 4
  %conv39 = zext i16 %34 to i32
  %add = add i32 %i.094, %conv39
  %cmp24 = icmp ult i32 %add, 32
  br i1 %cmp24, label %if.end32.for.body_crit_edge, label %if.end32.for.end_crit_edge

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end32.for.end_crit_edge, %do.end21.for.end_crit_edge
  %35 = ptrtoint ptr %branch22 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 32, ptr %branch22, align 2
  %load41 = getelementptr inbounds %struct.isp116x_ep, ptr %ep, i32 0, i32 12
  %36 = ptrtoint ptr %load41 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %load41, align 4
  %period43 = getelementptr inbounds %struct.isp116x_ep, ptr %ep, i32 0, i32 10
  %38 = ptrtoint ptr %period43 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %period43, align 4
  %40 = udiv i16 %37, %39
  %div = zext i16 %40 to i32
  %bandwidth_allocated = getelementptr i8, ptr %isp116x, i32 -456
  %41 = ptrtoint ptr %bandwidth_allocated to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bandwidth_allocated, align 8
  %sub46 = sub i32 %42, %div
  store i32 %sub46, ptr %bandwidth_allocated, align 8
  %periodic_count = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 17
  %43 = ptrtoint ptr %periodic_count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %periodic_count, align 4
  %dec = add i32 %44, -1
  store i32 %dec, ptr %periodic_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool47.not = icmp eq i32 %dec, 0
  br i1 %tobool47.not, label %if.then48, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then48:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %irqenb = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 10
  %45 = ptrtoint ptr %irqenb to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %irqenb, align 4
  %47 = and i16 %46, -4
  %48 = or i16 %47, 2
  store i16 %48, ptr %irqenb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %for.end.cleanup_crit_edge, %list_del_init.exit, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_unlink_urb_from_ep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_giveback_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isp116x_sw_reset(ptr noundef %isp116x) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %isp116x) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %0 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 -22272) #10, !srcloc !295
  %board.i.i = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %2 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board.i.i, align 4
  %delay.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %delay.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %delay.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %isp116x, i32 -600
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i.i, align 8
  tail call void %5(ptr noundef %7, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  tail call void @arm_heavy_mb() #10
  %data_reg.i.i = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %8 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %9, i16 -2560) #10, !srcloc !295
  %10 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %delay.i3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %delay.i3.i, align 4
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i.i.i, align 8
  tail call void %13(ptr noundef %15, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %17, i16 -32256) #10, !srcloc !295
  %18 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %board.i.i, align 4
  %delay.i.i23 = getelementptr inbounds %struct.isp116x_platform_data, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %delay.i.i23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %delay.i.i23, align 4
  %22 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i.i.i, align 8
  tail call void %21(ptr noundef %23, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  tail call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %25, i16 256) #10, !srcloc !295
  %26 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %board.i.i, align 4
  %delay.i4.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %delay.i4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %delay.i4.i, align 4
  %30 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i.i.i, align 8
  tail call void %29(ptr noundef %31, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  tail call void @arm_heavy_mb() #10
  %32 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %33, i16 0) #10, !srcloc !295
  %34 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %board.i.i, align 4
  %delay6.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %delay6.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %delay6.i.i, align 4
  %38 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i.i.i, align 8
  tail call void %37(ptr noundef %39, i32 noundef 150) #10
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %retries.0 = phi i32 [ 15, %entry ], [ %dec, %while.body.while.cond_crit_edge ]
  %dec = add nsw i32 %retries.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end11.critedge, label %while.body

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %41 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %42, i16 512) #10, !srcloc !295
  %43 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %board.i.i, align 4
  %delay.i.i28 = getelementptr inbounds %struct.isp116x_platform_data, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %delay.i.i28 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %delay.i.i28, align 4
  %47 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i.i.i, align 8
  tail call void %46(ptr noundef %48, i32 noundef 300) #10
  %49 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data_reg.i.i, align 4
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %50) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %52 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i31 = getelementptr inbounds %struct.isp116x_platform_data, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %delay.i3.i31 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %delay.i3.i31, align 4
  %56 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i.i.i, align 8
  tail call void %55(ptr noundef %57, i32 noundef 150) #10
  %58 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data_reg.i.i, align 4
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %59) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %61 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %delay11.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %delay11.i.i, align 4
  %65 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.i.i.i, align 8
  tail call void %64(ptr noundef %66, i32 noundef 150) #10
  %67 = and i16 %51, 256
  %tobool6.not = icmp eq i16 %67, 0
  br i1 %tobool6.not, label %while.body.if.end14_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.body.if.end14_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

do.end11.critedge:                                ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #13
  br label %if.end14

if.end14:                                         ; preds = %do.end11.critedge, %while.body.if.end14_crit_edge
  %ret.0 = phi i32 [ -62, %do.end11.critedge ], [ 0, %while.body.if.end14_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %isp116x, i32 noundef %call2) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isp116x_show_regs_log(ptr noundef readonly %isp116x) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_show_regs_log, %if.then)) #10
          to label %do.body4 [label %if.then], !srcloc !307

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %0 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 0) #10, !srcloc !295
  %board.i.i = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %2 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board.i.i, align 4
  %delay.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %delay.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %delay.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %isp116x, i32 -600
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i.i, align 8
  tail call void %5(ptr noundef %7, i32 noundef 300) #10
  %data_reg.i.i = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %8 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data_reg.i.i, align 4
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %9) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %11 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %delay.i3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %delay.i3.i, align 4
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i.i.i, align 8
  tail call void %14(ptr noundef %16, i32 noundef 150) #10
  %17 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data_reg.i.i, align 4
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %20 = zext i16 %19 to i32
  %21 = zext i16 %10 to i32
  %22 = shl nuw i32 %21, 16
  %23 = or i32 %22, %20
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #10
  %25 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %delay11.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %delay11.i.i, align 4
  %29 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i.i.i, align 8
  tail call void %28(ptr noundef %30, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_show_regs_log.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 0, i32 noundef %24) #10
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_show_regs_log, %if.then16)) #10
          to label %do.body20 [label %if.then16], !srcloc !307

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i515 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %31 = ptrtoint ptr %addr_reg.i.i515 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %addr_reg.i.i515, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %32, i16 256) #10, !srcloc !295
  %board.i.i516 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %33 = ptrtoint ptr %board.i.i516 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %board.i.i516, align 4
  %delay.i.i517 = getelementptr inbounds %struct.isp116x_platform_data, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %delay.i.i517 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %delay.i.i517, align 4
  %add.ptr.i.i.i518 = getelementptr i8, ptr %isp116x, i32 -600
  %37 = ptrtoint ptr %add.ptr.i.i.i518 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i.i.i518, align 8
  tail call void %36(ptr noundef %38, i32 noundef 300) #10
  %data_reg.i.i519 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %39 = ptrtoint ptr %data_reg.i.i519 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data_reg.i.i519, align 4
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %40) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %42 = ptrtoint ptr %board.i.i516 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %board.i.i516, align 4
  %delay.i3.i520 = getelementptr inbounds %struct.isp116x_platform_data, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %delay.i3.i520 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %delay.i3.i520, align 4
  %46 = ptrtoint ptr %add.ptr.i.i.i518 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i.i.i518, align 8
  tail call void %45(ptr noundef %47, i32 noundef 150) #10
  %48 = ptrtoint ptr %data_reg.i.i519 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data_reg.i.i519, align 4
  %50 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %49) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %51 = zext i16 %50 to i32
  %52 = zext i16 %41 to i32
  %53 = shl nuw i32 %52, 16
  %54 = or i32 %53, %51
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #10
  %56 = ptrtoint ptr %board.i.i516 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %board.i.i516, align 4
  %delay11.i.i521 = getelementptr inbounds %struct.isp116x_platform_data, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %delay11.i.i521 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %delay11.i.i521, align 4
  %60 = ptrtoint ptr %add.ptr.i.i.i518 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.i.i.i518, align 8
  tail call void %59(ptr noundef %61, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_show_regs_log.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.38, i32 noundef 1, i32 noundef %55) #10
  br label %do.body20

do.body20:                                        ; preds = %if.then16, %do.body4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_show_regs_log, %if.then32)) #10
          to label %do.body36 [label %if.then32], !srcloc !307

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i522 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %62 = ptrtoint ptr %addr_reg.i.i522 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %addr_reg.i.i522, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %63, i16 512) #10, !srcloc !295
  %board.i.i523 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %64 = ptrtoint ptr %board.i.i523 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %board.i.i523, align 4
  %delay.i.i524 = getelementptr inbounds %struct.isp116x_platform_data, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %delay.i.i524 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %delay.i.i524, align 4
  %add.ptr.i.i.i525 = getelementptr i8, ptr %isp116x, i32 -600
  %68 = ptrtoint ptr %add.ptr.i.i.i525 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr.i.i.i525, align 8
  tail call void %67(ptr noundef %69, i32 noundef 300) #10
  %data_reg.i.i526 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %70 = ptrtoint ptr %data_reg.i.i526 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data_reg.i.i526, align 4
  %72 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %71) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %73 = ptrtoint ptr %board.i.i523 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %board.i.i523, align 4
  %delay.i3.i527 = getelementptr inbounds %struct.isp116x_platform_data, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %delay.i3.i527 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %delay.i3.i527, align 4
  %77 = ptrtoint ptr %add.ptr.i.i.i525 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %add.ptr.i.i.i525, align 8
  tail call void %76(ptr noundef %78, i32 noundef 150) #10
  %79 = ptrtoint ptr %data_reg.i.i526 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data_reg.i.i526, align 4
  %81 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %80) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %82 = zext i16 %81 to i32
  %83 = zext i16 %72 to i32
  %84 = shl nuw i32 %83, 16
  %85 = or i32 %84, %82
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #10
  %87 = ptrtoint ptr %board.i.i523 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %board.i.i523, align 4
  %delay11.i.i528 = getelementptr inbounds %struct.isp116x_platform_data, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %delay11.i.i528 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %delay11.i.i528, align 4
  %91 = ptrtoint ptr %add.ptr.i.i.i525 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr.i.i.i525, align 8
  tail call void %90(ptr noundef %92, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_show_regs_log.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.39, i32 noundef 2, i32 noundef %86) #10
  br label %do.body36

do.body36:                                        ; preds = %if.then32, %do.body20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_show_regs_log, %if.then48)) #10
          to label %do.body52 [label %if.then48], !srcloc !307

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i529 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %93 = ptrtoint ptr %addr_reg.i.i529 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %addr_reg.i.i529, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %94, i16 768) #10, !srcloc !295
  %board.i.i530 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %95 = ptrtoint ptr %board.i.i530 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %board.i.i530, align 4
  %delay.i.i531 = getelementptr inbounds %struct.isp116x_platform_data, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %delay.i.i531 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %delay.i.i531, align 4
  %add.ptr.i.i.i532 = getelementptr i8, ptr %isp116x, i32 -600
  %99 = ptrtoint ptr %add.ptr.i.i.i532 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %add.ptr.i.i.i532, align 8
  tail call void %98(ptr noundef %100, i32 noundef 300) #10
  %data_reg.i.i533 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %101 = ptrtoint ptr %data_reg.i.i533 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data_reg.i.i533, align 4
  %103 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %102) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %104 = ptrtoint ptr %board.i.i530 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %board.i.i530, align 4
  %delay.i3.i534 = getelementptr inbounds %struct.isp116x_platform_data, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %delay.i3.i534 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %delay.i3.i534, align 4
  %108 = ptrtoint ptr %add.ptr.i.i.i532 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %add.ptr.i.i.i532, align 8
  tail call void %107(ptr noundef %109, i32 noundef 150) #10
  %110 = ptrtoint ptr %data_reg.i.i533 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %data_reg.i.i533, align 4
  %112 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %111) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %113 = zext i16 %112 to i32
  %114 = zext i16 %103 to i32
  %115 = shl nuw i32 %114, 16
  %116 = or i32 %115, %113
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #10
  %118 = ptrtoint ptr %board.i.i530 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %board.i.i530, align 4
  %delay11.i.i535 = getelementptr inbounds %struct.isp116x_platform_data, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %delay11.i.i535 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %delay11.i.i535, align 4
  %122 = ptrtoint ptr %add.ptr.i.i.i532 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %add.ptr.i.i.i532, align 8
  tail call void %121(ptr noundef %123, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_show_regs_log.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.40, i32 noundef 3, i32 noundef %117) #10
  br label %do.body52

do.body52:                                        ; preds = %if.then48, %do.body36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_show_regs_log, %if.then64)) #10
          to label %do.body68 [label %if.then64], !srcloc !307

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i536 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %124 = ptrtoint ptr %addr_reg.i.i536 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %addr_reg.i.i536, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %125, i16 1024) #10, !srcloc !295
  %board.i.i537 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %126 = ptrtoint ptr %board.i.i537 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %board.i.i537, align 4
  %delay.i.i538 = getelementptr inbounds %struct.isp116x_platform_data, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %delay.i.i538 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %delay.i.i538, align 4
  %add.ptr.i.i.i539 = getelementptr i8, ptr %isp116x, i32 -600
  %130 = ptrtoint ptr %add.ptr.i.i.i539 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %add.ptr.i.i.i539, align 8
  tail call void %129(ptr noundef %131, i32 noundef 300) #10
  %data_reg.i.i540 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %132 = ptrtoint ptr %data_reg.i.i540 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %data_reg.i.i540, align 4
  %134 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %133) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %135 = ptrtoint ptr %board.i.i537 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %board.i.i537, align 4
  %delay.i3.i541 = getelementptr inbounds %struct.isp116x_platform_data, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %delay.i3.i541 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %delay.i3.i541, align 4
  %139 = ptrtoint ptr %add.ptr.i.i.i539 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %add.ptr.i.i.i539, align 8
  tail call void %138(ptr noundef %140, i32 noundef 150) #10
  %141 = ptrtoint ptr %data_reg.i.i540 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %data_reg.i.i540, align 4
  %143 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %142) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %144 = zext i16 %143 to i32
  %145 = zext i16 %134 to i32
  %146 = shl nuw i32 %145, 16
  %147 = or i32 %146, %144
  %148 = tail call i32 @llvm.bswap.i32(i32 %147) #10
  %149 = ptrtoint ptr %board.i.i537 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %board.i.i537, align 4
  %delay11.i.i542 = getelementptr inbounds %struct.isp116x_platform_data, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %delay11.i.i542 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %delay11.i.i542, align 4
  %153 = ptrtoint ptr %add.ptr.i.i.i539 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %add.ptr.i.i.i539, align 8
  tail call void %152(ptr noundef %154, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_show_regs_log.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.41, i32 noundef 4, i32 noundef %148) #10
  br label %do.body68

do.body68:                                        ; preds = %if.then64, %do.body52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_show_regs_log, %if.then80)) #10
          to label %do.body84 [label %if.then80], !srcloc !307

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i543 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %155 = ptrtoint ptr %addr_reg.i.i543 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %addr_reg.i.i543, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %156, i16 3328) #10, !srcloc !295
  %board.i.i544 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %157 = ptrtoint ptr %board.i.i544 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %board.i.i544, align 4
  %delay.i.i545 = getelementptr inbounds %struct.isp116x_platform_data, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %delay.i.i545 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %delay.i.i545, align 4
  %add.ptr.i.i.i546 = getelementptr i8, ptr %isp116x, i32 -600
  %161 = ptrtoint ptr %add.ptr.i.i.i546 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %add.ptr.i.i.i546, align 8
  tail call void %160(ptr noundef %162, i32 noundef 300) #10
  %data_reg.i.i547 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %163 = ptrtoint ptr %data_reg.i.i547 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %data_reg.i.i547, align 4
  %165 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %164) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %166 = ptrtoint ptr %board.i.i544 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %board.i.i544, align 4
  %delay.i3.i548 = getelementptr inbounds %struct.isp116x_platform_data, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %delay.i3.i548 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %delay.i3.i548, align 4
  %170 = ptrtoint ptr %add.ptr.i.i.i546 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %add.ptr.i.i.i546, align 8
  tail call void %169(ptr noundef %171, i32 noundef 150) #10
  %172 = ptrtoint ptr %data_reg.i.i547 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %data_reg.i.i547, align 4
  %174 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %173) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %175 = zext i16 %174 to i32
  %176 = zext i16 %165 to i32
  %177 = shl nuw i32 %176, 16
  %178 = or i32 %177, %175
  %179 = tail call i32 @llvm.bswap.i32(i32 %178) #10
  %180 = ptrtoint ptr %board.i.i544 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %board.i.i544, align 4
  %delay11.i.i549 = getelementptr inbounds %struct.isp116x_platform_data, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %delay11.i.i549 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %delay11.i.i549, align 4
  %184 = ptrtoint ptr %add.ptr.i.i.i546 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %add.ptr.i.i.i546, align 8
  tail call void %183(ptr noundef %185, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_show_regs_log.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.42, i32 noundef 13, i32 noundef %179) #10
  br label %do.body84

do.body84:                                        ; preds = %if.then80, %do.body68
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_show_regs_log, %if.then96)) #10
          to label %do.body100 [label %if.then96], !srcloc !307

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i550 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %186 = ptrtoint ptr %addr_reg.i.i550 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %addr_reg.i.i550, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %187, i16 3584) #10, !srcloc !295
  %board.i.i551 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %188 = ptrtoint ptr %board.i.i551 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %board.i.i551, align 4
  %delay.i.i552 = getelementptr inbounds %struct.isp116x_platform_data, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %delay.i.i552 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %delay.i.i552, align 4
  %add.ptr.i.i.i553 = getelementptr i8, ptr %isp116x, i32 -600
  %192 = ptrtoint ptr %add.ptr.i.i.i553 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %add.ptr.i.i.i553, align 8
  tail call void %191(ptr noundef %193, i32 noundef 300) #10
  %data_reg.i.i554 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %194 = ptrtoint ptr %data_reg.i.i554 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %data_reg.i.i554, align 4
  %196 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %195) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %197 = ptrtoint ptr %board.i.i551 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %board.i.i551, align 4
  %delay.i3.i555 = getelementptr inbounds %struct.isp116x_platform_data, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %delay.i3.i555 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %delay.i3.i555, align 4
  %201 = ptrtoint ptr %add.ptr.i.i.i553 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %add.ptr.i.i.i553, align 8
  tail call void %200(ptr noundef %202, i32 noundef 150) #10
  %203 = ptrtoint ptr %data_reg.i.i554 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %data_reg.i.i554, align 4
  %205 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %204) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %206 = zext i16 %205 to i32
  %207 = zext i16 %196 to i32
  %208 = shl nuw i32 %207, 16
  %209 = or i32 %208, %206
  %210 = tail call i32 @llvm.bswap.i32(i32 %209) #10
  %211 = ptrtoint ptr %board.i.i551 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %board.i.i551, align 4
  %delay11.i.i556 = getelementptr inbounds %struct.isp116x_platform_data, ptr %212, i32 0, i32 1
  %213 = ptrtoint ptr %delay11.i.i556 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %delay11.i.i556, align 4
  %215 = ptrtoint ptr %add.ptr.i.i.i553 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %add.ptr.i.i.i553, align 8
  tail call void %214(ptr noundef %216, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_show_regs_log.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.43, i32 noundef 14, i32 noundef %210) #10
  br label %do.body100

do.body100:                                       ; preds = %if.then96, %do.body84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_show_regs_log, %if.then112)) #10
          to label %do.body116 [label %if.then112], !srcloc !307

if.then112:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i557 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %217 = ptrtoint ptr %addr_reg.i.i557 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %addr_reg.i.i557, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %218, i16 3840) #10, !srcloc !295
  %board.i.i558 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %219 = ptrtoint ptr %board.i.i558 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %board.i.i558, align 4
  %delay.i.i559 = getelementptr inbounds %struct.isp116x_platform_data, ptr %220, i32 0, i32 1
  %221 = ptrtoint ptr %delay.i.i559 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %delay.i.i559, align 4
  %add.ptr.i.i.i560 = getelementptr i8, ptr %isp116x, i32 -600
  %223 = ptrtoint ptr %add.ptr.i.i.i560 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %add.ptr.i.i.i560, align 8
  tail call void %222(ptr noundef %224, i32 noundef 300) #10
  %data_reg.i.i561 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %225 = ptrtoint ptr %data_reg.i.i561 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %data_reg.i.i561, align 4
  %227 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %226) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %228 = ptrtoint ptr %board.i.i558 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %board.i.i558, align 4
  %delay.i3.i562 = getelementptr inbounds %struct.isp116x_platform_data, ptr %229, i32 0, i32 1
  %230 = ptrtoint ptr %delay.i3.i562 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %delay.i3.i562, align 4
  %232 = ptrtoint ptr %add.ptr.i.i.i560 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %add.ptr.i.i.i560, align 8
  tail call void %231(ptr noundef %233, i32 noundef 150) #10
  %234 = ptrtoint ptr %data_reg.i.i561 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %data_reg.i.i561, align 4
  %236 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %235) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %237 = zext i16 %236 to i32
  %238 = zext i16 %227 to i32
  %239 = shl nuw i32 %238, 16
  %240 = or i32 %239, %237
  %241 = tail call i32 @llvm.bswap.i32(i32 %240) #10
  %242 = ptrtoint ptr %board.i.i558 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %board.i.i558, align 4
  %delay11.i.i563 = getelementptr inbounds %struct.isp116x_platform_data, ptr %243, i32 0, i32 1
  %244 = ptrtoint ptr %delay11.i.i563 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %delay11.i.i563, align 4
  %246 = ptrtoint ptr %add.ptr.i.i.i560 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %add.ptr.i.i.i560, align 8
  tail call void %245(ptr noundef %247, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_show_regs_log.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.44, i32 noundef 15, i32 noundef %241) #10
  br label %do.body116

do.body116:                                       ; preds = %if.then112, %do.body100
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_show_regs_log, %if.then128)) #10
          to label %do.body132 [label %if.then128], !srcloc !307

if.then128:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i564 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %248 = ptrtoint ptr %addr_reg.i.i564 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %addr_reg.i.i564, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %249, i16 4352) #10, !srcloc !295
  %board.i.i565 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %250 = ptrtoint ptr %board.i.i565 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %board.i.i565, align 4
  %delay.i.i566 = getelementptr inbounds %struct.isp116x_platform_data, ptr %251, i32 0, i32 1
  %252 = ptrtoint ptr %delay.i.i566 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %delay.i.i566, align 4
  %add.ptr.i.i.i567 = getelementptr i8, ptr %isp116x, i32 -600
  %254 = ptrtoint ptr %add.ptr.i.i.i567 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %add.ptr.i.i.i567, align 8
  tail call void %253(ptr noundef %255, i32 noundef 300) #10
  %data_reg.i.i568 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %256 = ptrtoint ptr %data_reg.i.i568 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %data_reg.i.i568, align 4
  %258 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %257) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %259 = ptrtoint ptr %board.i.i565 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %board.i.i565, align 4
  %delay.i3.i569 = getelementptr inbounds %struct.isp116x_platform_data, ptr %260, i32 0, i32 1
  %261 = ptrtoint ptr %delay.i3.i569 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %delay.i3.i569, align 4
  %263 = ptrtoint ptr %add.ptr.i.i.i567 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %add.ptr.i.i.i567, align 8
  tail call void %262(ptr noundef %264, i32 noundef 150) #10
  %265 = ptrtoint ptr %data_reg.i.i568 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %data_reg.i.i568, align 4
  %267 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %266) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %268 = zext i16 %267 to i32
  %269 = zext i16 %258 to i32
  %270 = shl nuw i32 %269, 16
  %271 = or i32 %270, %268
  %272 = tail call i32 @llvm.bswap.i32(i32 %271) #10
  %273 = ptrtoint ptr %board.i.i565 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %board.i.i565, align 4
  %delay11.i.i570 = getelementptr inbounds %struct.isp116x_platform_data, ptr %274, i32 0, i32 1
  %275 = ptrtoint ptr %delay11.i.i570 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %delay11.i.i570, align 4
  %277 = ptrtoint ptr %add.ptr.i.i.i567 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %add.ptr.i.i.i567, align 8
  tail call void %276(ptr noundef %278, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_show_regs_log.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.45, i32 noundef 17, i32 noundef %272) #10
  br label %do.body132

do.body132:                                       ; preds = %if.then128, %do.body116
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_show_regs_log, %if.then144)) #10
          to label %do.body148 [label %if.then144], !srcloc !307

if.then144:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i571 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %279 = ptrtoint ptr %addr_reg.i.i571 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %addr_reg.i.i571, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %280, i16 4608) #10, !srcloc !295
  %board.i.i572 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %281 = ptrtoint ptr %board.i.i572 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %board.i.i572, align 4
  %delay.i.i573 = getelementptr inbounds %struct.isp116x_platform_data, ptr %282, i32 0, i32 1
  %283 = ptrtoint ptr %delay.i.i573 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %delay.i.i573, align 4
  %add.ptr.i.i.i574 = getelementptr i8, ptr %isp116x, i32 -600
  %285 = ptrtoint ptr %add.ptr.i.i.i574 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %add.ptr.i.i.i574, align 8
  tail call void %284(ptr noundef %286, i32 noundef 300) #10
  %data_reg.i.i575 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %287 = ptrtoint ptr %data_reg.i.i575 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %data_reg.i.i575, align 4
  %289 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %288) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %290 = ptrtoint ptr %board.i.i572 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %board.i.i572, align 4
  %delay.i3.i576 = getelementptr inbounds %struct.isp116x_platform_data, ptr %291, i32 0, i32 1
  %292 = ptrtoint ptr %delay.i3.i576 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %delay.i3.i576, align 4
  %294 = ptrtoint ptr %add.ptr.i.i.i574 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %add.ptr.i.i.i574, align 8
  tail call void %293(ptr noundef %295, i32 noundef 150) #10
  %296 = ptrtoint ptr %data_reg.i.i575 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %data_reg.i.i575, align 4
  %298 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %297) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %299 = zext i16 %298 to i32
  %300 = zext i16 %289 to i32
  %301 = shl nuw i32 %300, 16
  %302 = or i32 %301, %299
  %303 = tail call i32 @llvm.bswap.i32(i32 %302) #10
  %304 = ptrtoint ptr %board.i.i572 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %board.i.i572, align 4
  %delay11.i.i577 = getelementptr inbounds %struct.isp116x_platform_data, ptr %305, i32 0, i32 1
  %306 = ptrtoint ptr %delay11.i.i577 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %delay11.i.i577, align 4
  %308 = ptrtoint ptr %add.ptr.i.i.i574 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %add.ptr.i.i.i574, align 8
  tail call void %307(ptr noundef %309, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_show_regs_log.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.46, i32 noundef 18, i32 noundef %303) #10
  br label %do.body148

do.body148:                                       ; preds = %if.then144, %do.body132
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_show_regs_log, %if.then160)) #10
          to label %do.body164 [label %if.then160], !srcloc !307

if.then160:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i578 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %310 = ptrtoint ptr %addr_reg.i.i578 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %addr_reg.i.i578, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %311, i16 4864) #10, !srcloc !295
  %board.i.i579 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %312 = ptrtoint ptr %board.i.i579 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %board.i.i579, align 4
  %delay.i.i580 = getelementptr inbounds %struct.isp116x_platform_data, ptr %313, i32 0, i32 1
  %314 = ptrtoint ptr %delay.i.i580 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %delay.i.i580, align 4
  %add.ptr.i.i.i581 = getelementptr i8, ptr %isp116x, i32 -600
  %316 = ptrtoint ptr %add.ptr.i.i.i581 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %add.ptr.i.i.i581, align 8
  tail call void %315(ptr noundef %317, i32 noundef 300) #10
  %data_reg.i.i582 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %318 = ptrtoint ptr %data_reg.i.i582 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %data_reg.i.i582, align 4
  %320 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %319) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %321 = ptrtoint ptr %board.i.i579 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %board.i.i579, align 4
  %delay.i3.i583 = getelementptr inbounds %struct.isp116x_platform_data, ptr %322, i32 0, i32 1
  %323 = ptrtoint ptr %delay.i3.i583 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %delay.i3.i583, align 4
  %325 = ptrtoint ptr %add.ptr.i.i.i581 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %add.ptr.i.i.i581, align 8
  tail call void %324(ptr noundef %326, i32 noundef 150) #10
  %327 = ptrtoint ptr %data_reg.i.i582 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %data_reg.i.i582, align 4
  %329 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %328) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %330 = zext i16 %329 to i32
  %331 = zext i16 %320 to i32
  %332 = shl nuw i32 %331, 16
  %333 = or i32 %332, %330
  %334 = tail call i32 @llvm.bswap.i32(i32 %333) #10
  %335 = ptrtoint ptr %board.i.i579 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %board.i.i579, align 4
  %delay11.i.i584 = getelementptr inbounds %struct.isp116x_platform_data, ptr %336, i32 0, i32 1
  %337 = ptrtoint ptr %delay11.i.i584 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %delay11.i.i584, align 4
  %339 = ptrtoint ptr %add.ptr.i.i.i581 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %add.ptr.i.i.i581, align 8
  tail call void %338(ptr noundef %340, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_show_regs_log.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.47, i32 noundef 19, i32 noundef %334) #10
  br label %do.body164

do.body164:                                       ; preds = %if.then160, %do.body148
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_show_regs_log, %if.then176)) #10
          to label %do.body180 [label %if.then176], !srcloc !307

if.then176:                                       ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i585 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %341 = ptrtoint ptr %addr_reg.i.i585 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %addr_reg.i.i585, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %342, i16 5120) #10, !srcloc !295
  %board.i.i586 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %343 = ptrtoint ptr %board.i.i586 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %board.i.i586, align 4
  %delay.i.i587 = getelementptr inbounds %struct.isp116x_platform_data, ptr %344, i32 0, i32 1
  %345 = ptrtoint ptr %delay.i.i587 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %delay.i.i587, align 4
  %add.ptr.i.i.i588 = getelementptr i8, ptr %isp116x, i32 -600
  %347 = ptrtoint ptr %add.ptr.i.i.i588 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %add.ptr.i.i.i588, align 8
  tail call void %346(ptr noundef %348, i32 noundef 300) #10
  %data_reg.i.i589 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %349 = ptrtoint ptr %data_reg.i.i589 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %data_reg.i.i589, align 4
  %351 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %350) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %352 = ptrtoint ptr %board.i.i586 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %board.i.i586, align 4
  %delay.i3.i590 = getelementptr inbounds %struct.isp116x_platform_data, ptr %353, i32 0, i32 1
  %354 = ptrtoint ptr %delay.i3.i590 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %delay.i3.i590, align 4
  %356 = ptrtoint ptr %add.ptr.i.i.i588 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %add.ptr.i.i.i588, align 8
  tail call void %355(ptr noundef %357, i32 noundef 150) #10
  %358 = ptrtoint ptr %data_reg.i.i589 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %data_reg.i.i589, align 4
  %360 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %359) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %361 = zext i16 %360 to i32
  %362 = zext i16 %351 to i32
  %363 = shl nuw i32 %362, 16
  %364 = or i32 %363, %361
  %365 = tail call i32 @llvm.bswap.i32(i32 %364) #10
  %366 = ptrtoint ptr %board.i.i586 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %board.i.i586, align 4
  %delay11.i.i591 = getelementptr inbounds %struct.isp116x_platform_data, ptr %367, i32 0, i32 1
  %368 = ptrtoint ptr %delay11.i.i591 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %delay11.i.i591, align 4
  %370 = ptrtoint ptr %add.ptr.i.i.i588 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %add.ptr.i.i.i588, align 8
  tail call void %369(ptr noundef %371, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_show_regs_log.__UNIQUE_ID_ddebug254, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.48, i32 noundef 20, i32 noundef %365) #10
  br label %do.body180

do.body180:                                       ; preds = %if.then176, %do.body164
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_show_regs_log, %if.then192)) #10
          to label %do.body196 [label %if.then192], !srcloc !307

if.then192:                                       ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i592 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %372 = ptrtoint ptr %addr_reg.i.i592 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %addr_reg.i.i592, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %373, i16 5376) #10, !srcloc !295
  %board.i.i593 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %374 = ptrtoint ptr %board.i.i593 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %board.i.i593, align 4
  %delay.i.i594 = getelementptr inbounds %struct.isp116x_platform_data, ptr %375, i32 0, i32 1
  %376 = ptrtoint ptr %delay.i.i594 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %delay.i.i594, align 4
  %add.ptr.i.i.i595 = getelementptr i8, ptr %isp116x, i32 -600
  %378 = ptrtoint ptr %add.ptr.i.i.i595 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %add.ptr.i.i.i595, align 8
  tail call void %377(ptr noundef %379, i32 noundef 300) #10
  %data_reg.i.i596 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %380 = ptrtoint ptr %data_reg.i.i596 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %data_reg.i.i596, align 4
  %382 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %381) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %383 = ptrtoint ptr %board.i.i593 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %board.i.i593, align 4
  %delay.i3.i597 = getelementptr inbounds %struct.isp116x_platform_data, ptr %384, i32 0, i32 1
  %385 = ptrtoint ptr %delay.i3.i597 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %delay.i3.i597, align 4
  %387 = ptrtoint ptr %add.ptr.i.i.i595 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %add.ptr.i.i.i595, align 8
  tail call void %386(ptr noundef %388, i32 noundef 150) #10
  %389 = ptrtoint ptr %data_reg.i.i596 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %data_reg.i.i596, align 4
  %391 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %390) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %392 = zext i16 %391 to i32
  %393 = zext i16 %382 to i32
  %394 = shl nuw i32 %393, 16
  %395 = or i32 %394, %392
  %396 = tail call i32 @llvm.bswap.i32(i32 %395) #10
  %397 = ptrtoint ptr %board.i.i593 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %board.i.i593, align 4
  %delay11.i.i598 = getelementptr inbounds %struct.isp116x_platform_data, ptr %398, i32 0, i32 1
  %399 = ptrtoint ptr %delay11.i.i598 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %delay11.i.i598, align 4
  %401 = ptrtoint ptr %add.ptr.i.i.i595 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %add.ptr.i.i.i595, align 8
  tail call void %400(ptr noundef %402, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_show_regs_log.__UNIQUE_ID_ddebug256, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.49, i32 noundef 21, i32 noundef %396) #10
  br label %do.body196

do.body196:                                       ; preds = %if.then192, %do.body180
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_show_regs_log, %if.then208)) #10
          to label %do.body212 [label %if.then208], !srcloc !307

if.then208:                                       ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i599 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %403 = ptrtoint ptr %addr_reg.i.i599 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %addr_reg.i.i599, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %404, i16 5632) #10, !srcloc !295
  %board.i.i600 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %405 = ptrtoint ptr %board.i.i600 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %board.i.i600, align 4
  %delay.i.i601 = getelementptr inbounds %struct.isp116x_platform_data, ptr %406, i32 0, i32 1
  %407 = ptrtoint ptr %delay.i.i601 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %delay.i.i601, align 4
  %add.ptr.i.i.i602 = getelementptr i8, ptr %isp116x, i32 -600
  %409 = ptrtoint ptr %add.ptr.i.i.i602 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %add.ptr.i.i.i602, align 8
  tail call void %408(ptr noundef %410, i32 noundef 300) #10
  %data_reg.i.i603 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %411 = ptrtoint ptr %data_reg.i.i603 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %data_reg.i.i603, align 4
  %413 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %412) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %414 = ptrtoint ptr %board.i.i600 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %board.i.i600, align 4
  %delay.i3.i604 = getelementptr inbounds %struct.isp116x_platform_data, ptr %415, i32 0, i32 1
  %416 = ptrtoint ptr %delay.i3.i604 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %delay.i3.i604, align 4
  %418 = ptrtoint ptr %add.ptr.i.i.i602 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %add.ptr.i.i.i602, align 8
  tail call void %417(ptr noundef %419, i32 noundef 150) #10
  %420 = ptrtoint ptr %data_reg.i.i603 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %data_reg.i.i603, align 4
  %422 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %421) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %423 = zext i16 %422 to i32
  %424 = zext i16 %413 to i32
  %425 = shl nuw i32 %424, 16
  %426 = or i32 %425, %423
  %427 = tail call i32 @llvm.bswap.i32(i32 %426) #10
  %428 = ptrtoint ptr %board.i.i600 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %board.i.i600, align 4
  %delay11.i.i605 = getelementptr inbounds %struct.isp116x_platform_data, ptr %429, i32 0, i32 1
  %430 = ptrtoint ptr %delay11.i.i605 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %delay11.i.i605, align 4
  %432 = ptrtoint ptr %add.ptr.i.i.i602 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %add.ptr.i.i.i602, align 8
  tail call void %431(ptr noundef %433, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_show_regs_log.__UNIQUE_ID_ddebug258, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.50, i32 noundef 22, i32 noundef %427) #10
  br label %do.body212

do.body212:                                       ; preds = %if.then208, %do.body196
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_show_regs_log, %if.then224)) #10
          to label %do.body228 [label %if.then224], !srcloc !307

if.then224:                                       ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i606 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %434 = ptrtoint ptr %addr_reg.i.i606 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %addr_reg.i.i606, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %435, i16 8192) #10, !srcloc !295
  %board.i.i607 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %436 = ptrtoint ptr %board.i.i607 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %board.i.i607, align 4
  %delay.i.i608 = getelementptr inbounds %struct.isp116x_platform_data, ptr %437, i32 0, i32 1
  %438 = ptrtoint ptr %delay.i.i608 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %delay.i.i608, align 4
  %add.ptr.i.i.i609 = getelementptr i8, ptr %isp116x, i32 -600
  %440 = ptrtoint ptr %add.ptr.i.i.i609 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %add.ptr.i.i.i609, align 8
  tail call void %439(ptr noundef %441, i32 noundef 300) #10
  %data_reg.i.i610 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %442 = ptrtoint ptr %data_reg.i.i610 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %data_reg.i.i610, align 4
  %444 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %443) #10, !srcloc !297
  %445 = tail call i16 @llvm.bswap.i16(i16 %444) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %446 = ptrtoint ptr %board.i.i607 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %board.i.i607, align 4
  %delay.i3.i611 = getelementptr inbounds %struct.isp116x_platform_data, ptr %447, i32 0, i32 1
  %448 = ptrtoint ptr %delay.i3.i611 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %delay.i3.i611, align 4
  %450 = ptrtoint ptr %add.ptr.i.i.i609 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %add.ptr.i.i.i609, align 8
  tail call void %449(ptr noundef %451, i32 noundef 150) #10
  %conv = zext i16 %445 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_show_regs_log.__UNIQUE_ID_ddebug261, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef 32, i32 noundef %conv) #10
  br label %do.body228

do.body228:                                       ; preds = %if.then224, %do.body212
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_show_regs_log, %if.then240)) #10
          to label %do.body245 [label %if.then240], !srcloc !307

if.then240:                                       ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i612 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %452 = ptrtoint ptr %addr_reg.i.i612 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %addr_reg.i.i612, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %453, i16 8448) #10, !srcloc !295
  %board.i.i613 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %454 = ptrtoint ptr %board.i.i613 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %board.i.i613, align 4
  %delay.i.i614 = getelementptr inbounds %struct.isp116x_platform_data, ptr %455, i32 0, i32 1
  %456 = ptrtoint ptr %delay.i.i614 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %delay.i.i614, align 4
  %add.ptr.i.i.i615 = getelementptr i8, ptr %isp116x, i32 -600
  %458 = ptrtoint ptr %add.ptr.i.i.i615 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %add.ptr.i.i.i615, align 8
  tail call void %457(ptr noundef %459, i32 noundef 300) #10
  %data_reg.i.i616 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %460 = ptrtoint ptr %data_reg.i.i616 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %data_reg.i.i616, align 4
  %462 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %461) #10, !srcloc !297
  %463 = tail call i16 @llvm.bswap.i16(i16 %462) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %464 = ptrtoint ptr %board.i.i613 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %board.i.i613, align 4
  %delay.i3.i617 = getelementptr inbounds %struct.isp116x_platform_data, ptr %465, i32 0, i32 1
  %466 = ptrtoint ptr %delay.i3.i617 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %delay.i3.i617, align 4
  %468 = ptrtoint ptr %add.ptr.i.i.i615 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %add.ptr.i.i.i615, align 8
  tail call void %467(ptr noundef %469, i32 noundef 150) #10
  %conv242 = zext i16 %463 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_show_regs_log.__UNIQUE_ID_ddebug263, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.53, i32 noundef 33, i32 noundef %conv242) #10
  br label %do.body245

do.body245:                                       ; preds = %if.then240, %do.body228
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_show_regs_log, %if.then257)) #10
          to label %do.body262 [label %if.then257], !srcloc !307

if.then257:                                       ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i618 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %470 = ptrtoint ptr %addr_reg.i.i618 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %addr_reg.i.i618, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %471, i16 8704) #10, !srcloc !295
  %board.i.i619 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %472 = ptrtoint ptr %board.i.i619 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %board.i.i619, align 4
  %delay.i.i620 = getelementptr inbounds %struct.isp116x_platform_data, ptr %473, i32 0, i32 1
  %474 = ptrtoint ptr %delay.i.i620 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %delay.i.i620, align 4
  %add.ptr.i.i.i621 = getelementptr i8, ptr %isp116x, i32 -600
  %476 = ptrtoint ptr %add.ptr.i.i.i621 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %add.ptr.i.i.i621, align 8
  tail call void %475(ptr noundef %477, i32 noundef 300) #10
  %data_reg.i.i622 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %478 = ptrtoint ptr %data_reg.i.i622 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %data_reg.i.i622, align 4
  %480 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %479) #10, !srcloc !297
  %481 = tail call i16 @llvm.bswap.i16(i16 %480) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %482 = ptrtoint ptr %board.i.i619 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %board.i.i619, align 4
  %delay.i3.i623 = getelementptr inbounds %struct.isp116x_platform_data, ptr %483, i32 0, i32 1
  %484 = ptrtoint ptr %delay.i3.i623 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %delay.i3.i623, align 4
  %486 = ptrtoint ptr %add.ptr.i.i.i621 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %add.ptr.i.i.i621, align 8
  tail call void %485(ptr noundef %487, i32 noundef 150) #10
  %conv259 = zext i16 %481 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_show_regs_log.__UNIQUE_ID_ddebug265, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.54, i32 noundef 34, i32 noundef %conv259) #10
  br label %do.body262

do.body262:                                       ; preds = %if.then257, %do.body245
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_show_regs_log, %if.then274)) #10
          to label %do.body279 [label %if.then274], !srcloc !307

if.then274:                                       ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i624 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %488 = ptrtoint ptr %addr_reg.i.i624 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %addr_reg.i.i624, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %489, i16 9216) #10, !srcloc !295
  %board.i.i625 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %490 = ptrtoint ptr %board.i.i625 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %board.i.i625, align 4
  %delay.i.i626 = getelementptr inbounds %struct.isp116x_platform_data, ptr %491, i32 0, i32 1
  %492 = ptrtoint ptr %delay.i.i626 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %delay.i.i626, align 4
  %add.ptr.i.i.i627 = getelementptr i8, ptr %isp116x, i32 -600
  %494 = ptrtoint ptr %add.ptr.i.i.i627 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %add.ptr.i.i.i627, align 8
  tail call void %493(ptr noundef %495, i32 noundef 300) #10
  %data_reg.i.i628 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %496 = ptrtoint ptr %data_reg.i.i628 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %data_reg.i.i628, align 4
  %498 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %497) #10, !srcloc !297
  %499 = tail call i16 @llvm.bswap.i16(i16 %498) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %500 = ptrtoint ptr %board.i.i625 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %board.i.i625, align 4
  %delay.i3.i629 = getelementptr inbounds %struct.isp116x_platform_data, ptr %501, i32 0, i32 1
  %502 = ptrtoint ptr %delay.i3.i629 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %delay.i3.i629, align 4
  %504 = ptrtoint ptr %add.ptr.i.i.i627 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %add.ptr.i.i.i627, align 8
  tail call void %503(ptr noundef %505, i32 noundef 150) #10
  %conv276 = zext i16 %499 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_show_regs_log.__UNIQUE_ID_ddebug267, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.55, i32 noundef 36, i32 noundef %conv276) #10
  br label %do.body279

do.body279:                                       ; preds = %if.then274, %do.body262
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_show_regs_log, %if.then291)) #10
          to label %do.body296 [label %if.then291], !srcloc !307

if.then291:                                       ; preds = %do.body279
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i630 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %506 = ptrtoint ptr %addr_reg.i.i630 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %addr_reg.i.i630, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %507, i16 9472) #10, !srcloc !295
  %board.i.i631 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %508 = ptrtoint ptr %board.i.i631 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %board.i.i631, align 4
  %delay.i.i632 = getelementptr inbounds %struct.isp116x_platform_data, ptr %509, i32 0, i32 1
  %510 = ptrtoint ptr %delay.i.i632 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %delay.i.i632, align 4
  %add.ptr.i.i.i633 = getelementptr i8, ptr %isp116x, i32 -600
  %512 = ptrtoint ptr %add.ptr.i.i.i633 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %add.ptr.i.i.i633, align 8
  tail call void %511(ptr noundef %513, i32 noundef 300) #10
  %data_reg.i.i634 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %514 = ptrtoint ptr %data_reg.i.i634 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %data_reg.i.i634, align 4
  %516 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %515) #10, !srcloc !297
  %517 = tail call i16 @llvm.bswap.i16(i16 %516) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %518 = ptrtoint ptr %board.i.i631 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %board.i.i631, align 4
  %delay.i3.i635 = getelementptr inbounds %struct.isp116x_platform_data, ptr %519, i32 0, i32 1
  %520 = ptrtoint ptr %delay.i3.i635 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %delay.i3.i635, align 4
  %522 = ptrtoint ptr %add.ptr.i.i.i633 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %add.ptr.i.i.i633, align 8
  tail call void %521(ptr noundef %523, i32 noundef 150) #10
  %conv293 = zext i16 %517 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_show_regs_log.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.56, i32 noundef 37, i32 noundef %conv293) #10
  br label %do.body296

do.body296:                                       ; preds = %if.then291, %do.body279
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_show_regs_log, %if.then308)) #10
          to label %do.body313 [label %if.then308], !srcloc !307

if.then308:                                       ; preds = %do.body296
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i636 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %524 = ptrtoint ptr %addr_reg.i.i636 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %addr_reg.i.i636, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %525, i16 9984) #10, !srcloc !295
  %board.i.i637 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %526 = ptrtoint ptr %board.i.i637 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %board.i.i637, align 4
  %delay.i.i638 = getelementptr inbounds %struct.isp116x_platform_data, ptr %527, i32 0, i32 1
  %528 = ptrtoint ptr %delay.i.i638 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %delay.i.i638, align 4
  %add.ptr.i.i.i639 = getelementptr i8, ptr %isp116x, i32 -600
  %530 = ptrtoint ptr %add.ptr.i.i.i639 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %add.ptr.i.i.i639, align 8
  tail call void %529(ptr noundef %531, i32 noundef 300) #10
  %data_reg.i.i640 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %532 = ptrtoint ptr %data_reg.i.i640 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %data_reg.i.i640, align 4
  %534 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %533) #10, !srcloc !297
  %535 = tail call i16 @llvm.bswap.i16(i16 %534) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %536 = ptrtoint ptr %board.i.i637 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %board.i.i637, align 4
  %delay.i3.i641 = getelementptr inbounds %struct.isp116x_platform_data, ptr %537, i32 0, i32 1
  %538 = ptrtoint ptr %delay.i3.i641 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %delay.i3.i641, align 4
  %540 = ptrtoint ptr %add.ptr.i.i.i639 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %add.ptr.i.i.i639, align 8
  tail call void %539(ptr noundef %541, i32 noundef 150) #10
  %conv310 = zext i16 %535 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_show_regs_log.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.57, i32 noundef 39, i32 noundef %conv310) #10
  br label %do.body313

do.body313:                                       ; preds = %if.then308, %do.body296
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_show_regs_log, %if.then325)) #10
          to label %do.body330 [label %if.then325], !srcloc !307

if.then325:                                       ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i642 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %542 = ptrtoint ptr %addr_reg.i.i642 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %addr_reg.i.i642, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %543, i16 10240) #10, !srcloc !295
  %board.i.i643 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %544 = ptrtoint ptr %board.i.i643 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %board.i.i643, align 4
  %delay.i.i644 = getelementptr inbounds %struct.isp116x_platform_data, ptr %545, i32 0, i32 1
  %546 = ptrtoint ptr %delay.i.i644 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %delay.i.i644, align 4
  %add.ptr.i.i.i645 = getelementptr i8, ptr %isp116x, i32 -600
  %548 = ptrtoint ptr %add.ptr.i.i.i645 to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %add.ptr.i.i.i645, align 8
  tail call void %547(ptr noundef %549, i32 noundef 300) #10
  %data_reg.i.i646 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %550 = ptrtoint ptr %data_reg.i.i646 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %data_reg.i.i646, align 4
  %552 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %551) #10, !srcloc !297
  %553 = tail call i16 @llvm.bswap.i16(i16 %552) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %554 = ptrtoint ptr %board.i.i643 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %board.i.i643, align 4
  %delay.i3.i647 = getelementptr inbounds %struct.isp116x_platform_data, ptr %555, i32 0, i32 1
  %556 = ptrtoint ptr %delay.i3.i647 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %delay.i3.i647, align 4
  %558 = ptrtoint ptr %add.ptr.i.i.i645 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %add.ptr.i.i.i645, align 8
  tail call void %557(ptr noundef %559, i32 noundef 150) #10
  %conv327 = zext i16 %553 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_show_regs_log.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.58, i32 noundef 40, i32 noundef %conv327) #10
  br label %do.body330

do.body330:                                       ; preds = %if.then325, %do.body313
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_show_regs_log, %if.then342)) #10
          to label %do.body347 [label %if.then342], !srcloc !307

if.then342:                                       ; preds = %do.body330
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i648 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %560 = ptrtoint ptr %addr_reg.i.i648 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %addr_reg.i.i648, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %561, i16 10752) #10, !srcloc !295
  %board.i.i649 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %562 = ptrtoint ptr %board.i.i649 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %board.i.i649, align 4
  %delay.i.i650 = getelementptr inbounds %struct.isp116x_platform_data, ptr %563, i32 0, i32 1
  %564 = ptrtoint ptr %delay.i.i650 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %delay.i.i650, align 4
  %add.ptr.i.i.i651 = getelementptr i8, ptr %isp116x, i32 -600
  %566 = ptrtoint ptr %add.ptr.i.i.i651 to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %add.ptr.i.i.i651, align 8
  tail call void %565(ptr noundef %567, i32 noundef 300) #10
  %data_reg.i.i652 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %568 = ptrtoint ptr %data_reg.i.i652 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %data_reg.i.i652, align 4
  %570 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %569) #10, !srcloc !297
  %571 = tail call i16 @llvm.bswap.i16(i16 %570) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %572 = ptrtoint ptr %board.i.i649 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %board.i.i649, align 4
  %delay.i3.i653 = getelementptr inbounds %struct.isp116x_platform_data, ptr %573, i32 0, i32 1
  %574 = ptrtoint ptr %delay.i3.i653 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %delay.i3.i653, align 4
  %576 = ptrtoint ptr %add.ptr.i.i.i651 to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %add.ptr.i.i.i651, align 8
  tail call void %575(ptr noundef %577, i32 noundef 150) #10
  %conv344 = zext i16 %571 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_show_regs_log.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.59, i32 noundef 42, i32 noundef %conv344) #10
  br label %do.body347

do.body347:                                       ; preds = %if.then342, %do.body330
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_show_regs_log, %if.then359)) #10
          to label %do.body364 [label %if.then359], !srcloc !307

if.then359:                                       ; preds = %do.body347
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i654 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %578 = ptrtoint ptr %addr_reg.i.i654 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %addr_reg.i.i654, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %579, i16 11008) #10, !srcloc !295
  %board.i.i655 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %580 = ptrtoint ptr %board.i.i655 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %board.i.i655, align 4
  %delay.i.i656 = getelementptr inbounds %struct.isp116x_platform_data, ptr %581, i32 0, i32 1
  %582 = ptrtoint ptr %delay.i.i656 to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %delay.i.i656, align 4
  %add.ptr.i.i.i657 = getelementptr i8, ptr %isp116x, i32 -600
  %584 = ptrtoint ptr %add.ptr.i.i.i657 to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %add.ptr.i.i.i657, align 8
  tail call void %583(ptr noundef %585, i32 noundef 300) #10
  %data_reg.i.i658 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %586 = ptrtoint ptr %data_reg.i.i658 to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %data_reg.i.i658, align 4
  %588 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %587) #10, !srcloc !297
  %589 = tail call i16 @llvm.bswap.i16(i16 %588) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %590 = ptrtoint ptr %board.i.i655 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %board.i.i655, align 4
  %delay.i3.i659 = getelementptr inbounds %struct.isp116x_platform_data, ptr %591, i32 0, i32 1
  %592 = ptrtoint ptr %delay.i3.i659 to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %delay.i3.i659, align 4
  %594 = ptrtoint ptr %add.ptr.i.i.i657 to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %add.ptr.i.i.i657, align 8
  tail call void %593(ptr noundef %595, i32 noundef 150) #10
  %conv361 = zext i16 %589 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_show_regs_log.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.60, i32 noundef 43, i32 noundef %conv361) #10
  br label %do.body364

do.body364:                                       ; preds = %if.then359, %do.body347
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_show_regs_log, %if.then376)) #10
          to label %do.body381 [label %if.then376], !srcloc !307

if.then376:                                       ; preds = %do.body364
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i660 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %596 = ptrtoint ptr %addr_reg.i.i660 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %addr_reg.i.i660, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %597, i16 11264) #10, !srcloc !295
  %board.i.i661 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %598 = ptrtoint ptr %board.i.i661 to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %board.i.i661, align 4
  %delay.i.i662 = getelementptr inbounds %struct.isp116x_platform_data, ptr %599, i32 0, i32 1
  %600 = ptrtoint ptr %delay.i.i662 to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %delay.i.i662, align 4
  %add.ptr.i.i.i663 = getelementptr i8, ptr %isp116x, i32 -600
  %602 = ptrtoint ptr %add.ptr.i.i.i663 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %add.ptr.i.i.i663, align 8
  tail call void %601(ptr noundef %603, i32 noundef 300) #10
  %data_reg.i.i664 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %604 = ptrtoint ptr %data_reg.i.i664 to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %data_reg.i.i664, align 4
  %606 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %605) #10, !srcloc !297
  %607 = tail call i16 @llvm.bswap.i16(i16 %606) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %608 = ptrtoint ptr %board.i.i661 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %board.i.i661, align 4
  %delay.i3.i665 = getelementptr inbounds %struct.isp116x_platform_data, ptr %609, i32 0, i32 1
  %610 = ptrtoint ptr %delay.i3.i665 to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %delay.i3.i665, align 4
  %612 = ptrtoint ptr %add.ptr.i.i.i663 to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %add.ptr.i.i.i663, align 8
  tail call void %611(ptr noundef %613, i32 noundef 150) #10
  %conv378 = zext i16 %607 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_show_regs_log.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.61, i32 noundef 44, i32 noundef %conv378) #10
  br label %do.body381

do.body381:                                       ; preds = %if.then376, %do.body364
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_show_regs_log, %if.then393)) #10
          to label %do.body398 [label %if.then393], !srcloc !307

if.then393:                                       ; preds = %do.body381
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i666 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %614 = ptrtoint ptr %addr_reg.i.i666 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %addr_reg.i.i666, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %615, i16 11520) #10, !srcloc !295
  %board.i.i667 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %616 = ptrtoint ptr %board.i.i667 to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %board.i.i667, align 4
  %delay.i.i668 = getelementptr inbounds %struct.isp116x_platform_data, ptr %617, i32 0, i32 1
  %618 = ptrtoint ptr %delay.i.i668 to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %delay.i.i668, align 4
  %add.ptr.i.i.i669 = getelementptr i8, ptr %isp116x, i32 -600
  %620 = ptrtoint ptr %add.ptr.i.i.i669 to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %add.ptr.i.i.i669, align 8
  tail call void %619(ptr noundef %621, i32 noundef 300) #10
  %data_reg.i.i670 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %622 = ptrtoint ptr %data_reg.i.i670 to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %data_reg.i.i670, align 4
  %624 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %623) #10, !srcloc !297
  %625 = tail call i16 @llvm.bswap.i16(i16 %624) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %626 = ptrtoint ptr %board.i.i667 to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %board.i.i667, align 4
  %delay.i3.i671 = getelementptr inbounds %struct.isp116x_platform_data, ptr %627, i32 0, i32 1
  %628 = ptrtoint ptr %delay.i3.i671 to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %delay.i3.i671, align 4
  %630 = ptrtoint ptr %add.ptr.i.i.i669 to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %add.ptr.i.i.i669, align 8
  tail call void %629(ptr noundef %631, i32 noundef 150) #10
  %conv395 = zext i16 %625 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_show_regs_log.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.62, i32 noundef 45, i32 noundef %conv395) #10
  br label %do.body398

do.body398:                                       ; preds = %if.then393, %do.body381
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp116x_show_regs_log, %if.then410)) #10
          to label %do.end414 [label %if.then410], !srcloc !307

if.then410:                                       ; preds = %do.body398
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i672 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %632 = ptrtoint ptr %addr_reg.i.i672 to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %addr_reg.i.i672, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %633, i16 11776) #10, !srcloc !295
  %board.i.i673 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %634 = ptrtoint ptr %board.i.i673 to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %board.i.i673, align 4
  %delay.i.i674 = getelementptr inbounds %struct.isp116x_platform_data, ptr %635, i32 0, i32 1
  %636 = ptrtoint ptr %delay.i.i674 to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %delay.i.i674, align 4
  %add.ptr.i.i.i675 = getelementptr i8, ptr %isp116x, i32 -600
  %638 = ptrtoint ptr %add.ptr.i.i.i675 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %add.ptr.i.i.i675, align 8
  tail call void %637(ptr noundef %639, i32 noundef 300) #10
  %data_reg.i.i676 = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %640 = ptrtoint ptr %data_reg.i.i676 to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %data_reg.i.i676, align 4
  %642 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %641) #10, !srcloc !297
  %643 = tail call i16 @llvm.bswap.i16(i16 %642) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %644 = ptrtoint ptr %board.i.i673 to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %board.i.i673, align 4
  %delay.i3.i677 = getelementptr inbounds %struct.isp116x_platform_data, ptr %645, i32 0, i32 1
  %646 = ptrtoint ptr %delay.i3.i677 to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %delay.i3.i677, align 4
  %648 = ptrtoint ptr %add.ptr.i.i.i675 to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %add.ptr.i.i.i675, align 8
  tail call void %647(ptr noundef %649, i32 noundef 150) #10
  %conv412 = zext i16 %643 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isp116x_show_regs_log.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.63, i32 noundef 46, i32 noundef %conv412) #10
  br label %do.end414

do.end414:                                        ; preds = %if.then410, %do.body398
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_link_urb_to_ep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_calc_bus_time(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @balance(ptr nocapture noundef readonly %isp116x, i16 noundef zeroext %period, i16 noundef zeroext %load) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %period to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %period)
  %cmp48.not = icmp eq i16 %period, 0
  br i1 %cmp48.not, label %entry.for.end30_crit_edge, label %for.body.lr.ph

entry.for.end30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end30

for.body.lr.ph:                                   ; preds = %entry
  %conv18 = zext i16 %load to i32
  br label %for.body

for.body:                                         ; preds = %for.inc29.for.body_crit_edge, %for.body.lr.ph
  %branch.052 = phi i32 [ -28, %for.body.lr.ph ], [ %branch.2, %for.inc29.for.body_crit_edge ]
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc29.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %branch.052)
  %cmp2 = icmp slt i32 %branch.052, 0
  br i1 %cmp2, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx = getelementptr %struct.isp116x, ptr %isp116x, i32 0, i32 15, i32 %branch.052
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %arrayidx7 = getelementptr %struct.isp116x, ptr %isp116x, i32 0, i32 15, i32 %i.049
  %2 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx7, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp9 = icmp ugt i16 %1, %3
  br i1 %cmp9, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.for.inc29_crit_edge

lor.lhs.false.for.inc29_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %i.049)
  %cmp1245 = icmp ult i32 %i.049, 32
  br i1 %cmp1245, label %if.then.for.body14_crit_edge, label %if.then.for.inc29_crit_edge

if.then.for.inc29_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29

if.then.for.body14_crit_edge:                     ; preds = %if.then
  br label %for.body14

for.cond11:                                       ; preds = %for.body14
  %add23 = add i32 %j.046, %conv
  %cmp12 = icmp slt i32 %add23, 32
  br i1 %cmp12, label %for.cond11.for.body14_crit_edge, label %for.cond11.for.inc29_crit_edge

for.cond11.for.inc29_crit_edge:                   ; preds = %for.cond11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29

for.cond11.for.body14_crit_edge:                  ; preds = %for.cond11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14

for.body14:                                       ; preds = %for.cond11.for.body14_crit_edge, %if.then.for.body14_crit_edge
  %j.046 = phi i32 [ %add23, %for.cond11.for.body14_crit_edge ], [ %i.049, %if.then.for.body14_crit_edge ]
  %arrayidx16 = getelementptr %struct.isp116x, ptr %isp116x, i32 0, i32 15, i32 %j.046
  %4 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx16, align 2
  %conv17 = zext i16 %5 to i32
  %add = add nuw nsw i32 %conv17, %conv18
  call void @__sanitizer_cov_trace_const_cmp4(i32 600, i32 %add)
  %cmp19 = icmp ugt i32 %add, 600
  br i1 %cmp19, label %for.body14.for.inc29_crit_edge, label %for.cond11

for.body14.for.inc29_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29

for.inc29:                                        ; preds = %for.body14.for.inc29_crit_edge, %for.cond11.for.inc29_crit_edge, %if.then.for.inc29_crit_edge, %lor.lhs.false.for.inc29_crit_edge
  %branch.2 = phi i32 [ %branch.052, %lor.lhs.false.for.inc29_crit_edge ], [ %i.049, %if.then.for.inc29_crit_edge ], [ %branch.052, %for.body14.for.inc29_crit_edge ], [ %i.049, %for.cond11.for.inc29_crit_edge ]
  %inc = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc29.for.end30_crit_edge, label %for.inc29.for.body_crit_edge

for.inc29.for.body_crit_edge:                     ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc29.for.end30_crit_edge:                    ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end30

for.end30:                                        ; preds = %for.inc29.for.end30_crit_edge, %entry.for.end30_crit_edge
  %branch.0.lcssa = phi i32 [ -28, %entry.for.end30_crit_edge ], [ %branch.2, %for.inc29.for.end30_crit_edge ]
  ret i32 %branch.0.lcssa
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_check_unlink_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @root_port_reset(ptr noundef %isp116x, i32 noundef %port) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -10, %0
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub32 = add i32 %add.neg, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub32)
  %cmp33 = icmp slt i32 %sub32, 0
  br i1 %cmp33, label %do.body1.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.body1.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %tobool.not = icmp eq i32 %port, 0
  %2 = select i1 %tobool.not, i16 5376, i16 5632
  %addr_reg.i.i = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 1
  %board.i.i = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 3
  %add.ptr.i.i.i = getelementptr i8, ptr %isp116x, i32 -600
  %data_reg.i.i = getelementptr inbounds %struct.isp116x, ptr %isp116x, i32 0, i32 2
  %conv.i.i25 = or i16 %2, -32768
  br label %do.body1

do.body1:                                         ; preds = %if.end14.do.body1_crit_edge, %do.body1.lr.ph
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %isp116x) #10
  br label %for.cond

for.cond:                                         ; preds = %if.end, %do.body1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %3 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %4, i16 %2) #10, !srcloc !295
  %5 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %board.i.i, align 4
  %delay.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %delay.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %delay.i.i, align 4
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i, align 8
  tail call void %8(ptr noundef %10, i32 noundef 300) #10
  %11 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data_reg.i.i, align 4
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %12) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %14 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %delay.i3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %delay.i3.i, align 4
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i.i.i, align 8
  tail call void %17(ptr noundef %19, i32 noundef 150) #10
  %20 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data_reg.i.i, align 4
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %21) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %23 = call i16 @llvm.bswap.i16(i16 %13)
  %24 = zext i16 %23 to i32
  %25 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %delay11.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %delay11.i.i, align 4
  %29 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i.i.i, align 8
  tail call void %28(ptr noundef %30, i32 noundef 150) #10
  %and = and i32 %24, 16
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %for.end, label %if.end

if.end:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 107374000) #10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %and10 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %isp116x, i32 noundef %call5) #10
  br label %while.end

if.end14:                                         ; preds = %for.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %32 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %33, i16 %conv.i.i25) #10, !srcloc !295
  %34 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %board.i.i, align 4
  %delay.i.i28 = getelementptr inbounds %struct.isp116x_platform_data, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %delay.i.i28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %delay.i.i28, align 4
  %38 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i.i.i, align 8
  tail call void %37(ptr noundef %39, i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  tail call void @arm_heavy_mb() #10
  %40 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %41, i16 4096) #10, !srcloc !295
  %42 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %board.i.i, align 4
  %delay.i4.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %delay.i4.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %delay.i4.i, align 4
  %46 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i.i.i, align 8
  tail call void %45(ptr noundef %47, i32 noundef 150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  tail call void @arm_heavy_mb() #10
  %48 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %49, i16 0) #10, !srcloc !295
  %50 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %board.i.i, align 4
  %delay6.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %delay6.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %delay6.i.i, align 4
  %54 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr.i.i.i, align 8
  tail call void %53(ptr noundef %55, i32 noundef 150) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %isp116x, i32 noundef %call5) #10
  tail call void @msleep(i32 noundef 10) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %56
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end14.do.body1_crit_edge, label %if.end14.while.end_crit_edge

if.end14.while.end_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end14.do.body1_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1

while.end:                                        ; preds = %if.end14.while.end_crit_edge, %if.then12, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp116x_debug_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @isp116x_debug_show, ptr noundef %1) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp116x_debug_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -600
  %product_desc = getelementptr i8, ptr %1, i32 -428
  %2 = ptrtoint ptr %product_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %product_desc, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.95, ptr noundef %3, ptr noundef nonnull @hcd_name, ptr noundef nonnull @.str.96) #10
  %state = getelementptr i8, ptr %1, i32 -12
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and4 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %addr_reg.i.i = getelementptr inbounds %struct.isp116x, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 9472) #10, !srcloc !295
  %board.i.i = getelementptr inbounds %struct.isp116x, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %board.i.i, align 4
  %delay.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %delay.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %delay.i.i, align 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  tail call void %11(ptr noundef %13, i32 noundef 300) #10
  %data_reg.i.i = getelementptr inbounds %struct.isp116x, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data_reg.i.i, align 4
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %15) #10, !srcloc !297
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %18 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %delay.i3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %delay.i3.i, align 4
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 8
  tail call void %21(ptr noundef %23, i32 noundef 150) #10
  %conv.i = zext i16 %17 to i32
  %and.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.106, ptr @.str.105
  %and3.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %cond5.i = select i1 %tobool4.not.i, ptr @.str.106, ptr @.str.107
  %and7.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %cond9.i = select i1 %tobool8.not.i, ptr @.str.106, ptr @.str.108
  %and11.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %cond13.i = select i1 %tobool12.not.i, ptr @.str.106, ptr @.str.109
  %and15.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %cond17.i = select i1 %tobool16.not.i, ptr @.str.106, ptr @.str.110
  %and19.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %cond21.i = select i1 %tobool20.not.i, ptr @.str.106, ptr @.str.111
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.99, i32 noundef %conv.i, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond5.i, ptr noundef nonnull %cond9.i, ptr noundef nonnull %cond13.i, ptr noundef nonnull %cond17.i, ptr noundef nonnull %cond21.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %25, i16 9216) #10, !srcloc !295
  %26 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %board.i.i, align 4
  %delay.i.i35 = getelementptr inbounds %struct.isp116x_platform_data, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %delay.i.i35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %delay.i.i35, align 4
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 8
  tail call void %29(ptr noundef %31, i32 noundef 300) #10
  %32 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data_reg.i.i, align 4
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %33) #10, !srcloc !297
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %36 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i38 = getelementptr inbounds %struct.isp116x_platform_data, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %delay.i3.i38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %delay.i3.i38, align 4
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i, align 8
  tail call void %39(ptr noundef %41, i32 noundef 150) #10
  %conv.i39 = zext i16 %35 to i32
  %and.i40 = and i32 %conv.i39, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i40)
  %tobool.not.i41 = icmp eq i32 %and.i40, 0
  %cond.i42 = select i1 %tobool.not.i41, ptr @.str.106, ptr @.str.105
  %and3.i43 = and i32 %conv.i39, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i43)
  %tobool4.not.i44 = icmp eq i32 %and3.i43, 0
  %cond5.i45 = select i1 %tobool4.not.i44, ptr @.str.106, ptr @.str.107
  %and7.i46 = and i32 %conv.i39, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i46)
  %tobool8.not.i47 = icmp eq i32 %and7.i46, 0
  %cond9.i48 = select i1 %tobool8.not.i47, ptr @.str.106, ptr @.str.108
  %and11.i49 = and i32 %conv.i39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i49)
  %tobool12.not.i50 = icmp eq i32 %and11.i49, 0
  %cond13.i51 = select i1 %tobool12.not.i50, ptr @.str.106, ptr @.str.109
  %and15.i52 = and i32 %conv.i39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i52)
  %tobool16.not.i53 = icmp eq i32 %and15.i52, 0
  %cond17.i54 = select i1 %tobool16.not.i53, ptr @.str.106, ptr @.str.110
  %and19.i55 = and i32 %conv.i39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i55)
  %tobool20.not.i56 = icmp eq i32 %and19.i55, 0
  %cond21.i57 = select i1 %tobool20.not.i56, ptr @.str.106, ptr @.str.111
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.100, i32 noundef %conv.i39, ptr noundef nonnull %cond.i42, ptr noundef nonnull %cond5.i45, ptr noundef nonnull %cond9.i48, ptr noundef nonnull %cond13.i51, ptr noundef nonnull %cond17.i54, ptr noundef nonnull %cond21.i57) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %42 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %43, i16 1024) #10, !srcloc !295
  %44 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %board.i.i, align 4
  %delay.i.i60 = getelementptr inbounds %struct.isp116x_platform_data, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %delay.i.i60 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %delay.i.i60, align 4
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 8
  tail call void %47(ptr noundef %49, i32 noundef 300) #10
  %50 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data_reg.i.i, align 4
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %51) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %53 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i63 = getelementptr inbounds %struct.isp116x_platform_data, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %delay.i3.i63 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %delay.i3.i63, align 4
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr.i, align 8
  tail call void %56(ptr noundef %58, i32 noundef 150) #10
  %59 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data_reg.i.i, align 4
  %61 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %60) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %62 = zext i16 %61 to i32
  %63 = zext i16 %52 to i32
  %64 = shl nuw i32 %63, 16
  %65 = or i32 %64, %62
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #10
  %67 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %delay11.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %delay11.i.i, align 4
  %71 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %add.ptr.i, align 8
  tail call void %70(ptr noundef %72, i32 noundef 150) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %tobool.not.i64 = icmp sgt i32 %66, -1
  %cond.i65 = select i1 %tobool.not.i64, ptr @.str.106, ptr @.str.113
  %and1.i = and i32 %66, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %cond3.i = select i1 %tobool2.not.i, ptr @.str.106, ptr @.str.114
  %and4.i = and i32 %66, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %cond6.i = select i1 %tobool5.not.i, ptr @.str.106, ptr @.str.115
  %and7.i66 = and i32 %66, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i66)
  %tobool8.not.i67 = icmp eq i32 %and7.i66, 0
  %cond9.i68 = select i1 %tobool8.not.i67, ptr @.str.106, ptr @.str.116
  %and10.i = and i32 %66, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %cond12.i = select i1 %tobool11.not.i, ptr @.str.106, ptr @.str.117
  %and13.i = and i32 %66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %cond15.i = select i1 %tobool14.not.i, ptr @.str.106, ptr @.str.111
  %and16.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %cond18.i = select i1 %tobool17.not.i, ptr @.str.106, ptr @.str.118
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.101, i32 noundef %66, ptr noundef nonnull %cond.i65, ptr noundef nonnull %cond3.i, ptr noundef nonnull %cond6.i, ptr noundef nonnull %cond9.i68, ptr noundef nonnull %cond12.i, ptr noundef nonnull %cond15.i, ptr noundef nonnull %cond18.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %73 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %74, i16 768) #10, !srcloc !295
  %75 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %board.i.i, align 4
  %delay.i.i71 = getelementptr inbounds %struct.isp116x_platform_data, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %delay.i.i71 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %delay.i.i71, align 4
  %79 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr.i, align 8
  tail call void %78(ptr noundef %80, i32 noundef 300) #10
  %81 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data_reg.i.i, align 4
  %83 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %82) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %84 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i74 = getelementptr inbounds %struct.isp116x_platform_data, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %delay.i3.i74 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %delay.i3.i74, align 4
  %88 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr.i, align 8
  tail call void %87(ptr noundef %89, i32 noundef 150) #10
  %90 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data_reg.i.i, align 4
  %92 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %91) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %93 = zext i16 %92 to i32
  %94 = zext i16 %83 to i32
  %95 = shl nuw i32 %94, 16
  %96 = or i32 %95, %93
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #10
  %98 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i75 = getelementptr inbounds %struct.isp116x_platform_data, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %delay11.i.i75 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %delay11.i.i75, align 4
  %102 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %add.ptr.i, align 8
  tail call void %101(ptr noundef %103, i32 noundef 150) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %97)
  %tobool.not.i76 = icmp sgt i32 %97, -1
  %cond.i77 = select i1 %tobool.not.i76, ptr @.str.106, ptr @.str.113
  %and1.i78 = and i32 %97, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i78)
  %tobool2.not.i79 = icmp eq i32 %and1.i78, 0
  %cond3.i80 = select i1 %tobool2.not.i79, ptr @.str.106, ptr @.str.114
  %and4.i81 = and i32 %97, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i81)
  %tobool5.not.i82 = icmp eq i32 %and4.i81, 0
  %cond6.i83 = select i1 %tobool5.not.i82, ptr @.str.106, ptr @.str.115
  %and7.i84 = and i32 %97, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i84)
  %tobool8.not.i85 = icmp eq i32 %and7.i84, 0
  %cond9.i86 = select i1 %tobool8.not.i85, ptr @.str.106, ptr @.str.116
  %and10.i87 = and i32 %97, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i87)
  %tobool11.not.i88 = icmp eq i32 %and10.i87, 0
  %cond12.i89 = select i1 %tobool11.not.i88, ptr @.str.106, ptr @.str.117
  %and13.i90 = and i32 %97, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i90)
  %tobool14.not.i91 = icmp eq i32 %and13.i90, 0
  %cond15.i92 = select i1 %tobool14.not.i91, ptr @.str.106, ptr @.str.111
  %and16.i93 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i93)
  %tobool17.not.i94 = icmp eq i32 %and16.i93, 0
  %cond18.i95 = select i1 %tobool17.not.i94, ptr @.str.106, ptr @.str.118
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.102, i32 noundef %97, ptr noundef nonnull %cond.i77, ptr noundef nonnull %cond3.i80, ptr noundef nonnull %cond6.i83, ptr noundef nonnull %cond9.i86, ptr noundef nonnull %cond12.i89, ptr noundef nonnull %cond15.i92, ptr noundef nonnull %cond18.i95) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %104 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %105, i16 0) #10, !srcloc !295
  %106 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %board.i.i, align 4
  %delay.i.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %delay.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %delay.i.i.i, align 4
  %110 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %add.ptr.i, align 8
  tail call void %109(ptr noundef %111, i32 noundef 300) #10
  %112 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %data_reg.i.i, align 4
  %114 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %113) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %115 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %delay.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %delay.i3.i.i, align 4
  %119 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %add.ptr.i, align 8
  tail call void %118(ptr noundef %120, i32 noundef 150) #10
  %121 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %data_reg.i.i, align 4
  %123 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %122) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %124 = zext i16 %123 to i32
  %125 = zext i16 %114 to i32
  %126 = shl nuw i32 %125, 16
  %127 = or i32 %126, %124
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #10
  %129 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %delay11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %delay11.i.i.i, align 4
  %133 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %add.ptr.i, align 8
  tail call void %132(ptr noundef %134, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.37, i32 noundef 0, i32 noundef %128) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %135 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %136, i16 256) #10, !srcloc !295
  %137 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %board.i.i, align 4
  %delay.i.i89.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %delay.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %delay.i.i89.i, align 4
  %141 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %add.ptr.i, align 8
  tail call void %140(ptr noundef %142, i32 noundef 300) #10
  %143 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %data_reg.i.i, align 4
  %145 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %144) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %146 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i92.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %delay.i3.i92.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %delay.i3.i92.i, align 4
  %150 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %add.ptr.i, align 8
  tail call void %149(ptr noundef %151, i32 noundef 150) #10
  %152 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %data_reg.i.i, align 4
  %154 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %153) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %155 = zext i16 %154 to i32
  %156 = zext i16 %145 to i32
  %157 = shl nuw i32 %156, 16
  %158 = or i32 %157, %155
  %159 = tail call i32 @llvm.bswap.i32(i32 %158) #10
  %160 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i93.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %delay11.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %delay11.i.i93.i, align 4
  %164 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %add.ptr.i, align 8
  tail call void %163(ptr noundef %165, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.38, i32 noundef 1, i32 noundef %159) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %166 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %167, i16 512) #10, !srcloc !295
  %168 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %board.i.i, align 4
  %delay.i.i96.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %delay.i.i96.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %delay.i.i96.i, align 4
  %172 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %add.ptr.i, align 8
  tail call void %171(ptr noundef %173, i32 noundef 300) #10
  %174 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %data_reg.i.i, align 4
  %176 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %175) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %177 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i99.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %delay.i3.i99.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %delay.i3.i99.i, align 4
  %181 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %add.ptr.i, align 8
  tail call void %180(ptr noundef %182, i32 noundef 150) #10
  %183 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %data_reg.i.i, align 4
  %185 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %184) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %186 = zext i16 %185 to i32
  %187 = zext i16 %176 to i32
  %188 = shl nuw i32 %187, 16
  %189 = or i32 %188, %186
  %190 = tail call i32 @llvm.bswap.i32(i32 %189) #10
  %191 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i100.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %delay11.i.i100.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %delay11.i.i100.i, align 4
  %195 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %add.ptr.i, align 8
  tail call void %194(ptr noundef %196, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.39, i32 noundef 2, i32 noundef %190) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %197 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %198, i16 768) #10, !srcloc !295
  %199 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %board.i.i, align 4
  %delay.i.i103.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %200, i32 0, i32 1
  %201 = ptrtoint ptr %delay.i.i103.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %delay.i.i103.i, align 4
  %203 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %add.ptr.i, align 8
  tail call void %202(ptr noundef %204, i32 noundef 300) #10
  %205 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %data_reg.i.i, align 4
  %207 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %206) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %208 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i106.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %209, i32 0, i32 1
  %210 = ptrtoint ptr %delay.i3.i106.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %delay.i3.i106.i, align 4
  %212 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %add.ptr.i, align 8
  tail call void %211(ptr noundef %213, i32 noundef 150) #10
  %214 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %data_reg.i.i, align 4
  %216 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %215) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %217 = zext i16 %216 to i32
  %218 = zext i16 %207 to i32
  %219 = shl nuw i32 %218, 16
  %220 = or i32 %219, %217
  %221 = tail call i32 @llvm.bswap.i32(i32 %220) #10
  %222 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i107.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %delay11.i.i107.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %delay11.i.i107.i, align 4
  %226 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %add.ptr.i, align 8
  tail call void %225(ptr noundef %227, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.40, i32 noundef 3, i32 noundef %221) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %228 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %229, i16 1024) #10, !srcloc !295
  %230 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %board.i.i, align 4
  %delay.i.i110.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %231, i32 0, i32 1
  %232 = ptrtoint ptr %delay.i.i110.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %delay.i.i110.i, align 4
  %234 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %add.ptr.i, align 8
  tail call void %233(ptr noundef %235, i32 noundef 300) #10
  %236 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %data_reg.i.i, align 4
  %238 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %237) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %239 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i113.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %240, i32 0, i32 1
  %241 = ptrtoint ptr %delay.i3.i113.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %delay.i3.i113.i, align 4
  %243 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %add.ptr.i, align 8
  tail call void %242(ptr noundef %244, i32 noundef 150) #10
  %245 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %data_reg.i.i, align 4
  %247 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %246) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %248 = zext i16 %247 to i32
  %249 = zext i16 %238 to i32
  %250 = shl nuw i32 %249, 16
  %251 = or i32 %250, %248
  %252 = tail call i32 @llvm.bswap.i32(i32 %251) #10
  %253 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i114.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %254, i32 0, i32 1
  %255 = ptrtoint ptr %delay11.i.i114.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %delay11.i.i114.i, align 4
  %257 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %add.ptr.i, align 8
  tail call void %256(ptr noundef %258, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.41, i32 noundef 4, i32 noundef %252) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %259 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %260, i16 3328) #10, !srcloc !295
  %261 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %board.i.i, align 4
  %delay.i.i117.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %262, i32 0, i32 1
  %263 = ptrtoint ptr %delay.i.i117.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %delay.i.i117.i, align 4
  %265 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %add.ptr.i, align 8
  tail call void %264(ptr noundef %266, i32 noundef 300) #10
  %267 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %data_reg.i.i, align 4
  %269 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %268) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %270 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i120.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %271, i32 0, i32 1
  %272 = ptrtoint ptr %delay.i3.i120.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %delay.i3.i120.i, align 4
  %274 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %add.ptr.i, align 8
  tail call void %273(ptr noundef %275, i32 noundef 150) #10
  %276 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %data_reg.i.i, align 4
  %278 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %277) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %279 = zext i16 %278 to i32
  %280 = zext i16 %269 to i32
  %281 = shl nuw i32 %280, 16
  %282 = or i32 %281, %279
  %283 = tail call i32 @llvm.bswap.i32(i32 %282) #10
  %284 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i121.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %285, i32 0, i32 1
  %286 = ptrtoint ptr %delay11.i.i121.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %delay11.i.i121.i, align 4
  %288 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %add.ptr.i, align 8
  tail call void %287(ptr noundef %289, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.42, i32 noundef 13, i32 noundef %283) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %290 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %291, i16 3584) #10, !srcloc !295
  %292 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %board.i.i, align 4
  %delay.i.i124.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %293, i32 0, i32 1
  %294 = ptrtoint ptr %delay.i.i124.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %delay.i.i124.i, align 4
  %296 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %add.ptr.i, align 8
  tail call void %295(ptr noundef %297, i32 noundef 300) #10
  %298 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %data_reg.i.i, align 4
  %300 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %299) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %301 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i127.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %302, i32 0, i32 1
  %303 = ptrtoint ptr %delay.i3.i127.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %delay.i3.i127.i, align 4
  %305 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %add.ptr.i, align 8
  tail call void %304(ptr noundef %306, i32 noundef 150) #10
  %307 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %data_reg.i.i, align 4
  %309 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %308) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %310 = zext i16 %309 to i32
  %311 = zext i16 %300 to i32
  %312 = shl nuw i32 %311, 16
  %313 = or i32 %312, %310
  %314 = tail call i32 @llvm.bswap.i32(i32 %313) #10
  %315 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i128.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %316, i32 0, i32 1
  %317 = ptrtoint ptr %delay11.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %delay11.i.i128.i, align 4
  %319 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %add.ptr.i, align 8
  tail call void %318(ptr noundef %320, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.43, i32 noundef 14, i32 noundef %314) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %321 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %322, i16 3840) #10, !srcloc !295
  %323 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %board.i.i, align 4
  %delay.i.i131.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %324, i32 0, i32 1
  %325 = ptrtoint ptr %delay.i.i131.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %delay.i.i131.i, align 4
  %327 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %add.ptr.i, align 8
  tail call void %326(ptr noundef %328, i32 noundef 300) #10
  %329 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %data_reg.i.i, align 4
  %331 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %330) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %332 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i134.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %333, i32 0, i32 1
  %334 = ptrtoint ptr %delay.i3.i134.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %delay.i3.i134.i, align 4
  %336 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %add.ptr.i, align 8
  tail call void %335(ptr noundef %337, i32 noundef 150) #10
  %338 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %data_reg.i.i, align 4
  %340 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %339) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %341 = zext i16 %340 to i32
  %342 = zext i16 %331 to i32
  %343 = shl nuw i32 %342, 16
  %344 = or i32 %343, %341
  %345 = tail call i32 @llvm.bswap.i32(i32 %344) #10
  %346 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i135.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %347, i32 0, i32 1
  %348 = ptrtoint ptr %delay11.i.i135.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %delay11.i.i135.i, align 4
  %350 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %add.ptr.i, align 8
  tail call void %349(ptr noundef %351, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.44, i32 noundef 15, i32 noundef %345) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %352 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %353, i16 4352) #10, !srcloc !295
  %354 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %board.i.i, align 4
  %delay.i.i138.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %355, i32 0, i32 1
  %356 = ptrtoint ptr %delay.i.i138.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %delay.i.i138.i, align 4
  %358 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %add.ptr.i, align 8
  tail call void %357(ptr noundef %359, i32 noundef 300) #10
  %360 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %data_reg.i.i, align 4
  %362 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %361) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %363 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i141.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %364, i32 0, i32 1
  %365 = ptrtoint ptr %delay.i3.i141.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %delay.i3.i141.i, align 4
  %367 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %add.ptr.i, align 8
  tail call void %366(ptr noundef %368, i32 noundef 150) #10
  %369 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %data_reg.i.i, align 4
  %371 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %370) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %372 = zext i16 %371 to i32
  %373 = zext i16 %362 to i32
  %374 = shl nuw i32 %373, 16
  %375 = or i32 %374, %372
  %376 = tail call i32 @llvm.bswap.i32(i32 %375) #10
  %377 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i142.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %378, i32 0, i32 1
  %379 = ptrtoint ptr %delay11.i.i142.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %delay11.i.i142.i, align 4
  %381 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %add.ptr.i, align 8
  tail call void %380(ptr noundef %382, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.45, i32 noundef 17, i32 noundef %376) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %383 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %384, i16 4608) #10, !srcloc !295
  %385 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %board.i.i, align 4
  %delay.i.i145.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %386, i32 0, i32 1
  %387 = ptrtoint ptr %delay.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %delay.i.i145.i, align 4
  %389 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %add.ptr.i, align 8
  tail call void %388(ptr noundef %390, i32 noundef 300) #10
  %391 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %data_reg.i.i, align 4
  %393 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %392) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %394 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i148.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %395, i32 0, i32 1
  %396 = ptrtoint ptr %delay.i3.i148.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %delay.i3.i148.i, align 4
  %398 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %add.ptr.i, align 8
  tail call void %397(ptr noundef %399, i32 noundef 150) #10
  %400 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %data_reg.i.i, align 4
  %402 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %401) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %403 = zext i16 %402 to i32
  %404 = zext i16 %393 to i32
  %405 = shl nuw i32 %404, 16
  %406 = or i32 %405, %403
  %407 = tail call i32 @llvm.bswap.i32(i32 %406) #10
  %408 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i149.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %409, i32 0, i32 1
  %410 = ptrtoint ptr %delay11.i.i149.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %delay11.i.i149.i, align 4
  %412 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %add.ptr.i, align 8
  tail call void %411(ptr noundef %413, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.46, i32 noundef 18, i32 noundef %407) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %414 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %415, i16 4864) #10, !srcloc !295
  %416 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %board.i.i, align 4
  %delay.i.i152.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %417, i32 0, i32 1
  %418 = ptrtoint ptr %delay.i.i152.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %delay.i.i152.i, align 4
  %420 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %add.ptr.i, align 8
  tail call void %419(ptr noundef %421, i32 noundef 300) #10
  %422 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %data_reg.i.i, align 4
  %424 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %423) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %425 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i155.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %426, i32 0, i32 1
  %427 = ptrtoint ptr %delay.i3.i155.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %delay.i3.i155.i, align 4
  %429 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %add.ptr.i, align 8
  tail call void %428(ptr noundef %430, i32 noundef 150) #10
  %431 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %data_reg.i.i, align 4
  %433 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %432) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %434 = zext i16 %433 to i32
  %435 = zext i16 %424 to i32
  %436 = shl nuw i32 %435, 16
  %437 = or i32 %436, %434
  %438 = tail call i32 @llvm.bswap.i32(i32 %437) #10
  %439 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i156.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %440, i32 0, i32 1
  %441 = ptrtoint ptr %delay11.i.i156.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %delay11.i.i156.i, align 4
  %443 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %add.ptr.i, align 8
  tail call void %442(ptr noundef %444, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.47, i32 noundef 19, i32 noundef %438) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %445 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %446, i16 5120) #10, !srcloc !295
  %447 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %board.i.i, align 4
  %delay.i.i159.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %448, i32 0, i32 1
  %449 = ptrtoint ptr %delay.i.i159.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %delay.i.i159.i, align 4
  %451 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %add.ptr.i, align 8
  tail call void %450(ptr noundef %452, i32 noundef 300) #10
  %453 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %data_reg.i.i, align 4
  %455 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %454) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %456 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i162.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %457, i32 0, i32 1
  %458 = ptrtoint ptr %delay.i3.i162.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %delay.i3.i162.i, align 4
  %460 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %add.ptr.i, align 8
  tail call void %459(ptr noundef %461, i32 noundef 150) #10
  %462 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %data_reg.i.i, align 4
  %464 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %463) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %465 = zext i16 %464 to i32
  %466 = zext i16 %455 to i32
  %467 = shl nuw i32 %466, 16
  %468 = or i32 %467, %465
  %469 = tail call i32 @llvm.bswap.i32(i32 %468) #10
  %470 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i163.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %471, i32 0, i32 1
  %472 = ptrtoint ptr %delay11.i.i163.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %delay11.i.i163.i, align 4
  %474 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %add.ptr.i, align 8
  tail call void %473(ptr noundef %475, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.48, i32 noundef 20, i32 noundef %469) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %476 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %477, i16 5376) #10, !srcloc !295
  %478 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %board.i.i, align 4
  %delay.i.i166.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %479, i32 0, i32 1
  %480 = ptrtoint ptr %delay.i.i166.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %delay.i.i166.i, align 4
  %482 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %add.ptr.i, align 8
  tail call void %481(ptr noundef %483, i32 noundef 300) #10
  %484 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %data_reg.i.i, align 4
  %486 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %485) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %487 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i169.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %488, i32 0, i32 1
  %489 = ptrtoint ptr %delay.i3.i169.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %delay.i3.i169.i, align 4
  %491 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %add.ptr.i, align 8
  tail call void %490(ptr noundef %492, i32 noundef 150) #10
  %493 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %data_reg.i.i, align 4
  %495 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %494) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %496 = zext i16 %495 to i32
  %497 = zext i16 %486 to i32
  %498 = shl nuw i32 %497, 16
  %499 = or i32 %498, %496
  %500 = tail call i32 @llvm.bswap.i32(i32 %499) #10
  %501 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i170.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %502, i32 0, i32 1
  %503 = ptrtoint ptr %delay11.i.i170.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %delay11.i.i170.i, align 4
  %505 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %add.ptr.i, align 8
  tail call void %504(ptr noundef %506, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.49, i32 noundef 21, i32 noundef %500) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %507 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %508, i16 5632) #10, !srcloc !295
  %509 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %board.i.i, align 4
  %delay.i.i173.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %510, i32 0, i32 1
  %511 = ptrtoint ptr %delay.i.i173.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %delay.i.i173.i, align 4
  %513 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %add.ptr.i, align 8
  tail call void %512(ptr noundef %514, i32 noundef 300) #10
  %515 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %data_reg.i.i, align 4
  %517 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %516) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %518 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i176.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %519, i32 0, i32 1
  %520 = ptrtoint ptr %delay.i3.i176.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %delay.i3.i176.i, align 4
  %522 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %add.ptr.i, align 8
  tail call void %521(ptr noundef %523, i32 noundef 150) #10
  %524 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %data_reg.i.i, align 4
  %526 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %525) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %527 = zext i16 %526 to i32
  %528 = zext i16 %517 to i32
  %529 = shl nuw i32 %528, 16
  %530 = or i32 %529, %527
  %531 = tail call i32 @llvm.bswap.i32(i32 %530) #10
  %532 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %board.i.i, align 4
  %delay11.i.i177.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %533, i32 0, i32 1
  %534 = ptrtoint ptr %delay11.i.i177.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %delay11.i.i177.i, align 4
  %536 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %add.ptr.i, align 8
  tail call void %535(ptr noundef %537, i32 noundef 150) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.50, i32 noundef 22, i32 noundef %531) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %538 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %539, i16 8192) #10, !srcloc !295
  %540 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %board.i.i, align 4
  %delay.i.i180.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %541, i32 0, i32 1
  %542 = ptrtoint ptr %delay.i.i180.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %delay.i.i180.i, align 4
  %544 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %add.ptr.i, align 8
  tail call void %543(ptr noundef %545, i32 noundef 300) #10
  %546 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %data_reg.i.i, align 4
  %548 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %547) #10, !srcloc !297
  %549 = tail call i16 @llvm.bswap.i16(i16 %548) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %550 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i183.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %551, i32 0, i32 1
  %552 = ptrtoint ptr %delay.i3.i183.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %delay.i3.i183.i, align 4
  %554 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %add.ptr.i, align 8
  tail call void %553(ptr noundef %555, i32 noundef 150) #10
  %conv.i96 = zext i16 %549 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.52, i32 noundef 32, i32 noundef %conv.i96) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %556 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %557, i16 8448) #10, !srcloc !295
  %558 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %board.i.i, align 4
  %delay.i.i186.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %559, i32 0, i32 1
  %560 = ptrtoint ptr %delay.i.i186.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %delay.i.i186.i, align 4
  %562 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %add.ptr.i, align 8
  tail call void %561(ptr noundef %563, i32 noundef 300) #10
  %564 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %data_reg.i.i, align 4
  %566 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %565) #10, !srcloc !297
  %567 = tail call i16 @llvm.bswap.i16(i16 %566) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %568 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i189.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %569, i32 0, i32 1
  %570 = ptrtoint ptr %delay.i3.i189.i to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %delay.i3.i189.i, align 4
  %572 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %add.ptr.i, align 8
  tail call void %571(ptr noundef %573, i32 noundef 150) #10
  %conv16.i = zext i16 %567 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.53, i32 noundef 33, i32 noundef %conv16.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %574 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %575, i16 8704) #10, !srcloc !295
  %576 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %board.i.i, align 4
  %delay.i.i192.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %577, i32 0, i32 1
  %578 = ptrtoint ptr %delay.i.i192.i to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %delay.i.i192.i, align 4
  %580 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %add.ptr.i, align 8
  tail call void %579(ptr noundef %581, i32 noundef 300) #10
  %582 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %data_reg.i.i, align 4
  %584 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %583) #10, !srcloc !297
  %585 = tail call i16 @llvm.bswap.i16(i16 %584) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %586 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i195.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %587, i32 0, i32 1
  %588 = ptrtoint ptr %delay.i3.i195.i to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %delay.i3.i195.i, align 4
  %590 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %add.ptr.i, align 8
  tail call void %589(ptr noundef %591, i32 noundef 150) #10
  %conv18.i = zext i16 %585 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.54, i32 noundef 34, i32 noundef %conv18.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %592 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %593, i16 9216) #10, !srcloc !295
  %594 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %board.i.i, align 4
  %delay.i.i198.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %595, i32 0, i32 1
  %596 = ptrtoint ptr %delay.i.i198.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %delay.i.i198.i, align 4
  %598 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %add.ptr.i, align 8
  tail call void %597(ptr noundef %599, i32 noundef 300) #10
  %600 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %data_reg.i.i, align 4
  %602 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %601) #10, !srcloc !297
  %603 = tail call i16 @llvm.bswap.i16(i16 %602) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %604 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i201.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %605, i32 0, i32 1
  %606 = ptrtoint ptr %delay.i3.i201.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %delay.i3.i201.i, align 4
  %608 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %add.ptr.i, align 8
  tail call void %607(ptr noundef %609, i32 noundef 150) #10
  %conv20.i = zext i16 %603 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.55, i32 noundef 36, i32 noundef %conv20.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %610 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %611, i16 9472) #10, !srcloc !295
  %612 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %board.i.i, align 4
  %delay.i.i204.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %613, i32 0, i32 1
  %614 = ptrtoint ptr %delay.i.i204.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %delay.i.i204.i, align 4
  %616 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %add.ptr.i, align 8
  tail call void %615(ptr noundef %617, i32 noundef 300) #10
  %618 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %data_reg.i.i, align 4
  %620 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %619) #10, !srcloc !297
  %621 = tail call i16 @llvm.bswap.i16(i16 %620) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %622 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i207.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %623, i32 0, i32 1
  %624 = ptrtoint ptr %delay.i3.i207.i to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %delay.i3.i207.i, align 4
  %626 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %add.ptr.i, align 8
  tail call void %625(ptr noundef %627, i32 noundef 150) #10
  %conv22.i = zext i16 %621 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.56, i32 noundef 37, i32 noundef %conv22.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %628 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %629, i16 9984) #10, !srcloc !295
  %630 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %board.i.i, align 4
  %delay.i.i210.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %631, i32 0, i32 1
  %632 = ptrtoint ptr %delay.i.i210.i to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %delay.i.i210.i, align 4
  %634 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %add.ptr.i, align 8
  tail call void %633(ptr noundef %635, i32 noundef 300) #10
  %636 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %data_reg.i.i, align 4
  %638 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %637) #10, !srcloc !297
  %639 = tail call i16 @llvm.bswap.i16(i16 %638) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %640 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i213.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %641, i32 0, i32 1
  %642 = ptrtoint ptr %delay.i3.i213.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %delay.i3.i213.i, align 4
  %644 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %add.ptr.i, align 8
  tail call void %643(ptr noundef %645, i32 noundef 150) #10
  %conv24.i = zext i16 %639 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.57, i32 noundef 39, i32 noundef %conv24.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %646 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %647, i16 10240) #10, !srcloc !295
  %648 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %board.i.i, align 4
  %delay.i.i216.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %649, i32 0, i32 1
  %650 = ptrtoint ptr %delay.i.i216.i to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %delay.i.i216.i, align 4
  %652 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %add.ptr.i, align 8
  tail call void %651(ptr noundef %653, i32 noundef 300) #10
  %654 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %data_reg.i.i, align 4
  %656 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %655) #10, !srcloc !297
  %657 = tail call i16 @llvm.bswap.i16(i16 %656) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %658 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i219.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %659, i32 0, i32 1
  %660 = ptrtoint ptr %delay.i3.i219.i to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %delay.i3.i219.i, align 4
  %662 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %add.ptr.i, align 8
  tail call void %661(ptr noundef %663, i32 noundef 150) #10
  %conv26.i = zext i16 %657 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.58, i32 noundef 40, i32 noundef %conv26.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %664 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %665, i16 10752) #10, !srcloc !295
  %666 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %board.i.i, align 4
  %delay.i.i222.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %667, i32 0, i32 1
  %668 = ptrtoint ptr %delay.i.i222.i to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %delay.i.i222.i, align 4
  %670 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %add.ptr.i, align 8
  tail call void %669(ptr noundef %671, i32 noundef 300) #10
  %672 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %data_reg.i.i, align 4
  %674 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %673) #10, !srcloc !297
  %675 = tail call i16 @llvm.bswap.i16(i16 %674) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %676 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i225.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %677, i32 0, i32 1
  %678 = ptrtoint ptr %delay.i3.i225.i to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %delay.i3.i225.i, align 4
  %680 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %add.ptr.i, align 8
  tail call void %679(ptr noundef %681, i32 noundef 150) #10
  %conv28.i = zext i16 %675 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.59, i32 noundef 42, i32 noundef %conv28.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %682 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %683, i16 11008) #10, !srcloc !295
  %684 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %board.i.i, align 4
  %delay.i.i228.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %685, i32 0, i32 1
  %686 = ptrtoint ptr %delay.i.i228.i to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %delay.i.i228.i, align 4
  %688 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %add.ptr.i, align 8
  tail call void %687(ptr noundef %689, i32 noundef 300) #10
  %690 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %data_reg.i.i, align 4
  %692 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %691) #10, !srcloc !297
  %693 = tail call i16 @llvm.bswap.i16(i16 %692) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %694 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i231.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %695, i32 0, i32 1
  %696 = ptrtoint ptr %delay.i3.i231.i to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %delay.i3.i231.i, align 4
  %698 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load ptr, ptr %add.ptr.i, align 8
  tail call void %697(ptr noundef %699, i32 noundef 150) #10
  %conv30.i = zext i16 %693 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.60, i32 noundef 43, i32 noundef %conv30.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %700 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %701, i16 11264) #10, !srcloc !295
  %702 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %board.i.i, align 4
  %delay.i.i234.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %703, i32 0, i32 1
  %704 = ptrtoint ptr %delay.i.i234.i to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %delay.i.i234.i, align 4
  %706 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %add.ptr.i, align 8
  tail call void %705(ptr noundef %707, i32 noundef 300) #10
  %708 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %data_reg.i.i, align 4
  %710 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %709) #10, !srcloc !297
  %711 = tail call i16 @llvm.bswap.i16(i16 %710) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %712 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i237.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %713, i32 0, i32 1
  %714 = ptrtoint ptr %delay.i3.i237.i to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load ptr, ptr %delay.i3.i237.i, align 4
  %716 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load ptr, ptr %add.ptr.i, align 8
  tail call void %715(ptr noundef %717, i32 noundef 150) #10
  %conv32.i = zext i16 %711 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.61, i32 noundef 44, i32 noundef %conv32.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %718 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %719, i16 11520) #10, !srcloc !295
  %720 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %board.i.i, align 4
  %delay.i.i240.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %721, i32 0, i32 1
  %722 = ptrtoint ptr %delay.i.i240.i to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load ptr, ptr %delay.i.i240.i, align 4
  %724 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load ptr, ptr %add.ptr.i, align 8
  tail call void %723(ptr noundef %725, i32 noundef 300) #10
  %726 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %data_reg.i.i, align 4
  %728 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %727) #10, !srcloc !297
  %729 = tail call i16 @llvm.bswap.i16(i16 %728) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %730 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i243.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %731, i32 0, i32 1
  %732 = ptrtoint ptr %delay.i3.i243.i to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load ptr, ptr %delay.i3.i243.i, align 4
  %734 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load ptr, ptr %add.ptr.i, align 8
  tail call void %733(ptr noundef %735, i32 noundef 150) #10
  %conv34.i = zext i16 %729 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.62, i32 noundef 45, i32 noundef %conv34.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void @arm_heavy_mb() #10
  %736 = ptrtoint ptr %addr_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load ptr, ptr %addr_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %737, i16 11776) #10, !srcloc !295
  %738 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %board.i.i, align 4
  %delay.i.i246.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %739, i32 0, i32 1
  %740 = ptrtoint ptr %delay.i.i246.i to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %delay.i.i246.i, align 4
  %742 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %add.ptr.i, align 8
  tail call void %741(ptr noundef %743, i32 noundef 300) #10
  %744 = ptrtoint ptr %data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load ptr, ptr %data_reg.i.i, align 4
  %746 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %745) #10, !srcloc !297
  %747 = tail call i16 @llvm.bswap.i16(i16 %746) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %748 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load ptr, ptr %board.i.i, align 4
  %delay.i3.i249.i = getelementptr inbounds %struct.isp116x_platform_data, ptr %749, i32 0, i32 1
  %750 = ptrtoint ptr %delay.i3.i249.i to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load ptr, ptr %delay.i3.i249.i, align 4
  %752 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load ptr, ptr %add.ptr.i, align 8
  tail call void %751(ptr noundef %753, i32 noundef 150) #10
  %conv36.i = zext i16 %747 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.63, i32 noundef 46, i32 noundef %conv36.i) #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.str.103.sink = phi ptr [ @.str.103, %if.end7 ], [ @.str.97, %entry.cleanup_crit_edge ], [ @.str.98, %if.end.cleanup_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull %.str.103.sink) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !142, !143, !144, !145, !147, !148, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !215, !217, !219, !220, !222, !223, !225, !226, !227, !229, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !283}
!llvm.module.flags = !{!285, !286, !287, !288, !289, !290, !291, !292}
!llvm.ident = !{!293}

!0 = !{ptr @__UNIQUE_ID_description284, !1, !"__UNIQUE_ID_description284", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 80, i32 1}
!2 = !{ptr @__UNIQUE_ID_file285, !3, !"__UNIQUE_ID_file285", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 81, i32 1}
!4 = !{ptr @__UNIQUE_ID_license286, !3, !"__UNIQUE_ID_license286", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_alias321, !6, !"__UNIQUE_ID_alias321", i1 false, i1 false}
!6 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1683, i32 1}
!7 = !{ptr @__initcall__kmod_isp116x_hcd__322_1695_isp116x_driver_init6, !8, !"__initcall__kmod_isp116x_hcd__322_1695_isp116x_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1695, i32 1}
!9 = !{ptr @__exitcall_isp116x_driver_exit, !8, !"__exitcall_isp116x_driver_exit", i1 false, i1 false}
!10 = !{ptr @isp116x_driver, !11, !"isp116x_driver", i1 false, i1 false}
!11 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1685, i32 31}
!12 = !{ptr @isp116x_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1614, i32 2}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1619, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @isp116x_probe._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @isp116x_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1624, i32 3}
!23 = !{ptr @isp116x_probe._entry.4, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @isp116x_probe._entry_ptr.6, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1626, i32 3}
!27 = !{ptr @isp116x_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @isp116x_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1652, i32 2}
!31 = !{ptr @isp116x_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @isp116x_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1506, i32 18}
!35 = !{ptr @isp116x_hc_driver, !36, !"isp116x_hc_driver", i1 false, i1 false}
!36 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1504, i32 31}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 611, i32 4}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @isp116x_irq._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @isp116x_irq._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 626, i32 4}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @isp116x_irq.__UNIQUE_ID_ddebug292, !43, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 376, i32 5}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @postproc_atl_queue.__UNIQUE_ID_ddebug288, !47, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 435, i32 6}
!52 = !{ptr @postproc_atl_queue.__UNIQUE_ID_ddebug289, !51, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!53 = !{ptr @cc_to_error, !54, !"cc_to_error", i1 false, i1 false}
!54 = !{!"../drivers/usb/host/isp116x.h", i32 231, i32 18}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 323, i32 2}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @finish_request.__UNIQUE_ID_ddebug287, !56, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 270, i32 4}
!61 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @preproc_atl_queue._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @preproc_atl_queue._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1268, i32 3}
!66 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @isp116x_reset._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @isp116x_reset._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1271, i32 3}
!71 = !{ptr @isp116x_reset._entry.27, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @isp116x_reset._entry_ptr.29, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1240, i32 3}
!75 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @isp116x_sw_reset._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @isp116x_sw_reset._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1315, i32 3}
!80 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @isp116x_start._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @isp116x_start._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/host/isp116x.h", i32 503, i32 2}
!85 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug232, !84, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!88 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug234, !84, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!90 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug236, !84, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!92 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug238, !84, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!94 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug240, !84, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!96 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug242, !84, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!98 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug244, !84, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!100 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug246, !84, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!102 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug248, !84, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!104 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug250, !84, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!106 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug252, !84, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!108 = !{ptr @.str.47, !84, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug254, !84, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!110 = !{ptr @.str.48, !84, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug256, !84, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!112 = !{ptr @.str.49, !84, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug258, !84, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!114 = !{ptr @.str.50, !84, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.51, !84, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug261, !84, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!117 = !{ptr @.str.52, !84, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug263, !84, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!119 = !{ptr @.str.53, !84, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug265, !84, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!121 = !{ptr @.str.54, !84, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug267, !84, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!123 = !{ptr @.str.55, !84, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug269, !84, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!125 = !{ptr @.str.56, !84, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug271, !84, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!127 = !{ptr @.str.57, !84, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug273, !84, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!129 = !{ptr @.str.58, !84, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug275, !84, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!131 = !{ptr @.str.59, !84, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug277, !84, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!133 = !{ptr @.str.60, !84, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug279, !84, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!135 = !{ptr @.str.61, !84, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug281, !84, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!137 = !{ptr @.str.62, !84, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @isp116x_show_regs_log.__UNIQUE_ID_ddebug283, !84, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!139 = !{ptr @.str.63, !84, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 700, i32 3}
!142 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @isp116x_urb_enqueue._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @isp116x_urb_enqueue._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 795, i32 3}
!147 = !{ptr @isp116x_urb_enqueue.__UNIQUE_ID_ddebug295, !146, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!148 = !{ptr @.str.67, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!150 = !{ptr @.str.68, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 887, i32 3}
!152 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @isp116x_endpoint_disable._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @isp116x_endpoint_disable._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1015, i32 3}
!157 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @isp116x_hub_control.__UNIQUE_ID_ddebug296, !156, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!159 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1018, i32 4}
!161 = !{ptr @isp116x_hub_control.__UNIQUE_ID_ddebug297, !160, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!162 = !{ptr @.str.73, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1024, i32 4}
!164 = !{ptr @isp116x_hub_control.__UNIQUE_ID_ddebug298, !163, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!165 = !{ptr @.str.74, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1031, i32 3}
!167 = !{ptr @isp116x_hub_control.__UNIQUE_ID_ddebug299, !166, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!168 = !{ptr @.str.75, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1035, i32 4}
!170 = !{ptr @isp116x_hub_control.__UNIQUE_ID_ddebug300, !169, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!171 = !{ptr @.str.76, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1042, i32 3}
!173 = !{ptr @isp116x_hub_control.__UNIQUE_ID_ddebug301, !172, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!174 = !{ptr @.str.77, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1047, i32 3}
!176 = !{ptr @isp116x_hub_control.__UNIQUE_ID_ddebug302, !175, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!177 = !{ptr @.str.78, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1051, i32 3}
!179 = !{ptr @isp116x_hub_control.__UNIQUE_ID_ddebug303, !178, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!180 = !{ptr @.str.79, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1058, i32 3}
!182 = !{ptr @isp116x_hub_control.__UNIQUE_ID_ddebug304, !181, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!183 = !{ptr @.str.80, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1061, i32 3}
!185 = !{ptr @isp116x_hub_control.__UNIQUE_ID_ddebug305, !184, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!186 = !{ptr @.str.81, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1068, i32 4}
!188 = !{ptr @isp116x_hub_control.__UNIQUE_ID_ddebug306, !187, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!189 = !{ptr @.str.82, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1072, i32 4}
!191 = !{ptr @isp116x_hub_control.__UNIQUE_ID_ddebug307, !190, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!192 = !{ptr @.str.83, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1076, i32 4}
!194 = !{ptr @isp116x_hub_control.__UNIQUE_ID_ddebug308, !193, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!195 = !{ptr @.str.84, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1080, i32 4}
!197 = !{ptr @isp116x_hub_control.__UNIQUE_ID_ddebug309, !196, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!198 = !{ptr @.str.85, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1084, i32 4}
!200 = !{ptr @isp116x_hub_control.__UNIQUE_ID_ddebug310, !199, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!201 = !{ptr @.str.86, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1088, i32 4}
!203 = !{ptr @isp116x_hub_control.__UNIQUE_ID_ddebug311, !202, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!204 = !{ptr @.str.87, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1092, i32 4}
!206 = !{ptr @isp116x_hub_control.__UNIQUE_ID_ddebug312, !205, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!207 = !{ptr @.str.88, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1096, i32 4}
!209 = !{ptr @isp116x_hub_control.__UNIQUE_ID_ddebug313, !208, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!210 = !{ptr @.str.89, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1108, i32 3}
!212 = !{ptr @isp116x_hub_control.__UNIQUE_ID_ddebug314, !211, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!213 = !{ptr @isp116x_hub_control.__UNIQUE_ID_ddebug315, !214, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!214 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1114, i32 4}
!215 = !{ptr @isp116x_hub_control.__UNIQUE_ID_ddebug316, !216, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!216 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1121, i32 4}
!217 = !{ptr @.str.90, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1128, i32 4}
!219 = !{ptr @isp116x_hub_control.__UNIQUE_ID_ddebug317, !218, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!220 = !{ptr @.str.91, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1139, i32 3}
!222 = !{ptr @isp116x_hub_control.__UNIQUE_ID_ddebug318, !221, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!223 = !{ptr @.str.92, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1459, i32 3}
!225 = !{ptr @.str.93, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @isp116x_bus_resume.__UNIQUE_ID_ddebug319, !224, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!227 = !{ptr @.str.94, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1477, i32 3}
!229 = !{ptr @isp116x_bus_resume.__UNIQUE_ID_ddebug320, !228, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!230 = !{ptr @isp116x_debug_fops, !231, !"isp116x_debug_fops", i1 false, i1 false}
!231 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1199, i32 1}
!232 = !{ptr @.str.95, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1175, i32 16}
!234 = !{ptr @.str.96, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1177, i32 6}
!236 = !{ptr @.str.97, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1180, i32 17}
!238 = !{ptr @.str.98, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1184, i32 17}
!240 = !{ptr @.str.99, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1189, i32 14}
!242 = !{ptr @.str.100, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1190, i32 14}
!244 = !{ptr @.str.101, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1191, i32 14}
!246 = !{ptr @.str.102, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1192, i32 14}
!248 = !{ptr @.str.103, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1195, i32 16}
!250 = !{ptr @.str.104, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1151, i32 16}
!252 = !{ptr @.str.105, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1152, i32 30}
!254 = !{ptr @.str.106, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1152, i32 42}
!256 = !{ptr @.str.107, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1153, i32 28}
!258 = !{ptr @.str.108, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1154, i32 27}
!260 = !{ptr @.str.109, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1155, i32 30}
!262 = !{ptr @.str.110, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1156, i32 27}
!264 = !{ptr @.str.111, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1157, i32 27}
!266 = !{ptr @.str.112, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1162, i32 16}
!268 = !{ptr @.str.113, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1163, i32 25}
!270 = !{ptr @.str.114, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1164, i32 26}
!272 = !{ptr @.str.115, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1165, i32 25}
!274 = !{ptr @.str.116, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1166, i32 24}
!276 = !{ptr @.str.117, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1167, i32 24}
!278 = !{ptr @.str.118, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 1168, i32 55}
!280 = !{ptr @.str.119, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/usb/host/isp116x.h", i32 495, i32 2}
!282 = !{ptr @.str.120, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @hcd_name, !284, !"hcd_name", i1 false, i1 false}
!284 = !{!"../drivers/usb/host/isp116x-hcd.c", i32 83, i32 19}
!285 = !{i32 1, !"wchar_size", i32 2}
!286 = !{i32 1, !"min_enum_size", i32 4}
!287 = !{i32 8, !"branch-target-enforcement", i32 0}
!288 = !{i32 8, !"sign-return-address", i32 0}
!289 = !{i32 8, !"sign-return-address-all", i32 0}
!290 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!291 = !{i32 7, !"uwtable", i32 1}
!292 = !{i32 7, !"frame-pointer", i32 2}
!293 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!294 = !{i64 2154045110}
!295 = !{i64 5992702}
!296 = !{i64 2154045772}
!297 = !{i64 5992902}
!298 = !{i64 2154046950}
!299 = !{i64 2148382147, i64 2148382173, i64 2148382202, i64 2148382236, i64 2148382267, i64 2148382290}
!300 = !{!"branch_weights", i32 2000, i32 1}
!301 = !{i64 2154219564, i64 2154220059, i64 2154219601, i64 2154219657, i64 2154219691, i64 2154219715, i64 2154219756, i64 2154219777, i64 2154219805, i64 2154219839}
!302 = !{i64 2148384612, i64 2148384638, i64 2148384667, i64 2148384701, i64 2148384732, i64 2148384755}
!303 = !{i64 2154049125}
!304 = !{i64 2154049694}
!305 = !{i64 2154047689}
!306 = !{i64 2154048194}
!307 = !{i64 2148995524, i64 2148995529, i64 2148995542, i64 2148995586, i64 2148995620, i64 2148995641}
!308 = !{!"branch_weights", i32 1, i32 2000}
!309 = !{i64 2154248403, i64 2154248898, i64 2154248440, i64 2154248496, i64 2154248530, i64 2154248554, i64 2154248595, i64 2154248616, i64 2154248644, i64 2154248678}
!310 = !{i64 2154221217, i64 2154221712, i64 2154221254, i64 2154221310, i64 2154221344, i64 2154221368, i64 2154221409, i64 2154221430, i64 2154221458, i64 2154221492}
!311 = !{i64 2154225868, i64 2154226363, i64 2154225905, i64 2154225961, i64 2154225995, i64 2154226019, i64 2154226060, i64 2154226081, i64 2154226109, i64 2154226143}
!312 = !{i64 2154217666, i64 2154218161, i64 2154217703, i64 2154217759, i64 2154217793, i64 2154217817, i64 2154217858, i64 2154217879, i64 2154217907, i64 2154217941}
!313 = !{i64 2154230890, i64 2154231385, i64 2154230927, i64 2154230983, i64 2154231017, i64 2154231041, i64 2154231082, i64 2154231103, i64 2154231131, i64 2154231165}
!314 = !{i64 2154240323, i64 2154240818, i64 2154240360, i64 2154240416, i64 2154240450, i64 2154240474, i64 2154240515, i64 2154240536, i64 2154240564, i64 2154240598}
