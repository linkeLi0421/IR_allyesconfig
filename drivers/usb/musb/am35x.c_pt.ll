; ModuleID = '/llk/IR_all_yes/drivers/usb/musb/am35x.c_pt.bc'
source_filename = "../drivers/usb/musb/am35x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.musb_platform_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.am35x_glue = type { ptr, ptr, ptr, ptr, ptr }
%struct.musb_hdrc_platform_data = type { i8, ptr, ptr, i8, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.musb = type { %struct.spinlock, %struct.spinlock, %struct.musb_io, ptr, %struct.musb_context_registers, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i16, i16, i16, i32, i32, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, i32, ptr, i8, i8, i16, i16, ptr, ptr, i32, i8, [16 x %struct.musb_hw_ep], i16, i16, i8, ptr, i8, i32, i8, i32, i8, i32, i32, [3 x i8], i8, i8, i16, i8, %struct.usb_gadget, ptr, ptr, ptr, i32, ptr }
%struct.musb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_context_registers = type { i8, i8, i16, i8, i8, i8, i8, i8, i32, [16 x %struct.musb_csr_regs] }
%struct.musb_csr_regs = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.musb_hw_ep = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, i8, %struct.musb_ep, %struct.musb_ep }
%struct.musb_ep = type { %struct.usb_ep, [12 x i8], ptr, ptr, i8, i8, i8, i16, ptr, ptr, %struct.list_head, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.omap_musb_board_data = type { i8, i8, i16, i8, ptr, ptr, ptr, ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_description300 = internal constant [40 x i8] c"am35x.description=AM35x MUSB Glue Layer\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [50 x i8] c"am35x.author=Ajay Kumar Gupta <ajay.gupta@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [34 x i8] c"am35x.file=drivers/usb/musb/am35x\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [21 x i8] c"am35x.license=GPL v2\00", section ".modinfo", align 1
@__initcall__kmod_am35x__304_610_am35x_driver_init6 = internal global ptr @am35x_driver_init, section ".initcall6.init", align 4
@am35x_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @am35x_probe, ptr @am35x_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @am35x_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_am35x_driver_exit = internal global ptr @am35x_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"musb-am35x\00", [21 x i8] zeroinitializer }, align 32
@am35x_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @am35x_suspend, ptr @am35x_resume, ptr @am35x_suspend, ptr @am35x_resume, ptr @am35x_suspend, ptr @am35x_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@am35x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 460, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get PHY clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"am35x_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/usb/musb/am35x.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@am35x_probe._entry_ptr = internal global ptr @am35x_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ick\00", [28 x i8] zeroinitializer }, align 32
@am35x_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 467, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@am35x_probe._entry_ptr.10 = internal global ptr @am35x_probe._entry.8, section ".printk_index", align 4
@am35x_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 474, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable PHY clock\0A\00", [36 x i8] zeroinitializer }, align 32
@am35x_probe._entry_ptr.13 = internal global ptr @am35x_probe._entry.11, section ".printk_index", align 4
@am35x_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 480, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@am35x_probe._entry_ptr.16 = internal global ptr @am35x_probe._entry.14, section ".printk_index", align 4
@am35x_ops = internal constant { %struct.musb_platform_ops, [36 x i8] } { %struct.musb_platform_ops { i32 5, ptr @am35x_musb_init, ptr @am35x_musb_exit, ptr @am35x_musb_enable, ptr @am35x_musb_disable, ptr null, ptr null, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @am35x_read_fifo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @am35x_musb_set_mode, ptr @am35x_musb_try_idle, ptr null, ptr null, ptr @am35x_musb_set_vbus, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@am35x_dev_info = internal constant { %struct.platform_device_info, [40 x i8] } { %struct.platform_device_info { ptr null, ptr null, i8 0, ptr @.str.35, i32 -2, ptr null, i32 0, ptr null, i32 0, i64 4294967295, ptr null }, [40 x i8] zeroinitializer }, align 32
@am35x_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 509, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register musb device: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@am35x_probe._entry_ptr.19 = internal global ptr @am35x_probe._entry.17, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@am35x_musb_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&musb->dev_timer)\00", [45 x i8] zeroinitializer }, align 32
@musb_readb = external dso_local local_unnamed_addr global ptr, align 4
@otg_timer.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.4, ptr @.str.23, i8 0, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"am35x\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"otg_timer\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Poll devctl %02x (%s)\0A\00", [41 x i8] zeroinitializer }, align 32
@musb_writeb = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@am35x_musb_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s %d: VBUS error workaround (delay coming)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"am35x_musb_interrupt\00", [43 x i8] zeroinitializer }, align 32
@am35x_musb_interrupt._entry_ptr = internal global ptr @am35x_musb_interrupt._entry, section ".printk_index", align 4
@am35x_musb_interrupt.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 0, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"VBUS %s (%s)%s, devctl %02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" ERROR\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@am35x_musb_try_idle.last_timer = internal global { i32, [28 x i8] } zeroinitializer, align 32
@am35x_musb_try_idle.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 0, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"am35x_musb_try_idle\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s active, deleting timer\0A\00", [37 x i8] zeroinitializer }, align 32
@am35x_musb_try_idle.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.31, ptr @.str.4, ptr @.str.33, i8 0, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Longer idle timer already pending, ignoring...\0A\00", [48 x i8] zeroinitializer }, align 32
@am35x_musb_try_idle.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.31, ptr @.str.4, ptr @.str.34, i8 0, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s inactive, starting idle timer for %u ms\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"musb-hdrc\00", [22 x i8] zeroinitializer }, align 32
@am35x_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.36, ptr @.str.4, i32 582, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"am35x_resume\00", [19 x i8] zeroinitializer }, align 32
@am35x_resume._entry_ptr = internal global ptr @am35x_resume._entry, section ".printk_index", align 4
@am35x_resume._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.36, ptr @.str.4, i32 588, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@am35x_resume._entry_ptr.38 = internal global ptr @am35x_resume._entry.37, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 8, i64 12]
@___asan_gen_.39 = private unnamed_addr constant [13 x i8] c"am35x_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 598, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 602, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [13 x i8] c"am35x_pm_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 596, i32 8 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 458, i32 32 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 460, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 465, i32 28 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 467, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 474, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 480, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [10 x i8] c"am35x_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 418, i32 39 }
@___asan_gen_.93 = private unnamed_addr constant [15 x i8] c"am35x_dev_info\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 437, i32 42 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 509, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 347, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 132, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 263, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 277, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [11 x i8] c"last_timer\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 170, i32 23 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 178, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 186, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 191, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 438, i32 11 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 582, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.166 = private constant [28 x i8] c"../drivers/usb/musb/am35x.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 588, i32 3 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_am35x_driver_exit, ptr @__initcall__kmod_am35x__304_610_am35x_driver_init6, ptr @am35x_driver_exit, ptr @am35x_musb_interrupt._entry, ptr @am35x_musb_interrupt._entry_ptr, ptr @am35x_probe._entry, ptr @am35x_probe._entry.11, ptr @am35x_probe._entry.14, ptr @am35x_probe._entry.17, ptr @am35x_probe._entry.8, ptr @am35x_probe._entry_ptr, ptr @am35x_probe._entry_ptr.10, ptr @am35x_probe._entry_ptr.13, ptr @am35x_probe._entry_ptr.16, ptr @am35x_probe._entry_ptr.19, ptr @am35x_resume._entry, ptr @am35x_resume._entry.37, ptr @am35x_resume._entry_ptr, ptr @am35x_resume._entry_ptr.38, ptr @am35x_driver, ptr @.str, ptr @am35x_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @am35x_ops, ptr @am35x_dev_info, ptr @.str.18, ptr @am35x_musb_init.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @am35x_musb_try_idle.last_timer, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am35x_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am35x_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am35x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am35x_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am35x_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am35x_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am35x_ops to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am35x_dev_info to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am35x_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am35x_musb_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am35x_musb_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am35x_musb_try_idle.last_timer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am35x_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am35x_resume._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @am35x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @am35x_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @am35x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @am35x_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am35x_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pinfo = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pinfo) #6
  %2 = call ptr @memset(ptr %pinfo, i32 255, i32 56)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 20) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  %4 = ptrtoint ptr %call3 to i32
  br label %err3

if.end8:                                          ; preds = %if.end
  %call10 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #6
  %cmp.i106 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  %5 = ptrtoint ptr %call10 to i32
  br label %err4

if.end18:                                         ; preds = %if.end8
  %call19 = tail call i32 @clk_enable(ptr noundef %call3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end26, label %do.end24

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  br label %err5

if.end26:                                         ; preds = %if.end18
  %call27 = tail call i32 @clk_enable(ptr noundef %call10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end34, label %do.end32

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  br label %err6

if.end34:                                         ; preds = %if.end26
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call7.i.i, align 8
  %phy_clk37 = getelementptr inbounds %struct.am35x_glue, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %phy_clk37 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3, ptr %phy_clk37, align 4
  %clk38 = getelementptr inbounds %struct.am35x_glue, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %clk38 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call10, ptr %clk38, align 8
  %platform_ops = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %platform_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @am35x_ops, ptr %platform_ops, align 4
  %call39 = tail call ptr @usb_phy_generic_register() #6
  %phy = getelementptr inbounds %struct.am35x_glue, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call39, ptr %phy, align 8
  %cmp.i107 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i107, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call39 to i32
  br label %err7

if.end45:                                         ; preds = %if.end34
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %13 = call ptr @memcpy(ptr %pinfo, ptr @am35x_dev_info, i32 56)
  %14 = ptrtoint ptr %pinfo to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %pinfo, align 8
  %resource = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 7
  %15 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %resource, align 8
  %res = getelementptr inbounds %struct.platform_device_info, ptr %pinfo, i32 0, i32 5
  %17 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %res, align 4
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 6
  %18 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_resources, align 4
  %num_res = getelementptr inbounds %struct.platform_device_info, ptr %pinfo, i32 0, i32 6
  %20 = ptrtoint ptr %num_res to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %num_res, align 8
  %data = getelementptr inbounds %struct.platform_device_info, ptr %pinfo, i32 0, i32 7
  %21 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %1, ptr %data, align 4
  %size_data = getelementptr inbounds %struct.platform_device_info, ptr %pinfo, i32 0, i32 8
  %22 = ptrtoint ptr %size_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 32, ptr %size_data, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %23 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node, align 8
  %tobool48.not = icmp eq ptr %24, null
  %fwnode = getelementptr inbounds %struct.device_node, ptr %24, i32 0, i32 3
  %spec.select = select i1 %tobool48.not, ptr null, ptr %fwnode
  %fwnode49 = getelementptr inbounds %struct.platform_device_info, ptr %pinfo, i32 0, i32 1
  %25 = ptrtoint ptr %fwnode49 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %spec.select, ptr %fwnode49, align 4
  %of_node_reused = getelementptr inbounds %struct.platform_device_info, ptr %pinfo, i32 0, i32 2
  %26 = ptrtoint ptr %of_node_reused to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %of_node_reused, align 8
  %call50 = call ptr @platform_device_register_full(ptr noundef nonnull %pinfo) #6
  %musb51 = getelementptr inbounds %struct.am35x_glue, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %musb51 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call50, ptr %musb51, align 4
  %cmp.i108 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108, label %if.then53, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then53:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %call50 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %28) #10
  %29 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %phy, align 8
  call void @usb_phy_generic_unregister(ptr noundef %30) #6
  br label %err7

err7:                                             ; preds = %if.then53, %if.then42
  %ret.0 = phi i32 [ %11, %if.then42 ], [ %28, %if.then53 ]
  call void @clk_disable(ptr noundef %call10) #6
  br label %err6

err6:                                             ; preds = %err7, %do.end32
  %ret.1 = phi i32 [ %call27, %do.end32 ], [ %ret.0, %err7 ]
  call void @clk_disable(ptr noundef %call3) #6
  br label %err5

err5:                                             ; preds = %err6, %do.end24
  %ret.2 = phi i32 [ %call19, %do.end24 ], [ %ret.1, %err6 ]
  call void @clk_put(ptr noundef %call10) #6
  br label %err4

err4:                                             ; preds = %err5, %do.end15
  %ret.3 = phi i32 [ %5, %do.end15 ], [ %ret.2, %err5 ]
  call void @clk_put(ptr noundef %call3) #6
  br label %err3

err3:                                             ; preds = %err4, %do.end
  %ret.4 = phi i32 [ %4, %do.end ], [ %ret.3, %err4 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err3, %if.end45.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end45.cleanup_crit_edge ], [ %ret.4, %err3 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pinfo) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am35x_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %musb = getelementptr inbounds %struct.am35x_glue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %musb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %musb, align 4
  tail call void @platform_device_unregister(ptr noundef %3) #6
  %phy = getelementptr inbounds %struct.am35x_glue, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  tail call void @usb_phy_generic_unregister(ptr noundef %5) #6
  %clk = getelementptr inbounds %struct.am35x_glue, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  %phy_clk = getelementptr inbounds %struct.am35x_glue, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %phy_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %11) #6
  %12 = ptrtoint ptr %phy_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_clk, align 4
  tail call void @clk_put(ptr noundef %13) #6
  tail call void @kfree(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_phy_generic_register() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_phy_generic_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am35x_musb_init(ptr noundef %musb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %board_data = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %board_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board_data, align 4
  %ctrl_base = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 26
  %6 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl_base, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %8 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mregs, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 1024
  store ptr %add.ptr, ptr %mregs, align 8
  %call1 = tail call i32 @musb_readl(ptr noundef %7, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @usb_get_phy(i32 noundef 1) #6
  %xceiv = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %10 = ptrtoint ptr %xceiv to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call2, ptr %xceiv, align 8
  %tobool.not.i = icmp eq ptr %call2, null
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  %dev_timer = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 22
  tail call void @init_timer_key(ptr noundef %dev_timer, ptr noundef nonnull @otg_timer, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef nonnull @am35x_musb_init.__key) #6
  %reset = getelementptr inbounds %struct.omap_musb_board_data, ptr %5, i32 0, i32 7
  %11 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reset, align 4
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %do.body.if.end10_crit_edge, label %if.then8

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %12() #6
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %do.body.if.end10_crit_edge
  tail call void @musb_writel(ptr noundef %7, i32 noundef 4, i32 noundef 1) #6
  %set_phy_power = getelementptr inbounds %struct.omap_musb_board_data, ptr %5, i32 0, i32 4
  %13 = ptrtoint ptr %set_phy_power to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_phy_power, align 4
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %if.end10.if.end14_crit_edge, label %if.then12

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %14(i8 noundef zeroext 1) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  tail call void @msleep(i32 noundef 5) #6
  %isr = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 5
  %15 = ptrtoint ptr %isr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @am35x_musb_interrupt, ptr %isr, align 4
  %clear_irq = getelementptr inbounds %struct.omap_musb_board_data, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %clear_irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clear_irq, align 4
  %tobool15.not = icmp eq ptr %17, null
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.then16

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %17() #6
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -517, %if.end.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am35x_musb_exit(ptr noundef %musb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %board_data = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %board_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board_data, align 4
  %dev_timer = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 22
  %call1 = tail call i32 @del_timer_sync(ptr noundef %dev_timer) #6
  %set_phy_power = getelementptr inbounds %struct.omap_musb_board_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %set_phy_power to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_phy_power, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %7(i8 noundef zeroext 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %xceiv = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %8 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xceiv, align 8
  tail call void @usb_put_phy(ptr noundef %9) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @am35x_musb_enable(ptr nocapture noundef readonly %musb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_base = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 26
  %0 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_base, align 4
  %epmask1 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 41
  %2 = ptrtoint ptr %epmask1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %epmask1, align 2
  %conv = zext i16 %3 to i32
  %and4 = shl nuw i32 %conv, 16
  %shl5 = and i32 %and4, -131072
  %or = or i32 %shl5, %conv
  tail call void @musb_writel(ptr noundef %1, i32 noundef 48, i32 noundef %or) #6
  tail call void @musb_writel(ptr noundef %1, i32 noundef 80, i32 noundef 33488896) #6
  tail call void @musb_writel(ptr noundef %1, i32 noundef 68, i32 noundef 16777216) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @am35x_musb_disable(ptr nocapture noundef readonly %musb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_base = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 26
  %0 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_base, align 4
  tail call void @musb_writel(ptr noundef %1, i32 noundef 84, i32 noundef 33488896) #6
  tail call void @musb_writel(ptr noundef %1, i32 noundef 52, i32 noundef -65537) #6
  tail call void @musb_writel(ptr noundef %1, i32 noundef 96, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @am35x_read_fifo(ptr nocapture noundef readonly %hw_ep, i16 noundef zeroext %len, ptr noundef %dst) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo1 = getelementptr inbounds %struct.musb_hw_ep, ptr %hw_ep, i32 0, i32 1
  %0 = ptrtoint ptr %fifo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val)
  %2 = ptrtoint ptr %dst to i32
  %and = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %len)
  %cmp3 = icmp ugt i16 %len, 3
  %or.cond = and i1 %cmp3, %cmp
  br i1 %or.cond, label %if.end.thread, label %if.end, !prof !98

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %len to i32
  %3 = lshr i32 %conv, 2
  tail call void @__raw_readsl(ptr noundef %1, ptr noundef %dst, i32 noundef %3) #6
  %and7 = and i32 %conv, 65532
  %add.ptr = getelementptr i8, ptr %dst, i32 %and7
  %and9 = and i16 %len, 3
  br label %if.end23

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %len)
  %cmp12 = icmp ugt i16 %len, 4
  br i1 %cmp12, label %for.body.preheader, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

for.body.preheader:                               ; preds = %if.end
  %4 = lshr i16 %len, 2
  %umax = zext i16 %4 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.052 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %dst.addr.151 = phi ptr [ %add.ptr19, %for.body.for.body_crit_edge ], [ %dst, %for.body.preheader ]
  %call = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 0) #6
  %5 = ptrtoint ptr %dst.addr.151 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %dst.addr.151, align 4
  %add.ptr19 = getelementptr i8, ptr %dst.addr.151, i32 4
  %inc = add nuw nsw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %and21 = and i16 %len, 3
  br label %if.end23

if.end23:                                         ; preds = %for.end, %if.end.if.end23_crit_edge, %if.end.thread
  %len.addr.1 = phi i16 [ %and21, %for.end ], [ %len, %if.end.if.end23_crit_edge ], [ %and9, %if.end.thread ]
  %dst.addr.2 = phi ptr [ %add.ptr19, %for.end ], [ %dst, %if.end.if.end23_crit_edge ], [ %add.ptr, %if.end.thread ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %len.addr.1)
  %cmp25.not = icmp eq i16 %len.addr.1, 0
  br i1 %cmp25.not, label %if.end23.if.end30_crit_edge, label %if.then27

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %conv24 = zext i16 %len.addr.1 to i32
  %call28 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 0) #6
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call28, ptr %val, align 4
  %7 = call ptr @memcpy(ptr %dst.addr.2, ptr %val, i32 %conv24)
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end23.if.end30_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am35x_musb_set_mode(ptr nocapture noundef readonly %musb, i8 noundef zeroext %musb_mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %board_data = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %board_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board_data, align 4
  %set_mode = getelementptr inbounds %struct.omap_musb_board_data, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %set_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_mode, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %7(i8 noundef zeroext %musb_mode) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %retval1.0 = phi i32 [ 0, %if.then ], [ -5, %entry.if.end_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @am35x_musb_try_idle(ptr noundef %musb, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %cmp = icmp eq i32 %timeout, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %timeout.addr.0 = phi i32 [ %add, %if.then ], [ %timeout, %entry.if.end_crit_edge ]
  %is_active = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 51
  %1 = ptrtoint ptr %is_active to i32
  call void @__asan_loadN_noabort(i32 %1, i32 3)
  %bf.load = load i24, ptr %is_active, align 8
  %2 = and i24 %bf.load, 2097152
  %tobool.not = icmp eq i24 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %a_wait_bcon = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 49
  %3 = ptrtoint ptr %a_wait_bcon to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %a_wait_bcon, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false.if.end15_crit_edge

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true:                                    ; preds = %lor.lhs.false
  %xceiv = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %5 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xceiv, align 8
  %otg = getelementptr inbounds %struct.usb_phy, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cmp2 = icmp eq i32 %10, 8
  br i1 %cmp2, label %land.lhs.true.do.body_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @am35x_musb_try_idle.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@am35x_musb_try_idle, %if.then8)) #6
          to label %do.end [label %if.then8], !srcloc !99

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %11 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %controller, align 8
  %xceiv9 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %13 = ptrtoint ptr %xceiv9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xceiv9, align 8
  %otg10 = getelementptr inbounds %struct.usb_phy, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %otg10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %otg10, align 4
  %state11 = getelementptr inbounds %struct.usb_otg, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %state11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state11, align 4
  %call12 = tail call ptr @usb_otg_state_string(i32 noundef %18) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @am35x_musb_try_idle.__UNIQUE_ID_ddebug296, ptr noundef %12, ptr noundef nonnull @.str.32, ptr noundef %call12) #6
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %dev_timer = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 22
  %call14 = tail call i32 @del_timer(ptr noundef %dev_timer) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  store i32 %19, ptr @am35x_musb_try_idle.last_timer, align 4
  br label %return

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %lor.lhs.false.if.end15_crit_edge
  %20 = load i32, ptr @am35x_musb_try_idle.last_timer, align 4
  %sub = sub i32 %timeout.addr.0, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp16 = icmp slt i32 %sub, 0
  br i1 %cmp16, label %land.lhs.true17, label %if.end15.if.end38_crit_edge

if.end15.if.end38_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

land.lhs.true17:                                  ; preds = %if.end15
  %pprev.i.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 22, i32 0, i32 1
  %21 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %22, null
  br i1 %tobool.not.i.i.not, label %land.lhs.true17.if.end38_crit_edge, label %do.body22

land.lhs.true17.if.end38_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

do.body22:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @am35x_musb_try_idle.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@am35x_musb_try_idle, %if.then34)) #6
          to label %return [label %if.then34], !srcloc !99

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  %controller35 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %23 = ptrtoint ptr %controller35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %controller35, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @am35x_musb_try_idle.__UNIQUE_ID_ddebug297, ptr noundef %24, ptr noundef nonnull @.str.33) #6
  br label %return

if.end38:                                         ; preds = %land.lhs.true17.if.end38_crit_edge, %if.end15.if.end38_crit_edge
  store i32 %timeout.addr.0, ptr @am35x_musb_try_idle.last_timer, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @am35x_musb_try_idle.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@am35x_musb_try_idle, %if.then51)) #6
          to label %do.end60 [label %if.then51], !srcloc !99

if.then51:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %controller52 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %25 = ptrtoint ptr %controller52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %controller52, align 8
  %xceiv53 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %27 = ptrtoint ptr %xceiv53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xceiv53, align 8
  %otg54 = getelementptr inbounds %struct.usb_phy, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %otg54 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %otg54, align 4
  %state55 = getelementptr inbounds %struct.usb_otg, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %state55 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state55, align 4
  %call56 = tail call ptr @usb_otg_state_string(i32 noundef %32) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %sub57 = sub i32 %timeout.addr.0, %33
  %call58 = tail call i32 @jiffies_to_msecs(i32 noundef %sub57) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @am35x_musb_try_idle.__UNIQUE_ID_ddebug298, ptr noundef %26, ptr noundef nonnull @.str.34, ptr noundef %call56, i32 noundef %call58) #6
  br label %do.end60

do.end60:                                         ; preds = %if.then51, %if.end38
  %dev_timer61 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 22
  %call62 = tail call i32 @mod_timer(ptr noundef %dev_timer61, i32 noundef %timeout.addr.0) #6
  br label %return

return:                                           ; preds = %do.end60, %if.then34, %do.body22, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @am35x_musb_set_vbus(ptr nocapture noundef readonly %musb, i32 noundef %is_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool.not = icmp eq i32 %is_on, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %is_host = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 48
  %0 = ptrtoint ptr %is_host to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_host, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !101

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 115, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_readl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_phy(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @otg_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1032
  %mregs1 = getelementptr i8, ptr %t, i32 72
  %0 = ptrtoint ptr %mregs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mregs1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %2 = load ptr, ptr @musb_readb, align 4
  %call = tail call zeroext i8 %2(ptr noundef %1, i32 noundef 96) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @otg_timer.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@otg_timer, %if.then)) #6
          to label %do.body8 [label %if.then], !srcloc !99

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %controller = getelementptr i8, ptr %t, i32 64
  %3 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %controller, align 8
  %conv = zext i8 %call to i32
  %xceiv = getelementptr i8, ptr %t, i32 96
  %5 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xceiv, align 8
  %otg = getelementptr inbounds %struct.usb_phy, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  %call6 = tail call ptr @usb_otg_state_string(i32 noundef %10) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @otg_timer.__UNIQUE_ID_ddebug295, ptr noundef %4, ptr noundef nonnull @.str.23, i32 noundef %conv, ptr noundef %call6) #6
  br label %do.body8

do.body8:                                         ; preds = %if.then, %entry
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #6
  %xceiv17 = getelementptr i8, ptr %t, i32 96
  %11 = ptrtoint ptr %xceiv17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xceiv17, align 8
  %otg18 = getelementptr inbounds %struct.usb_phy, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %otg18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %otg18, align 4
  %state19 = getelementptr inbounds %struct.usb_otg, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %state19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state19, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %do.body8.sw.epilog_crit_edge [
    i32 8, label %sw.bb
    i32 12, label %sw.bb37
    i32 1, label %sw.bb41
  ]

do.body8.sw.epilog_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %do.body8
  %18 = and i8 %call, -2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %19 = load ptr, ptr @musb_writeb, align 4
  %20 = ptrtoint ptr %mregs1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mregs1, align 8
  tail call void %19(ptr noundef %21, i32 noundef 96, i8 noundef zeroext %18) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %22 = load ptr, ptr @musb_readb, align 4
  %23 = ptrtoint ptr %mregs1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mregs1, align 8
  %call24 = tail call zeroext i8 %22(ptr noundef %24, i32 noundef 96) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call24)
  %tobool27.not = icmp sgt i8 %call24, -1
  %25 = ptrtoint ptr %xceiv17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xceiv17, align 8
  %otg33 = getelementptr inbounds %struct.usb_phy, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %otg33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %otg33, align 4
  %state34 = getelementptr inbounds %struct.usb_otg, ptr %28, i32 0, i32 5
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %state34 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %state34, align 4
  %is_host = getelementptr i8, ptr %t, i32 3980
  %30 = ptrtoint ptr %is_host to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %is_host, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %state34 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 6, ptr %state34, align 4
  %is_host35 = getelementptr i8, ptr %t, i32 3980
  %32 = ptrtoint ptr %is_host35 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %is_host35, align 4
  br label %sw.epilog

sw.bb37:                                          ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %state19 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 7, ptr %state19, align 4
  %ctrl_base = getelementptr i8, ptr %t, i32 68
  %34 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctrl_base, align 4
  tail call void @musb_writel(ptr noundef %35, i32 noundef 68, i32 noundef 8388608) #6
  br label %sw.epilog

sw.bb41:                                          ; preds = %do.body8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %36 = load ptr, ptr @musb_readb, align 4
  %call42 = tail call zeroext i8 %36(ptr noundef %1, i32 noundef 96) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call42)
  %tobool45.not = icmp sgt i8 %call42, -1
  br i1 %tobool45.not, label %if.else48, label %if.then46

if.then46:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %37, 200
  %call47 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #6
  br label %sw.epilog

if.else48:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %xceiv17 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xceiv17, align 8
  %otg50 = getelementptr inbounds %struct.usb_phy, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %otg50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %otg50, align 4
  %state51 = getelementptr inbounds %struct.usb_otg, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %state51 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 6, ptr %state51, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else48, %if.then46, %sw.bb37, %if.else, %if.then28, %do.body8.sw.epilog_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call12) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_writel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am35x_musb_interrupt(i32 noundef %irq, ptr noundef %hci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_base = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 26
  %0 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_base, align 4
  %controller = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 25
  %2 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %board_data = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %board_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %board_data, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hci) #6
  %call6 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 56) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @musb_writel(ptr noundef %1, i32 noundef 40, i32 noundef %call6) #6
  %and = lshr i32 %call6, 16
  %8 = trunc i32 %and to i16
  %conv7 = and i16 %8, -2
  %int_rx = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 33
  %9 = ptrtoint ptr %int_rx to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv7, ptr %int_rx, align 2
  %conv10 = trunc i32 %call6 to i16
  %int_tx = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 34
  %10 = ptrtoint ptr %int_tx to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv10, ptr %int_tx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call11 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 88) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  %tobool12.not.not = xor i1 %tobool12.not, true
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = select i1 %tobool12.not.not, i1 true, i1 %tobool.not.not
  br i1 %brmerge, label %if.end15, label %if.end.eoi_crit_edge

if.end.eoi_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %eoi

if.end15:                                         ; preds = %if.end
  br i1 %tobool12.not, label %if.end15.if.end81_crit_edge, label %if.end21

if.end15.if.end81_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.end21:                                         ; preds = %if.end15
  tail call void @musb_writel(ptr noundef %1, i32 noundef 72, i32 noundef %call11) #6
  %and18 = lshr i32 %call11, 16
  %conv20 = trunc i32 %and18 to i8
  %int_usb = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 32
  %11 = ptrtoint ptr %int_usb to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv20, ptr %int_usb, align 1
  %and22 = and i32 %call11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end81_crit_edge, label %if.then24

if.end21.if.end81_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.then24:                                        ; preds = %if.end21
  %call25 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 8) #6
  %mregs26 = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 27
  %12 = ptrtoint ptr %mregs26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mregs26, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %14 = load ptr, ptr @musb_readb, align 4
  %call27 = tail call zeroext i8 %14(ptr noundef %13, i32 noundef 96) #6
  %15 = ptrtoint ptr %int_usb to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %int_usb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %tobool31.not = icmp sgt i8 %16, -1
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  %and35 = and i8 %16, 127
  %17 = ptrtoint ptr %int_usb to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %and35, ptr %int_usb, align 1
  %xceiv = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 35
  %18 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xceiv, align 8
  %otg = getelementptr inbounds %struct.usb_phy, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 12, ptr %state, align 4
  %dev_timer = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %23, 200
  %call37 = tail call i32 @mod_timer(ptr noundef %dev_timer, i32 noundef %add) #6
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 263) #10
  br label %do.body62

if.else:                                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool46.not = icmp eq i32 %call25, 0
  br i1 %tobool46.not, label %if.else53, label %if.then47

if.then47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %is_host = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 48
  %24 = ptrtoint ptr %is_host to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %is_host, align 4
  %xceiv48 = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 35
  %25 = ptrtoint ptr %xceiv48 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xceiv48, align 8
  %otg49 = getelementptr inbounds %struct.usb_phy, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %otg49 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %otg49, align 4
  %state50 = getelementptr inbounds %struct.usb_otg, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %state50 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 7, ptr %state50, align 4
  %port1_status = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 13
  %30 = ptrtoint ptr %port1_status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port1_status, align 8
  %or = or i32 %31, 256
  store i32 %or, ptr %port1_status, align 8
  %dev_timer51 = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 22
  %call52 = tail call i32 @del_timer(ptr noundef %dev_timer51) #6
  br label %do.body62

if.else53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %is_active = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 51
  %32 = ptrtoint ptr %is_active to i32
  call void @__asan_loadN_noabort(i32 %32, i32 3)
  %bf.load = load i24, ptr %is_active, align 8
  %bf.clear = and i24 %bf.load, -2097153
  store i24 %bf.clear, ptr %is_active, align 8
  %is_host54 = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 48
  %33 = ptrtoint ptr %is_host54 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %is_host54, align 4
  %xceiv55 = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 35
  %34 = ptrtoint ptr %xceiv55 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %xceiv55, align 8
  %otg56 = getelementptr inbounds %struct.usb_phy, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %otg56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %otg56, align 4
  %state57 = getelementptr inbounds %struct.usb_otg, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %state57 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %state57, align 4
  %port1_status58 = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 13
  %39 = ptrtoint ptr %port1_status58 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port1_status58, align 8
  %and59 = and i32 %40, -257
  store i32 %and59, ptr %port1_status58, align 8
  br label %do.body62

do.body62:                                        ; preds = %if.else53, %if.then47, %if.then32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @am35x_musb_interrupt.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@am35x_musb_interrupt, %if.then68)) #6
          to label %if.end81 [label %if.then68], !srcloc !99

if.then68:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %controller, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool70.not = icmp eq i32 %call25, 0
  %cond = select i1 %tobool70.not, ptr @.str.28, ptr @.str.27
  %xceiv71 = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 35
  %43 = ptrtoint ptr %xceiv71 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %xceiv71, align 8
  %otg72 = getelementptr inbounds %struct.usb_phy, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %otg72 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %otg72, align 4
  %state73 = getelementptr inbounds %struct.usb_otg, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %state73 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %state73, align 4
  %call74 = tail call ptr @usb_otg_state_string(i32 noundef %48) #6
  %cond76 = select i1 %tobool31.not, ptr @.str.30, ptr @.str.29
  %conv77 = zext i8 %call27 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @am35x_musb_interrupt.__UNIQUE_ID_ddebug299, ptr noundef %42, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond, ptr noundef %call74, ptr noundef nonnull %cond76, i32 noundef %conv77) #6
  br label %if.end81

if.end81:                                         ; preds = %if.then68, %do.body62, %if.end21.if.end81_crit_edge, %if.end15.if.end81_crit_edge
  %ret.0 = phi i32 [ 0, %if.end21.if.end81_crit_edge ], [ 1, %if.then68 ], [ 1, %do.body62 ], [ 0, %if.end15.if.end81_crit_edge ]
  %int_usb82 = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 32
  %49 = ptrtoint ptr %int_usb82 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %int_usb82, align 1
  %51 = and i8 %50, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool85.not = icmp eq i8 %51, 0
  br i1 %tobool85.not, label %if.end81.if.end89_crit_edge, label %if.then86

if.end81.if.end89_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

if.then86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %int_tx87 = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 34
  %52 = ptrtoint ptr %int_tx87 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %int_tx87, align 4
  %int_rx88 = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 33
  %53 = ptrtoint ptr %int_rx88 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %int_rx88, align 2
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %if.end81.if.end89_crit_edge
  %int_tx90 = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 34
  %54 = ptrtoint ptr %int_tx90 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %int_tx90, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool92.not = icmp eq i16 %55, 0
  br i1 %tobool92.not, label %lor.lhs.false, label %if.end89.if.then100_crit_edge

if.end89.if.then100_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then100

lor.lhs.false:                                    ; preds = %if.end89
  %int_rx93 = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 33
  %56 = ptrtoint ptr %int_rx93 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %int_rx93, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool95.not = icmp eq i16 %57, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool99.not = icmp eq i8 %50, 0
  %or.cond = select i1 %tobool95.not, i1 %tobool99.not, i1 false
  br i1 %or.cond, label %lor.lhs.false.eoi_crit_edge, label %lor.lhs.false.if.then100_crit_edge

lor.lhs.false.if.then100_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then100

lor.lhs.false.eoi_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %eoi

if.then100:                                       ; preds = %lor.lhs.false.if.then100_crit_edge, %if.end89.if.then100_crit_edge
  %call101 = tail call i32 @musb_interrupt(ptr noundef %hci) #6
  %or102 = or i32 %call101, %ret.0
  br label %eoi

eoi:                                              ; preds = %if.then100, %lor.lhs.false.eoi_crit_edge, %if.end.eoi_crit_edge
  %ret.1 = phi i32 [ %or102, %if.then100 ], [ 0, %if.end.eoi_crit_edge ], [ %ret.0, %lor.lhs.false.eoi_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.1)
  %cmp104 = icmp eq i32 %ret.1, 1
  %brmerge178 = select i1 %cmp104, i1 true, i1 %tobool.not.not
  %brmerge180 = select i1 %brmerge178, i1 true, i1 %tobool12.not.not
  br i1 %brmerge180, label %if.then110, label %eoi.if.end115_crit_edge

eoi.if.end115_crit_edge:                          ; preds = %eoi
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

if.then110:                                       ; preds = %eoi
  %clear_irq = getelementptr inbounds %struct.omap_musb_board_data, ptr %7, i32 0, i32 5
  %58 = ptrtoint ptr %clear_irq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clear_irq, align 4
  %tobool111.not = icmp eq ptr %59, null
  br i1 %tobool111.not, label %if.then110.if.end114_crit_edge, label %if.then112

if.then110.if.end114_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

if.then112:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %59() #6
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.then110.if.end114_crit_edge
  tail call void @musb_writel(ptr noundef %1, i32 noundef 96, i32 noundef 0) #6
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %eoi.if.end115_crit_edge
  %xceiv116 = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 35
  %60 = ptrtoint ptr %xceiv116 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %xceiv116, align 8
  %otg117 = getelementptr inbounds %struct.usb_phy, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %otg117 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %otg117, align 4
  %state118 = getelementptr inbounds %struct.usb_otg, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %state118 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %state118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp119 = icmp eq i32 %65, 1
  br i1 %cmp119, label %if.then121, label %if.end115.if.end125_crit_edge

if.end115.if.end125_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end125

if.then121:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  %dev_timer122 = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %66 = load volatile i32, ptr @jiffies, align 128
  %add123 = add i32 %66, 200
  %call124 = tail call i32 @mod_timer(ptr noundef %dev_timer122, i32 noundef %add123) #6
  br label %if.end125

if.end125:                                        ; preds = %if.then121, %if.end115.if.end125_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hci, i32 noundef %call3) #6
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_otg_state_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am35x_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %board_data = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %board_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board_data, align 4
  %set_phy_power = getelementptr inbounds %struct.omap_musb_board_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %set_phy_power to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_phy_power, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %7(i8 noundef zeroext 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %phy_clk = getelementptr inbounds %struct.am35x_glue, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %phy_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  %clk = getelementptr inbounds %struct.am35x_glue, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am35x_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %board_data = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %board_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board_data, align 4
  %set_phy_power = getelementptr inbounds %struct.omap_musb_board_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %set_phy_power to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_phy_power, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %7(i8 noundef zeroext 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %phy_clk = getelementptr inbounds %struct.am35x_glue, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %phy_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_clk, align 4
  %call3 = tail call i32 @clk_enable(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %clk = getelementptr inbounds %struct.am35x_glue, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  %call7 = tail call i32 @clk_enable(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end6.cleanup.sink.split_crit_edge

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end6.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.str.15.sink = phi ptr [ @.str.12, %if.end.cleanup.sink.split_crit_edge ], [ @.str.15, %if.end6.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call3, %if.end.cleanup.sink.split_crit_edge ], [ %call7, %if.end6.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.15.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !63, !64, !66, !68, !69, !70, !72, !73, !75, !76, !78, !80, !82, !84, !85, !86, !88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__UNIQUE_ID_description300, !1, !"__UNIQUE_ID_description300", i1 false, i1 false}
!1 = !{!"../drivers/usb/musb/am35x.c", i32 607, i32 1}
!2 = !{ptr @__UNIQUE_ID_author301, !3, !"__UNIQUE_ID_author301", i1 false, i1 false}
!3 = !{!"../drivers/usb/musb/am35x.c", i32 608, i32 1}
!4 = !{ptr @__UNIQUE_ID_file302, !5, !"__UNIQUE_ID_file302", i1 false, i1 false}
!5 = !{!"../drivers/usb/musb/am35x.c", i32 609, i32 1}
!6 = !{ptr @__UNIQUE_ID_license303, !5, !"__UNIQUE_ID_license303", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_am35x__304_610_am35x_driver_init6, !8, !"__initcall__kmod_am35x__304_610_am35x_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/usb/musb/am35x.c", i32 610, i32 1}
!9 = !{ptr @__exitcall_am35x_driver_exit, !8, !"__exitcall_am35x_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/musb/am35x.c", i32 602, i32 11}
!12 = !{ptr @am35x_driver, !13, !"am35x_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/musb/am35x.c", i32 598, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/musb/am35x.c", i32 458, i32 32}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/musb/am35x.c", i32 460, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @am35x_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @am35x_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/musb/am35x.c", i32 465, i32 28}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/musb/am35x.c", i32 467, i32 3}
!28 = !{ptr @am35x_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @am35x_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/musb/am35x.c", i32 474, i32 3}
!32 = !{ptr @am35x_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @am35x_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/musb/am35x.c", i32 480, i32 3}
!36 = !{ptr @am35x_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @am35x_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/musb/am35x.c", i32 509, i32 3}
!40 = !{ptr @am35x_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @am35x_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @am35x_ops, !43, !"am35x_ops", i1 false, i1 false}
!43 = !{!"../drivers/usb/musb/am35x.c", i32 418, i32 39}
!44 = !{ptr @am35x_musb_init.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/usb/musb/am35x.c", i32 347, i32 2}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/musb/am35x.c", i32 132, i32 2}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @otg_timer.__UNIQUE_ID_ddebug295, !48, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/musb/am35x.c", i32 263, i32 4}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @am35x_musb_interrupt._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @am35x_musb_interrupt._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/musb/am35x.c", i32 277, i32 3}
!59 = !{ptr @am35x_musb_interrupt.__UNIQUE_ID_ddebug299, !58, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!60 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @am35x_musb_try_idle.last_timer, !65, !"last_timer", i1 false, i1 false}
!65 = !{!"../drivers/usb/musb/am35x.c", i32 170, i32 23}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/musb/am35x.c", i32 178, i32 3}
!68 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @am35x_musb_try_idle.__UNIQUE_ID_ddebug296, !67, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/musb/am35x.c", i32 186, i32 3}
!72 = !{ptr @am35x_musb_try_idle.__UNIQUE_ID_ddebug297, !71, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/musb/am35x.c", i32 191, i32 2}
!75 = !{ptr @am35x_musb_try_idle.__UNIQUE_ID_ddebug298, !74, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/musb/am35x.c", i32 438, i32 11}
!78 = !{ptr @am35x_dev_info, !79, !"am35x_dev_info", i1 false, i1 false}
!79 = !{!"../drivers/usb/musb/am35x.c", i32 437, i32 42}
!80 = !{ptr @am35x_pm_ops, !81, !"am35x_pm_ops", i1 false, i1 false}
!81 = !{!"../drivers/usb/musb/am35x.c", i32 596, i32 8}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/musb/am35x.c", i32 582, i32 3}
!84 = !{ptr @am35x_resume._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @am35x_resume._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @am35x_resume._entry.37, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../drivers/usb/musb/am35x.c", i32 588, i32 3}
!88 = !{ptr @am35x_resume._entry_ptr.38, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"branch_weights", i32 2000, i32 2002}
!99 = !{i64 2148967128, i64 2148967133, i64 2148967146, i64 2148967190, i64 2148967224, i64 2148967245}
!100 = !{i8 0, i8 2}
!101 = !{!"branch_weights", i32 1, i32 2000}
