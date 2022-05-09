; ModuleID = '/llk/IR_all_yes/drivers/usb/dwc2/core_intr.c_pt.bc'
source_filename = "../drivers/usb/dwc2/core_intr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dwc2_hsotg = type { ptr, ptr, %struct.dwc2_hw_params, %struct.dwc2_core_params, i32, i32, ptr, i32, i8, i8, i8, i16, ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], ptr, ptr, %struct.spinlock, ptr, i32, ptr, ptr, ptr, i8, ptr, %struct.work_struct, %struct.timer_list, i32, %struct.dwc2_gregs_backup, %struct.dwc2_dregs_backup, %struct.dwc2_hregs_backup, ptr, ptr, i8, %union.dwc2_hcd_internal_flags, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i16, [25 x i32], i16, i8, i16, ptr, ptr, i32, i32, %struct.list_head, i32, i32, i32, [16 x ptr], ptr, i32, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, i8, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i8, i8, i32, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i32], [2 x ptr], i32, ptr, i32, ptr, %struct.usb_gadget, i8, [16 x ptr], [16 x ptr] }
%struct.dwc2_hw_params = type <{ i24, i64, i32, i32, i32, i32, i32, [16 x i32] }>
%struct.dwc2_core_params = type { %struct.usb_otg_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i8, i8, i32, i32, [16 x i32], i8 }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dwc2_gregs_backup = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dwc2_dregs_backup = type { i32, i32, i32, i32, i32, [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], i8 }
%struct.dwc2_hregs_backup = type { i32, i32, [16 x i32], i32, i32, i32, i8 }
%union.dwc2_hcd_internal_flags = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }

@dwc2_handle_common_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 839, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Controller is dead\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dwc2_handle_common_intr\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/dwc2/core_intr.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dwc2_handle_common_intr._entry_ptr = internal global ptr @dwc2_handle_common_intr._entry, section ".printk_index", align 4
@dwc2_handle_common_intr.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 -35, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dwc2\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c" --Port interrupt received in Device mode--\0A\00", [51 x i8] zeroinitializer }, align 32
@dwc2_read_common_intr.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 -88, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dwc2_read_common_intr\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gintsts=%08x  gintmsk=%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@dwc2_handle_gpwrdn_intr.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 -65, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dwc2_handle_gpwrdn_intr\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: dwc2_handle_gpwrdwn_intr called gpwrdn= %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@dwc2_handle_gpwrdn_intr.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 -64, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: GPWRDN_DISCONN_DET\0A\00", [40 x i8] zeroinitializer }, align 32
@dwc2_handle_gpwrdn_intr.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.9, ptr @.str.2, ptr @.str.12, i8 0, i8 -62, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: GPWRDN_LNSTSCHG\0A\00", [43 x i8] zeroinitializer }, align 32
@dwc2_handle_gpwrdn_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.2, i32 784, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"exit hibernation failed.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@dwc2_handle_gpwrdn_intr._entry_ptr = internal global ptr @dwc2_handle_gpwrdn_intr._entry, section ".printk_index", align 4
@dwc2_handle_gpwrdn_intr._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.2, i32 790, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@dwc2_handle_gpwrdn_intr._entry_ptr.16 = internal global ptr @dwc2_handle_gpwrdn_intr._entry.15, section ".printk_index", align 4
@dwc2_handle_gpwrdn_intr.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.9, ptr @.str.2, ptr @.str.17, i8 0, i8 -58, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: GPWRDN_RST_DET\0A\00", [44 x i8] zeroinitializer }, align 32
@dwc2_handle_gpwrdn_intr._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.2, i32 800, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@dwc2_handle_gpwrdn_intr._entry_ptr.19 = internal global ptr @dwc2_handle_gpwrdn_intr._entry.18, section ".printk_index", align 4
@dwc2_handle_gpwrdn_intr.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.9, ptr @.str.2, ptr @.str.20, i8 0, i8 -55, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: GPWRDN_STS_CHGINT\0A\00", [41 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dwc2_handle_mode_mismatch_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 103, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Mode Mismatch Interrupt: currently in %s mode\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dwc2_handle_mode_mismatch_intr\00", [33 x i8] zeroinitializer }, align 32
@dwc2_handle_mode_mismatch_intr._entry_ptr = internal global ptr @dwc2_handle_mode_mismatch_intr._entry, section ".printk_index", align 4
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Host\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Device\00", [25 x i8] zeroinitializer }, align 32
@dwc2_handle_otg_intr.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 30, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dwc2_handle_otg_intr\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"++OTG Interrupt gotgint=%0x [%s]\0A\00", [62 x i8] zeroinitializer }, align 32
@dwc2_handle_otg_intr.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.25, ptr @.str.2, ptr @.str.27, i8 0, i8 31, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c" ++OTG Interrupt: Session End Detected++ (%s)\0A\00", [49 x i8] zeroinitializer }, align 32
@dwc2_handle_otg_intr.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.25, ptr @.str.2, ptr @.str.28, i8 0, i8 35, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Session End Detected\0A\00", [42 x i8] zeroinitializer }, align 32
@dwc2_handle_otg_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.25, ptr @.str.2, i32 142, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Device Not Connected/Responding!\0A\00", [62 x i8] zeroinitializer }, align 32
@dwc2_handle_otg_intr._entry_ptr = internal global ptr @dwc2_handle_otg_intr._entry, section ".printk_index", align 4
@dwc2_handle_otg_intr.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.25, ptr @.str.2, ptr @.str.30, i8 0, i8 40, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c" ++OTG Interrupt: Session Request Success Status Change++\0A\00", [37 x i8] zeroinitializer }, align 32
@dwc2_handle_otg_intr.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.25, ptr @.str.2, ptr @.str.31, i8 0, i8 54, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HNP Failed\0A\00", [20 x i8] zeroinitializer }, align 32
@dwc2_handle_otg_intr._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.2, i32 221, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Device Not Connected/Responding\0A\00", [63 x i8] zeroinitializer }, align 32
@dwc2_handle_otg_intr._entry_ptr.34 = internal global ptr @dwc2_handle_otg_intr._entry.32, section ".printk_index", align 4
@dwc2_handle_otg_intr.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.25, ptr @.str.2, ptr @.str.35, i8 0, i8 58, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c" ++OTG Interrupt: Host Negotiation Detected++ (%s)\0A\00", [44 x i8] zeroinitializer }, align 32
@dwc2_handle_otg_intr.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.25, ptr @.str.2, ptr @.str.36, i8 0, i8 59, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"a_suspend->a_peripheral (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@dwc2_handle_otg_intr.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.25, ptr @.str.2, ptr @.str.37, i8 0, i8 64, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c" ++OTG Interrupt: A-Device Timeout Change++\0A\00", [51 x i8] zeroinitializer }, align 32
@dwc2_handle_otg_intr.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.25, ptr @.str.2, ptr @.str.38, i8 0, i8 64, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c" ++OTG Interrupt: Debounce Done++\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"a_host\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"a_suspend\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a_peripheral\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"b_peripheral\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"b_host\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@dwc2_handle_conn_id_status_change_intr.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 71, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dwc2_handle_conn_id_status_change_intr\00", [57 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c" ++Connector ID Status Change Interrupt++  (%s)\0A\00", [47 x i8] zeroinitializer }, align 32
@dwc2_handle_disconnect_intr.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 122, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dwc2_handle_disconnect_intr\00", [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"++Disconnect Detected Interrupt++ (%s) %s\0A\00", [53 x i8] zeroinitializer }, align 32
@dwc2_handle_session_req_intr.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 79, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dwc2_handle_session_req_intr\00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Session request interrupt - lx_state=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@dwc2_handle_session_req_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 325, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"exit power_down failed\0A\00", [40 x i8] zeroinitializer }, align 32
@dwc2_handle_session_req_intr._entry_ptr = internal global ptr @dwc2_handle_session_req_intr._entry, section ".printk_index", align 4
@dwc2_handle_wakeup_detected_intr.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 0, i8 103, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dwc2_handle_wakeup_detected_intr\00", [63 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"++Resume or Remote Wakeup Detected Interrupt++\0A\00", [48 x i8] zeroinitializer }, align 32
@dwc2_handle_wakeup_detected_intr.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.52, ptr @.str.2, ptr @.str.54, i8 0, i8 103, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s lxstate = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@dwc2_handle_wakeup_detected_intr.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.52, ptr @.str.2, ptr @.str.55, i8 0, i8 106, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DSTS=0x%0x\0A\00", [20 x i8] zeroinitializer }, align 32
@dwc2_handle_wakeup_detected_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.52, ptr @.str.2, i32 435, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"exit partial_power_down failed\0A\00", [32 x i8] zeroinitializer }, align 32
@dwc2_handle_wakeup_detected_intr._entry_ptr = internal global ptr @dwc2_handle_wakeup_detected_intr._entry, section ".printk_index", align 4
@dwc2_handle_wakeup_detected_intr._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.52, ptr @.str.2, i32 454, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@dwc2_handle_wakeup_detected_intr._entry_ptr.58 = internal global ptr @dwc2_handle_wakeup_detected_intr._entry.57, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dwc2_wakeup_from_lpm_l1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 361, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Core isn't in DWC2_L1 state\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dwc2_wakeup_from_lpm_l1\00", [40 x i8] zeroinitializer }, align 32
@dwc2_wakeup_from_lpm_l1._entry_ptr = internal global ptr @dwc2_wakeup_from_lpm_l1._entry, section ".printk_index", align 4
@dwc2_wakeup_from_lpm_l1.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.60, ptr @.str.2, ptr @.str.61, i8 0, i8 91, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Exit from L1 state\0A\00", [44 x i8] zeroinitializer }, align 32
@dwc2_wakeup_from_lpm_l1._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.60, ptr @.str.2, i32 383, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to exit L1 sleep state in 200us.\0A\00", [55 x i8] zeroinitializer }, align 32
@dwc2_wakeup_from_lpm_l1._entry_ptr.64 = internal global ptr @dwc2_wakeup_from_lpm_l1._entry.62, section ".printk_index", align 4
@dwc2_wakeup_from_lpm_l1._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.60, ptr @.str.2, i32 389, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Host side LPM is not supported.\0A\00", [63 x i8] zeroinitializer }, align 32
@dwc2_wakeup_from_lpm_l1._entry_ptr.67 = internal global ptr @dwc2_wakeup_from_lpm_l1._entry.65, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@dwc2_handle_usb_suspend_intr.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.68, ptr @.str.2, ptr @.str.69, i8 0, i8 -128, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dwc2_handle_usb_suspend_intr\00", [35 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"USB SUSPEND\0A\00", [19 x i8] zeroinitializer }, align 32
@dwc2_handle_usb_suspend_intr.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.68, ptr @.str.2, ptr @.str.70, i8 0, i8 -126, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: DSTS=0x%0x\0A\00", [16 x i8] zeroinitializer }, align 32
@dwc2_handle_usb_suspend_intr.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.68, ptr @.str.2, ptr @.str.71, i8 0, i8 -125, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"DSTS.Suspend Status=%d HWCFG4.Power Optimize=%d HWCFG4.Hibernation=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@dwc2_handle_usb_suspend_intr.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.68, ptr @.str.2, ptr @.str.72, i8 0, i8 -124, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ignore suspend request before enumeration\0A\00", [53 x i8] zeroinitializer }, align 32
@dwc2_handle_usb_suspend_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.2, i32 540, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"enter partial_power_down failed\0A\00", [63 x i8] zeroinitializer }, align 32
@dwc2_handle_usb_suspend_intr._entry_ptr = internal global ptr @dwc2_handle_usb_suspend_intr._entry, section ".printk_index", align 4
@dwc2_handle_usb_suspend_intr._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.68, ptr @.str.2, i32 552, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"enter hibernation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@dwc2_handle_usb_suspend_intr._entry_ptr.76 = internal global ptr @dwc2_handle_usb_suspend_intr._entry.74, section ".printk_index", align 4
@dwc2_handle_usb_suspend_intr.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.68, ptr @.str.2, ptr @.str.77, i8 0, i8 -113, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"a_peripheral->a_host\0A\00", [42 x i8] zeroinitializer }, align 32
@dwc2_handle_lpm_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 608, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unexpected LPM interrupt\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dwc2_handle_lpm_intr\00", [43 x i8] zeroinitializer }, align 32
@dwc2_handle_lpm_intr._entry_ptr = internal global ptr @dwc2_handle_lpm_intr._entry, section ".printk_index", align 4
@dwc2_handle_lpm_intr.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.79, ptr @.str.2, ptr @.str.80, i8 0, i8 -102, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HIRD_THRES_EN = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@dwc2_handle_lpm_intr.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.79, ptr @.str.2, ptr @.str.81, i8 0, i8 -101, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"L1 with utmi_l1_suspend_n\0A\00", [37 x i8] zeroinitializer }, align 32
@dwc2_handle_lpm_intr.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.79, ptr @.str.2, ptr @.str.82, i8 0, i8 -100, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"L1 with utmi_sleep_n\0A\00", [42 x i8] zeroinitializer }, align 32
@dwc2_handle_lpm_intr.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.79, ptr @.str.2, ptr @.str.83, i8 0, i8 -100, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Entering Sleep with L1 Gating\0A\00", [33 x i8] zeroinitializer }, align 32
@dwc2_handle_lpm_intr.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.79, ptr @.str.2, ptr @.str.84, i8 0, i8 -96, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Core is in L1 sleep glpmcfg=%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@switch.table.dwc2_handle_otg_intr = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.42, ptr @.str.44, ptr @.str.43, ptr @.str.44, ptr @.str.44, ptr @.str.44, ptr @.str.39, ptr @.str.40, ptr @.str.41], [60 x i8] zeroinitializer }, align 32
@switch.table.dwc2_handle_otg_intr.85 = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.42, ptr @.str.44, ptr @.str.43, ptr @.str.44, ptr @.str.44, ptr @.str.44, ptr @.str.39, ptr @.str.40, ptr @.str.41], [60 x i8] zeroinitializer }, align 32
@switch.table.dwc2_handle_disconnect_intr = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.42, ptr @.str.44, ptr @.str.43, ptr @.str.44, ptr @.str.44, ptr @.str.44, ptr @.str.39, ptr @.str.40, ptr @.str.41], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 839, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 885, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 673, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 763, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 769, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 777, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 783, i32 6 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 789, i32 6 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 795, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 799, i32 5 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 804, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 102, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 120, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 124, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 140, i32 5 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 141, i32 5 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 159, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 219, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 220, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 232, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 236, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 255, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 258, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 61, i32 10 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 63, i32 10 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 65, i32 10 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 67, i32 10 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 69, i32 10 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 71, i32 10 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 286, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 489, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 315, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 324, i32 6 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 414, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 415, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 423, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 434, i32 6 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 453, i32 6 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 361, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 367, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 383, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 389, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 513, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 521, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 522, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 530, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 539, i32 6 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 551, i32 6 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 574, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 608, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 619, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 622, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 624, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 626, i32 4 }
@___asan_gen_.344 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.345 = private constant [32 x i8] c"../drivers/usb/dwc2/core_intr.c\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 642, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant [34 x i8] c"switch.table.dwc2_handle_otg_intr\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [37 x i8] c"switch.table.dwc2_handle_otg_intr.85\00", align 1
@___asan_gen_.349 = private unnamed_addr constant [41 x i8] c"switch.table.dwc2_handle_disconnect_intr\00", align 1
@llvm.compiler.used = appending global [106 x ptr] [ptr @dwc2_handle_common_intr._entry, ptr @dwc2_handle_common_intr._entry_ptr, ptr @dwc2_handle_gpwrdn_intr._entry, ptr @dwc2_handle_gpwrdn_intr._entry.15, ptr @dwc2_handle_gpwrdn_intr._entry.18, ptr @dwc2_handle_gpwrdn_intr._entry_ptr, ptr @dwc2_handle_gpwrdn_intr._entry_ptr.16, ptr @dwc2_handle_gpwrdn_intr._entry_ptr.19, ptr @dwc2_handle_lpm_intr._entry, ptr @dwc2_handle_lpm_intr._entry_ptr, ptr @dwc2_handle_mode_mismatch_intr._entry, ptr @dwc2_handle_mode_mismatch_intr._entry_ptr, ptr @dwc2_handle_otg_intr._entry, ptr @dwc2_handle_otg_intr._entry.32, ptr @dwc2_handle_otg_intr._entry_ptr, ptr @dwc2_handle_otg_intr._entry_ptr.34, ptr @dwc2_handle_session_req_intr._entry, ptr @dwc2_handle_session_req_intr._entry_ptr, ptr @dwc2_handle_usb_suspend_intr._entry, ptr @dwc2_handle_usb_suspend_intr._entry.74, ptr @dwc2_handle_usb_suspend_intr._entry_ptr, ptr @dwc2_handle_usb_suspend_intr._entry_ptr.76, ptr @dwc2_handle_wakeup_detected_intr._entry, ptr @dwc2_handle_wakeup_detected_intr._entry.57, ptr @dwc2_handle_wakeup_detected_intr._entry_ptr, ptr @dwc2_handle_wakeup_detected_intr._entry_ptr.58, ptr @dwc2_wakeup_from_lpm_l1._entry, ptr @dwc2_wakeup_from_lpm_l1._entry.62, ptr @dwc2_wakeup_from_lpm_l1._entry.65, ptr @dwc2_wakeup_from_lpm_l1._entry_ptr, ptr @dwc2_wakeup_from_lpm_l1._entry_ptr.64, ptr @dwc2_wakeup_from_lpm_l1._entry_ptr.67, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @switch.table.dwc2_handle_otg_intr, ptr @switch.table.dwc2_handle_otg_intr.85, ptr @switch.table.dwc2_handle_disconnect_intr], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_handle_common_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_handle_gpwrdn_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_handle_gpwrdn_intr._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_handle_gpwrdn_intr._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_handle_mode_mismatch_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_handle_otg_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_handle_otg_intr._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_handle_session_req_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_handle_wakeup_detected_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_handle_wakeup_detected_intr._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_wakeup_from_lpm_l1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_wakeup_from_lpm_l1._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_wakeup_from_lpm_l1._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_handle_usb_suspend_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_handle_usb_suspend_intr._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_handle_lpm_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dwc2_handle_otg_intr to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dwc2_handle_otg_intr.85 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dwc2_handle_disconnect_intr to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc2_handle_common_intr(i32 noundef %irq, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.dwc2_hsotg, ptr %dev, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %call = tail call zeroext i1 @dwc2_is_controller_alive(ptr noundef %dev) #5
  br i1 %call, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str) #8
  br label %out

if.end:                                           ; preds = %entry
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %dev, i32 0, i32 34
  %5 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  %7 = lshr i32 %4, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %7, i32 %4
  %and.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.not = icmp eq i32 %and.i, 0
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  br i1 %tobool.not.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %9, i32 2056
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %11 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  %retval.0.i104 = select i1 %tobool.not.i, i32 %13, i32 %10
  %and = lshr i32 %retval.0.i104, 8
  %14 = trunc i32 %and to i16
  %conv = and i16 %14, 16383
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i106 = getelementptr i8, ptr %9, i32 1032
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i106) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %16 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i108 = icmp eq i8 %17, 0
  %18 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  %retval.0.i109 = select i1 %tobool.not.i108, i32 %18, i32 %15
  %conv9 = trunc i32 %retval.0.i109 to i16
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then4
  %conv9.sink = phi i16 [ %conv, %if.then4 ], [ %conv9, %if.else ]
  %19 = getelementptr inbounds %struct.dwc2_hsotg, ptr %dev, i32 0, i32 11
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv9.sink, ptr %19, align 4
  %21 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i111 = getelementptr i8, ptr %22, i32 20
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i111) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %24 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i113 = icmp eq i8 %25, 0
  %26 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  %retval.0.i25.i = select i1 %tobool.not.i.i113, i32 %26, i32 %23
  %27 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %28, i32 24
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %30 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i29.i = icmp eq i8 %31, 0
  %32 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  %retval.0.i30.i = select i1 %tobool.not.i29.i, i32 %32, i32 %29
  %33 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %34, i32 8
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %36 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !202
  %and.i114 = and i32 %retval.0.i25.i, -117438458
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i114)
  %tobool.not.i115 = icmp eq i32 %and.i114, 0
  br i1 %tobool.not.i115, label %if.end11.dwc2_read_common_intr.exit_crit_edge, label %do.body.i

if.end11.dwc2_read_common_intr.exit_crit_edge:    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_read_common_intr.exit

do.body.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_read_common_intr.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_common_intr, %dwc2_read_common_intr.exit)) #5
          to label %if.then8.i [label %dwc2_read_common_intr.exit], !srcloc !203

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_read_common_intr.__UNIQUE_ID_ddebug321, ptr noundef %39, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i25.i, i32 noundef %retval.0.i30.i) #5
  br label %dwc2_read_common_intr.exit

dwc2_read_common_intr.exit:                       ; preds = %if.then8.i, %do.body.i, %if.end11.dwc2_read_common_intr.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i34.i = icmp eq i8 %37, 0
  %40 = lshr i32 %35, 24
  %retval.0.i35.i = select i1 %tobool.not.i34.i, i32 %40, i32 %35
  %and10.i = and i32 %retval.0.i35.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %and14.i = and i32 %retval.0.i30.i, %and.i114
  %retval.0.i116 = select i1 %tobool11.not.i, i32 0, i32 %and14.i
  %and13 = and i32 %retval.0.i116, -134215674
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp ne i32 %and13, 0
  %hibernated = getelementptr inbounds %struct.dwc2_hsotg, ptr %dev, i32 0, i32 8
  %41 = ptrtoint ptr %hibernated to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load = load i8, ptr %hibernated, align 8
  %42 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool17.not = icmp eq i8 %42, 0
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %dwc2_read_common_intr.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_handle_gpwrdn_intr(ptr noundef %dev)
  br label %out

if.end20:                                         ; preds = %dwc2_read_common_intr.exit
  %and21 = and i32 %retval.0.i116, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end24_crit_edge, label %if.then23

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then23:                                        ; preds = %if.end20
  %43 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i.i118 = icmp eq i8 %44, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %45 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %46, i32 20
  br i1 %tobool.not.i.i118, label %do.body1.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 2) #5, !srcloc !204
  br label %dwc2_handle_mode_mismatch_intr.exit

do.body1.i.i:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 33554432) #5, !srcloc !204
  br label %dwc2_handle_mode_mismatch_intr.exit

dwc2_handle_mode_mismatch_intr.exit:              ; preds = %do.body1.i.i, %do.body.i.i
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 8
  %49 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %50, i32 20
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %52 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i.i.i = icmp eq i8 %53, 0
  %54 = lshr i32 %51, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %54, i32 %51
  %and.i.i = and i32 %retval.0.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i119 = icmp eq i32 %and.i.i, 0
  %cond.i = select i1 %tobool.not.i119, ptr @.str.24, ptr @.str.23
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.21, ptr noundef nonnull %cond.i) #8
  br label %if.end24

if.end24:                                         ; preds = %dwc2_handle_mode_mismatch_intr.exit, %if.end20.if.end24_crit_edge
  %and25 = and i32 %retval.0.i116, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end28_crit_edge, label %if.then27

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_handle_otg_intr(ptr noundef %dev)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24.if.end28_crit_edge
  %and29 = and i32 %retval.0.i116, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end32_crit_edge, label %if.then31

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_handle_conn_id_status_change_intr(ptr noundef %dev)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end28.if.end32_crit_edge
  %and33 = and i32 %retval.0.i116, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end36_crit_edge, label %if.then35

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_handle_disconnect_intr(ptr noundef %dev)
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end32.if.end36_crit_edge
  %and37 = and i32 %retval.0.i116, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end40_crit_edge, label %if.then39

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_handle_session_req_intr(ptr noundef %dev)
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end36.if.end40_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i116)
  %tobool42.not = icmp sgt i32 %retval.0.i116, -1
  br i1 %tobool42.not, label %if.end40.if.end44_crit_edge, label %if.then43

if.end40.if.end44_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_handle_wakeup_detected_intr(ptr noundef %dev)
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end40.if.end44_crit_edge
  %and45 = and i32 %retval.0.i116, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end48_crit_edge, label %if.then47

if.end44.if.end48_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_handle_usb_suspend_intr(ptr noundef %dev)
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end44.if.end48_crit_edge
  %and49 = and i32 %retval.0.i116, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end52_crit_edge, label %if.then51

if.end48.if.end52_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_handle_lpm_intr(ptr noundef %dev)
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end48.if.end52_crit_edge
  %and53 = and i32 %retval.0.i116, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.out_crit_edge, label %if.then55

if.end52.out_crit_edge:                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then55:                                        ; preds = %if.end52
  %55 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i121 = getelementptr i8, ptr %56, i32 20
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i121) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %58 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i.i123 = icmp eq i8 %59, 0
  %60 = lshr i32 %57, 24
  %retval.0.i.i124 = select i1 %tobool.not.i.i123, i32 %60, i32 %57
  %and.i125 = and i32 %retval.0.i.i124, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i125)
  %tobool57.not.not = icmp eq i32 %and.i125, 0
  br i1 %tobool57.not.not, label %do.body59, label %if.then55.out_crit_edge

if.then55.out_crit_edge:                          ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.body59:                                        ; preds = %if.then55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_common_intr.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_common_intr, %do.end69)) #5
          to label %if.then65 [label %do.end69], !srcloc !203

if.then65:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_common_intr.__UNIQUE_ID_ddebug327, ptr noundef %62, ptr noundef nonnull @.str.6) #5
  br label %do.end69

do.end69:                                         ; preds = %if.then65, %do.body59
  %63 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i127 = getelementptr i8, ptr %64, i32 1088
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i127) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %66 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i.i129 = icmp eq i8 %67, 0
  %68 = tail call i32 @llvm.bswap.i32(i32 %65) #5
  %retval.0.i.i130 = select i1 %tobool.not.i.i129, i32 %68, i32 %65
  %and.i131 = and i32 %retval.0.i.i130, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i131)
  %tobool.not.i132 = icmp eq i32 %and.i131, 0
  br i1 %tobool.not.i132, label %do.end69.out_crit_edge, label %if.then.i

do.end69.out_crit_edge:                           ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then.i:                                        ; preds = %do.end69
  %and1.i = and i32 %retval.0.i.i130, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i.i129, label %do.body1.i.i135, label %do.body.i.i133

do.body.i.i133:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %70, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %and1.i) #5, !srcloc !204
  br label %out

do.body1.i.i135:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %71 = tail call i32 @llvm.bswap.i32(i32 %and1.i) #5
  %72 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i.i134 = getelementptr i8, ptr %73, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i134, i32 %71) #5, !srcloc !204
  br label %out

out:                                              ; preds = %do.body1.i.i135, %do.body.i.i133, %do.end69.out_crit_edge, %if.then55.out_crit_edge, %if.end52.out_crit_edge, %if.then18, %do.end
  %retval1.1.shrunk = phi i1 [ true, %if.then18 ], [ %tobool14.not, %if.then55.out_crit_edge ], [ %tobool14.not, %if.end52.out_crit_edge ], [ false, %do.end ], [ true, %do.end69.out_crit_edge ], [ true, %do.body.i.i133 ], [ true, %do.body1.i.i135 ]
  %retval1.1 = zext i1 %retval1.1.shrunk to i32
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  ret i32 %retval1.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dwc2_is_controller_alive(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_handle_gpwrdn_intr(ptr noundef %hsotg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 88
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %3 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %5 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  %retval.0.i18 = select i1 %tobool.not.i, i32 %5, i32 %2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %7, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %retval.0.i18) #5, !srcloc !204
  br label %dwc2_writel.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i18) #5
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %10, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %8) #5, !srcloc !204
  br label %dwc2_writel.exit

dwc2_writel.exit:                                 ; preds = %do.body1.i, %do.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_gpwrdn_intr.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_gpwrdn_intr, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !203

if.then:                                          ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_gpwrdn_intr.__UNIQUE_ID_ddebug322, ptr noundef %12, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef %retval.0.i18) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %dwc2_writel.exit
  %13 = and i32 %retval.0.i18, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp eq i32 %13, 0
  %14 = and i32 %retval.0.i18, 1579008
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144, i32 %14)
  %15 = icmp eq i32 %14, 6144
  br i1 %15, label %do.body12, label %if.else

do.body12:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_gpwrdn_intr.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_gpwrdn_intr, %do.end30)) #5
          to label %if.then26 [label %do.end30], !srcloc !203

if.then26:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_gpwrdn_intr.__UNIQUE_ID_ddebug323, ptr noundef %17, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9) #5
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %do.body12
  tail call fastcc void @dwc_handle_gpwrdn_disc_det(ptr noundef %hsotg, i32 noundef %retval.0.i18)
  br label %if.end167

if.else:                                          ; preds = %do.end
  %18 = and i32 %retval.0.i18, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %18)
  %19 = icmp ne i32 %18, 384
  %or.cond3 = or i1 %19, %tobool10.not
  br i1 %or.cond3, label %if.else101, label %do.body39

do.body39:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_gpwrdn_intr.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_gpwrdn_intr, %do.end57)) #5
          to label %if.then53 [label %do.end57], !srcloc !203

if.then53:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_gpwrdn_intr.__UNIQUE_ID_ddebug324, ptr noundef %21, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9) #5
  br label %do.end57

do.end57:                                         ; preds = %if.then53, %do.body39
  %hibernation = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %hibernation to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load = load i32, ptr %hibernation, align 4
  %23 = and i32 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool58.not = icmp eq i32 %23, 0
  br i1 %tobool58.not, label %do.end57.if.end167_crit_edge, label %land.lhs.true59

do.end57.if.end167_crit_edge:                     ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end167

land.lhs.true59:                                  ; preds = %do.end57
  %hibernated = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 8
  %24 = ptrtoint ptr %hibernated to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load60 = load i8, ptr %hibernated, align 8
  %25 = and i8 %bf.load60, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool63.not = icmp eq i8 %25, 0
  br i1 %tobool63.not, label %land.lhs.true59.if.end167_crit_edge, label %if.then64

land.lhs.true59.if.end167_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end167

if.then64:                                        ; preds = %land.lhs.true59
  %and65 = and i32 %retval.0.i18, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.else90, label %if.then67

if.then67:                                        ; preds = %if.then64
  %call68 = tail call i32 @dwc2_exit_hibernation(ptr noundef %hsotg, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then67.do.body76_crit_edge, label %do.end73

if.then67.do.body76_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body76

do.end73:                                         ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.13) #8
  br label %do.body76

do.body76:                                        ; preds = %do.end73, %if.then67.do.body76_crit_edge
  %gadget = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 89
  %speed = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 89, i32 5
  %28 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.not = icmp eq i32 %29, 0
  br i1 %cmp.not, label %do.body76.if.end167_crit_edge, label %land.lhs.true77

do.body76.if.end167_crit_edge:                    ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end167

land.lhs.true77:                                  ; preds = %do.body76
  %driver = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 71
  %30 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver, align 8
  %tobool78.not = icmp eq ptr %31, null
  br i1 %tobool78.not, label %land.lhs.true77.if.end167_crit_edge, label %land.lhs.true79

land.lhs.true77.if.end167_crit_edge:              ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end167

land.lhs.true79:                                  ; preds = %land.lhs.true77
  %resume = getelementptr inbounds %struct.usb_gadget_driver, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %resume, align 4
  %tobool81.not = icmp eq ptr %33, null
  br i1 %tobool81.not, label %land.lhs.true79.if.end167_crit_edge, label %if.then82

land.lhs.true79.if.end167_crit_edge:              ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end167

if.then82:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 18
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  %34 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver, align 8
  %resume84 = getelementptr inbounds %struct.usb_gadget_driver, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %resume84 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %resume84, align 4
  tail call void %37(ptr noundef %gadget) #5
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  br label %if.end167

if.else90:                                        ; preds = %if.then64
  %call91 = tail call i32 @dwc2_exit_hibernation(ptr noundef %hsotg, i32 noundef 1, i32 noundef 0, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.else90.if.end167_crit_edge, label %do.end96

if.else90.if.end167_crit_edge:                    ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end167

do.end96:                                         ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.13) #8
  br label %if.end167

if.else101:                                       ; preds = %if.else
  %40 = and i32 %retval.0.i18, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %40)
  %.not = icmp eq i32 %40, 1536
  br i1 %.not, label %do.body108, label %if.else138

do.body108:                                       ; preds = %if.else101
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_gpwrdn_intr.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_gpwrdn_intr, %do.end126)) #5
          to label %if.then122 [label %do.end126], !srcloc !203

if.then122:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_gpwrdn_intr.__UNIQUE_ID_ddebug325, ptr noundef %42, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.9) #5
  br label %do.end126

do.end126:                                        ; preds = %if.then122, %do.body108
  br i1 %tobool10.not, label %if.then128, label %do.end126.if.end167_crit_edge

do.end126.if.end167_crit_edge:                    ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end167

if.then128:                                       ; preds = %do.end126
  %call129 = tail call i32 @dwc2_exit_hibernation(ptr noundef %hsotg, i32 noundef 0, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.then128.if.end167_crit_edge, label %do.end134

if.then128.if.end167_crit_edge:                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end167

do.end134:                                        ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.13) #8
  br label %if.end167

if.else138:                                       ; preds = %if.else101
  %45 = and i32 %retval.0.i18, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %45)
  %.not28 = icmp eq i32 %45, 393216
  br i1 %.not28, label %do.body145, label %if.else138.if.end167_crit_edge

if.else138.if.end167_crit_edge:                   ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end167

do.body145:                                       ; preds = %if.else138
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_gpwrdn_intr.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_gpwrdn_intr, %do.end163)) #5
          to label %if.then159 [label %do.end163], !srcloc !203

if.then159:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_gpwrdn_intr.__UNIQUE_ID_ddebug326, ptr noundef %47, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.9) #5
  br label %do.end163

do.end163:                                        ; preds = %if.then159, %do.body145
  tail call fastcc void @dwc_handle_gpwrdn_disc_det(ptr noundef %hsotg, i32 noundef %retval.0.i18)
  br label %if.end167

if.end167:                                        ; preds = %do.end163, %if.else138.if.end167_crit_edge, %do.end134, %if.then128.if.end167_crit_edge, %do.end126.if.end167_crit_edge, %do.end96, %if.else90.if.end167_crit_edge, %if.then82, %land.lhs.true79.if.end167_crit_edge, %land.lhs.true77.if.end167_crit_edge, %do.body76.if.end167_crit_edge, %land.lhs.true59.if.end167_crit_edge, %do.end57.if.end167_crit_edge, %do.end30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_handle_otg_intr(ptr noundef %hsotg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %3 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %5 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  %retval.0.i353 = select i1 %tobool.not.i, i32 %5, i32 %2
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_otg_intr.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_otg_intr, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !203

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hsotg, align 8
  %op_state.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 4
  %11 = ptrtoint ptr %op_state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %op_state.i, align 8
  %switch.tableidx = add i32 %12, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %13 = icmp ult i32 %switch.tableidx, 9
  br i1 %13, label %switch.lookup, label %if.then.dwc2_op_state_str.exit_crit_edge

if.then.dwc2_op_state_str.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_op_state_str.exit

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [9 x ptr], ptr @switch.table.dwc2_handle_otg_intr, i32 0, i32 %switch.tableidx
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %dwc2_op_state_str.exit

dwc2_op_state_str.exit:                           ; preds = %switch.lookup, %if.then.dwc2_op_state_str.exit_crit_edge
  %retval.0.i358 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.44, %if.then.dwc2_op_state_str.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_otg_intr.__UNIQUE_ID_ddebug295, ptr noundef %10, ptr noundef nonnull @.str.26, i32 noundef %retval.0.i353, ptr noundef nonnull %retval.0.i358) #5
  br label %do.end

do.end:                                           ; preds = %dwc2_op_state_str.exit, %entry
  %and = and i32 %retval.0.i353, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.end.if.end66_crit_edge, label %do.body9

do.end.if.end66_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

do.body9:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_otg_intr.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_otg_intr, %do.end28)) #5
          to label %if.then23 [label %do.end28], !srcloc !203

if.then23:                                        ; preds = %do.body9
  %15 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hsotg, align 8
  %op_state.i359 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 4
  %17 = ptrtoint ptr %op_state.i359 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %op_state.i359, align 8
  %switch.tableidx472 = add i32 %18, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx472)
  %19 = icmp ult i32 %switch.tableidx472, 9
  br i1 %19, label %switch.lookup471, label %if.then23.dwc2_op_state_str.exit366_crit_edge

if.then23.dwc2_op_state_str.exit366_crit_edge:    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_op_state_str.exit366

switch.lookup471:                                 ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep473 = getelementptr inbounds [9 x ptr], ptr @switch.table.dwc2_handle_otg_intr.85, i32 0, i32 %switch.tableidx472
  %20 = ptrtoint ptr %switch.gep473 to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load474 = load ptr, ptr %switch.gep473, align 4
  br label %dwc2_op_state_str.exit366

dwc2_op_state_str.exit366:                        ; preds = %switch.lookup471, %if.then23.dwc2_op_state_str.exit366_crit_edge
  %retval.0.i365 = phi ptr [ %switch.load474, %switch.lookup471 ], [ @.str.44, %if.then23.dwc2_op_state_str.exit366_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_otg_intr.__UNIQUE_ID_ddebug296, ptr noundef %16, ptr noundef nonnull @.str.27, ptr noundef nonnull %retval.0.i365) #5
  br label %do.end28

do.end28:                                         ; preds = %dwc2_op_state_str.exit366, %do.body9
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %24 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i369 = icmp eq i8 %25, 0
  %26 = lshr i32 %23, 8
  %retval.0.i370 = select i1 %tobool.not.i369, i32 %26, i32 %23
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 20
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %30 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i = icmp eq i8 %31, 0
  %32 = lshr i32 %29, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %32, i32 %29
  %and.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool31.not.not = icmp eq i32 %and.i, 0
  br i1 %tobool31.not.not, label %if.then32, label %do.end28.if.end33_crit_edge

do.end28.if.end33_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then32:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dwc2_hsotg_disconnect(ptr noundef %hsotg) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %do.end28.if.end33_crit_edge
  %op_state = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 4
  %33 = ptrtoint ptr %op_state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %op_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %34)
  %cmp = icmp eq i32 %34, 5
  br i1 %cmp, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %op_state to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %op_state, align 8
  br label %if.end63

if.else:                                          ; preds = %if.end33
  %and36 = and i32 %retval.0.i370, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else.if.end62_crit_edge, label %do.body39

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

do.body39:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_otg_intr.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_otg_intr, %do.end60)) #5
          to label %if.then53 [label %do.end60], !srcloc !203

if.then53:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_otg_intr.__UNIQUE_ID_ddebug297, ptr noundef %37, ptr noundef nonnull @.str.28) #5
  br label %do.end60

do.end60:                                         ; preds = %if.then53, %do.body39
  %38 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.29) #8
  br label %if.end62

if.end62:                                         ; preds = %do.end60, %if.else.if.end62_crit_edge
  %lx_state = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 28
  %40 = ptrtoint ptr %lx_state to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %lx_state, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then34
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %44 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i373 = icmp eq i8 %45, 0
  %46 = tail call i32 @llvm.bswap.i32(i32 %43) #5
  %retval.0.i374 = select i1 %tobool.not.i373, i32 %46, i32 %43
  %and65 = and i32 %retval.0.i374, -2049
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i373, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %and65) #5, !srcloc !204
  br label %if.end66

do.body1.i:                                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  %49 = tail call i32 @llvm.bswap.i32(i32 %and65) #5
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #5, !srcloc !204
  br label %if.end66

if.end66:                                         ; preds = %do.body1.i, %do.body.i, %do.end.if.end66_crit_edge
  %and67 = and i32 %retval.0.i353, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.if.end104_crit_edge, label %do.body70

if.end66.if.end104_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

do.body70:                                        ; preds = %if.end66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_otg_intr.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_otg_intr, %do.end88)) #5
          to label %if.then84 [label %do.end88], !srcloc !203

if.then84:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_otg_intr.__UNIQUE_ID_ddebug298, ptr noundef %53, ptr noundef nonnull @.str.30) #5
  br label %do.end88

do.end88:                                         ; preds = %if.then84, %do.body70
  %54 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i, align 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %57 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i380 = icmp eq i8 %58, 0
  %59 = lshr i32 %56, 24
  %retval.0.i381 = select i1 %tobool.not.i380, i32 %59, i32 %56
  %and90 = and i32 %retval.0.i381, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %do.end88.if.end104_crit_edge, label %if.then92

do.end88.if.end104_crit_edge:                     ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

if.then92:                                        ; preds = %do.end88
  %phy_type = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 1
  %60 = ptrtoint ptr %phy_type to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %phy_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp93 = icmp eq i8 %61, 0
  br i1 %cmp93, label %land.lhs.true, label %if.then92.if.else99_crit_edge

if.then92.if.else99_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else99

land.lhs.true:                                    ; preds = %if.then92
  %i2c_enable = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 8
  %62 = ptrtoint ptr %i2c_enable to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %i2c_enable, align 1, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool96.not = icmp eq i8 %63, 0
  br i1 %tobool96.not, label %land.lhs.true.if.else99_crit_edge, label %if.then98

land.lhs.true.if.else99_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else99

if.then98:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %srp_success = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 24
  %64 = ptrtoint ptr %srp_success to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load = load i8, ptr %srp_success, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %srp_success, align 4
  br label %if.end104

if.else99:                                        ; preds = %land.lhs.true.if.else99_crit_edge, %if.then92.if.else99_crit_edge
  %65 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i, align 4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %68 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i384 = icmp eq i8 %69, 0
  %70 = tail call i32 @llvm.bswap.i32(i32 %67) #5
  %retval.0.i385 = select i1 %tobool.not.i384, i32 %70, i32 %67
  %and101 = and i32 %retval.0.i385, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i384, label %do.body1.i391, label %do.body.i389

do.body.i389:                                     ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %and101) #5, !srcloc !204
  br label %if.end104

do.body1.i391:                                    ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #7
  %73 = tail call i32 @llvm.bswap.i32(i32 %and101) #5
  %74 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %73) #5, !srcloc !204
  br label %if.end104

if.end104:                                        ; preds = %do.body1.i391, %do.body.i389, %if.then98, %do.end88.if.end104_crit_edge, %if.end66.if.end104_crit_edge
  %and105 = and i32 %retval.0.i353, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end104.if.end152_crit_edge, label %if.then107

if.end104.if.end152_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end152

if.then107:                                       ; preds = %if.end104
  %76 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i, align 4
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %79 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i395 = icmp eq i8 %80, 0
  %81 = lshr i32 %78, 8
  %retval.0.i396 = select i1 %tobool.not.i395, i32 %81, i32 %78
  %snpsid = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 5
  %82 = ptrtoint ptr %snpsid to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %snpsid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1330917385, i32 %83)
  %cmp109 = icmp ugt i32 %83, 1330917385
  br i1 %cmp109, label %if.then111, label %if.then107.if.end112_crit_edge

if.then107.if.end112_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112

if.then111:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %84(i32 noundef 21474800) #5
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %if.then107.if.end112_crit_edge
  %and113 = and i32 %retval.0.i396, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  %85 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs.i, align 4
  br i1 %tobool114.not, label %if.else125, label %if.then115

if.then115:                                       ; preds = %if.end112
  %add.ptr.i.i398 = getelementptr i8, ptr %86, i32 20
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i398) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %88 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i.i400 = icmp eq i8 %89, 0
  %90 = lshr i32 %87, 24
  %retval.0.i.i401 = select i1 %tobool.not.i.i400, i32 %90, i32 %87
  %and.i402 = and i32 %retval.0.i.i401, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i402)
  %tobool117.not = icmp eq i32 %and.i402, 0
  br i1 %tobool117.not, label %if.then115.if.end152_crit_edge, label %if.then118

if.then115.if.end152_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end152

if.then118:                                       ; preds = %if.then115
  %op_state119 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 4
  %91 = ptrtoint ptr %op_state119 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 5, ptr %op_state119, align 8
  %92 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i, align 4
  %add.ptr.i404 = getelementptr i8, ptr %93, i32 24
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i404) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %95 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool.not.i406 = icmp eq i8 %96, 0
  %97 = tail call i32 @llvm.bswap.i32(i32 %94) #5
  %retval.0.i407 = select i1 %tobool.not.i406, i32 %97, i32 %94
  %and121 = and i32 %retval.0.i407, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i406, label %do.body1.i414, label %do.body.i412

do.body.i412:                                     ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #7
  %98 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs.i, align 4
  %add.ptr.i411 = getelementptr i8, ptr %99, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i411, i32 %and121) #5, !srcloc !204
  br label %dwc2_writel.exit415

do.body1.i414:                                    ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #7
  %100 = tail call i32 @llvm.bswap.i32(i32 %and121) #5
  %101 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %102, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %100) #5, !srcloc !204
  br label %dwc2_writel.exit415

dwc2_writel.exit415:                              ; preds = %do.body1.i414, %do.body.i412
  %lock = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 18
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  tail call void @dwc2_hcd_start(ptr noundef %hsotg) #5
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %103 = ptrtoint ptr %op_state119 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 5, ptr %op_state119, align 8
  br label %if.end152

if.else125:                                       ; preds = %if.end112
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %105 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.not.i418 = icmp eq i8 %106, 0
  %107 = tail call i32 @llvm.bswap.i32(i32 %104) #5
  %retval.0.i419 = select i1 %tobool.not.i418, i32 %107, i32 %104
  %and127 = and i32 %retval.0.i419, -2561
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i418, label %do.body1.i425, label %do.body.i423

do.body.i423:                                     ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #7
  %108 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %and127) #5, !srcloc !204
  br label %dwc2_writel.exit426

do.body1.i425:                                    ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #7
  %110 = tail call i32 @llvm.bswap.i32(i32 %and127) #5
  %111 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %110) #5, !srcloc !204
  br label %dwc2_writel.exit426

dwc2_writel.exit426:                              ; preds = %do.body1.i425, %do.body.i423
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_otg_intr.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_otg_intr, %do.end149)) #5
          to label %if.then142 [label %do.end149], !srcloc !203

if.then142:                                       ; preds = %dwc2_writel.exit426
  call void @__sanitizer_cov_trace_pc() #7
  %113 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_otg_intr.__UNIQUE_ID_ddebug299, ptr noundef %114, ptr noundef nonnull @.str.31) #5
  br label %do.end149

do.end149:                                        ; preds = %if.then142, %dwc2_writel.exit426
  %115 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.33) #8
  br label %if.end152

if.end152:                                        ; preds = %do.end149, %dwc2_writel.exit415, %if.then115.if.end152_crit_edge, %if.end104.if.end152_crit_edge
  %and153 = and i32 %retval.0.i353, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %if.end152.if.end210_crit_edge, label %do.body156

if.end152.if.end210_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end210

do.body156:                                       ; preds = %if.end152
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_otg_intr.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_otg_intr, %do.end176)) #5
          to label %if.then170 [label %do.end176], !srcloc !203

if.then170:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #7
  %117 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hsotg, align 8
  %119 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i428 = getelementptr i8, ptr %120, i32 20
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i428) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %122 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool.not.i.i430 = icmp eq i8 %123, 0
  %124 = lshr i32 %121, 24
  %retval.0.i.i431 = select i1 %tobool.not.i.i430, i32 %124, i32 %121
  %and.i432 = and i32 %retval.0.i.i431, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i432)
  %tobool173.not = icmp eq i32 %and.i432, 0
  %cond = select i1 %tobool173.not, ptr @.str.24, ptr @.str.23
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_otg_intr.__UNIQUE_ID_ddebug300, ptr noundef %118, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond) #5
  br label %do.end176

do.end176:                                        ; preds = %if.then170, %do.body156
  %125 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i434 = getelementptr i8, ptr %126, i32 20
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i434) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %128 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i.i436 = icmp eq i8 %129, 0
  %130 = lshr i32 %127, 24
  %retval.0.i.i437 = select i1 %tobool.not.i.i436, i32 %130, i32 %127
  %and.i438 = and i32 %retval.0.i.i437, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i438)
  %tobool178.not.not = icmp eq i32 %and.i438, 0
  br i1 %tobool178.not.not, label %do.body180, label %if.else203

do.body180:                                       ; preds = %do.end176
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_otg_intr.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_otg_intr, %do.end199)) #5
          to label %if.then194 [label %do.end199], !srcloc !203

if.then194:                                       ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #7
  %131 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hsotg, align 8
  %op_state196 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 4
  %133 = ptrtoint ptr %op_state196 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %op_state196, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_otg_intr.__UNIQUE_ID_ddebug301, ptr noundef %132, ptr noundef nonnull @.str.36, i32 noundef %134) #5
  br label %do.end199

do.end199:                                        ; preds = %if.then194, %do.body180
  %lock200 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 18
  tail call void @_raw_spin_unlock(ptr noundef %lock200) #5
  tail call void @dwc2_hcd_disconnect(ptr noundef %hsotg, i1 noundef zeroext false) #5
  br label %if.end210.sink.split

if.else203:                                       ; preds = %do.end176
  %135 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %regs.i, align 4
  %add.ptr.i440 = getelementptr i8, ptr %136, i32 24
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i440) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %138 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool.not.i442 = icmp eq i8 %139, 0
  %140 = tail call i32 @llvm.bswap.i32(i32 %137) #5
  %retval.0.i443 = select i1 %tobool.not.i442, i32 %140, i32 %137
  %and205 = and i32 %retval.0.i443, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i442, label %do.body1.i451, label %do.body.i448

do.body.i448:                                     ; preds = %if.else203
  call void @__sanitizer_cov_trace_pc() #7
  %141 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs.i, align 4
  %add.ptr.i447 = getelementptr i8, ptr %142, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i447, i32 %and205) #5, !srcloc !204
  br label %dwc2_writel.exit452

do.body1.i451:                                    ; preds = %if.else203
  call void @__sanitizer_cov_trace_pc() #7
  %143 = tail call i32 @llvm.bswap.i32(i32 %and205) #5
  %144 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i450 = getelementptr i8, ptr %145, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i450, i32 %143) #5, !srcloc !204
  br label %dwc2_writel.exit452

dwc2_writel.exit452:                              ; preds = %do.body1.i451, %do.body.i448
  %lock206 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 18
  tail call void @_raw_spin_unlock(ptr noundef %lock206) #5
  tail call void @dwc2_hcd_start(ptr noundef %hsotg) #5
  br label %if.end210.sink.split

if.end210.sink.split:                             ; preds = %dwc2_writel.exit452, %do.end199
  %lock200.sink = phi ptr [ %lock200, %do.end199 ], [ %lock206, %dwc2_writel.exit452 ]
  %.sink = phi i32 [ 11, %do.end199 ], [ 9, %dwc2_writel.exit452 ]
  tail call void @_raw_spin_lock(ptr noundef %lock200.sink) #5
  %op_state202 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 4
  %146 = ptrtoint ptr %op_state202 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %.sink, ptr %op_state202, align 8
  br label %if.end210

if.end210:                                        ; preds = %if.end210.sink.split, %if.end152.if.end210_crit_edge
  %and211 = and i32 %retval.0.i353, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211)
  %tobool212.not = icmp eq i32 %and211, 0
  br i1 %tobool212.not, label %if.end210.if.end233_crit_edge, label %do.body214

if.end210.if.end233_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end233

do.body214:                                       ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_otg_intr.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_otg_intr, %if.end233)) #5
          to label %if.then228 [label %if.end233], !srcloc !203

if.then228:                                       ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #7
  %147 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_otg_intr.__UNIQUE_ID_ddebug302, ptr noundef %148, ptr noundef nonnull @.str.37) #5
  br label %if.end233

if.end233:                                        ; preds = %if.then228, %do.body214, %if.end210.if.end233_crit_edge
  %and234 = and i32 %retval.0.i353, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and234)
  %tobool235.not = icmp eq i32 %and234, 0
  br i1 %tobool235.not, label %if.end233.if.end256_crit_edge, label %do.body237

if.end233.if.end256_crit_edge:                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end256

do.body237:                                       ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_otg_intr.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_otg_intr, %if.end256)) #5
          to label %if.then251 [label %if.end256], !srcloc !203

if.then251:                                       ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #7
  %149 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_otg_intr.__UNIQUE_ID_ddebug303, ptr noundef %150, ptr noundef nonnull @.str.38) #5
  br label %if.end256

if.end256:                                        ; preds = %if.then251, %do.body237, %if.end233.if.end256_crit_edge
  %151 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool.not.i454 = icmp eq i8 %152, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i454, label %do.body1.i460, label %do.body.i457

do.body.i457:                                     ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #7
  %153 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regs.i, align 4
  %add.ptr.i456 = getelementptr i8, ptr %154, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i456, i32 %retval.0.i353) #5, !srcloc !204
  br label %dwc2_writel.exit461

do.body1.i460:                                    ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #7
  %155 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i353) #5
  %156 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i459 = getelementptr i8, ptr %157, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i459, i32 %155) #5, !srcloc !204
  br label %dwc2_writel.exit461

dwc2_writel.exit461:                              ; preds = %do.body1.i460, %do.body.i457
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_handle_conn_id_status_change_intr(ptr noundef %hsotg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %0 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %regs3.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %2 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %3, i32 20
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 268435456) #5, !srcloc !204
  br label %dwc2_writel.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 16) #5, !srcloc !204
  br label %dwc2_writel.exit

dwc2_writel.exit:                                 ; preds = %do.body1.i, %do.body.i
  %regs.i20 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %4 = ptrtoint ptr %regs.i20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i20, align 4
  %add.ptr.i21 = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %7 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i23 = icmp eq i8 %8, 0
  %9 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  %retval.0.i24 = select i1 %tobool.not.i23, i32 %9, i32 %6
  %and = and i32 %retval.0.i24, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i23, label %do.body1.i32, label %do.body.i29

do.body.i29:                                      ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %regs.i20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i20, align 4
  %add.ptr.i28 = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %and) #5, !srcloc !204
  br label %dwc2_writel.exit33

do.body1.i32:                                     ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %and) #5
  %13 = ptrtoint ptr %regs.i20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i20, align 4
  %add.ptr4.i31 = getelementptr i8, ptr %14, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i31, i32 %12) #5, !srcloc !204
  br label %dwc2_writel.exit33

dwc2_writel.exit33:                               ; preds = %do.body1.i32, %do.body.i29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_conn_id_status_change_intr.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_conn_id_status_change_intr, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !203

if.then:                                          ; preds = %dwc2_writel.exit33
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hsotg, align 8
  %17 = ptrtoint ptr %regs.i20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i20, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 20
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %20 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i = icmp eq i8 %21, 0
  %22 = lshr i32 %19, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %22, i32 %19
  %and.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not = icmp eq i32 %and.i, 0
  %cond = select i1 %tobool6.not, ptr @.str.24, ptr @.str.23
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_conn_id_status_change_intr.__UNIQUE_ID_ddebug304, ptr noundef %16, ptr noundef nonnull @.str.46, ptr noundef nonnull %cond) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %dwc2_writel.exit33
  %wq_otg = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 25
  %23 = ptrtoint ptr %wq_otg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wq_otg, align 8
  %tobool7.not = icmp eq ptr %24, null
  br i1 %tobool7.not, label %do.end.if.end11_crit_edge, label %if.then8

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %wf_otg = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 26
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %24, ptr noundef %wf_otg) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %do.end.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_handle_disconnect_intr(ptr noundef %hsotg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %0 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %regs3.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %2 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %3, i32 20
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 536870912) #5, !srcloc !204
  br label %dwc2_writel.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 32) #5, !srcloc !204
  br label %dwc2_writel.exit

dwc2_writel.exit:                                 ; preds = %do.body1.i, %do.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_disconnect_intr.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_disconnect_intr, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !203

if.then:                                          ; preds = %dwc2_writel.exit
  %4 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hsotg, align 8
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %9 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  %11 = lshr i32 %8, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %11, i32 %8
  %and.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not = icmp eq i32 %and.i, 0
  %cond = select i1 %tobool5.not, ptr @.str.24, ptr @.str.23
  %op_state.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 4
  %12 = ptrtoint ptr %op_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %op_state.i, align 8
  %switch.tableidx = add i32 %13, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %14 = icmp ult i32 %switch.tableidx, 9
  br i1 %14, label %switch.lookup, label %if.then.dwc2_op_state_str.exit_crit_edge

if.then.dwc2_op_state_str.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_op_state_str.exit

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [9 x ptr], ptr @switch.table.dwc2_handle_disconnect_intr, i32 0, i32 %switch.tableidx
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %dwc2_op_state_str.exit

dwc2_op_state_str.exit:                           ; preds = %switch.lookup, %if.then.dwc2_op_state_str.exit_crit_edge
  %retval.0.i14 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.44, %if.then.dwc2_op_state_str.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_disconnect_intr.__UNIQUE_ID_ddebug310, ptr noundef %5, ptr noundef nonnull @.str.48, ptr noundef nonnull %cond, ptr noundef nonnull %retval.0.i14) #5
  br label %do.end

do.end:                                           ; preds = %dwc2_op_state_str.exit, %dwc2_writel.exit
  %op_state = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 4
  %16 = ptrtoint ptr %op_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %op_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %17)
  %cmp = icmp eq i32 %17, 9
  br i1 %cmp, label %if.then7, label %do.end.if.end8_crit_edge

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dwc2_hcd_disconnect(ptr noundef %hsotg, i1 noundef zeroext false) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.end.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_handle_session_req_intr(ptr noundef %hsotg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %0 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %regs3.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %2 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %3, i32 20
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 1073741824) #5, !srcloc !204
  br label %dwc2_writel.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 64) #5, !srcloc !204
  br label %dwc2_writel.exit

dwc2_writel.exit:                                 ; preds = %do.body1.i, %do.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_session_req_intr.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_session_req_intr, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !203

if.then:                                          ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hsotg, align 8
  %lx_state = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 28
  %6 = ptrtoint ptr %lx_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lx_state, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_session_req_intr.__UNIQUE_ID_ddebug305, ptr noundef %5, ptr noundef nonnull @.str.50, i32 noundef %7) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %dwc2_writel.exit
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %11 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i = icmp eq i8 %12, 0
  %13 = lshr i32 %10, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %13, i32 %10
  %and.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.not = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %do.end
  %lx_state7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 28
  %14 = ptrtoint ptr %lx_state7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lx_state7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp = icmp eq i32 %15, 2
  br i1 %cmp, label %if.then8, label %if.then6.if.end24_crit_edge

if.then6.if.end24_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then8:                                         ; preds = %if.then6
  %in_ppd = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 8
  %16 = ptrtoint ptr %in_ppd to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %in_ppd, align 8
  %17 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool9.not = icmp eq i8 %17, 0
  br i1 %tobool9.not, label %if.then8.if.end19_crit_edge, label %if.then10

if.then8.if.end19_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then10:                                        ; preds = %if.then8
  %call11 = tail call i32 @dwc2_exit_partial_power_down(ptr noundef %hsotg, i32 noundef 0, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end19_crit_edge, label %do.end16

if.then10.if.end19_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

do.end16:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.51) #8
  br label %if.end19

if.end19:                                         ; preds = %do.end16, %if.then10.if.end19_crit_edge, %if.then8.if.end19_crit_edge
  %power_down = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 15
  %20 = ptrtoint ptr %power_down to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %power_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp20 = icmp eq i32 %21, 0
  br i1 %cmp20, label %land.lhs.true, label %if.end19.if.end24_crit_edge

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end19
  %bus_suspended = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 9
  %22 = ptrtoint ptr %bus_suspended to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bus_suspended, align 1, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool21.not = icmp eq i8 %23, 0
  br i1 %tobool21.not, label %land.lhs.true.if.end24_crit_edge, label %if.then22

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dwc2_gadget_exit_clock_gating(ptr noundef %hsotg, i32 noundef 0) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %land.lhs.true.if.end24_crit_edge, %if.end19.if.end24_crit_edge, %if.then6.if.end24_crit_edge
  tail call void @dwc2_hsotg_disconnect(ptr noundef %hsotg) #5
  br label %if.end26

if.else:                                          ; preds = %do.end
  %24 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i43 = getelementptr i8, ptr %25, i32 1088
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %27 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i45 = icmp eq i8 %28, 0
  %29 = tail call i32 @llvm.bswap.i32(i32 %26) #5
  %retval.0.i.i46 = select i1 %tobool.not.i.i45, i32 %29, i32 %26
  %and.i47 = and i32 %retval.0.i.i46, -4143
  %or = or i32 %and.i47, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i.i45, label %do.body1.i55, label %do.body.i52

do.body.i52:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %31, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %or) #5, !srcloc !204
  br label %dwc2_writel.exit56

do.body1.i55:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %32 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %33 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i54 = getelementptr i8, ptr %34, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i54, i32 %32) #5, !srcloc !204
  br label %dwc2_writel.exit56

dwc2_writel.exit56:                               ; preds = %do.body1.i55, %do.body.i52
  tail call void @dwc2_hcd_connect(ptr noundef %hsotg) #5
  br label %if.end26

if.end26:                                         ; preds = %dwc2_writel.exit56, %if.end24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_handle_wakeup_detected_intr(ptr noundef %hsotg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %0 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %regs3.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %2 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %3, i32 20
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 -2147483648) #5, !srcloc !204
  br label %dwc2_writel.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 128) #5, !srcloc !204
  br label %dwc2_writel.exit

dwc2_writel.exit:                                 ; preds = %do.body1.i, %do.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_wakeup_detected_intr.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_wakeup_detected_intr, %do.body4)) #5
          to label %if.then [label %do.body4], !srcloc !203

if.then:                                          ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_wakeup_detected_intr.__UNIQUE_ID_ddebug307, ptr noundef %5, ptr noundef nonnull @.str.53) #5
  br label %do.body4

do.body4:                                         ; preds = %if.then, %dwc2_writel.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_wakeup_detected_intr.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_wakeup_detected_intr, %do.end22)) #5
          to label %if.then18 [label %do.end22], !srcloc !203

if.then18:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hsotg, align 8
  %lx_state = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 28
  %8 = ptrtoint ptr %lx_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lx_state, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_wakeup_detected_intr.__UNIQUE_ID_ddebug308, ptr noundef %7, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.52, i32 noundef %9) #5
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %do.body4
  %lx_state23 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 28
  %10 = ptrtoint ptr %lx_state23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lx_state23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %if.then24, label %if.end25

if.then24:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_wakeup_from_lpm_l1(ptr noundef %hsotg)
  br label %cleanup

if.end25:                                         ; preds = %do.end22
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 20
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %15 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  %17 = lshr i32 %14, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %17, i32 %14
  %and.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool27.not.not = icmp eq i32 %and.i, 0
  br i1 %tobool27.not.not, label %do.body29, label %if.else85

do.body29:                                        ; preds = %if.end25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_wakeup_detected_intr.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_wakeup_detected_intr, %do.end48)) #5
          to label %if.then43 [label %do.end48], !srcloc !203

if.then43:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hsotg, align 8
  %20 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i170 = getelementptr i8, ptr %21, i32 2056
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i170) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %23 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i172 = icmp eq i8 %24, 0
  %25 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  %retval.0.i173 = select i1 %tobool.not.i172, i32 %25, i32 %22
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_wakeup_detected_intr.__UNIQUE_ID_ddebug309, ptr noundef %19, ptr noundef nonnull @.str.55, i32 noundef %retval.0.i173) #5
  br label %do.end48

do.end48:                                         ; preds = %if.then43, %do.body29
  %26 = ptrtoint ptr %lx_state23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lx_state23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp50 = icmp eq i32 %27, 2
  br i1 %cmp50, label %if.then51, label %if.else

if.then51:                                        ; preds = %do.end48
  %in_ppd = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 8
  %28 = ptrtoint ptr %in_ppd to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load = load i8, ptr %in_ppd, align 8
  %29 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool52.not = icmp eq i8 %29, 0
  br i1 %tobool52.not, label %if.then51.if.end77_crit_edge, label %if.then53

if.then51.if.end77_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.then53:                                        ; preds = %if.then51
  %30 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i175 = getelementptr i8, ptr %31, i32 2052
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i175) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %33 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i177 = icmp eq i8 %34, 0
  %35 = tail call i32 @llvm.bswap.i32(i32 %32) #5
  %retval.0.i178 = select i1 %tobool.not.i177, i32 %35, i32 %32
  %and = and i32 %retval.0.i178, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i177, label %do.body1.i186, label %do.body.i183

do.body.i183:                                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i182 = getelementptr i8, ptr %37, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182, i32 %and) #5, !srcloc !204
  br label %dwc2_writel.exit187

do.body1.i186:                                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  %38 = tail call i32 @llvm.bswap.i32(i32 %and) #5
  %39 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i185 = getelementptr i8, ptr %40, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i185, i32 %38) #5, !srcloc !204
  br label %dwc2_writel.exit187

dwc2_writel.exit187:                              ; preds = %do.body1.i186, %do.body.i183
  %call55 = tail call i32 @dwc2_exit_partial_power_down(ptr noundef %hsotg, i32 noundef 1, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %dwc2_writel.exit187.do.body63_crit_edge, label %do.end60

dwc2_writel.exit187.do.body63_crit_edge:          ; preds = %dwc2_writel.exit187
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body63

do.end60:                                         ; preds = %dwc2_writel.exit187
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.56) #8
  br label %do.body63

do.body63:                                        ; preds = %do.end60, %dwc2_writel.exit187.do.body63_crit_edge
  %gadget = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 89
  %speed = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 89, i32 5
  %43 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp64.not = icmp eq i32 %44, 0
  br i1 %cmp64.not, label %do.body63.if.end77_crit_edge, label %land.lhs.true

do.body63.if.end77_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

land.lhs.true:                                    ; preds = %do.body63
  %driver = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 71
  %45 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %driver, align 8
  %tobool65.not = icmp eq ptr %46, null
  br i1 %tobool65.not, label %land.lhs.true.if.end77_crit_edge, label %land.lhs.true66

land.lhs.true.if.end77_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

land.lhs.true66:                                  ; preds = %land.lhs.true
  %resume = getelementptr inbounds %struct.usb_gadget_driver, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %resume, align 4
  %tobool68.not = icmp eq ptr %48, null
  br i1 %tobool68.not, label %land.lhs.true66.if.end77_crit_edge, label %if.then69

land.lhs.true66.if.end77_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.then69:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 18
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  %49 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %driver, align 8
  %resume71 = getelementptr inbounds %struct.usb_gadget_driver, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %resume71 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %resume71, align 4
  tail call void %52(ptr noundef %gadget) #5
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  br label %if.end77

if.end77:                                         ; preds = %if.then69, %land.lhs.true66.if.end77_crit_edge, %land.lhs.true.if.end77_crit_edge, %do.body63.if.end77_crit_edge, %if.then51.if.end77_crit_edge
  %power_down = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 15
  %53 = ptrtoint ptr %power_down to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %power_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp78 = icmp eq i32 %54, 0
  br i1 %cmp78, label %land.lhs.true79, label %if.end77.cleanup_crit_edge

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true79:                                  ; preds = %if.end77
  %bus_suspended = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 9
  %55 = ptrtoint ptr %bus_suspended to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bus_suspended, align 1, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool80.not = icmp eq i8 %56, 0
  br i1 %tobool80.not, label %land.lhs.true79.cleanup_crit_edge, label %if.then81

land.lhs.true79.cleanup_crit_edge:                ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then81:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dwc2_gadget_exit_clock_gating(ptr noundef %hsotg, i32 noundef 0) #5
  br label %cleanup

if.else:                                          ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %lx_state23 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %lx_state23, align 8
  br label %cleanup

if.else85:                                        ; preds = %if.end25
  %58 = ptrtoint ptr %lx_state23 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %lx_state23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp87 = icmp eq i32 %59, 2
  br i1 %cmp87, label %if.then88, label %if.else121

if.then88:                                        ; preds = %if.else85
  %in_ppd89 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 8
  %60 = ptrtoint ptr %in_ppd89 to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load90 = load i8, ptr %in_ppd89, align 8
  %61 = and i8 %bf.load90, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool94.not = icmp eq i8 %61, 0
  br i1 %tobool94.not, label %if.then88.if.end104_crit_edge, label %if.then95

if.then88.if.end104_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

if.then95:                                        ; preds = %if.then88
  %call96 = tail call i32 @dwc2_exit_partial_power_down(ptr noundef %hsotg, i32 noundef 1, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then95.if.end104_crit_edge, label %do.end101

if.then95.if.end104_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

do.end101:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.56) #8
  br label %if.end104

if.end104:                                        ; preds = %do.end101, %if.then95.if.end104_crit_edge, %if.then88.if.end104_crit_edge
  %power_down106 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 15
  %64 = ptrtoint ptr %power_down106 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %power_down106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp107 = icmp eq i32 %65, 0
  br i1 %cmp107, label %land.lhs.true108, label %if.end104.if.end112_crit_edge

if.end104.if.end112_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112

land.lhs.true108:                                 ; preds = %if.end104
  %bus_suspended109 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 9
  %66 = ptrtoint ptr %bus_suspended109 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bus_suspended109, align 1, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool110.not = icmp eq i8 %67, 0
  br i1 %tobool110.not, label %land.lhs.true108.if.end112_crit_edge, label %if.then111

land.lhs.true108.if.end112_crit_edge:             ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112

if.then111:                                       ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dwc2_host_exit_clock_gating(ptr noundef %hsotg, i32 noundef 1) #5
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %land.lhs.true108.if.end112_crit_edge, %if.end104.if.end112_crit_edge
  %reset_phy_on_wake = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 10
  %68 = ptrtoint ptr %reset_phy_on_wake to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load113 = load i8, ptr %reset_phy_on_wake, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load113)
  %tobool116.not = icmp sgt i8 %bf.load113, -1
  br i1 %tobool116.not, label %if.end112.if.end118_crit_edge, label %if.then117

if.end112.if.end118_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end118

if.then117:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #7
  %phy_reset_work.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %69 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %69, ptr noundef %phy_reset_work.i) #5
  br label %if.end118

if.end118:                                        ; preds = %if.then117, %if.end112.if.end118_crit_edge
  %wkp_timer = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %70 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %70, 8
  %call120 = tail call i32 @mod_timer(ptr noundef %wkp_timer, i32 noundef %add) #5
  br label %cleanup

if.else121:                                       ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %lx_state23 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %lx_state23, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else121, %if.end118, %if.else, %if.then81, %land.lhs.true79.cleanup_crit_edge, %if.end77.cleanup_crit_edge, %if.then24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_handle_usb_suspend_intr(ptr noundef %hsotg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %0 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %regs3.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %2 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %3, i32 20
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 2048) #5, !srcloc !204
  br label %dwc2_writel.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 524288) #5, !srcloc !204
  br label %dwc2_writel.exit

dwc2_writel.exit:                                 ; preds = %do.body1.i, %do.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_usb_suspend_intr.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_usb_suspend_intr, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !203

if.then:                                          ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_usb_suspend_intr.__UNIQUE_ID_ddebug311, ptr noundef %5, ptr noundef nonnull @.str.69) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %dwc2_writel.exit
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %9 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  %11 = lshr i32 %8, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %11, i32 %8
  %and.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.not = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %do.end
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i201 = getelementptr i8, ptr %13, i32 2056
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i201) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %15 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i203 = icmp eq i8 %16, 0
  %17 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  %retval.0.i204 = select i1 %tobool.not.i203, i32 %17, i32 %14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_usb_suspend_intr.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_usb_suspend_intr, %do.body27)) #5
          to label %if.then22 [label %do.body27], !srcloc !203

if.then22:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_usb_suspend_intr.__UNIQUE_ID_ddebug312, ptr noundef %19, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.68, i32 noundef %retval.0.i204) #5
  br label %do.body27

do.body27:                                        ; preds = %if.then22, %if.then6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_usb_suspend_intr.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_usb_suspend_intr, %do.end54)) #5
          to label %if.then41 [label %do.end54], !srcloc !203

if.then41:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hsotg, align 8
  %and = and i32 %retval.0.i204, 1
  %power_optimized = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %power_optimized to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load = load i32, ptr %power_optimized, align 4
  %bf.lshr = lshr i32 %bf.load, 11
  %bf.clear = and i32 %bf.lshr, 1
  %bf.lshr50 = lshr i32 %bf.load, 10
  %bf.clear51 = and i32 %bf.lshr50, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_usb_suspend_intr.__UNIQUE_ID_ddebug313, ptr noundef %21, ptr noundef nonnull @.str.71, i32 noundef %and, i32 noundef %bf.clear, i32 noundef %bf.clear51) #5
  br label %do.end54

do.end54:                                         ; preds = %if.then41, %do.body27
  %connected = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 90
  %23 = ptrtoint ptr %connected to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load55 = load i8, ptr %connected, align 8
  %24 = and i8 %bf.load55, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool58.not = icmp eq i8 %24, 0
  br i1 %tobool58.not, label %do.body60, label %if.end79

do.body60:                                        ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_usb_suspend_intr.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_usb_suspend_intr, %cleanup)) #5
          to label %if.then74 [label %cleanup], !srcloc !203

if.then74:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_usb_suspend_intr.__UNIQUE_ID_ddebug314, ptr noundef %26, ptr noundef nonnull @.str.72) #5
  br label %cleanup

if.end79:                                         ; preds = %do.end54
  %and80 = and i32 %retval.0.i204, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end79.cleanup_crit_edge, label %if.then82

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then82:                                        ; preds = %if.end79
  %power_down = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 15
  %27 = ptrtoint ptr %power_down to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %power_down, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %28, label %if.then82.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb96
    i32 0, label %sw.bb105
  ]

if.then82.sw.epilog_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then82
  %call83 = tail call i32 @dwc2_enter_partial_power_down(ptr noundef %hsotg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %sw.bb.if.end90_crit_edge, label %do.end88

sw.bb.if.end90_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

do.end88:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.73) #8
  br label %if.end90

if.end90:                                         ; preds = %do.end88, %sw.bb.if.end90_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 21474800) #5
  %uphy = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 13
  %33 = ptrtoint ptr %uphy to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %uphy, align 4
  %tobool.not.i205 = icmp eq ptr %34, null
  %cmp.i = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i205, %cmp.i
  br i1 %spec.select.i, label %if.end90.sw.epilog_crit_edge, label %land.lhs.true.i

if.end90.sw.epilog_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true.i:                                  ; preds = %if.end90
  %set_suspend.i = getelementptr inbounds %struct.usb_phy, ptr %34, i32 0, i32 26
  %35 = ptrtoint ptr %set_suspend.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_suspend.i, align 4
  %cmp.not.i = icmp eq ptr %36, null
  br i1 %cmp.not.i, label %land.lhs.true.i.sw.epilog_crit_edge, label %if.then.i

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %36(ptr noundef nonnull %34, i32 noundef 1) #5
  br label %sw.epilog

sw.bb96:                                          ; preds = %if.then82
  %call97 = tail call i32 @dwc2_enter_hibernation(ptr noundef %hsotg, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %sw.bb96.sw.epilog_crit_edge, label %do.end102

sw.bb96.sw.epilog_crit_edge:                      ; preds = %sw.bb96
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end102:                                        ; preds = %sw.bb96
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.75) #8
  br label %sw.epilog

sw.bb105:                                         ; preds = %if.then82
  %no_clock_gating = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 16
  %39 = ptrtoint ptr %no_clock_gating to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %no_clock_gating, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool107.not = icmp eq i8 %40, 0
  br i1 %tobool107.not, label %if.then108, label %sw.bb105.sw.epilog_crit_edge

sw.bb105.sw.epilog_crit_edge:                     ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then108:                                       ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dwc2_gadget_enter_clock_gating(ptr noundef %hsotg) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then108, %sw.bb105.sw.epilog_crit_edge, %do.end102, %sw.bb96.sw.epilog_crit_edge, %if.then.i, %land.lhs.true.i.sw.epilog_crit_edge, %if.end90.sw.epilog_crit_edge, %if.then82.sw.epilog_crit_edge
  %lx_state = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 28
  %41 = ptrtoint ptr %lx_state to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %lx_state, align 8
  %gadget = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 89
  %speed = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 89, i32 5
  %42 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.not = icmp eq i32 %43, 0
  br i1 %cmp.not, label %sw.epilog.cleanup_crit_edge, label %land.lhs.true

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.epilog
  %driver = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 71
  %44 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %driver, align 8
  %tobool111.not = icmp eq ptr %45, null
  br i1 %tobool111.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true112

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true112:                                 ; preds = %land.lhs.true
  %suspend = getelementptr inbounds %struct.usb_gadget_driver, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %suspend, align 4
  %tobool114.not = icmp eq ptr %47, null
  br i1 %tobool114.not, label %land.lhs.true112.cleanup_crit_edge, label %if.then115

land.lhs.true112.cleanup_crit_edge:               ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then115:                                       ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 18
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  %48 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %driver, align 8
  %suspend117 = getelementptr inbounds %struct.usb_gadget_driver, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %suspend117 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %suspend117, align 4
  tail call void %51(ptr noundef %gadget) #5
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  br label %cleanup

if.else:                                          ; preds = %do.end
  %op_state = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 4
  %52 = ptrtoint ptr %op_state to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %op_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %53)
  %cmp124 = icmp eq i32 %53, 11
  br i1 %cmp124, label %do.body126, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body126:                                       ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_usb_suspend_intr.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_usb_suspend_intr, %do.end144)) #5
          to label %if.then140 [label %do.end144], !srcloc !203

if.then140:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_usb_suspend_intr.__UNIQUE_ID_ddebug315, ptr noundef %55, ptr noundef nonnull @.str.77) #5
  br label %do.end144

do.end144:                                        ; preds = %if.then140, %do.body126
  %lx_state145 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 28
  %56 = ptrtoint ptr %lx_state145 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2, ptr %lx_state145, align 8
  %lock146 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 18
  tail call void @_raw_spin_unlock(ptr noundef %lock146) #5
  tail call void @dwc2_hcd_start(ptr noundef %hsotg) #5
  tail call void @_raw_spin_lock(ptr noundef %lock146) #5
  %57 = ptrtoint ptr %op_state to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 9, ptr %op_state, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end144, %if.else.cleanup_crit_edge, %if.then115, %land.lhs.true112.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %if.then74, %do.body60
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_handle_lpm_intr(ptr noundef %hsotg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %0 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %regs3.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %2 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %3, i32 20
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 134217728) #5, !srcloc !204
  br label %dwc2_writel.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 8) #5, !srcloc !204
  br label %dwc2_writel.exit

dwc2_writel.exit:                                 ; preds = %do.body1.i, %do.body.i
  %regs.i170 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %4 = ptrtoint ptr %regs.i170 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i170, align 4
  %add.ptr.i171 = getelementptr i8, ptr %5, i32 84
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i171) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %7 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i173 = icmp eq i8 %8, 0
  %9 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  %retval.0.i174 = select i1 %tobool.not.i173, i32 %9, i32 %6
  %and = and i32 %retval.0.i174, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.78) #8
  br label %cleanup

if.end:                                           ; preds = %dwc2_writel.exit
  %and1 = lshr i32 %retval.0.i174, 2
  %shr = and i32 %and1, 15
  %and3 = lshr i32 %retval.0.i174, 8
  %shr4 = and i32 %and3, 15
  %and5 = and i32 %retval.0.i174, 4096
  %and6 = and i32 %retval.0.i174, 128
  %12 = ptrtoint ptr %regs.i170 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i170, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 20
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %15 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  %17 = lshr i32 %14, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %17, i32 %14
  %and.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.not = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.not, label %do.body10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body10:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_lpm_intr.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_lpm_intr, %do.end20)) #5
          to label %if.then16 [label %do.end20], !srcloc !203

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_lpm_intr.__UNIQUE_ID_ddebug316, ptr noundef %19, ptr noundef nonnull @.str.80, i32 noundef %and5) #5
  br label %do.end20

do.end20:                                         ; preds = %if.then16, %do.body10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool21.not = icmp eq i32 %and5, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shr4)
  %cmp.not = icmp ult i32 %shr, %shr4
  %or.cond = select i1 %tobool21.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.else, label %do.body23

do.body23:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_lpm_intr.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_lpm_intr, %if.end85)) #5
          to label %if.then37 [label %if.end85], !srcloc !203

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_lpm_intr.__UNIQUE_ID_ddebug317, ptr noundef %21, ptr noundef nonnull @.str.81) #5
  br label %if.end85

if.else:                                          ; preds = %do.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool42.not = icmp eq i32 %and6, 0
  br i1 %tobool42.not, label %do.body64, label %do.body44

do.body44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_lpm_intr.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_lpm_intr, %if.end85)) #5
          to label %if.then58 [label %if.end85], !srcloc !203

if.then58:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_lpm_intr.__UNIQUE_ID_ddebug318, ptr noundef %23, ptr noundef nonnull @.str.82) #5
  br label %if.end85

do.body64:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_lpm_intr.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_lpm_intr, %do.end82)) #5
          to label %if.then78 [label %do.end82], !srcloc !203

if.then78:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_lpm_intr.__UNIQUE_ID_ddebug319, ptr noundef %25, ptr noundef nonnull @.str.83) #5
  br label %do.end82

do.end82:                                         ; preds = %if.then78, %do.body64
  %26 = ptrtoint ptr %regs.i170 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i170, align 4
  %add.ptr.i176 = getelementptr i8, ptr %27, i32 3584
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i176) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %29 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i178 = icmp eq i8 %30, 0
  %31 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  %retval.0.i179 = select i1 %tobool.not.i178, i32 %31, i32 %28
  %or = or i32 %retval.0.i179, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i178, label %do.body1.i187, label %do.body.i184

do.body.i184:                                     ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %regs.i170 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i170, align 4
  %add.ptr.i183 = getelementptr i8, ptr %33, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i183, i32 %or) #5, !srcloc !204
  br label %if.end85

do.body1.i187:                                    ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #7
  %34 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %35 = ptrtoint ptr %regs.i170 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i170, align 4
  %add.ptr4.i186 = getelementptr i8, ptr %36, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i186, i32 %34) #5, !srcloc !204
  br label %if.end85

if.end85:                                         ; preds = %do.body1.i187, %do.body.i184, %if.then58, %do.body44, %if.then37, %do.body23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 2147480) #5
  %38 = ptrtoint ptr %regs.i170 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i170, align 4
  %add.ptr.i190 = getelementptr i8, ptr %39, i32 84
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i190) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %41 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i192 = icmp eq i8 %42, 0
  %43 = tail call i32 @llvm.bswap.i32(i32 %40) #5
  %retval.0.i193 = select i1 %tobool.not.i192, i32 %43, i32 %40
  %and87 = and i32 %retval.0.i193, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.end85.cleanup_crit_edge, label %if.then89

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then89:                                        ; preds = %if.end85
  %lx_state = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 28
  %44 = ptrtoint ptr %lx_state to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %lx_state, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_lpm_intr.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_lpm_intr, %do.body109)) #5
          to label %if.then104 [label %do.body109], !srcloc !203

if.then104:                                       ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_lpm_intr.__UNIQUE_ID_ddebug320, ptr noundef %46, ptr noundef nonnull @.str.84, i32 noundef %retval.0.i193) #5
  br label %do.body109

do.body109:                                       ; preds = %if.then104, %if.then89
  %gadget = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 89
  %speed = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 89, i32 5
  %47 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp110.not = icmp eq i32 %48, 0
  br i1 %cmp110.not, label %do.body109.cleanup_crit_edge, label %land.lhs.true111

do.body109.cleanup_crit_edge:                     ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true111:                                 ; preds = %do.body109
  %driver = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 71
  %49 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %driver, align 8
  %tobool112.not = icmp eq ptr %50, null
  br i1 %tobool112.not, label %land.lhs.true111.cleanup_crit_edge, label %land.lhs.true113

land.lhs.true111.cleanup_crit_edge:               ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true113:                                 ; preds = %land.lhs.true111
  %suspend = getelementptr inbounds %struct.usb_gadget_driver, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %suspend, align 4
  %tobool115.not = icmp eq ptr %52, null
  br i1 %tobool115.not, label %land.lhs.true113.cleanup_crit_edge, label %if.then116

land.lhs.true113.cleanup_crit_edge:               ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then116:                                       ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 18
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  %53 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %driver, align 8
  %suspend118 = getelementptr inbounds %struct.usb_gadget_driver, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %suspend118 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %suspend118, align 4
  tail call void %56(ptr noundef %gadget) #5
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then116, %land.lhs.true113.cleanup_crit_edge, %land.lhs.true111.cleanup_crit_edge, %do.body109.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc_handle_gpwrdn_disc_det(ptr noundef %hsotg, i32 noundef %gpwrdn) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 88
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %3 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %5 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  %retval.0.i = select i1 %tobool.not.i, i32 %5, i32 %2
  %and = and i32 %retval.0.i, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %7, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %and) #5, !srcloc !204
  br label %dwc2_writel.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %and) #5
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %10, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %8) #5, !srcloc !204
  br label %dwc2_writel.exit

dwc2_writel.exit:                                 ; preds = %do.body1.i, %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 1073740) #5
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %13, i32 88
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %15 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i54 = icmp eq i8 %16, 0
  %17 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  %retval.0.i55 = select i1 %tobool.not.i54, i32 %17, i32 %14
  %and2 = and i32 %retval.0.i55, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i54, label %do.body1.i63, label %do.body.i60

do.body.i60:                                      ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %19, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %and2) #5, !srcloc !204
  br label %dwc2_writel.exit64

do.body1.i63:                                     ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %and2) #5
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i62 = getelementptr i8, ptr %22, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i62, i32 %20) #5, !srcloc !204
  br label %dwc2_writel.exit64

dwc2_writel.exit64:                               ; preds = %do.body1.i63, %do.body.i60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 1073740) #5
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %25, i32 88
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %27 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i68 = icmp eq i8 %28, 0
  %29 = tail call i32 @llvm.bswap.i32(i32 %26) #5
  %retval.0.i69 = select i1 %tobool.not.i68, i32 %29, i32 %26
  %and4 = and i32 %retval.0.i69, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i68, label %do.body1.i77, label %do.body.i74

do.body.i74:                                      ; preds = %dwc2_writel.exit64
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %31, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 %and4) #5, !srcloc !204
  br label %dwc2_writel.exit78

do.body1.i77:                                     ; preds = %dwc2_writel.exit64
  call void @__sanitizer_cov_trace_pc() #7
  %32 = tail call i32 @llvm.bswap.i32(i32 %and4) #5
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i76 = getelementptr i8, ptr %34, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i76, i32 %32) #5, !srcloc !204
  br label %dwc2_writel.exit78

dwc2_writel.exit78:                               ; preds = %do.body1.i77, %do.body.i74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 1073740) #5
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %37, i32 88
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %39 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i82 = icmp eq i8 %40, 0
  %41 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  %retval.0.i83 = select i1 %tobool.not.i82, i32 %41, i32 %38
  %or = or i32 %retval.0.i83, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i82, label %do.body1.i91, label %do.body.i88

do.body.i88:                                      ; preds = %dwc2_writel.exit78
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %43, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %or) #5, !srcloc !204
  br label %dwc2_writel.exit92

do.body1.i91:                                     ; preds = %dwc2_writel.exit78
  call void @__sanitizer_cov_trace_pc() #7
  %44 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %45 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i90 = getelementptr i8, ptr %46, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i90, i32 %44) #5, !srcloc !204
  br label %dwc2_writel.exit92

dwc2_writel.exit92:                               ; preds = %do.body1.i91, %do.body.i88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 1073740) #5
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 4
  %add.ptr.i94 = getelementptr i8, ptr %49, i32 88
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %51 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i96 = icmp eq i8 %52, 0
  %53 = tail call i32 @llvm.bswap.i32(i32 %50) #5
  %retval.0.i97 = select i1 %tobool.not.i96, i32 %53, i32 %50
  %and7 = and i32 %retval.0.i97, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i96, label %do.body1.i105, label %do.body.i102

do.body.i102:                                     ; preds = %dwc2_writel.exit92
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i, align 4
  %add.ptr.i101 = getelementptr i8, ptr %55, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 %and7) #5, !srcloc !204
  br label %dwc2_writel.exit106

do.body1.i105:                                    ; preds = %dwc2_writel.exit92
  call void @__sanitizer_cov_trace_pc() #7
  %56 = tail call i32 @llvm.bswap.i32(i32 %and7) #5
  %57 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i104 = getelementptr i8, ptr %58, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i104, i32 %56) #5, !srcloc !204
  br label %dwc2_writel.exit106

dwc2_writel.exit106:                              ; preds = %do.body1.i105, %do.body.i102
  %59 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i, align 4
  %add.ptr.i108 = getelementptr i8, ptr %60, i32 88
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %62 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i110 = icmp eq i8 %63, 0
  %64 = tail call i32 @llvm.bswap.i32(i32 %61) #5
  %retval.0.i111 = select i1 %tobool.not.i110, i32 %64, i32 %61
  %and9 = and i32 %retval.0.i111, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i110, label %do.body1.i119, label %do.body.i116

do.body.i116:                                     ; preds = %dwc2_writel.exit106
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %66, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 %and9) #5, !srcloc !204
  br label %dwc2_writel.exit120

do.body1.i119:                                    ; preds = %dwc2_writel.exit106
  call void @__sanitizer_cov_trace_pc() #7
  %67 = tail call i32 @llvm.bswap.i32(i32 %and9) #5
  %68 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i118 = getelementptr i8, ptr %69, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i118, i32 %67) #5, !srcloc !204
  br label %dwc2_writel.exit120

dwc2_writel.exit120:                              ; preds = %do.body1.i119, %do.body.i116
  %hibernated = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 8
  %70 = ptrtoint ptr %hibernated to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load = load i8, ptr %hibernated, align 8
  %bf.clear = and i8 %bf.load, -17
  store i8 %bf.clear, ptr %hibernated, align 8
  %bus_suspended = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 9
  %71 = ptrtoint ptr %bus_suspended to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %bus_suspended, align 1
  %and10 = and i32 %gpwrdn, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool.not = icmp eq i32 %and10, 0
  %op_state12 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %dwc2_writel.exit120
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %op_state12 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 3, ptr %op_state12, align 8
  %call11 = tail call i32 @dwc2_core_init(ptr noundef %hsotg, i1 noundef zeroext false) #5
  tail call void @dwc2_enable_global_interrupts(ptr noundef %hsotg) #5
  tail call void @dwc2_hsotg_core_init_disconnected(ptr noundef %hsotg, i1 noundef zeroext false) #5
  tail call void @dwc2_hsotg_core_connect(ptr noundef %hsotg) #5
  br label %if.end

if.else:                                          ; preds = %dwc2_writel.exit120
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %op_state12 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 9, ptr %op_state12, align 8
  %call13 = tail call i32 @dwc2_core_init(ptr noundef %hsotg, i1 noundef zeroext false) #5
  tail call void @dwc2_enable_global_interrupts(ptr noundef %hsotg) #5
  tail call void @dwc2_hcd_start(ptr noundef %hsotg) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_exit_hibernation(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_core_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_enable_global_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hsotg_core_init_disconnected(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hsotg_core_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hsotg_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_disconnect(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_exit_partial_power_down(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_gadget_exit_clock_gating(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_wakeup_from_lpm_l1(ptr noundef %hsotg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lx_state = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 28
  %0 = ptrtoint ptr %lx_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lx_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.59) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 84
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %7 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  %9 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  %retval.0.i73 = select i1 %tobool.not.i, i32 %9, i32 %6
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 20
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %13 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i = icmp eq i8 %14, 0
  %15 = lshr i32 %12, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %15, i32 %12
  %and.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.not, label %do.body3, label %do.end33

do.body3:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_wakeup_from_lpm_l1.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_wakeup_from_lpm_l1, %do.end13)) #5
          to label %if.then9 [label %do.end13], !srcloc !203

if.then9:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_wakeup_from_lpm_l1.__UNIQUE_ID_ddebug306, ptr noundef %17, ptr noundef nonnull @.str.61) #5
  br label %do.end13

do.end13:                                         ; preds = %if.then9, %do.body3
  %and14 = and i32 %retval.0.i73, -4225
  %18 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i75 = icmp eq i8 %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i75, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr.i77 = getelementptr i8, ptr %21, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 %and14) #5, !srcloc !204
  br label %do.body15.preheader

do.body1.i:                                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %and14) #5
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %24, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %22) #5, !srcloc !204
  br label %do.body15.preheader

do.body15.preheader:                              ; preds = %do.body1.i, %do.body.i
  br label %do.body15

do.body15:                                        ; preds = %if.end20.do.body15_crit_edge, %do.body15.preheader
  %i.0 = phi i32 [ %inc, %if.end20.do.body15_crit_edge ], [ 0, %do.body15.preheader ]
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %26, i32 84
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79) #5, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  %28 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %needs_byte_swap.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i81 = icmp eq i8 %29, 0
  %30 = tail call i32 @llvm.bswap.i32(i32 %27) #5
  %retval.0.i82 = select i1 %tobool.not.i81, i32 %30, i32 %27
  %and17 = and i32 %retval.0.i82, 122880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end30, label %if.end20

if.end20:                                         ; preds = %do.body15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #5
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond.not = icmp eq i32 %inc, 200
  br i1 %exitcond.not, label %do.end28, label %if.end20.do.body15_crit_edge

if.end20.do.body15_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

do.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.63) #8
  br label %cleanup

if.end30:                                         ; preds = %do.body15
  tail call void @dwc2_gadget_init_lpm(ptr noundef %hsotg) #5
  %34 = ptrtoint ptr %lx_state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %lx_state, align 8
  %gadget = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 89
  %speed = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 89, i32 5
  %35 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp38.not = icmp eq i32 %36, 0
  br i1 %cmp38.not, label %if.end30.cleanup_crit_edge, label %land.lhs.true

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end33:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.66) #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end30
  %driver = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 71
  %39 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver, align 8
  %tobool39.not = icmp eq ptr %40, null
  br i1 %tobool39.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true40

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true40:                                  ; preds = %land.lhs.true
  %resume = getelementptr inbounds %struct.usb_gadget_driver, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %resume, align 4
  %tobool42.not = icmp eq ptr %42, null
  br i1 %tobool42.not, label %land.lhs.true40.cleanup_crit_edge, label %if.then43

land.lhs.true40.cleanup_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then43:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 18
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  %43 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver, align 8
  %resume45 = getelementptr inbounds %struct.usb_gadget_driver, ptr %44, i32 0, i32 7
  %45 = ptrtoint ptr %resume45 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %resume45, align 4
  tail call void %46(ptr noundef %gadget) #5
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %land.lhs.true40.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.end33, %if.end30.cleanup_crit_edge, %do.end28, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_host_exit_clock_gating(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_gadget_init_lpm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_enter_partial_power_down(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_enter_hibernation(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_gadget_enter_clock_gating(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !25, !26, !28, !29, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !47, !48, !49, !50, !52, !53, !54, !56, !57, !59, !60, !62, !63, !64, !66, !67, !69, !70, !72, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !90, !92, !94, !96, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !123, !124, !126, !127, !128, !130, !131, !133, !134, !135, !136, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !173, !174, !175, !176, !178, !179, !181, !182, !184, !185, !187, !188, !190}
!llvm.module.flags = !{!191, !192, !193, !194, !195, !196, !197, !198}
!llvm.ident = !{!199}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/dwc2/core_intr.c", i32 839, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @dwc2_handle_common_intr._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @dwc2_handle_common_intr._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/dwc2/core_intr.c", i32 885, i32 4}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @dwc2_handle_common_intr.__UNIQUE_ID_ddebug327, !9, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/dwc2/core_intr.c", i32 673, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @dwc2_read_common_intr.__UNIQUE_ID_ddebug321, !13, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/dwc2/core_intr.c", i32 763, i32 2}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @dwc2_handle_gpwrdn_intr.__UNIQUE_ID_ddebug322, !17, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/dwc2/core_intr.c", i32 769, i32 3}
!22 = !{ptr @dwc2_handle_gpwrdn_intr.__UNIQUE_ID_ddebug323, !21, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/dwc2/core_intr.c", i32 777, i32 3}
!25 = !{ptr @dwc2_handle_gpwrdn_intr.__UNIQUE_ID_ddebug324, !24, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/dwc2/core_intr.c", i32 783, i32 6}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @dwc2_handle_gpwrdn_intr._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @dwc2_handle_gpwrdn_intr._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @dwc2_handle_gpwrdn_intr._entry.15, !32, !"_entry", i1 false, i1 false}
!32 = !{!"../drivers/usb/dwc2/core_intr.c", i32 789, i32 6}
!33 = !{ptr @dwc2_handle_gpwrdn_intr._entry_ptr.16, !32, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/dwc2/core_intr.c", i32 795, i32 3}
!36 = !{ptr @dwc2_handle_gpwrdn_intr.__UNIQUE_ID_ddebug325, !35, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!37 = !{ptr @dwc2_handle_gpwrdn_intr._entry.18, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/usb/dwc2/core_intr.c", i32 799, i32 5}
!39 = !{ptr @dwc2_handle_gpwrdn_intr._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/dwc2/core_intr.c", i32 804, i32 3}
!42 = !{ptr @dwc2_handle_gpwrdn_intr.__UNIQUE_ID_ddebug326, !41, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/dwc2/core_intr.c", i32 102, i32 2}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @dwc2_handle_mode_mismatch_intr._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @dwc2_handle_mode_mismatch_intr._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/dwc2/core_intr.c", i32 120, i32 2}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @dwc2_handle_otg_intr.__UNIQUE_ID_ddebug295, !51, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/dwc2/core_intr.c", i32 124, i32 3}
!56 = !{ptr @dwc2_handle_otg_intr.__UNIQUE_ID_ddebug296, !55, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/dwc2/core_intr.c", i32 140, i32 5}
!59 = !{ptr @dwc2_handle_otg_intr.__UNIQUE_ID_ddebug297, !58, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/dwc2/core_intr.c", i32 141, i32 5}
!62 = !{ptr @dwc2_handle_otg_intr._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @dwc2_handle_otg_intr._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/dwc2/core_intr.c", i32 159, i32 3}
!66 = !{ptr @dwc2_handle_otg_intr.__UNIQUE_ID_ddebug298, !65, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/dwc2/core_intr.c", i32 219, i32 4}
!69 = !{ptr @dwc2_handle_otg_intr.__UNIQUE_ID_ddebug299, !68, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/dwc2/core_intr.c", i32 220, i32 4}
!72 = !{ptr @dwc2_handle_otg_intr._entry.32, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @dwc2_handle_otg_intr._entry_ptr.34, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/dwc2/core_intr.c", i32 232, i32 3}
!76 = !{ptr @dwc2_handle_otg_intr.__UNIQUE_ID_ddebug300, !75, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/dwc2/core_intr.c", i32 236, i32 4}
!79 = !{ptr @dwc2_handle_otg_intr.__UNIQUE_ID_ddebug301, !78, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/dwc2/core_intr.c", i32 255, i32 3}
!82 = !{ptr @dwc2_handle_otg_intr.__UNIQUE_ID_ddebug302, !81, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/dwc2/core_intr.c", i32 258, i32 3}
!85 = !{ptr @dwc2_handle_otg_intr.__UNIQUE_ID_ddebug303, !84, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/dwc2/core_intr.c", i32 61, i32 10}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/dwc2/core_intr.c", i32 63, i32 10}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/dwc2/core_intr.c", i32 65, i32 10}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/dwc2/core_intr.c", i32 67, i32 10}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/dwc2/core_intr.c", i32 69, i32 10}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/dwc2/core_intr.c", i32 71, i32 10}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/dwc2/core_intr.c", i32 286, i32 2}
!100 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @dwc2_handle_conn_id_status_change_intr.__UNIQUE_ID_ddebug304, !99, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/dwc2/core_intr.c", i32 489, i32 2}
!104 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @dwc2_handle_disconnect_intr.__UNIQUE_ID_ddebug310, !103, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/dwc2/core_intr.c", i32 315, i32 2}
!108 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @dwc2_handle_session_req_intr.__UNIQUE_ID_ddebug305, !107, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/dwc2/core_intr.c", i32 324, i32 6}
!112 = !{ptr @dwc2_handle_session_req_intr._entry, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @dwc2_handle_session_req_intr._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/dwc2/core_intr.c", i32 414, i32 2}
!116 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @dwc2_handle_wakeup_detected_intr.__UNIQUE_ID_ddebug307, !115, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/dwc2/core_intr.c", i32 415, i32 2}
!120 = !{ptr @dwc2_handle_wakeup_detected_intr.__UNIQUE_ID_ddebug308, !119, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/dwc2/core_intr.c", i32 423, i32 3}
!123 = !{ptr @dwc2_handle_wakeup_detected_intr.__UNIQUE_ID_ddebug309, !122, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/dwc2/core_intr.c", i32 434, i32 6}
!126 = !{ptr @dwc2_handle_wakeup_detected_intr._entry, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @dwc2_handle_wakeup_detected_intr._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @dwc2_handle_wakeup_detected_intr._entry.57, !129, !"_entry", i1 false, i1 false}
!129 = !{!"../drivers/usb/dwc2/core_intr.c", i32 453, i32 6}
!130 = !{ptr @dwc2_handle_wakeup_detected_intr._entry_ptr.58, !129, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/dwc2/core_intr.c", i32 361, i32 3}
!133 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @dwc2_wakeup_from_lpm_l1._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @dwc2_wakeup_from_lpm_l1._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/dwc2/core_intr.c", i32 367, i32 3}
!138 = !{ptr @dwc2_wakeup_from_lpm_l1.__UNIQUE_ID_ddebug306, !137, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/dwc2/core_intr.c", i32 383, i32 4}
!141 = !{ptr @dwc2_wakeup_from_lpm_l1._entry.62, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @dwc2_wakeup_from_lpm_l1._entry_ptr.64, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/dwc2/core_intr.c", i32 389, i32 3}
!145 = !{ptr @dwc2_wakeup_from_lpm_l1._entry.65, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @dwc2_wakeup_from_lpm_l1._entry_ptr.67, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/usb/dwc2/core_intr.c", i32 513, i32 2}
!149 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @dwc2_handle_usb_suspend_intr.__UNIQUE_ID_ddebug311, !148, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!151 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/usb/dwc2/core_intr.c", i32 521, i32 3}
!153 = !{ptr @dwc2_handle_usb_suspend_intr.__UNIQUE_ID_ddebug312, !152, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/usb/dwc2/core_intr.c", i32 522, i32 3}
!156 = !{ptr @dwc2_handle_usb_suspend_intr.__UNIQUE_ID_ddebug313, !155, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/dwc2/core_intr.c", i32 530, i32 4}
!159 = !{ptr @dwc2_handle_usb_suspend_intr.__UNIQUE_ID_ddebug314, !158, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!160 = !{ptr @.str.73, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/usb/dwc2/core_intr.c", i32 539, i32 6}
!162 = !{ptr @dwc2_handle_usb_suspend_intr._entry, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @dwc2_handle_usb_suspend_intr._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.75, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/usb/dwc2/core_intr.c", i32 551, i32 6}
!166 = !{ptr @dwc2_handle_usb_suspend_intr._entry.74, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @dwc2_handle_usb_suspend_intr._entry_ptr.76, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.77, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/dwc2/core_intr.c", i32 574, i32 4}
!170 = !{ptr @dwc2_handle_usb_suspend_intr.__UNIQUE_ID_ddebug315, !169, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!171 = !{ptr @.str.78, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/usb/dwc2/core_intr.c", i32 608, i32 3}
!173 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @dwc2_handle_lpm_intr._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @dwc2_handle_lpm_intr._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/usb/dwc2/core_intr.c", i32 619, i32 3}
!178 = !{ptr @dwc2_handle_lpm_intr.__UNIQUE_ID_ddebug316, !177, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!179 = !{ptr @.str.81, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/usb/dwc2/core_intr.c", i32 622, i32 4}
!181 = !{ptr @dwc2_handle_lpm_intr.__UNIQUE_ID_ddebug317, !180, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!182 = !{ptr @.str.82, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/dwc2/core_intr.c", i32 624, i32 4}
!184 = !{ptr @dwc2_handle_lpm_intr.__UNIQUE_ID_ddebug318, !183, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!185 = !{ptr @.str.83, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/usb/dwc2/core_intr.c", i32 626, i32 4}
!187 = !{ptr @dwc2_handle_lpm_intr.__UNIQUE_ID_ddebug319, !186, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!188 = !{ptr @.str.84, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/usb/dwc2/core_intr.c", i32 642, i32 4}
!190 = !{ptr @dwc2_handle_lpm_intr.__UNIQUE_ID_ddebug320, !189, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!191 = !{i32 1, !"wchar_size", i32 2}
!192 = !{i32 1, !"min_enum_size", i32 4}
!193 = !{i32 8, !"branch-target-enforcement", i32 0}
!194 = !{i32 8, !"sign-return-address", i32 0}
!195 = !{i32 8, !"sign-return-address-all", i32 0}
!196 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!197 = !{i32 7, !"uwtable", i32 1}
!198 = !{i32 7, !"frame-pointer", i32 2}
!199 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!200 = !{i64 4639638}
!201 = !{i64 2155945234}
!202 = !{i8 0, i8 2}
!203 = !{i64 2148714843, i64 2148714848, i64 2148714861, i64 2148714905, i64 2148714939, i64 2148714960}
!204 = !{i64 4639220}
