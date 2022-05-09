; ModuleID = '/llk/IR_all_yes/drivers/usb/chipidea/debug.c_pt.bc'
source_filename = "../drivers/usb/chipidea/debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.ci_hdrc = type { ptr, %struct.spinlock, %struct.hw_bank, i32, [2 x ptr], i32, i8, %struct.usb_otg, %struct.otg_fsm, %struct.hrtimer, [12 x i64], i32, i32, ptr, %struct.work_struct, ptr, ptr, ptr, %struct.usb_gadget, ptr, i32, i32, [32 x %struct.ci_hw_ep], i32, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, ptr, %struct.ulpi_ops, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i32 }
%struct.hw_bank = type { i32, i32, ptr, ptr, ptr, i32, [38 x ptr] }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.otg_fsm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.mutex, ptr, %struct.delayed_work, i8, i8 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.ci_hw_ep = type { %struct.usb_ep, i8, i8, i8, [16 x i8], %struct.anon.78, i32, ptr, ptr, ptr, ptr }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.anon.78 = type { %struct.list_head, ptr, i32 }
%struct.ulpi_ops = type { ptr, ptr }
%struct.ci_hdrc_platform_data = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, %struct.usb_otg_caps, i8, i32, i32, i32, i32, %struct.ci_hdrc_cable, %struct.ci_hdrc_cable, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.ci_hdrc_cable = type { i8, i8, i8, ptr, ptr, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.82 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.td_node = type { %struct.list_head, i32, ptr, i32 }
%struct.ci_role_driver = type { ptr, ptr, ptr, ptr }

@usb_debug_root = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@ci_device_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ci_device_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"port_test\00", [22 x i8] zeroinitializer }, align 32
@ci_port_test_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @ci_port_test_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ci_port_test_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qheads\00", [25 x i8] zeroinitializer }, align 32
@ci_qheads_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ci_qheads_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"requests\00", [23 x i8] zeroinitializer }, align 32
@ci_requests_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ci_requests_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"otg\00", [28 x i8] zeroinitializer }, align 32
@ci_otg_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ci_otg_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"role\00", [27 x i8] zeroinitializer }, align 32
@ci_role_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @ci_role_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ci_role_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"registers\00", [22 x i8] zeroinitializer }, align 32
@ci_registers_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ci_registers_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"speed             = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max_speed         = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"is_otg            = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"is_a_peripheral   = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"b_hnp_enable      = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"a_hnp_support     = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"a_alt_hnp_support = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"name              = %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gadget function   = %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gadget max speed  = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mode = %u\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"not in gadget mode\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"EP=%02i: RX=%08X TX=%08X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c" %04X:    %08X    %08X\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EP=%02i: TD=%08X %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" %04X:    %08X\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OTG state: %s\0A\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"a_bus_drop: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"a_bus_req: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"a_srp_det: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"a_vbus_vld: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"b_conn: %d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adp_change: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"power_up: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"a_bus_resume: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"a_bus_suspend: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a_conn: %d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"b_bus_req: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"b_bus_suspend: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"b_se0_srp: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"b_ssend_srp: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"b_sess_vld: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"b_srp_done: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"drv_vbus: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"loc_conn: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"loc_sof: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adp_prb: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"id: %d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"protocol: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"USBINTR reg: %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"USBSTS reg: %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"USBMODE reg: %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"USBCMD reg: %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PORTSC reg: %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"OTGSC reg: %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 349, i32 22 }
@___asan_gen_.63 = private unnamed_addr constant [15 x i8] c"ci_device_fops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 48, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 350, i32 22 }
@___asan_gen_.69 = private unnamed_addr constant [18 x i8] c"ci_port_test_fops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 110, i32 37 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 351, i32 22 }
@___asan_gen_.75 = private unnamed_addr constant [15 x i8] c"ci_qheads_fops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 148, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 352, i32 22 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"ci_requests_fops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 185, i32 1 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 355, i32 23 }
@___asan_gen_.87 = private unnamed_addr constant [12 x i8] c"ci_otg_fops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 248, i32 1 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 357, i32 22 }
@___asan_gen_.93 = private unnamed_addr constant [13 x i8] c"ci_role_fops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 296, i32 37 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 358, i32 22 }
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"ci_registers_fops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 335, i32 1 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 29, i32 16 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 30, i32 16 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 31, i32 16 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 32, i32 16 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 33, i32 16 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 34, i32 16 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 35, i32 16 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 36, i32 16 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 37, i32 37 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 42, i32 16 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 44, i32 16 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 90, i32 18 }
@___asan_gen_.139 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 156, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 65, i32 16 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 128, i32 17 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 137, i32 17 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 140, i32 18 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 170, i32 19 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 174, i32 9 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 174, i32 16 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 177, i32 20 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 198, i32 16 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 202, i32 16 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 204, i32 16 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 206, i32 16 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 208, i32 16 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 210, i32 16 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 212, i32 16 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 214, i32 16 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 216, i32 16 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 218, i32 16 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 220, i32 16 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 222, i32 16 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 224, i32 16 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 226, i32 16 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 228, i32 16 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 230, i32 16 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 232, i32 16 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 234, i32 16 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 236, i32 16 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 238, i32 16 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 240, i32 16 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 242, i32 16 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 244, i32 16 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 255, i32 17 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 314, i32 16 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 317, i32 16 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 320, i32 16 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 323, i32 16 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 326, i32 16 }
@___asan_gen_.252 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.253 = private constant [32 x i8] c"../drivers/usb/chipidea/debug.c\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 330, i32 17 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @.str, ptr @ci_device_fops, ptr @.str.1, ptr @ci_port_test_fops, ptr @.str.2, ptr @ci_qheads_fops, ptr @.str.3, ptr @ci_requests_fops, ptr @.str.4, ptr @ci_otg_fops, ptr @.str.5, ptr @ci_role_fops, ptr @.str.6, ptr @ci_registers_fops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_device_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_port_test_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_qheads_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_requests_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_otg_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_role_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_registers_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dbg_create_files(ptr noundef %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usb_debug_root to i32))
  %6 = load ptr, ptr @usb_debug_root, align 4
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i, ptr noundef %6) #7
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %call1, ptr noundef %ci, ptr noundef nonnull @ci_device_fops) #7
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 420, ptr noundef %call1, ptr noundef %ci, ptr noundef nonnull @ci_port_test_fops) #7
  %call4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %call1, ptr noundef %ci, ptr noundef nonnull @ci_qheads_fops) #7
  %call5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %call1, ptr noundef %ci, ptr noundef nonnull @ci_requests_fops) #7
  %platdata.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 32
  %7 = ptrtoint ptr %platdata.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platdata.i, align 4
  %is_otg.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 6
  %9 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_otg.i, align 8, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i24 = icmp eq i8 %10, 0
  br i1 %tobool.not.i24, label %dev_name.exit.if.end_crit_edge, label %land.lhs.true.i

dev_name.exit.if.end_crit_edge:                   ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i:                                  ; preds = %dev_name.exit
  %roles.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 4
  %11 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %roles.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %arrayidx4.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx4.i, align 4
  %tobool5.not.i = icmp eq ptr %14, null
  br i1 %tobool5.not.i, label %land.lhs.true2.i.if.end_crit_edge, label %land.rhs.i

land.lhs.true2.i.if.end_crit_edge:                ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs.i:                                       ; preds = %land.lhs.true2.i
  %srp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %8, i32 0, i32 10, i32 2
  %15 = ptrtoint ptr %srp_support.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %srp_support.i, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool6.not.i = icmp eq i8 %16, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i, label %land.rhs.i.if.then_crit_edge

land.rhs.i.if.then_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %hnp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %8, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %hnp_support.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %hnp_support.i, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool7.not.i = icmp eq i8 %18, 0
  br i1 %tobool7.not.i, label %ci_otg_is_fsm_mode.exit, label %lor.lhs.false.i.if.then_crit_edge

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

ci_otg_is_fsm_mode.exit:                          ; preds = %lor.lhs.false.i
  %adp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %8, i32 0, i32 10, i32 3
  %19 = ptrtoint ptr %adp_support.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %adp_support.i, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool8.i.not = icmp eq i8 %20, 0
  br i1 %tobool8.i.not, label %ci_otg_is_fsm_mode.exit.if.end_crit_edge, label %ci_otg_is_fsm_mode.exit.if.then_crit_edge

ci_otg_is_fsm_mode.exit.if.then_crit_edge:        ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

ci_otg_is_fsm_mode.exit.if.end_crit_edge:         ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %ci_otg_is_fsm_mode.exit.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %land.rhs.i.if.then_crit_edge
  %call7 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %call1, ptr noundef %ci, ptr noundef nonnull @ci_otg_fops) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %ci_otg_is_fsm_mode.exit.if.end_crit_edge, %land.lhs.true2.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %dev_name.exit.if.end_crit_edge
  %call8 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 420, ptr noundef %call1, ptr noundef %ci, ptr noundef nonnull @ci_role_fops) #7
  %call9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 292, ptr noundef %call1, ptr noundef %ci, ptr noundef nonnull @ci_registers_fops) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dbg_remove_files(ptr nocapture noundef readonly %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usb_debug_root to i32))
  %6 = load ptr, ptr @usb_debug_root, align 4
  %call1 = tail call ptr @debugfs_lookup(ptr noundef %retval.0.i, ptr noundef %6) #7
  tail call void @debugfs_remove(ptr noundef %call1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_device_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ci_device_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_device_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %speed = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 18, i32 5
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.7, i32 noundef %3) #7
  %max_speed = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 18, i32 6
  %4 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_speed, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, i32 noundef %5) #7
  %is_otg = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 18, i32 17
  %6 = ptrtoint ptr %is_otg to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %is_otg, align 4
  %bf.lshr = lshr i32 %bf.load, 30
  %bf.clear = and i32 %bf.lshr, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.9, i32 noundef %bf.clear) #7
  %7 = ptrtoint ptr %is_otg to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load2 = load i32, ptr %is_otg, align 4
  %bf.lshr3 = lshr i32 %bf.load2, 29
  %bf.clear4 = and i32 %bf.lshr3, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.10, i32 noundef %bf.clear4) #7
  %8 = ptrtoint ptr %is_otg to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load5 = load i32, ptr %is_otg, align 4
  %bf.lshr6 = lshr i32 %bf.load5, 28
  %bf.clear7 = and i32 %bf.lshr6, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.11, i32 noundef %bf.clear7) #7
  %9 = ptrtoint ptr %is_otg to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load8 = load i32, ptr %is_otg, align 4
  %bf.lshr9 = lshr i32 %bf.load8, 27
  %bf.clear10 = and i32 %bf.lshr9, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.12, i32 noundef %bf.clear10) #7
  %10 = ptrtoint ptr %is_otg to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load11 = load i32, ptr %is_otg, align 4
  %bf.lshr12 = lshr i32 %bf.load11, 26
  %bf.clear13 = and i32 %bf.lshr12, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.13, i32 noundef %bf.clear13) #7
  %name = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 18, i32 10
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %12, null
  %spec.select = select i1 %tobool.not, ptr @.str.15, ptr %12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.14, ptr noundef nonnull %spec.select) #7
  %driver = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver, align 8
  %tobool15.not = icmp eq ptr %14, null
  br i1 %tobool15.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool17.not = icmp eq ptr %16, null
  %spec.select51 = select i1 %tobool17.not, ptr @.str.15, ptr %16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, ptr noundef nonnull %spec.select51) #7
  %17 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver, align 8
  %max_speed25 = getelementptr inbounds %struct.usb_gadget_driver, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %max_speed25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_speed25, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.17, i32 noundef %20) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_port_test_write(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %mode = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #7
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %mode, align 4, !annotation !146
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #7
  %5 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  %6 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %5, i1 noundef zeroext false) #7
  call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 156) #7
  %call.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %5, i32 -1226833920) #10, !srcloc !147
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !148

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %5) #7
  %8 = call i32 @llvm.read_register.i32(metadata !135) #7
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !149
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !150
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %ubuf, i32 noundef %5) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #7, !srcloc !150
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %5, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %5, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !148

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i32 %5, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %5
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx, align 1
  %call2 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.18, ptr noundef nonnull %mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 1
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %14)
  %cmp6 = icmp ugt i32 %14, 255
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 8
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %16, i32 noundef 4) #7
  %lock = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 1
  %call14 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode, align 4
  %conv17 = trunc i32 %18 to i8
  %call18 = call i32 @hw_port_test_set(ptr noundef %3, i8 noundef zeroext %conv17) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call14) #7
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 8
  %call.i42 = call i32 @__pm_runtime_idle(ptr noundef %20, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool22.not = icmp eq i32 %call18, 0
  %.count.call18 = select i1 %tobool22.not, i32 %5, i32 %call18
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %.count.call18, %if.end8 ], [ -22, %if.end.cleanup_crit_edge ], [ -56, %if.end5.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_port_test_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ci_port_test_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_port_test_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_port_test_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  %lock = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %call6 = tail call zeroext i8 @hw_port_test_get(ptr noundef %1) #7
  %conv7 = zext i8 %call6 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call.i16 = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.22, i32 noundef %conv7) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @hw_port_test_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_qheads_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ci_qheads_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_qheads_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %role = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %do.body1, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.23) #7
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %hw_ep_max = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %hw_ep_max to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_ep_max, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp651.not = icmp ult i32 %5, 2
  br i1 %cmp651.not, label %do.body1.for.end24_crit_edge, label %for.body.preheader

do.body1.for.end24_crit_edge:                     ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end24

for.body.preheader:                               ; preds = %do.body1
  %div4850 = lshr i32 %5, 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %div4853 = phi i32 [ %div48, %for.body.for.body_crit_edge ], [ %div4850, %for.body.preheader ]
  %i.052 = phi i32 [ %inc23, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %add = add nuw i32 %div4853, %i.052
  %dma = getelementptr %struct.ci_hdrc, ptr %1, i32 0, i32 22, i32 %i.052, i32 5, i32 2
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma, align 4
  %dma13 = getelementptr %struct.ci_hdrc, ptr %1, i32 0, i32 22, i32 %add, i32 5, i32 2
  %8 = ptrtoint ptr %dma13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma13, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.24, i32 noundef %i.052, i32 noundef %7, i32 noundef %9) #7
  %ptr = getelementptr %struct.ci_hdrc, ptr %1, i32 0, i32 22, i32 %i.052, i32 5, i32 1
  %ptr20 = getelementptr %struct.ci_hdrc, ptr %1, i32 0, i32 22, i32 %add, i32 5, i32 1
  %10 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptr, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = ptrtoint ptr %ptr20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ptr20, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef %13, i32 noundef %17) #7
  %18 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ptr, align 4
  %add.ptr.1 = getelementptr i32, ptr %19, i32 1
  %20 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.1, align 4
  %22 = ptrtoint ptr %ptr20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ptr20, align 4
  %add.ptr21.1 = getelementptr i32, ptr %23, i32 1
  %24 = ptrtoint ptr %add.ptr21.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr21.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, i32 noundef 1, i32 noundef %21, i32 noundef %25) #7
  %26 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ptr, align 4
  %add.ptr.2 = getelementptr i32, ptr %27, i32 2
  %28 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.2, align 4
  %30 = ptrtoint ptr %ptr20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ptr20, align 4
  %add.ptr21.2 = getelementptr i32, ptr %31, i32 2
  %32 = ptrtoint ptr %add.ptr21.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr21.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, i32 noundef 2, i32 noundef %29, i32 noundef %33) #7
  %34 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ptr, align 4
  %add.ptr.3 = getelementptr i32, ptr %35, i32 3
  %36 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.3, align 4
  %38 = ptrtoint ptr %ptr20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ptr20, align 4
  %add.ptr21.3 = getelementptr i32, ptr %39, i32 3
  %40 = ptrtoint ptr %add.ptr21.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr21.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, i32 noundef 3, i32 noundef %37, i32 noundef %41) #7
  %42 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ptr, align 4
  %add.ptr.4 = getelementptr i32, ptr %43, i32 4
  %44 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.4, align 4
  %46 = ptrtoint ptr %ptr20 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ptr20, align 4
  %add.ptr21.4 = getelementptr i32, ptr %47, i32 4
  %48 = ptrtoint ptr %add.ptr21.4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr21.4, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, i32 noundef 4, i32 noundef %45, i32 noundef %49) #7
  %50 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ptr, align 4
  %add.ptr.5 = getelementptr i32, ptr %51, i32 5
  %52 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.5, align 4
  %54 = ptrtoint ptr %ptr20 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ptr20, align 4
  %add.ptr21.5 = getelementptr i32, ptr %55, i32 5
  %56 = ptrtoint ptr %add.ptr21.5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr21.5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, i32 noundef 5, i32 noundef %53, i32 noundef %57) #7
  %58 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ptr, align 4
  %add.ptr.6 = getelementptr i32, ptr %59, i32 6
  %60 = ptrtoint ptr %add.ptr.6 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr.6, align 4
  %62 = ptrtoint ptr %ptr20 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ptr20, align 4
  %add.ptr21.6 = getelementptr i32, ptr %63, i32 6
  %64 = ptrtoint ptr %add.ptr21.6 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr21.6, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, i32 noundef 6, i32 noundef %61, i32 noundef %65) #7
  %66 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ptr, align 4
  %add.ptr.7 = getelementptr i32, ptr %67, i32 7
  %68 = ptrtoint ptr %add.ptr.7 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr.7, align 4
  %70 = ptrtoint ptr %ptr20 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ptr20, align 4
  %add.ptr21.7 = getelementptr i32, ptr %71, i32 7
  %72 = ptrtoint ptr %add.ptr21.7 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr21.7, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, i32 noundef 7, i32 noundef %69, i32 noundef %73) #7
  %74 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ptr, align 4
  %add.ptr.8 = getelementptr i32, ptr %75, i32 8
  %76 = ptrtoint ptr %add.ptr.8 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr.8, align 4
  %78 = ptrtoint ptr %ptr20 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ptr20, align 4
  %add.ptr21.8 = getelementptr i32, ptr %79, i32 8
  %80 = ptrtoint ptr %add.ptr21.8 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr21.8, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, i32 noundef 8, i32 noundef %77, i32 noundef %81) #7
  %82 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ptr, align 4
  %add.ptr.9 = getelementptr i32, ptr %83, i32 9
  %84 = ptrtoint ptr %add.ptr.9 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr.9, align 4
  %86 = ptrtoint ptr %ptr20 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ptr20, align 4
  %add.ptr21.9 = getelementptr i32, ptr %87, i32 9
  %88 = ptrtoint ptr %add.ptr21.9 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %add.ptr21.9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, i32 noundef 9, i32 noundef %85, i32 noundef %89) #7
  %90 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ptr, align 4
  %add.ptr.10 = getelementptr i32, ptr %91, i32 10
  %92 = ptrtoint ptr %add.ptr.10 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr.10, align 4
  %94 = ptrtoint ptr %ptr20 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ptr20, align 4
  %add.ptr21.10 = getelementptr i32, ptr %95, i32 10
  %96 = ptrtoint ptr %add.ptr21.10 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr21.10, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, i32 noundef 10, i32 noundef %93, i32 noundef %97) #7
  %98 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ptr, align 4
  %add.ptr.11 = getelementptr i32, ptr %99, i32 11
  %100 = ptrtoint ptr %add.ptr.11 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %add.ptr.11, align 4
  %102 = ptrtoint ptr %ptr20 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ptr20, align 4
  %add.ptr21.11 = getelementptr i32, ptr %103, i32 11
  %104 = ptrtoint ptr %add.ptr21.11 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %add.ptr21.11, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, i32 noundef 11, i32 noundef %101, i32 noundef %105) #7
  %inc23 = add nuw nsw i32 %i.052, 1
  %106 = ptrtoint ptr %hw_ep_max to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %hw_ep_max, align 8
  %div48 = lshr i32 %107, 1
  %cmp6 = icmp ult i32 %inc23, %div48
  br i1 %cmp6, label %for.body.for.body_crit_edge, label %for.body.for.end24_crit_edge

for.body.for.end24_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end24

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end24:                                        ; preds = %for.body.for.end24_crit_edge, %do.body1.for.end24_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end24, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_requests_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ci_requests_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_requests_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %role = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %do.body1, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.23) #7
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %hw_ep_max = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %hw_ep_max to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_ep_max, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6102.not = icmp eq i32 %5, 0
  br i1 %cmp6102.not, label %do.body1.for.end59_crit_edge, label %do.body1.for.body_crit_edge

do.body1.for.body_crit_edge:                      ; preds = %do.body1
  br label %for.body

do.body1.for.end59_crit_edge:                     ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end59

for.body:                                         ; preds = %for.inc57.for.body_crit_edge, %do.body1.for.body_crit_edge
  %i.0103 = phi i32 [ %inc58, %for.inc57.for.body_crit_edge ], [ 0, %do.body1.for.body_crit_edge ]
  %qh = getelementptr %struct.ci_hdrc, ptr %1, i32 0, i32 22, i32 %i.0103, i32 5
  %6 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn99 = load ptr, ptr %qh, align 4
  %cmp15.not100 = icmp eq ptr %.pn99, %qh
  br i1 %cmp15.not100, label %for.body.for.inc57_crit_edge, label %for.body.for.body17_crit_edge

for.body.for.body17_crit_edge:                    ; preds = %for.body
  br label %for.body17

for.body.for.inc57_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc57

for.cond9.loopexit:                               ; preds = %for.body32.for.cond9.loopexit_crit_edge, %for.body17.for.cond9.loopexit_crit_edge
  %7 = ptrtoint ptr %.pn101 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn101, align 4
  %cmp15.not = icmp eq ptr %.pn, %qh
  br i1 %cmp15.not, label %for.cond9.loopexit.for.inc57_crit_edge, label %for.cond9.loopexit.for.body17_crit_edge

for.cond9.loopexit.for.body17_crit_edge:          ; preds = %for.cond9.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body17

for.cond9.loopexit.for.inc57_crit_edge:           ; preds = %for.cond9.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc57

for.body17:                                       ; preds = %for.cond9.loopexit.for.body17_crit_edge, %for.body.for.body17_crit_edge
  %.pn101 = phi ptr [ %.pn, %for.cond9.loopexit.for.body17_crit_edge ], [ %.pn99, %for.body.for.body17_crit_edge ]
  %tds = getelementptr i8, ptr %.pn101, i32 8
  %8 = ptrtoint ptr %tds to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tds, align 4
  %cmp29.not96 = icmp eq ptr %9, %tds
  br i1 %cmp29.not96, label %for.body17.for.cond9.loopexit_crit_edge, label %for.body17.for.body32_crit_edge

for.body17.for.body32_crit_edge:                  ; preds = %for.body17
  br label %for.body32

for.body17.for.cond9.loopexit_crit_edge:          ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond9.loopexit

for.body32:                                       ; preds = %for.body32.for.body32_crit_edge, %for.body17.for.body32_crit_edge
  %node.097 = phi ptr [ %tmpnode.098, %for.body32.for.body32_crit_edge ], [ %9, %for.body17.for.body32_crit_edge ]
  %10 = ptrtoint ptr %node.097 to i32
  call void @__asan_load4_noabort(i32 %10)
  %tmpnode.098 = load ptr, ptr %node.097, align 4
  %11 = ptrtoint ptr %hw_ep_max to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hw_ep_max, align 8
  %div93 = lshr i32 %12, 1
  %rem = urem i32 %i.0103, %div93
  %dma = getelementptr inbounds %struct.td_node, ptr %node.097, i32 0, i32 1
  %13 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0103, i32 %div93)
  %cmp36 = icmp ult i32 %i.0103, %div93
  %cond = select i1 %cmp36, ptr @.str.27, ptr @.str.28
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.26, i32 noundef %rem, i32 noundef %14, ptr noundef nonnull %cond) #7
  %ptr = getelementptr inbounds %struct.td_node, ptr %node.097, i32 0, i32 2
  %15 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ptr, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.29, i32 noundef 0, i32 noundef %18) #7
  %19 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ptr, align 4
  %add.ptr42.1 = getelementptr i32, ptr %20, i32 1
  %21 = ptrtoint ptr %add.ptr42.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr42.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.29, i32 noundef 1, i32 noundef %22) #7
  %23 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ptr, align 4
  %add.ptr42.2 = getelementptr i32, ptr %24, i32 2
  %25 = ptrtoint ptr %add.ptr42.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr42.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.29, i32 noundef 2, i32 noundef %26) #7
  %27 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ptr, align 4
  %add.ptr42.3 = getelementptr i32, ptr %28, i32 3
  %29 = ptrtoint ptr %add.ptr42.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr42.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.29, i32 noundef 3, i32 noundef %30) #7
  %31 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ptr, align 4
  %add.ptr42.4 = getelementptr i32, ptr %32, i32 4
  %33 = ptrtoint ptr %add.ptr42.4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr42.4, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.29, i32 noundef 4, i32 noundef %34) #7
  %35 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ptr, align 4
  %add.ptr42.5 = getelementptr i32, ptr %36, i32 5
  %37 = ptrtoint ptr %add.ptr42.5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr42.5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.29, i32 noundef 5, i32 noundef %38) #7
  %39 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ptr, align 4
  %add.ptr42.6 = getelementptr i32, ptr %40, i32 6
  %41 = ptrtoint ptr %add.ptr42.6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr42.6, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.29, i32 noundef 6, i32 noundef %42) #7
  %cmp29.not = icmp eq ptr %tmpnode.098, %tds
  br i1 %cmp29.not, label %for.body32.for.cond9.loopexit_crit_edge, label %for.body32.for.body32_crit_edge

for.body32.for.body32_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body32

for.body32.for.cond9.loopexit_crit_edge:          ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond9.loopexit

for.inc57:                                        ; preds = %for.cond9.loopexit.for.inc57_crit_edge, %for.body.for.inc57_crit_edge
  %inc58 = add nuw i32 %i.0103, 1
  %43 = ptrtoint ptr %hw_ep_max to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hw_ep_max, align 8
  %cmp6 = icmp ult i32 %inc58, %44
  br i1 %cmp6, label %for.inc57.for.body_crit_edge, label %for.inc57.for.end59_crit_edge

for.inc57.for.end59_crit_edge:                    ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end59

for.inc57.for.body_crit_edge:                     ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end59:                                        ; preds = %for.inc57.for.end59_crit_edge, %do.body1.for.end59_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end59, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_otg_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ci_otg_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_otg_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %platdata.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %platdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platdata.i, align 4
  %is_otg.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_otg.i, align 8, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %lor.lhs.false.cleanup_crit_edge, label %land.lhs.true.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %roles.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %roles.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %arrayidx4.i = getelementptr %struct.ci_hdrc, ptr %1, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4.i, align 4
  %tobool5.not.i = icmp eq ptr %9, null
  br i1 %tobool5.not.i, label %land.lhs.true2.i.cleanup_crit_edge, label %land.rhs.i

land.lhs.true2.i.cleanup_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.i:                                       ; preds = %land.lhs.true2.i
  %srp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 10, i32 2
  %10 = ptrtoint ptr %srp_support.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %srp_support.i, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not.i = icmp eq i8 %11, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i, label %land.rhs.i.if.end_crit_edge

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %hnp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %hnp_support.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hnp_support.i, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not.i = icmp eq i8 %13, 0
  br i1 %tobool7.not.i, label %ci_otg_is_fsm_mode.exit, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

ci_otg_is_fsm_mode.exit:                          ; preds = %lor.lhs.false.i
  %adp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 10, i32 3
  %14 = ptrtoint ptr %adp_support.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %adp_support.i, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.i.not = icmp eq i8 %15, 0
  br i1 %tobool8.i.not, label %ci_otg_is_fsm_mode.exit.cleanup_crit_edge, label %ci_otg_is_fsm_mode.exit.if.end_crit_edge

ci_otg_is_fsm_mode.exit.if.end_crit_edge:         ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

ci_otg_is_fsm_mode.exit.cleanup_crit_edge:        ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ci_otg_is_fsm_mode.exit.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %land.rhs.i.if.end_crit_edge
  %fsm1 = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8
  %state = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 7, i32 5
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  %call2 = tail call ptr @usb_otg_state_string(i32 noundef %17) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.30, ptr noundef %call2) #7
  %a_bus_drop = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 13
  %18 = ptrtoint ptr %a_bus_drop to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %a_bus_drop, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.31, i32 noundef %19) #7
  %a_bus_req = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 14
  %20 = ptrtoint ptr %a_bus_req to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %a_bus_req, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.32, i32 noundef %21) #7
  %a_srp_det = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 3
  %22 = ptrtoint ptr %a_srp_det to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %a_srp_det, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.33, i32 noundef %23) #7
  %a_vbus_vld = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 4
  %24 = ptrtoint ptr %a_vbus_vld to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %a_vbus_vld, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.34, i32 noundef %25) #7
  %b_conn = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 5
  %26 = ptrtoint ptr %b_conn to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %b_conn, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, i32 noundef %27) #7
  %adp_change = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 1
  %28 = ptrtoint ptr %adp_change to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %adp_change, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.36, i32 noundef %29) #7
  %power_up = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 2
  %30 = ptrtoint ptr %power_up to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %power_up, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.37, i32 noundef %31) #7
  %a_bus_resume = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 6
  %32 = ptrtoint ptr %a_bus_resume to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %a_bus_resume, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.38, i32 noundef %33) #7
  %a_bus_suspend = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 7
  %34 = ptrtoint ptr %a_bus_suspend to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %a_bus_suspend, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.39, i32 noundef %35) #7
  %a_conn = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 8
  %36 = ptrtoint ptr %a_conn to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %a_conn, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.40, i32 noundef %37) #7
  %b_bus_req = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 15
  %38 = ptrtoint ptr %b_bus_req to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %b_bus_req, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.41, i32 noundef %39) #7
  %b_bus_suspend = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 18
  %40 = ptrtoint ptr %b_bus_suspend to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %b_bus_suspend, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.42, i32 noundef %41) #7
  %b_se0_srp = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 9
  %42 = ptrtoint ptr %b_se0_srp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %b_se0_srp, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.43, i32 noundef %43) #7
  %b_ssend_srp = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 10
  %44 = ptrtoint ptr %b_ssend_srp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %b_ssend_srp, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.44, i32 noundef %45) #7
  %b_sess_vld = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 11
  %46 = ptrtoint ptr %b_sess_vld to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %b_sess_vld, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.45, i32 noundef %47) #7
  %b_srp_done = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 26
  %48 = ptrtoint ptr %b_srp_done to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %b_srp_done, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.46, i32 noundef %49) #7
  %drv_vbus = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 19
  %50 = ptrtoint ptr %drv_vbus to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %drv_vbus, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.47, i32 noundef %51) #7
  %loc_conn = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 20
  %52 = ptrtoint ptr %loc_conn to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %loc_conn, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.48, i32 noundef %53) #7
  %loc_sof = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 21
  %54 = ptrtoint ptr %loc_sof to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %loc_sof, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.49, i32 noundef %55) #7
  %adp_prb = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 22
  %56 = ptrtoint ptr %adp_prb to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %adp_prb, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.50, i32 noundef %57) #7
  %58 = ptrtoint ptr %fsm1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fsm1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, i32 noundef %59) #7
  %protocol = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 42
  %60 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %protocol, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.52, i32 noundef %61) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ci_otg_is_fsm_mode.exit.cleanup_crit_edge, %land.lhs.true2.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_otg_state_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_role_write(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #7
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %buf, align 8
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %4, i1 noundef zeroext false) #7
  call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 156) #7
  %call.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %6 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %4, i32 -1226833920) #10, !srcloc !147
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !148

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %4) #7
  %7 = call i32 @llvm.read_register.i32(metadata !135) #7
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !149
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !150
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %ubuf, i32 noundef %4) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #7, !srcloc !150
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %for.body.preheader, label %if.then11.i.i, !prof !148

for.body.preheader:                               ; preds = %if.end.i.i
  %arrayidx = getelementptr %struct.ci_hdrc, ptr %3, i32 0, i32 4, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %for.body.preheader.for.inc_crit_edge, label %land.lhs.true

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

land.lhs.true:                                    ; preds = %for.body.preheader
  %name = getelementptr inbounds %struct.ci_role_driver, ptr %11, i32 0, i32 3
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  %call9 = call i32 @strlen(ptr noundef %14) #11
  %call10 = call i32 @strncmp(ptr noundef nonnull %buf, ptr noundef %14, i32 noundef %call9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.ci_hdrc, ptr %3, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.1, align 4
  %tobool2.not.1 = icmp eq ptr %16, null
  br i1 %tobool2.not.1, label %for.inc.cleanup_crit_edge, label %land.lhs.true.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.1:                                  ; preds = %for.inc
  %name.1 = getelementptr inbounds %struct.ci_role_driver, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %name.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name.1, align 4
  %call9.1 = call i32 @strlen(ptr noundef %18) #11
  %call10.1 = call i32 @strncmp(ptr noundef nonnull %buf, ptr noundef %18, i32 noundef %call9.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.1)
  %tobool11.not.1 = icmp eq i32 %call10.1, 0
  br i1 %tobool11.not.1, label %land.lhs.true.1.lor.lhs.false_crit_edge, label %land.lhs.true.1.cleanup_crit_edge

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.1.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.1.lor.lhs.false_crit_edge, %land.lhs.true.lor.lhs.false_crit_edge
  %role.061.lcssa = phi i32 [ 0, %land.lhs.true.lor.lhs.false_crit_edge ], [ 1, %land.lhs.true.1.lor.lhs.false_crit_edge ]
  %role15 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %role15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %role15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %role.061.lcssa, i32 %20)
  %cmp16 = icmp eq i32 %role.061.lcssa, %20
  br i1 %cmp16, label %lor.lhs.false.cleanup_crit_edge, label %if.end18

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 8
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %22, i32 noundef 4) #7
  %irq = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 3
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 8
  call void @disable_irq(i32 noundef %24) #7
  %25 = ptrtoint ptr %role15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %role15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp.i = icmp eq i32 %26, 2
  br i1 %cmp.i, label %if.end18.ci_role_stop.exit_crit_edge, label %if.end.i

if.end18.ci_role_stop.exit_crit_edge:             ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %ci_role_stop.exit

if.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %role15 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %role15, align 4
  %arrayidx.i = getelementptr %struct.ci_hdrc, ptr %3, i32 0, i32 4, i32 %26
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %stop.i = getelementptr inbounds %struct.ci_role_driver, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %stop.i, align 4
  call void %31(ptr noundef %3) #7
  br label %ci_role_stop.exit

ci_role_stop.exit:                                ; preds = %if.end.i, %if.end18.ci_role_stop.exit_crit_edge
  %arrayidx.i53 = getelementptr %struct.ci_hdrc, ptr %3, i32 0, i32 4, i32 %role.061.lcssa
  %32 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i53, align 4
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %ci_role_stop.exit.ci_role_start.exit_crit_edge, label %if.end2.i

ci_role_stop.exit.ci_role_start.exit_crit_edge:   ; preds = %ci_role_stop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ci_role_start.exit

if.end2.i:                                        ; preds = %ci_role_stop.exit
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %call.i54 = call i32 %35(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool5.not.i = icmp eq i32 %call.i54, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end2.i.ci_role_start.exit_crit_edge

if.end2.i.ci_role_start.exit_crit_edge:           ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ci_role_start.exit

if.then6.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %role15 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %role.061.lcssa, ptr %role15, align 4
  br label %ci_role_start.exit

ci_role_start.exit:                               ; preds = %if.then6.i, %if.end2.i.ci_role_start.exit_crit_edge, %ci_role_stop.exit.ci_role_start.exit_crit_edge
  %retval.0.i = phi i32 [ -6, %ci_role_stop.exit.ci_role_start.exit_crit_edge ], [ 0, %if.then6.i ], [ %call.i54, %if.end2.i.ci_role_start.exit_crit_edge ]
  %37 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq, align 8
  call void @enable_irq(i32 noundef %38) #7
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 8
  %call.i55 = call i32 @__pm_runtime_idle(ptr noundef %40, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool24.not = icmp eq i32 %retval.0.i, 0
  %spec.select = select i1 %tobool24.not, i32 %count, i32 %retval.0.i
  br label %cleanup

cleanup:                                          ; preds = %ci_role_start.exit, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -22, %land.lhs.true.1.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ], [ %spec.select, %ci_role_start.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_role_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ci_role_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_role_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %role = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp ugt i32 %3, 1
  br i1 %cmp.i, label %if.then.do.body5.i_crit_edge, label %lor.rhs.i, !prof !152

if.then.do.body5.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5.i

lor.rhs.i:                                        ; preds = %if.then
  %arrayidx.i = getelementptr %struct.ci_hdrc, ptr %1, i32 0, i32 4, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %lor.rhs.i.do.body5.i_crit_edge, label %ci_role.exit, !prof !152

lor.rhs.i.do.body5.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5.i

do.body5.i:                                       ; preds = %lor.rhs.i.do.body5.i_crit_edge, %if.then.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/chipidea/ci.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 262, 0\0A.popsection", ""() #7, !srcloc !153
  unreachable

ci_role.exit:                                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.ci_role_driver, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.53, ptr noundef %7) #7
  br label %if.end

if.end:                                           ; preds = %ci_role.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_registers_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ci_registers_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_registers_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %in_lpm = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %in_lpm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_lpm, align 8, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @hw_read_intr_enable(ptr noundef nonnull %1) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, i32 noundef %call) #7
  %call2 = tail call i32 @hw_read_intr_status(ptr noundef nonnull %1) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.55, i32 noundef %call2) #7
  %arrayidx.i = getelementptr %struct.ci_hdrc, ptr %1, i32 0, i32 2, i32 6, i32 15
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !154
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.56, i32 noundef %7) #7
  %arrayidx.i30 = getelementptr %struct.ci_hdrc, ptr %1, i32 0, i32 2, i32 6, i32 4
  %8 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i30, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !154
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.57, i32 noundef %11) #7
  %arrayidx.i31 = getelementptr %struct.ci_hdrc, ptr %1, i32 0, i32 2, i32 6, i32 12
  %12 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i31, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !154
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.58, i32 noundef %15) #7
  %is_otg = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %is_otg to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_otg, align 8, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool6.not = icmp eq i8 %17, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 @hw_read_otgsc(ptr noundef nonnull %1, i32 noundef -1) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.59, i32 noundef %call8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_read_intr_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_read_intr_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_read_otgsc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133}
!llvm.named.register.sp = !{!135}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/chipidea/debug.c", i32 349, i32 22}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/usb/chipidea/debug.c", i32 350, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/chipidea/debug.c", i32 351, i32 22}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/chipidea/debug.c", i32 352, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/chipidea/debug.c", i32 355, i32 23}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/chipidea/debug.c", i32 357, i32 22}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/chipidea/debug.c", i32 358, i32 22}
!14 = !{ptr @ci_device_fops, !15, !"ci_device_fops", i1 false, i1 false}
!15 = !{!"../drivers/usb/chipidea/debug.c", i32 48, i32 1}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/chipidea/debug.c", i32 29, i32 16}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/chipidea/debug.c", i32 30, i32 16}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/chipidea/debug.c", i32 31, i32 16}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/chipidea/debug.c", i32 32, i32 16}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/chipidea/debug.c", i32 33, i32 16}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/chipidea/debug.c", i32 34, i32 16}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/chipidea/debug.c", i32 35, i32 16}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/chipidea/debug.c", i32 36, i32 16}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/chipidea/debug.c", i32 37, i32 37}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/chipidea/debug.c", i32 42, i32 16}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/chipidea/debug.c", i32 44, i32 16}
!38 = !{ptr @ci_port_test_fops, !39, !"ci_port_test_fops", i1 false, i1 false}
!39 = !{!"../drivers/usb/chipidea/debug.c", i32 110, i32 37}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/chipidea/debug.c", i32 90, i32 18}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!44 = distinct !{null, !43, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/chipidea/debug.c", i32 65, i32 16}
!51 = !{ptr @ci_qheads_fops, !52, !"ci_qheads_fops", i1 false, i1 false}
!52 = !{!"../drivers/usb/chipidea/debug.c", i32 148, i32 1}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/chipidea/debug.c", i32 128, i32 17}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/chipidea/debug.c", i32 137, i32 17}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/chipidea/debug.c", i32 140, i32 18}
!59 = !{ptr @ci_requests_fops, !60, !"ci_requests_fops", i1 false, i1 false}
!60 = !{!"../drivers/usb/chipidea/debug.c", i32 185, i32 1}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/chipidea/debug.c", i32 170, i32 19}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/chipidea/debug.c", i32 174, i32 9}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/chipidea/debug.c", i32 174, i32 16}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/chipidea/debug.c", i32 177, i32 20}
!69 = !{ptr @ci_otg_fops, !70, !"ci_otg_fops", i1 false, i1 false}
!70 = !{!"../drivers/usb/chipidea/debug.c", i32 248, i32 1}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/chipidea/debug.c", i32 198, i32 16}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/chipidea/debug.c", i32 202, i32 16}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/chipidea/debug.c", i32 204, i32 16}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/chipidea/debug.c", i32 206, i32 16}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/chipidea/debug.c", i32 208, i32 16}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/chipidea/debug.c", i32 210, i32 16}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/chipidea/debug.c", i32 212, i32 16}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/chipidea/debug.c", i32 214, i32 16}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/chipidea/debug.c", i32 216, i32 16}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/chipidea/debug.c", i32 218, i32 16}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/chipidea/debug.c", i32 220, i32 16}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/chipidea/debug.c", i32 222, i32 16}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/chipidea/debug.c", i32 224, i32 16}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/chipidea/debug.c", i32 226, i32 16}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/chipidea/debug.c", i32 228, i32 16}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/chipidea/debug.c", i32 230, i32 16}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/chipidea/debug.c", i32 232, i32 16}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/chipidea/debug.c", i32 234, i32 16}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/chipidea/debug.c", i32 236, i32 16}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/chipidea/debug.c", i32 238, i32 16}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/chipidea/debug.c", i32 240, i32 16}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/chipidea/debug.c", i32 242, i32 16}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/chipidea/debug.c", i32 244, i32 16}
!117 = !{ptr @ci_role_fops, !118, !"ci_role_fops", i1 false, i1 false}
!118 = !{!"../drivers/usb/chipidea/debug.c", i32 296, i32 37}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/chipidea/debug.c", i32 255, i32 17}
!121 = !{ptr @ci_registers_fops, !122, !"ci_registers_fops", i1 false, i1 false}
!122 = !{!"../drivers/usb/chipidea/debug.c", i32 335, i32 1}
!123 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/chipidea/debug.c", i32 314, i32 16}
!125 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/usb/chipidea/debug.c", i32 317, i32 16}
!127 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/chipidea/debug.c", i32 320, i32 16}
!129 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/chipidea/debug.c", i32 323, i32 16}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/chipidea/debug.c", i32 326, i32 16}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/chipidea/debug.c", i32 330, i32 17}
!135 = !{!"sp"}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{i8 0, i8 2}
!146 = !{!"auto-init"}
!147 = !{i64 2152662259, i64 2152662284}
!148 = !{!"branch_weights", i32 2000, i32 1}
!149 = !{i64 5157814}
!150 = !{i64 5158011}
!151 = !{i64 2152643244}
!152 = !{!"branch_weights", i32 1, i32 2000}
!153 = !{i64 2155298034, i64 2155298524, i64 2155298071, i64 2155298127, i64 2155298161, i64 2155298185, i64 2155298226, i64 2155298247, i64 2155298275, i64 2155298309}
!154 = !{i64 6360947}
!155 = !{i64 2153901296}
