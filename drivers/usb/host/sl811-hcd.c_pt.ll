; ModuleID = '/llk/IR_all_yes/drivers/usb/host/sl811-hcd.c_pt.bc'
source_filename = "../drivers/usb/host/sl811-hcd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sl811h_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_sl811h_driver\09\09\09\09"
module asm "\09.long\09__crc_sl811h_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sl811h_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22sl811h_driver\22\09\09\09\09\09"
module asm "__kstrtabns_sl811h_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.sl811 = type { %struct.spinlock, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, i16, %struct.list_head, [32 x i16], [32 x ptr], i32 }
%struct.sl811_platform_data = type { i8, i8, i8, ptr, ptr }
%struct.sl811h_ep = type { ptr, ptr, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, ptr, %struct.list_head }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
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

@__UNIQUE_ID_description232 = internal constant [57 x i8] c"sl811_hcd.description=SL811HS USB Host Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [42 x i8] c"sl811_hcd.file=drivers/usb/host/sl811-hcd\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [22 x i8] c"sl811_hcd.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias235 = internal constant [35 x i8] c"sl811_hcd.alias=platform:sl811-hcd\00", section ".modinfo", align 1
@hcd_name = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sl811-hcd\00", [22 x i8] zeroinitializer }, align 32
@sl811h_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sl811h_probe, ptr @sl811h_remove, ptr null, ptr @sl811h_suspend, ptr @sl811h_resume, %struct.device_driver { ptr @hcd_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_sl811h_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_sl811h_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_sl811h_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sl811h_driver to i32), ptr @__kstrtab_sl811h_driver, ptr @__kstrtabns_sl811h_driver }, section "___ksymtab+sl811h_driver", align 4
@__initcall__kmod_sl811_hcd__262_1796_sl811h_driver_init6 = internal global ptr @sl811h_driver_init, section ".initcall6.init", align 4
@__exitcall_sl811h_driver_exit = internal global ptr @sl811h_driver_exit, section ".exitcall.exit", align 4
@sl811h_hc_driver = internal constant { %struct.hc_driver, [40 x i8] } { %struct.hc_driver { ptr @hcd_name, ptr null, i32 372, ptr @sl811h_irq, i32 17, ptr null, ptr @sl811h_start, ptr null, ptr null, ptr @sl811h_stop, ptr null, ptr @sl811h_get_frame, ptr @sl811h_urb_enqueue, ptr @sl811h_urb_dequeue, ptr null, ptr null, ptr @sl811h_endpoint_disable, ptr null, ptr @sl811h_hub_status_data, ptr @sl811h_hub_control, ptr @sl811h_bus_suspend, ptr @sl811h_bus_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sl811h_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&sl811->lock\00", [19 x i8] zeroinitializer }, align 32
@sl811h_probe.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(&sl811->timer)\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SL811HS v1.2\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SL811HS v1.5\00", [19 x i8] zeroinitializer }, align 32
@sl811h_probe.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 1, i8 -89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sl811_hcd\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sl811h_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/host/sl811-hcd.c\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"chiprev %02x\0A\00", [18 x i8] zeroinitializer }, align 32
@sl811h_probe.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, i8 1, i8 -81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"init error, %d\0A\00", [16 x i8] zeroinitializer }, align 32
@sl811h_irq.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.10, ptr @.str.7, ptr @.str.11, i8 0, i8 -74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sl811h_irq\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wakeup\0A\00", [24 x i8] zeroinitializer }, align 32
@finish_request.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.7, ptr @.str.13, i8 0, i8 112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"finish_request\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"deschedule qh%d/%p branch %d\0A\00", [34 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@start.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.14, ptr @.str.7, ptr @.str.15, i8 0, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"empty %p queue?\0A\00", [47 x i8] zeroinitializer }, align 32
@start.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.14, ptr @.str.7, ptr @.str.16, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bad ep%p pid %02x\0A\00", [45 x i8] zeroinitializer }, align 32
@sofirq_on.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.17, ptr @.str.7, ptr @.str.18, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sofirq_on\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sof irq on\0A\00", [20 x i8] zeroinitializer }, align 32
@sofirq_off.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.19, ptr @.str.7, ptr @.str.20, i8 0, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sofirq_off\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sof irq off\0A\00", [19 x i8] zeroinitializer }, align 32
@sl811h_urb_enqueue.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.21, ptr @.str.7, ptr @.str.22, i8 0, i8 -41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sl811h_urb_enqueue\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dev %d ep%d maxpacket %d\0A\00", [38 x i8] zeroinitializer }, align 32
@sl811h_urb_enqueue.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.21, ptr @.str.7, ptr @.str.23, i8 0, i8 -25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"schedule qh%d/%p branch %d\0A\00", [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/usb.h\00", [44 x i8] zeroinitializer }, align 32
@sl811h_urb_dequeue.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.25, ptr @.str.7, ptr @.str.26, i8 0, i8 -9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sl811h_urb_dequeue\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"giveup on DONE_A: ctrl %02x sts %02x\0A\00", [58 x i8] zeroinitializer }, align 32
@sl811h_urb_dequeue.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.25, ptr @.str.7, ptr @.str.27, i8 0, i8 -1, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dequeue, urb %p active %s; wait4irq\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@sl811h_endpoint_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.7, i32 1040, ptr @.str.32, ptr @.str.33 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ep %p not empty?\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sl811h_endpoint_disable\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sl811h_endpoint_disable._entry_ptr = internal global ptr @sl811h_endpoint_disable._entry, section ".printk_index", align 4
@sl811h_hub_control.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.34, ptr @.str.7, ptr @.str.35, i8 1, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sl811h_hub_control\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"start resume...\0A\00", [47 x i8] zeroinitializer }, align 32
@sl811h_hub_control.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.34, ptr @.str.7, ptr @.str.36, i8 1, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GetPortStatus %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@sl811h_hub_control.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.34, ptr @.str.7, ptr @.str.37, i8 1, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"suspend...\0A\00", [20 x i8] zeroinitializer }, align 32
@sl811h_bus_suspend.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.38, ptr @.str.7, ptr @.str.39, i8 1, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sl811h_bus_suspend\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@sl811h_bus_resume.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.40, ptr @.str.7, ptr @.str.39, i8 1, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sl811h_bus_resume\00", [46 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sl811h_timer.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.41, ptr @.str.7, ptr @.str.42, i8 1, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sl811h_timer\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"end reset\0A\00", [21 x i8] zeroinitializer }, align 32
@sl811h_timer.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.41, ptr @.str.7, ptr @.str.43, i8 1, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"end resume\0A\00", [20 x i8] zeroinitializer }, align 32
@sl811h_timer.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.41, ptr @.str.7, ptr @.str.44, i8 1, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"odd timer signaling: %02x\0A\00", [37 x i8] zeroinitializer }, align 32
@port_power.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.45, ptr @.str.7, ptr @.str.46, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"port_power\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"power %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sl811h\00", [25 x i8] zeroinitializer }, align 32
@usb_debug_root = external dso_local local_unnamed_addr global ptr, align 4
@sl811h_debug_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sl811h_debug_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s\0A%s version %s\0Aportstatus[1] = %08x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"19 May 2005\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"insert/remove: %ld\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"current session:  done_a %ld done_b %ld wake %ld sof %ld overrun %ld lost %ld\0A\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(suspended)\0A\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ctrl1 %02x%s%s%s%s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" sofgen\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" se0/reset\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" k/resume\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"j\00", [30 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" lowspeed\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" suspend\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"irq_enable\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"irq_status\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"frame clocks remaining:  %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"A: qh%p ctl %02x sts %02x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"B: qh%p ctl %02x sts %02x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s%sqh%p, ep%d%s, maxpacket %d nak %d err %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"(A) \00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"(B) \00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"setup\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  urb%p, %d/%d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"periodic size= %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%2d [%3d]:\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"   %s%sqh%d/%p (%sdev%d ep%d%s max %d) err %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ls \00", [28 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s %02x%s%s%s%s%s%s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" done_a\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" done_b\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" sof\00", [27 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" ins/rmv\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" rd\00", [28 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" dp\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.89 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 24]
@__sancov_gen_cov_switch_values.91 = internal global [6 x i64] [i64 4, i64 8, i64 45, i64 105, i64 210, i64 225]
@__sancov_gen_cov_switch_values.92 = internal global [9 x i64] [i64 7, i64 16, i64 8193, i64 8195, i64 8961, i64 8963, i64 40960, i64 40966, i64 41728]
@__sancov_gen_cov_switch_values.93 = internal global [10 x i64] [i64 8, i64 16, i64 1, i64 2, i64 8, i64 16, i64 17, i64 18, i64 19, i64 20]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 16, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.95 = internal global [6 x i64] [i64 4, i64 8, i64 45, i64 105, i64 210, i64 225]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 8, i64 24]
@__sancov_gen_cov_switch_values.97 = internal global [6 x i64] [i64 4, i64 8, i64 45, i64 105, i64 210, i64 225]
@___asan_gen_.98 = private unnamed_addr constant [9 x i8] c"hcd_name\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 74, i32 19 }
@___asan_gen_.101 = private unnamed_addr constant [14 x i8] c"sl811h_driver\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1784, i32 24 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"sl811h_hc_driver\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1545, i32 31 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1671, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1674, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1686, i32 23 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1689, i32 23 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1693, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1726, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 729, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 450, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 339, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 393, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 283, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 291, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 858, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 924, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1981, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 984, i32 5 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1018, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1040, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1255, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1292, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1305, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1350, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1358, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1143, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1152, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1156, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 100, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1498, i32 22 }
@___asan_gen_.263 = private unnamed_addr constant [18 x i8] c"sl811h_debug_fops\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1493, i32 1 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1389, i32 16 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1391, i32 13 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1394, i32 16 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1395, i32 16 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1404, i32 17 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1408, i32 17 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1409, i32 35 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1409, i32 47 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1412, i32 33 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1413, i32 31 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1414, i32 17 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1416, i32 32 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1417, i32 35 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1419, i32 15 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1421, i32 15 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1423, i32 17 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1427, i32 16 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1430, i32 16 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1433, i32 16 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1437, i32 17 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1439, i32 30 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1440, i32 30 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1443, i32 25 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1444, i32 26 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1445, i32 28 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1446, i32 26 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1447, i32 17 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1452, i32 18 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1460, i32 16 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1466, i32 17 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1471, i32 5 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1477, i32 13 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1374, i32 16 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1375, i32 35 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1376, i32 35 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1377, i32 36 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1378, i32 35 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1379, i32 31 }
@___asan_gen_.380 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.381 = private constant [32 x i8] c"../drivers/usb/host/sl811-hcd.c\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1380, i32 31 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @__UNIQUE_ID_alias235, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_sl811h_driver_exit, ptr @__initcall__kmod_sl811_hcd__262_1796_sl811h_driver_init6, ptr @__ksymtab_sl811h_driver, ptr @sl811h_driver_exit, ptr @sl811h_endpoint_disable._entry, ptr @sl811h_endpoint_disable._entry_ptr, ptr @hcd_name, ptr @sl811h_driver, ptr @sl811h_hc_driver, ptr @sl811h_probe.__key, ptr @.str, ptr @sl811h_probe.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @sl811h_debug_fops, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcd_name to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl811h_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl811h_hc_driver to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl811h_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl811h_probe.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl811h_endpoint_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl811h_debug_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl811h_probe(ptr noundef %dev) #0 align 64 {
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
  %call2 = tail call ptr @platform_get_mem_or_io(ptr noundef %dev, i32 noundef 0) #10
  %call3 = tail call ptr @platform_get_mem_or_io(ptr noundef %dev, i32 noundef 1) #10
  %tobool4.not = icmp eq ptr %call2, null
  %tobool5.not = icmp eq ptr %call3, null
  %or.cond = select i1 %tobool4.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %lor.lhs.false6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false6:                                   ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.resource, ptr %call2, i32 0, i32 3
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %flags.i162 = getelementptr inbounds %struct.resource, ptr %call3, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i162 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i162, align 4
  %4 = xor i32 %3, %1
  %5 = and i32 %4, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end10, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false6
  %call11 = tail call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 1024, i32 noundef 0) #10
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 6
  %6 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_resources, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp12 = icmp ult i32 %7, 3
  %tobool14.not = icmp eq ptr %call11, null
  %or.cond158 = select i1 %cmp12, i1 true, i1 %tobool14.not
  br i1 %or.cond158, label %if.end10.cleanup_crit_edge, label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %8 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call11, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %call11, i32 0, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 15
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %and.i165 = and i32 %13, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and.i165)
  %cmp18 = icmp eq i32 %and.i165, 256
  %14 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call2, align 4
  br i1 %cmp18, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %16 = inttoptr i32 %15 to ptr
  %17 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call3, align 4
  %19 = inttoptr i32 %18 to ptr
  br label %if.end36

if.else:                                          ; preds = %if.end16
  %call25 = tail call ptr @ioremap(i32 noundef %15, i32 noundef 1) #10
  %cmp26 = icmp eq ptr %call25, null
  br i1 %cmp26, label %if.else.do.body84_crit_edge, label %if.end29

if.else.do.body84_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body84

if.end29:                                         ; preds = %if.else
  %20 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call3, align 4
  %call31 = tail call ptr @ioremap(i32 noundef %21, i32 noundef 1) #10
  %cmp32 = icmp eq ptr %call31, null
  br i1 %cmp32, label %if.end29.if.then82_crit_edge, label %if.end29.if.end36_crit_edge

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end29.if.then82_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then82

if.end36:                                         ; preds = %if.end29.if.end36_crit_edge, %if.then21
  %addr_reg.0 = phi ptr [ %16, %if.then21 ], [ %call25, %if.end29.if.end36_crit_edge ]
  %data_reg.0 = phi ptr [ %19, %if.then21 ], [ %call31, %if.end29.if.end36_crit_edge ]
  %dev37 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end36.dev_name.exit_crit_edge

if.end36.dev_name.exit_crit_edge:                 ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev37, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end36.dev_name.exit_crit_edge
  %retval.0.i166 = phi ptr [ %25, %if.end.i ], [ %23, %if.end36.dev_name.exit_crit_edge ]
  %call40 = tail call ptr @usb_create_hcd(ptr noundef nonnull @sl811h_hc_driver, ptr noundef %dev37, ptr noundef %retval.0.i166) #10
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %dev_name.exit.err5_crit_edge, label %if.end43

dev_name.exit.err5_crit_edge:                     ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err5

if.end43:                                         ; preds = %dev_name.exit
  %26 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call2, align 4
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %call40, i32 0, i32 17
  %28 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %rsrc_start, align 8
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %call40, i32 0, i32 30
  tail call void @__raw_spin_lock_init(ptr noundef %hcd_priv.i, ptr noundef nonnull @.str, ptr noundef nonnull @sl811h_probe.__key, i16 noundef signext 3) #10
  %async = getelementptr inbounds %struct.usb_hcd, ptr %call40, i32 1, i32 1
  %29 = ptrtoint ptr %async to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %async, ptr %async, align 4
  %prev.i = getelementptr inbounds %struct.usb_hcd, ptr %call40, i32 1, i32 2
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %async, ptr %prev.i, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %31 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %platform_data.i, align 8
  %board = getelementptr inbounds %struct.usb_hcd, ptr %call40, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %33 = ptrtoint ptr %board to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %board, align 4
  %timer = getelementptr inbounds %struct.usb_hcd, ptr %call40, i32 1, i32 0, i32 9, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @sl811h_timer, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @sl811h_probe.__key.1) #10
  %addr_reg52 = getelementptr inbounds %struct.usb_hcd, ptr %call40, i32 1, i32 0, i32 9, i32 1, i32 3
  %34 = ptrtoint ptr %addr_reg52 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %addr_reg.0, ptr %addr_reg52, align 4
  %data_reg53 = getelementptr inbounds %struct.usb_hcd, ptr %call40, i32 1, i32 0, i32 9, i32 1, i32 4
  %35 = ptrtoint ptr %data_reg53 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %data_reg.0, ptr %data_reg53, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %hcd_priv.i) #10
  tail call fastcc void @port_power(ptr noundef %hcd_priv.i, i32 noundef 0)
  tail call void @_raw_spin_unlock_irq(ptr noundef %hcd_priv.i) #10
  tail call void @msleep(i32 noundef 200) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  tail call void @arm_heavy_mb() #10
  %36 = ptrtoint ptr %addr_reg52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %addr_reg52, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %37, i8 14) #10, !srcloc !210
  %38 = ptrtoint ptr %data_reg53 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data_reg53, align 4
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %39) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  %conv57 = zext i8 %40 to i32
  %41 = lshr i32 %conv57, 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i32 %41, label %do.body60 [
    i32 1, label %if.end43.sw.epilog_crit_edge
    i32 2, label %sw.bb58
  ]

if.end43.sw.epilog_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body60:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl811h_probe.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl811h_probe, %if.then66)) #10
          to label %err6 [label %if.then66], !srcloc !213

if.then66:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sl811h_probe.__UNIQUE_ID_ddebug260, ptr noundef %dev37, ptr noundef nonnull @.str.8, i32 noundef %conv57) #10
  br label %err6

sw.epilog:                                        ; preds = %sw.bb58, %if.end43.sw.epilog_crit_edge
  %.str.4.sink = phi ptr [ @.str.4, %sw.bb58 ], [ @.str.3, %if.end43.sw.epilog_crit_edge ]
  %product_desc59 = getelementptr inbounds %struct.usb_hcd, ptr %call40, i32 0, i32 2
  %43 = ptrtoint ptr %product_desc59 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %.str.4.sink, ptr %product_desc59, align 4
  %or = or i32 %and, 128
  %call72 = tail call i32 @usb_add_hcd(ptr noundef nonnull %call40, i32 noundef %9, i32 noundef %or) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73.not = icmp eq i32 %call72, 0
  br i1 %cmp73.not, label %if.end76, label %sw.epilog.err6_crit_edge

sw.epilog.err6_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %err6

if.end76:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %call40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call40, align 8
  %call77 = tail call i32 @device_wakeup_enable(ptr noundef %45) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usb_debug_root to i32))
  %46 = load ptr, ptr @usb_debug_root, align 4
  %call.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.49, i16 noundef zeroext 292, ptr noundef %46, ptr noundef %hcd_priv.i, ptr noundef nonnull @sl811h_debug_fops) #10
  br label %cleanup

err6:                                             ; preds = %sw.epilog.err6_crit_edge, %if.then66, %do.body60
  %retval1.0 = phi i32 [ %call72, %sw.epilog.err6_crit_edge ], [ -6, %if.then66 ], [ -6, %do.body60 ]
  tail call void @usb_put_hcd(ptr noundef nonnull %call40) #10
  br label %err5

err5:                                             ; preds = %err6, %dev_name.exit.err5_crit_edge
  %retval1.1 = phi i32 [ %retval1.0, %err6 ], [ -12, %dev_name.exit.err5_crit_edge ]
  br i1 %cmp18, label %err5.do.body84_crit_edge, label %if.then79

err5.do.body84_crit_edge:                         ; preds = %err5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body84

if.then79:                                        ; preds = %err5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef %data_reg.0) #10
  br label %if.then82

if.then82:                                        ; preds = %if.then79, %if.end29.if.then82_crit_edge
  %addr_reg.1.ph = phi ptr [ %call25, %if.end29.if.then82_crit_edge ], [ %addr_reg.0, %if.then79 ]
  %retval1.2.ph = phi i32 [ -12, %if.end29.if.then82_crit_edge ], [ %retval1.1, %if.then79 ]
  tail call void @iounmap(ptr noundef %addr_reg.1.ph) #10
  br label %do.body84

do.body84:                                        ; preds = %if.then82, %err5.do.body84_crit_edge, %if.else.do.body84_crit_edge
  %retval1.3 = phi i32 [ %retval1.2.ph, %if.then82 ], [ -12, %if.else.do.body84_crit_edge ], [ %retval1.1, %err5.do.body84_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl811h_probe.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl811h_probe, %if.then96)) #10
          to label %cleanup [label %if.then96], !srcloc !213

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #12
  %dev97 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sl811h_probe.__UNIQUE_ID_ddebug261, ptr noundef %dev97, ptr noundef nonnull @.str.9, i32 noundef %retval1.3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then96, %do.body84, %if.end76, %if.end10.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end76 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %lor.lhs.false6.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end10.cleanup_crit_edge ], [ %retval1.3, %if.then96 ], [ %retval1.3, %do.body84 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl811h_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usb_debug_root to i32))
  %2 = load ptr, ptr @usb_debug_root, align 4
  %call.i = tail call ptr @debugfs_lookup(ptr noundef nonnull @.str.49, ptr noundef %2) #10
  tail call void @debugfs_remove(ptr noundef %call.i) #10
  tail call void @usb_remove_hcd(ptr noundef %1) #10
  %call2 = tail call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 512, i32 noundef 1) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %data_reg = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 1, i32 0, i32 9, i32 1, i32 4
  %3 = ptrtoint ptr %data_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data_reg, align 4
  tail call void @iounmap(ptr noundef %4) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 512, i32 noundef 0) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %addr_reg = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 1, i32 0, i32 9, i32 1, i32 3
  %5 = ptrtoint ptr %addr_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %addr_reg, align 4
  tail call void @iounmap(ptr noundef %6) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  tail call void @usb_put_hcd(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl811h_suspend(ptr nocapture noundef readonly %dev, [1 x i32] %state.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state.coerce.fca.0.extract = extractvalue [1 x i32] %state.coerce, 0
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = zext i32 %state.coerce.fca.0.extract to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %state.coerce.fca.0.extract, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %entry.sw.bb4_crit_edge
    i32 4, label %entry.sw.bb4_crit_edge6
    i32 8, label %entry.sw.bb4_crit_edge7
  ]

entry.sw.bb4_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

entry.sw.bb4_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl811h_bus_suspend.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl811h_suspend, %if.then.i)) #10
          to label %sw.epilog [label %if.then.i], !srcloc !213

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sl811h_bus_suspend.__UNIQUE_ID_ddebug258, ptr noundef %4, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38) #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge6, %entry.sw.bb4_crit_edge7
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 30
  tail call fastcc void @port_power(ptr noundef %hcd_priv.i, i32 noundef 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %if.then.i, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl811h_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 30
  %port1 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 1, i32 0, i32 16
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %root_hub = getelementptr inbounds %struct.usb_bus, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %root_hub to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root_hub, align 8
  %can_wakeup.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15, i32 12, i32 1
  %6 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %7 = ptrtoint ptr %port1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %port1, align 4
  tail call fastcc void @port_power(ptr noundef %hcd_priv.i, i32 noundef 1)
  %root_hub6 = getelementptr inbounds %struct.usb_bus, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %root_hub6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %root_hub6, align 8
  tail call void @usb_root_hub_lost_power(ptr noundef %9) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl811h_bus_resume.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl811h_resume, %if.then.i)) #10
          to label %cleanup [label %if.then.i], !srcloc !213

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sl811h_bus_resume.__UNIQUE_ID_ddebug259, ptr noundef %11, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end, %if.then
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sl811h_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sl811h_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sl811h_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @sl811h_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_mem_or_io(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sl811h_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -84
  %ctrl1 = getelementptr i8, ptr %t, i32 76
  %0 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctrl1, align 4
  %2 = and i8 %1, 24
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #10
  %3 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ctrl1, align 4
  %5 = and i8 %4, -25
  store i8 %5, ptr %ctrl1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %addr_reg.i = getelementptr i8, ptr %t, i32 -40
  %6 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 5) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %data_reg.i = getelementptr i8, ptr %t, i32 -36
  %8 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 %5) #10, !srcloc !210
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 644244) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %12, i8 13) #10, !srcloc !210
  %13 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data_reg.i, align 4
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %14) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  %conv14 = zext i8 %2 to i32
  %16 = zext i32 %conv14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %conv14, label %do.body54 [
    i32 8, label %do.body15
    i32 24, label %do.body33
  ]

do.body15:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl811h_timer.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl811h_timer, %if.then)) #10
          to label %do.end22 [label %if.then], !srcloc !213

if.then:                                          ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %t, i32 -684
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sl811h_timer.__UNIQUE_ID_ddebug252, ptr noundef %18, ptr noundef nonnull @.str.42) #10
  br label %do.end22

do.end22:                                         ; preds = %if.then, %do.body15
  %port1 = getelementptr i8, ptr %t, i32 72
  %19 = ptrtoint ptr %port1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1048832, ptr %port1, align 4
  %20 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %ctrl1, align 4
  %21 = and i8 %15, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool26.not = icmp eq i8 %21, 0
  %and29 = and i8 %15, -65
  %spec.select = select i1 %tobool26.not, i8 %15, i8 %and29
  br label %sw.epilog

do.body33:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl811h_timer.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl811h_timer, %if.then45)) #10
          to label %do.end51 [label %if.then45], !srcloc !213

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i185 = getelementptr i8, ptr %t, i32 -684
  %22 = ptrtoint ptr %add.ptr.i185 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i185, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sl811h_timer.__UNIQUE_ID_ddebug253, ptr noundef %23, ptr noundef nonnull @.str.43) #10
  br label %do.end51

do.end51:                                         ; preds = %if.then45, %do.body33
  %port152 = getelementptr i8, ptr %t, i32 72
  %24 = ptrtoint ptr %port152 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port152, align 4
  %and53 = and i32 %25, -5
  store i32 %and53, ptr %port152, align 4
  br label %sw.epilog

do.body54:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl811h_timer.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl811h_timer, %if.then66)) #10
          to label %sw.epilog [label %if.then66], !srcloc !213

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i186 = getelementptr i8, ptr %t, i32 -684
  %26 = ptrtoint ptr %add.ptr.i186 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i186, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sl811h_timer.__UNIQUE_ID_ddebug254, ptr noundef %27, ptr noundef nonnull @.str.44, i32 noundef %conv14) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then66, %do.body54, %do.end51, %do.end22
  %irqstat.0 = phi i8 [ %15, %if.then66 ], [ %15, %do.end51 ], [ %spec.select, %do.end22 ], [ %15, %do.body54 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %28 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %29, i8 13) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %30 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %31, i8 %irqstat.0) #10, !srcloc !210
  %conv74 = zext i8 %irqstat.0 to i32
  %and75 = and i32 %conv74, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  %port186 = getelementptr i8, ptr %t, i32 72
  %32 = ptrtoint ptr %port186 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port186, align 4
  br i1 %tobool76.not, label %if.else, label %if.then77

if.then77:                                        ; preds = %sw.epilog
  %and79 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.then77.if.end83_crit_edge, label %if.then81

if.then77.if.end83_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then81:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %33, 196608
  %34 = ptrtoint ptr %port186 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or, ptr %port186, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.then77.if.end83_crit_edge
  %35 = ptrtoint ptr %port186 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port186, align 4
  %and85 = and i32 %36, -516
  br label %if.end96

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %or87 = or i32 %33, 515
  %and89 = and i32 %conv74, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  %and93 = and i32 %or87, -513
  %spec.select176 = select i1 %tobool90.not, i32 %or87, i32 %and93
  br label %if.end96

if.end96:                                         ; preds = %if.else, %if.end83
  %spec.select176.sink = phi i32 [ %spec.select176, %if.else ], [ %and85, %if.end83 ]
  %.sink = phi i8 [ 96, %if.else ], [ 32, %if.end83 ]
  %37 = ptrtoint ptr %port186 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %spec.select176.sink, ptr %port186, align 4
  %irq_enable95 = getelementptr i8, ptr %t, i32 78
  %38 = ptrtoint ptr %irq_enable95 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %.sink, ptr %irq_enable95, align 2
  %and98 = and i32 %spec.select176.sink, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.else128, label %if.then100

if.then100:                                       ; preds = %if.end96
  %irq_enable101 = getelementptr i8, ptr %t, i32 78
  %39 = ptrtoint ptr %irq_enable101 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %irq_enable101, align 2
  %41 = or i8 %40, 1
  store i8 %41, ptr %irq_enable101, align 2
  %and106 = and i32 %spec.select176.sink, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.then100.if.end116_crit_edge, label %if.then108

if.then100.if.end116_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.then108:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ctrl1, align 4
  %44 = or i8 %43, 32
  store i8 %44, ptr %ctrl1, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then108, %if.then100.if.end116_crit_edge
  %ctrl2.0 = phi i8 [ -18, %if.then108 ], [ -82, %if.then100.if.end116_crit_edge ]
  %45 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ctrl1, align 4
  %47 = or i8 %46, 1
  store i8 %47, ptr %ctrl1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %48 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %49, i8 14) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %50 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %51, i8 -32) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %52 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %53, i8 15) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %54 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %55, i8 %ctrl2.0) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %56 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %57, i8 2) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %58 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %59, i8 0) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !216
  tail call void @arm_heavy_mb() #10
  %60 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %61, i8 80) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @arm_heavy_mb() #10
  %62 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %63, i8 0) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %64 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %65, i8 0) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %66 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %67, i8 1) #10, !srcloc !210
  br label %if.end130

if.else128:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %ctrl1, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.else128, %if.end116
  %69 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %ctrl1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %71 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %72, i8 5) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %73 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %74, i8 %70) #10, !srcloc !210
  %irq_enable132 = getelementptr i8, ptr %t, i32 78
  %75 = ptrtoint ptr %irq_enable132 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %irq_enable132, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %77 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %78, i8 6) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %79 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %80, i8 %76) #10, !srcloc !210
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @port_power(ptr noundef %sl811, i32 noundef %is_on) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sl811, i32 -600
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool.not = icmp eq i32 %is_on, 0
  %port14 = getelementptr inbounds %struct.sl811, ptr %sl811, i32 0, i32 18
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %port14 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port14, align 4
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %port14 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 256, ptr %port14, align 4
  %irq_enable = getelementptr inbounds %struct.sl811, ptr %sl811, i32 0, i32 21
  %3 = ptrtoint ptr %irq_enable to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 32, ptr %irq_enable, align 2
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %port14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %port14, align 4
  %irq_enable5 = getelementptr inbounds %struct.sl811, ptr %sl811, i32 0, i32 21
  %5 = ptrtoint ptr %irq_enable5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %irq_enable5, align 2
  %state = getelementptr i8, ptr %sl811, i32 -12
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %state, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end
  %ctrl1 = getelementptr inbounds %struct.sl811, ptr %sl811, i32 0, i32 19
  %7 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %ctrl1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %addr_reg.i = getelementptr inbounds %struct.sl811, ptr %sl811, i32 0, i32 1
  %8 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 6) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %data_reg.i = getelementptr inbounds %struct.sl811, ptr %sl811, i32 0, i32 2
  %10 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 0) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 13) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 -1) #10, !srcloc !210
  %board = getelementptr inbounds %struct.sl811, ptr %sl811, i32 0, i32 3
  %16 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %board, align 4
  %tobool7.not = icmp eq ptr %17, null
  br i1 %tobool7.not, label %if.end6.if.else33_crit_edge, label %land.lhs.true

if.end6.if.else33_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else33

land.lhs.true:                                    ; preds = %if.end6
  %port_power = getelementptr inbounds %struct.sl811_platform_data, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %port_power to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port_power, align 4
  %tobool9.not = icmp eq ptr %19, null
  br i1 %tobool9.not, label %land.lhs.true.if.end22_crit_edge, label %do.body

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @port_power.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@port_power, %if.then15)) #10
          to label %do.end [label %if.then15], !srcloc !213

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %cond = select i1 %tobool.not, ptr @.str.48, ptr @.str.47
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @port_power.__UNIQUE_ID_ddebug236, ptr noundef %21, ptr noundef nonnull @.str.46, ptr noundef nonnull %cond) #10
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  %22 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %board, align 4
  %port_power19 = getelementptr inbounds %struct.sl811_platform_data, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %port_power19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %port_power19, align 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 8
  tail call void %25(ptr noundef %27, i32 noundef %is_on) #10
  br label %if.end22

if.end22:                                         ; preds = %do.end, %land.lhs.true.if.end22_crit_edge
  %28 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load ptr, ptr %board, align 4
  %tobool24.not = icmp eq ptr %.pr, null
  br i1 %tobool24.not, label %if.end22.if.else33_crit_edge, label %land.lhs.true25

if.end22.if.else33_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else33

land.lhs.true25:                                  ; preds = %if.end22
  %reset = getelementptr inbounds %struct.sl811_platform_data, ptr %.pr, i32 0, i32 4
  %29 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reset, align 4
  %tobool27.not = icmp eq ptr %30, null
  br i1 %tobool27.not, label %land.lhs.true25.if.else33_crit_edge, label %if.then28

land.lhs.true25.if.else33_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else33

if.then28:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 8
  tail call void %30(ptr noundef %32) #10
  br label %if.end35

if.else33:                                        ; preds = %land.lhs.true25.if.else33_crit_edge, %if.end22.if.else33_crit_edge, %if.end6.if.else33_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %33 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %34, i8 5) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %35 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %36, i8 8) #10, !srcloc !210
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #10
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.then28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %57 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %58, i8 6) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %59 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %60, i8 0) #10, !srcloc !210
  %61 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %ctrl1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %63 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %64, i8 5) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %65 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %66, i8 %62) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %67 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %68, i8 15) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %69 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %70, i8 -82) #10, !srcloc !210
  %irq_enable37 = getelementptr inbounds %struct.sl811, ptr %sl811, i32 0, i32 21
  %71 = ptrtoint ptr %irq_enable37 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %irq_enable37, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %73 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %74, i8 6) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %75 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %76, i8 %72) #10, !srcloc !210
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @sl811_read(ptr nocapture noundef readonly %sl811, i32 noundef %reg) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  tail call void @arm_heavy_mb() #10
  %conv = trunc i32 %reg to i8
  %addr_reg = getelementptr inbounds %struct.sl811, ptr %sl811, i32 0, i32 1
  %0 = ptrtoint ptr %addr_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr_reg, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 %conv) #10, !srcloc !210
  %data_reg = getelementptr inbounds %struct.sl811, ptr %sl811, i32 0, i32 2
  %2 = ptrtoint ptr %data_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_reg, align 4
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  ret i8 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl811h_irq(ptr noundef %hcd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  tail call void @_raw_spin_lock(ptr noundef %hcd_priv.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  tail call void @arm_heavy_mb() #10
  %addr_reg.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %0 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 13) #10, !srcloc !210
  %data_reg.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4
  %2 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_reg.i, align 4
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  %5 = and i8 %4, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not202 = icmp eq i8 %5, 0
  br i1 %tobool.not202, label %entry.if.end94_crit_edge, label %if.end.lr.ph

entry.if.end94_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.end.lr.ph:                                     ; preds = %entry
  %irq_enable = getelementptr inbounds %struct.sl811, ptr %hcd_priv.i, i32 0, i32 21
  %active_a = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 12
  %stat_a = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 6
  %frame = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 18
  %stat_sof = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 3
  %next_periodic = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 10, i32 0, i32 3
  %stat_overrun = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 3
  %stat_insrmv = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1, i32 1
  %stat_wake = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 2
  %ctrl1 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 17
  %port1 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 16
  %jiffies_a.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 13
  br label %if.end

retry:                                            ; preds = %if.end90
  %dec = add nsw i32 %retries.0203, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 13) #10, !srcloc !210
  %8 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data_reg.i, align 4
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  %11 = and i8 %10, 127
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %retry.if.end94_crit_edge, label %retry.if.end_crit_edge

retry.if.end_crit_edge:                           ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

retry.if.end94_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.end:                                           ; preds = %retry.if.end_crit_edge, %if.end.lr.ph
  %12 = phi i8 [ %5, %if.end.lr.ph ], [ %11, %retry.if.end_crit_edge ]
  %ret.0204 = phi i32 [ 0, %if.end.lr.ph ], [ 1, %retry.if.end_crit_edge ]
  %retries.0203 = phi i32 [ 5, %if.end.lr.ph ], [ %dec, %retry.if.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 13) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %15 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %16, i8 %12) #10, !srcloc !210
  %17 = ptrtoint ptr %irq_enable to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %irq_enable, align 2
  %and5159 = and i8 %18, %12
  %conv7 = zext i8 %and5159 to i32
  %and8 = and i32 %conv7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end12_crit_edge, label %if.then10

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %if.end
  %19 = ptrtoint ptr %active_a to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %active_a, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.then10.done.exit_crit_edge, label %if.end.i, !prof !218

if.then10.done.exit_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.exit

if.end.i:                                         ; preds = %if.then10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 3) #10, !srcloc !210
  %23 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data_reg.i, align 4
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %24) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %20, align 4
  %urb_list.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %urb_list.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %urb_list.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 -20
  %conv4.i = zext i8 %25 to i32
  %and.i = and i32 %conv4.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  %period.i = getelementptr inbounds %struct.sl811h_ep, ptr %20, i32 0, i32 9
  %30 = ptrtoint ptr %period.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %period.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool7.not.i = icmp eq i16 %31, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.then6.i.if.end9.i_crit_edge

if.then6.i.if.end9.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  %nak_count.i = getelementptr inbounds %struct.sl811h_ep, ptr %20, i32 0, i32 7
  %32 = ptrtoint ptr %nak_count.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %nak_count.i, align 2
  %inc.i = add i16 %33, 1
  store i16 %inc.i, ptr %nak_count.i, align 2
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.then6.i.if.end9.i_crit_edge
  %error_count.i = getelementptr inbounds %struct.sl811h_ep, ptr %20, i32 0, i32 6
  %34 = ptrtoint ptr %error_count.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %error_count.i, align 4
  br label %lor.lhs.false155.i

if.else.i:                                        ; preds = %if.end.i
  %and11.i = and i32 %conv4.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.else119.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.else.i
  %dev.i = getelementptr i8, ptr %29, i32 20
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  %error_count14.i = getelementptr inbounds %struct.sl811h_ep, ptr %20, i32 0, i32 6
  %37 = ptrtoint ptr %error_count14.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %error_count14.i, align 4
  %nak_count15.i = getelementptr inbounds %struct.sl811h_ep, ptr %20, i32 0, i32 7
  %38 = ptrtoint ptr %nak_count15.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %nak_count15.i, align 2
  %nextpid.i = getelementptr inbounds %struct.sl811h_ep, ptr %20, i32 0, i32 5
  %39 = ptrtoint ptr %nextpid.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %nextpid.i, align 1
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.91)
  switch i8 %40, label %if.then13.i.lor.lhs.false155.i_crit_edge [
    i8 -31, label %sw.bb.i
    i8 105, label %sw.bb40.i
    i8 45, label %sw.bb90.i
    i8 -46, label %if.then13.i.if.then157.i_crit_edge
  ]

if.then13.i.if.then157.i_crit_edge:               ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then157.i

if.then13.i.lor.lhs.false155.i_crit_edge:         ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false155.i

sw.bb.i:                                          ; preds = %if.then13.i
  %length.i = getelementptr inbounds %struct.sl811h_ep, ptr %20, i32 0, i32 8
  %42 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %length.i, align 4
  %conv17.i = zext i16 %43 to i32
  %actual_length.i = getelementptr i8, ptr %29, i32 68
  %44 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %actual_length.i, align 4
  %add18.i = add i32 %45, %conv17.i
  store i32 %add18.i, ptr %actual_length.i, align 4
  %epnum.i = getelementptr inbounds %struct.sl811h_ep, ptr %20, i32 0, i32 4
  %46 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %epnum.i, align 2
  %conv19.i = zext i8 %47 to i32
  %shl.i = shl nuw i32 1, %conv19.i
  %arrayidx.i = getelementptr %struct.usb_device, ptr %36, i32 0, i32 10, i32 1
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i, align 4
  %xor.i = xor i32 %shl.i, %49
  store i32 %xor.i, ptr %arrayidx.i, align 4
  %50 = load i32, ptr %actual_length.i, align 4
  %transfer_buffer_length.i = getelementptr i8, ptr %29, i32 64
  %51 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %transfer_buffer_length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp.i = icmp eq i32 %50, %52
  br i1 %cmp.i, label %if.then22.i, label %sw.bb.i.lor.lhs.false155.i_crit_edge

sw.bb.i.lor.lhs.false155.i_crit_edge:             ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false155.i

if.then22.i:                                      ; preds = %sw.bb.i
  %pipe.i = getelementptr i8, ptr %29, i32 28
  %53 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pipe.i, align 4
  %shr.mask.i = and i32 %54, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr.mask.i)
  %cmp24.i = icmp eq i32 %shr.mask.i, -2147483648
  br i1 %cmp24.i, label %if.then26.i, label %if.else28.i

if.then26.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %nextpid.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -46, ptr %nextpid.i, align 1
  br label %lor.lhs.false155.i

if.else28.i:                                      ; preds = %if.then22.i
  %56 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %length.i, align 4
  %maxpacket.i = getelementptr inbounds %struct.sl811h_ep, ptr %20, i32 0, i32 3
  %58 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %maxpacket.i, align 1
  %60 = zext i8 %59 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %57, i16 %60)
  %cmp32.i = icmp ult i16 %57, %60
  br i1 %cmp32.i, label %if.else28.i.if.then157.i_crit_edge, label %lor.lhs.false.i

if.else28.i.if.then157.i_crit_edge:               ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then157.i

lor.lhs.false.i:                                  ; preds = %if.else28.i
  %transfer_flags.i = getelementptr i8, ptr %29, i32 40
  %61 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %transfer_flags.i, align 4
  %and34.i = and i32 %62, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %lor.lhs.false.i.if.then157.i_crit_edge, label %lor.lhs.false.i.lor.lhs.false155.i_crit_edge

lor.lhs.false.i.lor.lhs.false155.i_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false155.i

lor.lhs.false.i.if.then157.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then157.i

sw.bb40.i:                                        ; preds = %if.then13.i
  %transfer_buffer.i = getelementptr i8, ptr %29, i32 44
  %63 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %transfer_buffer.i, align 4
  %actual_length41.i = getelementptr i8, ptr %29, i32 68
  %65 = ptrtoint ptr %actual_length41.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %actual_length41.i, align 4
  %add.ptr42.i = getelementptr i8, ptr %64, i32 %66
  tail call void @llvm.prefetch.p0(ptr %add.ptr42.i, i32 1, i32 3, i32 1) #10
  %maxpacket43.i = getelementptr inbounds %struct.sl811h_ep, ptr %20, i32 0, i32 3
  %67 = ptrtoint ptr %maxpacket43.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %maxpacket43.i, align 1
  %conv44.i = zext i8 %68 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  tail call void @arm_heavy_mb() #10
  %69 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %70, i8 4) #10, !srcloc !210
  %71 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data_reg.i, align 4
  %73 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %72) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  %conv48.i = zext i8 %73 to i32
  %sub.i = sub nsw i32 %conv44.i, %conv48.i
  %length49.i = getelementptr inbounds %struct.sl811h_ep, ptr %20, i32 0, i32 8
  %74 = ptrtoint ptr %length49.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %length49.i, align 4
  %conv50.i = zext i16 %75 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv50.i)
  %cmp51.i = icmp sgt i32 %sub.i, %conv50.i
  %76 = tail call i32 @llvm.smin.i32(i32 %sub.i, i32 %conv50.i) #10
  %77 = ptrtoint ptr %actual_length41.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %actual_length41.i, align 4
  %add58.i = add i32 %76, %78
  store i32 %add58.i, ptr %actual_length41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i.i = icmp eq i32 %76, 0
  br i1 %tobool.not.i.i, label %sw.bb40.i.sl811_read_buf.exit.i_crit_edge, label %do.body.i.i

sw.bb40.i.sl811_read_buf.exit.i_crit_edge:        ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sl811_read_buf.exit.i

do.body.i.i:                                      ; preds = %sw.bb40.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %79 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %80, i8 16) #10, !srcloc !210
  %81 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data_reg.i, align 4
  br label %do.body2.i.i

do.body2.i.i:                                     ; preds = %do.body2.i.i.do.body2.i.i_crit_edge, %do.body.i.i
  %data.0.i.i = phi ptr [ %add.ptr42.i, %do.body.i.i ], [ %incdec.ptr.i.i, %do.body2.i.i.do.body2.i.i_crit_edge ]
  %count.addr.0.i.i = phi i32 [ %76, %do.body.i.i ], [ %dec.i.i, %do.body2.i.i.do.body2.i.i_crit_edge ]
  %83 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %82) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !220
  %incdec.ptr.i.i = getelementptr i8, ptr %data.0.i.i, i32 1
  %84 = ptrtoint ptr %data.0.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %data.0.i.i, align 1
  %dec.i.i = add i32 %count.addr.0.i.i, -1
  %tobool5.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool5.not.i.i, label %do.body2.i.i.sl811_read_buf.exit.i_crit_edge, label %do.body2.i.i.do.body2.i.i_crit_edge

do.body2.i.i.do.body2.i.i_crit_edge:              ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i.i

do.body2.i.i.sl811_read_buf.exit.i_crit_edge:     ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sl811_read_buf.exit.i

sl811_read_buf.exit.i:                            ; preds = %do.body2.i.i.sl811_read_buf.exit.i_crit_edge, %sw.bb40.i.sl811_read_buf.exit.i_crit_edge
  %epnum62.i = getelementptr inbounds %struct.sl811h_ep, ptr %20, i32 0, i32 4
  %85 = ptrtoint ptr %epnum62.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %epnum62.i, align 2
  %conv63.i = zext i8 %86 to i32
  %shl64.i = shl nuw i32 1, %conv63.i
  %toggle65.i = getelementptr inbounds %struct.usb_device, ptr %36, i32 0, i32 10
  %87 = ptrtoint ptr %toggle65.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %toggle65.i, align 4
  %xor67.i = xor i32 %shl64.i, %88
  store i32 %xor67.i, ptr %toggle65.i, align 4
  br i1 %cmp51.i, label %sl811_read_buf.exit.i.if.then157.i_crit_edge, label %land.lhs.true.i

sl811_read_buf.exit.i.if.then157.i_crit_edge:     ; preds = %sl811_read_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then157.i

land.lhs.true.i:                                  ; preds = %sl811_read_buf.exit.i
  %89 = ptrtoint ptr %maxpacket43.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %maxpacket43.i, align 1
  %conv71.i = zext i8 %90 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %conv71.i)
  %cmp72.i = icmp slt i32 %76, %conv71.i
  br i1 %cmp72.i, label %land.lhs.true.i.if.then79.i_crit_edge, label %lor.lhs.false74.i

land.lhs.true.i.if.then79.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then79.i

lor.lhs.false74.i:                                ; preds = %land.lhs.true.i
  %91 = ptrtoint ptr %actual_length41.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %actual_length41.i, align 4
  %transfer_buffer_length76.i = getelementptr i8, ptr %29, i32 64
  %93 = ptrtoint ptr %transfer_buffer_length76.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %transfer_buffer_length76.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %94)
  %cmp77.i = icmp eq i32 %92, %94
  br i1 %cmp77.i, label %lor.lhs.false74.i.if.then79.i_crit_edge, label %lor.lhs.false74.i.lor.lhs.false155.i_crit_edge

lor.lhs.false74.i.lor.lhs.false155.i_crit_edge:   ; preds = %lor.lhs.false74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false155.i

lor.lhs.false74.i.if.then79.i_crit_edge:          ; preds = %lor.lhs.false74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then79.i

if.then79.i:                                      ; preds = %lor.lhs.false74.i.if.then79.i_crit_edge, %land.lhs.true.i.if.then79.i_crit_edge
  %pipe80.i = getelementptr i8, ptr %29, i32 28
  %95 = ptrtoint ptr %pipe80.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %pipe80.i, align 4
  %shr81.mask.i = and i32 %96, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr81.mask.i)
  %cmp83.i = icmp eq i32 %shr81.mask.i, -2147483648
  br i1 %cmp83.i, label %if.then85.i, label %if.then79.i.if.then157.i_crit_edge

if.then79.i.if.then157.i_crit_edge:               ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then157.i

if.then85.i:                                      ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %nextpid.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -46, ptr %nextpid.i, align 1
  br label %lor.lhs.false155.i

sw.bb90.i:                                        ; preds = %if.then13.i
  %transfer_buffer_length91.i = getelementptr i8, ptr %29, i32 64
  %98 = ptrtoint ptr %transfer_buffer_length91.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %transfer_buffer_length91.i, align 4
  %actual_length92.i = getelementptr i8, ptr %29, i32 68
  %100 = ptrtoint ptr %actual_length92.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %actual_length92.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %101)
  %cmp93.i = icmp eq i32 %99, %101
  br i1 %cmp93.i, label %if.then95.i, label %if.else97.i

if.then95.i:                                      ; preds = %sw.bb90.i
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %nextpid.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 -46, ptr %nextpid.i, align 1
  br label %lor.lhs.false155.i

if.else97.i:                                      ; preds = %sw.bb90.i
  %pipe98.i = getelementptr i8, ptr %29, i32 28
  %103 = ptrtoint ptr %pipe98.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %pipe98.i, align 4
  %and99.i = and i32 %104, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99.i)
  %tobool100.not.i = icmp eq i32 %and99.i, 0
  br i1 %tobool100.not.i, label %if.then101.i, label %if.else108.i

if.then101.i:                                     ; preds = %if.else97.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx103.i = getelementptr %struct.usb_device, ptr %36, i32 0, i32 10, i32 1
  %105 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx103.i, align 4
  %or.i = or i32 %106, 1
  store i32 %or.i, ptr %arrayidx103.i, align 4
  %107 = ptrtoint ptr %nextpid.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 -31, ptr %nextpid.i, align 1
  br label %lor.lhs.false155.i

if.else108.i:                                     ; preds = %if.else97.i
  call void @__sanitizer_cov_trace_pc() #12
  %toggle109.i = getelementptr inbounds %struct.usb_device, ptr %36, i32 0, i32 10
  %108 = ptrtoint ptr %toggle109.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %toggle109.i, align 4
  %or112.i = or i32 %109, 1
  store i32 %or112.i, ptr %toggle109.i, align 4
  %110 = ptrtoint ptr %nextpid.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 105, ptr %nextpid.i, align 1
  br label %lor.lhs.false155.i

if.else119.i:                                     ; preds = %if.else.i
  %and121.i = and i32 %conv4.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121.i)
  %tobool122.not.i = icmp eq i32 %and121.i, 0
  %error_count127.i = getelementptr inbounds %struct.sl811h_ep, ptr %20, i32 0, i32 6
  br i1 %tobool122.not.i, label %if.else126.i, label %do.end.i

do.end.i:                                         ; preds = %if.else119.i
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %error_count127.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 0, ptr %error_count127.i, align 4
  %nak_count125.i = getelementptr inbounds %struct.sl811h_ep, ptr %20, i32 0, i32 7
  %112 = ptrtoint ptr %nak_count125.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 0, ptr %nak_count125.i, align 2
  br label %if.then157.i

if.else126.i:                                     ; preds = %if.else119.i
  %113 = ptrtoint ptr %error_count127.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %error_count127.i, align 4
  %inc128.i = add i16 %114, 1
  store i16 %inc128.i, ptr %error_count127.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %inc128.i)
  %cmp130.i = icmp ugt i16 %inc128.i, 2
  br i1 %cmp130.i, label %if.then132.i, label %if.else126.i.lor.lhs.false155.i_crit_edge

if.else126.i.lor.lhs.false155.i_crit_edge:        ; preds = %if.else126.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false155.i

if.then132.i:                                     ; preds = %if.else126.i
  call void @__sanitizer_cov_trace_pc() #12
  %and134.i = and i32 %conv4.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134.i)
  %tobool135.not.i = icmp eq i32 %and134.i, 0
  %and139.i = and i32 %conv4.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139.i)
  %tobool140.not.i = icmp eq i32 %and139.i, 0
  %..i = select i1 %tobool140.not.i, i32 -71, i32 -75
  %urbstat.2.i = select i1 %tobool135.not.i, i32 %..i, i32 -62
  %115 = ptrtoint ptr %error_count127.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 0, ptr %error_count127.i, align 4
  br label %if.then157.i

lor.lhs.false155.i:                               ; preds = %if.else126.i.lor.lhs.false155.i_crit_edge, %if.else108.i, %if.then101.i, %if.then95.i, %if.then85.i, %lor.lhs.false74.i.lor.lhs.false155.i_crit_edge, %lor.lhs.false.i.lor.lhs.false155.i_crit_edge, %if.then26.i, %sw.bb.i.lor.lhs.false155.i_crit_edge, %if.then13.i.lor.lhs.false155.i_crit_edge, %if.end9.i
  %unlinked.i = getelementptr i8, ptr %29, i32 -16
  %116 = ptrtoint ptr %unlinked.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %unlinked.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool156.not.i = icmp eq i32 %117, 0
  br i1 %tobool156.not.i, label %lor.lhs.false155.i.done.exit_crit_edge, label %lor.lhs.false155.i.if.then157.i_crit_edge

lor.lhs.false155.i.if.then157.i_crit_edge:        ; preds = %lor.lhs.false155.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then157.i

lor.lhs.false155.i.done.exit_crit_edge:           ; preds = %lor.lhs.false155.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.exit

if.then157.i:                                     ; preds = %lor.lhs.false155.i.if.then157.i_crit_edge, %if.then132.i, %do.end.i, %if.then79.i.if.then157.i_crit_edge, %sl811_read_buf.exit.i.if.then157.i_crit_edge, %lor.lhs.false.i.if.then157.i_crit_edge, %if.else28.i.if.then157.i_crit_edge, %if.then13.i.if.then157.i_crit_edge
  %urbstat.37.i = phi i32 [ -115, %lor.lhs.false155.i.if.then157.i_crit_edge ], [ 0, %if.then79.i.if.then157.i_crit_edge ], [ %urbstat.2.i, %if.then132.i ], [ -32, %do.end.i ], [ 0, %lor.lhs.false.i.if.then157.i_crit_edge ], [ 0, %if.else28.i.if.then157.i_crit_edge ], [ 0, %if.then13.i.if.then157.i_crit_edge ], [ -75, %sl811_read_buf.exit.i.if.then157.i_crit_edge ]
  tail call fastcc void @finish_request(ptr noundef %hcd_priv.i, ptr noundef nonnull %20, ptr noundef %add.ptr.i, i32 noundef %urbstat.37.i) #10
  br label %done.exit

done.exit:                                        ; preds = %if.then157.i, %lor.lhs.false155.i.done.exit_crit_edge, %if.then10.done.exit_crit_edge
  %118 = ptrtoint ptr %active_a to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %active_a, align 4
  %119 = ptrtoint ptr %stat_a to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %stat_a, align 4
  %inc = add i32 %120, 1
  store i32 %inc, ptr %stat_a, align 4
  br label %if.end12

if.end12:                                         ; preds = %done.exit, %if.end.if.end12_crit_edge
  %and14 = and i32 %conv7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end12.if.end30_crit_edge, label %if.then16

if.end12.if.end30_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then16:                                        ; preds = %if.end12
  %121 = ptrtoint ptr %frame to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %frame, align 4
  %inc17 = add i16 %122, 1
  store i16 %inc17, ptr %frame, align 4
  %123 = urem i16 %122, 31
  %rem = zext i16 %123 to i32
  %124 = ptrtoint ptr %stat_sof to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %stat_sof, align 4
  %inc19 = add i32 %125, 1
  store i32 %inc19, ptr %stat_sof, align 4
  %126 = ptrtoint ptr %next_periodic to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %next_periodic, align 4
  %tobool20.not = icmp eq ptr %127, null
  br i1 %tobool20.not, label %if.then16.if.end23_crit_edge, label %if.then21

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then21:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %128 = ptrtoint ptr %stat_overrun to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %stat_overrun, align 4
  %inc22 = add i32 %129, 1
  store i32 %inc22, ptr %stat_overrun, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then16.if.end23_crit_edge
  %arrayidx = getelementptr %struct.sl811, ptr %hcd_priv.i, i32 0, i32 25, i32 %rem
  %130 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx, align 4
  %tobool24.not = icmp eq ptr %131, null
  br i1 %tobool24.not, label %if.end23.if.end30_crit_edge, label %if.then25

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %132 = ptrtoint ptr %next_periodic to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %131, ptr %next_periodic, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end23.if.end30_crit_edge, %if.end12.if.end30_crit_edge
  %and32 = and i32 %conv7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.else57, label %if.then34

if.then34:                                        ; preds = %if.end30
  %133 = ptrtoint ptr %stat_insrmv to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %stat_insrmv, align 4
  %inc35 = add i32 %134, 1
  store i32 %inc35, ptr %stat_insrmv, align 4
  %135 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %ctrl1, align 4
  %136 = call ptr @memset(ptr %stat_wake, i32 0, i32 20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %137 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %138, i8 5) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %139 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %140, i8 0) #10, !srcloc !210
  %141 = ptrtoint ptr %irq_enable to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 32, ptr %irq_enable, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %142 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %143, i8 6) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %144 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %145, i8 32) #10, !srcloc !210
  %146 = ptrtoint ptr %active_a to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %active_a, align 4
  %tobool42.not = icmp eq ptr %147, null
  br i1 %tobool42.not, label %if.then34.if.end47_crit_edge, label %if.then43

if.then34.if.end47_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then43:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %148 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %149, i8 0) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %150 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %151, i8 0) #10, !srcloc !210
  %152 = ptrtoint ptr %active_a to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %active_a, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 4
  %urb_list = getelementptr inbounds %struct.usb_host_endpoint, ptr %155, i32 0, i32 4
  %156 = ptrtoint ptr %urb_list to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %urb_list, align 4
  %add.ptr = getelementptr i8, ptr %157, i32 -20
  tail call fastcc void @finish_request(ptr noundef %hcd_priv.i, ptr noundef %153, ptr noundef %add.ptr, i32 noundef -108)
  %158 = ptrtoint ptr %active_a to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %active_a, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.then34.if.end47_crit_edge
  %159 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %port1, align 4
  %and52 = and i32 %160, -65538
  %and49.lobit = lshr i32 %conv7, 6
  %161 = or i32 %and49.lobit, %and52
  %or56 = xor i32 %161, 65537
  store i32 %or56, ptr %port1, align 4
  br label %if.end83

if.else57:                                        ; preds = %if.end30
  %and59 = and i32 %conv7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.else57.if.end83_crit_edge, label %if.then61

if.else57.if.end83_crit_edge:                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then61:                                        ; preds = %if.else57
  %162 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %port1, align 4
  %and63 = and i32 %163, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.else77, label %do.body

do.body:                                          ; preds = %if.then61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl811h_irq.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl811h_irq, %if.then71)) #10
          to label %do.end [label %if.then71], !srcloc !213

if.then71:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %164 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sl811h_irq.__UNIQUE_ID_ddebug247, ptr noundef %165, ptr noundef nonnull @.str.11) #10
  br label %do.end

do.end:                                           ; preds = %if.then71, %do.body
  %166 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %port1, align 4
  %or74 = or i32 %167, 262144
  store i32 %or74, ptr %port1, align 4
  %168 = ptrtoint ptr %stat_wake to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %stat_wake, align 4
  %inc76 = add i32 %169, 1
  store i32 %inc76, ptr %stat_wake, align 4
  br label %if.end83

if.else77:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %and79 = and i8 %and5159, 63
  br label %if.end83

if.end83:                                         ; preds = %if.else77, %do.end, %if.else57.if.end83_crit_edge, %if.end47
  %irqstat.1 = phi i8 [ %and5159, %if.end47 ], [ %and5159, %do.end ], [ %and79, %if.else77 ], [ %and5159, %if.else57.if.end83_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %irqstat.1)
  %tobool84.not = icmp eq i8 %irqstat.1, 0
  br i1 %tobool84.not, label %if.end83.if.end94_crit_edge, label %if.then85

if.end83.if.end94_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.then85:                                        ; preds = %if.end83
  %170 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %port1, align 4
  %172 = and i32 %171, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %172)
  %173 = icmp eq i32 %172, 2
  br i1 %173, label %if.end.i171, label %if.then85.if.end90_crit_edge

if.then85.if.end90_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.end.i171:                                      ; preds = %if.then85
  %174 = ptrtoint ptr %active_a to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %active_a, align 4
  %cmp.i170 = icmp eq ptr %175, null
  br i1 %cmp.i170, label %if.then1.i, label %if.end.i171.if.end90_crit_edge

if.end.i171.if.end90_crit_edge:                   ; preds = %if.end.i171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then1.i:                                       ; preds = %if.end.i171
  %call.i = tail call fastcc ptr @start(ptr noundef %hcd_priv.i) #10
  %176 = ptrtoint ptr %active_a to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %call.i, ptr %active_a, align 4
  %cmp4.not.i = icmp eq ptr %call.i, null
  br i1 %cmp4.not.i, label %if.then1.i.if.end90_crit_edge, label %cond.end.i

if.then1.i.if.end90_crit_edge:                    ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

cond.end.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %177 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %177, 2
  %178 = ptrtoint ptr %jiffies_a.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %add.i, ptr %jiffies_a.i, align 4
  br label %if.end90

if.end90:                                         ; preds = %cond.end.i, %if.then1.i.if.end90_crit_edge, %if.end.i171.if.end90_crit_edge, %if.then85.if.end90_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.0203)
  %tobool91.not = icmp eq i32 %retries.0203, 0
  br i1 %tobool91.not, label %if.end90.if.end94_crit_edge, label %retry

if.end90.if.end94_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.end94:                                         ; preds = %if.end90.if.end94_crit_edge, %if.end83.if.end94_crit_edge, %retry.if.end94_crit_edge, %entry.if.end94_crit_edge
  %ret.1 = phi i32 [ 0, %entry.if.end94_crit_edge ], [ 1, %retry.if.end94_crit_edge ], [ 1, %if.end90.if.end94_crit_edge ], [ %ret.0204, %if.end83.if.end94_crit_edge ]
  %periodic_count = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 15
  %179 = ptrtoint ptr %periodic_count to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %periodic_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %cmp = icmp eq i32 %180, 0
  br i1 %cmp, label %land.lhs.true, label %if.end94.if.end99_crit_edge

if.end94.if.end99_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

land.lhs.true:                                    ; preds = %if.end94
  %async = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 1
  %181 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load volatile ptr, ptr %async, align 4
  %cmp.i172.not = icmp eq ptr %182, %async
  br i1 %cmp.i172.not, label %if.then98, label %land.lhs.true.if.end99_crit_edge

land.lhs.true.if.end99_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.then98:                                        ; preds = %land.lhs.true
  %irq_enable.i = getelementptr inbounds %struct.sl811, ptr %hcd_priv.i, i32 0, i32 21
  %183 = ptrtoint ptr %irq_enable.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %irq_enable.i, align 2
  %185 = and i8 %184, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool.not.i173 = icmp eq i8 %185, 0
  br i1 %tobool.not.i173, label %if.then98.if.end99_crit_edge, label %do.body.i

if.then98.if.end99_crit_edge:                     ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

do.body.i:                                        ; preds = %if.then98
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sofirq_off.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl811h_irq, %if.then4.i)) #10
          to label %do.end.i174 [label %if.then4.i], !srcloc !213

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %186 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sofirq_off.__UNIQUE_ID_ddebug242, ptr noundef %187, ptr noundef nonnull @.str.20) #10
  br label %do.end.i174

do.end.i174:                                      ; preds = %if.then4.i, %do.body.i
  %188 = ptrtoint ptr %irq_enable.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %irq_enable.i, align 2
  %190 = and i8 %189, -17
  store i8 %190, ptr %irq_enable.i, align 2
  br label %if.end99

if.end99:                                         ; preds = %do.end.i174, %if.then98.if.end99_crit_edge, %land.lhs.true.if.end99_crit_edge, %if.end94.if.end99_crit_edge
  %irq_enable100 = getelementptr inbounds %struct.sl811, ptr %hcd_priv.i, i32 0, i32 21
  %191 = ptrtoint ptr %irq_enable100 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %irq_enable100, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %193 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %194, i8 6) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %195 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %196, i8 %192) #10, !srcloc !210
  tail call void @_raw_spin_unlock(ptr noundef %hcd_priv.i) #10
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl811h_start(ptr noundef %hcd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %state, align 4
  %board = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %1 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %board, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hcd, align 8
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 12, i32 1
  %5 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool6 = icmp slt i8 %bf.load, 0
  %call7 = tail call i32 @device_init_wakeup(ptr noundef %4, i1 noundef zeroext %tobool6) #10
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %7 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %board, align 4
  %power = getelementptr inbounds %struct.sl811_platform_data, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %power to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %power, align 2
  %conv = zext i8 %10 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %power_budget = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 19
  %11 = ptrtoint ptr %power_budget to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul, ptr %power_budget, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  tail call fastcc void @port_power(ptr noundef %hcd_priv.i, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sl811h_stop(ptr noundef %hcd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %rh_timer = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 5
  %call1 = tail call i32 @del_timer_sync(ptr noundef %rh_timer) #10
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  tail call fastcc void @port_power(ptr noundef %hcd_priv.i, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call4) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sl811h_get_frame(ptr nocapture noundef readonly %hcd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frame = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 18
  %0 = ptrtoint ptr %frame to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %frame, align 4
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl811h_urb_enqueue(ptr noundef %hcd, ptr noundef %urb, i32 noundef %mem_flags) #0 align 64 {
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
  %and.lobit349 = lshr exact i32 %and, 7
  %4 = xor i32 %and.lobit349, 1
  %shr3 = lshr i32 %3, 15
  %and4 = and i32 %shr3, 15
  %ep6 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 9
  %5 = ptrtoint ptr %ep6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ep6, align 4
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hcpriv, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %if.then, label %entry.do.body11_crit_edge

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body11

if.then:                                          ; preds = %entry
  %and.i.i.i = and i32 %mem_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !221

if.then.kzalloc.exit_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %if.then
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

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %if.then.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.then.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %mem_flags, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %9 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef %or.i, i32 noundef 36) #13
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %kzalloc.exit.cleanup_crit_edge, label %kzalloc.exit.do.body11_crit_edge

kzalloc.exit.do.body11_crit_edge:                 ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body11

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body11:                                        ; preds = %kzalloc.exit.do.body11_crit_edge, %entry.do.body11_crit_edge
  %ep.0 = phi ptr [ null, %entry.do.body11_crit_edge ], [ %call7.i.i, %kzalloc.exit.do.body11_crit_edge ]
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  %port1 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 16
  %11 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port1, align 4
  %and17 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body11.if.then21_crit_edge, label %lor.lhs.false

do.body11.if.then21_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

lor.lhs.false:                                    ; preds = %do.body11
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 4
  %and19 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %lor.lhs.false.if.then21_crit_edge, label %if.end22

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %do.body11.if.then21_crit_edge
  tail call void @kfree(ptr noundef %ep.0) #10
  br label %fail_not_linked

if.end22:                                         ; preds = %lor.lhs.false
  %call23 = tail call i32 @usb_hcd_link_urb_to_ep(ptr noundef %hcd, ptr noundef %urb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %ep.0) #10
  br label %fail_not_linked

if.end26:                                         ; preds = %if.end22
  %15 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hcpriv, align 4
  %tobool28.not = icmp eq ptr %16, null
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %ep.0) #10
  %17 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hcpriv, align 4
  br label %if.end118

if.else:                                          ; preds = %if.end26
  %tobool31.not = icmp eq ptr %ep.0, null
  br i1 %tobool31.not, label %if.else.if.then219_crit_edge, label %if.else33

if.else.if.then219_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then219

if.else33:                                        ; preds = %if.else
  %schedule = getelementptr inbounds %struct.sl811h_ep, ptr %ep.0, i32 0, i32 13
  %19 = ptrtoint ptr %schedule to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %schedule, ptr %schedule, align 4
  %prev.i = getelementptr inbounds %struct.sl811h_ep, ptr %ep.0, i32 0, i32 13, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %schedule, ptr %prev.i, align 8
  %udev34 = getelementptr inbounds %struct.sl811h_ep, ptr %ep.0, i32 0, i32 1
  %21 = ptrtoint ptr %udev34 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %1, ptr %udev34, align 4
  %conv35 = trunc i32 %and4 to i8
  %epnum36 = getelementptr inbounds %struct.sl811h_ep, ptr %ep.0, i32 0, i32 4
  %22 = ptrtoint ptr %epnum36 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv35, ptr %epnum36, align 2
  %23 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pipe1, align 4
  %call38 = tail call fastcc zeroext i16 @usb_maxpacket(ptr noundef %1, i32 noundef %24, i32 noundef %4)
  %conv39 = trunc i16 %call38 to i8
  %maxpacket = getelementptr inbounds %struct.sl811h_ep, ptr %ep.0, i32 0, i32 3
  %25 = ptrtoint ptr %maxpacket to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv39, ptr %maxpacket, align 1
  %defctrl = getelementptr inbounds %struct.sl811h_ep, ptr %ep.0, i32 0, i32 2
  %26 = ptrtoint ptr %defctrl to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 3, ptr %defctrl, align 8
  %arrayidx = getelementptr %struct.usb_device, ptr %1, i32 0, i32 10, i32 %4
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %shl = shl nuw nsw i32 1, %and4
  %neg = xor i32 %shl, -1
  %and40 = and i32 %28, %neg
  store i32 %and40, ptr %arrayidx, align 4
  %shr.mask = and i32 %3, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr.mask)
  %cmp44 = icmp eq i32 %shr.mask, -2147483648
  %nextpid = getelementptr inbounds %struct.sl811h_ep, ptr %ep.0, i32 0, i32 5
  %. = select i1 %tobool.not, i8 -31, i8 105
  %.sink = select i1 %cmp44, i8 45, i8 %.
  %29 = ptrtoint ptr %nextpid to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %.sink, ptr %nextpid, align 1
  %30 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %maxpacket, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 120, i8 %31)
  %cmp57 = icmp ugt i8 %31, 120
  br i1 %cmp57, label %do.body60, label %if.end75

do.body60:                                        ; preds = %if.else33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl811h_urb_enqueue.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl811h_urb_enqueue, %if.then69)) #10
          to label %do.end74 [label %if.then69], !srcloc !213

if.then69:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hcd, align 8
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 8
  %36 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %maxpacket, align 1
  %conv71 = zext i8 %37 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sl811h_urb_enqueue.__UNIQUE_ID_ddebug248, ptr noundef %33, ptr noundef nonnull @.str.22, i32 noundef %35, i32 noundef %and4, i32 noundef %conv71) #10
  br label %do.end74

do.end74:                                         ; preds = %if.then69, %do.body60
  tail call void @kfree(ptr noundef nonnull %ep.0) #10
  br label %if.then219

if.end75:                                         ; preds = %if.else33
  %speed = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp76 = icmp eq i32 %39, 1
  br i1 %cmp76, label %if.then78, label %if.end75.if.end88_crit_edge

if.end75.if.end88_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then78:                                        ; preds = %if.end75
  %ctrl1 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 17
  %40 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ctrl1, align 4
  %42 = and i8 %41, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool81.not = icmp eq i8 %42, 0
  br i1 %tobool81.not, label %if.then82, label %if.then78.if.end88_crit_edge

if.then78.if.end88_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then82:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %defctrl to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %defctrl, align 8
  %45 = or i8 %44, -128
  store i8 %45, ptr %defctrl, align 8
  br label %if.end88

if.end88:                                         ; preds = %if.then82, %if.then78.if.end88_crit_edge, %if.end75.if.end88_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %switch = icmp sgt i32 %3, -1
  br i1 %switch, label %sw.bb, label %if.end88.sw.epilog_crit_edge

if.end88.sw.epilog_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end88
  %interval = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 25
  %46 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %47)
  %cmp89 = icmp sgt i32 %47, 32
  br i1 %cmp89, label %if.then91, label %sw.bb.if.end93_crit_edge

sw.bb.if.end93_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.then91:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 32, ptr %interval, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %sw.bb.if.end93_crit_edge
  %49 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %interval, align 4
  %conv95 = trunc i32 %50 to i16
  %period = getelementptr inbounds %struct.sl811h_ep, ptr %ep.0, i32 0, i32 9
  %51 = ptrtoint ptr %period to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv95, ptr %period, align 2
  %branch96 = getelementptr inbounds %struct.sl811h_ep, ptr %ep.0, i32 0, i32 10
  %52 = ptrtoint ptr %branch96 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 32, ptr %branch96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %3)
  %cmp97 = icmp ult i32 %3, 1073741824
  br i1 %cmp97, label %if.then99, label %if.end93.if.end104_crit_edge

if.end93.if.end104_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.then99:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %defctrl to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %defctrl, align 8
  %55 = or i8 %54, 16
  store i8 %55, ptr %defctrl, align 8
  br label %if.end104

if.end104:                                        ; preds = %if.then99, %if.end93.if.end104_crit_edge
  %56 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %speed, align 4
  %conv110 = zext i1 %cmp97 to i32
  %call111 = tail call fastcc zeroext i16 @usb_maxpacket(ptr noundef %1, i32 noundef %3, i32 noundef %4)
  %conv112 = zext i16 %call111 to i32
  %call113 = tail call i32 @usb_calc_bus_time(i32 noundef %57, i32 noundef %and.lobit349, i32 noundef %conv110, i32 noundef %conv112) #10
  %div = sdiv i32 %call113, 1000
  %conv114 = trunc i32 %div to i16
  %load = getelementptr inbounds %struct.sl811h_ep, ptr %ep.0, i32 0, i32 11
  %58 = ptrtoint ptr %load to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv114, ptr %load, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end104, %if.end88.sw.epilog_crit_edge
  %59 = ptrtoint ptr %ep.0 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %6, ptr %ep.0, align 8
  %60 = ptrtoint ptr %hcpriv to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %ep.0, ptr %hcpriv, align 4
  br label %if.end118

if.end118:                                        ; preds = %sw.epilog, %if.then29
  %ep.1 = phi ptr [ %18, %if.then29 ], [ %ep.0, %sw.epilog ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %switch350 = icmp slt i32 %3, 0
  br i1 %switch350, label %sw.bb119, label %sw.bb126

sw.bb119:                                         ; preds = %if.end118
  %schedule120 = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 13
  %61 = ptrtoint ptr %schedule120 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %schedule120, align 4
  %cmp.i.not = icmp eq ptr %62, %schedule120
  br i1 %cmp.i.not, label %if.then123, label %sw.bb119.sw.epilog216_crit_edge

sw.bb119.sw.epilog216_crit_edge:                  ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog216

if.then123:                                       ; preds = %sw.bb119
  %async = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 1
  %prev.i355 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 2
  %63 = ptrtoint ptr %prev.i355 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i355, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %schedule120, ptr noundef %64, ptr noundef %async) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then123.sw.epilog216_crit_edge

if.then123.sw.epilog216_crit_edge:                ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog216

if.end.i.i:                                       ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %prev.i355 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %schedule120, ptr %prev.i355, align 4
  %66 = ptrtoint ptr %schedule120 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %async, ptr %schedule120, align 4
  %prev3.i.i = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 13, i32 1
  %67 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev3.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %schedule120, ptr %64, align 4
  br label %sw.epilog216

sw.bb126:                                         ; preds = %if.end118
  %period127 = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 9
  %69 = ptrtoint ptr %period127 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %period127, align 2
  %conv128 = zext i16 %70 to i32
  %interval129 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 25
  %71 = ptrtoint ptr %interval129 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv128, ptr %interval129, align 4
  %branch130 = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 10
  %72 = ptrtoint ptr %branch130 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %branch130, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %73)
  %cmp132 = icmp ult i16 %73, 32
  br i1 %cmp132, label %if.then134, label %if.end139

if.then134:                                       ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #12
  %conv131 = zext i16 %73 to i32
  %frame = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 18
  %74 = ptrtoint ptr %frame to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %frame, align 4
  %76 = and i16 %75, 31
  %and136 = zext i16 %76 to i32
  %add = add nuw nsw i32 %and136, %conv131
  %start_frame = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 23
  %77 = ptrtoint ptr %start_frame to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add, ptr %start_frame, align 4
  br label %sw.epilog216

if.end139:                                        ; preds = %sw.bb126
  %78 = ptrtoint ptr %period127 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %period127, align 2
  %load141 = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 11
  %80 = ptrtoint ptr %load141 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %load141, align 2
  %call142 = tail call fastcc i32 @balance(ptr noundef %hcd_priv.i, i16 noundef zeroext %79, i16 noundef zeroext %81)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %cmp143 = icmp slt i32 %call142, 0
  br i1 %cmp143, label %if.end139.if.then219_crit_edge, label %if.end146

if.end139.if.then219_crit_edge:                   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then219

if.end146:                                        ; preds = %if.end139
  %conv147 = trunc i32 %call142 to i16
  %82 = ptrtoint ptr %branch130 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv147, ptr %branch130, align 4
  %frame149 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 18
  %83 = ptrtoint ptr %frame149 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %frame149, align 4
  %85 = and i16 %84, 31
  %and151 = zext i16 %85 to i32
  %conv153 = and i32 %call142, 65535
  %add154 = add nuw nsw i32 %conv153, %and151
  %start_frame155 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 23
  %86 = ptrtoint ptr %start_frame155 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %add154, ptr %start_frame155, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl811h_urb_enqueue.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl811h_urb_enqueue, %if.then168)) #10
          to label %do.end177 [label %if.then168], !srcloc !213

if.then168:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hcd, align 8
  %89 = ptrtoint ptr %period127 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %period127, align 2
  %conv172 = zext i16 %90 to i32
  %91 = ptrtoint ptr %branch130 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %branch130, align 4
  %conv174 = zext i16 %92 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sl811h_urb_enqueue.__UNIQUE_ID_ddebug249, ptr noundef %88, ptr noundef nonnull @.str.23, i32 noundef %conv172, ptr noundef %ep.1, i32 noundef %conv174) #10
  br label %do.end177

do.end177:                                        ; preds = %if.then168, %if.end146
  %93 = ptrtoint ptr %branch130 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %branch130, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %94)
  %cmp180374 = icmp ult i16 %94, 32
  br i1 %cmp180374, label %for.body.lr.ph, label %do.end177.for.end_crit_edge

do.end177.for.end_crit_edge:                      ; preds = %do.end177
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end177
  %conv179 = zext i16 %94 to i32
  %next197 = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %if.end198.for.body_crit_edge, %for.body.lr.ph
  %i.0375 = phi i32 [ %conv179, %for.body.lr.ph ], [ %add208, %if.end198.for.body_crit_edge ]
  %arrayidx182 = getelementptr %struct.sl811, ptr %hcd_priv.i, i32 0, i32 25, i32 %i.0375
  %95 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load4_noabort(i32 %95)
  %here.0362 = load ptr, ptr %arrayidx182, align 4
  %tobool183.not363 = icmp eq ptr %here.0362, null
  %cmp184.not364 = icmp eq ptr %ep.1, %here.0362
  %or.cond365 = select i1 %tobool183.not363, i1 true, i1 %cmp184.not364
  br i1 %or.cond365, label %for.body.while.end_crit_edge, label %while.body.lr.ph

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %for.body
  %96 = ptrtoint ptr %period127 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %period127, align 2
  %period188389 = getelementptr inbounds %struct.sl811h_ep, ptr %here.0362, i32 0, i32 9
  %98 = ptrtoint ptr %period188389 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %period188389, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %97, i16 %99)
  %cmp190390 = icmp ugt i16 %97, %99
  br i1 %cmp190390, label %while.body.lr.ph.if.then196_crit_edge, label %while.body.lr.ph.if.end193_crit_edge

while.body.lr.ph.if.end193_crit_edge:             ; preds = %while.body.lr.ph
  br label %if.end193

while.body.lr.ph.if.then196_crit_edge:            ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then196

while.body:                                       ; preds = %if.end193
  %period188 = getelementptr inbounds %struct.sl811h_ep, ptr %here.0, i32 0, i32 9
  %100 = ptrtoint ptr %period188 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %period188, align 2
  %cmp190 = icmp ugt i16 %97, %101
  br i1 %cmp190, label %if.then196.loopexit, label %while.body.if.end193_crit_edge

while.body.if.end193_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end193

if.end193:                                        ; preds = %while.body.if.end193_crit_edge, %while.body.lr.ph.if.end193_crit_edge
  %here.0367391 = phi ptr [ %here.0, %while.body.if.end193_crit_edge ], [ %here.0362, %while.body.lr.ph.if.end193_crit_edge ]
  %next = getelementptr inbounds %struct.sl811h_ep, ptr %here.0367391, i32 0, i32 12
  %102 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %102)
  %here.0 = load ptr, ptr %next, align 4
  %tobool183.not = icmp eq ptr %here.0, null
  %cmp184.not = icmp eq ptr %ep.1, %here.0
  %or.cond = select i1 %tobool183.not, i1 true, i1 %cmp184.not
  br i1 %or.cond, label %while.end.loopexit, label %while.body

while.end.loopexit:                               ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  %next.le403 = getelementptr inbounds %struct.sl811h_ep, ptr %here.0367391, i32 0, i32 12
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %for.body.while.end_crit_edge
  %prev.0.lcssa = phi ptr [ %arrayidx182, %for.body.while.end_crit_edge ], [ %next.le403, %while.end.loopexit ]
  %here.0.lcssa = phi ptr [ %here.0362, %for.body.while.end_crit_edge ], [ %here.0, %while.end.loopexit ]
  %cmp184.not.lcssa = phi i1 [ %cmp184.not364, %for.body.while.end_crit_edge ], [ %cmp184.not, %while.end.loopexit ]
  br i1 %cmp184.not.lcssa, label %while.end.if.end198_crit_edge, label %while.end.if.then196_crit_edge

while.end.if.then196_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then196

while.end.if.end198_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end198

if.then196.loopexit:                              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %next.le = getelementptr inbounds %struct.sl811h_ep, ptr %here.0367391, i32 0, i32 12
  br label %if.then196

if.then196:                                       ; preds = %if.then196.loopexit, %while.end.if.then196_crit_edge, %while.body.lr.ph.if.then196_crit_edge
  %here.0.lcssa380 = phi ptr [ %here.0.lcssa, %while.end.if.then196_crit_edge ], [ %here.0362, %while.body.lr.ph.if.then196_crit_edge ], [ %here.0, %if.then196.loopexit ]
  %prev.0.lcssa379 = phi ptr [ %prev.0.lcssa, %while.end.if.then196_crit_edge ], [ %arrayidx182, %while.body.lr.ph.if.then196_crit_edge ], [ %next.le, %if.then196.loopexit ]
  %103 = ptrtoint ptr %next197 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %here.0.lcssa380, ptr %next197, align 4
  %104 = ptrtoint ptr %prev.0.lcssa379 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %ep.1, ptr %prev.0.lcssa379, align 4
  br label %if.end198

if.end198:                                        ; preds = %if.then196, %while.end.if.end198_crit_edge
  %105 = ptrtoint ptr %load141 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %load141, align 2
  %arrayidx202 = getelementptr %struct.sl811, ptr %hcd_priv.i, i32 0, i32 24, i32 %i.0375
  %107 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %arrayidx202, align 2
  %add204 = add i16 %108, %106
  store i16 %add204, ptr %arrayidx202, align 2
  %109 = ptrtoint ptr %period127 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %period127, align 2
  %conv207 = zext i16 %110 to i32
  %add208 = add i32 %i.0375, %conv207
  %cmp180 = icmp slt i32 %add208, 32
  br i1 %cmp180, label %if.end198.for.body_crit_edge, label %if.end198.for.end_crit_edge

if.end198.for.end_crit_edge:                      ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end198.for.body_crit_edge:                     ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end198.for.end_crit_edge, %do.end177.for.end_crit_edge
  %periodic_count = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 15
  %111 = ptrtoint ptr %periodic_count to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %periodic_count, align 4
  %inc = add i32 %112, 1
  store i32 %inc, ptr %periodic_count, align 4
  %113 = ptrtoint ptr %load141 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %load141, align 2
  %115 = ptrtoint ptr %period127 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %period127, align 2
  %117 = udiv i16 %114, %116
  %div213 = zext i16 %117 to i32
  %bandwidth_allocated = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 13
  %118 = ptrtoint ptr %bandwidth_allocated to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %bandwidth_allocated, align 8
  %add215 = add i32 %119, %div213
  store i32 %add215, ptr %bandwidth_allocated, align 8
  tail call fastcc void @sofirq_on(ptr noundef %hcd_priv.i)
  br label %sw.epilog216

sw.epilog216:                                     ; preds = %for.end, %if.then134, %if.end.i.i, %if.then123.sw.epilog216_crit_edge, %sw.bb119.sw.epilog216_crit_edge
  %hcpriv217 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %120 = ptrtoint ptr %hcpriv217 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %6, ptr %hcpriv217, align 4
  %121 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %port1, align 4
  %and.i = and i32 %122, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.epilog216.fail_crit_edge

sw.epilog216.fail_crit_edge:                      ; preds = %sw.epilog216
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end.i:                                         ; preds = %sw.epilog216
  %active_a.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 12
  %123 = ptrtoint ptr %active_a.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %active_a.i, align 4
  %cmp.i356 = icmp eq ptr %124, null
  br i1 %cmp.i356, label %if.then1.i, label %if.end.i.fail_crit_edge

if.end.i.fail_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.then1.i:                                       ; preds = %if.end.i
  %call.i = tail call fastcc ptr @start(ptr noundef %hcd_priv.i) #10
  %125 = ptrtoint ptr %active_a.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call.i, ptr %active_a.i, align 4
  %cmp4.not.i = icmp eq ptr %call.i, null
  br i1 %cmp4.not.i, label %if.then1.i.fail_crit_edge, label %cond.end.i

if.then1.i.fail_crit_edge:                        ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

cond.end.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %126 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %126, 2
  %jiffies_a.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 13
  %127 = ptrtoint ptr %jiffies_a.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %add.i, ptr %jiffies_a.i, align 4
  br label %fail

fail:                                             ; preds = %cond.end.i, %if.then1.i.fail_crit_edge, %if.end.i.fail_crit_edge, %sw.epilog216.fail_crit_edge
  %irq_enable = getelementptr inbounds %struct.sl811, ptr %hcd_priv.i, i32 0, i32 21
  %128 = ptrtoint ptr %irq_enable to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %irq_enable, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %addr_reg.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %130 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %131, i8 6) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %data_reg.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4
  %132 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %133, i8 %129) #10, !srcloc !210
  br label %fail_not_linked

if.then219:                                       ; preds = %if.end139.if.then219_crit_edge, %do.end74, %if.else.if.then219_crit_edge
  %retval5.1.ph = phi i32 [ -12, %if.else.if.then219_crit_edge ], [ -22, %do.end74 ], [ %call142, %if.end139.if.then219_crit_edge ]
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %hcd, ptr noundef %urb) #10
  br label %fail_not_linked

fail_not_linked:                                  ; preds = %if.then219, %fail, %if.then25, %if.then21
  %retval5.2 = phi i32 [ %call23, %if.then25 ], [ %retval5.1.ph, %if.then219 ], [ 0, %fail ], [ -19, %if.then21 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call14) #10
  br label %cleanup

cleanup:                                          ; preds = %fail_not_linked, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval5.2, %fail_not_linked ], [ -12, %kzalloc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl811h_urb_dequeue(ptr noundef %hcd, ptr noundef %urb, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  %call7 = tail call i32 @usb_hcd_check_unlink_urb(ptr noundef %hcd, ptr noundef %urb, i32 noundef %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %entry.fail_crit_edge

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end:                                           ; preds = %entry
  %hcpriv = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %0 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcpriv, align 4
  %hcpriv8 = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hcpriv8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcpriv8, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end.fail_crit_edge, label %if.then10

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.then10:                                        ; preds = %if.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %urb_list = getelementptr inbounds %struct.usb_host_endpoint, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %urb_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %urb_list, align 4
  %urb_list12 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 5
  %cmp13.not = icmp eq ptr %7, %urb_list12
  br i1 %cmp13.not, label %if.else, label %if.then10.if.end41_crit_edge

if.then10.if.end41_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.else:                                          ; preds = %if.then10
  %active_a = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 12
  %8 = ptrtoint ptr %active_a to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %active_a, align 4
  %cmp16 = icmp eq ptr %9, %3
  br i1 %cmp16, label %if.then18, label %if.else.if.end41_crit_edge

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then18:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %jiffies_a = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 13
  %11 = ptrtoint ptr %jiffies_a to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %jiffies_a, align 4
  %sub = sub i32 %10, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp19 = icmp sgt i32 %sub, -1
  br i1 %cmp19, label %do.body22, label %if.then18.do.body45_crit_edge

if.then18.do.body45_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45

do.body22:                                        ; preds = %if.then18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl811h_urb_dequeue.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl811h_urb_dequeue, %if.then28)) #10
          to label %do.end35 [label %if.then28], !srcloc !213

if.then28:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hcd, align 8
  %call29 = tail call fastcc zeroext i8 @sl811_read(ptr noundef %hcd_priv.i, i32 noundef 0)
  %conv30 = zext i8 %call29 to i32
  %call31 = tail call fastcc zeroext i8 @sl811_read(ptr noundef %hcd_priv.i, i32 noundef 3)
  %conv32 = zext i8 %call31 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sl811h_urb_dequeue.__UNIQUE_ID_ddebug250, ptr noundef %14, ptr noundef nonnull @.str.26, i32 noundef %conv30, i32 noundef %conv32) #10
  br label %do.end35

do.end35:                                         ; preds = %if.then28, %do.body22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %addr_reg.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %15 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %16, i8 0) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %data_reg.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4
  %17 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 0) #10, !srcloc !210
  %19 = ptrtoint ptr %active_a to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %active_a, align 4
  br label %if.end41

if.end41:                                         ; preds = %do.end35, %if.else.if.end41_crit_edge, %if.then10.if.end41_crit_edge
  %tobool42.not = icmp eq ptr %urb, null
  br i1 %tobool42.not, label %if.end41.do.body45_crit_edge, label %if.then43

if.end41.do.body45_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @finish_request(ptr noundef %hcd_priv.i, ptr noundef nonnull %3, ptr noundef nonnull %urb, i32 noundef 0)
  br label %fail

do.body45:                                        ; preds = %if.end41.do.body45_crit_edge, %if.then18.do.body45_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl811h_urb_dequeue.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl811h_urb_dequeue, %if.then57)) #10
          to label %fail [label %if.then57], !srcloc !213

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hcd, align 8
  %active_a61 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 12
  %22 = ptrtoint ptr %active_a61 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %active_a61, align 4
  %cmp62 = icmp eq ptr %23, %3
  %cond = select i1 %cmp62, ptr @.str.28, ptr @.str.29
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sl811h_urb_dequeue.__UNIQUE_ID_ddebug251, ptr noundef %21, ptr noundef nonnull @.str.27, ptr noundef null, ptr noundef nonnull %cond) #10
  br label %fail

fail:                                             ; preds = %if.then57, %do.body45, %if.then43, %if.end.fail_crit_edge, %entry.fail_crit_edge
  %retval1.0 = phi i32 [ %call7, %entry.fail_crit_edge ], [ 0, %if.then43 ], [ 0, %if.then57 ], [ -22, %if.end.fail_crit_edge ], [ 0, %do.body45 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call4) #10
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sl811h_endpoint_disable(ptr nocapture noundef readonly %hcd, ptr noundef %hep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %hep, i32 0, i32 5
  %0 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcpriv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %urb_list = getelementptr inbounds %struct.usb_host_endpoint, ptr %hep, i32 0, i32 4
  %2 = ptrtoint ptr %urb_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %urb_list, align 4
  %cmp.i.not = icmp eq ptr %3, %urb_list
  br i1 %cmp.i.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 3) #10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %4 = ptrtoint ptr %urb_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %urb_list, align 4
  %cmp.i15.not = icmp eq ptr %5, %urb_list
  br i1 %cmp.i15.not, label %if.end3.if.end8_crit_edge, label %do.end

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.30, ptr noundef nonnull %1) #14
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end3.if.end8_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #10
  %8 = ptrtoint ptr %hcpriv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %hcpriv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl811h_hub_status_data(ptr noundef %hcd, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !222
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %pprev.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 4
  %1 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %2, null
  br i1 %tobool.not.i.i.not, label %if.then14, label %do.end11.do.body21_crit_edge

do.end11.do.body21_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21

if.then14:                                        ; preds = %do.end11
  %call15 = tail call i32 @sl811h_irq(ptr noundef %hcd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %if.then14.do.body21_crit_edge, label %if.then18

if.then14.do.body21_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %stat_lost = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 2
  %3 = ptrtoint ptr %stat_lost to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %stat_lost, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %stat_lost, align 4
  br label %do.body21

do.body21:                                        ; preds = %if.then18, %if.then14.do.body21_crit_edge, %do.end11.do.body21_crit_edge
  br i1 %tobool.not, label %if.then30, label %do.body21.do.body32_crit_edge

do.body21.do.body32_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body32

if.then30:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_on() #10
  br label %do.body32

do.body32:                                        ; preds = %if.then30, %do.body21.do.body32_crit_edge
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !223
  %and.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool40.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool40.not, label %if.then44, label %do.body32.do.end47_crit_edge, !prof !218

do.body32.do.end47_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %do.body32.do.end47_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !224
  %port1 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 16
  %6 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %7)
  %tobool52.not = icmp ult i32 %7, 65536
  br i1 %tobool52.not, label %do.end47.cleanup_crit_edge, label %if.end54

do.end47.cleanup_crit_edge:                       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end54:                                         ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %buf, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %do.end47.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end54 ], [ 0, %do.end47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl811h_hub_control(ptr noundef %hcd, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr nocapture noundef %buf, i16 noundef zeroext %wLength) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  %0 = zext i16 %typeReq to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.92)
  switch i16 %typeReq, label %entry.error_crit_edge [
    i16 8193, label %entry.sw.bb_crit_edge
    i16 8195, label %entry.sw.bb_crit_edge223
    i16 8961, label %sw.bb10
    i16 -24570, label %sw.bb51
    i16 -24576, label %sw.bb52
    i16 -23808, label %sw.bb53
    i16 8963, label %sw.bb83
  ]

entry.sw.bb_crit_edge223:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge223
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %wValue)
  %switch = icmp ult i16 %wValue, 2
  br i1 %switch, label %sw.bb.sw.epilog157_crit_edge, label %sw.bb.error_crit_edge

sw.bb.error_crit_edge:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

sw.bb.sw.epilog157_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog157

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %wIndex)
  %cmp12.not = icmp eq i16 %wIndex, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wLength)
  %cmp15.not = icmp eq i16 %wLength, 0
  %or.cond = and i1 %cmp12.not, %cmp15.not
  br i1 %or.cond, label %if.end, label %sw.bb10.error_crit_edge

sw.bb10.error_crit_edge:                          ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end:                                           ; preds = %sw.bb10
  %conv17 = zext i16 %wValue to i32
  %1 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.93)
  switch i16 %wValue, label %if.end.error_crit_edge [
    i16 1, label %sw.bb18
    i16 2, label %sw.bb21
    i16 8, label %sw.bb44
    i16 17, label %if.end.sw.epilog47_crit_edge
    i16 18, label %if.end.sw.epilog47_crit_edge224
    i16 16, label %if.end.sw.epilog47_crit_edge225
    i16 19, label %if.end.sw.epilog47_crit_edge226
    i16 20, label %if.end.sw.epilog47_crit_edge227
  ]

if.end.sw.epilog47_crit_edge227:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog47

if.end.sw.epilog47_crit_edge226:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog47

if.end.sw.epilog47_crit_edge225:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog47

if.end.sw.epilog47_crit_edge224:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog47

if.end.sw.epilog47_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog47

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %port1 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 16
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port1, align 4
  %and = and i32 %3, 256
  store i32 %and, ptr %port1, align 4
  %ctrl1 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 17
  %4 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %ctrl1, align 4
  tail call fastcc void @sl811_write(ptr noundef %hcd_priv.i, i32 noundef 5, i8 noundef zeroext 0)
  %irq_enable = getelementptr inbounds %struct.sl811, ptr %hcd_priv.i, i32 0, i32 21
  %5 = ptrtoint ptr %irq_enable to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 32, ptr %irq_enable, align 2
  tail call fastcc void @sl811_write(ptr noundef %hcd_priv.i, i32 noundef 6, i8 noundef zeroext 32)
  br label %sw.epilog47

sw.bb21:                                          ; preds = %if.end
  %port122 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 16
  %6 = ptrtoint ptr %port122 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port122, align 4
  %and23 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool.not = icmp eq i32 %and23, 0
  br i1 %tobool.not, label %sw.bb21.sw.epilog47_crit_edge, label %do.body26

sw.bb21.sw.epilog47_crit_edge:                    ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog47

do.body26:                                        ; preds = %sw.bb21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl811h_hub_control.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl811h_hub_control, %if.then32)) #10
          to label %do.end35 [label %if.then32], !srcloc !213

if.then32:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sl811h_hub_control.__UNIQUE_ID_ddebug255, ptr noundef %9, ptr noundef nonnull @.str.35) #10
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %do.body26
  %irq_enable36 = getelementptr inbounds %struct.sl811, ptr %hcd_priv.i, i32 0, i32 21
  %10 = ptrtoint ptr %irq_enable36 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %irq_enable36, align 2
  tail call fastcc void @sl811_write(ptr noundef %hcd_priv.i, i32 noundef 6, i8 noundef zeroext 0)
  %ctrl138 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 17
  %11 = ptrtoint ptr %ctrl138 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ctrl138, align 4
  %13 = or i8 %12, 24
  store i8 %13, ptr %ctrl138, align 4
  tail call fastcc void @sl811_write(ptr noundef %hcd_priv.i, i32 noundef 5, i8 noundef zeroext %13)
  %timer = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 3, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %14, 4
  %call43 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #10
  br label %sw.epilog47

sw.bb44:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @port_power(ptr noundef %hcd_priv.i, i32 noundef 0)
  br label %sw.epilog47

sw.epilog47:                                      ; preds = %sw.bb44, %do.end35, %sw.bb21.sw.epilog47_crit_edge, %sw.bb18, %if.end.sw.epilog47_crit_edge, %if.end.sw.epilog47_crit_edge224, %if.end.sw.epilog47_crit_edge225, %if.end.sw.epilog47_crit_edge226, %if.end.sw.epilog47_crit_edge227
  %shl = shl nuw nsw i32 1, %conv17
  %neg = xor i32 %shl, -1
  %port149 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 16
  %15 = ptrtoint ptr %port149 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port149, align 4
  %and50 = and i32 %16, %neg
  store i32 %and50, ptr %port149, align 4
  br label %sw.epilog157

sw.bb51:                                          ; preds = %entry
  %bDescriptorType.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 1
  %17 = ptrtoint ptr %bDescriptorType.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 41, ptr %bDescriptorType.i, align 1
  %bHubContrCurrent.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 5
  %18 = ptrtoint ptr %bHubContrCurrent.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %bHubContrCurrent.i, align 1
  %bNbrPorts.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 2
  %19 = ptrtoint ptr %bNbrPorts.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %bNbrPorts.i, align 1
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 9, ptr %buf, align 1
  %bPwrOn2PwrGood.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 4
  %21 = ptrtoint ptr %bPwrOn2PwrGood.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %bPwrOn2PwrGood.i, align 1
  %board.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %22 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %board.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %sw.bb51.sl811h_hub_descriptor.exit_crit_edge, label %land.lhs.true.i

sw.bb51.sl811h_hub_descriptor.exit_crit_edge:     ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #12
  br label %sl811h_hub_descriptor.exit

land.lhs.true.i:                                  ; preds = %sw.bb51
  %port_power.i = getelementptr inbounds %struct.sl811_platform_data, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %port_power.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %port_power.i, align 4
  %tobool2.not.i = icmp eq ptr %25, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.sl811h_hub_descriptor.exit_crit_edge, label %if.then.i

land.lhs.true.i.sl811h_hub_descriptor.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sl811h_hub_descriptor.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %potpg.i = getelementptr inbounds %struct.sl811_platform_data, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %potpg.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %potpg.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool6.not.i = icmp eq i8 %27, 0
  %spec.select.i = select i1 %tobool6.not.i, i8 10, i8 %27
  %28 = ptrtoint ptr %bPwrOn2PwrGood.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %spec.select.i, ptr %bPwrOn2PwrGood.i, align 1
  br label %sl811h_hub_descriptor.exit

sl811h_hub_descriptor.exit:                       ; preds = %if.then.i, %land.lhs.true.i.sl811h_hub_descriptor.exit_crit_edge, %sw.bb51.sl811h_hub_descriptor.exit_crit_edge
  %temp.0.i = phi i16 [ 4352, %if.then.i ], [ 4608, %land.lhs.true.i.sl811h_hub_descriptor.exit_crit_edge ], [ 4608, %sw.bb51.sl811h_hub_descriptor.exit_crit_edge ]
  %wHubCharacteristics.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 3
  %29 = ptrtoint ptr %wHubCharacteristics.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %temp.0.i, ptr %wHubCharacteristics.i, align 1
  %u.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6
  %30 = ptrtoint ptr %u.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %u.i, align 1
  %arrayidx13.i = getelementptr %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %arrayidx13.i, align 1
  br label %sw.epilog157

sw.bb52:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 0, ptr %buf, align 1
  br label %sw.epilog157

sw.bb53:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %wIndex)
  %cmp55.not = icmp eq i16 %wIndex, 1
  br i1 %cmp55.not, label %if.end58, label %sw.bb53.error_crit_edge

sw.bb53.error_crit_edge:                          ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end58:                                         ; preds = %sw.bb53
  %port159 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 16
  %33 = ptrtoint ptr %port159 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port159, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #10
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %buf, align 1
  %37 = trunc i32 %35 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool61.not = icmp eq i16 %37, 0
  br i1 %tobool61.not, label %if.end58.sw.epilog157_crit_edge, label %do.body63

if.end58.sw.epilog157_crit_edge:                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog157

do.body63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl811h_hub_control.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl811h_hub_control, %if.then75)) #10
          to label %sw.epilog157 [label %if.then75], !srcloc !213

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hcd, align 8
  %40 = ptrtoint ptr %port159 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port159, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sl811h_hub_control.__UNIQUE_ID_ddebug256, ptr noundef %39, ptr noundef nonnull @.str.36, i32 noundef %41) #10
  br label %sw.epilog157

sw.bb83:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %wIndex)
  %cmp85.not = icmp eq i16 %wIndex, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wLength)
  %cmp89.not = icmp eq i16 %wLength, 0
  %or.cond210 = and i1 %cmp85.not, %cmp89.not
  br i1 %or.cond210, label %if.end92, label %sw.bb83.error_crit_edge

sw.bb83.error_crit_edge:                          ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end92:                                         ; preds = %sw.bb83
  %conv93 = zext i16 %wValue to i32
  %42 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.94)
  switch i16 %wValue, label %if.end92.error_crit_edge [
    i16 2, label %sw.bb94
    i16 8, label %sw.bb128
    i16 4, label %sw.bb129
  ]

if.end92.error_crit_edge:                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

sw.bb94:                                          ; preds = %if.end92
  %port195 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 16
  %43 = ptrtoint ptr %port195 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port195, align 4
  %45 = and i32 %44, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %.not = icmp eq i32 %45, 2
  br i1 %.not, label %do.body105, label %sw.bb94.error_crit_edge

sw.bb94.error_crit_edge:                          ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

do.body105:                                       ; preds = %sw.bb94
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl811h_hub_control.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl811h_hub_control, %if.then117)) #10
          to label %do.end122 [label %if.then117], !srcloc !213

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sl811h_hub_control.__UNIQUE_ID_ddebug257, ptr noundef %47, ptr noundef nonnull @.str.37) #10
  br label %do.end122

do.end122:                                        ; preds = %if.then117, %do.body105
  %ctrl1123 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 17
  %48 = ptrtoint ptr %ctrl1123 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ctrl1123, align 4
  %50 = and i8 %49, -2
  store i8 %50, ptr %ctrl1123, align 4
  tail call fastcc void @sl811_write(ptr noundef %hcd_priv.i, i32 noundef 5, i8 noundef zeroext %50)
  br label %sw.epilog151

sw.bb128:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @port_power(ptr noundef %hcd_priv.i, i32 noundef 1)
  br label %sw.epilog151

sw.bb129:                                         ; preds = %if.end92
  %port1130 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 16
  %51 = ptrtoint ptr %port1130 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %port1130, align 4
  %and131 = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.end134, label %sw.bb129.error_crit_edge

sw.bb129.error_crit_edge:                         ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end134:                                        ; preds = %sw.bb129
  %and136 = and i32 %52, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.end134.sw.epilog151_crit_edge, label %if.end139

if.end134.sw.epilog151_crit_edge:                 ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog151

if.end139:                                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  %irq_enable140 = getelementptr inbounds %struct.sl811, ptr %hcd_priv.i, i32 0, i32 21
  %53 = ptrtoint ptr %irq_enable140 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %irq_enable140, align 2
  tail call fastcc void @sl811_write(ptr noundef %hcd_priv.i, i32 noundef 6, i8 noundef zeroext 0)
  %ctrl1142 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 17
  %54 = ptrtoint ptr %ctrl1142 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 8, ptr %ctrl1142, align 4
  tail call fastcc void @sl811_write(ptr noundef %hcd_priv.i, i32 noundef 5, i8 noundef zeroext 8)
  %55 = ptrtoint ptr %port1130 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port1130, align 4
  %or145 = or i32 %56, 16
  store i32 %or145, ptr %port1130, align 4
  %timer146 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 3, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %add148 = add i32 %57, 5
  %call149 = tail call i32 @mod_timer(ptr noundef %timer146, i32 noundef %add148) #10
  br label %sw.epilog151

sw.epilog151:                                     ; preds = %if.end139, %if.end134.sw.epilog151_crit_edge, %sw.bb128, %do.end122
  %shl153 = shl nuw nsw i32 1, %conv93
  %port1154 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 16
  %58 = ptrtoint ptr %port1154 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %port1154, align 4
  %or155 = or i32 %59, %shl153
  store i32 %or155, ptr %port1154, align 4
  br label %sw.epilog157

error:                                            ; preds = %sw.bb129.error_crit_edge, %sw.bb94.error_crit_edge, %if.end92.error_crit_edge, %sw.bb83.error_crit_edge, %sw.bb53.error_crit_edge, %if.end.error_crit_edge, %sw.bb10.error_crit_edge, %sw.bb.error_crit_edge, %entry.error_crit_edge
  br label %sw.epilog157

sw.epilog157:                                     ; preds = %error, %sw.epilog151, %if.then75, %do.body63, %if.end58.sw.epilog157_crit_edge, %sw.bb52, %sl811h_hub_descriptor.exit, %sw.epilog47, %sw.bb.sw.epilog157_crit_edge
  %retval1.0 = phi i32 [ -32, %error ], [ 0, %sw.epilog151 ], [ 0, %if.then75 ], [ 0, %if.end58.sw.epilog157_crit_edge ], [ 0, %sw.bb52 ], [ 0, %sl811h_hub_descriptor.exit ], [ 0, %sw.epilog47 ], [ 0, %sw.bb.sw.epilog157_crit_edge ], [ 0, %do.body63 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call4) #10
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl811h_bus_suspend(ptr nocapture noundef readonly %hcd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl811h_bus_suspend.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl811h_bus_suspend, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !213

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sl811h_bus_suspend.__UNIQUE_ID_ddebug258, ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl811h_bus_resume(ptr nocapture noundef readonly %hcd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl811h_bus_resume.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl811h_bus_resume, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !213

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sl811h_bus_resume.__UNIQUE_ID_ddebug259, ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sl811_write(ptr nocapture noundef readonly %sl811, i32 noundef %reg, i8 noundef zeroext %val) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %conv = trunc i32 %reg to i8
  %addr_reg = getelementptr inbounds %struct.sl811, ptr %sl811, i32 0, i32 1
  %0 = ptrtoint ptr %addr_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr_reg, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 %conv) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %data_reg = getelementptr inbounds %struct.sl811, ptr %sl811, i32 0, i32 2
  %2 = ptrtoint ptr %data_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_reg, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 %val) #10, !srcloc !210
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @finish_request(ptr noundef %sl811, ptr noundef %ep, ptr noundef %urb, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pipe, align 4
  %shr.mask = and i32 %1, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr.mask)
  %cmp = icmp eq i32 %shr.mask, -2147483648
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %nextpid = getelementptr inbounds %struct.sl811h_ep, ptr %ep, i32 0, i32 5
  %2 = ptrtoint ptr %nextpid to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 45, ptr %nextpid, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %sl811, i32 -600
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %add.ptr.i, ptr noundef %urb) #10
  tail call void @_raw_spin_unlock(ptr noundef %sl811) #10
  tail call void @usb_hcd_giveback_urb(ptr noundef %add.ptr.i, ptr noundef %urb, i32 noundef %status) #10
  tail call void @_raw_spin_lock(ptr noundef %sl811) #10
  %3 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ep, align 4
  %urb_list = getelementptr inbounds %struct.usb_host_endpoint, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %urb_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %urb_list, align 4
  %cmp.i.not = icmp eq ptr %6, %urb_list
  br i1 %cmp.i.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %schedule = getelementptr inbounds %struct.sl811h_ep, ptr %ep, i32 0, i32 13
  %7 = ptrtoint ptr %schedule to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %schedule, align 4
  %cmp.i101.not = icmp eq ptr %8, %schedule
  br i1 %cmp.i101.not, label %do.body, label %if.then8

if.then8:                                         ; preds = %if.end5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %schedule) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then8.list_del_init.exit_crit_edge

if.then8.list_del_init.exit_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.sl811h_ep, ptr %ep, i32 0, i32 13, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %schedule to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %schedule, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then8.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %schedule to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %schedule, ptr %schedule, align 4
  %prev.i3.i = getelementptr inbounds %struct.sl811h_ep, ptr %ep, i32 0, i32 13, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %schedule, ptr %prev.i3.i, align 4
  %next_async = getelementptr inbounds %struct.sl811, ptr %sl811, i32 0, i32 13
  %17 = ptrtoint ptr %next_async to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %next_async, align 4
  %cmp10 = icmp eq ptr %18, %ep
  br i1 %cmp10, label %if.then11, label %list_del_init.exit.cleanup_crit_edge

list_del_init.exit.cleanup_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then11:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %next_async to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %next_async, align 4
  br label %cleanup

do.body:                                          ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @finish_request.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@finish_request, %if.then19)) #10
          to label %do.end [label %if.then19], !srcloc !213

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %period = getelementptr inbounds %struct.sl811h_ep, ptr %ep, i32 0, i32 9
  %22 = ptrtoint ptr %period to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %period, align 2
  %conv = zext i16 %23 to i32
  %branch21 = getelementptr inbounds %struct.sl811h_ep, ptr %ep, i32 0, i32 10
  %24 = ptrtoint ptr %branch21 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %branch21, align 4
  %conv22 = zext i16 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @finish_request.__UNIQUE_ID_ddebug245, ptr noundef %21, ptr noundef nonnull @.str.13, i32 noundef %conv, ptr noundef %ep, i32 noundef %conv22) #10
  br label %do.end

do.end:                                           ; preds = %if.then19, %do.body
  %branch24 = getelementptr inbounds %struct.sl811h_ep, ptr %ep, i32 0, i32 10
  %26 = ptrtoint ptr %branch24 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %branch24, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %27)
  %cmp26106 = icmp ult i16 %27, 32
  br i1 %cmp26106, label %for.body.lr.ph, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %conv25 = zext i16 %27 to i32
  %next33 = getelementptr inbounds %struct.sl811h_ep, ptr %ep, i32 0, i32 12
  %load = getelementptr inbounds %struct.sl811h_ep, ptr %ep, i32 0, i32 11
  %period40 = getelementptr inbounds %struct.sl811h_ep, ptr %ep, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end34.for.body_crit_edge, %for.body.lr.ph
  %i.0107 = phi i32 [ %conv25, %for.body.lr.ph ], [ %add, %if.end34.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sl811, ptr %sl811, i32 0, i32 25, i32 %i.0107
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %for.body
  %prev.0 = phi ptr [ %arrayidx, %for.body ], [ %next, %while.cond.while.cond_crit_edge ]
  %28 = ptrtoint ptr %prev.0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.0, align 4
  %tobool28.not = icmp eq ptr %29, null
  %cmp29.not = icmp eq ptr %29, %ep
  %or.cond = or i1 %tobool28.not, %cmp29.not
  %next = getelementptr inbounds %struct.sl811h_ep, ptr %29, i32 0, i32 12
  br i1 %or.cond, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br i1 %tobool28.not, label %while.end.if.end34_crit_edge, label %if.then32

while.end.if.end34_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then32:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %next33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %next33, align 4
  %32 = ptrtoint ptr %prev.0 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %prev.0, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %while.end.if.end34_crit_edge
  %33 = ptrtoint ptr %load to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %load, align 2
  %arrayidx37 = getelementptr %struct.sl811, ptr %sl811, i32 0, i32 24, i32 %i.0107
  %35 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx37, align 2
  %sub = sub i16 %36, %34
  store i16 %sub, ptr %arrayidx37, align 2
  %37 = ptrtoint ptr %period40 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %period40, align 2
  %conv41 = zext i16 %38 to i32
  %add = add i32 %i.0107, %conv41
  %cmp26 = icmp ult i32 %add, 32
  br i1 %cmp26, label %if.end34.for.body_crit_edge, label %if.end34.for.end_crit_edge

if.end34.for.end_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end34.for.end_crit_edge, %do.end.for.end_crit_edge
  %39 = ptrtoint ptr %branch24 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 32, ptr %branch24, align 4
  %periodic_count = getelementptr inbounds %struct.sl811, ptr %sl811, i32 0, i32 26
  %40 = ptrtoint ptr %periodic_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %periodic_count, align 4
  %dec = add i32 %41, -1
  store i32 %dec, ptr %periodic_count, align 4
  %load43 = getelementptr inbounds %struct.sl811h_ep, ptr %ep, i32 0, i32 11
  %42 = ptrtoint ptr %load43 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %load43, align 2
  %period45 = getelementptr inbounds %struct.sl811h_ep, ptr %ep, i32 0, i32 9
  %44 = ptrtoint ptr %period45 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %period45, align 2
  %46 = udiv i16 %43, %45
  %div = zext i16 %46 to i32
  %bandwidth_allocated = getelementptr i8, ptr %sl811, i32 -456
  %47 = ptrtoint ptr %bandwidth_allocated to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bandwidth_allocated, align 8
  %sub49 = sub i32 %48, %div
  store i32 %sub49, ptr %bandwidth_allocated, align 8
  %next_periodic = getelementptr inbounds %struct.sl811, ptr %sl811, i32 0, i32 12
  %49 = ptrtoint ptr %next_periodic to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %next_periodic, align 4
  %cmp50 = icmp eq ptr %50, %ep
  br i1 %cmp50, label %if.then52, label %for.end.if.end55_crit_edge

for.end.if.end55_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then52:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %next53 = getelementptr inbounds %struct.sl811h_ep, ptr %ep, i32 0, i32 12
  %51 = ptrtoint ptr %next53 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %next53, align 4
  %53 = ptrtoint ptr %next_periodic to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %next_periodic, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %for.end.if.end55_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp57 = icmp eq i32 %dec, 0
  br i1 %cmp57, label %if.then59, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then59:                                        ; preds = %if.end55
  %irq_enable.i = getelementptr inbounds %struct.sl811, ptr %sl811, i32 0, i32 21
  %54 = ptrtoint ptr %irq_enable.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %irq_enable.i, align 2
  %56 = and i8 %55, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i, label %if.then59.cleanup_crit_edge, label %do.body.i

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.i:                                        ; preds = %if.then59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sofirq_off.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@finish_request, %if.then4.i)) #10
          to label %do.end.i [label %if.then4.i], !srcloc !213

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sofirq_off.__UNIQUE_ID_ddebug242, ptr noundef %58, ptr noundef nonnull @.str.20) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then4.i, %do.body.i
  %59 = ptrtoint ptr %irq_enable.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %irq_enable.i, align 2
  %61 = and i8 %60, -17
  store i8 %61, ptr %irq_enable.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then59.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.then11, %list_del_init.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_unlink_urb_from_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_giveback_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @start(ptr noundef %sl811) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %next_periodic = getelementptr inbounds %struct.sl811, ptr %sl811, i32 0, i32 12
  %0 = ptrtoint ptr %next_periodic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next_periodic, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %next = getelementptr inbounds %struct.sl811h_ep, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next, align 4
  %4 = ptrtoint ptr %next_periodic to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %next_periodic, align 4
  br label %if.end25

if.else:                                          ; preds = %entry
  %next_async = getelementptr inbounds %struct.sl811, ptr %sl811, i32 0, i32 13
  %5 = ptrtoint ptr %next_async to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %next_async, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %if.else6, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.else6:                                         ; preds = %if.else
  %async = getelementptr inbounds %struct.sl811, ptr %sl811, i32 0, i32 23
  %7 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %async, align 4
  %cmp.i.not = icmp eq ptr %8, %async
  br i1 %cmp.i.not, label %if.else6.cleanup_crit_edge, label %if.then8

if.else6.cleanup_crit_edge:                       ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %8, i32 -28
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.else.if.end12_crit_edge
  %ep.0 = phi ptr [ %add.ptr, %if.then8 ], [ %6, %if.else.if.end12_crit_edge ]
  %schedule = getelementptr inbounds %struct.sl811h_ep, ptr %ep.0, i32 0, i32 13
  %9 = ptrtoint ptr %schedule to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %schedule, align 4
  %async14 = getelementptr inbounds %struct.sl811, ptr %sl811, i32 0, i32 23
  %cmp = icmp eq ptr %10, %async14
  br i1 %cmp, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %next_async to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %next_async, align 4
  br label %if.end25

if.else17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr22 = getelementptr i8, ptr %10, i32 -28
  %12 = ptrtoint ptr %next_async to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr22, ptr %next_async, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else17, %if.then15, %if.then
  %ep.1 = phi ptr [ %1, %if.then ], [ %ep.0, %if.then15 ], [ %ep.0, %if.else17 ]
  %13 = ptrtoint ptr %ep.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ep.1, align 4
  %urb_list = getelementptr inbounds %struct.usb_host_endpoint, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %urb_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %urb_list, align 4
  %cmp.i5.not = icmp eq ptr %16, %urb_list
  br i1 %cmp.i5.not, label %do.body, label %if.end43, !prof !218

do.body:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start, %if.then40)) #10
          to label %cleanup [label %if.then40], !srcloc !213

if.then40:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %sl811, i32 -600
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start.__UNIQUE_ID_ddebug243, ptr noundef %18, ptr noundef nonnull @.str.15, ptr noundef %ep.1) #10
  br label %cleanup

if.end43:                                         ; preds = %if.end25
  %defctrl = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 2
  %19 = ptrtoint ptr %defctrl to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %defctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  tail call void @arm_heavy_mb() #10
  %addr_reg.i = getelementptr inbounds %struct.sl811, ptr %sl811, i32 0, i32 1
  %21 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 15) #10, !srcloc !210
  %data_reg.i = getelementptr inbounds %struct.sl811, ptr %sl811, i32 0, i32 2
  %23 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data_reg.i, align 4
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %24) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  %dev = getelementptr i8, ptr %16, i32 20
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp51 = icmp eq i32 %29, 1
  br i1 %cmp51, label %if.then53, label %if.else69

if.then53:                                        ; preds = %if.end43
  %conv = zext i8 %25 to i32
  %shl = shl nuw nsw i32 %conv, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool55.not40 = icmp slt i8 %20, 0
  %spec.select.v = select i1 %tobool55.not40, i32 -900, i32 -100
  %spec.select = add nsw i32 %shl, %spec.select.v
  %maxpacket = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 3
  %30 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %maxpacket, align 1
  %conv59 = zext i8 %31 to i32
  %shl60.neg = mul nsw i32 %conv59, -256
  %sub61 = add nsw i32 %spec.select, %shl60.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub61)
  %cmp62 = icmp slt i32 %sub61, 0
  br i1 %cmp62, label %if.then64, label %if.then53.if.end90_crit_edge

if.then53.if.end90_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then64:                                        ; preds = %if.then53
  %period = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 9
  %32 = ptrtoint ptr %period to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %period, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool65.not = icmp eq i16 %33, 0
  br i1 %tobool65.not, label %if.then64.if.end67_crit_edge, label %if.then66

if.then64.if.end67_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then66:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  %stat_overrun = getelementptr inbounds %struct.sl811, ptr %sl811, i32 0, i32 10
  %34 = ptrtoint ptr %stat_overrun to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %stat_overrun, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %stat_overrun, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.then64.if.end67_crit_edge
  %irq_enable.i = getelementptr inbounds %struct.sl811, ptr %sl811, i32 0, i32 21
  %36 = ptrtoint ptr %irq_enable.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %irq_enable.i, align 2
  %38 = and i8 %37, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.i:                                        ; preds = %if.end67
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sofirq_on.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start, %if.then4.i)) #10
          to label %do.end.i [label %if.then4.i], !srcloc !213

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %sl811, i32 -600
  %39 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sofirq_on.__UNIQUE_ID_ddebug241, ptr noundef %40, ptr noundef nonnull @.str.18) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then4.i, %do.body.i
  %41 = ptrtoint ptr %irq_enable.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %irq_enable.i, align 2
  %43 = or i8 %42, 16
  store i8 %43, ptr %irq_enable.i, align 2
  br label %cleanup

if.else69:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %25)
  %cmp71 = icmp ult i8 %25, 12
  br i1 %cmp71, label %if.then73, label %if.else82

if.then73:                                        ; preds = %if.else69
  %period74 = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 9
  %44 = ptrtoint ptr %period74 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %period74, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool75.not = icmp eq i16 %45, 0
  br i1 %tobool75.not, label %if.then73.if.end79_crit_edge, label %if.then76

if.then73.if.end79_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then76:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  %stat_overrun77 = getelementptr inbounds %struct.sl811, ptr %sl811, i32 0, i32 10
  %46 = ptrtoint ptr %stat_overrun77 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %stat_overrun77, align 4
  %inc78 = add i32 %47, 1
  store i32 %inc78, ptr %stat_overrun77, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.then73.if.end79_crit_edge
  %48 = or i8 %20, 32
  br label %if.end90

if.else82:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #12
  %nak_count = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 7
  %49 = ptrtoint ptr %nak_count to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %nak_count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool83.not = icmp eq i16 %50, 0
  %51 = or i8 %20, 32
  %spec.select1 = select i1 %tobool83.not, i8 %20, i8 %51
  br label %if.end90

if.end90:                                         ; preds = %if.else82, %if.end79, %if.then53.if.end90_crit_edge
  %control.0 = phi i8 [ %20, %if.then53.if.end90_crit_edge ], [ %48, %if.end79 ], [ %spec.select1, %if.else82 ]
  %nextpid = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 5
  %52 = ptrtoint ptr %nextpid to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %nextpid, align 1
  %54 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %53, label %do.body95 [
    i8 105, label %sw.bb
    i8 -31, label %sw.bb92
    i8 45, label %sw.bb93
    i8 -46, label %sw.bb94
  ]

sw.bb:                                            ; preds = %if.end90
  %maxpacket.i = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 3
  %55 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %maxpacket.i, align 1
  %57 = and i8 %control.0, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i7 = icmp eq i8 %57, 0
  br i1 %tobool.not.i7, label %land.lhs.true.i, label %sw.bb.in_packet.exit_crit_edge

sw.bb.in_packet.exit_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %in_packet.exit

land.lhs.true.i:                                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  %toggle.i = getelementptr inbounds %struct.usb_device, ptr %59, i32 0, i32 10
  %60 = ptrtoint ptr %toggle.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %toggle.i, align 4
  %epnum.i = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 4
  %62 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %epnum.i, align 2
  %conv4.i = zext i8 %63 to i32
  %64 = shl nuw i32 1, %conv4.i
  %65 = and i32 %64, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool6.not.i = icmp eq i32 %65, 0
  %or.i = or i8 %control.0, 64
  %spec.select.i = select i1 %tobool6.not.i, i8 %control.0, i8 %or.i
  br label %in_packet.exit

in_packet.exit:                                   ; preds = %land.lhs.true.i, %sw.bb.in_packet.exit_crit_edge
  %control.addr.0.i = phi i8 [ %control.0, %sw.bb.in_packet.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %66 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %68 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %69, i8 1) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %70 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %71, i8 16) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !225
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %67, i8 %56) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !226
  tail call void @arm_heavy_mb() #10
  %epnum14.i = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 4
  %72 = ptrtoint ptr %epnum14.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %epnum14.i, align 2
  %74 = or i8 %73, -112
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %67, i8 %74) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void @arm_heavy_mb() #10
  %pipe.i = getelementptr i8, ptr %16, i32 28
  %75 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pipe.i, align 4
  %shr21.i = lshr i32 %76, 8
  %77 = trunc i32 %shr21.i to i8
  %conv23.i = and i8 %77, 127
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %67, i8 %conv23.i) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %78 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %79, i8 0) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %80 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %81, i8 %control.addr.0.i) #10, !srcloc !210
  %conv26.i = zext i8 %56 to i32
  %transfer_buffer_length.i = getelementptr i8, ptr %16, i32 64
  %82 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %transfer_buffer_length.i, align 4
  %actual_length.i = getelementptr i8, ptr %16, i32 68
  %84 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %actual_length.i, align 4
  %sub.i = sub i32 %83, %85
  %86 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %conv26.i) #10
  %conv30.i = trunc i32 %86 to i16
  %length.i = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 8
  %87 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv30.i, ptr %length.i, align 4
  br label %cleanup

sw.bb92:                                          ; preds = %if.end90
  %transfer_buffer.i = getelementptr i8, ptr %16, i32 44
  %88 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %transfer_buffer.i, align 4
  %actual_length.i8 = getelementptr i8, ptr %16, i32 68
  %90 = ptrtoint ptr %actual_length.i8 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %actual_length.i8, align 4
  %add.ptr.i9 = getelementptr i8, ptr %89, i32 %91
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr.i9) #10, !srcloc !228
  %maxpacket.i10 = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 3
  %92 = ptrtoint ptr %maxpacket.i10 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %maxpacket.i10, align 1
  %conv.i11 = zext i8 %93 to i32
  %transfer_buffer_length.i12 = getelementptr i8, ptr %16, i32 64
  %94 = ptrtoint ptr %transfer_buffer_length.i12 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %transfer_buffer_length.i12, align 4
  %96 = ptrtoint ptr %actual_length.i8 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %actual_length.i8, align 4
  %sub.i13 = sub i32 %95, %97
  %98 = tail call i32 @llvm.umin.i32(i32 %sub.i13, i32 %conv.i11) #10
  %99 = and i8 %control.0, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i14 = icmp eq i8 %99, 0
  br i1 %tobool.not.i14, label %land.lhs.true.i19, label %sw.bb92.if.end.i_crit_edge

sw.bb92.if.end.i_crit_edge:                       ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i19:                                ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev, align 4
  %arrayidx.i = getelementptr %struct.usb_device, ptr %101, i32 0, i32 10, i32 1
  %102 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx.i, align 4
  %epnum.i16 = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 4
  %104 = ptrtoint ptr %epnum.i16 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %epnum.i16, align 2
  %conv5.i = zext i8 %105 to i32
  %106 = shl nuw i32 1, %conv5.i
  %107 = and i32 %106, %103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool7.not.i = icmp eq i32 %107, 0
  %or.i17 = or i8 %control.0, 64
  %spec.select.i18 = select i1 %tobool7.not.i, i8 %control.0, i8 %or.i17
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i19, %sw.bb92.if.end.i_crit_edge
  %control.addr.0.i20 = phi i8 [ %control.0, %sw.bb92.if.end.i_crit_edge ], [ %spec.select.i18, %land.lhs.true.i19 ]
  %108 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %data_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not.i.i = icmp eq i32 %98, 0
  br i1 %tobool.not.i.i, label %if.end.i.out_packet.exit_crit_edge, label %do.body.i.i

if.end.i.out_packet.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_packet.exit

do.body.i.i:                                      ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  tail call void @arm_heavy_mb() #10
  %110 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %111, i8 16) #10, !srcloc !210
  %112 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %data_reg.i, align 4
  br label %do.body2.i.i

do.body2.i.i:                                     ; preds = %do.body2.i.i.do.body2.i.i_crit_edge, %do.body.i.i
  %count.addr.0.i.i = phi i32 [ %98, %do.body.i.i ], [ %dec.i.i, %do.body2.i.i.do.body2.i.i_crit_edge ]
  %data.0.i.i = phi ptr [ %add.ptr.i9, %do.body.i.i ], [ %incdec.ptr.i.i, %do.body2.i.i.do.body2.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  tail call void @arm_heavy_mb() #10
  %incdec.ptr.i.i = getelementptr i8, ptr %data.0.i.i, i32 1
  %114 = ptrtoint ptr %data.0.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %data.0.i.i, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %113, i8 %115) #10, !srcloc !210
  %dec.i.i = add nsw i32 %count.addr.0.i.i, -1
  %tobool7.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool7.not.i.i, label %do.body2.i.i.out_packet.exit_crit_edge, label %do.body2.i.i.do.body2.i.i_crit_edge

do.body2.i.i.do.body2.i.i_crit_edge:              ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i.i

do.body2.i.i.out_packet.exit_crit_edge:           ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_packet.exit

out_packet.exit:                                  ; preds = %do.body2.i.i.out_packet.exit_crit_edge, %if.end.i.out_packet.exit_crit_edge
  %conv3.i = trunc i32 %98 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %116 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %117, i8 1) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %118 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %119, i8 16) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !231
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %109, i8 %conv3.i) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  tail call void @arm_heavy_mb() #10
  %epnum22.i = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 4
  %120 = ptrtoint ptr %epnum22.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %epnum22.i, align 2
  %122 = or i8 %121, 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %109, i8 %122) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  tail call void @arm_heavy_mb() #10
  %pipe.i22 = getelementptr i8, ptr %16, i32 28
  %123 = ptrtoint ptr %pipe.i22 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %pipe.i22, align 4
  %shr29.i = lshr i32 %124, 8
  %125 = trunc i32 %shr29.i to i8
  %conv31.i = and i8 %125, 127
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %109, i8 %conv31.i) #10, !srcloc !210
  %126 = or i8 %control.addr.0.i20, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %127 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %128, i8 0) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %129 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %130, i8 %126) #10, !srcloc !210
  %131 = trunc i32 %98 to i16
  %length.i23 = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 8
  %132 = ptrtoint ptr %length.i23 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %131, ptr %length.i23, align 4
  br label %cleanup

sw.bb93:                                          ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  %133 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %data_reg.i, align 4
  %setup_packet.i = getelementptr i8, ptr %16, i32 72
  %135 = ptrtoint ptr %setup_packet.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %setup_packet.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  tail call void @arm_heavy_mb() #10
  %137 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %138, i8 16) #10, !srcloc !210
  %139 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  tail call void @arm_heavy_mb() #10
  %incdec.ptr.i.i25 = getelementptr i8, ptr %136, i32 1
  %141 = ptrtoint ptr %136 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %136, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %140, i8 %142) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  tail call void @arm_heavy_mb() #10
  %incdec.ptr.i.1.i = getelementptr i8, ptr %136, i32 2
  %143 = ptrtoint ptr %incdec.ptr.i.i25 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %incdec.ptr.i.i25, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %140, i8 %144) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  tail call void @arm_heavy_mb() #10
  %incdec.ptr.i.2.i = getelementptr i8, ptr %136, i32 3
  %145 = ptrtoint ptr %incdec.ptr.i.1.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %incdec.ptr.i.1.i, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %140, i8 %146) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  tail call void @arm_heavy_mb() #10
  %incdec.ptr.i.3.i = getelementptr i8, ptr %136, i32 4
  %147 = ptrtoint ptr %incdec.ptr.i.2.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %incdec.ptr.i.2.i, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %140, i8 %148) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  tail call void @arm_heavy_mb() #10
  %incdec.ptr.i.4.i = getelementptr i8, ptr %136, i32 5
  %149 = ptrtoint ptr %incdec.ptr.i.3.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %incdec.ptr.i.3.i, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %140, i8 %150) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  tail call void @arm_heavy_mb() #10
  %incdec.ptr.i.5.i = getelementptr i8, ptr %136, i32 6
  %151 = ptrtoint ptr %incdec.ptr.i.4.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %incdec.ptr.i.4.i, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %140, i8 %152) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  tail call void @arm_heavy_mb() #10
  %incdec.ptr.i.6.i = getelementptr i8, ptr %136, i32 7
  %153 = ptrtoint ptr %incdec.ptr.i.5.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %incdec.ptr.i.5.i, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %140, i8 %154) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  tail call void @arm_heavy_mb() #10
  %155 = ptrtoint ptr %incdec.ptr.i.6.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %incdec.ptr.i.6.i, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %140, i8 %156) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %157 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %158, i8 1) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %159 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %160, i8 16) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !234
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %134, i8 8) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !235
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %134, i8 -48) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  %pipe.i26 = getelementptr i8, ptr %16, i32 28
  %161 = ptrtoint ptr %pipe.i26 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %pipe.i26, align 4
  %shr.i = lshr i32 %162, 8
  %163 = trunc i32 %shr.i to i8
  %conv13.i = and i8 %163, 127
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %134, i8 %conv13.i) #10, !srcloc !210
  %164 = or i8 %control.0, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %165 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %166, i8 0) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %167 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %168, i8 %164) #10, !srcloc !210
  %length.i27 = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 8
  %169 = ptrtoint ptr %length.i27 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 0, ptr %length.i27, align 4
  br label %cleanup

sw.bb94:                                          ; preds = %if.end90
  %transfer_buffer_length.i28 = getelementptr i8, ptr %16, i32 64
  %170 = ptrtoint ptr %transfer_buffer_length.i28 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %transfer_buffer_length.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool.not.i29 = icmp eq i32 %171, 0
  br i1 %tobool.not.i29, label %sw.bb94.status_packet.exit_crit_edge, label %land.rhs.i

sw.bb94.status_packet.exit_crit_edge:             ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #12
  br label %status_packet.exit

land.rhs.i:                                       ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #12
  %pipe.i30 = getelementptr i8, ptr %16, i32 28
  %172 = ptrtoint ptr %pipe.i30 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %pipe.i30, align 4
  %and.i = and i32 %173, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.i = icmp ne i32 %and.i, 0
  br label %status_packet.exit

status_packet.exit:                               ; preds = %land.rhs.i, %sw.bb94.status_packet.exit_crit_edge
  %174 = phi i1 [ false, %sw.bb94.status_packet.exit_crit_edge ], [ %tobool1.i, %land.rhs.i ]
  %175 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %177 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %178, i8 1) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %179 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %180, i8 0) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !237
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %176, i8 0) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !238
  tail call void @arm_heavy_mb() #10
  %spec.select41 = select i1 %174, i8 16, i8 -112
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %176, i8 %spec.select41) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  tail call void @arm_heavy_mb() #10
  %pipe11.i = getelementptr i8, ptr %16, i32 28
  %181 = ptrtoint ptr %pipe11.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %pipe11.i, align 4
  %shr.i33 = lshr i32 %182, 8
  %183 = trunc i32 %shr.i33 to i8
  %conv13.i34 = and i8 %183, 127
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %176, i8 %conv13.i34) #10, !srcloc !210
  %184 = select i1 %174, i8 68, i8 64
  %185 = or i8 %184, %control.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %186 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %187, i8 0) #10, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %188 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %189, i8 %185) #10, !srcloc !210
  %length.i35 = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 8
  %190 = ptrtoint ptr %length.i35 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 0, ptr %length.i35, align 4
  br label %cleanup

do.body95:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start, %if.then107)) #10
          to label %cleanup [label %if.then107], !srcloc !213

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i36 = getelementptr i8, ptr %sl811, i32 -600
  %191 = ptrtoint ptr %add.ptr.i36 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %add.ptr.i36, align 8
  %193 = ptrtoint ptr %nextpid to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %nextpid, align 1
  %conv112 = zext i8 %194 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start.__UNIQUE_ID_ddebug244, ptr noundef %192, ptr noundef nonnull @.str.16, ptr noundef %ep.1, i32 noundef %conv112) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then107, %do.body95, %status_packet.exit, %sw.bb93, %out_packet.exit, %in_packet.exit, %do.end.i, %if.end67.cleanup_crit_edge, %if.then40, %do.body, %if.else6.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.else6.cleanup_crit_edge ], [ null, %if.then40 ], [ %ep.1, %status_packet.exit ], [ %ep.1, %sw.bb93 ], [ %ep.1, %out_packet.exit ], [ %ep.1, %in_packet.exit ], [ null, %if.then107 ], [ null, %do.body ], [ null, %if.end67.cleanup_crit_edge ], [ null, %do.end.i ], [ null, %do.body95 ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sofirq_on(ptr nocapture noundef %sl811) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %irq_enable = getelementptr inbounds %struct.sl811, ptr %sl811, i32 0, i32 21
  %0 = ptrtoint ptr %irq_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq_enable, align 2
  %2 = and i8 %1, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %do.body, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sofirq_on.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sofirq_on, %if.then4)) #10
          to label %do.end [label %if.then4], !srcloc !213

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %sl811, i32 -600
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sofirq_on.__UNIQUE_ID_ddebug241, ptr noundef %4, ptr noundef nonnull @.str.18) #10
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %5 = ptrtoint ptr %irq_enable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %irq_enable, align 2
  %7 = or i8 %6, 16
  store i8 %7, ptr %irq_enable, align 2
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_link_urb_to_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @usb_maxpacket(ptr nocapture noundef readonly %udev, i32 noundef %pipe, i32 noundef %is_out) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = lshr i32 %pipe, 15
  %and = and i32 %0, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_out)
  %tobool.not = icmp eq i32 %is_out, 0
  %and24 = and i32 %pipe, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool25.not, label %if.then.if.end_crit_edge, label %do.end, !prof !221

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 1981, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %arrayidx = getelementptr %struct.usb_device, ptr %udev, i32 0, i32 22, i32 %and
  br label %if.end58

if.else:                                          ; preds = %entry
  br i1 %tobool25.not, label %do.end43, label %if.else.if.end49_crit_edge, !prof !218

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

do.end43:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 1984, i32 noundef 9, ptr noundef null) #10
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %if.else.if.end49_crit_edge
  %arrayidx57 = getelementptr %struct.usb_device, ptr %udev, i32 0, i32 21, i32 %and
  br label %if.end58

if.end58:                                         ; preds = %if.end49, %if.end
  %ep.0.in = phi ptr [ %arrayidx, %if.end ], [ %arrayidx57, %if.end49 ]
  %1 = ptrtoint ptr %ep.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %ep.0 = load ptr, ptr %ep.0.in, align 4
  %tobool59.not = icmp eq ptr %ep.0, null
  br i1 %tobool59.not, label %if.end58.cleanup_crit_edge, label %if.end61

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end61:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.0, i32 0, i32 4
  %2 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %wMaxPacketSize.i, align 1
  %4 = and i16 %3, -249
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.end58.cleanup_crit_edge
  %retval.0 = phi i16 [ %5, %if.end61 ], [ 0, %if.end58.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_calc_bus_time(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @balance(ptr nocapture noundef readonly %sl811, i16 noundef zeroext %period, i16 noundef zeroext %load) unnamed_addr #6 align 64 {
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
  %arrayidx = getelementptr %struct.sl811, ptr %sl811, i32 0, i32 24, i32 %branch.052
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %arrayidx7 = getelementptr %struct.sl811, ptr %sl811, i32 0, i32 24, i32 %i.049
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
  %arrayidx16 = getelementptr %struct.sl811, ptr %sl811, i32 0, i32 24, i32 %j.046
  %4 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx16, align 2
  %conv17 = zext i16 %5 to i32
  %add = add nuw nsw i32 %conv17, %conv18
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %add)
  %cmp19 = icmp ugt i32 %add, 500
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
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_check_unlink_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl811h_debug_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @sl811h_debug_show, ptr noundef %1) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl811h_debug_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %product_desc = getelementptr i8, ptr %1, i32 -428
  %2 = ptrtoint ptr %product_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %product_desc, align 4
  %port1 = getelementptr inbounds %struct.sl811, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.50, ptr noundef %3, ptr noundef nonnull @hcd_name, ptr noundef nonnull @.str.51, i32 noundef %5) #10
  %stat_insrmv = getelementptr inbounds %struct.sl811, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %stat_insrmv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stat_insrmv, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.52, i32 noundef %7) #10
  %stat_a = getelementptr inbounds %struct.sl811, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %stat_a to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stat_a, align 4
  %stat_b = getelementptr inbounds %struct.sl811, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %stat_b to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stat_b, align 4
  %stat_wake = getelementptr inbounds %struct.sl811, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %stat_wake to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stat_wake, align 4
  %stat_sof = getelementptr inbounds %struct.sl811, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %stat_sof to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stat_sof, align 4
  %stat_overrun = getelementptr inbounds %struct.sl811, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %stat_overrun to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stat_overrun, align 4
  %stat_lost = getelementptr inbounds %struct.sl811, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %stat_lost to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stat_lost, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.53, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #10
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %ctrl1 = getelementptr inbounds %struct.sl811, ptr %1, i32 0, i32 19
  %20 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ctrl1, align 4
  %22 = and i8 %21, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54) #10
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  tail call void @arm_heavy_mb() #10
  %addr_reg.i = getelementptr inbounds %struct.sl811, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %24, i8 5) #10, !srcloc !210
  %data_reg.i = getelementptr inbounds %struct.sl811, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data_reg.i, align 4
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %26) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  %conv2 = zext i8 %27 to i32
  %and4 = and i32 %conv2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %cond = select i1 %tobool5.not, ptr @.str.57, ptr @.str.56
  %and8 = and i32 %conv2, 24
  %28 = zext i32 %and8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %and8, label %sw.default [
    i32 0, label %if.else.sw.epilog_crit_edge
    i32 8, label %sw.bb9
    i32 24, label %sw.bb10
  ]

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %sw.bb9, %if.else.sw.epilog_crit_edge
  %s6.0 = phi ptr [ @.str.60, %sw.default ], [ @.str.59, %sw.bb10 ], [ @.str.58, %sw.bb9 ], [ @.str.57, %if.else.sw.epilog_crit_edge ]
  %and12 = and i32 %conv2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %cond14 = select i1 %tobool13.not, ptr @.str.57, ptr @.str.61
  %and16 = and i32 %conv2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %cond18 = select i1 %tobool17.not, ptr @.str.57, ptr @.str.62
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.55, i32 noundef %conv2, ptr noundef nonnull %cond, ptr noundef nonnull %s6.0, ptr noundef nonnull %cond14, ptr noundef nonnull %cond18) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  tail call void @arm_heavy_mb() #10
  %29 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %30, i8 6) #10, !srcloc !210
  %31 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data_reg.i, align 4
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %32) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  %conv.i = zext i8 %33 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.57, ptr @.str.83
  %and3.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %cond5.i = select i1 %tobool4.not.i, ptr @.str.57, ptr @.str.84
  %and7.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %cond9.i = select i1 %tobool8.not.i, ptr @.str.57, ptr @.str.85
  %and11.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %cond13.i = select i1 %tobool12.not.i, ptr @.str.57, ptr @.str.86
  %and15.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %cond17.i = select i1 %tobool16.not.i, ptr @.str.57, ptr @.str.87
  %and19.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %cond21.i = select i1 %tobool20.not.i, ptr @.str.57, ptr @.str.88
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.63, i32 noundef %conv.i, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond5.i, ptr noundef nonnull %cond9.i, ptr noundef nonnull %cond13.i, ptr noundef nonnull %cond17.i, ptr noundef nonnull %cond21.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  tail call void @arm_heavy_mb() #10
  %34 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %35, i8 13) #10, !srcloc !210
  %36 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data_reg.i, align 4
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %37) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  %conv.i218 = zext i8 %38 to i32
  %and.i219 = and i32 %conv.i218, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i219)
  %tobool.not.i220 = icmp eq i32 %and.i219, 0
  %cond.i221 = select i1 %tobool.not.i220, ptr @.str.57, ptr @.str.83
  %and3.i222 = and i32 %conv.i218, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i222)
  %tobool4.not.i223 = icmp eq i32 %and3.i222, 0
  %cond5.i224 = select i1 %tobool4.not.i223, ptr @.str.57, ptr @.str.84
  %and7.i225 = and i32 %conv.i218, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i225)
  %tobool8.not.i226 = icmp eq i32 %and7.i225, 0
  %cond9.i227 = select i1 %tobool8.not.i226, ptr @.str.57, ptr @.str.85
  %and11.i228 = and i32 %conv.i218, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i228)
  %tobool12.not.i229 = icmp eq i32 %and11.i228, 0
  %cond13.i230 = select i1 %tobool12.not.i229, ptr @.str.57, ptr @.str.86
  %and15.i231 = and i32 %conv.i218, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i231)
  %tobool16.not.i232 = icmp eq i32 %and15.i231, 0
  %cond17.i233 = select i1 %tobool16.not.i232, ptr @.str.57, ptr @.str.87
  %and19.i234 = and i32 %conv.i218, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i234)
  %tobool20.not.i235 = icmp eq i32 %and19.i234, 0
  %cond21.i236 = select i1 %tobool20.not.i235, ptr @.str.57, ptr @.str.88
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.64, i32 noundef %conv.i218, ptr noundef nonnull %cond.i221, ptr noundef nonnull %cond5.i224, ptr noundef nonnull %cond9.i227, ptr noundef nonnull %cond13.i230, ptr noundef nonnull %cond17.i233, ptr noundef nonnull %cond21.i236) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  tail call void @arm_heavy_mb() #10
  %39 = ptrtoint ptr %addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %addr_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %40, i8 15) #10, !srcloc !210
  %41 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data_reg.i, align 4
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %42) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  %conv22 = zext i8 %43 to i32
  %shl = shl nuw nsw i32 %conv22, 6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.65, i32 noundef %shl) #10
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then
  %active_a = getelementptr inbounds %struct.sl811, ptr %1, i32 0, i32 14
  %44 = ptrtoint ptr %active_a to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %active_a, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  tail call void @arm_heavy_mb() #10
  %addr_reg.i239 = getelementptr inbounds %struct.sl811, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %addr_reg.i239 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %addr_reg.i239, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %47, i8 0) #10, !srcloc !210
  %data_reg.i240 = getelementptr inbounds %struct.sl811, ptr %1, i32 0, i32 2
  %48 = ptrtoint ptr %data_reg.i240 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data_reg.i240, align 4
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %49) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  %conv24 = zext i8 %50 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  tail call void @arm_heavy_mb() #10
  %51 = ptrtoint ptr %addr_reg.i239 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %addr_reg.i239, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %52, i8 3) #10, !srcloc !210
  %53 = ptrtoint ptr %data_reg.i240 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data_reg.i240, align 4
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %54) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  %conv26 = zext i8 %55 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.66, ptr noundef %45, i32 noundef %conv24, i32 noundef %conv26) #10
  %active_b = getelementptr inbounds %struct.sl811, ptr %1, i32 0, i32 16
  %56 = ptrtoint ptr %active_b to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %active_b, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  tail call void @arm_heavy_mb() #10
  %58 = ptrtoint ptr %addr_reg.i239 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %addr_reg.i239, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %59, i8 8) #10, !srcloc !210
  %60 = ptrtoint ptr %data_reg.i240 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data_reg.i240, align 4
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %61) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  %conv28 = zext i8 %62 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  tail call void @arm_heavy_mb() #10
  %63 = ptrtoint ptr %addr_reg.i239 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %addr_reg.i239, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %64, i8 11) #10, !srcloc !210
  %65 = ptrtoint ptr %data_reg.i240 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data_reg.i240, align 4
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %66) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  %conv30 = zext i8 %67 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.67, ptr noundef %57, i32 noundef %conv28, i32 noundef %conv30) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.68) #10
  %async = getelementptr inbounds %struct.sl811, ptr %1, i32 0, i32 23
  %68 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn252 = load ptr, ptr %async, align 4
  %cmp.not254 = icmp eq ptr %.pn252, %async
  br i1 %cmp.not254, label %if.end.for.end78_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end78_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end78

for.cond.loopexit:                                ; preds = %for.body66.for.cond.loopexit_crit_edge, %sw.epilog50.for.cond.loopexit_crit_edge
  %69 = ptrtoint ptr %.pn255 to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pn = load ptr, ptr %.pn255, align 4
  %cmp.not = icmp eq ptr %.pn, %async
  br i1 %cmp.not, label %for.cond.loopexit.for.end78_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.loopexit.for.end78_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end78

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn255 = phi ptr [ %.pn, %for.cond.loopexit.for.body_crit_edge ], [ %.pn252, %if.end.for.body_crit_edge ]
  %ep.0256 = getelementptr i8, ptr %.pn255, i32 -28
  %70 = ptrtoint ptr %active_a to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %active_a, align 4
  %cmp35 = icmp eq ptr %ep.0256, %71
  %cond37 = select i1 %cmp35, ptr @.str.70, ptr @.str.57
  %72 = ptrtoint ptr %active_b to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %active_b, align 4
  %cmp39 = icmp eq ptr %ep.0256, %73
  %cond41 = select i1 %cmp39, ptr @.str.71, ptr @.str.57
  %epnum = getelementptr i8, ptr %.pn255, i32 -18
  %74 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %epnum, align 2
  %conv42 = zext i8 %75 to i32
  %nextpid = getelementptr i8, ptr %.pn255, i32 -17
  %76 = ptrtoint ptr %nextpid to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %nextpid, align 1
  %78 = zext i8 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.97)
  switch i8 %77, label %sw.default49 [
    i8 105, label %for.body.sw.epilog50_crit_edge
    i8 -31, label %sw.bb46
    i8 45, label %sw.bb47
    i8 -46, label %sw.bb48
  ]

for.body.sw.epilog50_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog50

sw.bb46:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog50

sw.bb47:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog50

sw.bb48:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog50

sw.default49:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog50

sw.epilog50:                                      ; preds = %sw.default49, %sw.bb48, %sw.bb47, %sw.bb46, %for.body.sw.epilog50_crit_edge
  %s43.0 = phi ptr [ @.str.76, %sw.default49 ], [ @.str.75, %sw.bb48 ], [ @.str.74, %sw.bb47 ], [ @.str.73, %sw.bb46 ], [ @.str.72, %for.body.sw.epilog50_crit_edge ]
  %maxpacket = getelementptr i8, ptr %.pn255, i32 -19
  %79 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %maxpacket, align 1
  %conv52 = zext i8 %80 to i32
  %nak_count = getelementptr i8, ptr %.pn255, i32 -14
  %81 = ptrtoint ptr %nak_count to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %nak_count, align 2
  %conv53 = zext i16 %82 to i32
  %error_count = getelementptr i8, ptr %.pn255, i32 -16
  %83 = ptrtoint ptr %error_count to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %error_count, align 4
  %conv54 = zext i16 %84 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.69, ptr noundef nonnull %cond37, ptr noundef nonnull %cond41, ptr noundef %ep.0256, i32 noundef %conv42, ptr noundef nonnull %s43.0, i32 noundef %conv52, i32 noundef %conv53, i32 noundef %conv54) #10
  %85 = ptrtoint ptr %ep.0256 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ep.0256, align 4
  %urb_list = getelementptr inbounds %struct.usb_host_endpoint, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %urb_list to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pn213248 = load ptr, ptr %urb_list, align 4
  %cmp63.not250 = icmp eq ptr %.pn213248, %urb_list
  br i1 %cmp63.not250, label %sw.epilog50.for.cond.loopexit_crit_edge, label %sw.epilog50.for.body66_crit_edge

sw.epilog50.for.body66_crit_edge:                 ; preds = %sw.epilog50
  br label %for.body66

sw.epilog50.for.cond.loopexit_crit_edge:          ; preds = %sw.epilog50
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.body66:                                       ; preds = %for.body66.for.body66_crit_edge, %sw.epilog50.for.body66_crit_edge
  %.pn213251 = phi ptr [ %.pn213, %for.body66.for.body66_crit_edge ], [ %.pn213248, %sw.epilog50.for.body66_crit_edge ]
  %urb.0 = getelementptr i8, ptr %.pn213251, i32 -20
  %actual_length = getelementptr i8, ptr %.pn213251, i32 68
  %88 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %actual_length, align 4
  %transfer_buffer_length = getelementptr i8, ptr %.pn213251, i32 64
  %90 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %transfer_buffer_length, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.77, ptr noundef %urb.0, i32 noundef %89, i32 noundef %91) #10
  %92 = ptrtoint ptr %.pn213251 to i32
  call void @__asan_load4_noabort(i32 %92)
  %.pn213 = load ptr, ptr %.pn213251, align 4
  %93 = ptrtoint ptr %ep.0256 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ep.0256, align 4
  %urb_list62 = getelementptr inbounds %struct.usb_host_endpoint, ptr %94, i32 0, i32 4
  %cmp63.not = icmp eq ptr %.pn213, %urb_list62
  br i1 %cmp63.not, label %for.body66.for.cond.loopexit_crit_edge, label %for.body66.for.body66_crit_edge

for.body66.for.body66_crit_edge:                  ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body66

for.body66.for.cond.loopexit_crit_edge:           ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.end78:                                        ; preds = %for.cond.loopexit.for.end78_crit_edge, %if.end.for.end78_crit_edge
  %95 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile ptr, ptr %async, align 4
  %cmp.i.not = icmp eq ptr %96, %async
  br i1 %cmp.i.not, label %for.end78.if.end83_crit_edge, label %if.then82

for.end78.if.end83_crit_edge:                     ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then82:                                        ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.68) #10
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %for.end78.if.end83_crit_edge
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.78, i32 noundef 32) #10
  br label %for.body87

for.body87:                                       ; preds = %for.inc124.for.body87_crit_edge, %if.end83
  %i.0257 = phi i32 [ 0, %if.end83 ], [ %inc, %for.inc124.for.body87_crit_edge ]
  %arrayidx = getelementptr %struct.sl811, ptr %1, i32 0, i32 25, i32 %i.0257
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx, align 4
  %tobool88.not = icmp eq ptr %98, null
  br i1 %tobool88.not, label %for.body87.for.inc124_crit_edge, label %if.end90

for.body87.for.inc124_crit_edge:                  ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc124

if.end90:                                         ; preds = %for.body87
  %arrayidx91 = getelementptr %struct.sl811, ptr %1, i32 0, i32 24, i32 %i.0257
  %99 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %arrayidx91, align 2
  %conv92 = zext i16 %100 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.79, i32 noundef %i.0257, i32 noundef %conv92) #10
  br label %do.body

do.body:                                          ; preds = %cond.end.do.body_crit_edge, %if.end90
  %ep.1 = phi ptr [ %98, %if.end90 ], [ %122, %cond.end.do.body_crit_edge ]
  %101 = ptrtoint ptr %active_a to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %active_a, align 4
  %cmp94 = icmp eq ptr %ep.1, %102
  %cond96 = select i1 %cmp94, ptr @.str.70, ptr @.str.57
  %103 = ptrtoint ptr %active_b to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %active_b, align 4
  %cmp98 = icmp eq ptr %ep.1, %104
  %cond100 = select i1 %cmp98, ptr @.str.71, ptr @.str.57
  %period = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 9
  %105 = ptrtoint ptr %period to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %period, align 2
  %conv101 = zext i16 %106 to i32
  %udev = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 1
  %107 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %udev, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %108, i32 0, i32 4
  %109 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %110)
  %cmp102 = icmp eq i32 %110, 2
  %cond104 = select i1 %cmp102, ptr @.str.57, ptr @.str.81
  %111 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %108, align 8
  %epnum106 = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 4
  %113 = ptrtoint ptr %epnum106 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %epnum106, align 2
  %conv107 = zext i8 %114 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %cmp110 = icmp eq i8 %114, 0
  br i1 %cmp110, label %do.body.cond.end_crit_edge, label %cond.false

do.body.cond.end_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %nextpid112 = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 5
  %115 = ptrtoint ptr %nextpid112 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %nextpid112, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 105, i8 %116)
  %cmp114 = icmp eq i8 %116, 105
  %cond116 = select i1 %cmp114, ptr @.str.72, ptr @.str.73
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.body.cond.end_crit_edge
  %cond117 = phi ptr [ %cond116, %cond.false ], [ @.str.57, %do.body.cond.end_crit_edge ]
  %maxpacket118 = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 3
  %117 = ptrtoint ptr %maxpacket118 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %maxpacket118, align 1
  %conv119 = zext i8 %118 to i32
  %error_count120 = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 6
  %119 = ptrtoint ptr %error_count120 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %error_count120, align 4
  %conv121 = zext i16 %120 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.80, ptr noundef nonnull %cond96, ptr noundef nonnull %cond100, i32 noundef %conv101, ptr noundef nonnull %ep.1, ptr noundef nonnull %cond104, i32 noundef %112, i32 noundef %conv107, ptr noundef nonnull %cond117, i32 noundef %conv119, i32 noundef %conv121) #10
  %next122 = getelementptr inbounds %struct.sl811h_ep, ptr %ep.1, i32 0, i32 12
  %121 = ptrtoint ptr %next122 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %next122, align 4
  %tobool123.not = icmp eq ptr %122, null
  br i1 %tobool123.not, label %cond.end.for.inc124_crit_edge, label %cond.end.do.body_crit_edge

cond.end.do.body_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

cond.end.for.inc124_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc124

for.inc124:                                       ; preds = %cond.end.for.inc124_crit_edge, %for.body87.for.inc124_crit_edge
  %inc = add nuw nsw i32 %i.0257, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end125, label %for.inc124.for.body87_crit_edge

for.inc124.for.body87_crit_edge:                  ; preds = %for.inc124
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body87

for.end125:                                       ; preds = %for.inc124
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.68) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_root_hub_lost_power(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !16, !17, !19, !20, !22, !24, !26, !27, !28, !29, !30, !32, !33, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !95, !96, !97, !99, !100, !102, !103, !104, !106, !107, !109, !110, !112, !113, !114, !115, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198}
!llvm.module.flags = !{!200, !201, !202, !203, !204, !205, !206, !207}
!llvm.ident = !{!208}

!0 = !{ptr @__UNIQUE_ID_description232, !1, !"__UNIQUE_ID_description232", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/sl811-hcd.c", i32 62, i32 1}
!2 = !{ptr @__UNIQUE_ID_file233, !3, !"__UNIQUE_ID_file233", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/sl811-hcd.c", i32 63, i32 1}
!4 = !{ptr @__UNIQUE_ID_license234, !3, !"__UNIQUE_ID_license234", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_alias235, !6, !"__UNIQUE_ID_alias235", i1 false, i1 false}
!6 = !{!"../drivers/usb/host/sl811-hcd.c", i32 64, i32 1}
!7 = !{ptr @sl811h_driver, !8, !"sl811h_driver", i1 false, i1 false}
!8 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1784, i32 24}
!9 = !{ptr @__ksymtab_sl811h_driver, !10, !"__ksymtab_sl811h_driver", i1 false, i1 false}
!10 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1794, i32 1}
!11 = !{ptr @__initcall__kmod_sl811_hcd__262_1796_sl811h_driver_init6, !12, !"__initcall__kmod_sl811_hcd__262_1796_sl811h_driver_init6", i1 false, i1 false}
!12 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1796, i32 1}
!13 = !{ptr @__exitcall_sl811h_driver_exit, !12, !"__exitcall_sl811h_driver_exit", i1 false, i1 false}
!14 = !{ptr @sl811h_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1671, i32 2}
!16 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @sl811h_probe.__key.1, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1674, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1686, i32 23}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1689, i32 23}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1693, i32 3}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @sl811h_probe.__UNIQUE_ID_ddebug260, !25, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1726, i32 2}
!32 = !{ptr @sl811h_probe.__UNIQUE_ID_ddebug261, !31, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!33 = !{ptr @sl811h_hc_driver, !34, !"sl811h_hc_driver", i1 false, i1 false}
!34 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1545, i32 31}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/host/sl811-hcd.c", i32 729, i32 4}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @sl811h_irq.__UNIQUE_ID_ddebug247, !36, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/host/sl811-hcd.c", i32 450, i32 2}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @finish_request.__UNIQUE_ID_ddebug245, !40, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/host/sl811-hcd.c", i32 339, i32 3}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @start.__UNIQUE_ID_ddebug243, !44, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/host/sl811-hcd.c", i32 393, i32 3}
!49 = !{ptr @start.__UNIQUE_ID_ddebug244, !48, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/host/sl811-hcd.c", i32 283, i32 2}
!52 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @sofirq_on.__UNIQUE_ID_ddebug241, !51, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/host/sl811-hcd.c", i32 291, i32 2}
!56 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @sofirq_off.__UNIQUE_ID_ddebug242, !55, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/host/sl811-hcd.c", i32 858, i32 4}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @sl811h_urb_enqueue.__UNIQUE_ID_ddebug248, !59, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/host/sl811-hcd.c", i32 924, i32 3}
!64 = !{ptr @sl811h_urb_enqueue.__UNIQUE_ID_ddebug249, !63, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/host/sl811-hcd.c", i32 984, i32 5}
!69 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @sl811h_urb_dequeue.__UNIQUE_ID_ddebug250, !68, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1018, i32 4}
!73 = !{ptr @sl811h_urb_dequeue.__UNIQUE_ID_ddebug251, !72, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!74 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1040, i32 3}
!78 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @sl811h_endpoint_disable._entry, !77, !"_entry", i1 false, i1 false}
!82 = !{ptr @sl811h_endpoint_disable._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1255, i32 4}
!85 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @sl811h_hub_control.__UNIQUE_ID_ddebug255, !84, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1292, i32 4}
!89 = !{ptr @sl811h_hub_control.__UNIQUE_ID_ddebug256, !88, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1305, i32 4}
!92 = !{ptr @sl811h_hub_control.__UNIQUE_ID_ddebug257, !91, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1350, i32 2}
!95 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @sl811h_bus_suspend.__UNIQUE_ID_ddebug258, !94, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1358, i32 2}
!99 = !{ptr @sl811h_bus_resume.__UNIQUE_ID_ddebug259, !98, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1143, i32 3}
!102 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @sl811h_timer.__UNIQUE_ID_ddebug252, !101, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1152, i32 3}
!106 = !{ptr @sl811h_timer.__UNIQUE_ID_ddebug253, !105, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1156, i32 3}
!109 = !{ptr @sl811h_timer.__UNIQUE_ID_ddebug254, !108, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/host/sl811-hcd.c", i32 100, i32 3}
!112 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @port_power.__UNIQUE_ID_ddebug236, !111, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!114 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1498, i32 22}
!118 = !{ptr @sl811h_debug_fops, !119, !"sl811h_debug_fops", i1 false, i1 false}
!119 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1493, i32 1}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1389, i32 16}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1391, i32 13}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1394, i32 16}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1395, i32 16}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1404, i32 17}
!130 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1408, i32 17}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1409, i32 35}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1409, i32 47}
!136 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1412, i32 33}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1413, i32 31}
!140 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1414, i32 17}
!142 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1416, i32 32}
!144 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1417, i32 35}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1419, i32 15}
!148 = !{ptr @.str.64, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1421, i32 15}
!150 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1423, i32 17}
!152 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1427, i32 16}
!154 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1430, i32 16}
!156 = !{ptr @.str.68, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1433, i32 16}
!158 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1437, i32 17}
!160 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1439, i32 30}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1440, i32 30}
!164 = !{ptr @.str.72, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1443, i32 25}
!166 = !{ptr @.str.73, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1444, i32 26}
!168 = !{ptr @.str.74, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1445, i32 28}
!170 = !{ptr @.str.75, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1446, i32 26}
!172 = !{ptr @.str.76, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1447, i32 17}
!174 = !{ptr @.str.77, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1452, i32 18}
!176 = !{ptr @.str.78, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1460, i32 16}
!178 = !{ptr @.str.79, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1466, i32 17}
!180 = !{ptr @.str.80, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1471, i32 5}
!182 = !{ptr @.str.81, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1477, i32 13}
!184 = !{ptr @.str.82, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1374, i32 16}
!186 = !{ptr @.str.83, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1375, i32 35}
!188 = !{ptr @.str.84, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1376, i32 35}
!190 = !{ptr @.str.85, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1377, i32 36}
!192 = !{ptr @.str.86, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1378, i32 35}
!194 = !{ptr @.str.87, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1379, i32 31}
!196 = !{ptr @.str.88, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/usb/host/sl811-hcd.c", i32 1380, i32 31}
!198 = !{ptr @hcd_name, !199, !"hcd_name", i1 false, i1 false}
!199 = !{!"../drivers/usb/host/sl811-hcd.c", i32 74, i32 19}
!200 = !{i32 1, !"wchar_size", i32 2}
!201 = !{i32 1, !"min_enum_size", i32 4}
!202 = !{i32 8, !"branch-target-enforcement", i32 0}
!203 = !{i32 8, !"sign-return-address", i32 0}
!204 = !{i32 8, !"sign-return-address-all", i32 0}
!205 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!206 = !{i32 7, !"uwtable", i32 1}
!207 = !{i32 7, !"frame-pointer", i32 2}
!208 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!209 = !{i64 2154035648}
!210 = !{i64 5092533}
!211 = !{i64 5092928}
!212 = !{i64 2154035927}
!213 = !{i64 2148997970, i64 2148997975, i64 2148997988, i64 2148998032, i64 2148998066, i64 2148998087}
!214 = !{i64 2154036308}
!215 = !{i64 2154036571}
!216 = !{i64 2154108031}
!217 = !{i64 2154108293}
!218 = !{!"branch_weights", i32 1, i32 2000}
!219 = !{i64 2154037695}
!220 = !{i64 2154037961}
!221 = !{!"branch_weights", i32 2000, i32 1}
!222 = !{i64 788293, i64 788354}
!223 = !{i64 791025}
!224 = !{i64 791310}
!225 = !{i64 2154046756}
!226 = !{i64 2154047023}
!227 = !{i64 2154047344}
!228 = !{i64 882881}
!229 = !{i64 2154037004}
!230 = !{i64 2154037265}
!231 = !{i64 2154052181}
!232 = !{i64 2154052448}
!233 = !{i64 2154052769}
!234 = !{i64 2154044792}
!235 = !{i64 2154045047}
!236 = !{i64 2154045356}
!237 = !{i64 2154045688}
!238 = !{i64 2154045965}
!239 = !{i64 2154046293}
