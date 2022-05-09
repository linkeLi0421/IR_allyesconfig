; ModuleID = '/llk/IR_all_yes/drivers/usb/host/xhci-ext-caps.c_pt.bc'
source_filename = "../drivers/usb/host/xhci-ext-caps.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+xhci_ext_cap_init\22, \22a\22\09"
module asm "\09.weak\09__crc_xhci_ext_cap_init\09\09\09\09"
module asm "\09.long\09__crc_xhci_ext_cap_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xhci_ext_cap_init:\09\09\09\09\09"
module asm "\09.asciz \09\22xhci_ext_cap_init\22\09\09\09\09\09"
module asm "__kstrtabns_xhci_ext_cap_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.property_entry = type { ptr, i32, i8, i32, %union.anon.73 }
%union.anon.73 = type { %union.anon.74 }
%union.anon.74 = type { [1 x i64] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.xhci_hcd = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, i32, %struct.delayed_work, %struct.completion, ptr, ptr, %struct.xhci_erst, ptr, %struct.list_head, %struct.mutex, ptr, [256 x ptr], ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.s3_save, i64, i32, i32, ptr, %struct.xhci_hub, %struct.xhci_hub, i8, ptr, i32, ptr, i32, %struct.timer_list, i32, i16, ptr, ptr, %struct.list_head, ptr, [4 x i8], [0 x i32] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xhci_erst = type { ptr, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.s3_save = type { i32, i32, i64, i32, i32, i32, i32, i64, i64 }
%struct.xhci_hub = type { ptr, i32, ptr, %struct.xhci_bus_state, i8, i8 }
%struct.xhci_bus_state = type { i32, i32, i32, i32, i32, [31 x i32], i32, i32, [31 x %struct.completion], [31 x %struct.completion] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.67, i32 }
%union.anon.67 = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__kstrtab_xhci_ext_cap_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_xhci_ext_cap_init = external dso_local constant [0 x i8], align 1
@__ksymtab_xhci_ext_cap_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xhci_ext_cap_init to i32), ptr @__kstrtab_xhci_ext_cap_init, ptr @__kstrtabns_xhci_ext_cap_init }, section "___ksymtab_gpl+xhci_ext_cap_init", align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"intel_xhci_usb_sw\00", [46 x i8] zeroinitializer }, align 32
@xhci_create_intel_xhci_sw_pdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 40, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"couldn't allocate %s platform device\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"xhci_create_intel_xhci_sw_pdev\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/usb/host/xhci-ext-caps.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xhci_create_intel_xhci_sw_pdev._entry_ptr = internal global ptr @xhci_create_intel_xhci_sw_pdev._entry, section ".printk_index", align 4
@xhci_create_intel_xhci_sw_pdev._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 51, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"couldn't add resources to intel_xhci_usb_sw pdev\0A\00", [46 x i8] zeroinitializer }, align 32
@xhci_create_intel_xhci_sw_pdev._entry_ptr.8 = internal global ptr @xhci_create_intel_xhci_sw_pdev._entry.6, section ".printk_index", align 4
@role_switch_props = internal constant { [2 x %struct.property_entry], [48 x i8] } { [2 x %struct.property_entry] [%struct.property_entry { ptr @.str.18, i32 0, i8 1, i32 0, %union.anon.73 zeroinitializer }, %struct.property_entry zeroinitializer], [48 x i8] zeroinitializer }, align 32
@xhci_create_intel_xhci_sw_pdev._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 60, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register device properties\0A\00", [58 x i8] zeroinitializer }, align 32
@xhci_create_intel_xhci_sw_pdev._entry_ptr.11 = internal global ptr @xhci_create_intel_xhci_sw_pdev._entry.9, section ".printk_index", align 4
@xhci_create_intel_xhci_sw_pdev._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 70, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"couldn't register intel_xhci_usb_sw pdev\0A\00", [54 x i8] zeroinitializer }, align 32
@xhci_create_intel_xhci_sw_pdev._entry_ptr.14 = internal global ptr @xhci_create_intel_xhci_sw_pdev._entry.12, section ".printk_index", align 4
@xhci_create_intel_xhci_sw_pdev._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 77, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"couldn't add unregister action for intel_xhci_usb_sw pdev\0A\00", [37 x i8] zeroinitializer }, align 32
@xhci_create_intel_xhci_sw_pdev._entry_ptr.17 = internal global ptr @xhci_create_intel_xhci_sw_pdev._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sw_switch_disable\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 37, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 39, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 51, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"role_switch_props\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 18, i32 36 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 60, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 70, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 77, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [36 x i8] c"../drivers/usb/host/xhci-ext-caps.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 19, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__ksymtab_xhci_ext_cap_init, ptr @xhci_create_intel_xhci_sw_pdev._entry, ptr @xhci_create_intel_xhci_sw_pdev._entry.12, ptr @xhci_create_intel_xhci_sw_pdev._entry.15, ptr @xhci_create_intel_xhci_sw_pdev._entry.6, ptr @xhci_create_intel_xhci_sw_pdev._entry.9, ptr @xhci_create_intel_xhci_sw_pdev._entry_ptr, ptr @xhci_create_intel_xhci_sw_pdev._entry_ptr.11, ptr @xhci_create_intel_xhci_sw_pdev._entry_ptr.14, ptr @xhci_create_intel_xhci_sw_pdev._entry_ptr.17, ptr @xhci_create_intel_xhci_sw_pdev._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @role_switch_props, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_create_intel_xhci_sw_pdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_create_intel_xhci_sw_pdev._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @role_switch_props to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_create_intel_xhci_sw_pdev._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_create_intel_xhci_sw_pdev._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_create_intel_xhci_sw_pdev._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xhci_ext_cap_init(ptr nocapture noundef readonly %xhci) #0 align 64 {
entry:
  %res.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cap_regs = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 2
  %0 = ptrtoint ptr %cap_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cap_regs, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp2.i = icmp eq i32 %2, -1
  br i1 %cmp2.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  %4 = lshr i32 %3, 14
  %shl.i = and i32 %4, 262140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i)
  %tobool4.not.i = icmp eq i32 %shl.i, 0
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  br label %do.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.i:                                        ; preds = %if.end24.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  %offset.1.i = phi i32 [ %shl27.i, %if.end24.i.do.body.i_crit_edge ], [ %shl.i, %if.end.i.do.body.i_crit_edge ]
  %add.ptr10.i = getelementptr i8, ptr %1, i32 %offset.1.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #5, !srcloc !41
  %6 = lshr i32 %5, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp14.i = icmp eq i32 %5, -1
  br i1 %cmp14.i, label %do.body.i.cleanup_crit_edge, label %if.end16.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.1.i)
  %cmp17.not.i = icmp eq i32 %offset.1.i, 0
  br i1 %cmp17.not.i, label %if.end24.i, label %while.body.lr.ph

if.end24.i:                                       ; preds = %if.end16.i
  %and26.i = and i32 %6, 255
  %shl27.i = shl nuw nsw i32 %and26.i, 2
  %tobool28.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool28.not.i, label %if.end24.i.cleanup_crit_edge, label %if.end24.i.do.body.i_crit_edge

if.end24.i.do.body.i_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.end24.i.cleanup_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end16.i
  %quirks = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %7 = getelementptr inbounds i8, ptr %res.i, i32 16
  %end.i = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 1
  %name.i = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 2
  %flags.i = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %xhci_find_next_ext_cap.exit42.while.body_crit_edge, %while.body.lr.ph
  %offset.059 = phi i32 [ %offset.1.i, %while.body.lr.ph ], [ %offset.1.i30, %xhci_find_next_ext_cap.exit42.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %1, i32 %offset.059
  %8 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  %.mask = and i32 %8, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741824, i32 %.mask)
  %cond = icmp eq i32 %.mask, -1073741824
  br i1 %cond, label %sw.bb, label %while.body.sw.epilog_crit_edge

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body
  %9 = ptrtoint ptr %quirks to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %quirks, align 8
  %and3 = and i64 %10, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool4.not = icmp eq i64 %and3, 0
  br i1 %tobool4.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %11 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xhci, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #5
  %15 = call ptr @memset(ptr %7, i32 0, i32 16)
  %call1.i = call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef -1) #5
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i21

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xhci, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str) #8
  br label %xhci_create_intel_xhci_sw_pdev.exit.thread

if.end.i21:                                       ; preds = %if.then
  %rsrc_start.i = getelementptr inbounds %struct.usb_hcd, ptr %12, i32 0, i32 17
  %20 = ptrtoint ptr %rsrc_start.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rsrc_start.i, align 8
  %add.i = add i32 %21, %offset.059
  %22 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add.i, ptr %res.i, align 4
  %sub.i = add i32 %add.i, 1023
  %23 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub.i, ptr %end.i, align 4
  %24 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str, ptr %name.i, align 4
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 512, ptr %flags.i, align 4
  %call7.i = call i32 @platform_device_add_resources(ptr noundef nonnull %call1.i, ptr noundef nonnull %res.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end13.i, label %do.end12.i

do.end12.i:                                       ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.7) #8
  call void @platform_device_put(ptr noundef nonnull %call1.i) #5
  br label %xhci_create_intel_xhci_sw_pdev.exit.thread

if.end13.i:                                       ; preds = %if.end.i21
  %device.i = getelementptr i8, ptr %14, i32 -102
  %26 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8885, i16 %27)
  %cmp.i = icmp eq i16 %27, 8885
  br i1 %cmp.i, label %if.then15.i, label %if.end13.i.if.end24.i22_crit_edge

if.end13.i.if.end24.i22_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i22

if.then15.i:                                      ; preds = %if.end13.i
  %dev16.i = getelementptr inbounds %struct.platform_device, ptr %call1.i, i32 0, i32 3
  %call17.i = call i32 @device_create_managed_software_node(ptr noundef %dev16.i, ptr noundef nonnull @role_switch_props, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.then15.i.if.end24.i22_crit_edge, label %do.end22.i

if.then15.i.if.end24.i22_crit_edge:               ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i22

do.end22.i:                                       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.10) #8
  call void @platform_device_put(ptr noundef nonnull %call1.i) #5
  br label %xhci_create_intel_xhci_sw_pdev.exit.thread

if.end24.i22:                                     ; preds = %if.then15.i.if.end24.i22_crit_edge, %if.end13.i.if.end24.i22_crit_edge
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %call1.i, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %14, ptr %parent.i, align 8
  %call26.i = call i32 @platform_device_add(ptr noundef nonnull %call1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end32.i, label %do.end31.i

do.end31.i:                                       ; preds = %if.end24.i22
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.13) #8
  call void @platform_device_put(ptr noundef nonnull %call1.i) #5
  br label %xhci_create_intel_xhci_sw_pdev.exit.thread

if.end32.i:                                       ; preds = %if.end24.i22
  %call.i.i = call i32 @devm_add_action(ptr noundef %14, ptr noundef nonnull @xhci_intel_unregister_pdev, ptr noundef nonnull %call1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %xhci_create_intel_xhci_sw_pdev.exit, label %do.end38.i

do.end38.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @platform_device_unregister(ptr noundef nonnull %call1.i) #5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.16) #8
  br label %xhci_create_intel_xhci_sw_pdev.exit.thread

xhci_create_intel_xhci_sw_pdev.exit.thread:       ; preds = %do.end38.i, %do.end31.i, %do.end22.i, %do.end12.i, %do.end.i
  %retval.0.i23.ph = phi i32 [ -12, %do.end.i ], [ %call.i.i, %do.end38.i ], [ %call26.i, %do.end31.i ], [ %call17.i, %do.end22.i ], [ %call7.i, %do.end12.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #5
  br label %cleanup

xhci_create_intel_xhci_sw_pdev.exit:              ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %xhci_create_intel_xhci_sw_pdev.exit, %sw.bb.sw.epilog_crit_edge, %while.body.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %offset.059)
  %cond45 = icmp eq i32 %offset.059, 16
  br i1 %cond45, label %if.then.i, label %sw.epilog.do.body.i33.preheader_crit_edge

sw.epilog.do.body.i33.preheader_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i33.preheader

if.then.i:                                        ; preds = %sw.epilog
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp2.i25 = icmp eq i32 %29, -1
  br i1 %cmp2.i25, label %if.then.i.cleanup_crit_edge, label %if.end.i28

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i28:                                       ; preds = %if.then.i
  %30 = call i32 @llvm.bswap.i32(i32 %29) #5
  %31 = lshr i32 %30, 14
  %shl.i26 = and i32 %31, 262140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i26)
  %tobool4.not.i27 = icmp eq i32 %shl.i26, 0
  br i1 %tobool4.not.i27, label %if.end.i28.cleanup_crit_edge, label %if.end.i28.do.body.i33.preheader_crit_edge

if.end.i28.do.body.i33.preheader_crit_edge:       ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i33.preheader

if.end.i28.cleanup_crit_edge:                     ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.i33.preheader:                            ; preds = %if.end.i28.do.body.i33.preheader_crit_edge, %sw.epilog.do.body.i33.preheader_crit_edge
  %offset.1.i30.ph = phi i32 [ %offset.059, %sw.epilog.do.body.i33.preheader_crit_edge ], [ %shl.i26, %if.end.i28.do.body.i33.preheader_crit_edge ]
  br label %do.body.i33

do.body.i33:                                      ; preds = %if.end24.i40.do.body.i33_crit_edge, %do.body.i33.preheader
  %offset.1.i30 = phi i32 [ %add.i38, %if.end24.i40.do.body.i33_crit_edge ], [ %offset.1.i30.ph, %do.body.i33.preheader ]
  %add.ptr10.i31 = getelementptr i8, ptr %1, i32 %offset.1.i30
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i31) #5, !srcloc !41
  %33 = lshr i32 %32, 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp14.i32 = icmp eq i32 %32, -1
  br i1 %cmp14.i32, label %do.body.i33.cleanup_crit_edge, label %if.end16.i35

do.body.i33.cleanup_crit_edge:                    ; preds = %do.body.i33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16.i35:                                     ; preds = %do.body.i33
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.1.i30, i32 %offset.059)
  %cmp17.not.i34 = icmp eq i32 %offset.1.i30, %offset.059
  br i1 %cmp17.not.i34, label %if.end24.i40, label %xhci_find_next_ext_cap.exit42

if.end24.i40:                                     ; preds = %if.end16.i35
  %and26.i36 = and i32 %33, 255
  %shl27.i37 = shl nuw nsw i32 %and26.i36, 2
  %add.i38 = add i32 %shl27.i37, %offset.059
  %tobool28.not.i39 = icmp eq i32 %and26.i36, 0
  br i1 %tobool28.not.i39, label %if.end24.i40.cleanup_crit_edge, label %if.end24.i40.do.body.i33_crit_edge

if.end24.i40.do.body.i33_crit_edge:               ; preds = %if.end24.i40
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i33

if.end24.i40.cleanup_crit_edge:                   ; preds = %if.end24.i40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

xhci_find_next_ext_cap.exit42:                    ; preds = %if.end16.i35
  %tobool.not = icmp eq i32 %offset.1.i30, 0
  br i1 %tobool.not, label %xhci_find_next_ext_cap.exit42.cleanup_crit_edge, label %xhci_find_next_ext_cap.exit42.while.body_crit_edge

xhci_find_next_ext_cap.exit42.while.body_crit_edge: ; preds = %xhci_find_next_ext_cap.exit42
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

xhci_find_next_ext_cap.exit42.cleanup_crit_edge:  ; preds = %xhci_find_next_ext_cap.exit42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %xhci_find_next_ext_cap.exit42.cleanup_crit_edge, %if.end24.i40.cleanup_crit_edge, %do.body.i33.cleanup_crit_edge, %if.end.i28.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %xhci_create_intel_xhci_sw_pdev.exit.thread, %if.end24.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i23.ph, %xhci_create_intel_xhci_sw_pdev.exit.thread ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end24.i40.cleanup_crit_edge ], [ 0, %do.body.i33.cleanup_crit_edge ], [ 0, %xhci_find_next_ext_cap.exit42.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %if.end.i28.cleanup_crit_edge ], [ 0, %if.end24.i.cleanup_crit_edge ], [ 0, %do.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_managed_software_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xhci_intel_unregister_pdev(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @platform_device_unregister(ptr noundef %arg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__ksymtab_xhci_ext_cap_init, !1, !"__ksymtab_xhci_ext_cap_init", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/xhci-ext-caps.c", i32 110, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/xhci-ext-caps.c", i32 37, i32 31}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/xhci-ext-caps.c", i32 39, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @xhci_create_intel_xhci_sw_pdev._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @xhci_create_intel_xhci_sw_pdev._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/host/xhci-ext-caps.c", i32 51, i32 3}
!14 = !{ptr @xhci_create_intel_xhci_sw_pdev._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @xhci_create_intel_xhci_sw_pdev._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/host/xhci-ext-caps.c", i32 60, i32 4}
!18 = !{ptr @xhci_create_intel_xhci_sw_pdev._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @xhci_create_intel_xhci_sw_pdev._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/host/xhci-ext-caps.c", i32 70, i32 3}
!22 = !{ptr @xhci_create_intel_xhci_sw_pdev._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @xhci_create_intel_xhci_sw_pdev._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/host/xhci-ext-caps.c", i32 77, i32 3}
!26 = !{ptr @xhci_create_intel_xhci_sw_pdev._entry.15, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @xhci_create_intel_xhci_sw_pdev._entry_ptr.17, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/host/xhci-ext-caps.c", i32 19, i32 2}
!30 = !{ptr @role_switch_props, !31, !"role_switch_props", i1 false, i1 false}
!31 = !{!"../drivers/usb/host/xhci-ext-caps.c", i32 18, i32 36}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i64 5023364}
!42 = !{i64 2154770859}
!43 = !{i64 2154771352}
!44 = !{i64 2154791039}
