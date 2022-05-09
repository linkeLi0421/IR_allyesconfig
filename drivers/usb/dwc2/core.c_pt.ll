; ModuleID = '/llk/IR_all_yes/drivers/usb/dwc2/core.c_pt.bc'
source_filename = "../drivers/usb/dwc2/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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

@dwc2_backup_global_registers.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 17, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dwc2\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dwc2_backup_global_registers\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/usb/dwc2/core.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@dwc2_restore_global_registers.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.3, i8 0, i8 25, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dwc2_restore_global_registers\00", [34 x i8] zeroinitializer }, align 32
@dwc2_restore_global_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.4, ptr @.str.2, i32 109, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: no global registers to restore\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dwc2_restore_global_registers._entry_ptr = internal global ptr @dwc2_restore_global_registers._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dwc2_hib_restore_common.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 74, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dwc2_hib_restore_common\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Restore Done wasn't generated here\0A\00", [56 x i8] zeroinitializer }, align 32
@dwc2_hib_restore_common.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 75, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"restore done  generated here\0A\00", [34 x i8] zeroinitializer }, align 32
@dwc2_core_reset.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 107, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dwc2_core_reset\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@dwc2_core_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 460, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: HANG! Soft Reset timeout GRSTCTL_CSFTRST\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dwc2_core_reset._entry_ptr = internal global ptr @dwc2_core_reset._entry, section ".printk_index", align 4
@dwc2_core_reset._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 467, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: HANG! Soft Reset timeout GRSTCTL_CSFTRST_DONE\0A\00", [45 x i8] zeroinitializer }, align 32
@dwc2_core_reset._entry_ptr.17 = internal global ptr @dwc2_core_reset._entry.15, section ".printk_index", align 4
@dwc2_core_reset._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.2, i32 495, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: HANG! AHB Idle timeout GRSTCTL GRSTCTL_AHBIDLE\0A\00", [44 x i8] zeroinitializer }, align 32
@dwc2_core_reset._entry_ptr.20 = internal global ptr @dwc2_core_reset._entry.18, section ".printk_index", align 4
@dwc2_force_mode.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 -122, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dwc2_force_mode\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Forcing mode to %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@dwc2_force_dr_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 621, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s() Invalid dr_mode=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dwc2_force_dr_mode\00", [45 x i8] zeroinitializer }, align 32
@dwc2_force_dr_mode._entry_ptr = internal global ptr @dwc2_force_dr_mode._entry, section ".printk_index", align 4
@dwc2_enable_acg.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 -98, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dwc2_enable_acg\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Enabling Active Clock Gating\0A\00", [34 x i8] zeroinitializer }, align 32
@dwc2_dump_host_registers.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 -93, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dwc2_dump_host_registers\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Host Global Registers\0A\00", [41 x i8] zeroinitializer }, align 32
@dwc2_dump_host_registers.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.31, i8 0, i8 -92, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HCFG\09 @0x%08lX : 0x%08X\0A\00", [39 x i8] zeroinitializer }, align 32
@dwc2_dump_host_registers.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.32, i8 0, i8 -91, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HFIR\09 @0x%08lX : 0x%08X\0A\00", [39 x i8] zeroinitializer }, align 32
@dwc2_dump_host_registers.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.33, i8 0, i8 -91, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HFNUM\09 @0x%08lX : 0x%08X\0A\00", [38 x i8] zeroinitializer }, align 32
@dwc2_dump_host_registers.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.34, i8 0, i8 -90, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HPTXSTS\09 @0x%08lX : 0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@dwc2_dump_host_registers.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.35, i8 0, i8 -89, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HAINT\09 @0x%08lX : 0x%08X\0A\00", [38 x i8] zeroinitializer }, align 32
@dwc2_dump_host_registers.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.36, i8 0, i8 -88, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HAINTMSK\09 @0x%08lX : 0x%08X\0A\00", [35 x i8] zeroinitializer }, align 32
@dwc2_dump_host_registers.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.37, i8 0, i8 -87, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HFLBADDR @0x%08lX : 0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@dwc2_dump_host_registers.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.38, i8 0, i8 -86, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HPRT0\09 @0x%08lX : 0x%08X\0A\00", [38 x i8] zeroinitializer }, align 32
@dwc2_dump_host_registers.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.39, i8 0, i8 -85, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Host Channel %d Specific Registers\0A\00", [60 x i8] zeroinitializer }, align 32
@dwc2_dump_host_registers.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.40, i8 0, i8 -85, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HCCHAR\09 @0x%08lX : 0x%08X\0A\00", [37 x i8] zeroinitializer }, align 32
@dwc2_dump_host_registers.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.41, i8 0, i8 -84, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HCSPLT\09 @0x%08lX : 0x%08X\0A\00", [37 x i8] zeroinitializer }, align 32
@dwc2_dump_host_registers.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.42, i8 0, i8 -83, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HCINT\09 @0x%08lX : 0x%08X\0A\00", [38 x i8] zeroinitializer }, align 32
@dwc2_dump_host_registers.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.43, i8 0, i8 -82, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HCINTMSK\09 @0x%08lX : 0x%08X\0A\00", [35 x i8] zeroinitializer }, align 32
@dwc2_dump_host_registers.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.44, i8 0, i8 -82, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HCTSIZ\09 @0x%08lX : 0x%08X\0A\00", [37 x i8] zeroinitializer }, align 32
@dwc2_dump_host_registers.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.45, i8 0, i8 -81, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HCDMA\09 @0x%08lX : 0x%08X\0A\00", [38 x i8] zeroinitializer }, align 32
@dwc2_dump_host_registers.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.46, i8 0, i8 -80, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HCDMAB\09 @0x%08lX : 0x%08X\0A\00", [37 x i8] zeroinitializer }, align 32
@dwc2_dump_global_registers.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 -75, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dwc2_dump_global_registers\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Core Global Registers\0A\00", [41 x i8] zeroinitializer }, align 32
@dwc2_dump_global_registers.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.49, i8 0, i8 -74, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GOTGCTL\09 @0x%08lX : 0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@dwc2_dump_global_registers.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.50, i8 0, i8 -73, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GOTGINT\09 @0x%08lX : 0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@dwc2_dump_global_registers.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.51, i8 0, i8 -73, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GAHBCFG\09 @0x%08lX : 0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@dwc2_dump_global_registers.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.52, i8 0, i8 -72, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GUSBCFG\09 @0x%08lX : 0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@dwc2_dump_global_registers.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.53, i8 0, i8 -71, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GRSTCTL\09 @0x%08lX : 0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@dwc2_dump_global_registers.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.54, i8 0, i8 -70, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GINTSTS\09 @0x%08lX : 0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@dwc2_dump_global_registers.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.55, i8 0, i8 -70, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GINTMSK\09 @0x%08lX : 0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@dwc2_dump_global_registers.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.56, i8 0, i8 -69, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GRXSTSR\09 @0x%08lX : 0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@dwc2_dump_global_registers.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.57, i8 0, i8 -68, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GRXFSIZ\09 @0x%08lX : 0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@dwc2_dump_global_registers.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.58, i8 0, i8 -67, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"GNPTXFSIZ\09 @0x%08lX : 0x%08X\0A\00", [34 x i8] zeroinitializer }, align 32
@dwc2_dump_global_registers.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.59, i8 0, i8 -67, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"GNPTXSTS\09 @0x%08lX : 0x%08X\0A\00", [35 x i8] zeroinitializer }, align 32
@dwc2_dump_global_registers.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.60, i8 0, i8 -66, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GI2CCTL\09 @0x%08lX : 0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@dwc2_dump_global_registers.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.61, i8 0, i8 -65, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"GPVNDCTL\09 @0x%08lX : 0x%08X\0A\00", [35 x i8] zeroinitializer }, align 32
@dwc2_dump_global_registers.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.62, i8 0, i8 -64, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"GGPIO\09 @0x%08lX : 0x%08X\0A\00", [38 x i8] zeroinitializer }, align 32
@dwc2_dump_global_registers.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.63, i8 0, i8 -64, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"GUID\09 @0x%08lX : 0x%08X\0A\00", [39 x i8] zeroinitializer }, align 32
@dwc2_dump_global_registers.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.64, i8 0, i8 -63, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GSNPSID\09 @0x%08lX : 0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@dwc2_dump_global_registers.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.65, i8 0, i8 -62, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GHWCFG1\09 @0x%08lX : 0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@dwc2_dump_global_registers.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.66, i8 0, i8 -61, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GHWCFG2\09 @0x%08lX : 0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@dwc2_dump_global_registers.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.67, i8 0, i8 -61, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GHWCFG3\09 @0x%08lX : 0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@dwc2_dump_global_registers.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.68, i8 0, i8 -60, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GHWCFG4\09 @0x%08lX : 0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@dwc2_dump_global_registers.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.69, i8 0, i8 -59, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GLPMCFG\09 @0x%08lX : 0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@dwc2_dump_global_registers.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.70, i8 0, i8 -58, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"GPWRDN\09 @0x%08lX : 0x%08X\0A\00", [37 x i8] zeroinitializer }, align 32
@dwc2_dump_global_registers.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.71, i8 0, i8 -58, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"GDFIFOCFG\09 @0x%08lX : 0x%08X\0A\00", [34 x i8] zeroinitializer }, align 32
@dwc2_dump_global_registers.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.72, i8 0, i8 -57, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HPTXFSIZ\09 @0x%08lX : 0x%08X\0A\00", [35 x i8] zeroinitializer }, align 32
@dwc2_dump_global_registers.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.73, i8 0, i8 -56, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PCGCTL\09 @0x%08lX : 0x%08X\0A\00", [37 x i8] zeroinitializer }, align 32
@dwc2_flush_tx_fifo.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.75, i8 0, i8 -52, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dwc2_flush_tx_fifo\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Flush Tx FIFO %d\0A\00", [46 x i8] zeroinitializer }, align 32
@dwc2_flush_tx_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.2, i32 821, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:  HANG! AHB Idle GRSCTL\0A\00", [36 x i8] zeroinitializer }, align 32
@dwc2_flush_tx_fifo._entry_ptr = internal global ptr @dwc2_flush_tx_fifo._entry, section ".printk_index", align 4
@dwc2_flush_tx_fifo._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.74, ptr @.str.2, i32 829, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:  HANG! timeout GRSTCTL GRSTCTL_TXFFLSH\0A\00", [52 x i8] zeroinitializer }, align 32
@dwc2_flush_tx_fifo._entry_ptr.79 = internal global ptr @dwc2_flush_tx_fifo._entry.77, section ".printk_index", align 4
@dwc2_flush_rx_fifo.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.2, ptr @.str.12, i8 0, i8 -45, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dwc2_flush_rx_fifo\00", [45 x i8] zeroinitializer }, align 32
@dwc2_flush_rx_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.80, ptr @.str.2, i32 849, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@dwc2_flush_rx_fifo._entry_ptr = internal global ptr @dwc2_flush_rx_fifo._entry, section ".printk_index", align 4
@dwc2_flush_rx_fifo._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.2, i32 857, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: HANG! timeout GRSTCTL GRSTCTL_RXFFLSH\0A\00", [53 x i8] zeroinitializer }, align 32
@dwc2_flush_rx_fifo._entry_ptr.83 = internal global ptr @dwc2_flush_rx_fifo._entry.81, section ".printk_index", align 4
@dwc2_init_fs_ls_pclk_sel.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.85, i8 0, i8 -6, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dwc2_init_fs_ls_pclk_sel\00", [39 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Initializing HCFG.FSLSPClkSel to %08x\0A\00", [57 x i8] zeroinitializer }, align 32
@dwc2_phy_init.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.2, ptr @.str.87, i8 1, i8 38, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dwc2_phy_init\00", [18 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Setting ULPI FSLS\0A\00", [45 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_description358 = internal constant [40 x i8] c"dwc2.description=DESIGNWARE HS OTG Core\00", section ".modinfo", align 1
@__UNIQUE_ID_author359 = internal constant [27 x i8] c"dwc2.author=Synopsys, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file360 = internal constant [32 x i8] c"dwc2.file=drivers/usb/dwc2/dwc2\00", section ".modinfo", align 1
@__UNIQUE_ID_license361 = internal constant [26 x i8] c"dwc2.license=Dual BSD/GPL\00", section ".modinfo", align 1
@dwc2_restore_essential_regs.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.2, ptr @.str.89, i8 0, i8 47, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dwc2_restore_essential_regs\00", [36 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: restoring essential regs\0A\00", [34 x i8] zeroinitializer }, align 32
@dwc2_wait_for_mode.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.91, i8 0, i8 81, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dwc2_wait_for_mode\00", [45 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Waiting for %s mode\0A\00", [43 x i8] zeroinitializer }, align 32
@dwc2_wait_for_mode.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.92, i8 0, i8 83, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s mode set\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Host\00", [27 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Device\00", [25 x i8] zeroinitializer }, align 32
@dwc2_wait_for_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.90, ptr @.str.2, i32 342, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Couldn't set %s mode\0A\00", [38 x i8] zeroinitializer }, align 32
@dwc2_wait_for_mode._entry_ptr = internal global ptr @dwc2_wait_for_mode._entry, section ".printk_index", align 4
@dwc2_clear_force_mode.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.96, ptr @.str.2, ptr @.str.97, i8 0, i8 -110, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dwc2_clear_force_mode\00", [42 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Clearing force mode bits\0A\00", [38 x i8] zeroinitializer }, align 32
@dwc2_fs_phy_init.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.98, ptr @.str.2, ptr @.str.99, i8 0, i8 -2, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dwc2_fs_phy_init\00", [47 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FS PHY selected\0A\00", [47 x i8] zeroinitializer }, align 32
@dwc2_fs_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.2, i32 1030, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Reset failed, aborting\00", [37 x i8] zeroinitializer }, align 32
@dwc2_fs_phy_init._entry_ptr = internal global ptr @dwc2_fs_phy_init._entry, section ".printk_index", align 4
@dwc2_fs_phy_init.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.98, ptr @.str.2, ptr @.str.101, i8 1, i8 3, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Activating transceiver\0A\00", [40 x i8] zeroinitializer }, align 32
@dwc2_fs_phy_init.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.98, ptr @.str.2, ptr @.str.102, i8 1, i8 8, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FS PHY enabling I2C\0A\00", [43 x i8] zeroinitializer }, align 32
@dwc2_hs_phy_init.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.104, i8 1, i8 18, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dwc2_hs_phy_init\00", [47 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HS ULPI PHY selected\0A\00", [42 x i8] zeroinitializer }, align 32
@dwc2_hs_phy_init.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.105, i8 1, i8 21, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HS UTMI+ PHY selected\0A\00", [41 x i8] zeroinitializer }, align 32
@dwc2_hs_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.103, ptr @.str.2, i32 1116, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"FS PHY selected at HS!\0A\00", [40 x i8] zeroinitializer }, align 32
@dwc2_hs_phy_init._entry_ptr = internal global ptr @dwc2_hs_phy_init._entry, section ".printk_index", align 4
@dwc2_hs_phy_init._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.103, ptr @.str.2, i32 1127, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@dwc2_hs_phy_init._entry_ptr.108 = internal global ptr @dwc2_hs_phy_init._entry.107, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 71, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 103, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 108, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 297, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 301, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 428, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 459, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 466, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 494, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 538, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 620, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 634, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 654, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 656, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 659, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 662, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 665, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 668, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 671, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 675, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 680, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 684, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 686, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 689, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 692, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 695, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 698, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 701, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 705, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 726, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 728, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 731, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 734, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 737, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 740, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 743, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 746, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 749, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 752, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 755, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 758, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 761, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 764, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 767, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 770, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 773, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 776, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 779, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 782, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 785, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 788, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 791, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 794, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 797, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 801, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 816, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 820, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 828, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 844, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 848, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 856, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1001, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1178, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 188, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 323, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 332, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 341, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 587, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1018, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1029, i32 5 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1038, i32 5 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1058, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1097, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1110, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1116, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.444 = private constant [27 x i8] c"../drivers/usb/dwc2/core.c\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1126, i32 4 }
@llvm.compiler.used = appending global [129 x ptr] [ptr @__UNIQUE_ID_author359, ptr @__UNIQUE_ID_description358, ptr @__UNIQUE_ID_file360, ptr @__UNIQUE_ID_license361, ptr @dwc2_core_reset._entry, ptr @dwc2_core_reset._entry.15, ptr @dwc2_core_reset._entry.18, ptr @dwc2_core_reset._entry_ptr, ptr @dwc2_core_reset._entry_ptr.17, ptr @dwc2_core_reset._entry_ptr.20, ptr @dwc2_flush_rx_fifo._entry, ptr @dwc2_flush_rx_fifo._entry.81, ptr @dwc2_flush_rx_fifo._entry_ptr, ptr @dwc2_flush_rx_fifo._entry_ptr.83, ptr @dwc2_flush_tx_fifo._entry, ptr @dwc2_flush_tx_fifo._entry.77, ptr @dwc2_flush_tx_fifo._entry_ptr, ptr @dwc2_flush_tx_fifo._entry_ptr.79, ptr @dwc2_force_dr_mode._entry, ptr @dwc2_force_dr_mode._entry_ptr, ptr @dwc2_fs_phy_init._entry, ptr @dwc2_fs_phy_init._entry_ptr, ptr @dwc2_hs_phy_init._entry, ptr @dwc2_hs_phy_init._entry.107, ptr @dwc2_hs_phy_init._entry_ptr, ptr @dwc2_hs_phy_init._entry_ptr.108, ptr @dwc2_restore_global_registers._entry, ptr @dwc2_restore_global_registers._entry_ptr, ptr @dwc2_wait_for_mode._entry, ptr @dwc2_wait_for_mode._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106], section "llvm.metadata"
@0 = internal global [112 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_restore_global_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_core_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_core_reset._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_core_reset._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_force_dr_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_flush_tx_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_flush_tx_fifo._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_flush_rx_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_flush_rx_fifo._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_wait_for_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_fs_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_hs_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_hs_phy_init._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc2_backup_global_registers(ptr noundef %hsotg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_backup_global_registers.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_backup_global_registers, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_backup_global_registers.__UNIQUE_ID_ddebug295, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %gr_backup = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %5 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %7 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  %retval.0.i38 = select i1 %tobool.not.i, i32 %7, i32 %4
  %8 = ptrtoint ptr %gr_backup to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %retval.0.i38, ptr %gr_backup, align 4
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 24
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %12 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i41 = icmp eq i8 %13, 0
  %14 = tail call i32 @llvm.bswap.i32(i32 %11) #4
  %retval.0.i42 = select i1 %tobool.not.i41, i32 %14, i32 %11
  %gintmsk = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29, i32 1
  %15 = ptrtoint ptr %gintmsk to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i42, ptr %gintmsk, align 4
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %19 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i46 = icmp eq i8 %20, 0
  %21 = tail call i32 @llvm.bswap.i32(i32 %18) #4
  %retval.0.i47 = select i1 %tobool.not.i46, i32 %21, i32 %18
  %gahbcfg = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29, i32 2
  %22 = ptrtoint ptr %gahbcfg to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i47, ptr %gahbcfg, align 4
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %24, i32 12
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %26 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i51 = icmp eq i8 %27, 0
  %28 = tail call i32 @llvm.bswap.i32(i32 %25) #4
  %retval.0.i52 = select i1 %tobool.not.i51, i32 %28, i32 %25
  %gusbcfg = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29, i32 3
  %29 = ptrtoint ptr %gusbcfg to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i52, ptr %gusbcfg, align 4
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %31, i32 36
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %33 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i56 = icmp eq i8 %34, 0
  %35 = tail call i32 @llvm.bswap.i32(i32 %32) #4
  %retval.0.i57 = select i1 %tobool.not.i56, i32 %35, i32 %32
  %grxfsiz = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29, i32 4
  %36 = ptrtoint ptr %grxfsiz to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.0.i57, ptr %grxfsiz, align 4
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %38, i32 40
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %40 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i61 = icmp eq i8 %41, 0
  %42 = tail call i32 @llvm.bswap.i32(i32 %39) #4
  %retval.0.i62 = select i1 %tobool.not.i61, i32 %42, i32 %39
  %gnptxfsiz = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29, i32 5
  %43 = ptrtoint ptr %gnptxfsiz to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %retval.0.i62, ptr %gnptxfsiz, align 4
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %45, i32 92
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %47 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i66 = icmp eq i8 %48, 0
  %49 = tail call i32 @llvm.bswap.i32(i32 %46) #4
  %retval.0.i67 = select i1 %tobool.not.i66, i32 %49, i32 %46
  %gdfifocfg = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29, i32 10
  %50 = ptrtoint ptr %gdfifocfg to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %retval.0.i67, ptr %gdfifocfg, align 4
  %51 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %52, i32 3588
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %54 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i71 = icmp eq i8 %55, 0
  %56 = tail call i32 @llvm.bswap.i32(i32 %53) #4
  %retval.0.i72 = select i1 %tobool.not.i71, i32 %56, i32 %53
  %pcgcctl1 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29, i32 9
  %57 = ptrtoint ptr %pcgcctl1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %retval.0.i72, ptr %pcgcctl1, align 4
  %58 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %59, i32 84
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %61 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i76 = icmp eq i8 %62, 0
  %63 = tail call i32 @llvm.bswap.i32(i32 %60) #4
  %retval.0.i77 = select i1 %tobool.not.i76, i32 %63, i32 %60
  %glpmcfg = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29, i32 7
  %64 = ptrtoint ptr %glpmcfg to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %retval.0.i77, ptr %glpmcfg, align 4
  %65 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %66, i32 48
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %68 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i81 = icmp eq i8 %69, 0
  %70 = tail call i32 @llvm.bswap.i32(i32 %67) #4
  %retval.0.i82 = select i1 %tobool.not.i81, i32 %70, i32 %67
  %gi2cctl = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29, i32 6
  %71 = ptrtoint ptr %gi2cctl to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %retval.0.i82, ptr %gi2cctl, align 4
  %72 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i, align 4
  %add.ptr.i84 = getelementptr i8, ptr %73, i32 3584
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %75 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i86 = icmp eq i8 %76, 0
  %77 = tail call i32 @llvm.bswap.i32(i32 %74) #4
  %retval.0.i87 = select i1 %tobool.not.i86, i32 %77, i32 %74
  %pcgcctl = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29, i32 8
  %78 = ptrtoint ptr %pcgcctl to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %retval.0.i87, ptr %pcgcctl, align 4
  %valid = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29, i32 12
  %79 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %valid, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc2_restore_global_registers(ptr noundef %hsotg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_restore_global_registers.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_restore_global_registers, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_restore_global_registers.__UNIQUE_ID_ddebug296, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %valid = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29, i32 12
  %2 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %valid, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %do.end8, label %if.end10

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #7
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %gr_backup = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29
  %6 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %valid, align 4
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %regs3.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %7 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %8, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 -1) #4
  %9 = ptrtoint ptr %gr_backup to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gr_backup, align 4
  %11 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i39 = icmp eq i8 %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i39, label %do.body1.i43, label %do.body.i41

do.body.i41:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %regs.i40 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %13 = ptrtoint ptr %regs.i40 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i40, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %10) #4, !srcloc !284
  br label %dwc2_writel.exit44

do.body1.i43:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %15 = tail call i32 @llvm.bswap.i32(i32 %10) #4
  %regs3.i42 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %16 = ptrtoint ptr %regs3.i42 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs3.i42, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #4, !srcloc !284
  br label %dwc2_writel.exit44

dwc2_writel.exit44:                               ; preds = %do.body1.i43, %do.body.i41
  %gintmsk = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29, i32 1
  %18 = ptrtoint ptr %gintmsk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gintmsk, align 4
  %20 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i46 = icmp eq i8 %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i46, label %do.body1.i52, label %do.body.i49

do.body.i49:                                      ; preds = %dwc2_writel.exit44
  call void @__sanitizer_cov_trace_pc() #6
  %regs.i47 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %22 = ptrtoint ptr %regs.i47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i47, align 4
  %add.ptr.i48 = getelementptr i8, ptr %23, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %19) #4, !srcloc !284
  br label %dwc2_writel.exit53

do.body1.i52:                                     ; preds = %dwc2_writel.exit44
  call void @__sanitizer_cov_trace_pc() #6
  %24 = tail call i32 @llvm.bswap.i32(i32 %19) #4
  %regs3.i50 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %25 = ptrtoint ptr %regs3.i50 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs3.i50, align 4
  %add.ptr4.i51 = getelementptr i8, ptr %26, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i51, i32 %24) #4, !srcloc !284
  br label %dwc2_writel.exit53

dwc2_writel.exit53:                               ; preds = %do.body1.i52, %do.body.i49
  %gusbcfg = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29, i32 3
  %27 = ptrtoint ptr %gusbcfg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gusbcfg, align 4
  %29 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i55 = icmp eq i8 %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i55, label %do.body1.i61, label %do.body.i58

do.body.i58:                                      ; preds = %dwc2_writel.exit53
  call void @__sanitizer_cov_trace_pc() #6
  %regs.i56 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %31 = ptrtoint ptr %regs.i56 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i56, align 4
  %add.ptr.i57 = getelementptr i8, ptr %32, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %28) #4, !srcloc !284
  br label %dwc2_writel.exit62

do.body1.i61:                                     ; preds = %dwc2_writel.exit53
  call void @__sanitizer_cov_trace_pc() #6
  %33 = tail call i32 @llvm.bswap.i32(i32 %28) #4
  %regs3.i59 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %34 = ptrtoint ptr %regs3.i59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs3.i59, align 4
  %add.ptr4.i60 = getelementptr i8, ptr %35, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i60, i32 %33) #4, !srcloc !284
  br label %dwc2_writel.exit62

dwc2_writel.exit62:                               ; preds = %do.body1.i61, %do.body.i58
  %gahbcfg = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29, i32 2
  %36 = ptrtoint ptr %gahbcfg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %gahbcfg, align 4
  %38 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i64 = icmp eq i8 %39, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i64, label %do.body1.i70, label %do.body.i67

do.body.i67:                                      ; preds = %dwc2_writel.exit62
  call void @__sanitizer_cov_trace_pc() #6
  %regs.i65 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %40 = ptrtoint ptr %regs.i65 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i65, align 4
  %add.ptr.i66 = getelementptr i8, ptr %41, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 %37) #4, !srcloc !284
  br label %dwc2_writel.exit71

do.body1.i70:                                     ; preds = %dwc2_writel.exit62
  call void @__sanitizer_cov_trace_pc() #6
  %42 = tail call i32 @llvm.bswap.i32(i32 %37) #4
  %regs3.i68 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %43 = ptrtoint ptr %regs3.i68 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs3.i68, align 4
  %add.ptr4.i69 = getelementptr i8, ptr %44, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i69, i32 %42) #4, !srcloc !284
  br label %dwc2_writel.exit71

dwc2_writel.exit71:                               ; preds = %do.body1.i70, %do.body.i67
  %grxfsiz = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29, i32 4
  %45 = ptrtoint ptr %grxfsiz to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %grxfsiz, align 4
  %47 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i73 = icmp eq i8 %48, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i73, label %do.body1.i79, label %do.body.i76

do.body.i76:                                      ; preds = %dwc2_writel.exit71
  call void @__sanitizer_cov_trace_pc() #6
  %regs.i74 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %49 = ptrtoint ptr %regs.i74 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i74, align 4
  %add.ptr.i75 = getelementptr i8, ptr %50, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75, i32 %46) #4, !srcloc !284
  br label %dwc2_writel.exit80

do.body1.i79:                                     ; preds = %dwc2_writel.exit71
  call void @__sanitizer_cov_trace_pc() #6
  %51 = tail call i32 @llvm.bswap.i32(i32 %46) #4
  %regs3.i77 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %52 = ptrtoint ptr %regs3.i77 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs3.i77, align 4
  %add.ptr4.i78 = getelementptr i8, ptr %53, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i78, i32 %51) #4, !srcloc !284
  br label %dwc2_writel.exit80

dwc2_writel.exit80:                               ; preds = %do.body1.i79, %do.body.i76
  %gnptxfsiz = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29, i32 5
  %54 = ptrtoint ptr %gnptxfsiz to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %gnptxfsiz, align 4
  %56 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i82 = icmp eq i8 %57, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i82, label %do.body1.i88, label %do.body.i85

do.body.i85:                                      ; preds = %dwc2_writel.exit80
  call void @__sanitizer_cov_trace_pc() #6
  %regs.i83 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %58 = ptrtoint ptr %regs.i83 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i83, align 4
  %add.ptr.i84 = getelementptr i8, ptr %59, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 %55) #4, !srcloc !284
  br label %dwc2_writel.exit89

do.body1.i88:                                     ; preds = %dwc2_writel.exit80
  call void @__sanitizer_cov_trace_pc() #6
  %60 = tail call i32 @llvm.bswap.i32(i32 %55) #4
  %regs3.i86 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %61 = ptrtoint ptr %regs3.i86 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs3.i86, align 4
  %add.ptr4.i87 = getelementptr i8, ptr %62, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i87, i32 %60) #4, !srcloc !284
  br label %dwc2_writel.exit89

dwc2_writel.exit89:                               ; preds = %do.body1.i88, %do.body.i85
  %gdfifocfg = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29, i32 10
  %63 = ptrtoint ptr %gdfifocfg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %gdfifocfg, align 4
  %65 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i91 = icmp eq i8 %66, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i91, label %do.body1.i97, label %do.body.i94

do.body.i94:                                      ; preds = %dwc2_writel.exit89
  call void @__sanitizer_cov_trace_pc() #6
  %regs.i92 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %67 = ptrtoint ptr %regs.i92 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i92, align 4
  %add.ptr.i93 = getelementptr i8, ptr %68, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 %64) #4, !srcloc !284
  br label %dwc2_writel.exit98

do.body1.i97:                                     ; preds = %dwc2_writel.exit89
  call void @__sanitizer_cov_trace_pc() #6
  %69 = tail call i32 @llvm.bswap.i32(i32 %64) #4
  %regs3.i95 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %70 = ptrtoint ptr %regs3.i95 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs3.i95, align 4
  %add.ptr4.i96 = getelementptr i8, ptr %71, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i96, i32 %69) #4, !srcloc !284
  br label %dwc2_writel.exit98

dwc2_writel.exit98:                               ; preds = %do.body1.i97, %do.body.i94
  %pcgcctl1 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29, i32 9
  %72 = ptrtoint ptr %pcgcctl1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pcgcctl1, align 4
  %74 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i100 = icmp eq i8 %75, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i100, label %do.body1.i106, label %do.body.i103

do.body.i103:                                     ; preds = %dwc2_writel.exit98
  call void @__sanitizer_cov_trace_pc() #6
  %regs.i101 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %76 = ptrtoint ptr %regs.i101 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i101, align 4
  %add.ptr.i102 = getelementptr i8, ptr %77, i32 3588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 %73) #4, !srcloc !284
  br label %dwc2_writel.exit107

do.body1.i106:                                    ; preds = %dwc2_writel.exit98
  call void @__sanitizer_cov_trace_pc() #6
  %78 = tail call i32 @llvm.bswap.i32(i32 %73) #4
  %regs3.i104 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %79 = ptrtoint ptr %regs3.i104 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs3.i104, align 4
  %add.ptr4.i105 = getelementptr i8, ptr %80, i32 3588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i105, i32 %78) #4, !srcloc !284
  br label %dwc2_writel.exit107

dwc2_writel.exit107:                              ; preds = %do.body1.i106, %do.body.i103
  %glpmcfg = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29, i32 7
  %81 = ptrtoint ptr %glpmcfg to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %glpmcfg, align 4
  %83 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i109 = icmp eq i8 %84, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i109, label %do.body1.i115, label %do.body.i112

do.body.i112:                                     ; preds = %dwc2_writel.exit107
  call void @__sanitizer_cov_trace_pc() #6
  %regs.i110 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %85 = ptrtoint ptr %regs.i110 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs.i110, align 4
  %add.ptr.i111 = getelementptr i8, ptr %86, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 %82) #4, !srcloc !284
  br label %dwc2_writel.exit116

do.body1.i115:                                    ; preds = %dwc2_writel.exit107
  call void @__sanitizer_cov_trace_pc() #6
  %87 = tail call i32 @llvm.bswap.i32(i32 %82) #4
  %regs3.i113 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %88 = ptrtoint ptr %regs3.i113 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs3.i113, align 4
  %add.ptr4.i114 = getelementptr i8, ptr %89, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i114, i32 %87) #4, !srcloc !284
  br label %dwc2_writel.exit116

dwc2_writel.exit116:                              ; preds = %do.body1.i115, %do.body.i112
  %pcgcctl = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29, i32 8
  %90 = ptrtoint ptr %pcgcctl to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pcgcctl, align 4
  %92 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i118 = icmp eq i8 %93, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i118, label %do.body1.i124, label %do.body.i121

do.body.i121:                                     ; preds = %dwc2_writel.exit116
  call void @__sanitizer_cov_trace_pc() #6
  %regs.i119 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %94 = ptrtoint ptr %regs.i119 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs.i119, align 4
  %add.ptr.i120 = getelementptr i8, ptr %95, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 %91) #4, !srcloc !284
  br label %dwc2_writel.exit125

do.body1.i124:                                    ; preds = %dwc2_writel.exit116
  call void @__sanitizer_cov_trace_pc() #6
  %96 = tail call i32 @llvm.bswap.i32(i32 %91) #4
  %regs3.i122 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %97 = ptrtoint ptr %regs3.i122 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs3.i122, align 4
  %add.ptr4.i123 = getelementptr i8, ptr %98, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i123, i32 %96) #4, !srcloc !284
  br label %dwc2_writel.exit125

dwc2_writel.exit125:                              ; preds = %do.body1.i124, %do.body.i121
  %gi2cctl = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29, i32 6
  %99 = ptrtoint ptr %gi2cctl to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %gi2cctl, align 4
  %101 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i127 = icmp eq i8 %102, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i127, label %do.body1.i133, label %do.body.i130

do.body.i130:                                     ; preds = %dwc2_writel.exit125
  call void @__sanitizer_cov_trace_pc() #6
  %regs.i128 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %103 = ptrtoint ptr %regs.i128 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs.i128, align 4
  %add.ptr.i129 = getelementptr i8, ptr %104, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129, i32 %100) #4, !srcloc !284
  br label %cleanup

do.body1.i133:                                    ; preds = %dwc2_writel.exit125
  call void @__sanitizer_cov_trace_pc() #6
  %105 = tail call i32 @llvm.bswap.i32(i32 %100) #4
  %regs3.i131 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %106 = ptrtoint ptr %regs3.i131 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs3.i131, align 4
  %add.ptr4.i132 = getelementptr i8, ptr %107, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i132, i32 %105) #4, !srcloc !284
  br label %cleanup

cleanup:                                          ; preds = %do.body1.i133, %do.body.i130, %do.end8
  %retval.0 = phi i32 [ -22, %do.end8 ], [ 0, %do.body.i130 ], [ 0, %do.body1.i133 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc2_exit_partial_power_down(ptr noundef %hsotg, i32 noundef %rem_wakeup, i1 noundef zeroext %restore) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %gr_backup = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29
  %0 = ptrtoint ptr %gr_backup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gr_backup, align 4
  %and = and i32 %1, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @dwc2_host_exit_partial_power_down(ptr noundef %hsotg, i32 noundef %rem_wakeup, i1 noundef zeroext %restore) #4
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 @dwc2_gadget_exit_partial_power_down(ptr noundef %hsotg, i1 noundef zeroext %restore) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_host_exit_partial_power_down(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_gadget_exit_partial_power_down(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc2_enter_partial_power_down(ptr noundef %hsotg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %3 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i = icmp eq i8 %4, 0
  %5 = lshr i32 %2, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %5, i32 %2
  %and.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 @dwc2_host_enter_partial_power_down(ptr noundef %hsotg) #4
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 @dwc2_gadget_enter_partial_power_down(ptr noundef %hsotg) #4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_host_enter_partial_power_down(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_gadget_enter_partial_power_down(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc2_hib_restore_common(ptr noundef %hsotg, i32 noundef %rem_wakeup, i32 noundef %is_host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 88
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %3 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %5 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  %retval.0.i73 = select i1 %tobool.not.i, i32 %5, i32 %2
  %and = and i32 %retval.0.i73, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i77 = getelementptr i8, ptr %7, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 %and) #4, !srcloc !284
  br label %dwc2_writel.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %and) #4
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %10, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %8) #4, !srcloc !284
  br label %dwc2_writel.exit

dwc2_writel.exit:                                 ; preds = %do.body1.i, %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #4
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %13, i32 88
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %15 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i81 = icmp eq i8 %16, 0
  %17 = tail call i32 @llvm.bswap.i32(i32 %14) #4
  %retval.0.i82 = select i1 %tobool.not.i81, i32 %17, i32 %14
  %and2 = and i32 %retval.0.i82, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i81, label %do.body1.i90, label %do.body.i87

do.body.i87:                                      ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %19, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 %and2) #4, !srcloc !284
  br label %dwc2_writel.exit91

do.body1.i90:                                     ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %and2) #4
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i89 = getelementptr i8, ptr %22, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i89, i32 %20) #4, !srcloc !284
  br label %dwc2_writel.exit91

dwc2_writel.exit91:                               ; preds = %do.body1.i90, %do.body.i87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 2147480) #4
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i93 = getelementptr i8, ptr %25, i32 88
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %27 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i95 = icmp eq i8 %28, 0
  %29 = tail call i32 @llvm.bswap.i32(i32 %26) #4
  %retval.0.i96 = select i1 %tobool.not.i95, i32 %29, i32 %26
  %or = or i32 %retval.0.i96, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i95, label %do.body1.i104, label %do.body.i101

do.body.i101:                                     ; preds = %dwc2_writel.exit91
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %add.ptr.i100 = getelementptr i8, ptr %31, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 %or) #4, !srcloc !284
  br label %dwc2_writel.exit105

do.body1.i104:                                    ; preds = %dwc2_writel.exit91
  call void @__sanitizer_cov_trace_pc() #6
  %32 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i103 = getelementptr i8, ptr %34, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i103, i32 %32) #4, !srcloc !284
  br label %dwc2_writel.exit105

dwc2_writel.exit105:                              ; preds = %do.body1.i104, %do.body.i101
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 2147480) #4
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %add.ptr.i107 = getelementptr i8, ptr %37, i32 88
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i107) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %39 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i109 = icmp eq i8 %40, 0
  %41 = tail call i32 @llvm.bswap.i32(i32 %38) #4
  %retval.0.i110 = select i1 %tobool.not.i109, i32 %41, i32 %38
  %and5 = and i32 %retval.0.i110, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i109, label %do.body1.i118, label %do.body.i115

do.body.i115:                                     ; preds = %dwc2_writel.exit105
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i, align 4
  %add.ptr.i114 = getelementptr i8, ptr %43, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 %and5) #4, !srcloc !284
  br label %dwc2_writel.exit119

do.body1.i118:                                    ; preds = %dwc2_writel.exit105
  call void @__sanitizer_cov_trace_pc() #6
  %44 = tail call i32 @llvm.bswap.i32(i32 %and5) #4
  %45 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i117 = getelementptr i8, ptr %46, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i117, i32 %44) #4, !srcloc !284
  br label %dwc2_writel.exit119

dwc2_writel.exit119:                              ; preds = %do.body1.i118, %do.body.i115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 10737400) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_host)
  %tobool.not = icmp ne i32 %is_host, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem_wakeup)
  %tobool6.not = icmp eq i32 %rem_wakeup, 0
  %or.cond = or i1 %tobool6.not, %tobool.not
  br i1 %or.cond, label %dwc2_writel.exit119.if.end_crit_edge, label %if.then

dwc2_writel.exit119.if.end_crit_edge:             ; preds = %dwc2_writel.exit119
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %dwc2_writel.exit119
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 15032360) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %dwc2_writel.exit119.if.end_crit_edge
  %49 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i, align 4
  %add.ptr.i121 = getelementptr i8, ptr %50, i32 88
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i121) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %52 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i123 = icmp eq i8 %53, 0
  %54 = tail call i32 @llvm.bswap.i32(i32 %51) #4
  %retval.0.i124 = select i1 %tobool.not.i123, i32 %54, i32 %51
  %or8 = or i32 %retval.0.i124, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i123, label %do.body1.i132, label %do.body.i129

do.body.i129:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %55 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i, align 4
  %add.ptr.i128 = getelementptr i8, ptr %56, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %or8) #4, !srcloc !284
  br label %dwc2_writel.exit133

do.body1.i132:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %57 = tail call i32 @llvm.bswap.i32(i32 %or8) #4
  %58 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i131 = getelementptr i8, ptr %59, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i131, i32 %57) #4, !srcloc !284
  br label %dwc2_writel.exit133

dwc2_writel.exit133:                              ; preds = %do.body1.i132, %do.body.i129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 2147480) #4
  %61 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i, align 4
  %add.ptr.i135 = getelementptr i8, ptr %62, i32 88
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i135) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %64 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i137 = icmp eq i8 %65, 0
  %66 = tail call i32 @llvm.bswap.i32(i32 %63) #4
  %retval.0.i138 = select i1 %tobool.not.i137, i32 %66, i32 %63
  %and10 = and i32 %retval.0.i138, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i137, label %do.body1.i146, label %do.body.i143

do.body.i143:                                     ; preds = %dwc2_writel.exit133
  call void @__sanitizer_cov_trace_pc() #6
  %67 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i, align 4
  %add.ptr.i142 = getelementptr i8, ptr %68, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 %and10) #4, !srcloc !284
  br label %dwc2_writel.exit147

do.body1.i146:                                    ; preds = %dwc2_writel.exit133
  call void @__sanitizer_cov_trace_pc() #6
  %69 = tail call i32 @llvm.bswap.i32(i32 %and10) #4
  %70 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i145 = getelementptr i8, ptr %71, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i145, i32 %69) #4, !srcloc !284
  br label %dwc2_writel.exit147

dwc2_writel.exit147:                              ; preds = %do.body1.i146, %do.body.i143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 2147480) #4
  tail call fastcc void @dwc2_restore_essential_regs(ptr noundef %hsotg, i32 noundef %rem_wakeup, i32 noundef %is_host)
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %dwc2_writel.exit147
  %i.03.i = phi i32 [ 0, %dwc2_writel.exit147 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %73 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %74, i32 20
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %76 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i.i = icmp eq i8 %77, 0
  %78 = shl i32 %75, 8
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %78, i32 %75
  %and.i = and i32 %retval.0.i.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i148 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i148, label %if.end.i, label %do.body21

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 214748) #4
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20000
  br i1 %exitcond.not.i, label %do.body, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

do.body:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hib_restore_common.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hib_restore_common, %if.end40)) #4
          to label %if.then19 [label %if.end40], !srcloc !280

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %80 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hib_restore_common.__UNIQUE_ID_ddebug298, ptr noundef %81, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8) #4
  br label %if.end40

do.body21:                                        ; preds = %for.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hib_restore_common.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hib_restore_common, %do.end39)) #4
          to label %if.then35 [label %do.end39], !srcloc !280

if.then35:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #6
  %82 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hib_restore_common.__UNIQUE_ID_ddebug299, ptr noundef %83, ptr noundef nonnull @.str.10) #4
  br label %do.end39

do.end39:                                         ; preds = %if.then35, %do.body21
  %84 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i151 = icmp eq i8 %85, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %86 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i156 = getelementptr i8, ptr %87, i32 20
  br i1 %tobool.not.i151, label %do.body1.i157, label %do.body.i154

do.body.i154:                                     ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i156, i32 65536) #4, !srcloc !284
  br label %if.end40

do.body1.i157:                                    ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i156, i32 256) #4, !srcloc !284
  br label %if.end40

if.end40:                                         ; preds = %do.body1.i157, %do.body.i154, %if.then19, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_restore_essential_regs(ptr noundef readonly %hsotg, i32 noundef %rmode, i32 noundef %is_host) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dr_backup = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 30
  %hr_backup = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_restore_essential_regs.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_restore_essential_regs, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_restore_essential_regs.__UNIQUE_ID_ddebug297, ptr noundef %1, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.88) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pcgcctl4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29, i32 8
  %2 = ptrtoint ptr %pcgcctl4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pcgcctl4, align 4
  %and = and i32 %3, -16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_host)
  %tobool5.not = icmp eq i32 %is_host, 0
  %. = select i1 %tobool5.not, i32 402653184, i32 1610612736
  %and11 = and i32 %3, %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %or14 = or i32 %and, 131072
  %spec.select62 = select i1 %tobool12.not, i32 %or14, i32 %and
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %4 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %spec.select62) #4, !srcloc !284
  br label %dwc2_writel.exit

do.body1.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %spec.select62) #4
  %regs3.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %9 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %10, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %8) #4, !srcloc !284
  br label %dwc2_writel.exit

dwc2_writel.exit:                                 ; preds = %do.body1.i, %do.body.i
  %gahbcfg = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29, i32 2
  %11 = ptrtoint ptr %gahbcfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gahbcfg, align 4
  %or17 = or i32 %12, 1
  %13 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i66 = icmp eq i8 %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i66, label %do.body1.i72, label %do.body.i69

do.body.i69:                                      ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #6
  %regs.i67 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %15 = ptrtoint ptr %regs.i67 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i67, align 4
  %add.ptr.i68 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %or17) #4, !srcloc !284
  br label %dwc2_writel.exit73

do.body1.i72:                                     ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #6
  %17 = tail call i32 @llvm.bswap.i32(i32 %or17) #4
  %regs3.i70 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %18 = ptrtoint ptr %regs3.i70 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs3.i70, align 4
  %add.ptr4.i71 = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i71, i32 %17) #4, !srcloc !284
  br label %dwc2_writel.exit73

dwc2_writel.exit73:                               ; preds = %do.body1.i72, %do.body.i69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %regs3.i79 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %20 = ptrtoint ptr %regs3.i79 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs3.i79, align 4
  %add.ptr4.i80 = getelementptr i8, ptr %21, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i80, i32 -1) #4
  %22 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i84 = icmp eq i8 %23, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %regs3.i88 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %24 = ptrtoint ptr %regs3.i88 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs3.i88, align 4
  %add.ptr4.i89 = getelementptr i8, ptr %25, i32 24
  br i1 %tobool.not.i84, label %do.body1.i90, label %do.body.i87

do.body.i87:                                      ; preds = %dwc2_writel.exit73
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i89, i32 65536) #4, !srcloc !284
  br label %dwc2_writel.exit91

do.body1.i90:                                     ; preds = %dwc2_writel.exit73
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i89, i32 256) #4, !srcloc !284
  br label %dwc2_writel.exit91

dwc2_writel.exit91:                               ; preds = %do.body1.i90, %do.body.i87
  %gusbcfg = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 29, i32 3
  %26 = ptrtoint ptr %gusbcfg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %gusbcfg, align 4
  %28 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i93 = icmp eq i8 %29, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i93, label %do.body1.i99, label %do.body.i96

do.body.i96:                                      ; preds = %dwc2_writel.exit91
  call void @__sanitizer_cov_trace_pc() #6
  %regs.i94 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %30 = ptrtoint ptr %regs.i94 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i94, align 4
  %add.ptr.i95 = getelementptr i8, ptr %31, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 %27) #4, !srcloc !284
  br label %dwc2_writel.exit100

do.body1.i99:                                     ; preds = %dwc2_writel.exit91
  call void @__sanitizer_cov_trace_pc() #6
  %32 = tail call i32 @llvm.bswap.i32(i32 %27) #4
  %regs3.i97 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %33 = ptrtoint ptr %regs3.i97 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs3.i97, align 4
  %add.ptr4.i98 = getelementptr i8, ptr %34, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i98, i32 %32) #4, !srcloc !284
  br label %dwc2_writel.exit100

dwc2_writel.exit100:                              ; preds = %do.body1.i99, %do.body.i96
  br i1 %tobool5.not, label %if.else25, label %if.then19

if.then19:                                        ; preds = %dwc2_writel.exit100
  %35 = ptrtoint ptr %hr_backup to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hr_backup, align 4
  %37 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i102 = icmp eq i8 %38, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i102, label %do.body1.i108, label %do.body.i105

do.body.i105:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  %regs.i103 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %39 = ptrtoint ptr %regs.i103 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i103, align 4
  %add.ptr.i104 = getelementptr i8, ptr %40, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 %36) #4, !srcloc !284
  br label %dwc2_writel.exit109

do.body1.i108:                                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  %41 = tail call i32 @llvm.bswap.i32(i32 %36) #4
  %regs3.i106 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %42 = ptrtoint ptr %regs3.i106 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs3.i106, align 4
  %add.ptr4.i107 = getelementptr i8, ptr %43, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i107, i32 %41) #4, !srcloc !284
  br label %dwc2_writel.exit109

dwc2_writel.exit109:                              ; preds = %do.body1.i108, %do.body.i105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rmode)
  %tobool20.not = icmp eq i32 %rmode, 0
  %or22 = or i32 %spec.select62, 512
  %spec.select63 = select i1 %tobool20.not, i32 %spec.select62, i32 %or22
  %44 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i111 = icmp eq i8 %45, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i111, label %do.body1.i117, label %do.body.i114

do.body.i114:                                     ; preds = %dwc2_writel.exit109
  call void @__sanitizer_cov_trace_pc() #6
  %regs.i112 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %46 = ptrtoint ptr %regs.i112 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i112, align 4
  %add.ptr.i113 = getelementptr i8, ptr %47, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 %spec.select63) #4, !srcloc !284
  br label %dwc2_writel.exit118

do.body1.i117:                                    ; preds = %dwc2_writel.exit109
  call void @__sanitizer_cov_trace_pc() #6
  %48 = tail call i32 @llvm.bswap.i32(i32 %spec.select63) #4
  %regs3.i115 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %49 = ptrtoint ptr %regs3.i115 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs3.i115, align 4
  %add.ptr4.i116 = getelementptr i8, ptr %50, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i116, i32 %48) #4, !srcloc !284
  br label %dwc2_writel.exit118

dwc2_writel.exit118:                              ; preds = %do.body1.i117, %do.body.i114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 2147480) #4
  %or24 = or i32 %spec.select63, 8192
  %52 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i120 = icmp eq i8 %53, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i120, label %do.body1.i126, label %do.body.i123

do.body.i123:                                     ; preds = %dwc2_writel.exit118
  call void @__sanitizer_cov_trace_pc() #6
  %regs.i121 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %54 = ptrtoint ptr %regs.i121 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i121, align 4
  %add.ptr.i122 = getelementptr i8, ptr %55, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 %or24) #4, !srcloc !284
  br label %if.end31

do.body1.i126:                                    ; preds = %dwc2_writel.exit118
  call void @__sanitizer_cov_trace_pc() #6
  %56 = tail call i32 @llvm.bswap.i32(i32 %or24) #4
  %regs3.i124 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %57 = ptrtoint ptr %regs3.i124 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs3.i124, align 4
  %add.ptr4.i125 = getelementptr i8, ptr %58, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i125, i32 %56) #4, !srcloc !284
  br label %if.end31

if.else25:                                        ; preds = %dwc2_writel.exit100
  %59 = ptrtoint ptr %dr_backup to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dr_backup, align 4
  %61 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i129 = icmp eq i8 %62, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i129, label %do.body1.i135, label %do.body.i132

do.body.i132:                                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #6
  %regs.i130 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %63 = ptrtoint ptr %regs.i130 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i130, align 4
  %add.ptr.i131 = getelementptr i8, ptr %64, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131, i32 %60) #4, !srcloc !284
  br label %dwc2_writel.exit136

do.body1.i135:                                    ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #6
  %65 = tail call i32 @llvm.bswap.i32(i32 %60) #4
  %regs3.i133 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %66 = ptrtoint ptr %regs3.i133 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs3.i133, align 4
  %add.ptr4.i134 = getelementptr i8, ptr %67, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i134, i32 %65) #4, !srcloc !284
  br label %dwc2_writel.exit136

dwc2_writel.exit136:                              ; preds = %do.body1.i135, %do.body.i132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rmode)
  %tobool26.not = icmp eq i32 %rmode, 0
  %or28 = or i32 %spec.select62, 520
  %spec.select64 = select i1 %tobool26.not, i32 %or28, i32 %spec.select62
  %68 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i138 = icmp eq i8 %69, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i138, label %do.body1.i144, label %do.body.i141

do.body.i141:                                     ; preds = %dwc2_writel.exit136
  call void @__sanitizer_cov_trace_pc() #6
  %regs.i139 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %70 = ptrtoint ptr %regs.i139 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i139, align 4
  %add.ptr.i140 = getelementptr i8, ptr %71, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 %spec.select64) #4, !srcloc !284
  br label %dwc2_writel.exit145

do.body1.i144:                                    ; preds = %dwc2_writel.exit136
  call void @__sanitizer_cov_trace_pc() #6
  %72 = tail call i32 @llvm.bswap.i32(i32 %spec.select64) #4
  %regs3.i142 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %73 = ptrtoint ptr %regs3.i142 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs3.i142, align 4
  %add.ptr4.i143 = getelementptr i8, ptr %74, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i143, i32 %72) #4, !srcloc !284
  br label %dwc2_writel.exit145

dwc2_writel.exit145:                              ; preds = %do.body1.i144, %do.body.i141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 2147480) #4
  %or30 = or i32 %spec.select64, 8192
  %76 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i147 = icmp eq i8 %77, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i147, label %do.body1.i153, label %do.body.i150

do.body.i150:                                     ; preds = %dwc2_writel.exit145
  call void @__sanitizer_cov_trace_pc() #6
  %regs.i148 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %78 = ptrtoint ptr %regs.i148 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i148, align 4
  %add.ptr.i149 = getelementptr i8, ptr %79, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149, i32 %or30) #4, !srcloc !284
  br label %if.end31

do.body1.i153:                                    ; preds = %dwc2_writel.exit145
  call void @__sanitizer_cov_trace_pc() #6
  %80 = tail call i32 @llvm.bswap.i32(i32 %or30) #4
  %regs3.i151 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %81 = ptrtoint ptr %regs3.i151 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs3.i151, align 4
  %add.ptr4.i152 = getelementptr i8, ptr %82, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i152, i32 %80) #4, !srcloc !284
  br label %if.end31

if.end31:                                         ; preds = %do.body1.i153, %do.body.i150, %do.body1.i126, %do.body.i123
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 2147480) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc2_hsotg_wait_bit_set(ptr nocapture noundef readonly %hsotg, i32 noundef %offset, i32 noundef %mask, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %cmp2.not = icmp eq i32 %timeout, 0
  br i1 %cmp2.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.03 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %3 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %5 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  %retval.0.i = select i1 %tobool.not.i, i32 %5, i32 %2
  %and = and i32 %retval.0.i, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #4
  %inc = add nuw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, %timeout
  br i1 %exitcond.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %entry.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc2_enter_hibernation(ptr noundef %hsotg, i32 noundef %is_host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_host)
  %tobool.not = icmp eq i32 %is_host, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @dwc2_host_enter_hibernation(ptr noundef %hsotg) #4
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 @dwc2_gadget_enter_hibernation(ptr noundef %hsotg) #4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_host_enter_hibernation(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_gadget_enter_hibernation(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc2_exit_hibernation(ptr noundef %hsotg, i32 noundef %rem_wakeup, i32 noundef %reset, i32 noundef %is_host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_host)
  %tobool.not = icmp eq i32 %is_host, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @dwc2_host_exit_hibernation(ptr noundef %hsotg, i32 noundef %rem_wakeup, i32 noundef %reset) #4
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 @dwc2_gadget_exit_hibernation(ptr noundef %hsotg, i32 noundef %rem_wakeup, i32 noundef %reset) #4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_host_exit_hibernation(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_gadget_exit_hibernation(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc2_core_reset(ptr noundef %hsotg, i1 noundef zeroext %skip_wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_core_reset.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_core_reset, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_core_reset.__UNIQUE_ID_ddebug302, ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regs.i.i.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %3, i32 72
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i.i.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %5 = ptrtoint ptr %needs_byte_swap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %needs_byte_swap.i.i.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i.i.i = icmp eq i8 %6, 0
  %7 = lshr i32 %4, 24
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %7, i32 %4
  %and.i.i.i = and i32 %retval.0.i.i.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i)
  %switch.i.i = icmp ult i32 %and.i.i.i, 3
  br i1 %switch.i.i, label %if.end.i, label %do.end.if.end14_crit_edge

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.end.i:                                         ; preds = %do.end
  %8 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 80
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %11 = ptrtoint ptr %needs_byte_swap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %needs_byte_swap.i.i.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i = icmp eq i8 %12, 0
  %13 = shl i32 %10, 8
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %13, i32 %10
  %and.i = and i32 %retval.0.i.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end14_crit_edge, label %if.end3.i

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.end3.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %15, i32 64
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %17 = ptrtoint ptr %needs_byte_swap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %needs_byte_swap.i.i.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i20.i = icmp eq i8 %18, 0
  %19 = tail call i32 @llvm.bswap.i32(i32 %16) #4
  %retval.0.i21.i = select i1 %tobool.not.i20.i, i32 %19, i32 %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1330917641, i32 %retval.0.i21.i)
  %cmp.i = icmp ugt i32 %retval.0.i21.i, 1330917641
  br i1 %cmp.i, label %if.then5.i, label %if.end3.i.if.then6_crit_edge

if.end3.i.if.then6_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

if.then5.i:                                       ; preds = %if.end3.i
  %20 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i.i.i.i, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %23 = ptrtoint ptr %needs_byte_swap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %needs_byte_swap.i.i.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i24.i = icmp eq i8 %24, 0
  %25 = lshr i32 %22, 8
  %retval.0.i25.i = select i1 %tobool.not.i24.i, i32 %25, i32 %22
  %and7.i = and i32 %retval.0.i25.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.then5.i.if.then6_crit_edge, label %if.then5.i.if.end14_crit_edge

if.then5.i.if.end14_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then5.i.if.then6_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

if.then6:                                         ; preds = %if.then5.i.if.then6_crit_edge, %if.end3.i.if.then6_crit_edge
  %26 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i.i.i, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %29 = ptrtoint ptr %needs_byte_swap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %needs_byte_swap.i.i.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i71 = icmp eq i8 %30, 0
  %31 = shl i32 %28, 8
  %retval.0.i72 = select i1 %tobool.not.i71, i32 %31, i32 %28
  %32 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 12
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %35 = ptrtoint ptr %needs_byte_swap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %needs_byte_swap.i.i.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i75 = icmp eq i8 %36, 0
  %37 = shl i32 %34, 24
  %retval.0.i76 = select i1 %tobool.not.i75, i32 %37, i32 %34
  %and = and i32 %retval.0.i72, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp ne i32 %and, 0
  %and10 = and i32 %retval.0.i76, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %or.cond = select i1 %tobool9.not, i1 %tobool11.not, i1 false
  br label %if.end14

if.end14:                                         ; preds = %if.then6, %if.then5.i.if.end14_crit_edge, %if.end.i.if.end14_crit_edge, %do.end.if.end14_crit_edge
  %wait_for_host_mode.1.off0 = phi i1 [ %or.cond, %if.then6 ], [ true, %if.then5.i.if.end14_crit_edge ], [ true, %do.end.if.end14_crit_edge ], [ true, %if.end.i.if.end14_crit_edge ]
  %38 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i.i.i.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %39, i32 16
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %41 = ptrtoint ptr %needs_byte_swap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %needs_byte_swap.i.i.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i80 = icmp eq i8 %42, 0
  %43 = tail call i32 @llvm.bswap.i32(i32 %40) #4
  %retval.0.i81 = select i1 %tobool.not.i80, i32 %43, i32 %40
  %or = or i32 %retval.0.i81, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i80, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %44 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i.i.i.i, align 4
  %add.ptr.i85 = getelementptr i8, ptr %45, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85, i32 %or) #4, !srcloc !284
  br label %dwc2_writel.exit

do.body1.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %46 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  %47 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i.i.i.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %48, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %46) #4, !srcloc !284
  br label %dwc2_writel.exit

dwc2_writel.exit:                                 ; preds = %do.body1.i, %do.body.i
  %snpsid = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 5
  %49 = ptrtoint ptr %snpsid to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %snpsid, align 8
  %and16 = and i32 %50, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 16906, i32 %and16)
  %cmp = icmp ult i32 %and16, 16906
  br i1 %cmp, label %dwc2_writel.exit.for.body.i_crit_edge, label %dwc2_writel.exit.for.body.i102_crit_edge

dwc2_writel.exit.for.body.i102_crit_edge:         ; preds = %dwc2_writel.exit
  br label %for.body.i102

dwc2_writel.exit.for.body.i_crit_edge:            ; preds = %dwc2_writel.exit
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i92.for.body.i_crit_edge, %dwc2_writel.exit.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %if.end.i92.for.body.i_crit_edge ], [ 0, %dwc2_writel.exit.for.body.i_crit_edge ]
  %51 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i.i.i.i, align 4
  %add.ptr.i.i87 = getelementptr i8, ptr %52, i32 16
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i87) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %54 = ptrtoint ptr %needs_byte_swap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %needs_byte_swap.i.i.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i.i88 = icmp eq i8 %55, 0
  %56 = lshr i32 %53, 24
  %retval.0.i.i89 = select i1 %tobool.not.i.i88, i32 %56, i32 %53
  %and.i90 = and i32 %retval.0.i.i89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i90)
  %tobool.not.i91 = icmp eq i32 %and.i90, 0
  br i1 %tobool.not.i91, label %for.body.i.if.end37_crit_edge, label %if.end.i92

for.body.i.if.end37_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.end.i92:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748) #4
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10000
  br i1 %exitcond.not.i, label %do.end23, label %if.end.i92.for.body.i_crit_edge

if.end.i92.for.body.i_crit_edge:                  ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

do.end23:                                         ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #6
  %58 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %59, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11) #7
  br label %cleanup

for.body.i102:                                    ; preds = %if.end.i105.for.body.i102_crit_edge, %dwc2_writel.exit.for.body.i102_crit_edge
  %i.03.i96 = phi i32 [ %inc.i103, %if.end.i105.for.body.i102_crit_edge ], [ 0, %dwc2_writel.exit.for.body.i102_crit_edge ]
  %60 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i.i.i.i, align 4
  %add.ptr.i.i97 = getelementptr i8, ptr %61, i32 16
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i97) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %63 = ptrtoint ptr %needs_byte_swap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %needs_byte_swap.i.i.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i.i98 = icmp eq i8 %64, 0
  %65 = shl i32 %62, 24
  %retval.0.i.i99 = select i1 %tobool.not.i.i98, i32 %65, i32 %62
  %and.i100 = and i32 %retval.0.i.i99, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i100)
  %tobool.not.i101 = icmp eq i32 %and.i100, 0
  br i1 %tobool.not.i101, label %if.end.i105, label %if.end33

if.end.i105:                                      ; preds = %for.body.i102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748) #4
  %inc.i103 = add nuw nsw i32 %i.03.i96, 1
  %exitcond.not.i104 = icmp eq i32 %inc.i103, 10000
  br i1 %exitcond.not.i104, label %do.end31, label %if.end.i105.for.body.i102_crit_edge

if.end.i105.for.body.i102_crit_edge:              ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i102

do.end31:                                         ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #6
  %67 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %68, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.11) #7
  br label %cleanup

if.end33:                                         ; preds = %for.body.i102
  %69 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i.i.i.i, align 4
  %add.ptr.i108 = getelementptr i8, ptr %70, i32 16
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %72 = ptrtoint ptr %needs_byte_swap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %needs_byte_swap.i.i.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i110 = icmp eq i8 %73, 0
  %74 = tail call i32 @llvm.bswap.i32(i32 %71) #4
  %retval.0.i111 = select i1 %tobool.not.i110, i32 %74, i32 %71
  %and35 = and i32 %retval.0.i111, -536870914
  %or36 = or i32 %and35, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i110, label %do.body1.i119, label %do.body.i116

do.body.i116:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %75 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i.i.i.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %76, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 %or36) #4, !srcloc !284
  br label %if.end37

do.body1.i119:                                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %77 = tail call i32 @llvm.bswap.i32(i32 %or36) #4
  %78 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i.i.i.i, align 4
  %add.ptr4.i118 = getelementptr i8, ptr %79, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i118, i32 %77) #4, !srcloc !284
  br label %if.end37

if.end37:                                         ; preds = %do.body1.i119, %do.body.i116, %for.body.i.if.end37_crit_edge
  %fifo_map.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 75
  %80 = ptrtoint ptr %fifo_map.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %fifo_map.i, align 4
  br label %for.body.i130

for.body.i130:                                    ; preds = %if.end.i133.for.body.i130_crit_edge, %if.end37
  %i.03.i124 = phi i32 [ 0, %if.end37 ], [ %inc.i131, %if.end.i133.for.body.i130_crit_edge ]
  %81 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i.i.i.i, align 4
  %add.ptr.i.i125 = getelementptr i8, ptr %82, i32 16
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i125) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %84 = ptrtoint ptr %needs_byte_swap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %needs_byte_swap.i.i.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i.i126 = icmp eq i8 %85, 0
  %86 = shl i32 %83, 24
  %retval.0.i.i127 = select i1 %tobool.not.i.i126, i32 %86, i32 %83
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i127)
  %tobool.not.i129 = icmp sgt i32 %retval.0.i.i127, -1
  br i1 %tobool.not.i129, label %if.end.i133, label %if.end45

if.end.i133:                                      ; preds = %for.body.i130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 214748) #4
  %inc.i131 = add nuw nsw i32 %i.03.i124, 1
  %exitcond.not.i132 = icmp eq i32 %inc.i131, 10000
  br i1 %exitcond.not.i132, label %do.end43, label %if.end.i133.for.body.i130_crit_edge

if.end.i133.for.body.i130_crit_edge:              ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i130

do.end43:                                         ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #6
  %88 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %89, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.11) #7
  br label %cleanup

if.end45:                                         ; preds = %for.body.i130
  %brmerge = or i1 %wait_for_host_mode.1.off0, %skip_wait
  br i1 %brmerge, label %if.end45.cleanup_crit_edge, label %if.then48

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @dwc2_wait_for_mode(ptr noundef %hsotg, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.end45.cleanup_crit_edge, %do.end43, %do.end31, %do.end23
  %retval.0 = phi i32 [ -16, %do.end23 ], [ -16, %do.end43 ], [ -16, %do.end31 ], [ 0, %if.end45.cleanup_crit_edge ], [ 0, %if.then48 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc2_hsotg_wait_bit_clear(ptr nocapture noundef readonly %hsotg, i32 noundef %offset, i32 noundef %mask, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %cmp2.not = icmp eq i32 %timeout, 0
  br i1 %cmp2.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.03 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %3 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %5 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  %retval.0.i = select i1 %tobool.not.i, i32 %5, i32 %2
  %and = and i32 %retval.0.i, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #4
  %inc = add nuw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, %timeout
  br i1 %exitcond.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %entry.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_wait_for_mode(ptr nocapture noundef readonly %hsotg, i1 noundef zeroext %host_mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_wait_for_mode.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_wait_for_mode, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  %cond = select i1 %host_mode, ptr @.str.23, ptr @.str.24
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_wait_for_mode.__UNIQUE_ID_ddebug300, ptr noundef %1, ptr noundef nonnull @.str.91, ptr noundef nonnull %cond) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call6 = tail call i64 @ktime_get() #4
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i61 = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i61) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %5 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i62 = icmp eq i8 %6, 0
  %7 = lshr i32 %4, 24
  %retval.0.i.i63 = select i1 %tobool.not.i.i62, i32 %7, i32 %4
  %8 = and i32 %retval.0.i.i63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  %cmp64 = xor i1 %9, %host_mode
  br i1 %cmp64, label %do.end.do.body11_crit_edge, label %do.end.if.end33_crit_edge

do.end.if.end33_crit_edge:                        ; preds = %do.end
  br label %if.end33

do.end.do.body11_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body11

do.body11:                                        ; preds = %cleanup.do.body11_crit_edge, %do.end.do.body11_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_wait_for_mode.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_wait_for_mode, %while.end)) #4
          to label %if.then25 [label %while.end], !srcloc !280

if.then25:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hsotg, align 8
  %cond29 = select i1 %host_mode, ptr @.str.93, ptr @.str.94
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_wait_for_mode.__UNIQUE_ID_ddebug301, ptr noundef %11, ptr noundef nonnull @.str.92, ptr noundef nonnull %cond29) #4
  br label %while.end

if.end33:                                         ; preds = %cleanup.if.end33_crit_edge, %do.end.if.end33_crit_edge
  %call34 = tail call i64 @ktime_get() #4
  %sub = sub i64 %call34, %call6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp8.i.i = icmp slt i64 %sub, 0
  %12 = tail call i64 @llvm.abs.i64(i64 %sub, i1 false) #4
  %13 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %12) #8, !srcloc !285
  %14 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %12, i64 %13, i32 0) #8, !srcloc !286
  %asmresult10.i.i.i = extractvalue { i64, i32 } %14, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 18
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 109, i64 %cond213.i.i)
  %cmp37 = icmp sgt i64 %cond213.i.i, 109
  br i1 %cmp37, label %do.end42, label %cleanup

do.end42:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hsotg, align 8
  %cond46 = select i1 %host_mode, ptr @.str.23, ptr @.str.24
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.90, ptr noundef nonnull %cond46) #7
  br label %while.end

cleanup:                                          ; preds = %if.end33
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %17 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 20
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %20 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i = icmp eq i8 %21, 0
  %22 = lshr i32 %19, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %22, i32 %19
  %23 = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %24 = icmp eq i32 %23, 0
  %cmp = xor i1 %24, %host_mode
  br i1 %cmp, label %cleanup.do.body11_crit_edge, label %cleanup.if.end33_crit_edge

cleanup.if.end33_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

cleanup.do.body11_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body11

while.end:                                        ; preds = %do.end42, %if.then25, %do.body11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc2_force_mode(ptr nocapture noundef readonly %hsotg, i1 noundef zeroext %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_force_mode.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_force_mode, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  %cond = select i1 %host, ptr @.str.23, ptr @.str.24
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_force_mode.__UNIQUE_ID_ddebug303, ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef nonnull %cond) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regs.i.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 72
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %5 = ptrtoint ptr %needs_byte_swap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %needs_byte_swap.i.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i.i = icmp eq i8 %6, 0
  %7 = lshr i32 %4, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %7, i32 %4
  %and.i.i = and i32 %retval.0.i.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %switch.i = icmp ult i32 %and.i.i, 3
  br i1 %switch.i, label %if.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %dr_mode = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 5
  %8 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dr_mode, align 4
  br i1 %host, label %land.rhs, label %land.rhs44.critedge

land.rhs:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp eq i32 %9, 2
  br i1 %cmp, label %do.end25, label %land.rhs.if.end79_crit_edge, !prof !287

land.rhs.if.end79_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79

do.end25:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 550, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

land.rhs44.critedge:                              ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp46 = icmp eq i32 %9, 1
  br i1 %cmp46, label %do.end63, label %land.rhs44.critedge.if.end79_crit_edge, !prof !287

land.rhs44.critedge.if.end79_crit_edge:           ; preds = %land.rhs44.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79

do.end63:                                         ; preds = %land.rhs44.critedge
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 553, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end79:                                         ; preds = %land.rhs44.critedge.if.end79_crit_edge, %land.rhs.if.end79_crit_edge
  %neg = phi i32 [ -1073741825, %land.rhs.if.end79_crit_edge ], [ -536870913, %land.rhs44.critedge.if.end79_crit_edge ]
  %cond82 = phi i32 [ 536870912, %land.rhs.if.end79_crit_edge ], [ 1073741824, %land.rhs44.critedge.if.end79_crit_edge ]
  %10 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %13 = ptrtoint ptr %needs_byte_swap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %needs_byte_swap.i.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  %15 = tail call i32 @llvm.bswap.i32(i32 %12) #4
  %retval.0.i103 = select i1 %tobool.not.i, i32 %15, i32 %12
  %and = and i32 %retval.0.i103, %neg
  %or = or i32 %and, %cond82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i107 = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 %or) #4, !srcloc !284
  br label %dwc2_writel.exit

do.body1.i:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  %19 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %18) #4, !srcloc !284
  br label %dwc2_writel.exit

dwc2_writel.exit:                                 ; preds = %do.body1.i, %do.body.i
  tail call fastcc void @dwc2_wait_for_mode(ptr noundef %hsotg, i1 noundef zeroext %host)
  br label %cleanup

cleanup:                                          ; preds = %dwc2_writel.exit, %do.end63, %do.end25, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dwc2_hw_is_otg(ptr nocapture noundef readonly %hsotg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 72
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %3 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i = icmp eq i8 %4, 0
  %5 = lshr i32 %2, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %5, i32 %2
  %and.i = and i32 %retval.0.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %switch = icmp ult i32 %and.i, 3
  ret i1 %switch
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc2_force_dr_mode(ptr nocapture noundef readonly %hsotg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dr_mode = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 5
  %0 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dr_mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %regs.i.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %3 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 72
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %6 = ptrtoint ptr %needs_byte_swap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %needs_byte_swap.i.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i.i = icmp eq i8 %7, 0
  %8 = lshr i32 %5, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %8, i32 %5
  %and.i.i = and i32 %retval.0.i.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %switch.i = icmp ult i32 %and.i.i, 3
  br i1 %switch.i, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef 50) #4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dwc2_force_mode(ptr noundef %hsotg, i1 noundef zeroext false)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @dwc2_clear_force_mode(ptr noundef %hsotg)
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef %1) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb2, %sw.bb1, %if.then, %sw.bb.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_clear_force_mode(ptr nocapture noundef readonly %hsotg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 72
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %3 = ptrtoint ptr %needs_byte_swap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %needs_byte_swap.i.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i.i = icmp eq i8 %4, 0
  %5 = lshr i32 %2, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %5, i32 %2
  %and.i.i = and i32 %retval.0.i.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %switch.i = icmp ult i32 %and.i.i, 3
  br i1 %switch.i, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_clear_force_mode.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_clear_force_mode, %do.end)) #4
          to label %if.then5 [label %do.end], !srcloc !280

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_clear_force_mode.__UNIQUE_ID_ddebug304, ptr noundef %7, ptr noundef nonnull @.str.97) #4
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %8 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %11 = ptrtoint ptr %needs_byte_swap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %needs_byte_swap.i.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #4
  %retval.0.i18 = select i1 %tobool.not.i, i32 %13, i32 %10
  %and8 = and i32 %retval.0.i18, -1610612737
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %15, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %and8) #4, !srcloc !284
  br label %dwc2_writel.exit

do.body1.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %and8) #4
  %17 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %18, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %16) #4, !srcloc !284
  br label %dwc2_writel.exit

dwc2_writel.exit:                                 ; preds = %do.body1.i, %do.body.i
  %19 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %20, i32 72
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %22 = ptrtoint ptr %needs_byte_swap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %needs_byte_swap.i.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i.i.i = icmp eq i8 %23, 0
  %24 = lshr i32 %21, 24
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %24, i32 %21
  %and.i.i.i = and i32 %retval.0.i.i.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i)
  %switch.i.i = icmp ult i32 %and.i.i.i, 3
  br i1 %switch.i.i, label %if.end.i, label %dwc2_writel.exit.cleanup_crit_edge

dwc2_writel.exit.cleanup_crit_edge:               ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %dwc2_writel.exit
  %25 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 80
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %28 = ptrtoint ptr %needs_byte_swap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %needs_byte_swap.i.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i = icmp eq i8 %29, 0
  %30 = shl i32 %27, 8
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %30, i32 %27
  %and.i = and i32 %retval.0.i.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i23 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i23, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %31 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %32, i32 64
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %34 = ptrtoint ptr %needs_byte_swap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %needs_byte_swap.i.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i20.i = icmp eq i8 %35, 0
  %36 = tail call i32 @llvm.bswap.i32(i32 %33) #4
  %retval.0.i21.i = select i1 %tobool.not.i20.i, i32 %36, i32 %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 1330917641, i32 %retval.0.i21.i)
  %cmp.i = icmp ugt i32 %retval.0.i21.i, 1330917641
  br i1 %cmp.i, label %if.then5.i, label %if.end3.i.if.then10_crit_edge

if.end3.i.if.then10_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then10

if.then5.i:                                       ; preds = %if.end3.i
  %37 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i.i.i, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %40 = ptrtoint ptr %needs_byte_swap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %needs_byte_swap.i.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i24.i = icmp eq i8 %41, 0
  %42 = lshr i32 %39, 8
  %retval.0.i25.i = select i1 %tobool.not.i24.i, i32 %42, i32 %39
  %and7.i = and i32 %retval.0.i25.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.then5.i.if.then10_crit_edge, label %if.then5.i.cleanup_crit_edge

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5.i.if.then10_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then10

if.then10:                                        ; preds = %if.then5.i.if.then10_crit_edge, %if.end3.i.if.then10_crit_edge
  tail call void @msleep(i32 noundef 100) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.then5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %dwc2_writel.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc2_enable_acg(ptr nocapture noundef readonly %hsotg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %acg_enable = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 9
  %0 = ptrtoint ptr %acg_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %acg_enable, align 2, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then:                                          ; preds = %entry
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 3588
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %5 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %7 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  %retval.0.i12 = select i1 %tobool.not.i, i32 %7, i32 %4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_enable_acg.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_enable_acg, %do.end)) #4
          to label %if.then6 [label %do.end], !srcloc !280

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_enable_acg.__UNIQUE_ID_ddebug305, ptr noundef %9, ptr noundef nonnull @.str.28) #4
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.then
  %or = or i32 %retval.0.i12, 1
  %10 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i14 = icmp eq i8 %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i14, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %13, i32 3588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %or) #4, !srcloc !284
  br label %if.end7

do.body1.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %16, i32 3588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %14) #4, !srcloc !284
  br label %if.end7

if.end7:                                          ; preds = %do.body1.i, %do.body.i, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc2_dump_host_registers(ptr noundef readonly %hsotg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_host_registers, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_host_registers.__UNIQUE_ID_ddebug306, ptr noundef %1, ptr noundef nonnull @.str.30) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regs = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_host_registers, %do.end23)) #4
          to label %if.then18 [label %do.end23], !srcloc !280

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %3, i32 1024
  %4 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hsotg, align 8
  %6 = ptrtoint ptr %add.ptr to i32
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 1024
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %10 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  %12 = tail call i32 @llvm.bswap.i32(i32 %9) #4
  %retval.0.i514 = select i1 %tobool.not.i, i32 %12, i32 %9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_host_registers.__UNIQUE_ID_ddebug307, ptr noundef %5, ptr noundef nonnull @.str.31, i32 noundef %6, i32 noundef %retval.0.i514) #4
  br label %do.end23

do.end23:                                         ; preds = %if.then18, %do.end
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_host_registers, %do.end45)) #4
          to label %if.then40 [label %do.end45], !srcloc !280

if.then40:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr25 = getelementptr i8, ptr %14, i32 1028
  %15 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hsotg, align 8
  %17 = ptrtoint ptr %add.ptr25 to i32
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr.i516 = getelementptr i8, ptr %19, i32 1028
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i516) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i517 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %21 = ptrtoint ptr %needs_byte_swap.i517 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %needs_byte_swap.i517, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i518 = icmp eq i8 %22, 0
  %23 = tail call i32 @llvm.bswap.i32(i32 %20) #4
  %retval.0.i519 = select i1 %tobool.not.i518, i32 %23, i32 %20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_host_registers.__UNIQUE_ID_ddebug308, ptr noundef %16, ptr noundef nonnull @.str.32, i32 noundef %17, i32 noundef %retval.0.i519) #4
  br label %do.end45

do.end45:                                         ; preds = %if.then40, %do.end23
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_host_registers, %do.end67)) #4
          to label %if.then62 [label %do.end67], !srcloc !280

if.then62:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr47 = getelementptr i8, ptr %25, i32 1032
  %26 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hsotg, align 8
  %28 = ptrtoint ptr %add.ptr47 to i32
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %add.ptr.i521 = getelementptr i8, ptr %30, i32 1032
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i521) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i522 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %32 = ptrtoint ptr %needs_byte_swap.i522 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %needs_byte_swap.i522, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i523 = icmp eq i8 %33, 0
  %34 = tail call i32 @llvm.bswap.i32(i32 %31) #4
  %retval.0.i524 = select i1 %tobool.not.i523, i32 %34, i32 %31
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_host_registers.__UNIQUE_ID_ddebug309, ptr noundef %27, ptr noundef nonnull @.str.33, i32 noundef %28, i32 noundef %retval.0.i524) #4
  br label %do.end67

do.end67:                                         ; preds = %if.then62, %do.end45
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_host_registers, %do.end89)) #4
          to label %if.then84 [label %do.end89], !srcloc !280

if.then84:                                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr69 = getelementptr i8, ptr %36, i32 1040
  %37 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hsotg, align 8
  %39 = ptrtoint ptr %add.ptr69 to i32
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %add.ptr.i526 = getelementptr i8, ptr %41, i32 1040
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i526) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i527 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %43 = ptrtoint ptr %needs_byte_swap.i527 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %needs_byte_swap.i527, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i528 = icmp eq i8 %44, 0
  %45 = tail call i32 @llvm.bswap.i32(i32 %42) #4
  %retval.0.i529 = select i1 %tobool.not.i528, i32 %45, i32 %42
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_host_registers.__UNIQUE_ID_ddebug310, ptr noundef %38, ptr noundef nonnull @.str.34, i32 noundef %39, i32 noundef %retval.0.i529) #4
  br label %do.end89

do.end89:                                         ; preds = %if.then84, %do.end67
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_host_registers, %do.end111)) #4
          to label %if.then106 [label %do.end111], !srcloc !280

if.then106:                                       ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr91 = getelementptr i8, ptr %47, i32 1044
  %48 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hsotg, align 8
  %50 = ptrtoint ptr %add.ptr91 to i32
  %51 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs, align 4
  %add.ptr.i531 = getelementptr i8, ptr %52, i32 1044
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i531) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i532 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %54 = ptrtoint ptr %needs_byte_swap.i532 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %needs_byte_swap.i532, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i533 = icmp eq i8 %55, 0
  %56 = tail call i32 @llvm.bswap.i32(i32 %53) #4
  %retval.0.i534 = select i1 %tobool.not.i533, i32 %56, i32 %53
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_host_registers.__UNIQUE_ID_ddebug311, ptr noundef %49, ptr noundef nonnull @.str.35, i32 noundef %50, i32 noundef %retval.0.i534) #4
  br label %do.end111

do.end111:                                        ; preds = %if.then106, %do.end89
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_host_registers, %do.end133)) #4
          to label %if.then128 [label %do.end133], !srcloc !280

if.then128:                                       ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr113 = getelementptr i8, ptr %58, i32 1048
  %59 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hsotg, align 8
  %61 = ptrtoint ptr %add.ptr113 to i32
  %62 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs, align 4
  %add.ptr.i536 = getelementptr i8, ptr %63, i32 1048
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i536) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i537 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %65 = ptrtoint ptr %needs_byte_swap.i537 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %needs_byte_swap.i537, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i538 = icmp eq i8 %66, 0
  %67 = tail call i32 @llvm.bswap.i32(i32 %64) #4
  %retval.0.i539 = select i1 %tobool.not.i538, i32 %67, i32 %64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_host_registers.__UNIQUE_ID_ddebug312, ptr noundef %60, ptr noundef nonnull @.str.36, i32 noundef %61, i32 noundef %retval.0.i539) #4
  br label %do.end133

do.end133:                                        ; preds = %if.then128, %do.end111
  %dma_desc_enable = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 32
  %68 = ptrtoint ptr %dma_desc_enable to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %dma_desc_enable, align 1, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool134.not = icmp eq i8 %69, 0
  br i1 %tobool134.not, label %do.end133.if.end158_crit_edge, label %if.then135

do.end133.if.end158_crit_edge:                    ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end158

if.then135:                                       ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #6
  %70 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_host_registers, %if.end158)) #4
          to label %if.then152 [label %if.end158], !srcloc !280

if.then152:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr137 = getelementptr i8, ptr %71, i32 1052
  %72 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hsotg, align 8
  %74 = ptrtoint ptr %add.ptr137 to i32
  %75 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs, align 4
  %add.ptr.i541 = getelementptr i8, ptr %76, i32 1052
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i541) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i542 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %78 = ptrtoint ptr %needs_byte_swap.i542 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %needs_byte_swap.i542, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i543 = icmp eq i8 %79, 0
  %80 = tail call i32 @llvm.bswap.i32(i32 %77) #4
  %retval.0.i544 = select i1 %tobool.not.i543, i32 %80, i32 %77
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_host_registers.__UNIQUE_ID_ddebug313, ptr noundef %73, ptr noundef nonnull @.str.37, i32 noundef %74, i32 noundef %retval.0.i544) #4
  br label %if.end158

if.end158:                                        ; preds = %if.then152, %if.then135, %do.end133.if.end158_crit_edge
  %81 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_host_registers, %do.end180)) #4
          to label %if.then175 [label %do.end180], !srcloc !280

if.then175:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr160 = getelementptr i8, ptr %82, i32 1088
  %83 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hsotg, align 8
  %85 = ptrtoint ptr %add.ptr160 to i32
  %86 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs, align 4
  %add.ptr.i546 = getelementptr i8, ptr %87, i32 1088
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i546) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i547 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %89 = ptrtoint ptr %needs_byte_swap.i547 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %needs_byte_swap.i547, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i548 = icmp eq i8 %90, 0
  %91 = tail call i32 @llvm.bswap.i32(i32 %88) #4
  %retval.0.i549 = select i1 %tobool.not.i548, i32 %91, i32 %88
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_host_registers.__UNIQUE_ID_ddebug314, ptr noundef %84, ptr noundef nonnull @.str.38, i32 noundef %85, i32 noundef %retval.0.i549) #4
  br label %do.end180

do.end180:                                        ; preds = %if.then175, %if.end158
  %host_channels = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 37
  %92 = ptrtoint ptr %host_channels to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %host_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp603.not = icmp eq i8 %93, 0
  br i1 %cmp603.not, label %do.end180.for.end_crit_edge, label %do.body183.lr.ph

do.end180.for.end_crit_edge:                      ; preds = %do.end180
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.body183.lr.ph:                                 ; preds = %do.end180
  %needs_byte_swap.i552 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  br label %do.body183

do.body183:                                       ; preds = %for.inc.do.body183_crit_edge, %do.body183.lr.ph
  %i.0604 = phi i32 [ 0, %do.body183.lr.ph ], [ %inc, %for.inc.do.body183_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_host_registers, %do.end201)) #4
          to label %if.then197 [label %do.end201], !srcloc !280

if.then197:                                       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #6
  %94 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_host_registers.__UNIQUE_ID_ddebug315, ptr noundef %95, ptr noundef nonnull @.str.39, i32 noundef %i.0604) #4
  br label %do.end201

do.end201:                                        ; preds = %if.then197, %do.body183
  %96 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs, align 4
  %mul = shl i32 %i.0604, 5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_host_registers, %do.end225)) #4
          to label %if.then218 [label %do.end225], !srcloc !280

if.then218:                                       ; preds = %do.end201
  call void @__sanitizer_cov_trace_pc() #6
  %add = add nuw nsw i32 %mul, 1280
  %add.ptr203 = getelementptr i8, ptr %97, i32 %add
  %98 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hsotg, align 8
  %100 = ptrtoint ptr %add.ptr203 to i32
  %101 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs, align 4
  %add.ptr.i551 = getelementptr i8, ptr %102, i32 %add
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i551) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %104 = ptrtoint ptr %needs_byte_swap.i552 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %needs_byte_swap.i552, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool.not.i553 = icmp eq i8 %105, 0
  %106 = tail call i32 @llvm.bswap.i32(i32 %103) #4
  %retval.0.i554 = select i1 %tobool.not.i553, i32 %106, i32 %103
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_host_registers.__UNIQUE_ID_ddebug316, ptr noundef %99, ptr noundef nonnull @.str.40, i32 noundef %100, i32 noundef %retval.0.i554) #4
  br label %do.end225

do.end225:                                        ; preds = %if.then218, %do.end201
  %107 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_host_registers, %do.end251)) #4
          to label %if.then244 [label %do.end251], !srcloc !280

if.then244:                                       ; preds = %do.end225
  call void @__sanitizer_cov_trace_pc() #6
  %add228 = add nuw nsw i32 %mul, 1284
  %add.ptr229 = getelementptr i8, ptr %108, i32 %add228
  %109 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hsotg, align 8
  %111 = ptrtoint ptr %add.ptr229 to i32
  %112 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs, align 4
  %add.ptr.i556 = getelementptr i8, ptr %113, i32 %add228
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i556) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %115 = ptrtoint ptr %needs_byte_swap.i552 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %needs_byte_swap.i552, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.not.i558 = icmp eq i8 %116, 0
  %117 = tail call i32 @llvm.bswap.i32(i32 %114) #4
  %retval.0.i559 = select i1 %tobool.not.i558, i32 %117, i32 %114
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_host_registers.__UNIQUE_ID_ddebug317, ptr noundef %110, ptr noundef nonnull @.str.41, i32 noundef %111, i32 noundef %retval.0.i559) #4
  br label %do.end251

do.end251:                                        ; preds = %if.then244, %do.end225
  %118 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_host_registers, %do.end277)) #4
          to label %if.then270 [label %do.end277], !srcloc !280

if.then270:                                       ; preds = %do.end251
  call void @__sanitizer_cov_trace_pc() #6
  %add254 = add nuw nsw i32 %mul, 1288
  %add.ptr255 = getelementptr i8, ptr %119, i32 %add254
  %120 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hsotg, align 8
  %122 = ptrtoint ptr %add.ptr255 to i32
  %123 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regs, align 4
  %add.ptr.i561 = getelementptr i8, ptr %124, i32 %add254
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i561) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %126 = ptrtoint ptr %needs_byte_swap.i552 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %needs_byte_swap.i552, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool.not.i563 = icmp eq i8 %127, 0
  %128 = tail call i32 @llvm.bswap.i32(i32 %125) #4
  %retval.0.i564 = select i1 %tobool.not.i563, i32 %128, i32 %125
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_host_registers.__UNIQUE_ID_ddebug318, ptr noundef %121, ptr noundef nonnull @.str.42, i32 noundef %122, i32 noundef %retval.0.i564) #4
  br label %do.end277

do.end277:                                        ; preds = %if.then270, %do.end251
  %129 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_host_registers, %do.end303)) #4
          to label %if.then296 [label %do.end303], !srcloc !280

if.then296:                                       ; preds = %do.end277
  call void @__sanitizer_cov_trace_pc() #6
  %add280 = add nuw nsw i32 %mul, 1292
  %add.ptr281 = getelementptr i8, ptr %130, i32 %add280
  %131 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hsotg, align 8
  %133 = ptrtoint ptr %add.ptr281 to i32
  %134 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regs, align 4
  %add.ptr.i566 = getelementptr i8, ptr %135, i32 %add280
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i566) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %137 = ptrtoint ptr %needs_byte_swap.i552 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %needs_byte_swap.i552, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool.not.i568 = icmp eq i8 %138, 0
  %139 = tail call i32 @llvm.bswap.i32(i32 %136) #4
  %retval.0.i569 = select i1 %tobool.not.i568, i32 %139, i32 %136
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_host_registers.__UNIQUE_ID_ddebug319, ptr noundef %132, ptr noundef nonnull @.str.43, i32 noundef %133, i32 noundef %retval.0.i569) #4
  br label %do.end303

do.end303:                                        ; preds = %if.then296, %do.end277
  %140 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_host_registers, %do.end329)) #4
          to label %if.then322 [label %do.end329], !srcloc !280

if.then322:                                       ; preds = %do.end303
  call void @__sanitizer_cov_trace_pc() #6
  %add306 = add nuw nsw i32 %mul, 1296
  %add.ptr307 = getelementptr i8, ptr %141, i32 %add306
  %142 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %hsotg, align 8
  %144 = ptrtoint ptr %add.ptr307 to i32
  %145 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regs, align 4
  %add.ptr.i571 = getelementptr i8, ptr %146, i32 %add306
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i571) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %148 = ptrtoint ptr %needs_byte_swap.i552 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %needs_byte_swap.i552, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool.not.i573 = icmp eq i8 %149, 0
  %150 = tail call i32 @llvm.bswap.i32(i32 %147) #4
  %retval.0.i574 = select i1 %tobool.not.i573, i32 %150, i32 %147
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_host_registers.__UNIQUE_ID_ddebug320, ptr noundef %143, ptr noundef nonnull @.str.44, i32 noundef %144, i32 noundef %retval.0.i574) #4
  br label %do.end329

do.end329:                                        ; preds = %if.then322, %do.end303
  %151 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_host_registers, %do.end355)) #4
          to label %if.then348 [label %do.end355], !srcloc !280

if.then348:                                       ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #6
  %add332 = add nuw nsw i32 %mul, 1300
  %add.ptr333 = getelementptr i8, ptr %152, i32 %add332
  %153 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %hsotg, align 8
  %155 = ptrtoint ptr %add.ptr333 to i32
  %156 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regs, align 4
  %add.ptr.i576 = getelementptr i8, ptr %157, i32 %add332
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i576) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %159 = ptrtoint ptr %needs_byte_swap.i552 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %needs_byte_swap.i552, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool.not.i578 = icmp eq i8 %160, 0
  %161 = tail call i32 @llvm.bswap.i32(i32 %158) #4
  %retval.0.i579 = select i1 %tobool.not.i578, i32 %161, i32 %158
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_host_registers.__UNIQUE_ID_ddebug321, ptr noundef %154, ptr noundef nonnull @.str.45, i32 noundef %155, i32 noundef %retval.0.i579) #4
  br label %do.end355

do.end355:                                        ; preds = %if.then348, %do.end329
  %162 = ptrtoint ptr %dma_desc_enable to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %dma_desc_enable, align 1, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool358.not = icmp eq i8 %163, 0
  br i1 %tobool358.not, label %do.end355.for.inc_crit_edge, label %if.then359

do.end355.for.inc_crit_edge:                      ; preds = %do.end355
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then359:                                       ; preds = %do.end355
  call void @__sanitizer_cov_trace_pc() #6
  %164 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_host_registers, %for.inc)) #4
          to label %if.then378 [label %for.inc], !srcloc !280

if.then378:                                       ; preds = %if.then359
  call void @__sanitizer_cov_trace_pc() #6
  %add362 = add nuw nsw i32 %mul, 1308
  %add.ptr363 = getelementptr i8, ptr %165, i32 %add362
  %166 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %hsotg, align 8
  %168 = ptrtoint ptr %add.ptr363 to i32
  %169 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %regs, align 4
  %add.ptr.i581 = getelementptr i8, ptr %170, i32 %add362
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i581) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %172 = ptrtoint ptr %needs_byte_swap.i552 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %needs_byte_swap.i552, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool.not.i583 = icmp eq i8 %173, 0
  %174 = tail call i32 @llvm.bswap.i32(i32 %171) #4
  %retval.0.i584 = select i1 %tobool.not.i583, i32 %174, i32 %171
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_host_registers.__UNIQUE_ID_ddebug322, ptr noundef %167, ptr noundef nonnull @.str.46, i32 noundef %168, i32 noundef %retval.0.i584) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then378, %if.then359, %do.end355.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0604, 1
  %175 = ptrtoint ptr %host_channels to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %host_channels, align 8
  %conv = zext i8 %176 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.do.body183_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.do.body183_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body183

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end180.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc2_dump_global_registers(ptr noundef readonly %hsotg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_global_registers, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_global_registers.__UNIQUE_ID_ddebug323, ptr noundef %1, ptr noundef nonnull @.str.48) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regs = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_global_registers, %do.end23)) #4
          to label %if.then18 [label %do.end23], !srcloc !280

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hsotg, align 8
  %6 = ptrtoint ptr %3 to i32
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %10 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  %12 = tail call i32 @llvm.bswap.i32(i32 %9) #4
  %retval.0.i726 = select i1 %tobool.not.i, i32 %12, i32 %9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_global_registers.__UNIQUE_ID_ddebug324, ptr noundef %5, ptr noundef nonnull @.str.49, i32 noundef %6, i32 noundef %retval.0.i726) #4
  br label %do.end23

do.end23:                                         ; preds = %if.then18, %do.end
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_global_registers, %do.end45)) #4
          to label %if.then40 [label %do.end45], !srcloc !280

if.then40:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr25 = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hsotg, align 8
  %17 = ptrtoint ptr %add.ptr25 to i32
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i728 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %21 = ptrtoint ptr %needs_byte_swap.i728 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %needs_byte_swap.i728, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i729 = icmp eq i8 %22, 0
  %23 = tail call i32 @llvm.bswap.i32(i32 %20) #4
  %retval.0.i730 = select i1 %tobool.not.i729, i32 %23, i32 %20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_global_registers.__UNIQUE_ID_ddebug325, ptr noundef %16, ptr noundef nonnull @.str.50, i32 noundef %17, i32 noundef %retval.0.i730) #4
  br label %do.end45

do.end45:                                         ; preds = %if.then40, %do.end23
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_global_registers, %do.end67)) #4
          to label %if.then62 [label %do.end67], !srcloc !280

if.then62:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr47 = getelementptr i8, ptr %25, i32 8
  %26 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hsotg, align 8
  %28 = ptrtoint ptr %add.ptr47 to i32
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %add.ptr.i732 = getelementptr i8, ptr %30, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i732) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i733 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %32 = ptrtoint ptr %needs_byte_swap.i733 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %needs_byte_swap.i733, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i734 = icmp eq i8 %33, 0
  %34 = tail call i32 @llvm.bswap.i32(i32 %31) #4
  %retval.0.i735 = select i1 %tobool.not.i734, i32 %34, i32 %31
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_global_registers.__UNIQUE_ID_ddebug326, ptr noundef %27, ptr noundef nonnull @.str.51, i32 noundef %28, i32 noundef %retval.0.i735) #4
  br label %do.end67

do.end67:                                         ; preds = %if.then62, %do.end45
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_global_registers, %do.end89)) #4
          to label %if.then84 [label %do.end89], !srcloc !280

if.then84:                                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr69 = getelementptr i8, ptr %36, i32 12
  %37 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hsotg, align 8
  %39 = ptrtoint ptr %add.ptr69 to i32
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %add.ptr.i737 = getelementptr i8, ptr %41, i32 12
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i737) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i738 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %43 = ptrtoint ptr %needs_byte_swap.i738 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %needs_byte_swap.i738, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i739 = icmp eq i8 %44, 0
  %45 = tail call i32 @llvm.bswap.i32(i32 %42) #4
  %retval.0.i740 = select i1 %tobool.not.i739, i32 %45, i32 %42
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_global_registers.__UNIQUE_ID_ddebug327, ptr noundef %38, ptr noundef nonnull @.str.52, i32 noundef %39, i32 noundef %retval.0.i740) #4
  br label %do.end89

do.end89:                                         ; preds = %if.then84, %do.end67
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_global_registers, %do.end111)) #4
          to label %if.then106 [label %do.end111], !srcloc !280

if.then106:                                       ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr91 = getelementptr i8, ptr %47, i32 16
  %48 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hsotg, align 8
  %50 = ptrtoint ptr %add.ptr91 to i32
  %51 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs, align 4
  %add.ptr.i742 = getelementptr i8, ptr %52, i32 16
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i742) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i743 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %54 = ptrtoint ptr %needs_byte_swap.i743 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %needs_byte_swap.i743, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i744 = icmp eq i8 %55, 0
  %56 = tail call i32 @llvm.bswap.i32(i32 %53) #4
  %retval.0.i745 = select i1 %tobool.not.i744, i32 %56, i32 %53
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_global_registers.__UNIQUE_ID_ddebug328, ptr noundef %49, ptr noundef nonnull @.str.53, i32 noundef %50, i32 noundef %retval.0.i745) #4
  br label %do.end111

do.end111:                                        ; preds = %if.then106, %do.end89
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_global_registers, %do.end133)) #4
          to label %if.then128 [label %do.end133], !srcloc !280

if.then128:                                       ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr113 = getelementptr i8, ptr %58, i32 20
  %59 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hsotg, align 8
  %61 = ptrtoint ptr %add.ptr113 to i32
  %62 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs, align 4
  %add.ptr.i747 = getelementptr i8, ptr %63, i32 20
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i747) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i748 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %65 = ptrtoint ptr %needs_byte_swap.i748 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %needs_byte_swap.i748, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i749 = icmp eq i8 %66, 0
  %67 = tail call i32 @llvm.bswap.i32(i32 %64) #4
  %retval.0.i750 = select i1 %tobool.not.i749, i32 %67, i32 %64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_global_registers.__UNIQUE_ID_ddebug329, ptr noundef %60, ptr noundef nonnull @.str.54, i32 noundef %61, i32 noundef %retval.0.i750) #4
  br label %do.end133

do.end133:                                        ; preds = %if.then128, %do.end111
  %68 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_global_registers, %do.end155)) #4
          to label %if.then150 [label %do.end155], !srcloc !280

if.then150:                                       ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr135 = getelementptr i8, ptr %69, i32 24
  %70 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hsotg, align 8
  %72 = ptrtoint ptr %add.ptr135 to i32
  %73 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs, align 4
  %add.ptr.i752 = getelementptr i8, ptr %74, i32 24
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i752) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i753 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %76 = ptrtoint ptr %needs_byte_swap.i753 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %needs_byte_swap.i753, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i754 = icmp eq i8 %77, 0
  %78 = tail call i32 @llvm.bswap.i32(i32 %75) #4
  %retval.0.i755 = select i1 %tobool.not.i754, i32 %78, i32 %75
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_global_registers.__UNIQUE_ID_ddebug330, ptr noundef %71, ptr noundef nonnull @.str.55, i32 noundef %72, i32 noundef %retval.0.i755) #4
  br label %do.end155

do.end155:                                        ; preds = %if.then150, %do.end133
  %79 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_global_registers, %do.end177)) #4
          to label %if.then172 [label %do.end177], !srcloc !280

if.then172:                                       ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr157 = getelementptr i8, ptr %80, i32 28
  %81 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hsotg, align 8
  %83 = ptrtoint ptr %add.ptr157 to i32
  %84 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs, align 4
  %add.ptr.i757 = getelementptr i8, ptr %85, i32 28
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i757) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i758 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %87 = ptrtoint ptr %needs_byte_swap.i758 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %needs_byte_swap.i758, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i759 = icmp eq i8 %88, 0
  %89 = tail call i32 @llvm.bswap.i32(i32 %86) #4
  %retval.0.i760 = select i1 %tobool.not.i759, i32 %89, i32 %86
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_global_registers.__UNIQUE_ID_ddebug331, ptr noundef %82, ptr noundef nonnull @.str.56, i32 noundef %83, i32 noundef %retval.0.i760) #4
  br label %do.end177

do.end177:                                        ; preds = %if.then172, %do.end155
  %90 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_global_registers, %do.end199)) #4
          to label %if.then194 [label %do.end199], !srcloc !280

if.then194:                                       ; preds = %do.end177
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr179 = getelementptr i8, ptr %91, i32 36
  %92 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hsotg, align 8
  %94 = ptrtoint ptr %add.ptr179 to i32
  %95 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs, align 4
  %add.ptr.i762 = getelementptr i8, ptr %96, i32 36
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i762) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i763 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %98 = ptrtoint ptr %needs_byte_swap.i763 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %needs_byte_swap.i763, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i764 = icmp eq i8 %99, 0
  %100 = tail call i32 @llvm.bswap.i32(i32 %97) #4
  %retval.0.i765 = select i1 %tobool.not.i764, i32 %100, i32 %97
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_global_registers.__UNIQUE_ID_ddebug332, ptr noundef %93, ptr noundef nonnull @.str.57, i32 noundef %94, i32 noundef %retval.0.i765) #4
  br label %do.end199

do.end199:                                        ; preds = %if.then194, %do.end177
  %101 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_global_registers, %do.end221)) #4
          to label %if.then216 [label %do.end221], !srcloc !280

if.then216:                                       ; preds = %do.end199
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr201 = getelementptr i8, ptr %102, i32 40
  %103 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hsotg, align 8
  %105 = ptrtoint ptr %add.ptr201 to i32
  %106 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs, align 4
  %add.ptr.i767 = getelementptr i8, ptr %107, i32 40
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i767) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i768 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %109 = ptrtoint ptr %needs_byte_swap.i768 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %needs_byte_swap.i768, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i769 = icmp eq i8 %110, 0
  %111 = tail call i32 @llvm.bswap.i32(i32 %108) #4
  %retval.0.i770 = select i1 %tobool.not.i769, i32 %111, i32 %108
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_global_registers.__UNIQUE_ID_ddebug333, ptr noundef %104, ptr noundef nonnull @.str.58, i32 noundef %105, i32 noundef %retval.0.i770) #4
  br label %do.end221

do.end221:                                        ; preds = %if.then216, %do.end199
  %112 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_global_registers, %do.end243)) #4
          to label %if.then238 [label %do.end243], !srcloc !280

if.then238:                                       ; preds = %do.end221
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr223 = getelementptr i8, ptr %113, i32 44
  %114 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hsotg, align 8
  %116 = ptrtoint ptr %add.ptr223 to i32
  %117 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regs, align 4
  %add.ptr.i772 = getelementptr i8, ptr %118, i32 44
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i772) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i773 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %120 = ptrtoint ptr %needs_byte_swap.i773 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %needs_byte_swap.i773, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool.not.i774 = icmp eq i8 %121, 0
  %122 = tail call i32 @llvm.bswap.i32(i32 %119) #4
  %retval.0.i775 = select i1 %tobool.not.i774, i32 %122, i32 %119
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_global_registers.__UNIQUE_ID_ddebug334, ptr noundef %115, ptr noundef nonnull @.str.59, i32 noundef %116, i32 noundef %retval.0.i775) #4
  br label %do.end243

do.end243:                                        ; preds = %if.then238, %do.end221
  %123 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_global_registers, %do.end265)) #4
          to label %if.then260 [label %do.end265], !srcloc !280

if.then260:                                       ; preds = %do.end243
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr245 = getelementptr i8, ptr %124, i32 48
  %125 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %hsotg, align 8
  %127 = ptrtoint ptr %add.ptr245 to i32
  %128 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs, align 4
  %add.ptr.i777 = getelementptr i8, ptr %129, i32 48
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i777) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i778 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %131 = ptrtoint ptr %needs_byte_swap.i778 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %needs_byte_swap.i778, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool.not.i779 = icmp eq i8 %132, 0
  %133 = tail call i32 @llvm.bswap.i32(i32 %130) #4
  %retval.0.i780 = select i1 %tobool.not.i779, i32 %133, i32 %130
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_global_registers.__UNIQUE_ID_ddebug335, ptr noundef %126, ptr noundef nonnull @.str.60, i32 noundef %127, i32 noundef %retval.0.i780) #4
  br label %do.end265

do.end265:                                        ; preds = %if.then260, %do.end243
  %134 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_global_registers, %do.end287)) #4
          to label %if.then282 [label %do.end287], !srcloc !280

if.then282:                                       ; preds = %do.end265
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr267 = getelementptr i8, ptr %135, i32 52
  %136 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hsotg, align 8
  %138 = ptrtoint ptr %add.ptr267 to i32
  %139 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regs, align 4
  %add.ptr.i782 = getelementptr i8, ptr %140, i32 52
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i782) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i783 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %142 = ptrtoint ptr %needs_byte_swap.i783 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %needs_byte_swap.i783, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool.not.i784 = icmp eq i8 %143, 0
  %144 = tail call i32 @llvm.bswap.i32(i32 %141) #4
  %retval.0.i785 = select i1 %tobool.not.i784, i32 %144, i32 %141
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_global_registers.__UNIQUE_ID_ddebug336, ptr noundef %137, ptr noundef nonnull @.str.61, i32 noundef %138, i32 noundef %retval.0.i785) #4
  br label %do.end287

do.end287:                                        ; preds = %if.then282, %do.end265
  %145 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_global_registers, %do.end309)) #4
          to label %if.then304 [label %do.end309], !srcloc !280

if.then304:                                       ; preds = %do.end287
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr289 = getelementptr i8, ptr %146, i32 56
  %147 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %hsotg, align 8
  %149 = ptrtoint ptr %add.ptr289 to i32
  %150 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %regs, align 4
  %add.ptr.i787 = getelementptr i8, ptr %151, i32 56
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i787) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i788 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %153 = ptrtoint ptr %needs_byte_swap.i788 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %needs_byte_swap.i788, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool.not.i789 = icmp eq i8 %154, 0
  %155 = tail call i32 @llvm.bswap.i32(i32 %152) #4
  %retval.0.i790 = select i1 %tobool.not.i789, i32 %155, i32 %152
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_global_registers.__UNIQUE_ID_ddebug337, ptr noundef %148, ptr noundef nonnull @.str.62, i32 noundef %149, i32 noundef %retval.0.i790) #4
  br label %do.end309

do.end309:                                        ; preds = %if.then304, %do.end287
  %156 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_global_registers, %do.end331)) #4
          to label %if.then326 [label %do.end331], !srcloc !280

if.then326:                                       ; preds = %do.end309
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr311 = getelementptr i8, ptr %157, i32 60
  %158 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %hsotg, align 8
  %160 = ptrtoint ptr %add.ptr311 to i32
  %161 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %regs, align 4
  %add.ptr.i792 = getelementptr i8, ptr %162, i32 60
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i792) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i793 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %164 = ptrtoint ptr %needs_byte_swap.i793 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %needs_byte_swap.i793, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool.not.i794 = icmp eq i8 %165, 0
  %166 = tail call i32 @llvm.bswap.i32(i32 %163) #4
  %retval.0.i795 = select i1 %tobool.not.i794, i32 %166, i32 %163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_global_registers.__UNIQUE_ID_ddebug338, ptr noundef %159, ptr noundef nonnull @.str.63, i32 noundef %160, i32 noundef %retval.0.i795) #4
  br label %do.end331

do.end331:                                        ; preds = %if.then326, %do.end309
  %167 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_global_registers, %do.end353)) #4
          to label %if.then348 [label %do.end353], !srcloc !280

if.then348:                                       ; preds = %do.end331
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr333 = getelementptr i8, ptr %168, i32 64
  %169 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %hsotg, align 8
  %171 = ptrtoint ptr %add.ptr333 to i32
  %172 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regs, align 4
  %add.ptr.i797 = getelementptr i8, ptr %173, i32 64
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i797) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i798 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %175 = ptrtoint ptr %needs_byte_swap.i798 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %needs_byte_swap.i798, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool.not.i799 = icmp eq i8 %176, 0
  %177 = tail call i32 @llvm.bswap.i32(i32 %174) #4
  %retval.0.i800 = select i1 %tobool.not.i799, i32 %177, i32 %174
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_global_registers.__UNIQUE_ID_ddebug339, ptr noundef %170, ptr noundef nonnull @.str.64, i32 noundef %171, i32 noundef %retval.0.i800) #4
  br label %do.end353

do.end353:                                        ; preds = %if.then348, %do.end331
  %178 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_global_registers, %do.end375)) #4
          to label %if.then370 [label %do.end375], !srcloc !280

if.then370:                                       ; preds = %do.end353
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr355 = getelementptr i8, ptr %179, i32 68
  %180 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %hsotg, align 8
  %182 = ptrtoint ptr %add.ptr355 to i32
  %183 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %regs, align 4
  %add.ptr.i802 = getelementptr i8, ptr %184, i32 68
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i802) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i803 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %186 = ptrtoint ptr %needs_byte_swap.i803 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %needs_byte_swap.i803, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool.not.i804 = icmp eq i8 %187, 0
  %188 = tail call i32 @llvm.bswap.i32(i32 %185) #4
  %retval.0.i805 = select i1 %tobool.not.i804, i32 %188, i32 %185
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_global_registers.__UNIQUE_ID_ddebug340, ptr noundef %181, ptr noundef nonnull @.str.65, i32 noundef %182, i32 noundef %retval.0.i805) #4
  br label %do.end375

do.end375:                                        ; preds = %if.then370, %do.end353
  %189 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_global_registers, %do.end397)) #4
          to label %if.then392 [label %do.end397], !srcloc !280

if.then392:                                       ; preds = %do.end375
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr377 = getelementptr i8, ptr %190, i32 72
  %191 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %hsotg, align 8
  %193 = ptrtoint ptr %add.ptr377 to i32
  %194 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %regs, align 4
  %add.ptr.i807 = getelementptr i8, ptr %195, i32 72
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i807) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i808 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %197 = ptrtoint ptr %needs_byte_swap.i808 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %needs_byte_swap.i808, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %tobool.not.i809 = icmp eq i8 %198, 0
  %199 = tail call i32 @llvm.bswap.i32(i32 %196) #4
  %retval.0.i810 = select i1 %tobool.not.i809, i32 %199, i32 %196
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_global_registers.__UNIQUE_ID_ddebug341, ptr noundef %192, ptr noundef nonnull @.str.66, i32 noundef %193, i32 noundef %retval.0.i810) #4
  br label %do.end397

do.end397:                                        ; preds = %if.then392, %do.end375
  %200 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_global_registers, %do.end419)) #4
          to label %if.then414 [label %do.end419], !srcloc !280

if.then414:                                       ; preds = %do.end397
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr399 = getelementptr i8, ptr %201, i32 76
  %202 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %hsotg, align 8
  %204 = ptrtoint ptr %add.ptr399 to i32
  %205 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %regs, align 4
  %add.ptr.i812 = getelementptr i8, ptr %206, i32 76
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i812) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i813 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %208 = ptrtoint ptr %needs_byte_swap.i813 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %needs_byte_swap.i813, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool.not.i814 = icmp eq i8 %209, 0
  %210 = tail call i32 @llvm.bswap.i32(i32 %207) #4
  %retval.0.i815 = select i1 %tobool.not.i814, i32 %210, i32 %207
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_global_registers.__UNIQUE_ID_ddebug342, ptr noundef %203, ptr noundef nonnull @.str.67, i32 noundef %204, i32 noundef %retval.0.i815) #4
  br label %do.end419

do.end419:                                        ; preds = %if.then414, %do.end397
  %211 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_global_registers, %do.end441)) #4
          to label %if.then436 [label %do.end441], !srcloc !280

if.then436:                                       ; preds = %do.end419
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr421 = getelementptr i8, ptr %212, i32 80
  %213 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %hsotg, align 8
  %215 = ptrtoint ptr %add.ptr421 to i32
  %216 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %regs, align 4
  %add.ptr.i817 = getelementptr i8, ptr %217, i32 80
  %218 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i817) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i818 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %219 = ptrtoint ptr %needs_byte_swap.i818 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %needs_byte_swap.i818, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %tobool.not.i819 = icmp eq i8 %220, 0
  %221 = tail call i32 @llvm.bswap.i32(i32 %218) #4
  %retval.0.i820 = select i1 %tobool.not.i819, i32 %221, i32 %218
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_global_registers.__UNIQUE_ID_ddebug343, ptr noundef %214, ptr noundef nonnull @.str.68, i32 noundef %215, i32 noundef %retval.0.i820) #4
  br label %do.end441

do.end441:                                        ; preds = %if.then436, %do.end419
  %222 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_global_registers, %do.end463)) #4
          to label %if.then458 [label %do.end463], !srcloc !280

if.then458:                                       ; preds = %do.end441
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr443 = getelementptr i8, ptr %223, i32 84
  %224 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %hsotg, align 8
  %226 = ptrtoint ptr %add.ptr443 to i32
  %227 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %regs, align 4
  %add.ptr.i822 = getelementptr i8, ptr %228, i32 84
  %229 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i822) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i823 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %230 = ptrtoint ptr %needs_byte_swap.i823 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %needs_byte_swap.i823, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool.not.i824 = icmp eq i8 %231, 0
  %232 = tail call i32 @llvm.bswap.i32(i32 %229) #4
  %retval.0.i825 = select i1 %tobool.not.i824, i32 %232, i32 %229
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_global_registers.__UNIQUE_ID_ddebug344, ptr noundef %225, ptr noundef nonnull @.str.69, i32 noundef %226, i32 noundef %retval.0.i825) #4
  br label %do.end463

do.end463:                                        ; preds = %if.then458, %do.end441
  %233 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_global_registers, %do.end485)) #4
          to label %if.then480 [label %do.end485], !srcloc !280

if.then480:                                       ; preds = %do.end463
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr465 = getelementptr i8, ptr %234, i32 88
  %235 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %hsotg, align 8
  %237 = ptrtoint ptr %add.ptr465 to i32
  %238 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %regs, align 4
  %add.ptr.i827 = getelementptr i8, ptr %239, i32 88
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i827) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i828 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %241 = ptrtoint ptr %needs_byte_swap.i828 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %needs_byte_swap.i828, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %242)
  %tobool.not.i829 = icmp eq i8 %242, 0
  %243 = tail call i32 @llvm.bswap.i32(i32 %240) #4
  %retval.0.i830 = select i1 %tobool.not.i829, i32 %243, i32 %240
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_global_registers.__UNIQUE_ID_ddebug345, ptr noundef %236, ptr noundef nonnull @.str.70, i32 noundef %237, i32 noundef %retval.0.i830) #4
  br label %do.end485

do.end485:                                        ; preds = %if.then480, %do.end463
  %244 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_global_registers, %do.end507)) #4
          to label %if.then502 [label %do.end507], !srcloc !280

if.then502:                                       ; preds = %do.end485
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr487 = getelementptr i8, ptr %245, i32 92
  %246 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %hsotg, align 8
  %248 = ptrtoint ptr %add.ptr487 to i32
  %249 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %regs, align 4
  %add.ptr.i832 = getelementptr i8, ptr %250, i32 92
  %251 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i832) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i833 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %252 = ptrtoint ptr %needs_byte_swap.i833 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %needs_byte_swap.i833, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %253)
  %tobool.not.i834 = icmp eq i8 %253, 0
  %254 = tail call i32 @llvm.bswap.i32(i32 %251) #4
  %retval.0.i835 = select i1 %tobool.not.i834, i32 %254, i32 %251
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_global_registers.__UNIQUE_ID_ddebug346, ptr noundef %247, ptr noundef nonnull @.str.71, i32 noundef %248, i32 noundef %retval.0.i835) #4
  br label %do.end507

do.end507:                                        ; preds = %if.then502, %do.end485
  %255 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_global_registers, %do.end529)) #4
          to label %if.then524 [label %do.end529], !srcloc !280

if.then524:                                       ; preds = %do.end507
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr509 = getelementptr i8, ptr %256, i32 256
  %257 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %hsotg, align 8
  %259 = ptrtoint ptr %add.ptr509 to i32
  %260 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %regs, align 4
  %add.ptr.i837 = getelementptr i8, ptr %261, i32 256
  %262 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i837) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i838 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %263 = ptrtoint ptr %needs_byte_swap.i838 to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %needs_byte_swap.i838, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %264)
  %tobool.not.i839 = icmp eq i8 %264, 0
  %265 = tail call i32 @llvm.bswap.i32(i32 %262) #4
  %retval.0.i840 = select i1 %tobool.not.i839, i32 %265, i32 %262
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_global_registers.__UNIQUE_ID_ddebug347, ptr noundef %258, ptr noundef nonnull @.str.72, i32 noundef %259, i32 noundef %retval.0.i840) #4
  br label %do.end529

do.end529:                                        ; preds = %if.then524, %do.end507
  %266 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_dump_global_registers, %do.end551)) #4
          to label %if.then546 [label %do.end551], !srcloc !280

if.then546:                                       ; preds = %do.end529
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr531 = getelementptr i8, ptr %267, i32 3584
  %268 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %hsotg, align 8
  %270 = ptrtoint ptr %add.ptr531 to i32
  %271 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %regs, align 4
  %add.ptr.i842 = getelementptr i8, ptr %272, i32 3584
  %273 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i842) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i843 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %274 = ptrtoint ptr %needs_byte_swap.i843 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %needs_byte_swap.i843, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %275)
  %tobool.not.i844 = icmp eq i8 %275, 0
  %276 = tail call i32 @llvm.bswap.i32(i32 %273) #4
  %retval.0.i845 = select i1 %tobool.not.i844, i32 %276, i32 %273
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_dump_global_registers.__UNIQUE_ID_ddebug348, ptr noundef %269, ptr noundef nonnull @.str.73, i32 noundef %270, i32 noundef %retval.0.i845) #4
  br label %do.end551

do.end551:                                        ; preds = %if.then546, %do.end529
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc2_flush_tx_fifo(ptr nocapture noundef readonly %hsotg, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_flush_tx_fifo.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_flush_tx_fifo, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_flush_tx_fifo.__UNIQUE_ID_ddebug349, ptr noundef %1, ptr noundef nonnull @.str.75, i32 noundef %num) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %do.end
  %i.03.i = phi i32 [ 0, %do.end ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %5 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  %7 = shl i32 %4, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %7, i32 %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %tobool.not.i = icmp sgt i32 %retval.0.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.if.end11_crit_edge

for.body.i.if.end11_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #4
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10000
  br i1 %exitcond.not.i, label %do.end9, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

do.end9:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.74) #7
  %11 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %.pr = load i8, ptr %needs_byte_swap.i.i, align 8
  br label %if.end11

if.end11:                                         ; preds = %do.end9, %for.body.i.if.end11_crit_edge
  %12 = phi i8 [ %.pr, %do.end9 ], [ %6, %for.body.i.if.end11_crit_edge ]
  %shl = shl i32 %num, 6
  %and = and i32 %shl, 1984
  %or = or i32 %and, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i28 = icmp eq i8 %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i28, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #4, !srcloc !284
  br label %for.body.i38.preheader

do.body1.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %15 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %15) #4, !srcloc !284
  br label %for.body.i38.preheader

for.body.i38.preheader:                           ; preds = %do.body1.i, %do.body.i
  br label %for.body.i38

for.body.i38:                                     ; preds = %if.end.i41.for.body.i38_crit_edge, %for.body.i38.preheader
  %i.03.i32 = phi i32 [ %inc.i39, %if.end.i41.for.body.i38_crit_edge ], [ 0, %for.body.i38.preheader ]
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i33 = getelementptr i8, ptr %19, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %21 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i34 = icmp eq i8 %22, 0
  %23 = lshr i32 %20, 24
  %retval.0.i.i35 = select i1 %tobool.not.i.i34, i32 %23, i32 %20
  %and.i36 = and i32 %retval.0.i.i35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %tobool.not.i37 = icmp eq i32 %and.i36, 0
  br i1 %tobool.not.i37, label %for.body.i38.if.end19_crit_edge, label %if.end.i41

for.body.i38.if.end19_crit_edge:                  ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.end.i41:                                       ; preds = %for.body.i38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #4
  %inc.i39 = add nuw nsw i32 %i.03.i32, 1
  %exitcond.not.i40 = icmp eq i32 %inc.i39, 10000
  br i1 %exitcond.not.i40, label %do.end17, label %if.end.i41.for.body.i38_crit_edge

if.end.i41.for.body.i38_crit_edge:                ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i38

do.end17:                                         ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.74) #7
  br label %if.end19

if.end19:                                         ; preds = %do.end17, %for.body.i38.if.end19_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc2_flush_rx_fifo(ptr nocapture noundef readonly %hsotg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_flush_rx_fifo.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_flush_rx_fifo, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_flush_rx_fifo.__UNIQUE_ID_ddebug350, ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.80) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %do.end
  %i.03.i = phi i32 [ 0, %do.end ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %5 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  %7 = shl i32 %4, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %7, i32 %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %tobool.not.i = icmp sgt i32 %retval.0.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.if.end11_crit_edge

for.body.i.if.end11_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #4
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10000
  br i1 %exitcond.not.i, label %do.end9, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

do.end9:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.80) #7
  %11 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %.pr = load i8, ptr %needs_byte_swap.i.i, align 8
  br label %if.end11

if.end11:                                         ; preds = %do.end9, %for.body.i.if.end11_crit_edge
  %12 = phi i8 [ %.pr, %do.end9 ], [ %6, %for.body.i.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i26 = icmp eq i8 %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %14, i32 16
  br i1 %tobool.not.i26, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 16) #4, !srcloc !284
  br label %for.body.i36.preheader

do.body1.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 268435456) #4, !srcloc !284
  br label %for.body.i36.preheader

for.body.i36.preheader:                           ; preds = %do.body1.i, %do.body.i
  br label %for.body.i36

for.body.i36:                                     ; preds = %if.end.i39.for.body.i36_crit_edge, %for.body.i36.preheader
  %i.03.i30 = phi i32 [ %inc.i37, %if.end.i39.for.body.i36_crit_edge ], [ 0, %for.body.i36.preheader ]
  %15 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i31 = getelementptr i8, ptr %16, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i31) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %18 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i32 = icmp eq i8 %19, 0
  %20 = lshr i32 %17, 24
  %retval.0.i.i33 = select i1 %tobool.not.i.i32, i32 %20, i32 %17
  %and.i34 = and i32 %retval.0.i.i33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34)
  %tobool.not.i35 = icmp eq i32 %and.i34, 0
  br i1 %tobool.not.i35, label %for.body.i36.if.end19_crit_edge, label %if.end.i39

for.body.i36.if.end19_crit_edge:                  ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.end.i39:                                       ; preds = %for.body.i36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #4
  %inc.i37 = add nuw nsw i32 %i.03.i30, 1
  %exitcond.not.i38 = icmp eq i32 %inc.i37, 10000
  br i1 %exitcond.not.i38, label %do.end17, label %if.end.i39.for.body.i36_crit_edge

if.end.i39.for.body.i36_crit_edge:                ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i36

do.end17:                                         ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.80) #7
  br label %if.end19

if.end19:                                         ; preds = %do.end17, %for.body.i36.if.end19_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dwc2_is_controller_alive(ptr nocapture noundef readonly %hsotg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %3 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %5 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  %retval.0.i = select i1 %tobool.not.i, i32 %5, i32 %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp = icmp ne i32 %retval.0.i, -1
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc2_enable_global_interrupts(ptr nocapture noundef readonly %hsotg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %3 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %5 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  %retval.0.i = select i1 %tobool.not.i, i32 %5, i32 %2
  %or = or i32 %retval.0.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %or) #4, !srcloc !284
  br label %dwc2_writel.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %8) #4, !srcloc !284
  br label %dwc2_writel.exit

dwc2_writel.exit:                                 ; preds = %do.body1.i, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc2_disable_global_interrupts(ptr nocapture noundef readonly %hsotg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %3 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %5 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  %retval.0.i = select i1 %tobool.not.i, i32 %5, i32 %2
  %and = and i32 %retval.0.i, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %and) #4, !srcloc !284
  br label %dwc2_writel.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %and) #4
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %8) #4, !srcloc !284
  br label %dwc2_writel.exit

dwc2_writel.exit:                                 ; preds = %do.body1.i, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc2_op_mode(ptr nocapture noundef readonly %hsotg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 72
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %3 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %5 = lshr i32 %2, 24
  %retval.0.i = select i1 %tobool.not.i, i32 %5, i32 %2
  %and = and i32 %retval.0.i, 7
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dwc2_hw_is_host(ptr nocapture noundef readonly %hsotg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 72
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %3 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i = icmp eq i8 %4, 0
  %5 = lshr i32 %2, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %5, i32 %2
  %and.i = and i32 %retval.0.i.i, 7
  %6 = add nsw i32 %and.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %7 = icmp ult i32 %6, 2
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dwc2_hw_is_device(ptr nocapture noundef readonly %hsotg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 72
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %3 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i = icmp eq i8 %4, 0
  %5 = lshr i32 %2, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %5, i32 %2
  %and.i = and i32 %retval.0.i.i, 7
  %6 = add nsw i32 %and.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %7 = icmp ult i32 %6, 2
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc2_init_fs_ls_pclk_sel(ptr nocapture noundef readonly %hsotg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hs_phy_type = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %hs_phy_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %hs_phy_type, align 8
  %1 = and i32 %bf.load, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864, i32 %1)
  %2 = icmp eq i32 %1, 36864
  br i1 %2, label %land.lhs.true6, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

land.lhs.true6:                                   ; preds = %entry
  %ulpi_fs_ls = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 10
  %3 = ptrtoint ptr %ulpi_fs_ls to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ulpi_fs_ls, align 1, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %land.lhs.true6.lor.lhs.false_crit_edge, label %land.lhs.true6.do.body_crit_edge

land.lhs.true6.do.body_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

land.lhs.true6.lor.lhs.false_crit_edge:           ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true6.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %phy_type = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %phy_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %phy_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp8 = icmp eq i8 %6, 0
  %spec.select = zext i1 %cmp8 to i32
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false, %land.lhs.true6.do.body_crit_edge
  %val.0 = phi i32 [ 1, %land.lhs.true6.do.body_crit_edge ], [ %spec.select, %lor.lhs.false ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_init_fs_ls_pclk_sel.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_init_fs_ls_pclk_sel, %do.end)) #4
          to label %if.then14 [label %do.end], !srcloc !280

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_init_fs_ls_pclk_sel.__UNIQUE_ID_ddebug351, ptr noundef %8, ptr noundef nonnull @.str.85, i32 noundef %val.0) #4
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 1024
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %12 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  %14 = tail call i32 @llvm.bswap.i32(i32 %11) #4
  %retval.0.i26 = select i1 %tobool.not.i, i32 %14, i32 %11
  %and = and i32 %retval.0.i26, -4
  %or = or i32 %and, %val.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %16, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %or) #4, !srcloc !284
  br label %dwc2_writel.exit

do.body1.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %17 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %19, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %17) #4, !srcloc !284
  br label %dwc2_writel.exit

dwc2_writel.exit:                                 ; preds = %do.body1.i, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc2_phy_init(ptr noundef %hsotg, i1 noundef zeroext %select_phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %speed = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %speed, align 1
  %.off = add i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %phy_type = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %phy_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %phy_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp10 = icmp eq i8 %3, 0
  br i1 %cmp10, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call = tail call fastcc i32 @dwc2_fs_phy_init(ptr noundef %hsotg, i1 noundef zeroext %select_phy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.then.if.end23_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call15 = tail call fastcc i32 @dwc2_hs_phy_init(ptr noundef %hsotg, i1 noundef zeroext %select_phy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18:                                         ; preds = %if.else
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %7 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.i = icmp eq i8 %8, 0
  %9 = lshr i32 %6, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %9, i32 %6
  %and.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not.not = icmp eq i32 %and.i, 0
  br i1 %tobool20.not.not, label %if.then21, label %if.end18.if.end23_crit_edge

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then21:                                        ; preds = %if.end18
  %phy_type.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %phy_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp.not.i = icmp eq i8 %11, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.then21.if.end23_crit_edge

if.then21.if.end23_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.end.i:                                         ; preds = %if.then21
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i78 = getelementptr i8, ptr %13, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i78) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %15 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i80 = icmp eq i8 %16, 0
  %17 = tail call i32 @llvm.bswap.i32(i32 %14) #4
  %retval.0.i.i81 = select i1 %tobool.not.i.i80, i32 %17, i32 %14
  %and.i82 = and i32 %retval.0.i.i81, -15361
  %phy_utmi_width.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %phy_utmi_width.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %phy_utmi_width.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %19)
  %cmp4.i = icmp eq i8 %19, 16
  %usbcfg.0.v.i = select i1 %cmp4.i, i32 5120, i32 9216
  %usbcfg.0.i = or i32 %and.i82, %usbcfg.0.v.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i80, label %do.body1.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %21, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %usbcfg.0.i) #4, !srcloc !284
  br label %if.end23

do.body1.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %22 = tail call i32 @llvm.bswap.i32(i32 %usbcfg.0.i) #4
  %23 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %24, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %22) #4, !srcloc !284
  br label %if.end23

if.end23:                                         ; preds = %do.body1.i.i, %do.body.i.i, %if.then21.if.end23_crit_edge, %if.end18.if.end23_crit_edge, %if.then.if.end23_crit_edge
  %hs_phy_type = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %hs_phy_type to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load = load i32, ptr %hs_phy_type, align 8
  %26 = and i32 %bf.load, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864, i32 %26)
  %27 = icmp eq i32 %26, 36864
  br i1 %27, label %land.lhs.true33, label %if.end23.if.else48_crit_edge

if.end23.if.else48_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else48

land.lhs.true33:                                  ; preds = %if.end23
  %ulpi_fs_ls = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 10
  %28 = ptrtoint ptr %ulpi_fs_ls to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ulpi_fs_ls, align 1, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool35.not = icmp eq i8 %29, 0
  br i1 %tobool35.not, label %land.lhs.true33.if.else48_crit_edge, label %do.body

land.lhs.true33.if.else48_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else48

do.body:                                          ; preds = %land.lhs.true33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_phy_init.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_phy_init, %do.end)) #4
          to label %if.then44 [label %do.end], !srcloc !280

if.then44:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_phy_init.__UNIQUE_ID_ddebug357, ptr noundef %31, ptr noundef nonnull @.str.87) #4
  br label %do.end

do.end:                                           ; preds = %if.then44, %do.body
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 12
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %35 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i = icmp eq i8 %36, 0
  %37 = tail call i32 @llvm.bswap.i32(i32 %34) #4
  %retval.0.i83 = select i1 %tobool.not.i, i32 %37, i32 %34
  %or47 = or i32 %retval.0.i83, 655360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %39, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %or47) #4, !srcloc !284
  br label %cleanup

do.body1.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %40 = tail call i32 @llvm.bswap.i32(i32 %or47) #4
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %42, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %40) #4, !srcloc !284
  br label %cleanup

if.else48:                                        ; preds = %land.lhs.true33.if.else48_crit_edge, %if.end23.if.else48_crit_edge
  %regs.i89 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %43 = ptrtoint ptr %regs.i89 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i89, align 4
  %add.ptr.i90 = getelementptr i8, ptr %44, i32 12
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i91 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %46 = ptrtoint ptr %needs_byte_swap.i91 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %needs_byte_swap.i91, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i92 = icmp eq i8 %47, 0
  %48 = tail call i32 @llvm.bswap.i32(i32 %45) #4
  %retval.0.i93 = select i1 %tobool.not.i92, i32 %48, i32 %45
  %and50 = and i32 %retval.0.i93, -655361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i92, label %do.body1.i101, label %do.body.i98

do.body.i98:                                      ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %regs.i89 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i89, align 4
  %add.ptr.i97 = getelementptr i8, ptr %50, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 %and50) #4, !srcloc !284
  br label %cleanup

do.body1.i101:                                    ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #6
  %51 = tail call i32 @llvm.bswap.i32(i32 %and50) #4
  %52 = ptrtoint ptr %regs.i89 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i89, align 4
  %add.ptr4.i100 = getelementptr i8, ptr %53, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i100, i32 %51) #4, !srcloc !284
  br label %cleanup

cleanup:                                          ; preds = %do.body1.i101, %do.body.i98, %do.body1.i, %do.body.i, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call15, %if.else.cleanup_crit_edge ], [ 0, %do.body.i ], [ 0, %do.body1.i ], [ 0, %do.body.i98 ], [ 0, %do.body1.i101 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwc2_fs_phy_init(ptr noundef %hsotg, i1 noundef zeroext %select_phy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %select_phy, label %do.body, label %entry.if.end48_crit_edge

entry.if.end48_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_fs_phy_init.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_fs_phy_init, %do.end)) #4
          to label %if.then7 [label %do.end], !srcloc !280

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_fs_phy_init.__UNIQUE_ID_ddebug352, ptr noundef %1, ptr noundef nonnull @.str.99) #4
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %5 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %7 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  %retval.0.i122 = select i1 %tobool.not.i, i32 %7, i32 %4
  %and = and i32 %retval.0.i122, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.then10, label %do.end.if.end19_crit_edge

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then10:                                        ; preds = %do.end
  %or = or i32 %retval.0.i122, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 %or) #4, !srcloc !284
  br label %dwc2_writel.exit

do.body1.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %12, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %10) #4, !srcloc !284
  br label %dwc2_writel.exit

dwc2_writel.exit:                                 ; preds = %do.body1.i, %do.body.i
  %call11 = tail call i32 @dwc2_core_reset(ptr noundef %hsotg, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %dwc2_writel.exit.if.end19_crit_edge, label %do.end16

dwc2_writel.exit.if.end19_crit_edge:              ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

do.end16:                                         ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.98) #7
  br label %cleanup

if.end19:                                         ; preds = %dwc2_writel.exit.if.end19_crit_edge, %do.end.if.end19_crit_edge
  %activate_stm_fs_transceiver = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 23
  %15 = ptrtoint ptr %activate_stm_fs_transceiver to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %activate_stm_fs_transceiver, align 1, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool20.not = icmp eq i8 %16, 0
  br i1 %tobool20.not, label %if.end19.if.end48_crit_edge, label %if.then21

if.end19.if.end48_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

if.then21:                                        ; preds = %if.end19
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i128 = getelementptr i8, ptr %18, i32 56
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i128) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %20 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i130 = icmp eq i8 %21, 0
  %22 = tail call i32 @llvm.bswap.i32(i32 %19) #4
  %retval.0.i131 = select i1 %tobool.not.i130, i32 %22, i32 %19
  %and23 = and i32 %retval.0.i131, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body26, label %if.then21.if.end48_crit_edge

if.then21.if.end48_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

do.body26:                                        ; preds = %if.then21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_fs_phy_init.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_fs_phy_init, %do.end44)) #4
          to label %if.then40 [label %do.end44], !srcloc !280

if.then40:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_fs_phy_init.__UNIQUE_ID_ddebug353, ptr noundef %24, ptr noundef nonnull @.str.101) #4
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %do.body26
  %or45 = or i32 %retval.0.i131, 65536
  %25 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i133 = icmp eq i8 %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i133, label %do.body1.i139, label %do.body.i136

do.body.i136:                                     ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %add.ptr.i135 = getelementptr i8, ptr %28, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135, i32 %or45) #4, !srcloc !284
  br label %if.end48

do.body1.i139:                                    ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #6
  %29 = tail call i32 @llvm.bswap.i32(i32 %or45) #4
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i138 = getelementptr i8, ptr %31, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i138, i32 %29) #4, !srcloc !284
  br label %if.end48

if.end48:                                         ; preds = %do.body1.i139, %do.body.i136, %if.then21.if.end48_crit_edge, %if.end19.if.end48_crit_edge, %entry.if.end48_crit_edge
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %32 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 20
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %35 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i.i = icmp eq i8 %36, 0
  %37 = lshr i32 %34, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %37, i32 %34
  %and.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool50.not = icmp eq i32 %and.i, 0
  br i1 %tobool50.not, label %if.end48.if.end52_crit_edge, label %if.then51

if.end48.if.end52_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dwc2_init_fs_ls_pclk_sel(ptr noundef %hsotg)
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end48.if.end52_crit_edge
  %i2c_enable = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 8
  %38 = ptrtoint ptr %i2c_enable to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %i2c_enable, align 1, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool54.not = icmp eq i8 %39, 0
  br i1 %tobool54.not, label %if.end52.cleanup_crit_edge, label %do.body56

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body56:                                        ; preds = %if.end52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_fs_phy_init.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_fs_phy_init, %do.end74)) #4
          to label %if.then70 [label %do.end74], !srcloc !280

if.then70:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_fs_phy_init.__UNIQUE_ID_ddebug354, ptr noundef %41, ptr noundef nonnull @.str.102) #4
  br label %do.end74

do.end74:                                         ; preds = %if.then70, %do.body56
  %42 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i142 = getelementptr i8, ptr %43, i32 12
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i142) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %45 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i144 = icmp eq i8 %46, 0
  %47 = tail call i32 @llvm.bswap.i32(i32 %44) #4
  %retval.0.i145 = select i1 %tobool.not.i144, i32 %47, i32 %44
  %or76 = or i32 %retval.0.i145, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i144, label %do.body1.i153, label %do.body.i150

do.body.i150:                                     ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i149 = getelementptr i8, ptr %49, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149, i32 %or76) #4, !srcloc !284
  br label %dwc2_writel.exit154

do.body1.i153:                                    ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #6
  %50 = tail call i32 @llvm.bswap.i32(i32 %or76) #4
  %51 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i152 = getelementptr i8, ptr %52, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i152, i32 %50) #4, !srcloc !284
  br label %dwc2_writel.exit154

dwc2_writel.exit154:                              ; preds = %do.body1.i153, %do.body.i150
  %53 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i156 = getelementptr i8, ptr %54, i32 48
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i156) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %56 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i158 = icmp eq i8 %57, 0
  %58 = tail call i32 @llvm.bswap.i32(i32 %55) #4
  %retval.0.i159 = select i1 %tobool.not.i158, i32 %58, i32 %55
  %and78 = and i32 %retval.0.i159, -209715201
  %or79 = or i32 %and78, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i158, label %do.body1.i167, label %do.body.i164

do.body.i164:                                     ; preds = %dwc2_writel.exit154
  call void @__sanitizer_cov_trace_pc() #6
  %59 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i163 = getelementptr i8, ptr %60, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163, i32 %or79) #4, !srcloc !284
  br label %dwc2_writel.exit168

do.body1.i167:                                    ; preds = %dwc2_writel.exit154
  call void @__sanitizer_cov_trace_pc() #6
  %61 = tail call i32 @llvm.bswap.i32(i32 %or79) #4
  %62 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i166 = getelementptr i8, ptr %63, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i166, i32 %61) #4, !srcloc !284
  br label %dwc2_writel.exit168

dwc2_writel.exit168:                              ; preds = %do.body1.i167, %do.body.i164
  %or81 = or i32 %and78, 75497472
  %64 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i170 = icmp eq i8 %65, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i170, label %do.body1.i176, label %do.body.i173

do.body.i173:                                     ; preds = %dwc2_writel.exit168
  call void @__sanitizer_cov_trace_pc() #6
  %66 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i172 = getelementptr i8, ptr %67, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172, i32 %or81) #4, !srcloc !284
  br label %cleanup

do.body1.i176:                                    ; preds = %dwc2_writel.exit168
  call void @__sanitizer_cov_trace_pc() #6
  %68 = tail call i32 @llvm.bswap.i32(i32 %or81) #4
  %69 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i175 = getelementptr i8, ptr %70, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i175, i32 %68) #4, !srcloc !284
  br label %cleanup

cleanup:                                          ; preds = %do.body1.i176, %do.body.i173, %if.end52.cleanup_crit_edge, %do.end16
  %retval.0 = phi i32 [ %call11, %do.end16 ], [ 0, %if.end52.cleanup_crit_edge ], [ 0, %do.body.i173 ], [ 0, %do.body1.i176 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwc2_hs_phy_init(ptr noundef %hsotg, i1 noundef zeroext %select_phy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %select_phy, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !282
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %3 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %5 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  %retval.0.i90 = select i1 %tobool.not.i, i32 %5, i32 %2
  %phy_type = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %phy_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %phy_type, align 2
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.109)
  switch i8 %7, label %sw.epilog.thread [
    i8 2, label %do.body
    i8 1, label %do.body21
  ]

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hs_phy_init.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hs_phy_init, %do.end)) #4
          to label %if.then8 [label %do.end], !srcloc !280

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hs_phy_init.__UNIQUE_ID_ddebug355, ptr noundef %10, ptr noundef nonnull @.str.104) #4
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %or = and i32 %retval.0.i90, -153
  %phy_ulpi_ddr = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %phy_ulpi_ddr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %phy_ulpi_ddr, align 1, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool11.not = icmp eq i8 %12, 0
  %spec.select.v = select i1 %tobool11.not, i32 16, i32 144
  %spec.select = or i32 %spec.select.v, %or
  %oc_disable = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 36
  %13 = ptrtoint ptr %oc_disable to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %oc_disable, align 1, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool16.not = icmp eq i8 %14, 0
  %or18 = or i32 %spec.select, 18874368
  %spec.select86 = select i1 %tobool16.not, i32 %spec.select, i32 %or18
  br label %sw.epilog

do.body21:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hs_phy_init.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hs_phy_init, %do.end39)) #4
          to label %if.then35 [label %do.end39], !srcloc !280

if.then35:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hs_phy_init.__UNIQUE_ID_ddebug356, ptr noundef %16, ptr noundef nonnull @.str.105) #4
  br label %do.end39

do.end39:                                         ; preds = %if.then35, %do.body21
  %and40 = and i32 %retval.0.i90, -25
  %phy_utmi_width = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %phy_utmi_width to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %phy_utmi_width, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %18)
  %cmp = icmp eq i8 %18, 16
  %or45 = or i32 %and40, 8
  %spec.select85 = select i1 %cmp, i32 %or45, i32 %and40
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.106) #7
  br label %cleanup

sw.epilog:                                        ; preds = %do.end39, %do.end
  %usbcfg.1 = phi i32 [ %spec.select85, %do.end39 ], [ %spec.select86, %do.end ]
  call void @__sanitizer_cov_trace_cmp4(i32 %usbcfg.1, i32 %retval.0.i90)
  %cmp51.not = icmp eq i32 %usbcfg.1, %retval.0.i90
  br i1 %cmp51.not, label %sw.epilog.cleanup_crit_edge, label %if.then53

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then53:                                        ; preds = %sw.epilog
  %21 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %needs_byte_swap.i, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i92 = icmp eq i8 %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i92, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr.i94 = getelementptr i8, ptr %24, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %usbcfg.1) #4, !srcloc !284
  br label %dwc2_writel.exit

do.body1.i:                                       ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %usbcfg.1) #4
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %27, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %25) #4, !srcloc !284
  br label %dwc2_writel.exit

dwc2_writel.exit:                                 ; preds = %do.body1.i, %do.body.i
  %call54 = tail call i32 @dwc2_core_reset(ptr noundef %hsotg, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %dwc2_writel.exit.cleanup_crit_edge, label %do.end59

dwc2_writel.exit.cleanup_crit_edge:               ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end59:                                         ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.103) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %dwc2_writel.exit.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.epilog.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call54, %do.end59 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %dwc2_writel.exit.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %sw.epilog.thread ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !219, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !256, !257, !259, !260, !261, !263, !264, !266, !267, !268, !270}
!llvm.module.flags = !{!271, !272, !273, !274, !275, !276, !277, !278}
!llvm.ident = !{!279}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/dwc2/core.c", i32 71, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @dwc2_backup_global_registers.__UNIQUE_ID_ddebug295, !1, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/dwc2/core.c", i32 103, i32 2}
!8 = !{ptr @dwc2_restore_global_registers.__UNIQUE_ID_ddebug296, !7, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/usb/dwc2/core.c", i32 108, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @dwc2_restore_global_registers._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @dwc2_restore_global_registers._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/dwc2/core.c", i32 297, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @dwc2_hib_restore_common.__UNIQUE_ID_ddebug298, !16, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/dwc2/core.c", i32 301, i32 3}
!21 = !{ptr @dwc2_hib_restore_common.__UNIQUE_ID_ddebug299, !20, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/dwc2/core.c", i32 428, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @dwc2_core_reset.__UNIQUE_ID_ddebug302, !23, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/dwc2/core.c", i32 459, i32 4}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @dwc2_core_reset._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @dwc2_core_reset._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/dwc2/core.c", i32 466, i32 4}
!33 = !{ptr @dwc2_core_reset._entry.15, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @dwc2_core_reset._entry_ptr.17, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/dwc2/core.c", i32 494, i32 3}
!37 = !{ptr @dwc2_core_reset._entry.18, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @dwc2_core_reset._entry_ptr.20, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/dwc2/core.c", i32 538, i32 2}
!41 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @dwc2_force_mode.__UNIQUE_ID_ddebug303, !40, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!43 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/dwc2/core.c", i32 620, i32 3}
!47 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @dwc2_force_dr_mode._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @dwc2_force_dr_mode._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/dwc2/core.c", i32 634, i32 3}
!52 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @dwc2_enable_acg.__UNIQUE_ID_ddebug305, !51, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/dwc2/core.c", i32 654, i32 2}
!56 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug306, !55, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/dwc2/core.c", i32 656, i32 2}
!60 = !{ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug307, !59, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/dwc2/core.c", i32 659, i32 2}
!63 = !{ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug308, !62, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/dwc2/core.c", i32 662, i32 2}
!66 = !{ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug309, !65, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/dwc2/core.c", i32 665, i32 2}
!69 = !{ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug310, !68, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/dwc2/core.c", i32 668, i32 2}
!72 = !{ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug311, !71, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/dwc2/core.c", i32 671, i32 2}
!75 = !{ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug312, !74, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/dwc2/core.c", i32 675, i32 3}
!78 = !{ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug313, !77, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/dwc2/core.c", i32 680, i32 2}
!81 = !{ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug314, !80, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/dwc2/core.c", i32 684, i32 3}
!84 = !{ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug315, !83, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/dwc2/core.c", i32 686, i32 3}
!87 = !{ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug316, !86, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/dwc2/core.c", i32 689, i32 3}
!90 = !{ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug317, !89, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/dwc2/core.c", i32 692, i32 3}
!93 = !{ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug318, !92, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/dwc2/core.c", i32 695, i32 3}
!96 = !{ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug319, !95, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/dwc2/core.c", i32 698, i32 3}
!99 = !{ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug320, !98, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/dwc2/core.c", i32 701, i32 3}
!102 = !{ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug321, !101, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/dwc2/core.c", i32 705, i32 4}
!105 = !{ptr @dwc2_dump_host_registers.__UNIQUE_ID_ddebug322, !104, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/dwc2/core.c", i32 726, i32 2}
!108 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug323, !107, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/dwc2/core.c", i32 728, i32 2}
!112 = !{ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug324, !111, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/dwc2/core.c", i32 731, i32 2}
!115 = !{ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug325, !114, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/dwc2/core.c", i32 734, i32 2}
!118 = !{ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug326, !117, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/dwc2/core.c", i32 737, i32 2}
!121 = !{ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug327, !120, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!122 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/dwc2/core.c", i32 740, i32 2}
!124 = !{ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug328, !123, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!125 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/usb/dwc2/core.c", i32 743, i32 2}
!127 = !{ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug329, !126, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!128 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/dwc2/core.c", i32 746, i32 2}
!130 = !{ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug330, !129, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!131 = !{ptr @.str.56, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/dwc2/core.c", i32 749, i32 2}
!133 = !{ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug331, !132, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/usb/dwc2/core.c", i32 752, i32 2}
!136 = !{ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug332, !135, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!137 = !{ptr @.str.58, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/dwc2/core.c", i32 755, i32 2}
!139 = !{ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug333, !138, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/dwc2/core.c", i32 758, i32 2}
!142 = !{ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug334, !141, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!143 = !{ptr @.str.60, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/dwc2/core.c", i32 761, i32 2}
!145 = !{ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug335, !144, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/usb/dwc2/core.c", i32 764, i32 2}
!148 = !{ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug336, !147, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!149 = !{ptr @.str.62, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/dwc2/core.c", i32 767, i32 2}
!151 = !{ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug337, !150, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!152 = !{ptr @.str.63, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/dwc2/core.c", i32 770, i32 2}
!154 = !{ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug338, !153, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!155 = !{ptr @.str.64, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/dwc2/core.c", i32 773, i32 2}
!157 = !{ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug339, !156, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!158 = !{ptr @.str.65, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/dwc2/core.c", i32 776, i32 2}
!160 = !{ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug340, !159, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!161 = !{ptr @.str.66, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/usb/dwc2/core.c", i32 779, i32 2}
!163 = !{ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug341, !162, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!164 = !{ptr @.str.67, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/usb/dwc2/core.c", i32 782, i32 2}
!166 = !{ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug342, !165, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!167 = !{ptr @.str.68, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/usb/dwc2/core.c", i32 785, i32 2}
!169 = !{ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug343, !168, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!170 = !{ptr @.str.69, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/dwc2/core.c", i32 788, i32 2}
!172 = !{ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug344, !171, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!173 = !{ptr @.str.70, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/usb/dwc2/core.c", i32 791, i32 2}
!175 = !{ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug345, !174, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!176 = !{ptr @.str.71, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/usb/dwc2/core.c", i32 794, i32 2}
!178 = !{ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug346, !177, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!179 = !{ptr @.str.72, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/usb/dwc2/core.c", i32 797, i32 2}
!181 = !{ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug347, !180, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!182 = !{ptr @.str.73, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/dwc2/core.c", i32 801, i32 2}
!184 = !{ptr @dwc2_dump_global_registers.__UNIQUE_ID_ddebug348, !183, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!185 = !{ptr @.str.74, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/usb/dwc2/core.c", i32 816, i32 2}
!187 = !{ptr @.str.75, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @dwc2_flush_tx_fifo.__UNIQUE_ID_ddebug349, !186, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!189 = !{ptr @.str.76, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/usb/dwc2/core.c", i32 820, i32 3}
!191 = !{ptr @dwc2_flush_tx_fifo._entry, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @dwc2_flush_tx_fifo._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.78, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/usb/dwc2/core.c", i32 828, i32 3}
!195 = !{ptr @dwc2_flush_tx_fifo._entry.77, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @dwc2_flush_tx_fifo._entry_ptr.79, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.80, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/usb/dwc2/core.c", i32 844, i32 2}
!199 = !{ptr @dwc2_flush_rx_fifo.__UNIQUE_ID_ddebug350, !198, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!200 = !{ptr @dwc2_flush_rx_fifo._entry, !201, !"_entry", i1 false, i1 false}
!201 = !{!"../drivers/usb/dwc2/core.c", i32 848, i32 3}
!202 = !{ptr @dwc2_flush_rx_fifo._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.82, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/usb/dwc2/core.c", i32 856, i32 3}
!205 = !{ptr @dwc2_flush_rx_fifo._entry.81, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @dwc2_flush_rx_fifo._entry_ptr.83, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.84, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/usb/dwc2/core.c", i32 1001, i32 2}
!209 = !{ptr @.str.85, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @dwc2_init_fs_ls_pclk_sel.__UNIQUE_ID_ddebug351, !208, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!211 = !{ptr @.str.86, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/usb/dwc2/core.c", i32 1178, i32 3}
!213 = !{ptr @.str.87, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @dwc2_phy_init.__UNIQUE_ID_ddebug357, !212, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!215 = !{ptr @__UNIQUE_ID_description358, !216, !"__UNIQUE_ID_description358", i1 false, i1 false}
!216 = !{!"../drivers/usb/dwc2/core.c", i32 1193, i32 1}
!217 = !{ptr @__UNIQUE_ID_author359, !218, !"__UNIQUE_ID_author359", i1 false, i1 false}
!218 = !{!"../drivers/usb/dwc2/core.c", i32 1194, i32 1}
!219 = !{ptr @__UNIQUE_ID_file360, !220, !"__UNIQUE_ID_file360", i1 false, i1 false}
!220 = !{!"../drivers/usb/dwc2/core.c", i32 1195, i32 1}
!221 = !{ptr @__UNIQUE_ID_license361, !220, !"__UNIQUE_ID_license361", i1 false, i1 false}
!222 = !{ptr @.str.88, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/usb/dwc2/core.c", i32 188, i32 2}
!224 = !{ptr @.str.89, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @dwc2_restore_essential_regs.__UNIQUE_ID_ddebug297, !223, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!226 = !{ptr @.str.90, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/usb/dwc2/core.c", i32 323, i32 2}
!228 = !{ptr @.str.91, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @dwc2_wait_for_mode.__UNIQUE_ID_ddebug300, !227, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!230 = !{ptr @.str.92, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/usb/dwc2/core.c", i32 332, i32 4}
!232 = !{ptr @dwc2_wait_for_mode.__UNIQUE_ID_ddebug301, !231, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!233 = !{ptr @.str.93, !231, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.94, !231, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @.str.95, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/usb/dwc2/core.c", i32 341, i32 4}
!237 = !{ptr @dwc2_wait_for_mode._entry, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @dwc2_wait_for_mode._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.96, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/usb/dwc2/core.c", i32 587, i32 2}
!241 = !{ptr @.str.97, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @dwc2_clear_force_mode.__UNIQUE_ID_ddebug304, !240, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!243 = !{ptr @.str.98, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/usb/dwc2/core.c", i32 1018, i32 3}
!245 = !{ptr @.str.99, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @dwc2_fs_phy_init.__UNIQUE_ID_ddebug352, !244, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!247 = !{ptr @.str.100, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/usb/dwc2/core.c", i32 1029, i32 5}
!249 = !{ptr @dwc2_fs_phy_init._entry, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @dwc2_fs_phy_init._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.101, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/usb/dwc2/core.c", i32 1038, i32 5}
!253 = !{ptr @dwc2_fs_phy_init.__UNIQUE_ID_ddebug353, !252, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!254 = !{ptr @.str.102, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/usb/dwc2/core.c", i32 1058, i32 3}
!256 = !{ptr @dwc2_fs_phy_init.__UNIQUE_ID_ddebug354, !255, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!257 = !{ptr @.str.103, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/usb/dwc2/core.c", i32 1097, i32 3}
!259 = !{ptr @.str.104, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @dwc2_hs_phy_init.__UNIQUE_ID_ddebug355, !258, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!261 = !{ptr @.str.105, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/usb/dwc2/core.c", i32 1110, i32 3}
!263 = !{ptr @dwc2_hs_phy_init.__UNIQUE_ID_ddebug356, !262, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!264 = !{ptr @.str.106, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/usb/dwc2/core.c", i32 1116, i32 3}
!266 = !{ptr @dwc2_hs_phy_init._entry, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @dwc2_hs_phy_init._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @dwc2_hs_phy_init._entry.107, !269, !"_entry", i1 false, i1 false}
!269 = !{!"../drivers/usb/dwc2/core.c", i32 1126, i32 4}
!270 = !{ptr @dwc2_hs_phy_init._entry_ptr.108, !269, !"_entry_ptr", i1 false, i1 false}
!271 = !{i32 1, !"wchar_size", i32 2}
!272 = !{i32 1, !"min_enum_size", i32 4}
!273 = !{i32 8, !"branch-target-enforcement", i32 0}
!274 = !{i32 8, !"sign-return-address", i32 0}
!275 = !{i32 8, !"sign-return-address-all", i32 0}
!276 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!277 = !{i32 7, !"uwtable", i32 1}
!278 = !{i32 7, !"frame-pointer", i32 2}
!279 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!280 = !{i64 2148724510, i64 2148724515, i64 2148724528, i64 2148724572, i64 2148724606, i64 2148724627}
!281 = !{i64 4649305}
!282 = !{i64 2155954901}
!283 = !{i8 0, i8 2}
!284 = !{i64 4648887}
!285 = !{i64 1147398, i64 1147425}
!286 = !{i64 1148093, i64 1148120, i64 1148153, i64 1148174, i64 1148201, i64 1148227}
!287 = !{!"branch_weights", i32 1, i32 2000}
