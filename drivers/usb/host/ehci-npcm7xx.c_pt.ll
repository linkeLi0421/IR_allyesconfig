; ModuleID = '/llk/IR_all_yes/drivers/usb/host/ehci-npcm7xx.c_pt.bc'
source_filename = "../drivers/usb/host/ehci-npcm7xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.71, i32 }
%union.anon.71 = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_ehci_npcm7xx__240_199_ehci_npcm7xx_init6 = internal global ptr @ehci_npcm7xx_init, section ".initcall6.init", align 4
@npcm7xx_ehci_hcd_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @npcm7xx_ehci_hcd_drv_probe, ptr @npcm7xx_ehci_hcd_drv_remove, ptr @usb_hcd_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr @platform_bus_type, ptr null, ptr null, i8 0, i32 0, ptr @npcm7xx_ehci_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ehci_npcm7xx_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ehci_npcm7xx_cleanup = internal global ptr @ehci_npcm7xx_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description241 = internal constant [45 x i8] c"ehci_npcm7xx.description=EHCI npcm7xx driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias242 = internal constant [41 x i8] c"ehci_npcm7xx.alias=platform:npcm7xx-ehci\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [32 x i8] c"ehci_npcm7xx.author=Avi Fishman\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [48 x i8] c"ehci_npcm7xx.file=drivers/usb/host/ehci-npcm7xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [28 x i8] c"ehci_npcm7xx.license=GPL v2\00", section ".modinfo", align 1
@ehci_npcm7xx_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: EHCI npcm7xx driver\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ehci_npcm7xx_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/usb/host/ehci-npcm7xx.c\00", [32 x i8] zeroinitializer }, align 32
@ehci_npcm7xx_init._entry_ptr = internal global ptr @ehci_npcm7xx_init._entry, section ".printk_index", align 4
@hcd_name = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"npcm7xx-ehci\00", [19 x i8] zeroinitializer }, align 32
@ehci_npcm7xx_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"npcm7xx-ehci\00", [19 x i8] zeroinitializer }, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@npcm7xx_ehci_id_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nuvoton,npcm750-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ehci_npcm7xx_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ehci_npcm7xx_drv_suspend, ptr @ehci_npcm7xx_drv_resume, ptr @ehci_npcm7xx_drv_suspend, ptr @ehci_npcm7xx_drv_resume, ptr @ehci_npcm7xx_drv_suspend, ptr @ehci_npcm7xx_drv_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@npcm7xx_ehci_hcd_drv_probe.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ehci_npcm7xx\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"npcm7xx_ehci_hcd_drv_probe\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"initializing npcm7xx ehci USB Controller\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nuvoton,npcm750-gcr\00", [44 x i8] zeroinitializer }, align 32
@npcm7xx_ehci_hcd_drv_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.2, i32 74, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: failed to find nuvoton,npcm750-gcr\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@npcm7xx_ehci_hcd_drv_probe._entry_ptr = internal global ptr @npcm7xx_ehci_hcd_drv_probe._entry, section ".printk_index", align 4
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nuvoton,npcm750-rst\00", [44 x i8] zeroinitializer }, align 32
@npcm7xx_ehci_hcd_drv_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.2, i32 81, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: failed to find nuvoton,npcm750-rst\0A\00", [56 x i8] zeroinitializer }, align 32
@npcm7xx_ehci_hcd_drv_probe._entry_ptr.14 = internal global ptr @npcm7xx_ehci_hcd_drv_probe._entry.12, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@npcm7xx_ehci_hcd_drv_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.2, i32 155, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"init fail, %d\0A\00", [17 x i8] zeroinitializer }, align 32
@npcm7xx_ehci_hcd_drv_probe._entry_ptr.17 = internal global ptr @npcm7xx_ehci_hcd_drv_probe._entry.15, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant [24 x i8] c"npcm7xx_ehci_hcd_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 177, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 194, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [9 x i8] c"hcd_name\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 30, i32 19 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 182, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [22 x i8] c"npcm7xx_ehci_id_table\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 171, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c"ehci_npcm7xx_pm_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 56, i32 8 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 69, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 71, i32 50 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 73, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 78, i32 50 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 80, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [35 x i8] c"../drivers/usb/host/ehci-npcm7xx.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 155, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_alias242, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_ehci_npcm7xx_cleanup, ptr @__initcall__kmod_ehci_npcm7xx__240_199_ehci_npcm7xx_init6, ptr @ehci_npcm7xx_cleanup, ptr @ehci_npcm7xx_init._entry, ptr @ehci_npcm7xx_init._entry_ptr, ptr @npcm7xx_ehci_hcd_drv_probe._entry, ptr @npcm7xx_ehci_hcd_drv_probe._entry.12, ptr @npcm7xx_ehci_hcd_drv_probe._entry.15, ptr @npcm7xx_ehci_hcd_drv_probe._entry_ptr, ptr @npcm7xx_ehci_hcd_drv_probe._entry_ptr.14, ptr @npcm7xx_ehci_hcd_drv_probe._entry_ptr.17, ptr @npcm7xx_ehci_hcd_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @hcd_name, ptr @.str.3, ptr @npcm7xx_ehci_id_table, ptr @ehci_npcm7xx_pm_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_ehci_hcd_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_npcm7xx_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcd_name to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_ehci_id_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_npcm7xx_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_ehci_hcd_drv_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_ehci_hcd_drv_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_ehci_hcd_drv_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_npcm7xx_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_disabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @hcd_name) #7
  tail call void @ehci_init_driver(ptr noundef nonnull @ehci_npcm7xx_hc_driver, ptr noundef null) #4
  %call2 = tail call i32 @__platform_driver_register(ptr noundef nonnull @npcm7xx_ehci_hcd_driver, ptr noundef null) #4
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ehci_npcm7xx_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @npcm7xx_ehci_hcd_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ehci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm7xx_ehci_hcd_drv_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcm7xx_ehci_hcd_drv_probe.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@npcm7xx_ehci_hcd_drv_probe, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !63

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcm7xx_ehci_hcd_drv_probe.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.6) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.7) #4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end9, label %if.end12

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev10 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5) #7
  %0 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %call13 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.11) #4
  %cmp.i109 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %dev19 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5) #7
  %1 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %call13, i32 noundef 36, i32 noundef 67108864, i32 noundef 67108864, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %call.i110 = tail call i32 @regmap_update_bits_base(ptr noundef %call13, i32 noundef 52, i32 noundef 33554432, i32 noundef 33554432, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %call.i111 = tail call i32 @regmap_update_bits_base(ptr noundef %call4, i32 noundef 324, i32 noundef 268435456, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #4
  %call.i112 = tail call i32 @regmap_update_bits_base(ptr noundef %call13, i32 noundef 52, i32 noundef 33554432, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 10737400) #4
  %call.i113 = tail call i32 @regmap_update_bits_base(ptr noundef %call4, i32 noundef 324, i32 noundef 268435456, i32 noundef 268435456, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %call.i114 = tail call i32 @regmap_update_bits_base(ptr noundef %call13, i32 noundef 36, i32 noundef 67108864, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %call28 = tail call i32 @usb_disabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end31:                                         ; preds = %if.end21
  %call32 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp = icmp slt i32 %call32, 0
  br i1 %cmp, label %if.end31.do.end66_crit_edge, label %if.end34

if.end31.do.end66_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end66

if.end34:                                         ; preds = %if.end31
  %dev35 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %4 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %dev35, i64 noundef 4294967295) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end39, label %if.end34.do.end66_crit_edge

if.end34.do.end66_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end66

if.end39:                                         ; preds = %if.end34
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev35, i64 noundef 4294967295) #4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end39.dev_name.exit_crit_edge

if.end39.dev_name.exit_crit_edge:                 ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev35, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end39.dev_name.exit_crit_edge
  %retval.0.i115 = phi ptr [ %8, %if.end.i ], [ %6, %if.end39.dev_name.exit_crit_edge ]
  %call43 = tail call ptr @usb_create_hcd(ptr noundef nonnull @ehci_npcm7xx_hc_driver, ptr noundef %dev35, ptr noundef %retval.0.i115) #4
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %dev_name.exit.do.end66_crit_edge, label %if.end46

dev_name.exit.do.end66_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end66

if.end46:                                         ; preds = %dev_name.exit
  %call47 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #4
  %call49 = tail call ptr @devm_ioremap_resource(ptr noundef %dev35, ptr noundef %call47) #4
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %call43, i32 0, i32 16
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call49, ptr %regs, align 4
  %cmp.i116 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116, label %if.then52, label %if.end55

if.then52:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %call49 to i32
  br label %err_put_hcd

if.end55:                                         ; preds = %if.end46
  %11 = ptrtoint ptr %call47 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call47, align 4
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %call43, i32 0, i32 17
  %13 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %rsrc_start, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %call47, i32 0, i32 1
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.i, align 4
  %16 = load i32, ptr %call47, align 4
  %sub.i = add i32 %15, 1
  %add.i = sub i32 %sub.i, %16
  %rsrc_len = getelementptr inbounds %struct.usb_hcd, ptr %call43, i32 0, i32 18
  %17 = ptrtoint ptr %rsrc_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.i, ptr %rsrc_len, align 4
  %caps = getelementptr inbounds %struct.usb_hcd, ptr %call43, i32 1, i32 0, i32 18
  %18 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call49, ptr %caps, align 4
  %call59 = tail call i32 @usb_add_hcd(ptr noundef nonnull %call43, i32 noundef %call32, i32 noundef 128) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end55.err_put_hcd_crit_edge

if.end55.err_put_hcd_crit_edge:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_put_hcd

if.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %call43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call43, align 8
  %call63 = tail call i32 @device_wakeup_enable(ptr noundef %20) #4
  br label %cleanup

err_put_hcd:                                      ; preds = %if.end55.err_put_hcd_crit_edge, %if.then52
  %retval1.0 = phi i32 [ %10, %if.then52 ], [ %call59, %if.end55.err_put_hcd_crit_edge ]
  tail call void @usb_put_hcd(ptr noundef nonnull %call43) #4
  br label %do.end66

do.end66:                                         ; preds = %err_put_hcd, %dev_name.exit.do.end66_crit_edge, %if.end34.do.end66_crit_edge, %if.end31.do.end66_crit_edge
  %retval1.1 = phi i32 [ %retval1.0, %err_put_hcd ], [ %call32, %if.end31.do.end66_crit_edge ], [ -12, %dev_name.exit.do.end66_crit_edge ], [ %call.i.i, %if.end34.do.end66_crit_edge ]
  %dev67 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev67, ptr noundef nonnull @.str.16, i32 noundef %retval1.1) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %if.end62, %if.end21.cleanup_crit_edge, %do.end18, %do.end9
  %retval.0 = phi i32 [ %0, %do.end9 ], [ %1, %do.end18 ], [ %retval1.1, %do.end66 ], [ 0, %if.end62 ], [ -19, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm7xx_ehci_hcd_drv_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @usb_remove_hcd(ptr noundef %1) #4
  tail call void @usb_put_hcd(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_platform_shutdown(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_npcm7xx_drv_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.device_may_wakeup.exit_crit_edge, label %land.rhs.i

entry.device_may_wakeup.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %device_may_wakeup.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %4, null
  br label %device_may_wakeup.exit

device_may_wakeup.exit:                           ; preds = %land.rhs.i, %entry.device_may_wakeup.exit_crit_edge
  %5 = phi i1 [ false, %entry.device_may_wakeup.exit_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  %call2 = tail call i32 @ehci_suspend(ptr noundef %1, i1 noundef zeroext %5) #4
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_npcm7xx_drv_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @ehci_resume(ptr noundef %1, i1 noundef zeroext false) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16, !17, !18, !19, !21, !23, !25, !27, !29, !30, !31, !32, !34, !36, !37, !38, !39, !40, !42, !44, !45, !46, !48, !49, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_ehci_npcm7xx__240_199_ehci_npcm7xx_init6, !1, !"__initcall__kmod_ehci_npcm7xx__240_199_ehci_npcm7xx_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/ehci-npcm7xx.c", i32 199, i32 1}
!2 = !{ptr @__exitcall_ehci_npcm7xx_cleanup, !3, !"__exitcall_ehci_npcm7xx_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/ehci-npcm7xx.c", i32 205, i32 1}
!4 = !{ptr @__UNIQUE_ID_description241, !5, !"__UNIQUE_ID_description241", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/ehci-npcm7xx.c", i32 207, i32 1}
!6 = !{ptr @__UNIQUE_ID_alias242, !7, !"__UNIQUE_ID_alias242", i1 false, i1 false}
!7 = !{!"../drivers/usb/host/ehci-npcm7xx.c", i32 208, i32 1}
!8 = !{ptr @__UNIQUE_ID_author243, !9, !"__UNIQUE_ID_author243", i1 false, i1 false}
!9 = !{!"../drivers/usb/host/ehci-npcm7xx.c", i32 209, i32 1}
!10 = !{ptr @__UNIQUE_ID_file244, !11, !"__UNIQUE_ID_file244", i1 false, i1 false}
!11 = !{!"../drivers/usb/host/ehci-npcm7xx.c", i32 210, i32 1}
!12 = !{ptr @__UNIQUE_ID_license245, !11, !"__UNIQUE_ID_license245", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/host/ehci-npcm7xx.c", i32 194, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ehci_npcm7xx_init._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @ehci_npcm7xx_init._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @hcd_name, !20, !"hcd_name", i1 false, i1 false}
!20 = !{!"../drivers/usb/host/ehci-npcm7xx.c", i32 30, i32 19}
!21 = !{ptr @ehci_npcm7xx_hc_driver, !22, !"ehci_npcm7xx_hc_driver", i1 false, i1 false}
!22 = !{!"../drivers/usb/host/ehci-npcm7xx.c", i32 38, i32 39}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/host/ehci-npcm7xx.c", i32 182, i32 11}
!25 = !{ptr @npcm7xx_ehci_hcd_driver, !26, !"npcm7xx_ehci_hcd_driver", i1 false, i1 false}
!26 = !{!"../drivers/usb/host/ehci-npcm7xx.c", i32 177, i32 31}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/host/ehci-npcm7xx.c", i32 69, i32 2}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @npcm7xx_ehci_hcd_drv_probe.__UNIQUE_ID_ddebug239, !28, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/host/ehci-npcm7xx.c", i32 71, i32 50}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/host/ehci-npcm7xx.c", i32 73, i32 3}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @npcm7xx_ehci_hcd_drv_probe._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @npcm7xx_ehci_hcd_drv_probe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/host/ehci-npcm7xx.c", i32 78, i32 50}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/host/ehci-npcm7xx.c", i32 80, i32 3}
!44 = !{ptr @npcm7xx_ehci_hcd_drv_probe._entry.12, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @npcm7xx_ehci_hcd_drv_probe._entry_ptr.14, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/host/ehci-npcm7xx.c", i32 155, i32 2}
!48 = !{ptr @npcm7xx_ehci_hcd_drv_probe._entry.15, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @npcm7xx_ehci_hcd_drv_probe._entry_ptr.17, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @npcm7xx_ehci_id_table, !51, !"npcm7xx_ehci_id_table", i1 false, i1 false}
!51 = !{!"../drivers/usb/host/ehci-npcm7xx.c", i32 171, i32 34}
!52 = !{ptr @ehci_npcm7xx_pm_ops, !53, !"ehci_npcm7xx_pm_ops", i1 false, i1 false}
!53 = !{!"../drivers/usb/host/ehci-npcm7xx.c", i32 56, i32 8}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 2148324680, i64 2148324685, i64 2148324698, i64 2148324742, i64 2148324776, i64 2148324797}
