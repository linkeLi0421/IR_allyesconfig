; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/hx8357.c_pt.bc'
source_filename = "../drivers/video/backlight/hx8357.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lcd_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hx8357_data = type { [3 x i32], i32, ptr, i32, i8 }
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
%struct.lcd_device = type { %struct.lcd_properties, %struct.mutex, ptr, %struct.mutex, %struct.notifier_block, %struct.device }
%struct.lcd_properties = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_hx8357__303_677_hx8357_driver_init6 = internal global ptr @hx8357_driver_init, section ".initcall6.init", align 4
@hx8357_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @hx8357_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hx8357_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_hx8357_driver_exit = internal global ptr @hx8357_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author304 = internal constant [63 x i8] c"hx8357.author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [44 x i8] c"hx8357.description=Himax HX-8357 LCD Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [43 x i8] c"hx8357.file=drivers/video/backlight/hx8357\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [19 x i8] c"hx8357.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hx8357\00", [25 x i8] zeroinitializer }, align 32
@hx8357_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"himax,hx8357\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hx8357_lcd_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"himax,hx8369\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hx8369_lcd_init }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@hx8357_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 594, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SPI setup failed.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hx8357_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/video/backlight/hx8357.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hx8357_probe._entry_ptr = internal global ptr @hx8357_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpios-reset\00", [20 x i8] zeroinitializer }, align 32
@hx8357_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 606, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Missing dt property: gpios-reset\0A\00", [62 x i8] zeroinitializer }, align 32
@hx8357_probe._entry_ptr.9 = internal global ptr @hx8357_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hx8357-reset\00", [19 x i8] zeroinitializer }, align 32
@hx8357_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 616, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to request gpio %d: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@hx8357_probe._entry_ptr.13 = internal global ptr @hx8357_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"im-gpios\00", [23 x i8] zeroinitializer }, align 32
@hx8357_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 627, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"GPIO requested is not here yet, deferring the probe\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hx8357_probe._entry_ptr.18 = internal global ptr @hx8357_probe._entry.15, section ".printk_index", align 4
@hx8357_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 631, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Missing dt property: im-gpios\0A\00", [33 x i8] zeroinitializer }, align 32
@hx8357_probe._entry_ptr.21 = internal global ptr @hx8357_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"im_pins\00", [24 x i8] zeroinitializer }, align 32
@hx8357_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 640, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@hx8357_probe._entry_ptr.24 = internal global ptr @hx8357_probe._entry.23, section ".printk_index", align 4
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mxsfb\00", [26 x i8] zeroinitializer }, align 32
@hx8357_ops = internal global { %struct.lcd_ops, [40 x i8] } { %struct.lcd_ops { ptr @hx8357_get_power, ptr @hx8357_set_power, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hx8357_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 660, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Couldn't initialize panel\0A\00", [37 x i8] zeroinitializer }, align 32
@hx8357_probe._entry_ptr.28 = internal global ptr @hx8357_probe._entry.26, section ".printk_index", align 4
@hx8357_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 664, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Panel probed\0A\00", [18 x i8] zeroinitializer }, align 32
@hx8357_probe._entry_ptr.31 = internal global ptr @hx8357_probe._entry.29, section ".printk_index", align 4
@hx8357_set_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 551, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to set power mode %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hx8357_set_power\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hx8357_set_power._entry_ptr = internal global ptr @hx8357_set_power._entry, section ".printk_index", align 4
@hx8357_spi_write_then_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 255, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Couldn't send SPI data\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hx8357_spi_write_then_read\00", [37 x i8] zeroinitializer }, align 32
@hx8357_spi_write_then_read._entry_ptr = internal global ptr @hx8357_spi_write_then_read._entry, section ".printk_index", align 4
@hx8357_seq_power = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\D0DA\06", [28 x i8] zeroinitializer }, align 32
@hx8357_seq_vcom = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\D1@\10", [29 x i8] zeroinitializer }, align 32
@hx8357_seq_power_normal = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\D2\05\12", [29 x i8] zeroinitializer }, align 32
@hx8357_seq_panel_driving = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\C0\14;\00\02\11", [26 x i8] zeroinitializer }, align 32
@hx8357_seq_display_frame = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\C5\0C", [30 x i8] zeroinitializer }, align 32
@hx8357_seq_panel_related = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\E9\01", [30 x i8] zeroinitializer }, align 32
@hx8357_seq_undefined1 = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\EA\03\00\00", [28 x i8] zeroinitializer }, align 32
@hx8357_seq_undefined2 = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\EB@T&\DB", [27 x i8] zeroinitializer }, align 32
@hx8357_seq_gamma = internal global { [13 x i8], [19 x i8] } { [13 x i8] c"\C8\00\15\00\22\00\08w&w\22\04\00", [19 x i8] zeroinitializer }, align 32
@hx8357_seq_address_mode = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"6\C0", [30 x i8] zeroinitializer }, align 32
@hx8357_seq_pixel_format = internal global { [2 x i8], [30 x i8] } { [2 x i8] c":f", [30 x i8] zeroinitializer }, align 32
@hx8357_seq_column_address = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"*\00\00\01?", [27 x i8] zeroinitializer }, align 32
@hx8357_seq_page_address = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"+\00\00\01\DF", [27 x i8] zeroinitializer }, align 32
@hx8357_seq_rgb = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\C6\02", [30 x i8] zeroinitializer }, align 32
@hx8357_seq_display_mode = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\B4\13", [30 x i8] zeroinitializer }, align 32
@hx8369_seq_extension_command = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\B9\FF\83i", [28 x i8] zeroinitializer }, align 32
@hx8369_seq_display_related = internal global { [16 x i8], [16 x i8] } { [16 x i8] c"\B2\00+\03\03p\00\FF\00\00\00\00\03\03\00\01", [16 x i8] zeroinitializer }, align 32
@hx8369_seq_panel_waveform_cycle = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\B4\0A\1D\80\06\02", [26 x i8] zeroinitializer }, align 32
@hx8369_seq_set_address_mode = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"6\00", [30 x i8] zeroinitializer }, align 32
@hx8369_seq_vcom = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\B6>>", [29 x i8] zeroinitializer }, align 32
@hx8369_seq_gip = internal global { [27 x i8], [37 x i8] } { [27 x i8] c"\D5\00\01\03%\01\02(p\11\13\00\00@&Q7\00\00q5`$\07\0F\04\04", [37 x i8] zeroinitializer }, align 32
@hx8369_seq_power = internal global { [20 x i8], [44 x i8] } { [20 x i8] c"\B1\01\004\03\00\11\112/??\01:\01\E6\E6\E6\E6\E6", [44 x i8] zeroinitializer }, align 32
@hx8369_seq_gamma_curve_related = internal global { [35 x i8], [61 x i8] } { [35 x i8] c"\E0\00\0D\19/;=.J\08\0E\0F\14\16\14\14\14\1E\00\0D\19/;=.J\08\0E\0F\14\16\14\14\14\1E", [61 x i8] zeroinitializer }, align 32
@hx8369_seq_write_CABC_control = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"S$", [30 x i8] zeroinitializer }, align 32
@hx8369_seq_write_CABC_control_setting = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"U\02", [30 x i8] zeroinitializer }, align 32
@hx8369_seq_write_CABC_min_brightness = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"^\00", [30 x i8] zeroinitializer }, align 32
@hx8369_seq_set_display_brightness = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"Q\FF", [30 x i8] zeroinitializer }, align 32
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"hx8357_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 669, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 672, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"hx8357_dt_ids\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 568, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 594, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 604, i32 51 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 606, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 612, i32 9 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 614, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 620, i32 41 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 627, i32 5 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 631, i32 5 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 637, i32 11 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 639, i32 5 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 648, i32 46 }
@___asan_gen_.109 = private unnamed_addr constant [11 x i8] c"hx8357_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 563, i32 23 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 660, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 664, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 551, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 255, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"hx8357_seq_power\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 93, i32 11 }
@___asan_gen_.148 = private unnamed_addr constant [16 x i8] c"hx8357_seq_vcom\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 97, i32 11 }
@___asan_gen_.151 = private unnamed_addr constant [24 x i8] c"hx8357_seq_power_normal\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 101, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant [25 x i8] c"hx8357_seq_panel_driving\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 105, i32 11 }
@___asan_gen_.157 = private unnamed_addr constant [25 x i8] c"hx8357_seq_display_frame\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 109, i32 11 }
@___asan_gen_.160 = private unnamed_addr constant [25 x i8] c"hx8357_seq_panel_related\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 113, i32 11 }
@___asan_gen_.163 = private unnamed_addr constant [22 x i8] c"hx8357_seq_undefined1\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 117, i32 11 }
@___asan_gen_.166 = private unnamed_addr constant [22 x i8] c"hx8357_seq_undefined2\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 121, i32 11 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"hx8357_seq_gamma\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 125, i32 11 }
@___asan_gen_.172 = private unnamed_addr constant [24 x i8] c"hx8357_seq_address_mode\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 130, i32 11 }
@___asan_gen_.175 = private unnamed_addr constant [24 x i8] c"hx8357_seq_pixel_format\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 134, i32 11 }
@___asan_gen_.178 = private unnamed_addr constant [26 x i8] c"hx8357_seq_column_address\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 140, i32 11 }
@___asan_gen_.181 = private unnamed_addr constant [24 x i8] c"hx8357_seq_page_address\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 144, i32 11 }
@___asan_gen_.184 = private unnamed_addr constant [15 x i8] c"hx8357_seq_rgb\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 148, i32 11 }
@___asan_gen_.187 = private unnamed_addr constant [24 x i8] c"hx8357_seq_display_mode\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 152, i32 11 }
@___asan_gen_.190 = private unnamed_addr constant [29 x i8] c"hx8369_seq_extension_command\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 174, i32 11 }
@___asan_gen_.193 = private unnamed_addr constant [27 x i8] c"hx8369_seq_display_related\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 178, i32 11 }
@___asan_gen_.196 = private unnamed_addr constant [32 x i8] c"hx8369_seq_panel_waveform_cycle\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 183, i32 11 }
@___asan_gen_.199 = private unnamed_addr constant [28 x i8] c"hx8369_seq_set_address_mode\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 187, i32 11 }
@___asan_gen_.202 = private unnamed_addr constant [16 x i8] c"hx8369_seq_vcom\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 191, i32 11 }
@___asan_gen_.205 = private unnamed_addr constant [15 x i8] c"hx8369_seq_gip\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 195, i32 11 }
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"hx8369_seq_power\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 201, i32 11 }
@___asan_gen_.211 = private unnamed_addr constant [31 x i8] c"hx8369_seq_gamma_curve_related\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 206, i32 11 }
@___asan_gen_.214 = private unnamed_addr constant [30 x i8] c"hx8369_seq_write_CABC_control\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 162, i32 11 }
@___asan_gen_.217 = private unnamed_addr constant [38 x i8] c"hx8369_seq_write_CABC_control_setting\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 170, i32 11 }
@___asan_gen_.220 = private unnamed_addr constant [37 x i8] c"hx8369_seq_write_CABC_min_brightness\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 158, i32 11 }
@___asan_gen_.223 = private unnamed_addr constant [34 x i8] c"hx8369_seq_set_display_brightness\00", align 1
@___asan_gen_.224 = private constant [36 x i8] c"../drivers/video/backlight/hx8357.c\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 166, i32 11 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_hx8357_driver_exit, ptr @__initcall__kmod_hx8357__303_677_hx8357_driver_init6, ptr @hx8357_driver_exit, ptr @hx8357_probe._entry, ptr @hx8357_probe._entry.11, ptr @hx8357_probe._entry.15, ptr @hx8357_probe._entry.19, ptr @hx8357_probe._entry.23, ptr @hx8357_probe._entry.26, ptr @hx8357_probe._entry.29, ptr @hx8357_probe._entry.7, ptr @hx8357_probe._entry_ptr, ptr @hx8357_probe._entry_ptr.13, ptr @hx8357_probe._entry_ptr.18, ptr @hx8357_probe._entry_ptr.21, ptr @hx8357_probe._entry_ptr.24, ptr @hx8357_probe._entry_ptr.28, ptr @hx8357_probe._entry_ptr.31, ptr @hx8357_probe._entry_ptr.9, ptr @hx8357_set_power._entry, ptr @hx8357_set_power._entry_ptr, ptr @hx8357_spi_write_then_read._entry, ptr @hx8357_spi_write_then_read._entry_ptr, ptr @hx8357_driver, ptr @.str, ptr @hx8357_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @hx8357_ops, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @hx8357_seq_power, ptr @hx8357_seq_vcom, ptr @hx8357_seq_power_normal, ptr @hx8357_seq_panel_driving, ptr @hx8357_seq_display_frame, ptr @hx8357_seq_panel_related, ptr @hx8357_seq_undefined1, ptr @hx8357_seq_undefined2, ptr @hx8357_seq_gamma, ptr @hx8357_seq_address_mode, ptr @hx8357_seq_pixel_format, ptr @hx8357_seq_column_address, ptr @hx8357_seq_page_address, ptr @hx8357_seq_rgb, ptr @hx8357_seq_display_mode, ptr @hx8369_seq_extension_command, ptr @hx8369_seq_display_related, ptr @hx8369_seq_panel_waveform_cycle, ptr @hx8369_seq_set_address_mode, ptr @hx8369_seq_vcom, ptr @hx8369_seq_gip, ptr @hx8369_seq_power, ptr @hx8369_seq_gamma_curve_related, ptr @hx8369_seq_write_CABC_control, ptr @hx8369_seq_write_CABC_control_setting, ptr @hx8369_seq_write_CABC_min_brightness, ptr @hx8369_seq_set_display_brightness], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_set_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_spi_write_then_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_seq_power to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_seq_vcom to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_seq_power_normal to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_seq_panel_driving to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_seq_display_frame to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_seq_panel_related to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_seq_undefined1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_seq_undefined2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_seq_gamma to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_seq_address_mode to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_seq_pixel_format to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_seq_column_address to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_seq_page_address to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_seq_rgb to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357_seq_display_mode to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8369_seq_extension_command to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8369_seq_display_related to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8369_seq_panel_waveform_cycle to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8369_seq_set_address_mode to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8369_seq_vcom to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8369_seq_gip to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8369_seq_power to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8369_seq_gamma_curve_related to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8369_seq_write_CABC_control to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8369_seq_write_CABC_control_setting to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8369_seq_write_CABC_min_brightness to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8369_seq_set_display_brightness to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hx8357_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @hx8357_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hx8357_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @hx8357_driver, i32 0, i32 4)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hx8357_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 28, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @spi_setup(ptr noundef %spi) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %spi5 = getelementptr inbounds %struct.hx8357_data, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %spi5 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %spi, ptr %spi5, align 4
  %call7 = tail call ptr @of_match_device(ptr noundef nonnull @hx8357_dt_ids, ptr noundef %spi) #8
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end4.cleanup_crit_edge, label %lor.lhs.false

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  %data = getelementptr inbounds %struct.of_device_id, ptr %call7, i32 0, i32 3
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %tobool9.not = icmp eq ptr %2, null
  br i1 %tobool9.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end11

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call.i152 = tail call i32 @of_get_named_gpio_flags(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef null) #8
  %reset = getelementptr inbounds %struct.hx8357_data, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i152, ptr %reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i152)
  %6 = icmp ult i32 %call.i152, 2048
  br i1 %6, label %if.end21, label %do.end19

do.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %call24 = tail call i32 @devm_gpio_request_one(ptr noundef %spi, i32 noundef %call.i152, i32 noundef 2, ptr noundef nonnull @.str.10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end32, label %do.end29

do.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reset, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.12, i32 noundef %8, i32 noundef %call24) #11
  br label %cleanup

if.end32:                                         ; preds = %if.end21
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call35 = tail call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.14, ptr noundef null) #8
  %tobool36.not = icmp eq ptr %call35, null
  %use_im_pins73 = getelementptr inbounds %struct.hx8357_data, ptr %call.i, i32 0, i32 4
  br i1 %tobool36.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.end32
  %11 = ptrtoint ptr %use_im_pins73 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %use_im_pins73, align 4
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call.i153 = tail call i32 @of_get_named_gpio_flags(ptr noundef %13, ptr noundef nonnull @.str.14, i32 noundef 0, ptr noundef null) #8
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i153, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call.i153)
  %cmp44 = icmp eq i32 %call.i153, -517
  br i1 %cmp44, label %if.then37.do.end48_crit_edge, label %if.end50

if.then37.do.end48_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

do.end48:                                         ; preds = %for.inc.1.do.end48_crit_edge, %for.inc.do.end48_crit_edge, %if.then37.do.end48_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.end50:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i153)
  %15 = icmp ult i32 %call.i153, 2048
  br i1 %15, label %if.end59, label %if.end50.do.end57_crit_edge

if.end50.do.end57_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end57

do.end57:                                         ; preds = %if.end50.2.do.end57_crit_edge, %if.end50.1.do.end57_crit_edge, %if.end50.do.end57_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.20) #11
  br label %cleanup

if.end59:                                         ; preds = %if.end50
  %call63 = tail call i32 @devm_gpio_request_one(ptr noundef %spi, i32 noundef %call.i153, i32 noundef 0, ptr noundef nonnull @.str.22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %for.inc, label %if.end59.do.end68_crit_edge

if.end59.do.end68_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

do.end68:                                         ; preds = %if.end59.2.do.end68_crit_edge, %if.end59.1.do.end68_crit_edge, %if.end59.do.end68_crit_edge
  %call63.lcssa = phi i32 [ %call63, %if.end59.do.end68_crit_edge ], [ %call63.1, %if.end59.1.do.end68_crit_edge ], [ %call63.2, %if.end59.2.do.end68_crit_edge ]
  %i.0156.lcssa158 = phi i32 [ 0, %if.end59.do.end68_crit_edge ], [ 1, %if.end59.1.do.end68_crit_edge ], [ 2, %if.end59.2.do.end68_crit_edge ]
  %arrayidx.le = getelementptr [3 x i32], ptr %call.i, i32 0, i32 %i.0156.lcssa158
  %16 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.le, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.12, i32 noundef %17, i32 noundef %call63.lcssa) #11
  br label %cleanup

for.inc:                                          ; preds = %if.end59
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %call.i153.1 = tail call i32 @of_get_named_gpio_flags(ptr noundef %19, ptr noundef nonnull @.str.14, i32 noundef 1, ptr noundef null) #8
  %arrayidx.1 = getelementptr [3 x i32], ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call.i153.1, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call.i153.1)
  %cmp44.1 = icmp eq i32 %call.i153.1, -517
  br i1 %cmp44.1, label %for.inc.do.end48_crit_edge, label %if.end50.1

for.inc.do.end48_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

if.end50.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i153.1)
  %21 = icmp ult i32 %call.i153.1, 2048
  br i1 %21, label %if.end59.1, label %if.end50.1.do.end57_crit_edge

if.end50.1.do.end57_crit_edge:                    ; preds = %if.end50.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end57

if.end59.1:                                       ; preds = %if.end50.1
  %call63.1 = tail call i32 @devm_gpio_request_one(ptr noundef %spi, i32 noundef %call.i153.1, i32 noundef 0, ptr noundef nonnull @.str.22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.1)
  %tobool64.not.1 = icmp eq i32 %call63.1, 0
  br i1 %tobool64.not.1, label %for.inc.1, label %if.end59.1.do.end68_crit_edge

if.end59.1.do.end68_crit_edge:                    ; preds = %if.end59.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

for.inc.1:                                        ; preds = %if.end59.1
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %call.i153.2 = tail call i32 @of_get_named_gpio_flags(ptr noundef %23, ptr noundef nonnull @.str.14, i32 noundef 2, ptr noundef null) #8
  %arrayidx.2 = getelementptr [3 x i32], ptr %call.i, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call.i153.2, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call.i153.2)
  %cmp44.2 = icmp eq i32 %call.i153.2, -517
  br i1 %cmp44.2, label %for.inc.1.do.end48_crit_edge, label %if.end50.2

for.inc.1.do.end48_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

if.end50.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i153.2)
  %25 = icmp ult i32 %call.i153.2, 2048
  br i1 %25, label %if.end59.2, label %if.end50.2.do.end57_crit_edge

if.end50.2.do.end57_crit_edge:                    ; preds = %if.end50.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end57

if.end59.2:                                       ; preds = %if.end50.2
  %call63.2 = tail call i32 @devm_gpio_request_one(ptr noundef %spi, i32 noundef %call.i153.2, i32 noundef 0, ptr noundef nonnull @.str.22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.2)
  %tobool64.not.2 = icmp eq i32 %call63.2, 0
  br i1 %tobool64.not.2, label %if.end59.2.if.end74_crit_edge, label %if.end59.2.do.end68_crit_edge

if.end59.2.do.end68_crit_edge:                    ; preds = %if.end59.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

if.end59.2.if.end74_crit_edge:                    ; preds = %if.end59.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %use_im_pins73 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %use_im_pins73, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.else, %if.end59.2.if.end74_crit_edge
  %call77 = tail call ptr @devm_lcd_device_register(ptr noundef %spi, ptr noundef nonnull @.str.25, ptr noundef %spi, ptr noundef nonnull %call.i, ptr noundef nonnull @hx8357_ops) #8
  %cmp.i = icmp ugt ptr %call77, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %call77 to i32
  br label %cleanup

if.end81:                                         ; preds = %if.end74
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call77, ptr %driver_data.i.i, align 4
  tail call fastcc void @hx8357_lcd_reset(ptr noundef %call77)
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %call83 = tail call i32 %30(ptr noundef %call77) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %do.end93, label %do.end88

do.end88:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.27) #11
  br label %cleanup

do.end93:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.30) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end93, %do.end88, %if.then79, %do.end68, %do.end57, %do.end48, %do.end29, %do.end19, %lor.lhs.false.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ -22, %do.end29 ], [ -517, %do.end48 ], [ -22, %do.end68 ], [ -22, %do.end57 ], [ %27, %if.then79 ], [ %call83, %do.end88 ], [ 0, %do.end93 ], [ -22, %do.end19 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_lcd_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hx8357_lcd_reset(ptr nocapture noundef readonly %lcdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.lcd_device, ptr %lcdev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %reset = getelementptr inbounds %struct.hx8357_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reset, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %3) #8
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 1) #8
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #8
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reset, align 4
  %call.i5 = tail call ptr @gpio_to_desc(i32 noundef %5) #8
  tail call void @gpiod_set_raw_value(ptr noundef %call.i5, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #8
  %6 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reset, align 4
  %call.i6 = tail call ptr @gpio_to_desc(i32 noundef %7) #8
  tail call void @gpiod_set_raw_value(ptr noundef %call.i6, i32 noundef 1) #8
  tail call void @msleep(i32 noundef 120) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hx8357_get_power(ptr nocapture noundef readonly %lcdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.lcd_device, ptr %lcdev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.hx8357_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hx8357_set_power(ptr noundef %lcdev, i32 noundef %power) #2 align 64 {
entry:
  %value.addr.i9.i24 = alloca i8, align 1
  %value.addr.i.i25 = alloca i8, align 1
  %value.addr.i9.i = alloca i8, align 1
  %value.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.lcd_device, ptr %lcdev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %power)
  %cmp = icmp slt i32 %power, 2
  %state = getelementptr inbounds %struct.hx8357_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1 = icmp slt i32 %3, 2
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true4.critedge

land.lhs.true:                                    ; preds = %entry
  br i1 %cmp1, label %land.lhs.true.if.then11_crit_edge, label %if.then

land.lhs.true.if.then11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i) #8
  %4 = ptrtoint ptr %value.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 17, ptr %value.addr.i.i, align 1
  %call.i.i = call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull %value.addr.i.i, i16 noundef zeroext 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then.do.end_crit_edge, label %if.end9

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true4.critedge:                          ; preds = %entry
  br i1 %cmp1, label %if.then7, label %land.lhs.true4.critedge.if.then11_crit_edge

land.lhs.true4.critedge.if.then11_crit_edge:      ; preds = %land.lhs.true4.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.then7:                                         ; preds = %land.lhs.true4.critedge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i25) #8
  %5 = ptrtoint ptr %value.addr.i.i25 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 40, ptr %value.addr.i.i25, align 1
  %call.i.i26 = call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull %value.addr.i.i25, i16 noundef zeroext 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26)
  %cmp.i27 = icmp slt i32 %call.i.i26, 0
  br i1 %cmp.i27, label %if.then7.do.end_crit_edge, label %if.end.i29

if.then7.do.end_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i29:                                       ; preds = %if.then7
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i9.i24) #8
  %6 = ptrtoint ptr %value.addr.i9.i24 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 16, ptr %value.addr.i9.i24, align 1
  %call.i10.i28 = call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull %value.addr.i9.i24, i16 noundef zeroext 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i9.i24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i28)
  %cmp2.i = icmp slt i32 %call.i10.i28, 0
  br i1 %cmp2.i, label %if.end.i29.do.end_crit_edge, label %if.end4.i

if.end.i29.do.end_crit_edge:                      ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end4.i:                                        ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 120) #8
  br label %if.then11

if.end9:                                          ; preds = %if.then
  tail call void @msleep(i32 noundef 120) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i9.i) #8
  %7 = ptrtoint ptr %value.addr.i9.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 41, ptr %value.addr.i9.i, align 1
  %call.i10.i = call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull %value.addr.i9.i, i16 noundef zeroext 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i9.i) #8
  %8 = tail call i32 @llvm.smin.i32(i32 %call.i10.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i10.i)
  %cmp10 = icmp sgt i32 %call.i10.i, -1
  br i1 %cmp10, label %if.end9.if.then11_crit_edge, label %if.end9.do.end_crit_edge

if.end9.do.end_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end9.if.then11_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.then11:                                        ; preds = %if.end9.if.then11_crit_edge, %if.end4.i, %land.lhs.true4.critedge.if.then11_crit_edge, %land.lhs.true.if.then11_crit_edge
  %state12 = getelementptr inbounds %struct.hx8357_data, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %state12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %power, ptr %state12, align 4
  br label %if.end14

do.end:                                           ; preds = %if.end9.do.end_crit_edge, %if.end.i29.do.end_crit_edge, %if.then7.do.end_crit_edge, %if.then.do.end_crit_edge
  %ret.039 = phi i32 [ %8, %if.end9.do.end_crit_edge ], [ %call.i10.i28, %if.end.i29.do.end_crit_edge ], [ %call.i.i26, %if.then7.do.end_crit_edge ], [ %call.i.i, %if.then.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.lcd_device, ptr %lcdev, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %power) #11
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.then11
  %ret.033 = phi i32 [ %ret.039, %do.end ], [ 0, %if.then11 ]
  ret i32 %ret.033
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr nocapture noundef readonly %txbuf, i16 noundef zeroext %txlen) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.spi_message, align 4
  %xfer = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.lcd_device, ptr %lcdev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer) #8
  %2 = getelementptr inbounds i8, ptr %xfer, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 188)
  %4 = getelementptr inbounds i8, ptr %msg, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 40)
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %8 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %conv = zext i16 %txlen to i32
  %10 = shl nuw nsw i32 %conv, 1
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #12
  %tobool2.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool2.not, label %entry.cleanup39_crit_edge, label %for.cond.preheader

entry.cleanup39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup39

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %txlen)
  %cmp4.not = icmp eq i16 %txlen, 0
  br i1 %cmp4.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %txbuf, i32 %i.05
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %12 to i16
  %arrayidx7 = getelementptr i16, ptr %call8.i.i, i32 %i.05
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.05)
  %cmp8.not = icmp eq i32 %i.05, 0
  %or = or i16 %conv6, 256
  %storemerge = select i1 %cmp8.not, i16 %conv6, i16 %or
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %storemerge, ptr %arrayidx7, align 2
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %10, ptr %len, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 8
  %15 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 9, ptr %bits_per_word, align 1
  %16 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8.i.i, ptr %xfer, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %18, ptr noundef nonnull %msg) #8
  br i1 %call.i.i.i, label %if.end.i.i.i1, label %for.end.if.end30_crit_edge

for.end.if.end30_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end.i.i.i1:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i, ptr %18, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end.i.i.i1, %for.end.if.end30_crit_edge
  %spi = getelementptr inbounds %struct.hx8357_data, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %spi, align 4
  %call31 = call i32 @spi_sync(ptr noundef %24, ptr noundef nonnull %msg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %do.end, label %if.end30.if.then37_crit_edge

if.end30.if.then37_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

do.end:                                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.lcd_device, ptr %lcdev, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #11
  br label %if.then37

if.then37:                                        ; preds = %do.end, %if.end30.if.then37_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #8
  br label %cleanup39

cleanup39:                                        ; preds = %if.then37, %entry.cleanup39_crit_edge
  %retval.1 = phi i32 [ %call31, %if.then37 ], [ -12, %entry.cleanup39_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #8
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hx8357_lcd_init(ptr noundef %lcdev) #2 align 64 {
entry:
  %value.addr.i153 = alloca i8, align 1
  %value.addr.i151 = alloca i8, align 1
  %value.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.lcd_device, ptr %lcdev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %use_im_pins = getelementptr inbounds %struct.hx8357_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %use_im_pins to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_im_pins, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %5) #8
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i, i32 noundef 1) #8
  %arrayidx2 = getelementptr [3 x i32], ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %call.i133 = tail call ptr @gpio_to_desc(i32 noundef %7) #8
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i133, i32 noundef 0) #8
  %arrayidx4 = getelementptr [3 x i32], ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %call.i134 = tail call ptr @gpio_to_desc(i32 noundef %9) #8
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i134, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i135 = tail call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull @hx8357_seq_power, i16 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %cmp = icmp slt i32 %call.i135, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i136 = tail call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull @hx8357_seq_vcom, i16 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %cmp9 = icmp slt i32 %call.i136, 0
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call.i137 = tail call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull @hx8357_seq_power_normal, i16 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %cmp13 = icmp slt i32 %call.i137, 0
  br i1 %cmp13, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %call.i138 = tail call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull @hx8357_seq_panel_driving, i16 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %cmp17 = icmp slt i32 %call.i138, 0
  br i1 %cmp17, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %call.i139 = tail call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull @hx8357_seq_display_frame, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %cmp21 = icmp slt i32 %call.i139, 0
  br i1 %cmp21, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %call.i140 = tail call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull @hx8357_seq_panel_related, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %cmp25 = icmp slt i32 %call.i140, 0
  br i1 %cmp25, label %if.end23.cleanup_crit_edge, label %if.end27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %call.i141 = tail call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull @hx8357_seq_undefined1, i16 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %cmp29 = icmp slt i32 %call.i141, 0
  br i1 %cmp29, label %if.end27.cleanup_crit_edge, label %if.end31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  %call.i142 = tail call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull @hx8357_seq_undefined2, i16 noundef zeroext 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %cmp33 = icmp slt i32 %call.i142, 0
  br i1 %cmp33, label %if.end31.cleanup_crit_edge, label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %call.i143 = tail call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull @hx8357_seq_gamma, i16 noundef zeroext 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143)
  %cmp37 = icmp slt i32 %call.i143, 0
  br i1 %cmp37, label %if.end35.cleanup_crit_edge, label %if.end39

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  %call.i144 = tail call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull @hx8357_seq_address_mode, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %cmp41 = icmp slt i32 %call.i144, 0
  br i1 %cmp41, label %if.end39.cleanup_crit_edge, label %if.end43

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  %call.i145 = tail call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull @hx8357_seq_pixel_format, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %cmp45 = icmp slt i32 %call.i145, 0
  br i1 %cmp45, label %if.end43.cleanup_crit_edge, label %if.end47

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  %call.i146 = tail call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull @hx8357_seq_column_address, i16 noundef zeroext 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %cmp49 = icmp slt i32 %call.i146, 0
  br i1 %cmp49, label %if.end47.cleanup_crit_edge, label %if.end51

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end51:                                         ; preds = %if.end47
  %call.i147 = tail call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull @hx8357_seq_page_address, i16 noundef zeroext 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %cmp53 = icmp slt i32 %call.i147, 0
  br i1 %cmp53, label %if.end51.cleanup_crit_edge, label %if.end55

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end55:                                         ; preds = %if.end51
  %call.i148 = tail call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull @hx8357_seq_rgb, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %cmp57 = icmp slt i32 %call.i148, 0
  br i1 %cmp57, label %if.end55.cleanup_crit_edge, label %if.end59

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end59:                                         ; preds = %if.end55
  %call.i149 = tail call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull @hx8357_seq_display_mode, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %cmp61 = icmp slt i32 %call.i149, 0
  br i1 %cmp61, label %if.end59.cleanup_crit_edge, label %if.end63

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end63:                                         ; preds = %if.end59
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %10 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 17, ptr %value.addr.i, align 1
  %call.i150 = call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull %value.addr.i, i16 noundef zeroext 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %cmp65 = icmp slt i32 %call.i150, 0
  br i1 %cmp65, label %if.end63.cleanup_crit_edge, label %if.end67

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end67:                                         ; preds = %if.end63
  tail call void @msleep(i32 noundef 120) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i151)
  %11 = ptrtoint ptr %value.addr.i151 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 41, ptr %value.addr.i151, align 1
  %call.i152 = call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull %value.addr.i151, i16 noundef zeroext 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i151)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %cmp69 = icmp slt i32 %call.i152, 0
  br i1 %cmp69, label %if.end67.cleanup_crit_edge, label %if.end71

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end71:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 7000, i32 noundef 2) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i153)
  %12 = ptrtoint ptr %value.addr.i153 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 44, ptr %value.addr.i153, align 1
  %call.i154 = call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull %value.addr.i153, i16 noundef zeroext 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i153)
  %13 = tail call i32 @llvm.smin.i32(i32 %call.i154, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.end67.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i135, %if.end.cleanup_crit_edge ], [ %call.i136, %if.end7.cleanup_crit_edge ], [ %call.i137, %if.end11.cleanup_crit_edge ], [ %call.i138, %if.end15.cleanup_crit_edge ], [ %call.i139, %if.end19.cleanup_crit_edge ], [ %call.i140, %if.end23.cleanup_crit_edge ], [ %call.i141, %if.end27.cleanup_crit_edge ], [ %call.i142, %if.end31.cleanup_crit_edge ], [ %call.i143, %if.end35.cleanup_crit_edge ], [ %call.i144, %if.end39.cleanup_crit_edge ], [ %call.i145, %if.end43.cleanup_crit_edge ], [ %call.i146, %if.end47.cleanup_crit_edge ], [ %call.i147, %if.end51.cleanup_crit_edge ], [ %call.i148, %if.end55.cleanup_crit_edge ], [ %call.i149, %if.end59.cleanup_crit_edge ], [ %call.i150, %if.end63.cleanup_crit_edge ], [ %call.i152, %if.end67.cleanup_crit_edge ], [ %13, %if.end71 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hx8369_lcd_init(ptr noundef %lcdev) #2 align 64 {
entry:
  %value.addr.i114 = alloca i8, align 1
  %value.addr.i108 = alloca i8, align 1
  %value.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull @hx8369_seq_extension_command, i16 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #8
  %call.i100 = tail call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull @hx8369_seq_display_related, i16 noundef zeroext 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %cmp2 = icmp slt i32 %call.i100, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i101 = tail call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull @hx8369_seq_panel_waveform_cycle, i16 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %cmp6 = icmp slt i32 %call.i101, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call.i102 = tail call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull @hx8369_seq_set_address_mode, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %cmp10 = icmp slt i32 %call.i102, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call.i103 = tail call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull @hx8369_seq_vcom, i16 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %cmp14 = icmp slt i32 %call.i103, 0
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call.i104 = tail call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull @hx8369_seq_gip, i16 noundef zeroext 27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %cmp18 = icmp slt i32 %call.i104, 0
  br i1 %cmp18, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call.i105 = tail call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull @hx8369_seq_power, i16 noundef zeroext 20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %cmp22 = icmp slt i32 %call.i105, 0
  br i1 %cmp22, label %if.end20.cleanup_crit_edge, label %if.end24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %0 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 17, ptr %value.addr.i, align 1
  %call.i106 = call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull %value.addr.i, i16 noundef zeroext 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %cmp26 = icmp slt i32 %call.i106, 0
  br i1 %cmp26, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  tail call void @msleep(i32 noundef 120) #8
  %call.i107 = tail call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull @hx8369_seq_gamma_curve_related, i16 noundef zeroext 35) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %cmp30 = icmp slt i32 %call.i107, 0
  br i1 %cmp30, label %if.end28.cleanup_crit_edge, label %if.end32

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i108)
  %1 = ptrtoint ptr %value.addr.i108 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 17, ptr %value.addr.i108, align 1
  %call.i109 = call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull %value.addr.i108, i16 noundef zeroext 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i108)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %cmp34 = icmp slt i32 %call.i109, 0
  br i1 %cmp34, label %if.end32.cleanup_crit_edge, label %if.end36

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #8
  %call.i110 = tail call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull @hx8369_seq_write_CABC_control, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %cmp38 = icmp slt i32 %call.i110, 0
  br i1 %cmp38, label %if.end36.cleanup_crit_edge, label %if.end40

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #8
  %call.i111 = tail call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull @hx8369_seq_write_CABC_control_setting, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %cmp42 = icmp slt i32 %call.i111, 0
  br i1 %cmp42, label %if.end40.cleanup_crit_edge, label %if.end44

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  %call.i112 = tail call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull @hx8369_seq_write_CABC_min_brightness, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %cmp46 = icmp slt i32 %call.i112, 0
  br i1 %cmp46, label %if.end44.cleanup_crit_edge, label %if.end48

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #8
  %call.i113 = tail call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull @hx8369_seq_set_display_brightness, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %cmp50 = icmp slt i32 %call.i113, 0
  br i1 %cmp50, label %if.end48.cleanup_crit_edge, label %if.end52

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end52:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i114)
  %2 = ptrtoint ptr %value.addr.i114 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 41, ptr %value.addr.i114, align 1
  %call.i115 = call fastcc i32 @hx8357_spi_write_then_read(ptr noundef %lcdev, ptr noundef nonnull %value.addr.i114, i16 noundef zeroext 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i114)
  %3 = tail call i32 @llvm.smin.i32(i32 %call.i115, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.end48.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i100, %if.end.cleanup_crit_edge ], [ %call.i101, %if.end4.cleanup_crit_edge ], [ %call.i102, %if.end8.cleanup_crit_edge ], [ %call.i103, %if.end12.cleanup_crit_edge ], [ %call.i104, %if.end16.cleanup_crit_edge ], [ %call.i105, %if.end20.cleanup_crit_edge ], [ %call.i106, %if.end24.cleanup_crit_edge ], [ %call.i107, %if.end28.cleanup_crit_edge ], [ %call.i109, %if.end32.cleanup_crit_edge ], [ %call.i110, %if.end36.cleanup_crit_edge ], [ %call.i111, %if.end40.cleanup_crit_edge ], [ %call.i112, %if.end44.cleanup_crit_edge ], [ %call.i113, %if.end48.cleanup_crit_edge ], [ %3, %if.end52 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !49, !50, !52, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !67, !68, !70, !71, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @__initcall__kmod_hx8357__303_677_hx8357_driver_init6, !1, !"__initcall__kmod_hx8357__303_677_hx8357_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/hx8357.c", i32 677, i32 1}
!2 = !{ptr @__exitcall_hx8357_driver_exit, !1, !"__exitcall_hx8357_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author304, !4, !"__UNIQUE_ID_author304", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/hx8357.c", i32 679, i32 1}
!5 = !{ptr @__UNIQUE_ID_description305, !6, !"__UNIQUE_ID_description305", i1 false, i1 false}
!6 = !{!"../drivers/video/backlight/hx8357.c", i32 680, i32 1}
!7 = !{ptr @__UNIQUE_ID_file306, !8, !"__UNIQUE_ID_file306", i1 false, i1 false}
!8 = !{!"../drivers/video/backlight/hx8357.c", i32 681, i32 1}
!9 = !{ptr @__UNIQUE_ID_license307, !8, !"__UNIQUE_ID_license307", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/hx8357.c", i32 672, i32 11}
!12 = !{ptr @hx8357_driver, !13, !"hx8357_driver", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/hx8357.c", i32 669, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/hx8357.c", i32 594, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @hx8357_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @hx8357_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/video/backlight/hx8357.c", i32 604, i32 51}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/video/backlight/hx8357.c", i32 606, i32 3}
!26 = !{ptr @hx8357_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @hx8357_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/backlight/hx8357.c", i32 612, i32 9}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/video/backlight/hx8357.c", i32 614, i32 3}
!32 = !{ptr @hx8357_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @hx8357_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/video/backlight/hx8357.c", i32 620, i32 41}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/video/backlight/hx8357.c", i32 627, i32 5}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @hx8357_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @hx8357_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/video/backlight/hx8357.c", i32 631, i32 5}
!43 = !{ptr @hx8357_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @hx8357_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/video/backlight/hx8357.c", i32 637, i32 11}
!47 = !{ptr @hx8357_probe._entry.23, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../drivers/video/backlight/hx8357.c", i32 639, i32 5}
!49 = !{ptr @hx8357_probe._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/video/backlight/hx8357.c", i32 648, i32 46}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/video/backlight/hx8357.c", i32 660, i32 3}
!54 = !{ptr @hx8357_probe._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @hx8357_probe._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/video/backlight/hx8357.c", i32 664, i32 2}
!58 = !{ptr @hx8357_probe._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @hx8357_probe._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @hx8357_ops, !61, !"hx8357_ops", i1 false, i1 false}
!61 = !{!"../drivers/video/backlight/hx8357.c", i32 563, i32 23}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/video/backlight/hx8357.c", i32 551, i32 3}
!64 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @hx8357_set_power._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @hx8357_set_power._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/video/backlight/hx8357.c", i32 255, i32 3}
!70 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @hx8357_spi_write_then_read._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @hx8357_spi_write_then_read._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @hx8357_dt_ids, !74, !"hx8357_dt_ids", i1 false, i1 false}
!74 = !{!"../drivers/video/backlight/hx8357.c", i32 568, i32 34}
!75 = !{ptr @hx8357_seq_power, !76, !"hx8357_seq_power", i1 false, i1 false}
!76 = !{!"../drivers/video/backlight/hx8357.c", i32 93, i32 11}
!77 = !{ptr @hx8357_seq_vcom, !78, !"hx8357_seq_vcom", i1 false, i1 false}
!78 = !{!"../drivers/video/backlight/hx8357.c", i32 97, i32 11}
!79 = !{ptr @hx8357_seq_power_normal, !80, !"hx8357_seq_power_normal", i1 false, i1 false}
!80 = !{!"../drivers/video/backlight/hx8357.c", i32 101, i32 11}
!81 = !{ptr @hx8357_seq_panel_driving, !82, !"hx8357_seq_panel_driving", i1 false, i1 false}
!82 = !{!"../drivers/video/backlight/hx8357.c", i32 105, i32 11}
!83 = !{ptr @hx8357_seq_display_frame, !84, !"hx8357_seq_display_frame", i1 false, i1 false}
!84 = !{!"../drivers/video/backlight/hx8357.c", i32 109, i32 11}
!85 = !{ptr @hx8357_seq_panel_related, !86, !"hx8357_seq_panel_related", i1 false, i1 false}
!86 = !{!"../drivers/video/backlight/hx8357.c", i32 113, i32 11}
!87 = !{ptr @hx8357_seq_undefined1, !88, !"hx8357_seq_undefined1", i1 false, i1 false}
!88 = !{!"../drivers/video/backlight/hx8357.c", i32 117, i32 11}
!89 = !{ptr @hx8357_seq_undefined2, !90, !"hx8357_seq_undefined2", i1 false, i1 false}
!90 = !{!"../drivers/video/backlight/hx8357.c", i32 121, i32 11}
!91 = !{ptr @hx8357_seq_gamma, !92, !"hx8357_seq_gamma", i1 false, i1 false}
!92 = !{!"../drivers/video/backlight/hx8357.c", i32 125, i32 11}
!93 = !{ptr @hx8357_seq_address_mode, !94, !"hx8357_seq_address_mode", i1 false, i1 false}
!94 = !{!"../drivers/video/backlight/hx8357.c", i32 130, i32 11}
!95 = !{ptr @hx8357_seq_pixel_format, !96, !"hx8357_seq_pixel_format", i1 false, i1 false}
!96 = !{!"../drivers/video/backlight/hx8357.c", i32 134, i32 11}
!97 = !{ptr @hx8357_seq_column_address, !98, !"hx8357_seq_column_address", i1 false, i1 false}
!98 = !{!"../drivers/video/backlight/hx8357.c", i32 140, i32 11}
!99 = !{ptr @hx8357_seq_page_address, !100, !"hx8357_seq_page_address", i1 false, i1 false}
!100 = !{!"../drivers/video/backlight/hx8357.c", i32 144, i32 11}
!101 = !{ptr @hx8357_seq_rgb, !102, !"hx8357_seq_rgb", i1 false, i1 false}
!102 = !{!"../drivers/video/backlight/hx8357.c", i32 148, i32 11}
!103 = !{ptr @hx8357_seq_display_mode, !104, !"hx8357_seq_display_mode", i1 false, i1 false}
!104 = !{!"../drivers/video/backlight/hx8357.c", i32 152, i32 11}
!105 = !{ptr @hx8369_seq_extension_command, !106, !"hx8369_seq_extension_command", i1 false, i1 false}
!106 = !{!"../drivers/video/backlight/hx8357.c", i32 174, i32 11}
!107 = !{ptr @hx8369_seq_display_related, !108, !"hx8369_seq_display_related", i1 false, i1 false}
!108 = !{!"../drivers/video/backlight/hx8357.c", i32 178, i32 11}
!109 = !{ptr @hx8369_seq_panel_waveform_cycle, !110, !"hx8369_seq_panel_waveform_cycle", i1 false, i1 false}
!110 = !{!"../drivers/video/backlight/hx8357.c", i32 183, i32 11}
!111 = !{ptr @hx8369_seq_set_address_mode, !112, !"hx8369_seq_set_address_mode", i1 false, i1 false}
!112 = !{!"../drivers/video/backlight/hx8357.c", i32 187, i32 11}
!113 = !{ptr @hx8369_seq_vcom, !114, !"hx8369_seq_vcom", i1 false, i1 false}
!114 = !{!"../drivers/video/backlight/hx8357.c", i32 191, i32 11}
!115 = !{ptr @hx8369_seq_gip, !116, !"hx8369_seq_gip", i1 false, i1 false}
!116 = !{!"../drivers/video/backlight/hx8357.c", i32 195, i32 11}
!117 = !{ptr @hx8369_seq_power, !118, !"hx8369_seq_power", i1 false, i1 false}
!118 = !{!"../drivers/video/backlight/hx8357.c", i32 201, i32 11}
!119 = !{ptr @hx8369_seq_gamma_curve_related, !120, !"hx8369_seq_gamma_curve_related", i1 false, i1 false}
!120 = !{!"../drivers/video/backlight/hx8357.c", i32 206, i32 11}
!121 = !{ptr @hx8369_seq_write_CABC_control, !122, !"hx8369_seq_write_CABC_control", i1 false, i1 false}
!122 = !{!"../drivers/video/backlight/hx8357.c", i32 162, i32 11}
!123 = !{ptr @hx8369_seq_write_CABC_control_setting, !124, !"hx8369_seq_write_CABC_control_setting", i1 false, i1 false}
!124 = !{!"../drivers/video/backlight/hx8357.c", i32 170, i32 11}
!125 = !{ptr @hx8369_seq_write_CABC_min_brightness, !126, !"hx8369_seq_write_CABC_min_brightness", i1 false, i1 false}
!126 = !{!"../drivers/video/backlight/hx8357.c", i32 158, i32 11}
!127 = !{ptr @hx8369_seq_set_display_brightness, !128, !"hx8369_seq_set_display_brightness", i1 false, i1 false}
!128 = !{!"../drivers/video/backlight/hx8357.c", i32 166, i32 11}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{i8 0, i8 2}
