; ModuleID = '/llk/IR_all_yes/kernel/power/suspend_test.c_pt.bc'
source_filename = "../kernel/power/suspend_test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
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
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@suspend_test_start_time = internal global { i32, [28 x i8] } zeroinitializer, align 32
@suspend_test_finish._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016PM: %s took %d.%03d seconds\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"suspend_test_finish\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"kernel/power/suspend_test.c\00", [36 x i8] zeroinitializer }, align 32
@suspend_test_finish._entry_ptr = internal global ptr @suspend_test_finish._entry, section ".printk_index", align 4
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Component: %s, time: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@__setup_str_setup_test_suspend = internal constant [13 x i8] c"test_suspend\00", section ".init.rodata", align 1
@__setup_setup_test_suspend = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_test_suspend, ptr @setup_test_suspend, i32 0 }, section ".init.setup", align 4
@__initcall__kmod_suspend_test__288_219_test_suspend7 = internal global ptr @test_suspend, section ".initcall7.init", align 4
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@test_repeat_count_max = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@pm_labels = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@test_state_label = internal unnamed_addr global ptr null, section ".init.data", align 4
@setup_test_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.5, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"setup_test_suspend\00", [45 x i8] zeroinitializer }, align 32
@setup_test_suspend._entry_ptr = internal global ptr @setup_test_suspend._entry, section ".printk_index", align 4
@warn_bad_state = internal global [37 x i8] c"\014PM: can't test '%s' suspend state\0A\00", section ".init.data", align 1
@test_suspend.warn_no_rtc = internal global [48 x i8] c"\014PM: no wakealarm-capable RTC driver is ready\0A\00", section ".init.data", align 1
@pm_states = external dso_local local_unnamed_addr global [0 x ptr], align 4
@test_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.6, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"test_suspend\00", [19 x i8] zeroinitializer }, align 32
@test_suspend._entry_ptr = internal global ptr @test_suspend._entry, section ".printk_index", align 4
@rtc_class = external dso_local local_unnamed_addr global ptr, align 4
@test_suspend._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.6, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_suspend._entry_ptr.8 = internal global ptr @test_suspend._entry.7, section ".printk_index", align 4
@test_wakealarm.err_readtime = internal global [34 x i8] c"\013PM: can't read %s time, err %d\0A\00", section ".init.data", align 1
@test_wakealarm.err_wakealarm = internal global [38 x i8] c"\013PM: can't set %s wakealarm, err %d\0A\00", section ".init.data", align 1
@test_wakealarm.err_suspend = internal global [37 x i8] c"\013PM: suspend test failed, error %d\0A\00", section ".init.data", align 1
@test_wakealarm.info_test = internal global [41 x i8] c"\016PM: test RTC wakeup from '%s' suspend\0A\00", section ".init.data", align 1
@test_wakealarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.9, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"test_wakealarm\00", [17 x i8] zeroinitializer }, align 32
@test_wakealarm._entry_ptr = internal global ptr @test_wakealarm._entry, section ".printk_index", align 4
@test_wakealarm._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.9, ptr @.str.2, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_wakealarm._entry_ptr.11 = internal global ptr @test_wakealarm._entry.10, section ".printk_index", align 4
@test_wakealarm._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.9, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_wakealarm._entry_ptr.13 = internal global ptr @test_wakealarm._entry.12, section ".printk_index", align 4
@test_wakealarm._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.9, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_wakealarm._entry_ptr.15 = internal global ptr @test_wakealarm._entry.14, section ".printk_index", align 4
@test_wakealarm._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.9, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_wakealarm._entry_ptr.17 = internal global ptr @test_wakealarm._entry.16, section ".printk_index", align 4
@test_wakealarm._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.9, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_wakealarm._entry_ptr.19 = internal global ptr @test_wakealarm._entry.18, section ".printk_index", align 4
@test_repeat_count_current = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.20 = private unnamed_addr constant [24 x i8] c"suspend_test_start_time\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 23, i32 22 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 42, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 53, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 158, i32 32 }
@___asan_gen_.41 = private unnamed_addr constant [22 x i8] c"test_repeat_count_max\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 24, i32 12 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 174, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 199, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 210, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 81, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 92, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 97, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 103, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 109, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 114, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [26 x i8] c"test_repeat_count_current\00", align 1
@___asan_gen_.81 = private constant [31 x i8] c"../kernel/power/suspend_test.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 25, i32 12 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__initcall__kmod_suspend_test__288_219_test_suspend7, ptr @__setup_setup_test_suspend, ptr @setup_test_suspend._entry, ptr @setup_test_suspend._entry_ptr, ptr @suspend_test_finish._entry, ptr @suspend_test_finish._entry_ptr, ptr @test_suspend._entry, ptr @test_suspend._entry.7, ptr @test_suspend._entry_ptr, ptr @test_suspend._entry_ptr.8, ptr @test_wakealarm._entry, ptr @test_wakealarm._entry.10, ptr @test_wakealarm._entry.12, ptr @test_wakealarm._entry.14, ptr @test_wakealarm._entry.16, ptr @test_wakealarm._entry.18, ptr @test_wakealarm._entry_ptr, ptr @test_wakealarm._entry_ptr.11, ptr @test_wakealarm._entry_ptr.13, ptr @test_wakealarm._entry_ptr.15, ptr @test_wakealarm._entry_ptr.17, ptr @test_wakealarm._entry_ptr.19, ptr @suspend_test_start_time, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @test_repeat_count_max, ptr @.str.5, ptr @.str.6, ptr @.str.9, ptr @test_repeat_count_current], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_test_start_time to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_test_finish._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_repeat_count_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_test_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_suspend._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_wakealarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_wakealarm._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_wakealarm._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_wakealarm._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_wakealarm._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_wakealarm._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_repeat_count_current to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @suspend_test_start() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  store i32 %0, ptr @suspend_test_start_time, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @suspend_test_finish(ptr noundef %label) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = load i32, ptr @suspend_test_start_time, align 4
  %sub = sub i32 %0, %1
  %2 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %2) #9
  %call.frozen = freeze i32 %call
  %div = udiv i32 %call.frozen, 1000
  %3 = mul i32 %div, 1000
  %rem.decomposed = sub i32 %call.frozen, %3
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %label, i32 noundef %div, i32 noundef %rem.decomposed) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %call)
  %cmp4 = icmp ugt i32 %call, 10000
  br i1 %cmp4, label %do.end14, label %entry.if.end_crit_edge, !prof !74

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 54, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %label, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end14, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @setup_test_suspend(ptr noundef %value) #5 section ".init.text" align 64 {
entry:
  %value.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %incdec.ptr = getelementptr i8, ptr %value, i32 1
  %0 = ptrtoint ptr %value.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %incdec.ptr, ptr %value.addr, align 4
  %call = call ptr @strsep(ptr noundef nonnull %value.addr, ptr noundef nonnull @.str.4) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call ptr @strsep(ptr noundef nonnull %value.addr, ptr noundef nonnull @.str.4) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.for.body.preheader_crit_edge, label %if.then3

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

if.then3:                                         ; preds = %if.end
  %call.i = call i32 @kstrtouint(ptr noundef nonnull %call1, i32 noundef 0, ptr noundef nonnull @test_repeat_count_max) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.then3.for.body.preheader_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.for.body.preheader_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then3.for.body.preheader_crit_edge, %if.end.for.body.preheader_crit_edge
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %do.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.025 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %arrayidx = getelementptr [0 x ptr], ptr @pm_labels, i32 0, i32 %i.025
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call9 = call i32 @strcmp(ptr noundef %2, ptr noundef nonnull %call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %for.cond

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %2, ptr @test_state_label, align 4
  br label %cleanup

do.end:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @warn_bad_state, ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then11, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @test_suspend() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @test_state_label, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup27_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup27

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %test_state.046 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x ptr], ptr @pm_states, i32 0, i32 %test_state.046
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %call = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull %2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end10, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %test_state.046, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @warn_bad_state, ptr noundef nonnull %0) #12
  br label %cleanup27

if.end10:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rtc_class to i32))
  %3 = load ptr, ptr @rtc_class, align 4
  %call11 = tail call ptr @class_find_device(ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef nonnull @has_wakealarm) #9
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.do.end23_crit_edge, label %if.then13

if.end10.do.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23

if.then13:                                        ; preds = %if.end10
  %init_name.i = getelementptr inbounds %struct.device, ptr %call11, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then13.if.end16_crit_edge

if.then13.if.end16_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.end.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call11, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end.i, %if.then13.if.end16_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.then13.if.end16_crit_edge ]
  %call15 = tail call ptr @rtc_class_open(ptr noundef %retval.0.i) #9
  tail call void @put_device(ptr noundef nonnull %call11) #9
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %if.end16.do.end23_crit_edge, label %if.end26

if.end16.do.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23

do.end23:                                         ; preds = %if.end16.do.end23_crit_edge, %if.end10.do.end23_crit_edge
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @test_suspend.warn_no_rtc) #12
  br label %cleanup27

if.end26:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @test_wakealarm(ptr noundef nonnull %call15, i32 noundef %test_state.046) #14
  tail call void @rtc_class_close(ptr noundef nonnull %call15) #9
  br label %cleanup27

cleanup27:                                        ; preds = %if.end26, %do.end23, %do.end, %entry.cleanup27_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @has_wakealarm(ptr noundef %dev, ptr nocapture noundef readnone %data) #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.rtc_device, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %features, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %device_may_wakeup.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

device_may_wakeup.exit:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %wakeup.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp ne ptr %6, null
  %spec.select = zext i1 %tobool2.i.not to i32
  br label %cleanup

cleanup:                                          ; preds = %device_may_wakeup.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %spec.select, %device_may_wakeup.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtc_class_open(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_wakealarm(ptr noundef %rtc, i32 noundef %state) unnamed_addr #5 section ".init.text" align 64 {
entry:
  %alm = alloca %struct.rtc_wkalrm, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %alm) #9
  %0 = call ptr @memset(ptr %alm, i32 255, i32 40)
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2
  br label %repeat

repeat:                                           ; preds = %if.end71.repeat_crit_edge, %entry
  %state.addr.0 = phi i32 [ %state, %entry ], [ %state.addr.2116125, %if.end71.repeat_crit_edge ]
  %call = call i32 @rtc_read_time(ptr noundef %rtc, ptr noundef %time) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %repeat
  %init_name.i = getelementptr inbounds %struct.device, ptr %rtc, i32 0, i32 3
  %1 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rtc, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %2, %do.end.dev_name.exit_crit_edge ]
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @test_wakealarm.err_readtime, ptr noundef %retval.0.i, i32 noundef %call) #12
  br label %cleanup

if.end4:                                          ; preds = %repeat
  %call6 = call i64 @rtc_tm_to_time64(ptr noundef %time) #9
  %5 = call ptr @memset(ptr %alm, i32 0, i32 40)
  %add = add i64 %call6, 10
  call void @rtc_time64_to_tm(i64 noundef %add, ptr noundef %time) #9
  %6 = ptrtoint ptr %alm to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %alm, align 4
  %call8 = call i32 @rtc_set_alarm(ptr noundef %rtc, ptr noundef nonnull %alm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end15, label %if.end20

do.end15:                                         ; preds = %if.end4
  %init_name.i100 = getelementptr inbounds %struct.device, ptr %rtc, i32 0, i32 3
  %7 = ptrtoint ptr %init_name.i100 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i100, align 8
  %tobool.not.i101 = icmp eq ptr %8, null
  br i1 %tobool.not.i101, label %if.end.i102, label %do.end15.dev_name.exit104_crit_edge

do.end15.dev_name.exit104_crit_edge:              ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit104

if.end.i102:                                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rtc, align 4
  br label %dev_name.exit104

dev_name.exit104:                                 ; preds = %if.end.i102, %do.end15.dev_name.exit104_crit_edge
  %retval.0.i103 = phi ptr [ %10, %if.end.i102 ], [ %8, %do.end15.dev_name.exit104_crit_edge ]
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @test_wakealarm.err_wakealarm, ptr noundef %retval.0.i103, i32 noundef %call8) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end4
  %11 = zext i32 %state.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state.addr.0, label %if.end20.if.end71_crit_edge [
    i32 3, label %do.end27
    i32 2, label %if.end20.do.end41_crit_edge
    i32 1, label %if.end20.do.end56_crit_edge
  ]

if.end20.do.end56_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end56

if.end20.do.end41_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41

if.end20.if.end71_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

do.end27:                                         ; preds = %if.end20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @pm_states, i32 0, i32 3) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @pm_states, i32 0, i32 3), align 4
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @test_wakealarm.info_test, ptr noundef %12) #12
  %call30 = call i32 @pm_suspend(i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call30)
  %cmp31 = icmp eq i32 %call30, -19
  br i1 %cmp31, label %do.end27.do.end41_crit_edge, label %do.end27.if.end61_crit_edge

do.end27.if.end61_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

do.end27.do.end41_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41

do.end41:                                         ; preds = %do.end27.do.end41_crit_edge, %if.end20.do.end41_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @pm_states, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @pm_states, i32 0, i32 2), align 4
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @test_wakealarm.info_test, ptr noundef %13) #12
  %call45 = call i32 @pm_suspend(i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %do.end41.do.end56_crit_edge, label %do.end41.if.end71_crit_edge

do.end41.if.end71_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

do.end41.do.end56_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end56

do.end56:                                         ; preds = %do.end41.do.end56_crit_edge, %if.end20.do.end56_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @pm_states, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @pm_states, i32 0, i32 1), align 4
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @test_wakealarm.info_test, ptr noundef %14) #12
  %call60 = call i32 @pm_suspend(i32 noundef 1) #9
  br label %if.end61

if.end61:                                         ; preds = %do.end56, %do.end27.if.end61_crit_edge
  %state.addr.2116 = phi i32 [ 1, %do.end56 ], [ 3, %do.end27.if.end61_crit_edge ]
  %status.2 = phi i32 [ %call60, %do.end56 ], [ %call30, %do.end27.if.end61_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.2)
  %cmp62 = icmp slt i32 %status.2, 0
  br i1 %cmp62, label %do.end68, label %if.end61.if.end71_crit_edge

if.end61.if.end71_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

do.end68:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @test_wakealarm.err_suspend, i32 noundef %status.2) #12
  br label %if.end71

if.end71:                                         ; preds = %do.end68, %if.end61.if.end71_crit_edge, %do.end41.if.end71_crit_edge, %if.end20.if.end71_crit_edge
  %state.addr.2116125 = phi i32 [ %state.addr.2116, %do.end68 ], [ %state.addr.2116, %if.end61.if.end71_crit_edge ], [ 2, %do.end41.if.end71_crit_edge ], [ %state.addr.0, %if.end20.if.end71_crit_edge ]
  %15 = load i32, ptr @test_repeat_count_current, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr @test_repeat_count_current, align 4
  %16 = load i32, ptr @test_repeat_count_max, align 4
  %cmp72 = icmp ult i32 %inc, %16
  br i1 %cmp72, label %if.end71.repeat_crit_edge, label %if.end74

if.end71.repeat_crit_edge:                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %repeat

if.end74:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %alm to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %alm, align 4
  %call76 = call i32 @rtc_set_alarm(ptr noundef %rtc, ptr noundef nonnull %alm) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %dev_name.exit104, %dev_name.exit
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %alm) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_class_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_read_time(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_set_alarm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_suspend(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold mustprogress nofree norecurse nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }
attributes #14 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !17, !19, !20, !21, !23, !25, !27, !29, !31, !32, !33, !35, !36, !38, !40, !42, !44, !46, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/power/suspend_test.c", i32 42, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @suspend_test_finish._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @suspend_test_finish._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/power/suspend_test.c", i32 53, i32 2}
!8 = !{ptr @__setup_setup_test_suspend, !9, !"__setup_setup_test_suspend", i1 false, i1 false}
!9 = !{!"../kernel/power/suspend_test.c", i32 177, i32 1}
!10 = !{ptr @__initcall__kmod_suspend_test__288_219_test_suspend7, !11, !"__initcall__kmod_suspend_test__288_219_test_suspend7", i1 false, i1 false}
!11 = !{!"../kernel/power/suspend_test.c", i32 219, i32 1}
!12 = !{ptr @suspend_test_start_time, !13, !"suspend_test_start_time", i1 false, i1 false}
!13 = !{!"../kernel/power/suspend_test.c", i32 23, i32 22}
!14 = !{ptr @__setup_str_setup_test_suspend, !9, !"__setup_str_setup_test_suspend", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../kernel/power/suspend_test.c", i32 158, i32 32}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../kernel/power/suspend_test.c", i32 174, i32 2}
!19 = !{ptr @setup_test_suspend._entry, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @setup_test_suspend._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @test_repeat_count_max, !22, !"test_repeat_count_max", i1 false, i1 false}
!22 = !{!"../kernel/power/suspend_test.c", i32 24, i32 12}
!23 = !{ptr @test_state_label, !24, !"test_state_label", i1 false, i1 false}
!24 = !{!"../kernel/power/suspend_test.c", i32 145, i32 20}
!25 = !{ptr @warn_bad_state, !26, !"warn_bad_state", i1 false, i1 false}
!26 = !{!"../kernel/power/suspend_test.c", i32 147, i32 13}
!27 = !{ptr @test_suspend.warn_no_rtc, !28, !"warn_no_rtc", i1 false, i1 false}
!28 = !{!"../kernel/power/suspend_test.c", i32 181, i32 15}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../kernel/power/suspend_test.c", i32 199, i32 3}
!31 = !{ptr @test_suspend._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @test_suspend._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @test_suspend._entry.7, !34, !"_entry", i1 false, i1 false}
!34 = !{!"../kernel/power/suspend_test.c", i32 210, i32 3}
!35 = !{ptr @test_suspend._entry_ptr.8, !34, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @test_wakealarm.err_readtime, !37, !"err_readtime", i1 false, i1 false}
!37 = !{!"../kernel/power/suspend_test.c", i32 64, i32 14}
!38 = !{ptr @test_wakealarm.err_wakealarm, !39, !"err_wakealarm", i1 false, i1 false}
!39 = !{!"../kernel/power/suspend_test.c", i32 66, i32 14}
!40 = !{ptr @test_wakealarm.err_suspend, !41, !"err_suspend", i1 false, i1 false}
!41 = !{!"../kernel/power/suspend_test.c", i32 68, i32 14}
!42 = !{ptr @test_wakealarm.info_test, !43, !"info_test", i1 false, i1 false}
!43 = !{!"../kernel/power/suspend_test.c", i32 70, i32 14}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../kernel/power/suspend_test.c", i32 81, i32 3}
!46 = !{ptr @test_wakealarm._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @test_wakealarm._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @test_wakealarm._entry.10, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../kernel/power/suspend_test.c", i32 92, i32 3}
!50 = !{ptr @test_wakealarm._entry_ptr.11, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @test_wakealarm._entry.12, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../kernel/power/suspend_test.c", i32 97, i32 3}
!53 = !{ptr @test_wakealarm._entry_ptr.13, !52, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @test_wakealarm._entry.14, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../kernel/power/suspend_test.c", i32 103, i32 3}
!56 = !{ptr @test_wakealarm._entry_ptr.15, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @test_wakealarm._entry.16, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../kernel/power/suspend_test.c", i32 109, i32 3}
!59 = !{ptr @test_wakealarm._entry_ptr.17, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @test_wakealarm._entry.18, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../kernel/power/suspend_test.c", i32 114, i32 3}
!62 = !{ptr @test_wakealarm._entry_ptr.19, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @test_repeat_count_current, !64, !"test_repeat_count_current", i1 false, i1 false}
!64 = !{!"../kernel/power/suspend_test.c", i32 25, i32 12}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"branch_weights", i32 1, i32 2000}
