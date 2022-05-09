; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/lms501kf03.c_pt.bc'
source_filename = "../drivers/video/backlight/lms501kf03.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lcd_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.lms501kf03 = type { ptr, ptr, i32, ptr, ptr }
%struct.lcd_platform_data = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.lcd_device = type { %struct.lcd_properties, %struct.mutex, ptr, %struct.mutex, %struct.notifier_block, %struct.device }
%struct.lcd_properties = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_lms501kf03__304_419_lms501kf03_driver_init6 = internal global ptr @lms501kf03_driver_init, section ".initcall6.init", align 4
@lms501kf03_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @lms501kf03_probe, ptr @lms501kf03_remove, ptr @lms501kf03_shutdown, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lms501kf03_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_lms501kf03_driver_exit = internal global ptr @lms501kf03_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author305 = internal constant [51 x i8] c"lms501kf03.author=Jingoo Han <jg1.han@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description306 = internal constant [45 x i8] c"lms501kf03.description=lms501kf03 LCD Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [51 x i8] c"lms501kf03.file=drivers/video/backlight/lms501kf03\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [23 x i8] c"lms501kf03.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lms501kf03\00", [21 x i8] zeroinitializer }, align 32
@lms501kf03_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @lms501kf03_suspend, ptr @lms501kf03_resume, ptr @lms501kf03_suspend, ptr @lms501kf03_resume, ptr @lms501kf03_suspend, ptr @lms501kf03_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@lms501kf03_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 327, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spi setup failed.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lms501kf03_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/video/backlight/lms501kf03.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lms501kf03_probe._entry_ptr = internal global ptr @lms501kf03_probe._entry, section ".printk_index", align 4
@lms501kf03_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 336, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"platform data is NULL\0A\00", [41 x i8] zeroinitializer }, align 32
@lms501kf03_probe._entry_ptr.8 = internal global ptr @lms501kf03_probe._entry.6, section ".printk_index", align 4
@lms501kf03_lcd_ops = internal global { %struct.lcd_ops, [40 x i8] } { %struct.lcd_ops { ptr @lms501kf03_get_power, ptr @lms501kf03_set_power, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lms501kf03_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 362, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"lms501kf03 panel driver has been probed.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lms501kf03_probe._entry_ptr.12 = internal global ptr @lms501kf03_probe._entry.9, section ".printk_index", align 4
@lms501kf03_set_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 300, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"power value should be 0, 1 or 4.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lms501kf03_set_power\00", [43 x i8] zeroinitializer }, align 32
@lms501kf03_set_power._entry_ptr = internal global ptr @lms501kf03_set_power._entry, section ".printk_index", align 4
@lms501kf03_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 220, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"power_on is NULL.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lms501kf03_power_on\00", [44 x i8] zeroinitializer }, align 32
@lms501kf03_power_on._entry_ptr = internal global ptr @lms501kf03_power_on._entry, section ".printk_index", align 4
@lms501kf03_power_on._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 228, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reset is NULL.\0A\00", [16 x i8] zeroinitializer }, align 32
@lms501kf03_power_on._entry_ptr.19 = internal global ptr @lms501kf03_power_on._entry.17, section ".printk_index", align 4
@lms501kf03_power_on._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.3, i32 237, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to initialize ldi.\0A\00", [37 x i8] zeroinitializer }, align 32
@lms501kf03_power_on._entry_ptr.22 = internal global ptr @lms501kf03_power_on._entry.20, section ".printk_index", align 4
@lms501kf03_power_on._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.3, i32 243, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to enable ldi.\0A\00", [41 x i8] zeroinitializer }, align 32
@lms501kf03_power_on._entry_ptr.25 = internal global ptr @lms501kf03_power_on._entry.23, section ".printk_index", align 4
@seq_password = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\B9\FF\83i", [28 x i8] zeroinitializer }, align 32
@seq_power = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\B1\01\004\06\00\14\14 (\12\12\17\0A\01\E6\E6\E6\E6\E6", [44 x i8] zeroinitializer }, align 32
@seq_display = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\B2\00+\03\03p\00\FF\00\00\00\00\03\03\00\01", [16 x i8] zeroinitializer }, align 32
@seq_rgb_if = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B3\09", [30 x i8] zeroinitializer }, align 32
@seq_display_inv = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\B4\01\08w\0E\06", [26 x i8] zeroinitializer }, align 32
@seq_vcom = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B6L.", [29 x i8] zeroinitializer }, align 32
@seq_gate = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\D5\00\05\03)\01\07\17h\137 1\8AF\9BW\13\02u\B9d\A8\07\0F\04\07", [37 x i8] zeroinitializer }, align 32
@seq_panel = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\CC\02", [30 x i8] zeroinitializer }, align 32
@seq_col_mod = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c":w", [30 x i8] zeroinitializer }, align 32
@seq_w_gamma = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\E0\00\04\09\0F\1F?\1F/\0A\0F\10\16\18\16\17\0D\15\00\04\09\0F8? 9\0A\0F\10\16\18\16\17\0D\15", [61 x i8] zeroinitializer }, align 32
@seq_sleep_out = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\11", [31 x i8] zeroinitializer }, align 32
@seq_rgb_gamma = internal constant { <{ [119 x i8], [9 x i8] }>, [32 x i8] } { <{ [119 x i8], [9 x i8] }> <{ [119 x i8] c"\C1\01\03\07\0F\1A\22,3<FOX`iqy\82\89\92\9A\A1\A9\B1\B9\C1\C9\CF\D6\DE\E5\EC\F3\F9\FF\DD9\07\1C\CB\AB_I\80\03\07\0F\19 *19BKS[cks{\83\8A\92\9B\A2\AA\B2\BA\C2\CA\D0\D8\E1\E8\F0\F8\FF\F7\D8\BE\A79@\85\8C\C0\04\07\0C\17\1C#+4;CLT[cjsz\82\8A\91\98\A1\A8\B0\B7\C1\C9\CF\D9\E3\EA\F4\FF", [9 x i8] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@seq_display_on = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c")", [31 x i8] zeroinitializer }, align 32
@lms501kf03_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 259, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lcd setting failed.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lms501kf03_power_off\00", [43 x i8] zeroinitializer }, align 32
@lms501kf03_power_off._entry_ptr = internal global ptr @lms501kf03_power_off._entry, section ".printk_index", align 4
@seq_display_off = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\10", [31 x i8] zeroinitializer }, align 32
@lms501kf03_suspend.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lms501kf03_suspend\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lcd->power = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"lms501kf03_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 409, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 411, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"lms501kf03_pm_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 399, i32 8 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 327, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 336, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [19 x i8] c"lms501kf03_lcd_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 307, i32 23 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 362, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 300, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 220, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 228, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 237, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 243, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [13 x i8] c"seq_password\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 28, i32 28 }
@___asan_gen_.115 = private unnamed_addr constant [10 x i8] c"seq_power\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 32, i32 28 }
@___asan_gen_.118 = private unnamed_addr constant [12 x i8] c"seq_display\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 37, i32 28 }
@___asan_gen_.121 = private unnamed_addr constant [11 x i8] c"seq_rgb_if\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 42, i32 28 }
@___asan_gen_.124 = private unnamed_addr constant [16 x i8] c"seq_display_inv\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 46, i32 28 }
@___asan_gen_.127 = private unnamed_addr constant [9 x i8] c"seq_vcom\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 50, i32 28 }
@___asan_gen_.130 = private unnamed_addr constant [9 x i8] c"seq_gate\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 54, i32 28 }
@___asan_gen_.133 = private unnamed_addr constant [10 x i8] c"seq_panel\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 60, i32 28 }
@___asan_gen_.136 = private unnamed_addr constant [12 x i8] c"seq_col_mod\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 64, i32 28 }
@___asan_gen_.139 = private unnamed_addr constant [12 x i8] c"seq_w_gamma\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 68, i32 28 }
@___asan_gen_.142 = private unnamed_addr constant [14 x i8] c"seq_sleep_out\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 91, i32 28 }
@___asan_gen_.145 = private unnamed_addr constant [14 x i8] c"seq_rgb_gamma\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 75, i32 28 }
@___asan_gen_.148 = private unnamed_addr constant [15 x i8] c"seq_display_on\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 95, i32 28 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 259, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [16 x i8] c"seq_display_off\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 99, i32 28 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private constant [40 x i8] c"../drivers/video/backlight/lms501kf03.c\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 380, i32 2 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__exitcall_lms501kf03_driver_exit, ptr @__initcall__kmod_lms501kf03__304_419_lms501kf03_driver_init6, ptr @lms501kf03_driver_exit, ptr @lms501kf03_power_off._entry, ptr @lms501kf03_power_off._entry_ptr, ptr @lms501kf03_power_on._entry, ptr @lms501kf03_power_on._entry.17, ptr @lms501kf03_power_on._entry.20, ptr @lms501kf03_power_on._entry.23, ptr @lms501kf03_power_on._entry_ptr, ptr @lms501kf03_power_on._entry_ptr.19, ptr @lms501kf03_power_on._entry_ptr.22, ptr @lms501kf03_power_on._entry_ptr.25, ptr @lms501kf03_probe._entry, ptr @lms501kf03_probe._entry.6, ptr @lms501kf03_probe._entry.9, ptr @lms501kf03_probe._entry_ptr, ptr @lms501kf03_probe._entry_ptr.12, ptr @lms501kf03_probe._entry_ptr.8, ptr @lms501kf03_set_power._entry, ptr @lms501kf03_set_power._entry_ptr, ptr @lms501kf03_driver, ptr @.str, ptr @lms501kf03_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @lms501kf03_lcd_ops, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @seq_password, ptr @seq_power, ptr @seq_display, ptr @seq_rgb_if, ptr @seq_display_inv, ptr @seq_vcom, ptr @seq_gate, ptr @seq_panel, ptr @seq_col_mod, ptr @seq_w_gamma, ptr @seq_sleep_out, ptr @seq_rgb_gamma, ptr @seq_display_on, ptr @.str.27, ptr @.str.28, ptr @seq_display_off, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lms501kf03_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lms501kf03_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lms501kf03_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lms501kf03_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lms501kf03_lcd_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lms501kf03_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lms501kf03_set_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lms501kf03_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lms501kf03_power_on._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lms501kf03_power_on._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lms501kf03_power_on._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_password to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_power to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_display to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_rgb_if to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_display_inv to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_vcom to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_gate to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_panel to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_col_mod to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_w_gamma to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_sleep_out to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_rgb_gamma to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_display_on to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lms501kf03_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_display_off to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lms501kf03_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @lms501kf03_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lms501kf03_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @lms501kf03_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lms501kf03_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 20, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %0 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 9, ptr %bits_per_word, align 1
  %call1 = tail call i32 @spi_setup(ptr noundef %spi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %spi5 = getelementptr inbounds %struct.lms501kf03, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %spi5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %spi, ptr %spi5, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %call.i, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %3 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data.i, align 8
  %lcd_pd = getelementptr inbounds %struct.lms501kf03, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %lcd_pd to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %lcd_pd, align 4
  %tobool11.not = icmp eq ptr %4, null
  br i1 %tobool11.not, label %do.end15, label %if.end17

do.end15:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end4
  %call20 = tail call ptr @devm_lcd_device_register(ptr noundef %spi, ptr noundef nonnull @.str, ptr noundef %spi, ptr noundef nonnull %call.i, ptr noundef nonnull @lms501kf03_lcd_ops) #6
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %ld25 = getelementptr inbounds %struct.lms501kf03, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %ld25 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call20, ptr %ld25, align 4
  %8 = ptrtoint ptr %lcd_pd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lcd_pd, align 4
  %lcd_enabled = getelementptr inbounds %struct.lcd_platform_data, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %lcd_enabled to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lcd_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool27.not = icmp eq i32 %11, 0
  %power = getelementptr inbounds %struct.lms501kf03, ptr %call.i, i32 0, i32 2
  br i1 %tobool27.not, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %power, align 4
  %call29 = tail call fastcc i32 @lms501kf03_power(ptr noundef nonnull %call.i, i32 noundef 0)
  br label %if.end31

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %power, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then28
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.10) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then22, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ %6, %if.then22 ], [ 0, %if.end31 ], [ -22, %do.end15 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lms501kf03_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %power8.i = getelementptr inbounds %struct.lms501kf03, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %power8.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i29.i = icmp sgt i32 %3, 1
  br i1 %cmp.i29.i, label %entry.if.then15.i_crit_edge, label %if.then11.i

entry.if.then15.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i

if.then11.i:                                      ; preds = %entry
  %lcd_pd.i31.i = getelementptr inbounds %struct.lms501kf03, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %lcd_pd.i31.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lcd_pd.i31.i, align 4
  %call.i.i32.i = tail call fastcc i32 @lms501kf03_panel_send_sequence(ptr noundef %1, ptr noundef nonnull @seq_display_off, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32.i)
  %tobool.not.i33.i = icmp eq i32 %call.i.i32.i, 0
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.27) #9
  br label %lms501kf03_power.exit

if.end.i36.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  %power_off_delay.i.i = getelementptr inbounds %struct.lcd_platform_data, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %power_off_delay.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %power_off_delay.i.i, align 4
  tail call void @msleep(i32 noundef %9) #6
  %power_on.i34.i = getelementptr inbounds %struct.lcd_platform_data, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %power_on.i34.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %power_on.i34.i, align 4
  %ld.i35.i = getelementptr inbounds %struct.lms501kf03, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %ld.i35.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ld.i35.i, align 4
  %call1.i.i = tail call i32 %11(ptr noundef %13, i32 noundef 0) #6
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end.i36.i, %entry.if.then15.i_crit_edge
  %14 = ptrtoint ptr %power8.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %power8.i, align 4
  br label %lms501kf03_power.exit

lms501kf03_power.exit:                            ; preds = %if.then15.i, %do.end.i.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lms501kf03_shutdown(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %power8.i = getelementptr inbounds %struct.lms501kf03, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %power8.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i29.i = icmp sgt i32 %3, 1
  br i1 %cmp.i29.i, label %entry.if.then15.i_crit_edge, label %if.then11.i

entry.if.then15.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i

if.then11.i:                                      ; preds = %entry
  %lcd_pd.i31.i = getelementptr inbounds %struct.lms501kf03, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %lcd_pd.i31.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lcd_pd.i31.i, align 4
  %call.i.i32.i = tail call fastcc i32 @lms501kf03_panel_send_sequence(ptr noundef %1, ptr noundef nonnull @seq_display_off, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32.i)
  %tobool.not.i33.i = icmp eq i32 %call.i.i32.i, 0
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.27) #9
  br label %lms501kf03_power.exit

if.end.i36.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  %power_off_delay.i.i = getelementptr inbounds %struct.lcd_platform_data, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %power_off_delay.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %power_off_delay.i.i, align 4
  tail call void @msleep(i32 noundef %9) #6
  %power_on.i34.i = getelementptr inbounds %struct.lcd_platform_data, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %power_on.i34.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %power_on.i34.i, align 4
  %ld.i35.i = getelementptr inbounds %struct.lms501kf03, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %ld.i35.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ld.i35.i, align 4
  %call1.i.i = tail call i32 %11(ptr noundef %13, i32 noundef 0) #6
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end.i36.i, %entry.if.then15.i_crit_edge
  %14 = ptrtoint ptr %power8.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %power8.i, align 4
  br label %lms501kf03_power.exit

lms501kf03_power.exit:                            ; preds = %if.then15.i, %do.end.i.i
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_lcd_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lms501kf03_power(ptr noundef %lcd, i32 noundef %power) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %power)
  %cmp.i = icmp sgt i32 %power, 1
  %power8 = getelementptr inbounds %struct.lms501kf03, ptr %lcd, i32 0, i32 2
  %0 = ptrtoint ptr %power8 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i29 = icmp sgt i32 %1, 1
  br i1 %cmp.i, label %land.lhs.true7, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %cmp.i29, label %if.then, label %land.lhs.true.if.then15_crit_edge

land.lhs.true.if.then15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

if.then:                                          ; preds = %land.lhs.true
  %lcd_pd.i = getelementptr inbounds %struct.lms501kf03, ptr %lcd, i32 0, i32 4
  %2 = ptrtoint ptr %lcd_pd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lcd_pd.i, align 4
  %power_on.i = getelementptr inbounds %struct.lcd_platform_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %power_on.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %power_on.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.cleanup.sink.split.i_crit_edge, label %if.end.i

if.then.cleanup.sink.split.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.then
  %ld.i = getelementptr inbounds %struct.lms501kf03, ptr %lcd, i32 0, i32 3
  %6 = ptrtoint ptr %ld.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ld.i, align 4
  %call.i = tail call i32 %5(ptr noundef %7, i32 noundef 1) #6
  %power_on_delay.i = getelementptr inbounds %struct.lcd_platform_data, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %power_on_delay.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %power_on_delay.i, align 4
  tail call void @msleep(i32 noundef %9) #6
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end8.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end8.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %ld.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ld.i, align 4
  %call11.i = tail call i32 %11(ptr noundef %13) #6
  %reset_delay.i = getelementptr inbounds %struct.lcd_platform_data, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %reset_delay.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reset_delay.i, align 4
  tail call void @msleep(i32 noundef %15) #6
  %call.i.i = tail call fastcc i32 @lms501kf03_panel_send_sequence(ptr noundef %lcd, ptr noundef nonnull @seq_password, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %if.end8.i.lms501kf03_ldi_init.exit.thread.i_crit_edge

if.end8.i.lms501kf03_ldi_init.exit.thread.i_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lms501kf03_ldi_init.exit.thread.i

for.cond.i.i:                                     ; preds = %if.end8.i
  %call.1.i.i = tail call fastcc i32 @lms501kf03_panel_send_sequence(ptr noundef %lcd, ptr noundef nonnull @seq_power, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %call.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.cond.1.i.i, label %for.cond.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge

for.cond.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lms501kf03_ldi_init.exit.thread.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call.2.i.i = tail call fastcc i32 @lms501kf03_panel_send_sequence(ptr noundef %lcd, ptr noundef nonnull @seq_display, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %call.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.cond.2.i.i, label %for.cond.1.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge

for.cond.1.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge: ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lms501kf03_ldi_init.exit.thread.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %call.3.i.i = tail call fastcc i32 @lms501kf03_panel_send_sequence(ptr noundef %lcd, ptr noundef nonnull @seq_rgb_if, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %call.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %for.cond.3.i.i, label %for.cond.2.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge

for.cond.2.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge: ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lms501kf03_ldi_init.exit.thread.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %call.4.i.i = tail call fastcc i32 @lms501kf03_panel_send_sequence(ptr noundef %lcd, ptr noundef nonnull @seq_display_inv, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i.i)
  %tobool.not.4.i.i = icmp eq i32 %call.4.i.i, 0
  br i1 %tobool.not.4.i.i, label %for.cond.4.i.i, label %for.cond.3.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge

for.cond.3.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge: ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lms501kf03_ldi_init.exit.thread.i

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  %call.5.i.i = tail call fastcc i32 @lms501kf03_panel_send_sequence(ptr noundef %lcd, ptr noundef nonnull @seq_vcom, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i.i)
  %tobool.not.5.i.i = icmp eq i32 %call.5.i.i, 0
  br i1 %tobool.not.5.i.i, label %for.cond.5.i.i, label %for.cond.4.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge

for.cond.4.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge: ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lms501kf03_ldi_init.exit.thread.i

for.cond.5.i.i:                                   ; preds = %for.cond.4.i.i
  %call.6.i.i = tail call fastcc i32 @lms501kf03_panel_send_sequence(ptr noundef %lcd, ptr noundef nonnull @seq_gate, i32 noundef 27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i.i)
  %tobool.not.6.i.i = icmp eq i32 %call.6.i.i, 0
  br i1 %tobool.not.6.i.i, label %for.cond.6.i.i, label %for.cond.5.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge

for.cond.5.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge: ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lms501kf03_ldi_init.exit.thread.i

for.cond.6.i.i:                                   ; preds = %for.cond.5.i.i
  %call.7.i.i = tail call fastcc i32 @lms501kf03_panel_send_sequence(ptr noundef %lcd, ptr noundef nonnull @seq_panel, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i.i)
  %tobool.not.7.i.i = icmp eq i32 %call.7.i.i, 0
  br i1 %tobool.not.7.i.i, label %for.cond.7.i.i, label %for.cond.6.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge

for.cond.6.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge: ; preds = %for.cond.6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lms501kf03_ldi_init.exit.thread.i

for.cond.7.i.i:                                   ; preds = %for.cond.6.i.i
  %call.8.i.i = tail call fastcc i32 @lms501kf03_panel_send_sequence(ptr noundef %lcd, ptr noundef nonnull @seq_col_mod, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8.i.i)
  %tobool.not.8.i.i = icmp eq i32 %call.8.i.i, 0
  br i1 %tobool.not.8.i.i, label %for.cond.8.i.i, label %for.cond.7.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge

for.cond.7.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge: ; preds = %for.cond.7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lms501kf03_ldi_init.exit.thread.i

for.cond.8.i.i:                                   ; preds = %for.cond.7.i.i
  %call.9.i.i = tail call fastcc i32 @lms501kf03_panel_send_sequence(ptr noundef %lcd, ptr noundef nonnull @seq_w_gamma, i32 noundef 35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9.i.i)
  %tobool.not.9.i.i = icmp eq i32 %call.9.i.i, 0
  br i1 %tobool.not.9.i.i, label %for.cond.9.i.i, label %for.cond.8.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge

for.cond.8.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge: ; preds = %for.cond.8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lms501kf03_ldi_init.exit.thread.i

for.cond.9.i.i:                                   ; preds = %for.cond.8.i.i
  %call.10.i.i = tail call fastcc i32 @lms501kf03_panel_send_sequence(ptr noundef %lcd, ptr noundef nonnull @seq_rgb_gamma, i32 noundef 128) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.10.i.i)
  %tobool.not.10.i.i = icmp eq i32 %call.10.i.i, 0
  br i1 %tobool.not.10.i.i, label %lms501kf03_ldi_init.exit.i, label %for.cond.9.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge

for.cond.9.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge: ; preds = %for.cond.9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lms501kf03_ldi_init.exit.thread.i

lms501kf03_ldi_init.exit.thread.i:                ; preds = %for.cond.9.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge, %for.cond.8.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge, %for.cond.7.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge, %for.cond.6.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge, %for.cond.5.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge, %for.cond.4.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge, %for.cond.3.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge, %for.cond.2.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge, %for.cond.1.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge, %for.cond.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge, %if.end8.i.lms501kf03_ldi_init.exit.thread.i_crit_edge
  %ret.1.i.ph.i = phi i32 [ %call.10.i.i, %for.cond.9.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge ], [ %call.9.i.i, %for.cond.8.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge ], [ %call.8.i.i, %for.cond.7.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge ], [ %call.7.i.i, %for.cond.6.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge ], [ %call.6.i.i, %for.cond.5.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge ], [ %call.5.i.i, %for.cond.4.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge ], [ %call.4.i.i, %for.cond.3.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge ], [ %call.3.i.i, %for.cond.2.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge ], [ %call.2.i.i, %for.cond.1.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge ], [ %call.1.i.i, %for.cond.i.i.lms501kf03_ldi_init.exit.thread.i_crit_edge ], [ %call.i.i, %if.end8.i.lms501kf03_ldi_init.exit.thread.i_crit_edge ]
  tail call void @msleep(i32 noundef 120) #6
  br label %cleanup.sink.split.i

lms501kf03_ldi_init.exit.i:                       ; preds = %for.cond.9.i.i
  %call.11.i.i = tail call fastcc i32 @lms501kf03_panel_send_sequence(ptr noundef %lcd, ptr noundef nonnull @seq_sleep_out, i32 noundef 1) #6
  tail call void @msleep(i32 noundef 120) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.11.i.i)
  %tobool13.not.i = icmp eq i32 %call.11.i.i, 0
  br i1 %tobool13.not.i, label %if.end19.i, label %lms501kf03_ldi_init.exit.i.cleanup.sink.split.i_crit_edge

lms501kf03_ldi_init.exit.i.cleanup.sink.split.i_crit_edge: ; preds = %lms501kf03_ldi_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end19.i:                                       ; preds = %lms501kf03_ldi_init.exit.i
  %call.i46.i = tail call fastcc i32 @lms501kf03_panel_send_sequence(ptr noundef %lcd, ptr noundef nonnull @seq_display_on, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i)
  %tobool21.not.i = icmp eq i32 %call.i46.i, 0
  br i1 %tobool21.not.i, label %if.end19.i.if.then15_crit_edge, label %if.end19.i.cleanup.sink.split.i_crit_edge

if.end19.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end19.i.if.then15_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

cleanup.sink.split.i:                             ; preds = %if.end19.i.cleanup.sink.split.i_crit_edge, %lms501kf03_ldi_init.exit.i.cleanup.sink.split.i_crit_edge, %lms501kf03_ldi_init.exit.thread.i, %if.end.i.cleanup.sink.split.i_crit_edge, %if.then.cleanup.sink.split.i_crit_edge
  %.str.24.sink.i = phi ptr [ @.str.15, %if.then.cleanup.sink.split.i_crit_edge ], [ @.str.18, %if.end.i.cleanup.sink.split.i_crit_edge ], [ @.str.21, %lms501kf03_ldi_init.exit.thread.i ], [ @.str.21, %lms501kf03_ldi_init.exit.i.cleanup.sink.split.i_crit_edge ], [ @.str.24, %if.end19.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ -22, %if.then.cleanup.sink.split.i_crit_edge ], [ -22, %if.end.i.cleanup.sink.split.i_crit_edge ], [ %ret.1.i.ph.i, %lms501kf03_ldi_init.exit.thread.i ], [ %call.11.i.i, %lms501kf03_ldi_init.exit.i.cleanup.sink.split.i_crit_edge ], [ %call.i46.i, %if.end19.i.cleanup.sink.split.i_crit_edge ]
  %16 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lcd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull %.str.24.sink.i) #9
  br label %if.end17

land.lhs.true7:                                   ; preds = %entry
  br i1 %cmp.i29, label %land.lhs.true7.if.then15_crit_edge, label %if.then11

land.lhs.true7.if.then15_crit_edge:               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

if.then11:                                        ; preds = %land.lhs.true7
  %lcd_pd.i31 = getelementptr inbounds %struct.lms501kf03, ptr %lcd, i32 0, i32 4
  %18 = ptrtoint ptr %lcd_pd.i31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lcd_pd.i31, align 4
  %call.i.i32 = tail call fastcc i32 @lms501kf03_panel_send_sequence(ptr noundef %lcd, ptr noundef nonnull @seq_display_off, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32)
  %tobool.not.i33 = icmp eq i32 %call.i.i32, 0
  br i1 %tobool.not.i33, label %if.end.i36, label %do.end.i

do.end.i:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lcd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.27) #9
  br label %if.end17

if.end.i36:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %power_off_delay.i = getelementptr inbounds %struct.lcd_platform_data, ptr %19, i32 0, i32 5
  %22 = ptrtoint ptr %power_off_delay.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %power_off_delay.i, align 4
  tail call void @msleep(i32 noundef %23) #6
  %power_on.i34 = getelementptr inbounds %struct.lcd_platform_data, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %power_on.i34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %power_on.i34, align 4
  %ld.i35 = getelementptr inbounds %struct.lms501kf03, ptr %lcd, i32 0, i32 3
  %26 = ptrtoint ptr %ld.i35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ld.i35, align 4
  %call1.i = tail call i32 %25(ptr noundef %27, i32 noundef 0) #6
  br label %if.then15

if.then15:                                        ; preds = %if.end.i36, %land.lhs.true7.if.then15_crit_edge, %if.end19.i.if.then15_crit_edge, %land.lhs.true.if.then15_crit_edge
  %power16 = getelementptr inbounds %struct.lms501kf03, ptr %lcd, i32 0, i32 2
  %28 = ptrtoint ptr %power16 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %power, ptr %power16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %do.end.i, %cleanup.sink.split.i
  %ret.040 = phi i32 [ 0, %if.then15 ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ -5, %do.end.i ]
  ret i32 %ret.040
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lms501kf03_get_power(ptr nocapture noundef readonly %ld) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.lcd_device, ptr %ld, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %power = getelementptr inbounds %struct.lms501kf03, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lms501kf03_set_power(ptr nocapture noundef readonly %ld, i32 noundef %power) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.lcd_device, ptr %ld, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = zext i32 %power to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %power, label %do.end [
    i32 0, label %entry.if.end_crit_edge
    i32 4, label %entry.if.end_crit_edge9
    i32 1, label %entry.if.end_crit_edge10
  ]

entry.if.end_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge9, %entry.if.end_crit_edge10
  %call4 = tail call fastcc i32 @lms501kf03_power(ptr noundef %1, i32 noundef %power)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lms501kf03_panel_send_sequence(ptr nocapture noundef readonly %lcd, ptr nocapture noundef readonly %wbuf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %buf.i.i13 = alloca [1 x i16], align 2
  %msg.i.i14 = alloca %struct.spi_message, align 4
  %xfer.i.i15 = alloca %struct.spi_transfer, align 4
  %buf.i.i = alloca [1 x i16], align 2
  %msg.i.i = alloca %struct.spi_message, align 4
  %xfer.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp28.not = icmp eq i32 %len, 0
  br i1 %cmp28.not, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = getelementptr inbounds i8, ptr %xfer.i.i15, i32 4
  %len.i.i17 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i15, i32 0, i32 2
  %1 = getelementptr inbounds i8, ptr %msg.i.i14, i32 8
  %prev.i.i.i.i.i18 = getelementptr inbounds %struct.list_head, ptr %msg.i.i14, i32 0, i32 1
  %resources.i.i.i.i19 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i14, i32 0, i32 10
  %prev.i2.i.i.i.i20 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i14, i32 0, i32 10, i32 1
  %transfer_list.i.i.i21 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i15, i32 0, i32 18
  %prev3.i.i.i.i.i23 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i15, i32 0, i32 18, i32 1
  %spi.i.i25 = getelementptr inbounds %struct.lms501kf03, ptr %lcd, i32 0, i32 1
  %2 = getelementptr inbounds i8, ptr %xfer.i.i, i32 4
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 2
  %3 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18, i32 1
  br label %while.body

while.cond:                                       ; preds = %if.end
  %add = add nuw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %add, %len
  br i1 %exitcond.not, label %while.cond.while.end_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %i.029 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %while.cond.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.029)
  %cmp1 = icmp eq i32 %i.029, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = ptrtoint ptr %wbuf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wbuf, align 1
  %conv1.i = zext i8 %5 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i.i) #6
  %6 = call ptr @memset(ptr %2, i32 0, i32 92)
  %7 = ptrtoint ptr %xfer.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buf.i.i, ptr %xfer.i.i, align 4
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %len.i.i, align 4
  %9 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv1.i, ptr %buf.i.i, align 2
  %10 = call ptr @memset(ptr %3, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %12 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i, align 4
  %13 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %14 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.lms501kf03_spi_write.exit_crit_edge

if.then.lms501kf03_spi_write.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %lms501kf03_spi_write.exit

if.end.i.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i, align 4
  %17 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i.i, align 4
  br label %lms501kf03_spi_write.exit

lms501kf03_spi_write.exit:                        ; preds = %if.end.i.i.i.i.i, %if.then.lms501kf03_spi_write.exit_crit_edge
  %19 = ptrtoint ptr %spi.i.i25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %spi.i.i25, align 4
  %call.i.i = call i32 @spi_sync(ptr noundef %20, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  br label %if.end

if.else:                                          ; preds = %while.body
  %arrayidx2 = getelementptr i8, ptr %wbuf, i32 %i.029
  %21 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx2, align 1
  %conv1.i16 = zext i8 %22 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i13) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i14) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i.i15) #6
  %23 = call ptr @memset(ptr %0, i32 0, i32 92)
  %24 = ptrtoint ptr %xfer.i.i15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buf.i.i13, ptr %xfer.i.i15, align 4
  %25 = ptrtoint ptr %len.i.i17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %len.i.i17, align 4
  %or.i.i = or i16 %conv1.i16, 256
  %26 = ptrtoint ptr %buf.i.i13 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %or.i.i, ptr %buf.i.i13, align 2
  %27 = call ptr @memset(ptr %1, i32 0, i32 40)
  %28 = ptrtoint ptr %msg.i.i14 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %msg.i.i14, ptr %msg.i.i14, align 4
  %29 = ptrtoint ptr %prev.i.i.i.i.i18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i14, ptr %prev.i.i.i.i.i18, align 4
  %30 = ptrtoint ptr %resources.i.i.i.i19 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %resources.i.i.i.i19, ptr %resources.i.i.i.i19, align 4
  %31 = ptrtoint ptr %prev.i2.i.i.i.i20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %resources.i.i.i.i19, ptr %prev.i2.i.i.i.i20, align 4
  %call.i.i.i.i.i22 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i21, ptr noundef nonnull %msg.i.i14, ptr noundef nonnull %msg.i.i14) #6
  br i1 %call.i.i.i.i.i22, label %if.end.i.i.i.i.i24, label %if.else.lms501kf03_spi_write.exit27_crit_edge

if.else.lms501kf03_spi_write.exit27_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %lms501kf03_spi_write.exit27

if.end.i.i.i.i.i24:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %prev.i.i.i.i.i18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %transfer_list.i.i.i21, ptr %prev.i.i.i.i.i18, align 4
  %33 = ptrtoint ptr %transfer_list.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i.i14, ptr %transfer_list.i.i.i21, align 4
  %34 = ptrtoint ptr %prev3.i.i.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg.i.i14, ptr %prev3.i.i.i.i.i23, align 4
  %35 = ptrtoint ptr %msg.i.i14 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %transfer_list.i.i.i21, ptr %msg.i.i14, align 4
  br label %lms501kf03_spi_write.exit27

lms501kf03_spi_write.exit27:                      ; preds = %if.end.i.i.i.i.i24, %if.else.lms501kf03_spi_write.exit27_crit_edge
  %36 = ptrtoint ptr %spi.i.i25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %spi.i.i25, align 4
  %call.i.i26 = call i32 @spi_sync(ptr noundef %37, ptr noundef nonnull %msg.i.i14) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i.i15) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i14) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i13) #6
  br label %if.end

if.end:                                           ; preds = %lms501kf03_spi_write.exit27, %lms501kf03_spi_write.exit
  %ret.1 = phi i32 [ %call.i.i, %lms501kf03_spi_write.exit ], [ %call.i.i26, %lms501kf03_spi_write.exit27 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool.not = icmp eq i32 %ret.1, 0
  br i1 %tobool.not, label %while.cond, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %ret.2 = phi i32 [ 0, %entry.while.end_crit_edge ], [ %ret.1, %if.end.while.end_crit_edge ], [ 0, %while.cond.while.end_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lms501kf03_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lms501kf03_suspend.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lms501kf03_suspend, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !107

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %power = getelementptr inbounds %struct.lms501kf03, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lms501kf03_suspend.__UNIQUE_ID_ddebug303, ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %power8.i = getelementptr inbounds %struct.lms501kf03, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %power8.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i29.i = icmp sgt i32 %5, 1
  br i1 %cmp.i29.i, label %do.end.if.then15.i_crit_edge, label %if.then11.i

do.end.if.then15.i_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i

if.then11.i:                                      ; preds = %do.end
  %lcd_pd.i31.i = getelementptr inbounds %struct.lms501kf03, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %lcd_pd.i31.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lcd_pd.i31.i, align 4
  %call.i.i32.i = tail call fastcc i32 @lms501kf03_panel_send_sequence(ptr noundef %1, ptr noundef nonnull @seq_display_off, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32.i)
  %tobool.not.i33.i = icmp eq i32 %call.i.i32.i, 0
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.27) #9
  br label %lms501kf03_power.exit

if.end.i36.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  %power_off_delay.i.i = getelementptr inbounds %struct.lcd_platform_data, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %power_off_delay.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %power_off_delay.i.i, align 4
  tail call void @msleep(i32 noundef %11) #6
  %power_on.i34.i = getelementptr inbounds %struct.lcd_platform_data, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %power_on.i34.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %power_on.i34.i, align 4
  %ld.i35.i = getelementptr inbounds %struct.lms501kf03, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %ld.i35.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ld.i35.i, align 4
  %call1.i.i = tail call i32 %13(ptr noundef %15, i32 noundef 0) #6
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end.i36.i, %do.end.if.then15.i_crit_edge
  %16 = ptrtoint ptr %power8.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %power8.i, align 4
  br label %lms501kf03_power.exit

lms501kf03_power.exit:                            ; preds = %if.then15.i, %do.end.i.i
  %ret.040.i = phi i32 [ 0, %if.then15.i ], [ -5, %do.end.i.i ]
  ret i32 %ret.040.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lms501kf03_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %power = getelementptr inbounds %struct.lms501kf03, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %power, align 4
  %call1 = tail call fastcc i32 @lms501kf03_power(ptr noundef %1, i32 noundef 0)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !88, !89, !90, !92, !94, !96, !97}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__initcall__kmod_lms501kf03__304_419_lms501kf03_driver_init6, !1, !"__initcall__kmod_lms501kf03__304_419_lms501kf03_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/lms501kf03.c", i32 419, i32 1}
!2 = !{ptr @__exitcall_lms501kf03_driver_exit, !1, !"__exitcall_lms501kf03_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author305, !4, !"__UNIQUE_ID_author305", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/lms501kf03.c", i32 421, i32 1}
!5 = !{ptr @__UNIQUE_ID_description306, !6, !"__UNIQUE_ID_description306", i1 false, i1 false}
!6 = !{!"../drivers/video/backlight/lms501kf03.c", i32 422, i32 1}
!7 = !{ptr @__UNIQUE_ID_file307, !8, !"__UNIQUE_ID_file307", i1 false, i1 false}
!8 = !{!"../drivers/video/backlight/lms501kf03.c", i32 423, i32 1}
!9 = !{ptr @__UNIQUE_ID_license308, !8, !"__UNIQUE_ID_license308", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/lms501kf03.c", i32 411, i32 11}
!12 = !{ptr @lms501kf03_driver, !13, !"lms501kf03_driver", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/lms501kf03.c", i32 409, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/lms501kf03.c", i32 327, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @lms501kf03_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @lms501kf03_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/video/backlight/lms501kf03.c", i32 336, i32 3}
!24 = !{ptr @lms501kf03_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @lms501kf03_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/video/backlight/lms501kf03.c", i32 362, i32 2}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @lms501kf03_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @lms501kf03_probe._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @lms501kf03_lcd_ops, !32, !"lms501kf03_lcd_ops", i1 false, i1 false}
!32 = !{!"../drivers/video/backlight/lms501kf03.c", i32 307, i32 23}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/backlight/lms501kf03.c", i32 300, i32 3}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @lms501kf03_set_power._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @lms501kf03_set_power._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/video/backlight/lms501kf03.c", i32 220, i32 3}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @lms501kf03_power_on._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @lms501kf03_power_on._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/video/backlight/lms501kf03.c", i32 228, i32 3}
!45 = !{ptr @lms501kf03_power_on._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @lms501kf03_power_on._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/video/backlight/lms501kf03.c", i32 237, i32 3}
!49 = !{ptr @lms501kf03_power_on._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @lms501kf03_power_on._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/video/backlight/lms501kf03.c", i32 243, i32 3}
!53 = !{ptr @lms501kf03_power_on._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @lms501kf03_power_on._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = distinct !{null, !56, !"init_seq", i1 false, i1 false}
!56 = !{!"../drivers/video/backlight/lms501kf03.c", i32 149, i32 30}
!57 = distinct !{null, !58, !"size_seq", i1 false, i1 false}
!58 = !{!"../drivers/video/backlight/lms501kf03.c", i32 164, i32 28}
!59 = !{ptr @seq_password, !60, !"seq_password", i1 false, i1 false}
!60 = !{!"../drivers/video/backlight/lms501kf03.c", i32 28, i32 28}
!61 = !{ptr @seq_power, !62, !"seq_power", i1 false, i1 false}
!62 = !{!"../drivers/video/backlight/lms501kf03.c", i32 32, i32 28}
!63 = !{ptr @seq_display, !64, !"seq_display", i1 false, i1 false}
!64 = !{!"../drivers/video/backlight/lms501kf03.c", i32 37, i32 28}
!65 = !{ptr @seq_rgb_if, !66, !"seq_rgb_if", i1 false, i1 false}
!66 = !{!"../drivers/video/backlight/lms501kf03.c", i32 42, i32 28}
!67 = !{ptr @seq_display_inv, !68, !"seq_display_inv", i1 false, i1 false}
!68 = !{!"../drivers/video/backlight/lms501kf03.c", i32 46, i32 28}
!69 = !{ptr @seq_vcom, !70, !"seq_vcom", i1 false, i1 false}
!70 = !{!"../drivers/video/backlight/lms501kf03.c", i32 50, i32 28}
!71 = !{ptr @seq_gate, !72, !"seq_gate", i1 false, i1 false}
!72 = !{!"../drivers/video/backlight/lms501kf03.c", i32 54, i32 28}
!73 = !{ptr @seq_panel, !74, !"seq_panel", i1 false, i1 false}
!74 = !{!"../drivers/video/backlight/lms501kf03.c", i32 60, i32 28}
!75 = !{ptr @seq_col_mod, !76, !"seq_col_mod", i1 false, i1 false}
!76 = !{!"../drivers/video/backlight/lms501kf03.c", i32 64, i32 28}
!77 = !{ptr @seq_w_gamma, !78, !"seq_w_gamma", i1 false, i1 false}
!78 = !{!"../drivers/video/backlight/lms501kf03.c", i32 68, i32 28}
!79 = !{ptr @seq_rgb_gamma, !80, !"seq_rgb_gamma", i1 false, i1 false}
!80 = !{!"../drivers/video/backlight/lms501kf03.c", i32 75, i32 28}
!81 = !{ptr @seq_sleep_out, !82, !"seq_sleep_out", i1 false, i1 false}
!82 = !{!"../drivers/video/backlight/lms501kf03.c", i32 91, i32 28}
!83 = !{ptr @seq_display_on, !84, !"seq_display_on", i1 false, i1 false}
!84 = !{!"../drivers/video/backlight/lms501kf03.c", i32 95, i32 28}
!85 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/video/backlight/lms501kf03.c", i32 259, i32 3}
!87 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @lms501kf03_power_off._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @lms501kf03_power_off._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @seq_display_off, !91, !"seq_display_off", i1 false, i1 false}
!91 = !{!"../drivers/video/backlight/lms501kf03.c", i32 99, i32 28}
!92 = !{ptr @lms501kf03_pm_ops, !93, !"lms501kf03_pm_ops", i1 false, i1 false}
!93 = !{!"../drivers/video/backlight/lms501kf03.c", i32 399, i32 8}
!94 = !{ptr @.str.29, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/video/backlight/lms501kf03.c", i32 380, i32 2}
!96 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @lms501kf03_suspend.__UNIQUE_ID_ddebug303, !95, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{i64 2148298324, i64 2148298329, i64 2148298342, i64 2148298386, i64 2148298420, i64 2148298441}
