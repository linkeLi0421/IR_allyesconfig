; ModuleID = '/llk/IR_all_yes/drivers/media/rc/rc-loopback.c_pt.bc'
source_filename = "../drivers/media/rc/rc-loopback.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.loopback_dev = type { ptr, i32, i32, i32, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ir_raw_event = type { %union.anon.73, i8, i8 }
%union.anon.73 = type { i32 }

@loopdev = internal global { %struct.loopback_dev, [36 x i8] } zeroinitializer, align 32
@__initcall__kmod_rc_loopback__240_265_loop_init6 = internal global ptr @loop_init, section ".initcall6.init", align 4
@__exitcall_loop_exit = internal global ptr @loop_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description241 = internal constant [62 x i8] c"rc_loopback.description=Loopback device for rc-core debugging\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [55 x i8] c"rc_loopback.author=David H\C3\A4rdeman <david@hardeman.nu>\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [46 x i8] c"rc_loopback.file=drivers/media/rc/rc-loopback\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [24 x i8] c"rc_loopback.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rc-core loopback device\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rc-core/virtual\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rc-loopback\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rc-empty\00", [23 x i8] zeroinitializer }, align 32
@loop_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 251, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rc_dev registration failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"loop_init\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/media/rc/rc-loopback.c\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@loop_init._entry_ptr = internal global ptr @loop_init._entry, section ".printk_index", align 4
@loop_set_tx_mask.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.6, ptr @.str.11, i8 0, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rc_loopback\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"loop_set_tx_mask\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid tx mask: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@loop_set_tx_mask.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.6, ptr @.str.12, i8 0, i8 11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"setting tx mask: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@loop_set_tx_carrier.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.13, ptr @.str.6, ptr @.str.14, i8 0, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"loop_set_tx_carrier\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"setting tx carrier: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@loop_set_tx_duty_cycle.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.15, ptr @.str.6, ptr @.str.16, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"loop_set_tx_duty_cycle\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid duty cycle: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@loop_set_tx_duty_cycle.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.15, ptr @.str.6, ptr @.str.17, i8 0, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"setting duty cycle: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@loop_set_rx_carrier_range.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.18, ptr @.str.6, ptr @.str.19, i8 0, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"loop_set_rx_carrier_range\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid rx carrier range %u to %u\0A\00", [61 x i8] zeroinitializer }, align 32
@loop_set_rx_carrier_range.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.18, ptr @.str.6, ptr @.str.20, i8 0, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"setting rx carrier range %u to %u\0A\00", [61 x i8] zeroinitializer }, align 32
@loop_tx_ir.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.21, ptr @.str.6, ptr @.str.22, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"loop_tx_ir\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ignoring tx, carrier out of range\0A\00", [61 x i8] zeroinitializer }, align 32
@loop_tx_ir.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.21, ptr @.str.6, ptr @.str.23, i8 0, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ignoring tx, rx mask mismatch\0A\00", [33 x i8] zeroinitializer }, align 32
@loop_set_idle.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.24, ptr @.str.6, ptr @.str.25, i8 0, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"loop_set_idle\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%sing idle mode\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"enter\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"exit\00", [27 x i8] zeroinitializer }, align 32
@loop_set_wideband_receiver.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.28, ptr @.str.6, ptr @.str.29, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"loop_set_wideband_receiver\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"using %sband receiver\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wide\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"narrow\00", [25 x i8] zeroinitializer }, align 32
@loop_set_carrier_report.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.32, ptr @.str.6, ptr @.str.33, i8 0, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"loop_set_carrier_report\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%sabling carrier reports\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.36 = private unnamed_addr constant [8 x i8] c"loopdev\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 34, i32 28 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 215, i32 21 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 216, i32 20 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 219, i32 21 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 220, i32 18 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 251, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 41, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 45, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 54, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 64, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 68, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 78, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 82, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 97, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 107, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 142, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 152, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private constant [34 x i8] c"../drivers/media/rc/rc-loopback.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 164, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_loop_exit, ptr @__initcall__kmod_rc_loopback__240_265_loop_init6, ptr @loop_exit, ptr @loop_init._entry, ptr @loop_init._entry_ptr, ptr @loopdev, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopdev to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @loop_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @loopdev, align 4
  tail call void @rc_unregister_device(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @loop_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rc_allocate_device(i32 noundef 1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str, ptr %device_name, align 8
  %input_phys = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %input_phys to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.1, ptr %input_phys, align 4
  %input_id = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %input_id to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 6, ptr %input_id, align 8
  %version = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5, i32 3
  %3 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1, ptr %version, align 2
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 6
  %4 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %driver_name, align 8
  %map_name = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 7
  %5 = ptrtoint ptr %map_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.3, ptr %map_name, align 4
  %priv = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 24
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @loopdev, ptr %priv, align 4
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 16
  %7 = ptrtoint ptr %allowed_protocols to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 130023420, ptr %allowed_protocols, align 8
  %allowed_wakeup_protocols = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 18
  %8 = ptrtoint ptr %allowed_wakeup_protocols to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 130023420, ptr %allowed_wakeup_protocols, align 8
  %encode_wakeup = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 15
  %9 = ptrtoint ptr %encode_wakeup to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %encode_wakeup, align 1
  %timeout = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 34
  %10 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 125000, ptr %timeout, align 4
  %min_timeout = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 35
  %11 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %min_timeout, align 8
  %max_timeout = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 36
  %12 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16777215, ptr %max_timeout, align 4
  %rx_resolution = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 37
  %13 = ptrtoint ptr %rx_resolution to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %rx_resolution, align 8
  %tx_resolution = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 38
  %14 = ptrtoint ptr %tx_resolution to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %tx_resolution, align 4
  %s_tx_mask = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 50
  %15 = ptrtoint ptr %s_tx_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @loop_set_tx_mask, ptr %s_tx_mask, align 8
  %s_tx_carrier = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 51
  %16 = ptrtoint ptr %s_tx_carrier to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @loop_set_tx_carrier, ptr %s_tx_carrier, align 4
  %s_tx_duty_cycle = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 52
  %17 = ptrtoint ptr %s_tx_duty_cycle to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @loop_set_tx_duty_cycle, ptr %s_tx_duty_cycle, align 8
  %s_rx_carrier_range = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 53
  %18 = ptrtoint ptr %s_rx_carrier_range to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @loop_set_rx_carrier_range, ptr %s_rx_carrier_range, align 4
  %tx_ir = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 54
  %19 = ptrtoint ptr %tx_ir to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @loop_tx_ir, ptr %tx_ir, align 8
  %s_idle = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 55
  %20 = ptrtoint ptr %s_idle to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @loop_set_idle, ptr %s_idle, align 4
  %s_wideband_receiver = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 56
  %21 = ptrtoint ptr %s_wideband_receiver to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @loop_set_wideband_receiver, ptr %s_wideband_receiver, align 8
  %s_carrier_report = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 57
  %22 = ptrtoint ptr %s_carrier_report to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @loop_set_carrier_report, ptr %s_carrier_report, align 4
  %s_wakeup_filter = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 59
  %23 = ptrtoint ptr %s_wakeup_filter to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @loop_set_wakeup_filter, ptr %s_wakeup_filter, align 4
  store i32 1, ptr getelementptr inbounds (%struct.loopback_dev, ptr @loopdev, i32 0, i32 1), align 4
  store i32 36000, ptr getelementptr inbounds (%struct.loopback_dev, ptr @loopdev, i32 0, i32 2), align 4
  store i32 50, ptr getelementptr inbounds (%struct.loopback_dev, ptr @loopdev, i32 0, i32 3), align 4
  store i32 1, ptr getelementptr inbounds (%struct.loopback_dev, ptr @loopdev, i32 0, i32 7), align 4
  store i32 -1, ptr getelementptr inbounds (%struct.loopback_dev, ptr @loopdev, i32 0, i32 8), align 4
  store i8 1, ptr getelementptr inbounds (%struct.loopback_dev, ptr @loopdev, i32 0, i32 4), align 4
  store i8 0, ptr getelementptr inbounds (%struct.loopback_dev, ptr @loopdev, i32 0, i32 5), align 1
  store i8 0, ptr getelementptr inbounds (%struct.loopback_dev, ptr @loopdev, i32 0, i32 6), align 2
  %call2 = tail call i32 @rc_register_device(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.4) #9
  tail call void @rc_free_device(ptr noundef nonnull %call) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %call, ptr @loopdev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %if.end4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loop_set_tx_mask(ptr noundef %dev, i32 noundef %mask) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mask)
  %2 = icmp ult i32 %mask, 4
  br i1 %2, label %do.body6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @loop_set_tx_mask.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@loop_set_tx_mask, %if.then3)) #6
          to label %cleanup [label %if.then3], !srcloc !91

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @loop_set_tx_mask.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %mask) #6
  br label %cleanup

do.body6:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @loop_set_tx_mask.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@loop_set_tx_mask, %if.then18)) #6
          to label %do.end22 [label %if.then18], !srcloc !91

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @loop_set_tx_mask.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %mask) #6
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %do.body6
  %txmask = getelementptr inbounds %struct.loopback_dev, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %txmask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mask, ptr %txmask, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.then3, %do.body
  %retval.0 = phi i32 [ 0, %do.end22 ], [ 2, %if.then3 ], [ 2, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loop_set_tx_carrier(ptr noundef %dev, i32 noundef %carrier) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @loop_set_tx_carrier.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@loop_set_tx_carrier, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !91

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @loop_set_tx_carrier.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %carrier) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %txcarrier = getelementptr inbounds %struct.loopback_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %txcarrier to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %carrier, ptr %txcarrier, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loop_set_tx_duty_cycle(ptr noundef %dev, i32 noundef %duty_cycle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = add i32 %duty_cycle, -100
  call void @__sanitizer_cov_trace_const_cmp4(i32 -99, i32 %2)
  %3 = icmp ult i32 %2, -99
  br i1 %3, label %do.body, label %do.body7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @loop_set_tx_duty_cycle.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@loop_set_tx_duty_cycle, %if.then4)) #6
          to label %cleanup [label %if.then4], !srcloc !91

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @loop_set_tx_duty_cycle.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %duty_cycle) #6
  br label %cleanup

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @loop_set_tx_duty_cycle.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@loop_set_tx_duty_cycle, %if.then19)) #6
          to label %do.end23 [label %if.then19], !srcloc !91

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @loop_set_tx_duty_cycle.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %duty_cycle) #6
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %do.body7
  %txduty = getelementptr inbounds %struct.loopback_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %txduty to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %duty_cycle, ptr %txduty, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.then4, %do.body
  %retval.0 = phi i32 [ 0, %do.end23 ], [ -22, %if.then4 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loop_set_rx_carrier_range(ptr noundef %dev, i32 noundef %min, i32 noundef %max) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = add i32 %min, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %max)
  %.not = icmp ult i32 %2, %max
  br i1 %.not, label %do.body7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @loop_set_rx_carrier_range.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@loop_set_rx_carrier_range, %if.then4)) #6
          to label %cleanup [label %if.then4], !srcloc !91

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @loop_set_rx_carrier_range.__UNIQUE_ID_ddebug233, ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %min, i32 noundef %max) #6
  br label %cleanup

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @loop_set_rx_carrier_range.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@loop_set_rx_carrier_range, %if.then19)) #6
          to label %do.end23 [label %if.then19], !srcloc !91

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @loop_set_rx_carrier_range.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %min, i32 noundef %max) #6
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %do.body7
  %rxcarriermin = getelementptr inbounds %struct.loopback_dev, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %rxcarriermin to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %min, ptr %rxcarriermin, align 4
  %rxcarriermax = getelementptr inbounds %struct.loopback_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %rxcarriermax to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %max, ptr %rxcarriermax, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.then4, %do.body
  %retval.0 = phi i32 [ 0, %do.end23 ], [ -22, %if.then4 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loop_tx_ir(ptr noundef %dev, ptr nocapture noundef readonly %txbuf, i32 noundef returned %count) #3 align 64 {
entry:
  %rawir = alloca %struct.ir_raw_event, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rawir) #6
  %2 = ptrtoint ptr %rawir to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %rawir, align 8
  %txcarrier = getelementptr inbounds %struct.loopback_dev, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %txcarrier to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %txcarrier, align 4
  %rxcarriermin = getelementptr inbounds %struct.loopback_dev, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %rxcarriermin to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rxcarriermin, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp = icmp ult i32 %4, %6
  br i1 %cmp, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %rxcarriermax = getelementptr inbounds %struct.loopback_dev, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %rxcarriermax to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rxcarriermax, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %8)
  %cmp2 = icmp ugt i32 %4, %8
  br i1 %cmp2, label %lor.lhs.false.do.body_crit_edge, label %if.end7

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @loop_tx_ir.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@loop_tx_ir, %if.then5)) #6
          to label %out [label %if.then5], !srcloc !91

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @loop_tx_ir.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.22) #6
  br label %out

if.end7:                                          ; preds = %lor.lhs.false
  %wideband = getelementptr inbounds %struct.loopback_dev, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %wideband to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %wideband, align 1, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not = icmp eq i8 %10, 0
  %. = select i1 %tobool8.not, i32 1, i32 2
  %txmask = getelementptr inbounds %struct.loopback_dev, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %txmask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %txmask, align 4
  %and = and i32 %., %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body13, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp3174.not = icmp eq i32 %count, 0
  br i1 %cmp3174.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pulse = getelementptr inbounds %struct.ir_raw_event, ptr %rawir, i32 0, i32 2
  br label %for.body

do.body13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @loop_tx_ir.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@loop_tx_ir, %if.then25)) #6
          to label %out [label %if.then25], !srcloc !91

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @loop_tx_ir.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.23) #6
  br label %out

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %13 = trunc i32 %i.075 to i8
  %14 = xor i8 %13, -1
  %15 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %pulse, align 1
  %bf.shl = shl i8 %14, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %pulse, align 1
  %arrayidx = getelementptr i32, ptr %txbuf, i32 %i.075
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %rawir to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %rawir, align 8
  %call33 = call i32 @ir_raw_event_store_with_filter(ptr noundef %dev, ptr noundef nonnull %rawir) #6
  %inc = add nuw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %carrierreport = getelementptr inbounds %struct.loopback_dev, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %carrierreport to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %carrierreport, align 2, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool34.not = icmp eq i8 %20, 0
  br i1 %tobool34.not, label %for.end.if.end45_crit_edge, label %if.then35

for.end.if.end45_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then35:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %pulse36 = getelementptr inbounds %struct.ir_raw_event, ptr %rawir, i32 0, i32 2
  %21 = ptrtoint ptr %pulse36 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load37 = load i8, ptr %pulse36, align 1
  %bf.clear41 = and i8 %bf.load37, 111
  %bf.set42 = or i8 %bf.clear41, 16
  store i8 %bf.set42, ptr %pulse36, align 1
  %22 = ptrtoint ptr %txcarrier to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %txcarrier, align 4
  %24 = ptrtoint ptr %rawir to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %rawir, align 8
  %call44 = call i32 @ir_raw_event_store(ptr noundef %dev, ptr noundef nonnull %rawir) #6
  br label %if.end45

if.end45:                                         ; preds = %if.then35, %for.end.if.end45_crit_edge
  %pulse46 = getelementptr inbounds %struct.ir_raw_event, ptr %rawir, i32 0, i32 2
  %25 = ptrtoint ptr %pulse46 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load47 = load i8, ptr %pulse46, align 1
  %bf.clear48 = and i8 %bf.load47, 127
  store i8 %bf.clear48, ptr %pulse46, align 1
  %timeout = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 34
  %26 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %timeout, align 4
  %28 = ptrtoint ptr %rawir to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %rawir, align 8
  %call50 = call i32 @ir_raw_event_store_with_filter(ptr noundef %dev, ptr noundef nonnull %rawir) #6
  call void @ir_raw_event_handle(ptr noundef %dev) #6
  br label %out

out:                                              ; preds = %if.end45, %if.then25, %do.body13, %if.then5, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rawir) #6
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @loop_set_idle(ptr noundef %dev, i1 noundef zeroext %enable) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %idle = getelementptr inbounds %struct.loopback_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %idle to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %idle, align 4, !range !92
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %frombool)
  %cmp.not = icmp eq i8 %3, %frombool
  br i1 %cmp.not, label %entry.if.end15_crit_edge, label %do.body

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @loop_set_idle.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@loop_set_idle, %if.then8)) #6
          to label %do.end [label %if.then8], !srcloc !91

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %cond = select i1 %enable, ptr @.str.26, ptr @.str.27
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @loop_set_idle.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull %cond) #6
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %4 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %idle, align 4
  br label %if.end15

if.end15:                                         ; preds = %do.end, %entry.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loop_set_wideband_receiver(ptr noundef %dev, i32 noundef %enable) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %wideband = getelementptr inbounds %struct.loopback_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %wideband to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wideband, align 1, !range !92
  %4 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %enable)
  %cmp.not = icmp eq i32 %4, %enable
  br i1 %cmp.not, label %entry.if.end15_crit_edge, label %do.body

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @loop_set_wideband_receiver.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@loop_set_wideband_receiver, %if.then5)) #6
          to label %do.end [label %if.then5], !srcloc !91

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool7.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool7.not, ptr @.str.31, ptr @.str.30
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @loop_set_wideband_receiver.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull %cond) #6
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool8 = icmp ne i32 %enable, 0
  %frombool14 = zext i1 %tobool8 to i8
  %5 = ptrtoint ptr %wideband to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool14, ptr %wideband, align 1
  br label %if.end15

if.end15:                                         ; preds = %do.end, %entry.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loop_set_carrier_report(ptr noundef %dev, i32 noundef %enable) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %carrierreport = getelementptr inbounds %struct.loopback_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %carrierreport to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %carrierreport, align 2, !range !92
  %4 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %enable)
  %cmp.not = icmp eq i32 %4, %enable
  br i1 %cmp.not, label %entry.if.end15_crit_edge, label %do.body

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @loop_set_carrier_report.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@loop_set_carrier_report, %if.then5)) #6
          to label %do.end [label %if.then5], !srcloc !91

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool7.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool7.not, ptr @.str.35, ptr @.str.34
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @loop_set_carrier_report.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull %cond) #6
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool8 = icmp ne i32 %enable, 0
  %frombool14 = zext i1 %tobool8 to i8
  %5 = ptrtoint ptr %carrierreport to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool14, ptr %carrierreport, align 2
  br label %if.end15

if.end15:                                         ; preds = %do.end, %entry.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loop_set_wakeup_filter(ptr noundef %dev, ptr nocapture noundef readonly %sc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mask = getelementptr inbounds %struct.rc_scancode_filter, ptr %sc, i32 0, i32 1
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 4096) #10
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %wakeup_protocol = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 19
  %3 = ptrtoint ptr %wakeup_protocol to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wakeup_protocol, align 8
  %5 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sc, align 4
  %call4 = tail call i32 @ir_raw_encode_scancode(i32 noundef %4, i32 noundef %6, ptr noundef nonnull %call7.i.i, i32 noundef 512) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -105, i32 %call4)
  %cmp = icmp eq i32 %call4, -105
  %spec.store.select = select i1 %cmp, i32 512, i32 %call4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.store.select)
  %cmp7 = icmp sgt i32 %spec.store.select, -1
  br i1 %cmp7, label %for.cond.preheader, label %if.end3.if.end11_crit_edge

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.cond.preheader:                               ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp925.not = icmp eq i32 %spec.store.select, 0
  br i1 %cmp925.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.026 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ir_raw_event, ptr %call7.i.i, i32 %i.026
  %call10 = tail call i32 @ir_raw_event_store(ptr noundef %dev, ptr noundef %arrayidx) #6
  %inc = add nuw nsw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc, %spec.store.select
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @ir_raw_event_handle(ptr noundef %dev) #6
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.end3.if.end11_crit_edge
  %ret.0 = phi i32 [ 0, %for.end ], [ %call4, %if.end3.if.end11_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end11 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store_with_filter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_event_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_encode_scancode(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !50, !51, !52, !54, !55, !57, !58, !59, !61, !62, !64, !65, !66, !67, !68, !70, !71, !72, !73, !74, !76, !77, !78, !79, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__initcall__kmod_rc_loopback__240_265_loop_init6, !1, !"__initcall__kmod_rc_loopback__240_265_loop_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/rc-loopback.c", i32 265, i32 1}
!2 = !{ptr @__exitcall_loop_exit, !3, !"__exitcall_loop_exit", i1 false, i1 false}
!3 = !{!"../drivers/media/rc/rc-loopback.c", i32 266, i32 1}
!4 = !{ptr @__UNIQUE_ID_description241, !5, !"__UNIQUE_ID_description241", i1 false, i1 false}
!5 = !{!"../drivers/media/rc/rc-loopback.c", i32 268, i32 1}
!6 = !{ptr @__UNIQUE_ID_author242, !7, !"__UNIQUE_ID_author242", i1 false, i1 false}
!7 = !{!"../drivers/media/rc/rc-loopback.c", i32 269, i32 1}
!8 = !{ptr @__UNIQUE_ID_file243, !9, !"__UNIQUE_ID_file243", i1 false, i1 false}
!9 = !{!"../drivers/media/rc/rc-loopback.c", i32 270, i32 1}
!10 = !{ptr @__UNIQUE_ID_license244, !9, !"__UNIQUE_ID_license244", i1 false, i1 false}
!11 = !{ptr @loopdev, !12, !"loopdev", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/rc-loopback.c", i32 34, i32 28}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/rc-loopback.c", i32 215, i32 21}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/rc/rc-loopback.c", i32 216, i32 20}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/rc/rc-loopback.c", i32 219, i32 21}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/rc/rc-loopback.c", i32 220, i32 18}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/rc/rc-loopback.c", i32 251, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @loop_init._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @loop_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/rc/rc-loopback.c", i32 41, i32 3}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @loop_set_tx_mask.__UNIQUE_ID_ddebug228, !30, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/rc/rc-loopback.c", i32 45, i32 2}
!36 = !{ptr @loop_set_tx_mask.__UNIQUE_ID_ddebug229, !35, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/rc/rc-loopback.c", i32 54, i32 2}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @loop_set_tx_carrier.__UNIQUE_ID_ddebug230, !38, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/rc/rc-loopback.c", i32 64, i32 3}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @loop_set_tx_duty_cycle.__UNIQUE_ID_ddebug231, !42, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/rc/rc-loopback.c", i32 68, i32 2}
!47 = !{ptr @loop_set_tx_duty_cycle.__UNIQUE_ID_ddebug232, !46, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/rc/rc-loopback.c", i32 78, i32 3}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @loop_set_rx_carrier_range.__UNIQUE_ID_ddebug233, !49, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/rc/rc-loopback.c", i32 82, i32 2}
!54 = !{ptr @loop_set_rx_carrier_range.__UNIQUE_ID_ddebug234, !53, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/rc/rc-loopback.c", i32 97, i32 3}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @loop_tx_ir.__UNIQUE_ID_ddebug235, !56, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/rc/rc-loopback.c", i32 107, i32 3}
!61 = !{ptr @loop_tx_ir.__UNIQUE_ID_ddebug236, !60, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/rc/rc-loopback.c", i32 142, i32 3}
!64 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @loop_set_idle.__UNIQUE_ID_ddebug237, !63, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!66 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/rc/rc-loopback.c", i32 152, i32 3}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @loop_set_wideband_receiver.__UNIQUE_ID_ddebug238, !69, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!72 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/rc/rc-loopback.c", i32 164, i32 3}
!76 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @loop_set_carrier_report.__UNIQUE_ID_ddebug239, !75, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!78 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!80 = distinct !{null, !81, !"max", i1 false, i1 false}
!81 = !{!"../drivers/media/rc/rc-loopback.c", i32 174, i32 28}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i64 2148281796, i64 2148281801, i64 2148281814, i64 2148281858, i64 2148281892, i64 2148281913}
!92 = !{i8 0, i8 2}
