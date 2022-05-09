; ModuleID = '/llk/IR_all_yes/drivers/usb/core/hcd-pci.c_pt.bc'
source_filename = "../drivers/usb/core/hcd-pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+usb_hcd_pci_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_hcd_pci_probe\09\09\09\09"
module asm "\09.long\09__crc_usb_hcd_pci_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hcd_pci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hcd_pci_probe\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hcd_pci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_hcd_pci_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_hcd_pci_remove\09\09\09\09"
module asm "\09.long\09__crc_usb_hcd_pci_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hcd_pci_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hcd_pci_remove\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hcd_pci_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_hcd_pci_shutdown\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_hcd_pci_shutdown\09\09\09\09"
module asm "\09.long\09__crc_usb_hcd_pci_shutdown\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hcd_pci_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hcd_pci_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hcd_pci_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_hcd_pci_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_hcd_pci_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_usb_hcd_pci_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hcd_pci_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hcd_pci_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hcd_pci_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.72, i32 }
%union.anon.72 = type { ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@usb_hcd_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 202, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Found HC with no IRQ. Check BIOS/PCI %s setup!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usb_hcd_pci_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/usb/core/hcd-pci.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb_hcd_pci_probe._entry_ptr = internal global ptr @usb_hcd_pci_probe._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@usb_hcd_pci_probe.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usbcore\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"controller already in use\0A\00", [37 x i8] zeroinitializer }, align 32
@usb_hcd_pci_probe.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error mapping memory\0A\00", [42 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@usb_hcd_pci_probe.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no i/o regions available\0A\00", [38 x i8] zeroinitializer }, align 32
@companions_rwsem = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @companions_rwsem, i64 56), ptr getelementptr (i8, ptr @companions_rwsem, i64 56) }, ptr @companions_rwsem, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@usb_hcd_pci_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 296, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"init %s fail, %d\0A\00", [46 x i8] zeroinitializer }, align 32
@usb_hcd_pci_probe._entry_ptr.11 = internal global ptr @usb_hcd_pci_probe._entry.9, section ".printk_index", align 4
@__kstrtab_usb_hcd_pci_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hcd_pci_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hcd_pci_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hcd_pci_probe to i32), ptr @__kstrtab_usb_hcd_pci_probe, ptr @__kstrtabns_usb_hcd_pci_probe }, section "___ksymtab_gpl+usb_hcd_pci_probe", align 4
@__kstrtab_usb_hcd_pci_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hcd_pci_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hcd_pci_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hcd_pci_remove to i32), ptr @__kstrtab_usb_hcd_pci_remove, ptr @__kstrtabns_usb_hcd_pci_remove }, section "___ksymtab_gpl+usb_hcd_pci_remove", align 4
@__kstrtab_usb_hcd_pci_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hcd_pci_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hcd_pci_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hcd_pci_shutdown to i32), ptr @__kstrtab_usb_hcd_pci_shutdown, ptr @__kstrtabns_usb_hcd_pci_shutdown }, section "___ksymtab_gpl+usb_hcd_pci_shutdown", align 4
@usb_hcd_pci_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @hcd_pci_suspend, ptr @hcd_pci_resume, ptr @check_root_hub_suspended, ptr null, ptr @hcd_pci_suspend, ptr @hcd_pci_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hcd_pci_suspend_noirq, ptr @hcd_pci_resume_noirq, ptr @check_root_hub_suspended, ptr null, ptr @hcd_pci_suspend_noirq, ptr @hcd_pci_resume_noirq, ptr @hcd_pci_runtime_suspend, ptr @hcd_pci_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_usb_hcd_pci_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hcd_pci_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hcd_pci_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hcd_pci_pm_ops to i32), ptr @__kstrtab_usb_hcd_pci_pm_ops, ptr @__kstrtabns_usb_hcd_pci_pm_ops }, section "___ksymtab_gpl+usb_hcd_pci_pm_ops", align 4
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"companions_rwsem.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"companions_rwsem\00", [47 x i8] zeroinitializer }, align 32
@ehci_post_add.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ehci_post_add\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HS companion for %s\0A\00", [43 x i8] zeroinitializer }, align 32
@non_ehci_add.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"non_ehci_add\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"FS/LS companion for %s\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.suspend_common = private unnamed_addr constant [15 x i8] c"suspend_common\00", align 1
@resume_common.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"resume_common\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can't resume, not suspended!\0A\00", [34 x i8] zeroinitializer }, align 32
@resume_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 494, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"can't re-enable after resume, %d!\0A\00", [61 x i8] zeroinitializer }, align 32
@resume_common._entry_ptr = internal global ptr @resume_common._entry, section ".printk_index", align 4
@resume_common._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.18, ptr @.str.2, i32 514, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PCI post-resume error %d!\0A\00", [37 x i8] zeroinitializer }, align 32
@resume_common._entry_ptr.23 = internal global ptr @resume_common._entry.21, section ".printk_index", align 4
@check_root_hub_suspended._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 411, ptr @.str.26, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Root hub is not suspended\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"check_root_hub_suspended\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@check_root_hub_suspended._entry_ptr = internal global ptr @check_root_hub_suspended._entry, section ".printk_index", align 4
@check_root_hub_suspended._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.2, i32 417, ptr @.str.26, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Secondary root hub is not suspended\0A\00", [59 x i8] zeroinitializer }, align 32
@check_root_hub_suspended._entry_ptr.29 = internal global ptr @check_root_hub_suspended._entry.27, section ".printk_index", align 4
@hcd_pci_suspend_noirq.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 -120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hcd_pci_suspend_noirq\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wakeup: %d\0A\00", [20 x i8] zeroinitializer }, align 32
@hcd_pci_suspend_noirq.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.30, ptr @.str.2, ptr @.str.32, i8 0, i8 -118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"--> PCI D0 legacy\0A\00", [45 x i8] zeroinitializer }, align 32
@hcd_pci_suspend_noirq.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.30, ptr @.str.2, ptr @.str.33, i8 0, i8 -117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"--> PCI %s\0A\00", [20 x i8] zeroinitializer }, align 32
@pci_power_names = external dso_local local_unnamed_addr global [0 x ptr], align 4
@hcd_pci_runtime_suspend.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 -106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hcd_pci_runtime_suspend\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hcd_pci_runtime_suspend: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@hcd_pci_runtime_resume.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hcd_pci_runtime_resume\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hcd_pci_runtime_resume: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 787200, i64 787216, i64 787232]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 787200, i64 787216, i64 787232]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 787200, i64 787216, i64 787232]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 787200, i64 787216, i64 787232]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 787200, i64 787216, i64 787232]
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 200, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 224, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 231, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 252, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"companions_rwsem\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 296, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c"usb_hcd_pci_pm_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 614, i32 25 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 31, i32 8 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 109, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 127, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 488, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 494, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 514, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 411, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 417, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 546, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 553, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 556, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 600, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.161 = private constant [30 x i8] c"../drivers/usb/core/hcd-pci.c\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 610, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__ksymtab_usb_hcd_pci_pm_ops, ptr @__ksymtab_usb_hcd_pci_probe, ptr @__ksymtab_usb_hcd_pci_remove, ptr @__ksymtab_usb_hcd_pci_shutdown, ptr @check_root_hub_suspended._entry, ptr @check_root_hub_suspended._entry.27, ptr @check_root_hub_suspended._entry_ptr, ptr @check_root_hub_suspended._entry_ptr.29, ptr @resume_common._entry, ptr @resume_common._entry.21, ptr @resume_common._entry_ptr, ptr @resume_common._entry_ptr.23, ptr @usb_hcd_pci_probe._entry, ptr @usb_hcd_pci_probe._entry.9, ptr @usb_hcd_pci_probe._entry_ptr, ptr @usb_hcd_pci_probe._entry_ptr.11, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @companions_rwsem, ptr @.str.10, ptr @usb_hcd_pci_pm_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_hcd_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @companions_rwsem to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_hcd_pci_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_hcd_pci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resume_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resume_common._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_root_hub_suspended._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_root_hub_suspended._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_hcd_pci_probe(ptr noundef %dev, ptr noundef readnone %id, ptr noundef %driver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_disabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup181_crit_edge

entry.cleanup181_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup181

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %id, null
  %tobool5.not = icmp eq ptr %driver, null
  %or.cond = or i1 %tobool2.not, %tobool5.not
  br i1 %or.cond, label %if.end.cleanup181_crit_edge, label %if.end7

if.end.cleanup181_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup181

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @pci_enable_device(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end7.cleanup181_crit_edge, label %if.end10

if.end7.cleanup181_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup181

if.end10:                                         ; preds = %if.end7
  %flags = getelementptr inbounds %struct.hc_driver, ptr %driver, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp11.not.not = icmp eq i32 %and, 0
  br i1 %cmp11.not.not, label %if.then12, label %if.end10.if.end20_crit_edge

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then12:                                        ; preds = %if.end10
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %dev, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp14 = icmp slt i32 %call.i, 0
  br i1 %cmp14, label %do.end, label %if.end18

do.end:                                           ; preds = %if.then12
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev16, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %do.end.pci_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str, ptr noundef %retval.0.i.i) #8
  br label %disable_pci

if.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = tail call i32 @pci_irq_vector(ptr noundef %dev, i32 noundef 0) #5
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %if.end10.if.end20_crit_edge
  %hcd_irq.0 = phi i32 [ %call19, %if.end18 ], [ 0, %if.end10.if.end20_crit_edge ]
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %init_name.i.i272 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i.i272 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i272, align 8
  %tobool.not.i.i273 = icmp eq ptr %7, null
  br i1 %tobool.not.i.i273, label %if.end.i.i275, label %if.end20.pci_name.exit277_crit_edge

if.end20.pci_name.exit277_crit_edge:              ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %pci_name.exit277

if.end.i.i275:                                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev21, align 4
  br label %pci_name.exit277

pci_name.exit277:                                 ; preds = %if.end.i.i275, %if.end20.pci_name.exit277_crit_edge
  %retval.0.i.i276 = phi ptr [ %9, %if.end.i.i275 ], [ %7, %if.end20.pci_name.exit277_crit_edge ]
  %call23 = tail call ptr @usb_create_hcd(ptr noundef nonnull %driver, ptr noundef %dev21, ptr noundef %retval.0.i.i276) #5
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %pci_name.exit277.free_irq_vectors_crit_edge, label %if.end26

pci_name.exit277.free_irq_vectors_crit_edge:      ; preds = %pci_name.exit277
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_irq_vectors

if.end26:                                         ; preds = %pci_name.exit277
  %call27 = tail call i32 @usb_hcd_amd_remote_wakeup_quirk(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end26.land.end.thread_crit_edge, label %land.end

if.end26.land.end.thread_crit_edge:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end.thread

land.end:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and30 = and i32 %11, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %spec.select = select i1 %tobool31.not, i16 0, i16 128
  br label %land.end.thread

land.end.thread:                                  ; preds = %land.end, %if.end26.land.end.thread_crit_edge
  %12 = phi i16 [ %spec.select, %land.end ], [ 0, %if.end26.land.end.thread_crit_edge ]
  %amd_resume_bug327 = getelementptr inbounds %struct.usb_hcd, ptr %call23, i32 0, i32 14
  %13 = ptrtoint ptr %amd_resume_bug327 to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load328 = load i16, ptr %amd_resume_bug327, align 4
  %bf.clear = and i16 %bf.load328, -129
  %bf.set = or i16 %bf.clear, %12
  store i16 %bf.set, ptr %amd_resume_bug327, align 4
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and33 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %for.cond.preheader, label %if.then35

for.cond.preheader:                               ; preds = %land.end.thread
  %rsrc_start99 = getelementptr inbounds %struct.usb_hcd, ptr %call23, i32 0, i32 17
  %rsrc_len116 = getelementptr inbounds %struct.usb_hcd, ptr %call23, i32 0, i32 18
  br label %for.body

if.then35:                                        ; preds = %land.end.thread
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %16 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %resource, align 8
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %call23, i32 0, i32 17
  %18 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %rsrc_start, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 1
  %19 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp38 = icmp eq i32 %20, 0
  br i1 %cmp38, label %if.then35.cond.end_crit_edge, label %cond.false

if.then35.cond.end_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %resource, align 8
  %sub = add i32 %20, 1
  %add = sub i32 %sub, %22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then35.cond.end_crit_edge
  %cond45 = phi i32 [ %add, %cond.false ], [ 0, %if.then35.cond.end_crit_edge ]
  %rsrc_len = getelementptr inbounds %struct.usb_hcd, ptr %call23, i32 0, i32 18
  %23 = ptrtoint ptr %rsrc_len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond45, ptr %rsrc_len, align 4
  %24 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver, align 4
  %call49 = tail call ptr @__devm_request_region(ptr noundef %dev21, ptr noundef nonnull @iomem_resource, i32 noundef %17, i32 noundef %cond45, ptr noundef %25) #5
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %do.body52, label %if.end62

do.body52:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_hcd_pci_probe.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_hcd_pci_probe, %if.then57)) #5
          to label %put_hcd [label %if.then57], !srcloc !95

if.then57:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_hcd_pci_probe.__UNIQUE_ID_ddebug243, ptr noundef %dev21, ptr noundef nonnull @.str.6) #5
  br label %put_hcd

if.end62:                                         ; preds = %cond.end
  %26 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rsrc_start, align 8
  %28 = ptrtoint ptr %rsrc_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rsrc_len, align 4
  %call66 = tail call ptr @devm_ioremap(ptr noundef %dev21, i32 noundef %27, i32 noundef %29) #5
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %call23, i32 0, i32 16
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call66, ptr %regs, align 4
  %cmp68 = icmp eq ptr %call66, null
  br i1 %cmp68, label %do.body70, label %if.end62.if.end145_crit_edge

if.end62.if.end145_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end145

do.body70:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_hcd_pci_probe.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_hcd_pci_probe, %if.then82)) #5
          to label %put_hcd [label %if.then82], !srcloc !95

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_hcd_pci_probe.__UNIQUE_ID_ddebug244, ptr noundef %dev21, ptr noundef nonnull @.str.7) #5
  br label %put_hcd

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %region.0340 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx90 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %region.0340
  %flags91 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %region.0340, i32 3
  %31 = ptrtoint ptr %flags91 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags91, align 4
  %and92 = and i32 %32, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %for.body.for.inc_crit_edge, label %if.end95

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end95:                                         ; preds = %for.body
  %33 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx90, align 8
  %35 = ptrtoint ptr %rsrc_start99 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %rsrc_start99, align 8
  %end102 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %region.0340, i32 1
  %36 = ptrtoint ptr %end102 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %end102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp103 = icmp eq i32 %37, 0
  br i1 %cmp103, label %if.end95.cond.end114_crit_edge, label %cond.false105

if.end95.cond.end114_crit_edge:                   ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end114

cond.false105:                                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx90, align 8
  %sub112 = add i32 %37, 1
  %add113 = sub i32 %sub112, %39
  br label %cond.end114

cond.end114:                                      ; preds = %cond.false105, %if.end95.cond.end114_crit_edge
  %cond115 = phi i32 [ %add113, %cond.false105 ], [ 0, %if.end95.cond.end114_crit_edge ]
  %40 = ptrtoint ptr %rsrc_len116 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %cond115, ptr %rsrc_len116, align 4
  %41 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %driver, align 4
  %call121 = tail call ptr @__devm_request_region(ptr noundef %dev21, ptr noundef nonnull @ioport_resource, i32 noundef %34, i32 noundef %cond115, ptr noundef %42) #5
  %tobool122.not = icmp eq ptr %call121, null
  br i1 %tobool122.not, label %cond.end114.for.inc_crit_edge, label %cond.end114.if.end145_crit_edge

cond.end114.if.end145_crit_edge:                  ; preds = %cond.end114
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end145

cond.end114.for.inc_crit_edge:                    ; preds = %cond.end114
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %cond.end114.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %region.0340, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %do.body127, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.body127:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_hcd_pci_probe.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_hcd_pci_probe, %if.then139)) #5
          to label %put_hcd [label %if.then139], !srcloc !95

if.then139:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_hcd_pci_probe.__UNIQUE_ID_ddebug245, ptr noundef %dev21, ptr noundef nonnull @.str.8) #5
  br label %put_hcd

if.end145:                                        ; preds = %cond.end114.if.end145_crit_edge, %if.end62.if.end145_crit_edge
  tail call void @pci_set_master(ptr noundef %dev) #5
  %class = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 11
  %43 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 787232, i32 %44)
  %cmp146 = icmp eq i32 %44, 787232
  br i1 %cmp146, label %if.then147, label %if.else154

if.then147:                                       ; preds = %if.end145
  tail call void @down_write(ptr noundef nonnull @companions_rwsem) #5
  %driver_data.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %45 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call23, ptr %driver_data.i, align 4
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 6
  %46 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %devfn.i, align 4
  %call32.i = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef null) #5
  %cmp.not33.i = icmp eq ptr %call32.i, null
  br i1 %cmp.not33.i, label %if.then147.for_each_companion.exit_crit_edge, label %while.body.lr.ph.i

if.then147.for_each_companion.exit_crit_edge:     ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #7
  br label %for_each_companion.exit

while.body.lr.ph.i:                               ; preds = %if.then147
  %bus1.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call34.i = phi ptr [ %call32.i, %while.body.lr.ph.i ], [ %call.i278, %while.cond.backedge.i.while.body.i_crit_edge ]
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %call34.i, i32 0, i32 1
  %48 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i, align 8
  %50 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bus1.i, align 8
  %cmp2.not.i = icmp eq ptr %49, %51
  br i1 %cmp2.not.i, label %lor.lhs.false.i, label %while.body.i.while.cond.backedge.i_crit_edge

while.body.i.while.cond.backedge.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.i

lor.lhs.false.i:                                  ; preds = %while.body.i
  %devfn3.i = getelementptr inbounds %struct.pci_dev, ptr %call34.i, i32 0, i32 6
  %52 = ptrtoint ptr %devfn3.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %devfn3.i, align 4
  %shr431.i = xor i32 %53, %47
  %54 = and i32 %shr431.i, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp6.not.i = icmp eq i32 %54, 0
  br i1 %cmp6.not.i, label %if.end.i, label %lor.lhs.false.i.while.cond.backedge.i_crit_edge

lor.lhs.false.i.while.cond.backedge.i_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.then.i, %lor.lhs.false16.i.while.cond.backedge.i_crit_edge, %if.end14.i.while.cond.backedge.i_crit_edge, %if.end.i.while.cond.backedge.i_crit_edge, %lor.lhs.false.i.while.cond.backedge.i_crit_edge, %while.body.i.while.cond.backedge.i_crit_edge
  %call.i278 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef nonnull %call34.i) #5
  %cmp.not.i = icmp eq ptr %call.i278, null
  br i1 %cmp.not.i, label %while.cond.backedge.i.for_each_companion.exit_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.cond.backedge.i.for_each_companion.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for_each_companion.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %class.i = getelementptr inbounds %struct.pci_dev, ptr %call34.i, i32 0, i32 11
  %55 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %class.i, align 8
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values)
  switch i32 %56, label %if.end.i.while.cond.backedge.i_crit_edge [
    i32 787200, label %if.end.i.if.end14.i_crit_edge
    i32 787216, label %if.end.i.if.end14.i_crit_edge342
    i32 787232, label %if.end.i.if.end14.i_crit_edge343
  ]

if.end.i.if.end14.i_crit_edge343:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.end.i.if.end14.i_crit_edge342:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.end.i.while.cond.backedge.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.i

if.end14.i:                                       ; preds = %if.end.i.if.end14.i_crit_edge, %if.end.i.if.end14.i_crit_edge342, %if.end.i.if.end14.i_crit_edge343
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %call34.i, i32 0, i32 44, i32 8
  %58 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %59, null
  br i1 %tobool.not.i, label %if.end14.i.while.cond.backedge.i_crit_edge, label %lor.lhs.false16.i

if.end14.i.while.cond.backedge.i_crit_edge:       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.i

lor.lhs.false16.i:                                ; preds = %if.end14.i
  %root_hub.i = getelementptr inbounds %struct.usb_bus, ptr %59, i32 0, i32 11
  %60 = ptrtoint ptr %root_hub.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %root_hub.i, align 8
  %tobool17.not.i = icmp ne ptr %61, null
  %62 = and i32 %56, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 787200, i32 %62)
  %.not.i = icmp eq i32 %62, 787200
  %or.cond336 = select i1 %tobool17.not.i, i1 %.not.i, i1 false
  br i1 %or.cond336, label %if.then.i, label %lor.lhs.false16.i.while.cond.backedge.i_crit_edge

lor.lhs.false16.i.while.cond.backedge.i_crit_edge: ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.i

if.then.i:                                        ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #7
  %mutex.i.i = getelementptr inbounds %struct.usb_device, ptr %61, i32 0, i32 15, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #5
  %call1.i = tail call i32 @usb_set_configuration(ptr noundef nonnull %61, i32 noundef 0) #5
  br label %while.cond.backedge.i

for_each_companion.exit:                          ; preds = %while.cond.backedge.i.for_each_companion.exit_crit_edge, %if.then147.for_each_companion.exit_crit_edge
  %call149 = tail call i32 @usb_add_hcd(ptr noundef nonnull %call23, i32 noundef %hcd_irq.0, i32 noundef 128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %cmp150.not = icmp eq i32 %call149, 0
  br i1 %cmp150.not, label %for_each_companion.exit.if.end153_crit_edge, label %if.then151

for_each_companion.exit.if.end153_crit_edge:      ; preds = %for_each_companion.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end153

if.then151:                                       ; preds = %for_each_companion.exit
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %driver_data.i, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.then151, %for_each_companion.exit.if.end153_crit_edge
  %64 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %devfn.i, align 4
  %call32.i281 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef null) #5
  %cmp.not33.i282 = icmp eq ptr %call32.i281, null
  br i1 %cmp.not33.i282, label %if.end153.for_each_companion.exit305_crit_edge, label %while.body.lr.ph.i284

if.end153.for_each_companion.exit305_crit_edge:   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #7
  br label %for_each_companion.exit305

while.body.lr.ph.i284:                            ; preds = %if.end153
  %bus1.i283 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  br label %while.body.i288

while.body.i288:                                  ; preds = %while.cond.backedge.i295.while.body.i288_crit_edge, %while.body.lr.ph.i284
  %call34.i285 = phi ptr [ %call32.i281, %while.body.lr.ph.i284 ], [ %call.i293, %while.cond.backedge.i295.while.body.i288_crit_edge ]
  %bus.i286 = getelementptr inbounds %struct.pci_dev, ptr %call34.i285, i32 0, i32 1
  %66 = ptrtoint ptr %bus.i286 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bus.i286, align 8
  %68 = ptrtoint ptr %bus1.i283 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bus1.i283, align 8
  %cmp2.not.i287 = icmp eq ptr %67, %69
  br i1 %cmp2.not.i287, label %lor.lhs.false.i292, label %while.body.i288.while.cond.backedge.i295_crit_edge

while.body.i288.while.cond.backedge.i295_crit_edge: ; preds = %while.body.i288
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.i295

lor.lhs.false.i292:                               ; preds = %while.body.i288
  %devfn3.i289 = getelementptr inbounds %struct.pci_dev, ptr %call34.i285, i32 0, i32 6
  %70 = ptrtoint ptr %devfn3.i289 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %devfn3.i289, align 4
  %shr431.i290 = xor i32 %71, %65
  %72 = and i32 %shr431.i290, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp6.not.i291 = icmp eq i32 %72, 0
  br i1 %cmp6.not.i291, label %if.end.i297, label %lor.lhs.false.i292.while.cond.backedge.i295_crit_edge

lor.lhs.false.i292.while.cond.backedge.i295_crit_edge: ; preds = %lor.lhs.false.i292
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.i295

while.cond.backedge.i295:                         ; preds = %if.end13.i, %lor.lhs.false16.i303.while.cond.backedge.i295_crit_edge, %if.end14.i300.while.cond.backedge.i295_crit_edge, %if.end.i297.while.cond.backedge.i295_crit_edge, %lor.lhs.false.i292.while.cond.backedge.i295_crit_edge, %while.body.i288.while.cond.backedge.i295_crit_edge
  %call.i293 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef nonnull %call34.i285) #5
  %cmp.not.i294 = icmp eq ptr %call.i293, null
  br i1 %cmp.not.i294, label %while.cond.backedge.i295.for_each_companion.exit305_crit_edge, label %while.cond.backedge.i295.while.body.i288_crit_edge

while.cond.backedge.i295.while.body.i288_crit_edge: ; preds = %while.cond.backedge.i295
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i288

while.cond.backedge.i295.for_each_companion.exit305_crit_edge: ; preds = %while.cond.backedge.i295
  call void @__sanitizer_cov_trace_pc() #7
  br label %for_each_companion.exit305

if.end.i297:                                      ; preds = %lor.lhs.false.i292
  %class.i296 = getelementptr inbounds %struct.pci_dev, ptr %call34.i285, i32 0, i32 11
  %73 = ptrtoint ptr %class.i296 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %class.i296, align 8
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %74, label %if.end.i297.while.cond.backedge.i295_crit_edge [
    i32 787200, label %if.end.i297.if.end14.i300_crit_edge
    i32 787216, label %if.end.i297.if.end14.i300_crit_edge344
    i32 787232, label %if.end.i297.if.end14.i300_crit_edge345
  ]

if.end.i297.if.end14.i300_crit_edge345:           ; preds = %if.end.i297
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i300

if.end.i297.if.end14.i300_crit_edge344:           ; preds = %if.end.i297
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i300

if.end.i297.if.end14.i300_crit_edge:              ; preds = %if.end.i297
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i300

if.end.i297.while.cond.backedge.i295_crit_edge:   ; preds = %if.end.i297
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.i295

if.end14.i300:                                    ; preds = %if.end.i297.if.end14.i300_crit_edge, %if.end.i297.if.end14.i300_crit_edge344, %if.end.i297.if.end14.i300_crit_edge345
  %driver_data.i.i.i298 = getelementptr inbounds %struct.pci_dev, ptr %call34.i285, i32 0, i32 44, i32 8
  %76 = ptrtoint ptr %driver_data.i.i.i298 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %driver_data.i.i.i298, align 4
  %tobool.not.i299 = icmp eq ptr %77, null
  br i1 %tobool.not.i299, label %if.end14.i300.while.cond.backedge.i295_crit_edge, label %lor.lhs.false16.i303

if.end14.i300.while.cond.backedge.i295_crit_edge: ; preds = %if.end14.i300
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.i295

lor.lhs.false16.i303:                             ; preds = %if.end14.i300
  %root_hub.i301 = getelementptr inbounds %struct.usb_bus, ptr %77, i32 0, i32 11
  %78 = ptrtoint ptr %root_hub.i301 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %root_hub.i301, align 8
  %tobool17.not.i302 = icmp ne ptr %79, null
  %80 = and i32 %74, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 787200, i32 %80)
  %.not.i317 = icmp eq i32 %80, 787200
  %or.cond337 = select i1 %tobool17.not.i302, i1 %.not.i317, i1 false
  br i1 %or.cond337, label %if.then.i319, label %lor.lhs.false16.i303.while.cond.backedge.i295_crit_edge

lor.lhs.false16.i303.while.cond.backedge.i295_crit_edge: ; preds = %lor.lhs.false16.i303
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.i295

if.then.i319:                                     ; preds = %lor.lhs.false16.i303
  %81 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %driver_data.i, align 4
  %tobool2.not.i = icmp eq ptr %82, null
  br i1 %tobool2.not.i, label %if.then.i319.if.end13.i_crit_edge, label %do.body.i

if.then.i319.if.end13.i_crit_edge:                ; preds = %if.then.i319
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

do.body.i:                                        ; preds = %if.then.i319
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ehci_post_add.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_hcd_pci_probe, %if.then8.i)) #5
          to label %do.end.i [label %if.then8.i], !srcloc !95

if.then8.i:                                       ; preds = %do.body.i
  %init_name.i.i320 = getelementptr inbounds %struct.pci_dev, ptr %call34.i285, i32 0, i32 44, i32 3
  %83 = ptrtoint ptr %init_name.i.i320 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %init_name.i.i320, align 8
  %tobool.not.i.i321 = icmp eq ptr %84, null
  br i1 %tobool.not.i.i321, label %if.end.i.i322, label %if.then8.i.dev_name.exit.i_crit_edge

if.then8.i.dev_name.exit.i_crit_edge:             ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i322:                                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev10.i = getelementptr inbounds %struct.pci_dev, ptr %call34.i285, i32 0, i32 44
  %85 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev10.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i322, %if.then8.i.dev_name.exit.i_crit_edge
  %retval.0.i22.i = phi ptr [ %86, %if.end.i.i322 ], [ %84, %if.then8.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ehci_post_add.__UNIQUE_ID_ddebug241, ptr noundef %dev21, ptr noundef nonnull @.str.15, ptr noundef %retval.0.i22.i) #5
  br label %do.end.i

do.end.i:                                         ; preds = %dev_name.exit.i, %do.body.i
  %hs_companion.i = getelementptr inbounds %struct.usb_bus, ptr %77, i32 0, i32 12
  %87 = ptrtoint ptr %hs_companion.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call23, ptr %hs_companion.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %do.end.i, %if.then.i319.if.end13.i_crit_edge
  %88 = ptrtoint ptr %root_hub.i301 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %root_hub.i301, align 8
  %call15.i = tail call i32 @usb_set_configuration(ptr noundef %89, i32 noundef 1) #5
  %mutex.i.i324 = getelementptr inbounds %struct.usb_device, ptr %89, i32 0, i32 15, i32 10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i324) #5
  br label %while.cond.backedge.i295

for_each_companion.exit305:                       ; preds = %while.cond.backedge.i295.for_each_companion.exit305_crit_edge, %if.end153.for_each_companion.exit305_crit_edge
  tail call void @up_write(ptr noundef nonnull @companions_rwsem) #5
  br label %if.end162

if.else154:                                       ; preds = %if.end145
  tail call void @down_read(ptr noundef nonnull @companions_rwsem) #5
  %driver_data.i306 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %90 = ptrtoint ptr %driver_data.i306 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call23, ptr %driver_data.i306, align 4
  %call156 = tail call i32 @usb_add_hcd(ptr noundef nonnull %call23, i32 noundef %hcd_irq.0, i32 noundef 128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %cmp157.not = icmp eq i32 %call156, 0
  br i1 %cmp157.not, label %if.else160, label %if.then158

if.then158:                                       ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #7
  %91 = ptrtoint ptr %driver_data.i306 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %driver_data.i306, align 4
  br label %if.end161

if.else160:                                       ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @for_each_companion(ptr noundef %dev, ptr noundef nonnull %call23, ptr noundef nonnull @non_ehci_add)
  br label %if.end161

if.end161:                                        ; preds = %if.else160, %if.then158
  tail call void @up_read(ptr noundef nonnull @companions_rwsem) #5
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %for_each_companion.exit305
  %retval1.2 = phi i32 [ %call149, %for_each_companion.exit305 ], [ %call156, %if.end161 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.2)
  %cmp163.not = icmp eq i32 %retval1.2, 0
  br i1 %cmp163.not, label %if.end165, label %if.end162.put_hcd_crit_edge

if.end162.put_hcd_crit_edge:                      ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #7
  br label %put_hcd

if.end165:                                        ; preds = %if.end162
  %92 = ptrtoint ptr %call23 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call23, align 8
  %call166 = tail call i32 @device_wakeup_enable(ptr noundef %93) #5
  %call167 = tail call zeroext i1 @pci_dev_run_wake(ptr noundef %dev) #5
  br i1 %call167, label %if.then168, label %if.end165.cleanup181_crit_edge

if.end165.cleanup181_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup181

if.then168:                                       ; preds = %if.end165
  %usage_count.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #5
  %94 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #5, !srcloc !97
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %94, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then168.cleanup181_crit_edge, label %do.end11.i.i.i.i

if.then168.cleanup181_crit_edge:                  ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup181

do.end11.i.i.i.i:                                 ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !98
  br label %cleanup181

put_hcd:                                          ; preds = %if.end162.put_hcd_crit_edge, %if.then139, %do.body127, %if.then82, %do.body70, %if.then57, %do.body52
  %retval1.3 = phi i32 [ %retval1.2, %if.end162.put_hcd_crit_edge ], [ -16, %if.then57 ], [ -14, %if.then82 ], [ -16, %do.body52 ], [ -14, %do.body70 ], [ -16, %if.then139 ], [ -16, %do.body127 ]
  tail call void @usb_put_hcd(ptr noundef nonnull %call23) #5
  br label %free_irq_vectors

free_irq_vectors:                                 ; preds = %put_hcd, %pci_name.exit277.free_irq_vectors_crit_edge
  %retval1.4 = phi i32 [ %retval1.3, %put_hcd ], [ -12, %pci_name.exit277.free_irq_vectors_crit_edge ]
  %95 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %flags, align 4
  %and172 = and i32 %96, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %cmp173.not.not = icmp eq i32 %and172, 0
  br i1 %cmp173.not.not, label %if.then174, label %free_irq_vectors.disable_pci_crit_edge

free_irq_vectors.disable_pci_crit_edge:           ; preds = %free_irq_vectors
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable_pci

if.then174:                                       ; preds = %free_irq_vectors
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_free_irq_vectors(ptr noundef %dev) #5
  br label %disable_pci

disable_pci:                                      ; preds = %if.then174, %free_irq_vectors.disable_pci_crit_edge, %pci_name.exit
  %retval1.5 = phi i32 [ -19, %pci_name.exit ], [ %retval1.4, %if.then174 ], [ %retval1.4, %free_irq_vectors.disable_pci_crit_edge ]
  tail call void @pci_disable_device(ptr noundef %dev) #5
  %dev179 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %init_name.i.i308 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 3
  %97 = ptrtoint ptr %init_name.i.i308 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %init_name.i.i308, align 8
  %tobool.not.i.i309 = icmp eq ptr %98, null
  br i1 %tobool.not.i.i309, label %if.end.i.i311, label %disable_pci.pci_name.exit313_crit_edge

disable_pci.pci_name.exit313_crit_edge:           ; preds = %disable_pci
  call void @__sanitizer_cov_trace_pc() #7
  br label %pci_name.exit313

if.end.i.i311:                                    ; preds = %disable_pci
  call void @__sanitizer_cov_trace_pc() #7
  %99 = ptrtoint ptr %dev179 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev179, align 4
  br label %pci_name.exit313

pci_name.exit313:                                 ; preds = %if.end.i.i311, %disable_pci.pci_name.exit313_crit_edge
  %retval.0.i.i312 = phi ptr [ %100, %if.end.i.i311 ], [ %98, %disable_pci.pci_name.exit313_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev179, ptr noundef nonnull @.str.10, ptr noundef %retval.0.i.i312, i32 noundef %retval1.5) #8
  br label %cleanup181

cleanup181:                                       ; preds = %pci_name.exit313, %do.end11.i.i.i.i, %if.then168.cleanup181_crit_edge, %if.end165.cleanup181_crit_edge, %if.end7.cleanup181_crit_edge, %if.end.cleanup181_crit_edge, %entry.cleanup181_crit_edge
  %retval.0 = phi i32 [ %retval1.5, %pci_name.exit313 ], [ -19, %entry.cleanup181_crit_edge ], [ -22, %if.end.cleanup181_crit_edge ], [ -19, %if.end7.cleanup181_crit_edge ], [ 0, %if.end165.cleanup181_crit_edge ], [ 0, %if.then168.cleanup181_crit_edge ], [ 0, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_amd_remote_wakeup_quirk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @for_each_companion(ptr noundef %pdev, ptr noundef %hcd, ptr nocapture noundef readonly %fn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %0 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devfn, align 4
  %call32 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef null) #5
  %cmp.not33 = icmp eq ptr %call32, null
  br i1 %cmp.not33, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %bus1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call34 = phi ptr [ %call32, %while.body.lr.ph ], [ %call, %while.cond.backedge.while.body_crit_edge ]
  %bus = getelementptr inbounds %struct.pci_dev, ptr %call34, i32 0, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 8
  %4 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus1, align 8
  %cmp2.not = icmp eq ptr %3, %5
  br i1 %cmp2.not, label %lor.lhs.false, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

lor.lhs.false:                                    ; preds = %while.body
  %devfn3 = getelementptr inbounds %struct.pci_dev, ptr %call34, i32 0, i32 6
  %6 = ptrtoint ptr %devfn3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devfn3, align 4
  %shr431 = xor i32 %7, %1
  %8 = and i32 %shr431, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6.not = icmp eq i32 %8, 0
  br i1 %cmp6.not, label %if.end, label %lor.lhs.false.while.cond.backedge_crit_edge

lor.lhs.false.while.cond.backedge_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end19, %lor.lhs.false16.while.cond.backedge_crit_edge, %if.end14.while.cond.backedge_crit_edge, %if.end.while.cond.backedge_crit_edge, %lor.lhs.false.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %call = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef nonnull %call34) #5
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  %class = getelementptr inbounds %struct.pci_dev, ptr %call34, i32 0, i32 11
  %9 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %class, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %10, label %if.end.while.cond.backedge_crit_edge [
    i32 787200, label %if.end.if.end14_crit_edge
    i32 787216, label %if.end.if.end14_crit_edge35
    i32 787232, label %if.end.if.end14_crit_edge36
  ]

if.end.if.end14_crit_edge36:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end.if.end14_crit_edge35:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

if.end14:                                         ; preds = %if.end.if.end14_crit_edge, %if.end.if.end14_crit_edge35, %if.end.if.end14_crit_edge36
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %call34, i32 0, i32 44, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end14.while.cond.backedge_crit_edge, label %lor.lhs.false16

if.end14.while.cond.backedge_crit_edge:           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

lor.lhs.false16:                                  ; preds = %if.end14
  %root_hub = getelementptr inbounds %struct.usb_bus, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %root_hub to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %root_hub, align 8
  %tobool17.not = icmp eq ptr %15, null
  br i1 %tobool17.not, label %lor.lhs.false16.while.cond.backedge_crit_edge, label %if.end19

lor.lhs.false16.while.cond.backedge_crit_edge:    ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

if.end19:                                         ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %fn(ptr noundef %pdev, ptr noundef %hcd, ptr noundef nonnull %call34, ptr noundef nonnull %13) #5
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @non_ehci_add(ptr noundef %pdev, ptr nocapture noundef writeonly %hcd, ptr nocapture noundef readonly %companion, ptr noundef %companion_hcd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %class.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 11
  %0 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %class.i, align 8
  %2 = and i32 %1, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 787200, i32 %2)
  %.not = icmp eq i32 %2, 787200
  br i1 %.not, label %land.lhs.true, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %class = getelementptr inbounds %struct.pci_dev, ptr %companion, i32 0, i32 11
  %3 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 787232, i32 %4)
  %cmp = icmp eq i32 %4, 787232
  br i1 %cmp, label %do.body, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @non_ehci_add.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@non_ehci_add, %if.then5)) #5
          to label %do.end [label %if.then5], !srcloc !95

if.then5:                                         ; preds = %do.body
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %companion, i32 0, i32 44, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then5.dev_name.exit_crit_edge

if.then5.dev_name.exit_crit_edge:                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %companion, i32 0, i32 44
  %7 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev6, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then5.dev_name.exit_crit_edge
  %retval.0.i12 = phi ptr [ %8, %if.end.i ], [ %6, %if.then5.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @non_ehci_add.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef %retval.0.i12) #5
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %do.body
  %hs_companion = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 12
  %9 = ptrtoint ptr %hs_companion to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %companion_hcd, ptr %hs_companion, align 4
  br label %if.end9

if.end9:                                          ; preds = %do.end, %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_dev_run_wake(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_hcd_pci_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 8
  %flags = getelementptr inbounds %struct.hc_driver, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %call1 = tail call zeroext i1 @pci_dev_run_wake(ptr noundef %dev) #5
  br i1 %call1, label %if.then2, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %usage_count.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #5
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #5, !srcloc !99
  br label %do.body

do.body:                                          ; preds = %if.then2, %if.end.do.body_crit_edge
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !100
  %and.i.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool6.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #5, !srcloc !101
  br i1 %tobool6.not, label %if.then8, label %do.body.if.end9_crit_edge

do.body.if.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @trace_hardirqs_off() #5
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.body.if.end9_crit_edge
  %call10 = tail call i32 @usb_hcd_irq(i32 noundef 0, ptr noundef nonnull %1) #5
  tail call void @trace_hardirqs_on() #5
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !102
  %class = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 11
  %8 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 787232, i32 %9)
  %cmp = icmp eq i32 %9, 787232
  br i1 %cmp, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end9
  tail call void @down_write(ptr noundef nonnull @companions_rwsem) #5
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 6
  %10 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devfn.i, align 4
  %call32.i = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef null) #5
  %cmp.not33.i = icmp eq ptr %call32.i, null
  br i1 %cmp.not33.i, label %if.then14.for_each_companion.exit_crit_edge, label %while.body.lr.ph.i

if.then14.for_each_companion.exit_crit_edge:      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for_each_companion.exit

while.body.lr.ph.i:                               ; preds = %if.then14
  %bus1.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call34.i = phi ptr [ %call32.i, %while.body.lr.ph.i ], [ %call.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %call34.i, i32 0, i32 1
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %14 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus1.i, align 8
  %cmp2.not.i = icmp eq ptr %13, %15
  br i1 %cmp2.not.i, label %lor.lhs.false.i, label %while.body.i.while.cond.backedge.i_crit_edge

while.body.i.while.cond.backedge.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.i

lor.lhs.false.i:                                  ; preds = %while.body.i
  %devfn3.i = getelementptr inbounds %struct.pci_dev, ptr %call34.i, i32 0, i32 6
  %16 = ptrtoint ptr %devfn3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %devfn3.i, align 4
  %shr431.i = xor i32 %17, %11
  %18 = and i32 %shr431.i, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp6.not.i = icmp eq i32 %18, 0
  br i1 %cmp6.not.i, label %if.end.i, label %lor.lhs.false.i.while.cond.backedge.i_crit_edge

lor.lhs.false.i.while.cond.backedge.i_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.then.i, %lor.lhs.false16.i.while.cond.backedge.i_crit_edge, %if.end14.i.while.cond.backedge.i_crit_edge, %if.end.i.while.cond.backedge.i_crit_edge, %lor.lhs.false.i.while.cond.backedge.i_crit_edge, %while.body.i.while.cond.backedge.i_crit_edge
  %call.i = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef nonnull %call34.i) #5
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %while.cond.backedge.i.for_each_companion.exit_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.cond.backedge.i.for_each_companion.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for_each_companion.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %class.i = getelementptr inbounds %struct.pci_dev, ptr %call34.i, i32 0, i32 11
  %19 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %class.i, align 8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %20, label %if.end.i.while.cond.backedge.i_crit_edge [
    i32 787200, label %if.end.i.if.end14.i_crit_edge
    i32 787216, label %if.end.i.if.end14.i_crit_edge39
    i32 787232, label %if.end.i.if.end14.i_crit_edge40
  ]

if.end.i.if.end14.i_crit_edge40:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.end.i.if.end14.i_crit_edge39:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.end.i.while.cond.backedge.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.i

if.end14.i:                                       ; preds = %if.end.i.if.end14.i_crit_edge, %if.end.i.if.end14.i_crit_edge39, %if.end.i.if.end14.i_crit_edge40
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %call34.i, i32 0, i32 44, i32 8
  %22 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end14.i.while.cond.backedge.i_crit_edge, label %lor.lhs.false16.i

if.end14.i.while.cond.backedge.i_crit_edge:       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.i

lor.lhs.false16.i:                                ; preds = %if.end14.i
  %root_hub.i = getelementptr inbounds %struct.usb_bus, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %root_hub.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %root_hub.i, align 8
  %tobool17.not.i = icmp ne ptr %25, null
  %26 = and i32 %20, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 787200, i32 %26)
  %.not.i = icmp eq i32 %26, 787200
  %or.cond = select i1 %tobool17.not.i, i1 %.not.i, i1 false
  br i1 %or.cond, label %if.then.i, label %lor.lhs.false16.i.while.cond.backedge.i_crit_edge

lor.lhs.false16.i.while.cond.backedge.i_crit_edge: ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.i

if.then.i:                                        ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #7
  %hs_companion.i = getelementptr inbounds %struct.usb_bus, ptr %23, i32 0, i32 12
  %27 = ptrtoint ptr %hs_companion.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %hs_companion.i, align 4
  br label %while.cond.backedge.i

for_each_companion.exit:                          ; preds = %while.cond.backedge.i.for_each_companion.exit_crit_edge, %if.then14.for_each_companion.exit_crit_edge
  tail call void @usb_remove_hcd(ptr noundef nonnull %1) #5
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @up_write(ptr noundef nonnull @companions_rwsem) #5
  br label %if.end17

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @down_read(ptr noundef nonnull @companions_rwsem) #5
  %hs_companion = getelementptr inbounds %struct.usb_bus, ptr %1, i32 0, i32 12
  %29 = ptrtoint ptr %hs_companion to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %hs_companion, align 4
  tail call void @usb_remove_hcd(ptr noundef nonnull %1) #5
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @up_read(ptr noundef nonnull @companions_rwsem) #5
  br label %if.end17

if.end17:                                         ; preds = %if.else, %for_each_companion.exit
  tail call void @usb_put_hcd(ptr noundef nonnull %1) #5
  %and = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp18.not.not = icmp eq i32 %and, 0
  br i1 %cmp18.not.not, label %if.then19, label %if.end17.if.end20_crit_edge

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_free_irq_vectors(ptr noundef %dev) #5
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17.if.end20_crit_edge
  tail call void @pci_disable_device(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_hcd_pci_shutdown(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %driver = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 8
  %shutdown = getelementptr inbounds %struct.hc_driver, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shutdown, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %if.then4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %land.lhs.true
  tail call void %7(ptr noundef nonnull %1) #5
  %call7 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef nonnull %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then4.if.end13_crit_edge, label %land.lhs.true9

if.then4.if.end13_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true9:                                   ; preds = %if.then4
  %irq = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %land.lhs.true9.if.end13_crit_edge, label %if.then10

land.lhs.true9.if.end13_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then10:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call ptr @free_irq(i32 noundef %9, ptr noundef nonnull %1) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %land.lhs.true9.if.end13_crit_edge, %if.then4.if.end13_crit_edge
  tail call void @pci_disable_device(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_is_primary_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hcd_pci_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.device_may_wakeup.exit_crit_edge, label %land.rhs.i

entry.device_may_wakeup.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %device_may_wakeup.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %1 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %2, null
  br label %device_may_wakeup.exit

device_may_wakeup.exit:                           ; preds = %land.rhs.i, %entry.device_may_wakeup.exit_crit_edge
  %3 = phi i1 [ false, %entry.device_may_wakeup.exit_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  %call1 = tail call fastcc i32 @suspend_common(ptr noundef %dev, i1 noundef zeroext %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hcd_pci_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @resume_common(ptr noundef %dev, i32 noundef 16)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @check_root_hub_suspended(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %flags = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %shared_hcd = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shared_hcd, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %flags4 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags4, align 4
  %and5 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then2.cleanup_crit_edge, label %if.then2.cleanup.sink.split_crit_edge

if.then2.cleanup.sink.split_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then2.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.28.sink = phi ptr [ @.str.24, %entry.cleanup.sink.split_crit_edge ], [ @.str.28, %if.then2.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull %.str.28.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -16, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hcd_pci_restore(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @resume_common(ptr noundef %dev, i32 noundef 64)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hcd_pci_suspend_noirq(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %flags.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.check_root_hub_suspended.exit_crit_edge

entry.check_root_hub_suspended.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_root_hub_suspended.exit

if.end.i:                                         ; preds = %entry
  %shared_hcd.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %shared_hcd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shared_hcd.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %if.then2.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then2.i:                                       ; preds = %if.end.i
  %flags4.i = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %flags4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags4.i, align 4
  %and5.i = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.then2.i.if.end_crit_edge, label %if.then2.i.check_root_hub_suspended.exit_crit_edge

if.then2.i.check_root_hub_suspended.exit_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_root_hub_suspended.exit

if.then2.i.if.end_crit_edge:                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

check_root_hub_suspended.exit:                    ; preds = %if.then2.i.check_root_hub_suspended.exit_crit_edge, %entry.check_root_hub_suspended.exit_crit_edge
  %.str.28.sink.i = phi ptr [ @.str.24, %entry.check_root_hub_suspended.exit_crit_edge ], [ @.str.28, %if.then2.i.check_root_hub_suspended.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull %.str.28.sink.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.then2.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %call3 = tail call i32 @pci_save_state(ptr noundef %add.ptr) #5
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.do.body_crit_edge, label %if.then5

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev, i1 noundef zeroext false) #5
  br label %do.body

do.body:                                          ; preds = %if.then5, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hcd_pci_suspend_noirq.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hcd_pci_suspend_noirq, %if.then13)) #5
          to label %do.end [label %if.then13], !srcloc !95

if.then13:                                        ; preds = %do.body
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i87 = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i87, label %if.then13.device_may_wakeup.exit_crit_edge, label %land.rhs.i

if.then13.device_may_wakeup.exit_crit_edge:       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %device_may_wakeup.exit

land.rhs.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %11 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %12, null
  %phi.cast = zext i1 %tobool2.i to i32
  br label %device_may_wakeup.exit

device_may_wakeup.exit:                           ; preds = %land.rhs.i, %if.then13.device_may_wakeup.exit_crit_edge
  %13 = phi i32 [ 0, %if.then13.device_may_wakeup.exit_crit_edge ], [ %phi.cast, %land.rhs.i ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hcd_pci_suspend_noirq.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %13) #5
  br label %do.end

do.end:                                           ; preds = %device_may_wakeup.exit, %do.body
  %call16 = tail call i32 @pci_prepare_to_sleep(ptr noundef %add.ptr) #5
  %14 = zext i32 %call16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call16, label %do.body56 [
    i32 -5, label %do.body19
    i32 0, label %do.body38
  ]

do.body19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hcd_pci_suspend_noirq.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hcd_pci_suspend_noirq, %if.then31)) #5
          to label %cleanup [label %if.then31], !srcloc !95

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hcd_pci_suspend_noirq.__UNIQUE_ID_ddebug248, ptr noundef %dev, ptr noundef nonnull @.str.32) #5
  br label %cleanup

do.body38:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hcd_pci_suspend_noirq.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hcd_pci_suspend_noirq, %if.then50)) #5
          to label %cleanup [label %if.then50], !srcloc !95

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  %current_state = getelementptr i8, ptr %dev, i32 -36
  %15 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %current_state, align 4
  %add.i = add i32 %16, 1
  %arrayidx.i = getelementptr [0 x ptr], ptr @pci_power_names, i32 0, i32 %add.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hcd_pci_suspend_noirq.__UNIQUE_ID_ddebug249, ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef %18) #5
  br label %cleanup

do.body56:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__suspend_report_result(ptr noundef nonnull @.str.30, ptr noundef nonnull @pci_prepare_to_sleep, i32 noundef %call16) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body56, %if.then50, %do.body38, %if.then31, %do.body19, %check_root_hub_suspended.exit
  %retval.0 = phi i32 [ %call16, %do.body56 ], [ -16, %check_root_hub_suspended.exit ], [ 0, %do.body38 ], [ 0, %do.body19 ], [ 0, %if.then31 ], [ 0, %if.then50 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hcd_pci_resume_noirq(ptr nocapture noundef readnone %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hcd_pci_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @suspend_common(ptr noundef %dev, i1 noundef zeroext true)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hcd_pci_runtime_suspend.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hcd_pci_runtime_suspend, %if.then6)) #5
          to label %do.end [label %if.then6], !srcloc !95

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hcd_pci_runtime_suspend.__UNIQUE_ID_ddebug250, ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %call) #5
  br label %do.end

do.end:                                           ; preds = %if.then6, %entry
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hcd_pci_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @resume_common(ptr noundef %dev, i32 noundef 1040)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hcd_pci_runtime_resume.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hcd_pci_runtime_resume, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hcd_pci_runtime_resume.__UNIQUE_ID_ddebug251, ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %call) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_configuration(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @suspend_common(ptr noundef %dev, i1 noundef zeroext %do_wakeup) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %flags.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.check_root_hub_suspended.exit_crit_edge

entry.check_root_hub_suspended.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_root_hub_suspended.exit

if.end.i:                                         ; preds = %entry
  %shared_hcd.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %shared_hcd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shared_hcd.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %if.then2.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then2.i:                                       ; preds = %if.end.i
  %flags4.i = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %flags4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags4.i, align 4
  %and5.i = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.then2.i.if.end_crit_edge, label %if.then2.i.check_root_hub_suspended.exit_crit_edge

if.then2.i.check_root_hub_suspended.exit_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_root_hub_suspended.exit

if.then2.i.if.end_crit_edge:                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

check_root_hub_suspended.exit:                    ; preds = %if.then2.i.check_root_hub_suspended.exit_crit_edge, %entry.check_root_hub_suspended.exit_crit_edge
  %.str.28.sink.i = phi ptr [ @.str.24, %entry.check_root_hub_suspended.exit_crit_edge ], [ @.str.28, %if.then2.i.check_root_hub_suspended.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull %.str.28.sink.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.then2.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %driver = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 8
  %pci_suspend = getelementptr inbounds %struct.hc_driver, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %pci_suspend to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci_suspend, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %if.end.if.end58_crit_edge, label %land.lhs.true

if.end.if.end58_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

land.lhs.true:                                    ; preds = %if.end
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %and = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then5, label %land.lhs.true.if.end58_crit_edge

land.lhs.true.if.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then5:                                         ; preds = %land.lhs.true
  %do_wakeup.not = xor i1 %do_wakeup, true
  %and9 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %or.cond = select i1 %do_wakeup.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %if.end12, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.then5
  br i1 %do_wakeup, label %land.lhs.true14, label %if.end12.if.end22_crit_edge

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

land.lhs.true14:                                  ; preds = %if.end12
  %14 = ptrtoint ptr %shared_hcd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shared_hcd.i, align 4
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %land.lhs.true14.if.end22_crit_edge, label %land.lhs.true16

land.lhs.true14.if.end22_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

land.lhs.true16:                                  ; preds = %land.lhs.true14
  %flags18 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags18, align 4
  %and19 = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %land.lhs.true16.if.end22_crit_edge, label %land.lhs.true16.cleanup_crit_edge

land.lhs.true16.cleanup_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true16.if.end22_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true16.if.end22_crit_edge, %land.lhs.true14.if.end22_crit_edge, %if.end12.if.end22_crit_edge
  %call26 = tail call i32 %11(ptr noundef %1, i1 noundef zeroext %do_wakeup) #5
  %18 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver, align 8
  %pci_suspend28 = getelementptr inbounds %struct.hc_driver, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %pci_suspend28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci_suspend28, align 4
  tail call void @__suspend_report_result(ptr noundef nonnull @__func__.suspend_common, ptr noundef %21, i32 noundef %call26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp ne i32 %call26, 0
  %brmerge = or i1 %cmp, %do_wakeup.not
  br i1 %brmerge, label %lor.lhs.false.thread, label %land.lhs.true31

lor.lhs.false.thread:                             ; preds = %if.end22
  br i1 %cmp, label %lor.lhs.false.thread.cleanup_crit_edge, label %lor.lhs.false.thread.if.end58_crit_edge

lor.lhs.false.thread.if.end58_crit_edge:          ; preds = %lor.lhs.false.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

lor.lhs.false.thread.cleanup_crit_edge:           ; preds = %lor.lhs.false.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true31:                                  ; preds = %if.end22
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 4
  %and33 = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %land.lhs.true38, label %land.lhs.true31.if.then46_crit_edge

land.lhs.true31.if.then46_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then46

land.lhs.true38:                                  ; preds = %land.lhs.true31
  %24 = ptrtoint ptr %shared_hcd.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %shared_hcd.i, align 4
  %tobool40.not = icmp eq ptr %25, null
  br i1 %tobool40.not, label %land.lhs.true38.if.end58_crit_edge, label %land.lhs.true41

land.lhs.true38.if.end58_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

land.lhs.true41:                                  ; preds = %land.lhs.true38
  %flags43 = getelementptr inbounds %struct.usb_hcd, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %flags43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags43, align 4
  %and44 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %land.lhs.true41.if.end58_crit_edge, label %land.lhs.true41.if.then46_crit_edge

land.lhs.true41.if.then46_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then46

land.lhs.true41.if.end58_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then46:                                        ; preds = %land.lhs.true41.if.then46_crit_edge, %land.lhs.true31.if.then46_crit_edge
  %28 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver, align 8
  %pci_resume = getelementptr inbounds %struct.hc_driver, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %pci_resume to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pci_resume, align 4
  %tobool48.not = icmp eq ptr %31, null
  br i1 %tobool48.not, label %if.then46.cleanup_crit_edge, label %if.then49

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then49:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  %call52 = tail call i32 %31(ptr noundef %1, i1 noundef zeroext false) #5
  br label %cleanup

if.end58:                                         ; preds = %land.lhs.true41.if.end58_crit_edge, %land.lhs.true38.if.end58_crit_edge, %lor.lhs.false.thread.if.end58_crit_edge, %land.lhs.true.if.end58_crit_edge, %if.end.if.end58_crit_edge
  %msix_enabled = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 14
  %32 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load = load i16, ptr %msix_enabled, align 4
  %33 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool59.not = icmp eq i16 %33, 0
  br i1 %tobool59.not, label %if.then60, label %if.end58.if.end62_crit_edge

if.end58.if.end62_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  %call61 = tail call i32 @pci_irq_vector(ptr noundef %add.ptr, i32 noundef 0) #5
  tail call void @synchronize_irq(i32 noundef %call61) #5
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end58.if.end62_crit_edge
  tail call void @pci_disable_device(ptr noundef %add.ptr) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.then49, %if.then46.cleanup_crit_edge, %lor.lhs.false.thread.cleanup_crit_edge, %land.lhs.true16.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %check_root_hub_suspended.exit
  %retval.0 = phi i32 [ 0, %if.end62 ], [ -16, %check_root_hub_suspended.exit ], [ -16, %if.then5.cleanup_crit_edge ], [ -16, %land.lhs.true16.cleanup_crit_edge ], [ -16, %if.then49 ], [ -16, %if.then46.cleanup_crit_edge ], [ %call26, %lor.lhs.false.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__suspend_report_result(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @resume_common(ptr noundef %dev, i32 noundef %event) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %flags = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %shared_hcd = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shared_hcd, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.if.end13_crit_edge, label %land.lhs.true

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true:                                    ; preds = %lor.lhs.false
  %flags4 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags4, align 4
  %and5 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resume_common.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resume_common, %if.then12)) #5
          to label %cleanup [label %if.then12], !srcloc !95

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resume_common.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.19) #5
  br label %cleanup

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %lor.lhs.false.if.end13_crit_edge
  %call14 = tail call i32 @pci_enable_device(ptr noundef %add.ptr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %do.end18, label %if.end19

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call14) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  tail call void @pci_set_master(ptr noundef %add.ptr) #5
  %driver = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 8
  %pci_resume = getelementptr inbounds %struct.hc_driver, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %pci_resume to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci_resume, align 4
  %tobool20.not = icmp eq ptr %11, null
  br i1 %tobool20.not, label %if.end19.cleanup_crit_edge, label %land.lhs.true21

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true21:                                  ; preds = %if.end19
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and23 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.then25, label %land.lhs.true21.cleanup_crit_edge

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then25:                                        ; preds = %land.lhs.true21
  %class = getelementptr i8, ptr %dev, i32 -96
  %14 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 787232, i32 %15)
  %cmp26 = icmp ne i32 %15, 787232
  call void @__sanitizer_cov_trace_const_cmp4(i32 1040, i32 %event)
  %cmp28.not = icmp eq i32 %event, 1040
  %or.cond = or i1 %cmp28.not, %cmp26
  br i1 %or.cond, label %if.then25.if.end30_crit_edge, label %if.then29

if.then25.if.end30_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then29:                                        ; preds = %if.then25
  %devfn.i = getelementptr i8, ptr %dev, i32 -108
  %16 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %devfn.i, align 4
  %call32.i = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef null) #5
  %cmp.not33.i = icmp eq ptr %call32.i, null
  br i1 %cmp.not33.i, label %if.then29.if.end30_crit_edge, label %while.body.lr.ph.i

if.then29.if.end30_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

while.body.lr.ph.i:                               ; preds = %if.then29
  %bus1.i = getelementptr i8, ptr %dev, i32 -128
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call34.i = phi ptr [ %call32.i, %while.body.lr.ph.i ], [ %call.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %call34.i, i32 0, i32 1
  %18 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i, align 8
  %20 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus1.i, align 8
  %cmp2.not.i = icmp eq ptr %19, %21
  br i1 %cmp2.not.i, label %lor.lhs.false.i, label %while.body.i.while.cond.backedge.i_crit_edge

while.body.i.while.cond.backedge.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.i

lor.lhs.false.i:                                  ; preds = %while.body.i
  %devfn3.i = getelementptr inbounds %struct.pci_dev, ptr %call34.i, i32 0, i32 6
  %22 = ptrtoint ptr %devfn3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %devfn3.i, align 4
  %shr431.i = xor i32 %23, %17
  %24 = and i32 %shr431.i, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp6.not.i = icmp eq i32 %24, 0
  br i1 %cmp6.not.i, label %if.end.i, label %lor.lhs.false.i.while.cond.backedge.i_crit_edge

lor.lhs.false.i.while.cond.backedge.i_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.then.i, %lor.lhs.false16.i.while.cond.backedge.i_crit_edge, %if.end14.i.while.cond.backedge.i_crit_edge, %if.end.i.while.cond.backedge.i_crit_edge, %lor.lhs.false.i.while.cond.backedge.i_crit_edge, %while.body.i.while.cond.backedge.i_crit_edge
  %call.i = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef nonnull %call34.i) #5
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %while.cond.backedge.i.if.end30_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.cond.backedge.i.if.end30_crit_edge:         ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.end.i:                                         ; preds = %lor.lhs.false.i
  %class.i = getelementptr inbounds %struct.pci_dev, ptr %call34.i, i32 0, i32 11
  %25 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %class.i, align 8
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %26, label %if.end.i.while.cond.backedge.i_crit_edge [
    i32 787200, label %if.end.i.if.end14.i_crit_edge
    i32 787216, label %if.end.i.if.end14.i_crit_edge68
    i32 787232, label %if.end.i.if.end14.i_crit_edge69
  ]

if.end.i.if.end14.i_crit_edge69:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.end.i.if.end14.i_crit_edge68:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.end.i.while.cond.backedge.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.i

if.end14.i:                                       ; preds = %if.end.i.if.end14.i_crit_edge, %if.end.i.if.end14.i_crit_edge68, %if.end.i.if.end14.i_crit_edge69
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %call34.i, i32 0, i32 44, i32 8
  %28 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end14.i.while.cond.backedge.i_crit_edge, label %lor.lhs.false16.i

if.end14.i.while.cond.backedge.i_crit_edge:       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.i

lor.lhs.false16.i:                                ; preds = %if.end14.i
  %root_hub.i = getelementptr inbounds %struct.usb_bus, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %root_hub.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %root_hub.i, align 8
  %tobool17.not.i = icmp ne ptr %31, null
  %32 = and i32 %26, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 787200, i32 %32)
  %.not.i = icmp eq i32 %32, 787200
  %or.cond67 = select i1 %tobool17.not.i, i1 %.not.i, i1 false
  br i1 %or.cond67, label %if.then.i, label %lor.lhs.false16.i.while.cond.backedge.i_crit_edge

lor.lhs.false16.i.while.cond.backedge.i_crit_edge: ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.i

if.then.i:                                        ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %call34.i, i32 0, i32 44
  %call2.i = tail call i32 @device_pm_wait_for_dev(ptr noundef %dev, ptr noundef %dev1.i) #5
  br label %while.cond.backedge.i

if.end30:                                         ; preds = %while.cond.backedge.i.if.end30_crit_edge, %if.then29.if.end30_crit_edge, %if.then25.if.end30_crit_edge
  %33 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver, align 8
  %pci_resume32 = getelementptr inbounds %struct.hc_driver, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %pci_resume32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pci_resume32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %event)
  %cmp33 = icmp eq i32 %event, 64
  %call34 = tail call i32 %36(ptr noundef %1, i1 noundef zeroext %cmp33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end30.cleanup_crit_edge, label %do.end39

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end39:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call34) #8
  tail call void @usb_hc_died(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %if.end30.cleanup_crit_edge, %land.lhs.true21.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %do.end18, %if.then12, %do.body
  %retval.0 = phi i32 [ %call14, %do.end18 ], [ 0, %if.then12 ], [ %call14, %land.lhs.true21.cleanup_crit_edge ], [ %call34, %do.end39 ], [ 0, %if.end30.cleanup_crit_edge ], [ %call14, %if.end19.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hc_died(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_pm_wait_for_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_prepare_to_sleep(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !17, !18, !20, !21, !22, !24, !26, !28, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !80, !81, !82, !84, !85}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/core/hcd-pci.c", i32 200, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @usb_hcd_pci_probe._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @usb_hcd_pci_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/core/hcd-pci.c", i32 224, i32 4}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @usb_hcd_pci_probe.__UNIQUE_ID_ddebug243, !9, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/core/hcd-pci.c", i32 231, i32 4}
!14 = !{ptr @usb_hcd_pci_probe.__UNIQUE_ID_ddebug244, !13, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/core/hcd-pci.c", i32 252, i32 4}
!17 = !{ptr @usb_hcd_pci_probe.__UNIQUE_ID_ddebug245, !16, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/core/hcd-pci.c", i32 296, i32 2}
!20 = !{ptr @usb_hcd_pci_probe._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @usb_hcd_pci_probe._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__ksymtab_usb_hcd_pci_probe, !23, !"__ksymtab_usb_hcd_pci_probe", i1 false, i1 false}
!23 = !{!"../drivers/usb/core/hcd-pci.c", i32 299, i32 1}
!24 = !{ptr @__ksymtab_usb_hcd_pci_remove, !25, !"__ksymtab_usb_hcd_pci_remove", i1 false, i1 false}
!25 = !{!"../drivers/usb/core/hcd-pci.c", i32 359, i32 1}
!26 = !{ptr @__ksymtab_usb_hcd_pci_shutdown, !27, !"__ksymtab_usb_hcd_pci_shutdown", i1 false, i1 false}
!27 = !{!"../drivers/usb/core/hcd-pci.c", i32 381, i32 1}
!28 = !{ptr @usb_hcd_pci_pm_ops, !29, !"usb_hcd_pci_pm_ops", i1 false, i1 false}
!29 = !{!"../drivers/usb/core/hcd-pci.c", i32 614, i32 25}
!30 = !{ptr @__ksymtab_usb_hcd_pci_pm_ops, !31, !"__ksymtab_usb_hcd_pci_pm_ops", i1 false, i1 false}
!31 = !{!"../drivers/usb/core/hcd-pci.c", i32 630, i32 1}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/core/hcd-pci.c", i32 31, i32 8}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @companions_rwsem, !33, !"companions_rwsem", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/core/hcd-pci.c", i32 109, i32 4}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ehci_post_add.__UNIQUE_ID_ddebug241, !37, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/core/hcd-pci.c", i32 127, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @non_ehci_add.__UNIQUE_ID_ddebug242, !41, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!44 = !{ptr @__func__.suspend_common, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/core/hcd-pci.c", i32 449, i32 3}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/core/hcd-pci.c", i32 488, i32 3}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @resume_common.__UNIQUE_ID_ddebug246, !47, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/core/hcd-pci.c", i32 494, i32 3}
!52 = !{ptr @resume_common._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @resume_common._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/core/hcd-pci.c", i32 514, i32 4}
!56 = !{ptr @resume_common._entry.21, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @resume_common._entry_ptr.23, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/core/hcd-pci.c", i32 411, i32 3}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @check_root_hub_suspended._entry, !59, !"_entry", i1 false, i1 false}
!63 = !{ptr @check_root_hub_suspended._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/core/hcd-pci.c", i32 417, i32 4}
!66 = !{ptr @check_root_hub_suspended._entry.27, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @check_root_hub_suspended._entry_ptr.29, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/core/hcd-pci.c", i32 546, i32 2}
!70 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @hcd_pci_suspend_noirq.__UNIQUE_ID_ddebug247, !69, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/core/hcd-pci.c", i32 553, i32 3}
!74 = !{ptr @hcd_pci_suspend_noirq.__UNIQUE_ID_ddebug248, !73, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/core/hcd-pci.c", i32 556, i32 3}
!77 = !{ptr @hcd_pci_suspend_noirq.__UNIQUE_ID_ddebug249, !76, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/core/hcd-pci.c", i32 600, i32 2}
!80 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @hcd_pci_runtime_suspend.__UNIQUE_ID_ddebug250, !79, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/core/hcd-pci.c", i32 610, i32 2}
!84 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @hcd_pci_runtime_resume.__UNIQUE_ID_ddebug251, !83, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 2148706550, i64 2148706555, i64 2148706568, i64 2148706612, i64 2148706646, i64 2148706667}
!96 = !{i64 2148224154}
!97 = !{i64 708977, i64 709002, i64 709024, i64 709040, i64 709052, i64 709072, i64 709096, i64 709112, i64 709124}
!98 = !{i64 2148224342}
!99 = !{i64 2148224735, i64 2148224761, i64 2148224790, i64 2148224824, i64 2148224855, i64 2148224878}
!100 = !{i64 619948}
!101 = !{i64 617651}
!102 = !{i64 617461}
