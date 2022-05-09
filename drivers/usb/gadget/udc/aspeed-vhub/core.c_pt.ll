; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/aspeed-vhub/core.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/aspeed-vhub/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ast_vhub_req = type { %struct.usb_request, %struct.list_head, i32, i32, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ast_vhub_ep = type { %struct.usb_ep, %struct.list_head, i32, ptr, ptr, ptr, i32, %union.anon }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, i32, i8, %struct.ast_vhub_req }
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
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ast_vhub_dev = type { ptr, ptr, i32, ptr, ptr, %struct.usb_gadget, ptr, i8, %struct.ast_vhub_ep, ptr, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.ast_vhub = type { ptr, ptr, i32, %struct.spinlock, %struct.work_struct, ptr, ptr, i32, %struct.ast_vhub_ep, i8, ptr, i32, i32, ptr, i32, i8, i32, %struct.usb_device_descriptor, %struct.ast_vhub_full_cdesc, %struct.usb_hub_descriptor, %struct.list_head, %struct.usb_qualifier_descriptor }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.ast_vhub_full_cdesc = type { %struct.usb_config_descriptor, %struct.usb_interface_descriptor, %struct.usb_endpoint_descriptor }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.70 }>
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { [4 x i8], [4 x i8] }
%struct.usb_qualifier_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.ast_vhub_port = type { i16, i16, %struct.ast_vhub_dev }

@ast_vhub_done.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 9, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aspeed_vhub\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ast_vhub_done\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/usb/gadget/udc/aspeed-vhub/core.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s:EP%d completing request @%p, status %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hub\00", [28 x i8] zeroinitializer }, align 32
@ast_vhub_nuke.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 18, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ast_vhub_nuke\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:EP%d Nuked %d request(s)\0A\00", [35 x i8] zeroinitializer }, align 32
@ast_vhub_init_hw.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 43, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ast_vhub_init_hw\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(Re)Starting HW ...\0A\00", [43 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__initcall__kmod_aspeed_vhub__246_441_ast_vhub_driver_init6 = internal global ptr @ast_vhub_driver_init, section ".initcall6.init", align 4
@ast_vhub_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ast_vhub_probe, ptr @ast_vhub_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ast_vhub_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ast_vhub_driver_exit = internal global ptr @ast_vhub_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description247 = internal constant [47 x i8] c"aspeed_vhub.description=Aspeed vHub udc driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [69 x i8] c"aspeed_vhub.author=Benjamin Herrenschmidt <benh@kernel.crashing.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file249 = internal constant [64 x i8] c"aspeed_vhub.file=drivers/usb/gadget/udc/aspeed-vhub/aspeed-vhub\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [24 x i8] c"aspeed_vhub.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ast_vhub_dt_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-usb-vhub\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-usb-vhub\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-usb-vhub\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"aspeed,vhub-downstream-ports\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"aspeed,vhub-generic-endpoints\00", [34 x i8] zeroinitializer }, align 32
@ast_vhub_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&vhub->lock\00", [20 x i8] zeroinitializer }, align 32
@ast_vhub_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 337, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to map resources\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ast_vhub_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ast_vhub_probe._entry_ptr = internal global ptr @ast_vhub_probe._entry, section ".printk_index", align 4
@ast_vhub_probe.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.16, i8 0, i8 85, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vHub@%pR mapped @%p\0A\00", [43 x i8] zeroinitializer }, align 32
@ast_vhub_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 351, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error couldn't enable clock (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@ast_vhub_probe._entry_ptr.19 = internal global ptr @ast_vhub_probe._entry.17, section ".printk_index", align 4
@ast_vhub_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 373, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to request interrupt\0A\00", [35 x i8] zeroinitializer }, align 32
@ast_vhub_probe._entry_ptr.22 = internal global ptr @ast_vhub_probe._entry.20, section ".printk_index", align 4
@ast_vhub_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.13, ptr @.str.2, i32 386, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to allocate EP0 DMA buffers\0A\00", [60 x i8] zeroinitializer }, align 32
@ast_vhub_probe._entry_ptr.25 = internal global ptr @ast_vhub_probe._entry.23, section ".printk_index", align 4
@ast_vhub_probe.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.26, i8 0, i8 97, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"EP0 DMA buffers @%p (DMA 0x%08x)\0A\00", [62 x i8] zeroinitializer }, align 32
@ast_vhub_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.13, ptr @.str.2, i32 411, ptr @.str.29, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Initialized virtual hub in USB%d mode\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ast_vhub_probe._entry_ptr.30 = internal global ptr @ast_vhub_probe._entry.27, section ".printk_index", align 4
@ast_vhub_irq.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 29, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ast_vhub_irq\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"irq status=%08x, ep_acks=%08x ep_nacks=%08x\0A\00", [51 x i8] zeroinitializer }, align 32
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 36, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 73, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 173, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"ast_vhub_driver\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 433, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant [16 x i8] c"ast_vhub_dt_ids\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 419, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 309, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 319, i32 32 }
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 329, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 337, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 340, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 351, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 373, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 386, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 390, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 410, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [45 x i8] c"../drivers/usb/gadget/udc/aspeed-vhub/core.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 113, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @__exitcall_ast_vhub_driver_exit, ptr @__initcall__kmod_aspeed_vhub__246_441_ast_vhub_driver_init6, ptr @ast_vhub_driver_exit, ptr @ast_vhub_probe._entry, ptr @ast_vhub_probe._entry.17, ptr @ast_vhub_probe._entry.20, ptr @ast_vhub_probe._entry.23, ptr @ast_vhub_probe._entry.27, ptr @ast_vhub_probe._entry_ptr, ptr @ast_vhub_probe._entry_ptr.19, ptr @ast_vhub_probe._entry_ptr.22, ptr @ast_vhub_probe._entry_ptr.25, ptr @ast_vhub_probe._entry_ptr.30, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ast_vhub_driver, ptr @ast_vhub_dt_ids, ptr @.str.9, ptr @.str.10, ptr @ast_vhub_probe.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_dt_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ast_vhub_done(ptr noundef %ep, ptr noundef %req, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %internal1 = getelementptr inbounds %struct.ast_vhub_req, ptr %req, i32 0, i32 4
  %0 = ptrtoint ptr %internal1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %internal1, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not = icmp eq i8 %1, 0
  %vhub2 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %2 = ptrtoint ptr %vhub2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vhub2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_done.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_done, %do.end13)) #6
          to label %if.then [label %do.end13], !srcloc !79

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %vhub2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vhub2, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %dev9 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %8 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev9, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi ptr [ %11, %cond.true ], [ @.str.4, %if.then.cond.end_crit_edge ]
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %12 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %d_idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_done.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef %cond, i32 noundef %13, ptr noundef %req, i32 noundef %status) #6
  br label %do.end13

do.end13:                                         ; preds = %cond.end, %entry
  %queue = getelementptr inbounds %struct.ast_vhub_req, ptr %req, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #6
  br i1 %call.i.i, label %if.end.i.i, label %do.end13.list_del_init.exit_crit_edge

do.end13.list_del_init.exit_crit_edge:            ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.ast_vhub_req, ptr %req, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %queue, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end13.list_del_init.exit_crit_edge
  %20 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i3.i = getelementptr inbounds %struct.ast_vhub_req, ptr %req, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %queue, ptr %prev.i3.i, align 4
  %status15 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %22 = ptrtoint ptr %status15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %23)
  %cmp = icmp eq i32 %23, -115
  br i1 %cmp, label %if.then16, label %list_del_init.exit.if.end19_crit_edge

list_del_init.exit.if.end19_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then16:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %status15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %status, ptr %status15, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %list_del_init.exit.if.end19_crit_edge
  %dma = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %25 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool21.not = icmp eq i32 %26, 0
  br i1 %tobool21.not, label %if.end19.if.end67_crit_edge, label %if.then22

if.end19.if.end67_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then22:                                        ; preds = %if.end19
  %dev23 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %27 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev23, align 4
  %tobool24.not = icmp eq ptr %28, null
  br i1 %tobool24.not, label %do.end42, label %if.then57.critedge, !prof !80

do.end42:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 44, i32 noundef 9, ptr noundef null) #6
  br label %if.end64

if.then57.critedge:                               ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %dev59 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  %is_in = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %31 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load61 = load i8, ptr %is_in, align 4
  %bf.load61.lobit = lshr i8 %bf.load61, 7
  %32 = zext i8 %bf.load61.lobit to i32
  tail call void @usb_gadget_unmap_request_by_dev(ptr noundef %dev59, ptr noundef %req, i32 noundef %32) #6
  br label %if.end64

if.end64:                                         ; preds = %if.then57.critedge, %do.end42
  %33 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %dma, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.end64, %if.end19.if.end67_crit_edge
  br i1 %bf.cast.not, label %if.then69, label %if.end67.if.end75_crit_edge

if.end67.if.end75_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then69:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %vhub2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vhub2, align 4
  %lock = getelementptr inbounds %struct.ast_vhub, ptr %35, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  tail call void @usb_gadget_giveback_request(ptr noundef %ep, ptr noundef %req) #6
  %36 = ptrtoint ptr %vhub2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vhub2, align 4
  %lock74 = getelementptr inbounds %struct.ast_vhub, ptr %37, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock74) #6
  br label %if.end75

if.end75:                                         ; preds = %if.then69, %if.end67.if.end75_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_unmap_request_by_dev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ast_vhub_nuke(ptr noundef %ep, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not27 = icmp eq ptr %1, %queue
  br i1 %cmp.i.not27, label %entry.if.end17_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %4, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %count.028 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -56
  tail call void @ast_vhub_done(ptr noundef %ep, ptr noundef %add.ptr, i32 noundef %status)
  %inc = add i32 %count.028, 1
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %4, %queue
  br i1 %cmp.i.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool2.not = icmp eq i32 %inc, 0
  br i1 %tobool2.not, label %while.end.if.end17_crit_edge, label %do.body3

while.end.if.end17_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

do.body3:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_nuke.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_nuke, %if.end17)) #6
          to label %if.then11 [label %if.end17], !srcloc !79

if.then11:                                        ; preds = %do.body3
  %vhub = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %5 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vhub, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  %dev12 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %9 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev12, align 4
  %tobool13.not = icmp eq ptr %10, null
  br i1 %tobool13.not, label %if.then11.cond.end_crit_edge, label %cond.true

if.then11.cond.end_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then11.cond.end_crit_edge
  %cond = phi ptr [ %12, %cond.true ], [ @.str.4, %if.then11.cond.end_crit_edge ]
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %13 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %d_idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_nuke.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %cond, i32 noundef %14, i32 noundef %inc) #6
  br label %if.end17

if.end17:                                         ; preds = %cond.end, %do.body3, %while.end.if.end17_crit_edge, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @ast_vhub_alloc_request(ptr nocapture noundef readnone %u_ep, i32 noundef %gfp_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !81

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and6.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp_flags, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 76) #9
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ast_vhub_free_request(ptr nocapture noundef readnone %u_ep, ptr noundef %u_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %u_req) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ast_vhub_init_hw(ptr nocapture noundef readonly %vhub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_init_hw.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_init_hw, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !79

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vhub, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_init_hw.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.8) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %regs = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 525184) #6, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 526208) #6, !srcloc !83
  %max_ports = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 11
  %7 = ptrtoint ptr %max_ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_ports, align 4
  %sub = sub i32 31, %8
  %shr = lshr i32 -1, %sub
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %or16 = or i32 %shr, 769
  %9 = tail call i32 @llvm.bswap.i32(i32 %or16)
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr18 = getelementptr i8, ptr %11, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %9) #6, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr23 = getelementptr i8, ptr %14, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 0) #6, !srcloc !83
  %max_epns = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 14
  %15 = ptrtoint ptr %max_epns to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_epns, align 4
  %sub25 = sub i32 32, %16
  %shr26 = lshr i32 -1, %sub25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %add.ptr33 = getelementptr i8, ptr %18, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 0) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr38 = getelementptr i8, ptr %20, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 0) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %21 = tail call i32 @llvm.bswap.i32(i32 %shr26)
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr43 = getelementptr i8, ptr %23, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %21) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr48 = getelementptr i8, ptr %25, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %21) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr53 = getelementptr i8, ptr %27, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 0) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %add.ptr58 = getelementptr i8, ptr %29, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 83886080) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %add.ptr63 = getelementptr i8, ptr %31, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 0) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %buf_dma = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 8, i32 6
  %32 = ptrtoint ptr %buf_dma to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_dma, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %add.ptr68 = getelementptr i8, ptr %36, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %34) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %add.ptr73 = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 0) #6, !srcloc !83
  %force_usb1 = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 15
  %39 = ptrtoint ptr %force_usb1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load = load i8, ptr %force_usb1, align 4
  %40 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %bf.cast.not = icmp eq i8 %40, 0
  %spec.select = select i1 %bf.cast.not, i32 -2147022847, i32 -2147022845
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %41 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %add.ptr87 = getelementptr i8, ptr %45, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 -889126656) #6, !srcloc !83
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ast_vhub_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ast_vhub_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ast_vhub_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ast_vhub_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ast_vhub_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 388, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_ports = getelementptr inbounds %struct.ast_vhub, ptr %call.i, i32 0, i32 11
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef %max_ports, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %max_ports to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %max_ports, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %3 = ptrtoint ptr %max_ports to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_ports, align 4
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 1264) #6
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !80

devm_kcalloc.exit.thread:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %ports254 = getelementptr inbounds %struct.ast_vhub, ptr %call.i, i32 0, i32 10
  %7 = ptrtoint ptr %ports254 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %ports254, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end5
  %8 = extractvalue { i32, i1 } %5, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %8, i32 noundef 3520) #6
  %ports = getelementptr inbounds %struct.ast_vhub, ptr %call.i, i32 0, i32 10
  %9 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5.i.i, ptr %ports, align 4
  %tobool10.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool10.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end12

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %devm_kcalloc.exit
  %max_epns = getelementptr inbounds %struct.ast_vhub, ptr %call.i, i32 0, i32 14
  %call.i.i243 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef %max_epns, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i243)
  %cmp14 = icmp slt i32 %call.i.i243, 0
  br i1 %cmp14, label %if.then15, label %if.end12.if.end17_crit_edge

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %max_epns to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 15, ptr %max_epns, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12.if.end17_crit_edge
  %11 = ptrtoint ptr %max_epns to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_epns, align 4
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 164) #6
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %devm_kcalloc.exit247.thread, label %devm_kcalloc.exit247, !prof !80

devm_kcalloc.exit247.thread:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %epns257 = getelementptr inbounds %struct.ast_vhub, ptr %call.i, i32 0, i32 13
  %15 = ptrtoint ptr %epns257 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %epns257, align 4
  br label %cleanup

devm_kcalloc.exit247:                             ; preds = %if.end17
  %16 = extractvalue { i32, i1 } %13, 0
  %call5.i.i244 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %16, i32 noundef 3520) #6
  %epns = getelementptr inbounds %struct.ast_vhub, ptr %call.i, i32 0, i32 13
  %17 = ptrtoint ptr %epns to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i244, ptr %epns, align 4
  %tobool22.not = icmp eq ptr %call5.i.i244, null
  br i1 %tobool22.not, label %devm_kcalloc.exit247.cleanup_crit_edge, label %do.body

devm_kcalloc.exit247.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit247
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %devm_kcalloc.exit247
  %lock = getelementptr inbounds %struct.ast_vhub, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @ast_vhub_probe.__key, i16 noundef signext 3) #6
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pdev, ptr %call.i, align 4
  %19 = ptrtoint ptr %max_ports to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_ports, align 4
  %sub28 = sub i32 23, %20
  %shr = lshr i32 -1, %sub28
  %and = and i32 %shr, -512
  %port_irq_mask = getelementptr inbounds %struct.ast_vhub, ptr %call.i, i32 0, i32 12
  %21 = ptrtoint ptr %port_irq_mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and, ptr %port_irq_mask, align 4
  %call30 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call32 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call30) #6
  %regs = getelementptr inbounds %struct.ast_vhub, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call32, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end38, label %do.body43

do.end38:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %cleanup

do.body43:                                        ; preds = %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_probe.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_probe, %do.end55)) #6
          to label %if.then49 [label %do.end55], !srcloc !79

if.then49:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %dev51 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_probe.__UNIQUE_ID_ddebug244, ptr noundef %dev51, ptr noundef nonnull @.str.16, ptr noundef %call30, ptr noundef %29) #6
  br label %do.end55

do.end55:                                         ; preds = %if.then49, %do.body43
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call57 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.ast_vhub, ptr %call.i, i32 0, i32 5
  %31 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call57, ptr %clk, align 4
  %cmp.i248 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i248, label %if.then60, label %if.end63

if.then60:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %call57 to i32
  br label %err

if.end63:                                         ; preds = %do.end55
  %call.i249 = tail call i32 @clk_prepare(ptr noundef %call57) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i249)
  %tobool.not.i = icmp eq i32 %call.i249, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end63.do.end70_crit_edge

if.end63.do.end70_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end70

if.end.i:                                         ; preds = %if.end63
  %call1.i = tail call i32 @clk_enable(ptr noundef %call57) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end72, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call57) #6
  br label %do.end70

do.end70:                                         ; preds = %if.then3.i, %if.end63.do.end70_crit_edge
  %retval.0.i250.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i249, %if.end63.do.end70_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i250.ph) #10
  br label %err

if.end72:                                         ; preds = %if.end.i
  %call74 = tail call i32 @usb_get_maximum_speed(ptr noundef %dev) #6
  %33 = add i32 %call74, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %34 = icmp ult i32 %33, 2
  br i1 %34, label %if.then77, label %if.end72.do.body79_crit_edge

if.end72.do.body79_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body79

if.then77:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %force_usb1 = getelementptr inbounds %struct.ast_vhub, ptr %call.i, i32 0, i32 15
  %35 = ptrtoint ptr %force_usb1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %force_usb1, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %force_usb1, align 4
  br label %do.body79

do.body79:                                        ; preds = %if.then77, %if.end72.do.body79_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %add.ptr87 = getelementptr i8, ptr %39, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 -16711680) #6, !srcloc !83
  %call88 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.ast_vhub, ptr %call.i, i32 0, i32 2
  %40 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call88, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp90 = icmp slt i32 %call88, 0
  br i1 %cmp90, label %do.body79.err_crit_edge, label %if.end93

do.body79.err_crit_edge:                          ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end93:                                         ; preds = %do.body79
  %call.i251 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call88, ptr noundef nonnull @ast_vhub_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i251)
  %tobool97.not = icmp eq i32 %call.i251, 0
  br i1 %tobool97.not, label %if.end103, label %do.end101

do.end101:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #10
  br label %err

if.end103:                                        ; preds = %if.end93
  %41 = ptrtoint ptr %max_ports to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_ports, align 4
  %add106 = shl i32 %42, 6
  %mul = add i32 %add106, 64
  %ep0_bufs_dma = getelementptr inbounds %struct.ast_vhub, ptr %call.i, i32 0, i32 7
  %call.i252 = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef %ep0_bufs_dma, i32 noundef 3264, i32 noundef 0) #6
  %ep0_bufs = getelementptr inbounds %struct.ast_vhub, ptr %call.i, i32 0, i32 6
  %43 = ptrtoint ptr %ep0_bufs to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i252, ptr %ep0_bufs, align 4
  %tobool109.not = icmp eq ptr %call.i252, null
  br i1 %tobool109.not, label %do.end113, label %do.body116

do.end113:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #10
  br label %err

do.body116:                                       ; preds = %if.end103
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_probe.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_probe, %do.end137)) #6
          to label %if.then130 [label %do.end137], !srcloc !79

if.then130:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  %dev132 = getelementptr inbounds %struct.platform_device, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %ep0_bufs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ep0_bufs, align 4
  %48 = ptrtoint ptr %ep0_bufs_dma to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ep0_bufs_dma, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_probe.__UNIQUE_ID_ddebug245, ptr noundef %dev132, ptr noundef nonnull @.str.26, ptr noundef %47, i32 noundef %49) #6
  br label %do.end137

do.end137:                                        ; preds = %if.then130, %do.body116
  %ep0 = getelementptr inbounds %struct.ast_vhub, ptr %call.i, i32 0, i32 8
  tail call void @ast_vhub_init_ep0(ptr noundef nonnull %call.i, ptr noundef %ep0, ptr noundef null) #6
  %50 = ptrtoint ptr %max_ports to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp139264.not = icmp eq i32 %51, 0
  br i1 %cmp139264.not, label %do.end137.if.end144_crit_edge, label %do.end137.for.body_crit_edge

do.end137.for.body_crit_edge:                     ; preds = %do.end137
  br label %for.body

do.end137.if.end144_crit_edge:                    ; preds = %do.end137
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end144

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end137.for.body_crit_edge
  %i.0265 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end137.for.body_crit_edge ]
  %call141 = tail call i32 @ast_vhub_init_dev(ptr noundef nonnull %call.i, i32 noundef %i.0265) #6
  %inc = add nuw i32 %i.0265, 1
  %52 = ptrtoint ptr %max_ports to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %max_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %53)
  %cmp139 = icmp ult i32 %inc, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %cmp140 = icmp eq i32 %call141, 0
  %or.cond239 = select i1 %cmp139, i1 %cmp140, i1 false
  br i1 %or.cond239, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  br i1 %cmp140, label %for.end.if.end144_crit_edge, label %for.end.err_crit_edge

for.end.err_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

for.end.if.end144_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end144

if.end144:                                        ; preds = %for.end.if.end144_crit_edge, %do.end137.if.end144_crit_edge
  %call145 = tail call i32 @ast_vhub_init_hub(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end148, label %if.end144.err_crit_edge

if.end144.err_crit_edge:                          ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end148:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ast_vhub_init_hw(ptr noundef nonnull %call.i)
  %force_usb1153 = getelementptr inbounds %struct.ast_vhub, ptr %call.i, i32 0, i32 15
  %54 = ptrtoint ptr %force_usb1153 to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load154 = load i8, ptr %force_usb1153, align 4
  %55 = and i8 %bf.load154, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %bf.cast.not = icmp eq i8 %55, 0
  %cond = select i1 %bf.cast.not, i32 2, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %cond) #10
  br label %cleanup

err:                                              ; preds = %if.end144.err_crit_edge, %for.end.err_crit_edge, %do.end113, %do.end101, %do.body79.err_crit_edge, %do.end70, %if.then60
  %rc.1 = phi i32 [ %32, %if.then60 ], [ %retval.0.i250.ph, %do.end70 ], [ %call.i251, %do.end101 ], [ %call141, %for.end.err_crit_edge ], [ %call145, %if.end144.err_crit_edge ], [ -12, %do.end113 ], [ %call88, %do.body79.err_crit_edge ]
  %call156 = tail call i32 @ast_vhub_remove(ptr noundef %pdev)
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end148, %do.end38, %devm_kcalloc.exit247.cleanup_crit_edge, %devm_kcalloc.exit247.thread, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %25, %do.end38 ], [ %rc.1, %err ], [ 0, %if.end148 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit247.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit247.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ast_vhub_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %regs = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %max_ports = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %max_ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp55.not = icmp eq i32 %5, 0
  br i1 %cmp55.not, label %for.cond.preheader.do.body2_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.body2_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ports = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports, align 4
  %dev = getelementptr %struct.ast_vhub_port, ptr %7, i32 %i.056, i32 2
  tail call void @ast_vhub_del_dev(ptr noundef %dev) #6
  %inc = add nuw i32 %i.056, 1
  %8 = ptrtoint ptr %max_ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_ports, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.body2_crit_edge

for.body.do.body2_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body2:                                         ; preds = %for.body.do.body2_crit_edge, %for.cond.preheader.do.body2_crit_edge
  %lock = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr16 = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 -16711680) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 524416) #6, !srcloc !83
  %clk = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  %tobool22.not = icmp eq ptr %17, null
  br i1 %tobool22.not, label %do.body2.if.end25_crit_edge, label %if.then23

do.body2.if.end25_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then23:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef nonnull %17) #6
  tail call void @clk_unprepare(ptr noundef nonnull %17) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %do.body2.if.end25_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #6
  %ep0_bufs = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %ep0_bufs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ep0_bufs, align 4
  %tobool27.not = icmp eq ptr %19, null
  br i1 %tobool27.not, label %if.end25.if.end32_crit_edge, label %if.then28

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %dev29 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %20 = ptrtoint ptr %max_ports to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_ports, align 4
  %add = shl i32 %21, 6
  %mul = add i32 %add, 64
  %ep0_bufs_dma = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %ep0_bufs_dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ep0_bufs_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev29, i32 noundef %mul, ptr noundef nonnull %19, i32 noundef %23, i32 noundef 0) #6
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.end25.if.end32_crit_edge
  %24 = ptrtoint ptr %ep0_bufs to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %ep0_bufs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_maximum_speed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ast_vhub_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ep0_bufs = getelementptr inbounds %struct.ast_vhub, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %ep0_bufs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep0_bufs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.ast_vhub, ptr %data, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %regs = getelementptr inbounds %struct.ast_vhub, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !103
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end.bail_crit_edge, label %do.body

if.end.bail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail

do.body:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %4) #6, !srcloc !83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_irq.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_irq, %do.end31)) #6
          to label %if.then14 [label %do.end31], !srcloc !79

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr18 = getelementptr i8, ptr %11, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #6, !srcloc !103
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr25 = getelementptr i8, ptr %15, i32 28
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #6, !srcloc !103
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_irq.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %5, i32 noundef %13, i32 noundef %17) #6
  br label %do.end31

do.end31:                                         ; preds = %if.then14, %do.body
  %and = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %do.end31.if.end52_crit_edge, label %if.then33

do.end31.if.end52_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then33:                                        ; preds = %do.end31
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr37 = getelementptr i8, ptr %19, i32 24
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %add.ptr45 = getelementptr i8, ptr %22, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %20) #6, !srcloc !83
  %max_epns = getelementptr inbounds %struct.ast_vhub, ptr %data, i32 0, i32 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool46.not153 = icmp eq i32 %20, 0
  br i1 %tobool46.not153, label %if.then33.if.end52_crit_edge, label %land.rhs.lr.ph

if.then33.if.end52_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

land.rhs.lr.ph:                                   ; preds = %if.then33
  %23 = tail call i32 @llvm.bswap.i32(i32 %20)
  %epns = getelementptr inbounds %struct.ast_vhub, ptr %data, i32 0, i32 13
  br label %land.rhs

land.rhs:                                         ; preds = %if.end51.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0155 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %if.end51.land.rhs_crit_edge ]
  %ep_acks.0154 = phi i32 [ %23, %land.rhs.lr.ph ], [ %ep_acks.1, %if.end51.land.rhs_crit_edge ]
  %24 = ptrtoint ptr %max_epns to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_epns, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0155, i32 %25)
  %cmp = icmp ult i32 %i.0155, %25
  br i1 %cmp, label %for.body, label %land.rhs.if.end52_crit_edge

land.rhs.if.end52_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

for.body:                                         ; preds = %land.rhs
  %shl = shl nuw i32 1, %i.0155
  %and47 = and i32 %shl, %ep_acks.0154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %for.body.if.end51_crit_edge, label %if.then49

for.body.if.end51_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then49:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %epns to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %epns, align 4
  %arrayidx = getelementptr %struct.ast_vhub_ep, ptr %27, i32 %i.0155
  tail call void @ast_vhub_epn_ack_irq(ptr noundef %arrayidx) #6
  %neg = xor i32 %shl, -1
  %and50 = and i32 %ep_acks.0154, %neg
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %for.body.if.end51_crit_edge
  %ep_acks.1 = phi i32 [ %and50, %if.then49 ], [ %ep_acks.0154, %for.body.if.end51_crit_edge ]
  %inc = add nuw i32 %i.0155, 1
  %tobool46.not = icmp eq i32 %ep_acks.1, 0
  br i1 %tobool46.not, label %if.end51.if.end52_crit_edge, label %if.end51.land.rhs_crit_edge

if.end51.land.rhs_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

if.end51.if.end52_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.end52:                                         ; preds = %if.end51.if.end52_crit_edge, %land.rhs.if.end52_crit_edge, %if.then33.if.end52_crit_edge, %do.end31.if.end52_crit_edge
  %port_irq_mask = getelementptr inbounds %struct.ast_vhub, ptr %data, i32 0, i32 12
  %28 = ptrtoint ptr %port_irq_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port_irq_mask, align 4
  %and53 = and i32 %29, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.if.end69_crit_edge, label %for.cond56.preheader

if.end52.if.end69_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

for.cond56.preheader:                             ; preds = %if.end52
  %max_ports = getelementptr inbounds %struct.ast_vhub, ptr %data, i32 0, i32 11
  %30 = ptrtoint ptr %max_ports to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp57157.not = icmp eq i32 %31, 0
  br i1 %cmp57157.not, label %for.cond56.preheader.if.end69_crit_edge, label %for.body58.lr.ph

for.cond56.preheader.if.end69_crit_edge:          ; preds = %for.cond56.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

for.body58.lr.ph:                                 ; preds = %for.cond56.preheader
  %ports = getelementptr inbounds %struct.ast_vhub, ptr %data, i32 0, i32 10
  br label %for.body58

for.body58:                                       ; preds = %for.inc66.for.body58_crit_edge, %for.body58.lr.ph
  %i.1158 = phi i32 [ 0, %for.body58.lr.ph ], [ %inc67, %for.inc66.for.body58_crit_edge ]
  %shl59 = shl i32 512, %i.1158
  %and60 = and i32 %shl59, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %for.body58.for.inc66_crit_edge, label %if.then62

for.body58.for.inc66_crit_edge:                   ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc66

if.then62:                                        ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ports, align 4
  %dev64 = getelementptr %struct.ast_vhub_port, ptr %33, i32 %i.1158, i32 2
  tail call void @ast_vhub_dev_irq(ptr noundef %dev64) #6
  br label %for.inc66

for.inc66:                                        ; preds = %if.then62, %for.body58.for.inc66_crit_edge
  %inc67 = add nuw i32 %i.1158, 1
  %34 = ptrtoint ptr %max_ports to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_ports, align 4
  %cmp57 = icmp ult i32 %inc67, %35
  br i1 %cmp57, label %for.inc66.for.body58_crit_edge, label %for.inc66.if.end69_crit_edge

for.inc66.if.end69_crit_edge:                     ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

for.inc66.for.body58_crit_edge:                   ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body58

if.end69:                                         ; preds = %for.inc66.if.end69_crit_edge, %for.cond56.preheader.if.end69_crit_edge, %if.end52.if.end69_crit_edge
  %and70 = and i32 %5, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end69.if.end87_crit_edge, label %if.then72

if.end69.if.end87_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.then72:                                        ; preds = %if.end69
  %and73 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.then72.if.end76_crit_edge, label %if.then75

if.then72.if.end76_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then75:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #8
  %ep0 = getelementptr inbounds %struct.ast_vhub, ptr %data, i32 0, i32 8
  tail call void @ast_vhub_ep0_handle_ack(ptr noundef %ep0, i1 noundef zeroext true) #6
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.then72.if.end76_crit_edge
  %and77 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end76.if.end81_crit_edge, label %if.then79

if.end76.if.end81_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %ep080 = getelementptr inbounds %struct.ast_vhub, ptr %data, i32 0, i32 8
  tail call void @ast_vhub_ep0_handle_ack(ptr noundef %ep080, i1 noundef zeroext false) #6
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %if.end76.if.end81_crit_edge
  %and82 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.end81.if.end87_crit_edge, label %if.then84

if.end81.if.end87_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %ep085 = getelementptr inbounds %struct.ast_vhub, ptr %data, i32 0, i32 8
  tail call void @ast_vhub_ep0_handle_setup(ptr noundef %ep085) #6
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %if.end81.if.end87_crit_edge, %if.end69.if.end87_crit_edge
  %and88 = and i32 %5, 448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end87.bail_crit_edge, label %if.then90

if.end87.bail_crit_edge:                          ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail

if.then90:                                        ; preds = %if.end87
  %and91 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.then90.if.end94_crit_edge, label %if.then93

if.then90.if.end94_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

if.then93:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ast_vhub_hub_resume(ptr noundef %data) #6
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.then90.if.end94_crit_edge
  %and95 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end94.if.end98_crit_edge, label %if.then97

if.end94.if.end98_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ast_vhub_hub_suspend(ptr noundef %data) #6
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %if.end94.if.end98_crit_edge
  %and99 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.end98.bail_crit_edge, label %if.then101

if.end98.bail_crit_edge:                          ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail

if.then101:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ast_vhub_hub_reset(ptr noundef %data) #6
  br label %bail

bail:                                             ; preds = %if.then101, %if.end98.bail_crit_edge, %if.end87.bail_crit_edge, %if.end.bail_crit_edge
  %iret.0 = phi i32 [ 1, %if.then101 ], [ 1, %if.end98.bail_crit_edge ], [ 1, %if.end87.bail_crit_edge ], [ 0, %if.end.bail_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %bail, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %iret.0, %bail ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_init_ep0(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ast_vhub_init_dev(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ast_vhub_init_hub(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_epn_ack_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_dev_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_ep0_handle_ack(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_ep0_handle_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_hub_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_hub_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_hub_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_del_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !20, !22, !24, !25, !27, !29, !31, !33, !34, !36, !37, !38, !39, !40, !41, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !63, !64, !66, !67, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/core.c", i32 36, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ast_vhub_done.__UNIQUE_ID_ddebug239, !1, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/core.c", i32 73, i32 3}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ast_vhub_nuke.__UNIQUE_ID_ddebug240, !8, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/core.c", i32 173, i32 2}
!13 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ast_vhub_init_hw.__UNIQUE_ID_ddebug242, !12, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!15 = !{ptr @__initcall__kmod_aspeed_vhub__246_441_ast_vhub_driver_init6, !16, !"__initcall__kmod_aspeed_vhub__246_441_ast_vhub_driver_init6", i1 false, i1 false}
!16 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/core.c", i32 441, i32 1}
!17 = !{ptr @__exitcall_ast_vhub_driver_exit, !16, !"__exitcall_ast_vhub_driver_exit", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_description247, !19, !"__UNIQUE_ID_description247", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/core.c", i32 443, i32 1}
!20 = !{ptr @__UNIQUE_ID_author248, !21, !"__UNIQUE_ID_author248", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/core.c", i32 444, i32 1}
!22 = !{ptr @__UNIQUE_ID_file249, !23, !"__UNIQUE_ID_file249", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/core.c", i32 445, i32 1}
!24 = !{ptr @__UNIQUE_ID_license250, !23, !"__UNIQUE_ID_license250", i1 false, i1 false}
!25 = !{ptr @ast_vhub_driver, !26, !"ast_vhub_driver", i1 false, i1 false}
!26 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/core.c", i32 433, i32 31}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/core.c", i32 309, i32 32}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/core.c", i32 319, i32 32}
!31 = !{ptr @ast_vhub_probe.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/core.c", i32 329, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/core.c", i32 337, i32 3}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ast_vhub_probe._entry, !35, !"_entry", i1 false, i1 false}
!40 = !{ptr @ast_vhub_probe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/core.c", i32 340, i32 2}
!43 = !{ptr @ast_vhub_probe.__UNIQUE_ID_ddebug244, !42, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/core.c", i32 351, i32 3}
!46 = !{ptr @ast_vhub_probe._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ast_vhub_probe._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/core.c", i32 373, i32 3}
!50 = !{ptr @ast_vhub_probe._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ast_vhub_probe._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/core.c", i32 386, i32 3}
!54 = !{ptr @ast_vhub_probe._entry.23, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ast_vhub_probe._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/core.c", i32 390, i32 2}
!58 = !{ptr @ast_vhub_probe.__UNIQUE_ID_ddebug245, !57, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/core.c", i32 410, i32 2}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ast_vhub_probe._entry.27, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @ast_vhub_probe._entry_ptr.30, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/core.c", i32 113, i32 2}
!66 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ast_vhub_irq.__UNIQUE_ID_ddebug241, !65, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!68 = !{ptr @ast_vhub_dt_ids, !69, !"ast_vhub_dt_ids", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/core.c", i32 419, i32 34}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 2148700961, i64 2148700966, i64 2148700979, i64 2148701023, i64 2148701057, i64 2148701078}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{!"branch_weights", i32 2000, i32 1}
!82 = !{i64 2154742242}
!83 = !{i64 5281585}
!84 = !{i64 2154743190}
!85 = !{i64 2154745571}
!86 = !{i64 2154746640}
!87 = !{i64 2154747822}
!88 = !{i64 2154748208}
!89 = !{i64 2154748601}
!90 = !{i64 2154749015}
!91 = !{i64 2154749422}
!92 = !{i64 2154749844}
!93 = !{i64 2154750284}
!94 = !{i64 2154750686}
!95 = !{i64 2154751120}
!96 = !{i64 2154751527}
!97 = !{i64 2154752060}
!98 = !{i64 2154765757}
!99 = !{i64 2154766153}
!100 = !{i64 2154753022}
!101 = !{i64 2154753418}
!102 = !{i64 2154753856}
!103 = !{i64 5282003}
!104 = !{i64 2154732017}
!105 = !{i64 2154732238}
!106 = !{i64 2154736891}
!107 = !{i64 2154737141}
!108 = !{i64 2154739037}
!109 = !{i64 2154739260}
