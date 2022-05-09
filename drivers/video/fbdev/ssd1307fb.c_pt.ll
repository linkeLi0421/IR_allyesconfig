; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/ssd1307fb.c_pt.bc'
source_filename = "../drivers/video/fbdev/ssd1307fb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ssd1307fb_deviceinfo = type { i32, i32, i32, i32, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.86, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.86 = type { ptr }
%struct.ssd1307fb_par = type { i8, i32, i32, i32, i32, ptr, ptr, i32, ptr, [4 x i8], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8 }
%struct.ssd1307fb_array = type { i8, [0 x i8] }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.fb_deferred_io = type { i32, %struct.mutex, %struct.list_head, ptr, ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__param_str_refreshrate = internal constant [22 x i8] c"ssd1307fb.refreshrate\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@refreshrate = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_refreshrate = internal constant %struct.kernel_param { ptr @__param_str_refreshrate, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @refreshrate } }, section "__param", align 4
@__UNIQUE_ID_refreshratetype301 = internal constant [36 x i8] c"ssd1307fb.parmtype=refreshrate:uint\00", section ".modinfo", align 1
@__initcall__kmod_ssd1307fb__303_863_ssd1307fb_driver_init6 = internal global ptr @ssd1307fb_driver_init, section ".initcall6.init", align 4
@ssd1307fb_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ssd1307fb_remove, ptr @ssd1307fb_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ssd1307fb_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ssd1307fb_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ssd1307fb_driver_exit = internal global ptr @ssd1307fb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description304 = internal constant [72 x i8] c"ssd1307fb.description=FB driver for the Solomon SSD1307 OLED controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author305 = internal constant [66 x i8] c"ssd1307fb.author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [45 x i8] c"ssd1307fb.file=drivers/video/fbdev/ssd1307fb\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [22 x i8] c"ssd1307fb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssd1307fb\00", [22 x i8] zeroinitializer }, align 32
@ssd1307fb_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"solomon,ssd1305fb-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ssd1307fb_ssd1305_deviceinfo }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"solomon,ssd1306fb-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ssd1307fb_ssd1306_deviceinfo }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"solomon,ssd1307fb-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ssd1307fb_ssd1307_deviceinfo }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"solomon,ssd1309fb-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ssd1307fb_ssd1309_deviceinfo }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@ssd1307fb_i2c_id = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ssd1305fb\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ssd1306fb\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ssd1307fb\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ssd1309fb\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ssd1307fb_write_array._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 136, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't send I2C command.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ssd1307fb_write_array\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/video/fbdev/ssd1307fb.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ssd1307fb_write_array._entry_ptr = internal global ptr @ssd1307fb_write_array._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ssd1307fb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 662, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get reset gpio: %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ssd1307fb_probe\00", [16 x i8] zeroinitializer }, align 32
@ssd1307fb_probe._entry_ptr = internal global ptr @ssd1307fb_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbat\00", [27 x i8] zeroinitializer }, align 32
@ssd1307fb_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.3, i32 673, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get VBAT regulator: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ssd1307fb_probe._entry_ptr.12 = internal global ptr @ssd1307fb_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"solomon,width\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"solomon,height\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"solomon,page-offset\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"solomon,col-offset\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"solomon,com-offset\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"solomon,prechargep1\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"solomon,prechargep2\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"solomon,lookup-table\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"solomon,segment-no-remap\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"solomon,com-seq\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"solomon,com-lrremap\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"solomon,com-invdir\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"solomon,area-color-enable\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"solomon,low-power\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"solomon,dclk-div\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"solomon,dclk-frq\00", [47 x i8] zeroinitializer }, align 32
@ssd1307fb_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.8, ptr @.str.3, i32 726, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Couldn't allocate graphical memory.\0A\00", [59 x i8] zeroinitializer }, align 32
@ssd1307fb_probe._entry_ptr.31 = internal global ptr @ssd1307fb_probe._entry.29, section ".printk_index", align 4
@ssd1307fb_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.8, ptr @.str.3, i32 734, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Couldn't allocate deferred io.\0A\00", [32 x i8] zeroinitializer }, align 32
@ssd1307fb_probe._entry_ptr.34 = internal global ptr @ssd1307fb_probe._entry.32, section ".printk_index", align 4
@ssd1307fb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr @fb_sys_read, ptr @ssd1307fb_write, ptr null, ptr null, ptr null, ptr null, ptr @ssd1307fb_blank, ptr null, ptr @ssd1307fb_fillrect, ptr @ssd1307fb_copyarea, ptr @ssd1307fb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ssd1307fb_fix = internal constant { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] c"Solomon SSD1307\00", i32 0, i32 0, i32 0, i32 0, i32 1, i16 0, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@ssd1307fb_var = internal constant { %struct.fb_var_screeninfo, [32 x i8] } { %struct.fb_var_screeninfo { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, %struct.fb_bitfield { i32 0, i32 1, i32 0 }, %struct.fb_bitfield { i32 0, i32 1, i32 0 }, %struct.fb_bitfield { i32 0, i32 1, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [4 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ssd1307fb_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.8, ptr @.str.3, i32 772, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable VBAT: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ssd1307fb_probe._entry_ptr.37 = internal global ptr @ssd1307fb_probe._entry.35, section ".printk_index", align 4
@ssd1307fb_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.8, ptr @.str.3, i32 783, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Couldn't register the framebuffer\0A\00", [61 x i8] zeroinitializer }, align 32
@ssd1307fb_probe._entry_ptr.40 = internal global ptr @ssd1307fb_probe._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ssd1307fb%d\00", [20 x i8] zeroinitializer }, align 32
@ssd1307fb_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 1, ptr @ssd1307fb_update_bl, ptr @ssd1307fb_get_brightness, ptr @ssd1307fb_check_fb }, [16 x i8] zeroinitializer }, align 32
@ssd1307fb_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.8, ptr @.str.3, i32 792, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unable to register backlight device: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ssd1307fb_probe._entry_ptr.44 = internal global ptr @ssd1307fb_probe._entry.42, section ".printk_index", align 4
@ssd1307fb_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.8, ptr @.str.3, i32 800, ptr @.str.47, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"fb%d: %s framebuffer device registered, using %d bytes of video memory\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ssd1307fb_probe._entry_ptr.48 = internal global ptr @ssd1307fb_probe._entry.45, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@ssd1307fb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 388, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Could not get PWM from device tree!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ssd1307fb_init\00", [17 x i8] zeroinitializer }, align 32
@ssd1307fb_init._entry_ptr = internal global ptr @ssd1307fb_init._entry, section ".printk_index", align 4
@ssd1307fb_init.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Using PWM%d with a %lluns period.\0A\00", [61 x i8] zeroinitializer }, align 32
@ssd1307fb_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.53, ptr @.str.3, i32 523, ptr @.str.57, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"lookup table index %d value out of range 31 <= %d <= 63\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ssd1307fb_init._entry_ptr.58 = internal global ptr @ssd1307fb_init._entry.55, section ".printk_index", align 4
@ssd1307fb_ssd1305_deviceinfo = internal global { %struct.ssd1307fb_deviceinfo, [44 x i8] } { %struct.ssd1307fb_deviceinfo { i32 52, i32 1, i32 7, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@ssd1307fb_ssd1306_deviceinfo = internal global { %struct.ssd1307fb_deviceinfo, [44 x i8] } { %struct.ssd1307fb_deviceinfo { i32 32, i32 1, i32 8, i32 0, i32 1 }, [44 x i8] zeroinitializer }, align 32
@ssd1307fb_ssd1307_deviceinfo = internal global { %struct.ssd1307fb_deviceinfo, [44 x i8] } { %struct.ssd1307fb_deviceinfo { i32 32, i32 2, i32 12, i32 1, i32 0 }, [44 x i8] zeroinitializer }, align 32
@ssd1307fb_ssd1309_deviceinfo = internal global { %struct.ssd1307fb_deviceinfo, [44 x i8] } { %struct.ssd1307fb_deviceinfo { i32 52, i32 1, i32 10, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.59 = private unnamed_addr constant [12 x i8] c"refreshrate\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 48, i32 14 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"ssd1307fb_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 853, i32 26 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 858, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [19 x i8] c"ssd1307fb_of_match\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 616, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"ssd1307fb_i2c_id\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 844, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 136, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 659, i32 44 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 661, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 667, i32 51 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 673, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 678, i32 36 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 681, i32 36 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 684, i32 36 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 687, i32 36 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 690, i32 36 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 693, i32 36 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 696, i32 36 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 699, i32 42 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 704, i32 51 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 705, i32 48 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 706, i32 52 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 707, i32 51 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 709, i32 34 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 710, i32 50 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 716, i32 36 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 718, i32 36 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 726, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 734, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [14 x i8] c"ssd1307fb_ops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 363, i32 28 }
@___asan_gen_.176 = private unnamed_addr constant [14 x i8] c"ssd1307fb_fix\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 97, i32 39 }
@___asan_gen_.179 = private unnamed_addr constant [14 x i8] c"ssd1307fb_var\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 107, i32 39 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 772, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 783, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 787, i32 37 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"ssd1307fb_bl_ops\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 583, i32 35 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 792, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 800, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 230, i32 6 }
@___asan_gen_.219 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 214, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 156, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 388, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 399, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 521, i32 5 }
@___asan_gen_.245 = private unnamed_addr constant [29 x i8] c"ssd1307fb_ssd1305_deviceinfo\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 590, i32 36 }
@___asan_gen_.248 = private unnamed_addr constant [29 x i8] c"ssd1307fb_ssd1306_deviceinfo\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 596, i32 36 }
@___asan_gen_.251 = private unnamed_addr constant [29 x i8] c"ssd1307fb_ssd1307_deviceinfo\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 603, i32 36 }
@___asan_gen_.254 = private unnamed_addr constant [29 x i8] c"ssd1307fb_ssd1309_deviceinfo\00", align 1
@___asan_gen_.255 = private constant [35 x i8] c"../drivers/video/fbdev/ssd1307fb.c\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 610, i32 36 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__UNIQUE_ID_refreshratetype301, ptr @__exitcall_ssd1307fb_driver_exit, ptr @__initcall__kmod_ssd1307fb__303_863_ssd1307fb_driver_init6, ptr @__param_refreshrate, ptr @ssd1307fb_driver_exit, ptr @ssd1307fb_init._entry, ptr @ssd1307fb_init._entry.55, ptr @ssd1307fb_init._entry_ptr, ptr @ssd1307fb_init._entry_ptr.58, ptr @ssd1307fb_probe._entry, ptr @ssd1307fb_probe._entry.10, ptr @ssd1307fb_probe._entry.29, ptr @ssd1307fb_probe._entry.32, ptr @ssd1307fb_probe._entry.35, ptr @ssd1307fb_probe._entry.38, ptr @ssd1307fb_probe._entry.42, ptr @ssd1307fb_probe._entry.45, ptr @ssd1307fb_probe._entry_ptr, ptr @ssd1307fb_probe._entry_ptr.12, ptr @ssd1307fb_probe._entry_ptr.31, ptr @ssd1307fb_probe._entry_ptr.34, ptr @ssd1307fb_probe._entry_ptr.37, ptr @ssd1307fb_probe._entry_ptr.40, ptr @ssd1307fb_probe._entry_ptr.44, ptr @ssd1307fb_probe._entry_ptr.48, ptr @ssd1307fb_write_array._entry, ptr @ssd1307fb_write_array._entry_ptr, ptr @refreshrate, ptr @ssd1307fb_driver, ptr @.str, ptr @ssd1307fb_of_match, ptr @ssd1307fb_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @ssd1307fb_ops, ptr @ssd1307fb_fix, ptr @ssd1307fb_var, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @ssd1307fb_bl_ops, ptr @.str.43, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @ssd1307fb_ssd1305_deviceinfo, ptr @ssd1307fb_ssd1306_deviceinfo, ptr @ssd1307fb_ssd1307_deviceinfo, ptr @ssd1307fb_ssd1309_deviceinfo], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @refreshrate to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssd1307fb_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssd1307fb_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssd1307fb_i2c_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssd1307fb_write_array._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssd1307fb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssd1307fb_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssd1307fb_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssd1307fb_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssd1307fb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssd1307fb_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssd1307fb_var to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssd1307fb_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssd1307fb_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssd1307fb_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssd1307fb_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssd1307fb_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssd1307fb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssd1307fb_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssd1307fb_ssd1305_deviceinfo to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssd1307fb_ssd1306_deviceinfo to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssd1307fb_ssd1307_deviceinfo to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssd1307fb_ssd1309_deviceinfo to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ssd1307fb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ssd1307fb_driver) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ssd1307fb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @i2c_del_driver(ptr noundef nonnull @ssd1307fb_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssd1307fb_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  %state.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %client2 = getelementptr inbounds %struct.ssd1307fb_par, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 2) #16
  %tobool.not.i.i24 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i24, label %entry.ssd1307fb_write_cmd.exit_crit_edge, label %if.end.i25

entry.ssd1307fb_write_cmd.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %ssd1307fb_write_cmd.exit

if.end.i25:                                       ; preds = %entry
  %7 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -128, ptr %call7.i.i.i.i, align 8
  %data.i = getelementptr inbounds %struct.ssd1307fb_array, ptr %call7.i.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -82, ptr %data.i, align 1
  %call.i.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp.not.i.i, label %if.end.i25.ssd1307fb_write_array.exit.i_crit_edge, label %do.end.i.i

if.end.i25.ssd1307fb_write_array.exit.i_crit_edge: ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #15
  br label %ssd1307fb_write_array.exit.i

do.end.i.i:                                       ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.1) #17
  br label %ssd1307fb_write_array.exit.i

ssd1307fb_write_array.exit.i:                     ; preds = %do.end.i.i, %if.end.i25.ssd1307fb_write_array.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #13
  br label %ssd1307fb_write_cmd.exit

ssd1307fb_write_cmd.exit:                         ; preds = %ssd1307fb_write_array.exit.i, %entry.ssd1307fb_write_cmd.exit_crit_edge
  %bl_dev = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bl_dev, align 4
  tail call void @backlight_device_unregister(ptr noundef %10) #13
  tail call void @unregister_framebuffer(ptr noundef %1) #13
  %device_info = getelementptr inbounds %struct.ssd1307fb_par, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %device_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device_info, align 4
  %need_pwm = getelementptr inbounds %struct.ssd1307fb_deviceinfo, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %need_pwm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %need_pwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %ssd1307fb_write_cmd.exit.if.end_crit_edge, label %if.then

ssd1307fb_write_cmd.exit.if.end_crit_edge:        ; preds = %ssd1307fb_write_cmd.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %ssd1307fb_write_cmd.exit
  %pwm = getelementptr inbounds %struct.ssd1307fb_par, ptr %3, i32 0, i32 14
  %15 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pwm, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #13
  %tobool.not.i27 = icmp eq ptr %16, null
  br i1 %tobool.not.i27, label %if.then.pwm_disable.exit_crit_edge, label %if.end.i28

if.then.pwm_disable.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %pwm_disable.exit

if.end.i28:                                       ; preds = %if.then
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %16, i32 0, i32 7
  %17 = call ptr @memcpy(ptr %state.i, ptr %state1.i.i, i32 24)
  %enabled.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 3
  %18 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %enabled.i, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool1.not.i = icmp eq i8 %19, 0
  br i1 %tobool1.not.i, label %if.end.i28.pwm_disable.exit_crit_edge, label %if.end3.i29

if.end.i28.pwm_disable.exit_crit_edge:            ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #15
  br label %pwm_disable.exit

if.end3.i29:                                      ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %enabled.i, align 4
  %call.i = call i32 @pwm_apply_state(ptr noundef nonnull %16, ptr noundef nonnull %state.i) #13
  br label %pwm_disable.exit

pwm_disable.exit:                                 ; preds = %if.end3.i29, %if.end.i28.pwm_disable.exit_crit_edge, %if.then.pwm_disable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #13
  %21 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pwm, align 4
  call void @pwm_put(ptr noundef %22) #13
  br label %if.end

if.end:                                           ; preds = %pwm_disable.exit, %ssd1307fb_write_cmd.exit.if.end_crit_edge
  %vbat_reg = getelementptr inbounds %struct.ssd1307fb_par, ptr %3, i32 0, i32 16
  %23 = ptrtoint ptr %vbat_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vbat_reg, align 4
  %tobool5.not = icmp eq ptr %24, null
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = call i32 @regulator_disable(ptr noundef nonnull %24) #13
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  call void @fb_deferred_io_cleanup(ptr noundef %1) #13
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 1
  %25 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %smem_start, align 4
  %27 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %26, i32 -2130706432, i32 8454144) #18, !srcloc !151
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 2
  %28 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %smem_len, align 4
  %dec.i = add i32 %29, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %shr.i = lshr i32 %dec.i, 12
  %30 = call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #13, !range !152
  %sub.i.i = sub nuw nsw i32 32, %30
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %31 = inttoptr i32 %27 to ptr
  call void @__free_pages(ptr noundef %31, i32 noundef %cond.i.i) #13
  call void @framebuffer_release(ptr noundef %1) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssd1307fb_probe(ptr noundef %client) #2 align 64 {
entry:
  %bl_name = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bl_name) #13
  %0 = call ptr @memset(ptr %bl_name, i32 255, i32 12)
  %call = tail call ptr @framebuffer_alloc(i32 noundef 80, ptr noundef %dev1) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %par2 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 30
  %1 = ptrtoint ptr %par2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %par2, align 4
  %info3 = getelementptr inbounds %struct.ssd1307fb_par, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %info3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %info3, align 4
  %client4 = getelementptr inbounds %struct.ssd1307fb_par, ptr %2, i32 0, i32 6
  %4 = ptrtoint ptr %client4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %client, ptr %client4, align 4
  %call5 = tail call ptr @device_get_match_data(ptr noundef %dev1) #13
  %device_info = getelementptr inbounds %struct.ssd1307fb_par, ptr %2, i32 0, i32 5
  %5 = ptrtoint ptr %device_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %device_info, align 4
  %call6 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef 3) #13
  %reset = getelementptr inbounds %struct.ssd1307fb_par, ptr %2, i32 0, i32 15
  %6 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %reset, align 4
  %cmp.i363 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i363, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %call6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %7) #17
  %8 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %fb_alloc_error

if.end14:                                         ; preds = %if.end
  %call15 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.9) #13
  %vbat_reg = getelementptr inbounds %struct.ssd1307fb_par, ptr %2, i32 0, i32 16
  %11 = ptrtoint ptr %vbat_reg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call15, ptr %vbat_reg, align 4
  %cmp.i364 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i364, label %if.then18, label %if.end14.if.end27_crit_edge

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then18:                                        ; preds = %if.end14
  %cmp = icmp eq ptr %call15, inttoptr (i32 -19 to ptr)
  br i1 %cmp, label %if.then21, label %do.end25

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %vbat_reg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %vbat_reg, align 4
  br label %if.end27

do.end25:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %call15 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %13) #17
  br label %fb_alloc_error

if.end27:                                         ; preds = %if.then21, %if.end14.if.end27_crit_edge
  %width = getelementptr inbounds %struct.ssd1307fb_par, ptr %2, i32 0, i32 18
  %call.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.13, ptr noundef %width, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool29.not = icmp eq i32 %call.i, 0
  br i1 %tobool29.not, label %if.end27.if.end32_crit_edge, label %if.then30

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 96, ptr %width, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end27.if.end32_crit_edge
  %height = getelementptr inbounds %struct.ssd1307fb_par, ptr %2, i32 0, i32 7
  %call.i365 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.14, ptr noundef %height, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i365)
  %tobool34.not = icmp eq i32 %call.i365, 0
  br i1 %tobool34.not, label %if.end32.if.end37_crit_edge, label %if.then35

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16, ptr %height, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end32.if.end37_crit_edge
  %page_offset = getelementptr inbounds %struct.ssd1307fb_par, ptr %2, i32 0, i32 10
  %call.i366 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef %page_offset, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i366)
  %tobool39.not = icmp eq i32 %call.i366, 0
  br i1 %tobool39.not, label %if.end37.if.end42_crit_edge, label %if.then40

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %page_offset to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %page_offset, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end37.if.end42_crit_edge
  %col_offset = getelementptr inbounds %struct.ssd1307fb_par, ptr %2, i32 0, i32 11
  %call.i367 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.16, ptr noundef %col_offset, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i367)
  %tobool44.not = icmp eq i32 %call.i367, 0
  br i1 %tobool44.not, label %if.end42.if.end47_crit_edge, label %if.then45

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %col_offset to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %col_offset, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end42.if.end47_crit_edge
  %com_offset = getelementptr inbounds %struct.ssd1307fb_par, ptr %2, i32 0, i32 1
  %call.i368 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef %com_offset, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i368)
  %tobool49.not = icmp eq i32 %call.i368, 0
  br i1 %tobool49.not, label %if.end47.if.end52_crit_edge, label %if.then50

if.end47.if.end52_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %com_offset to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %com_offset, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end47.if.end52_crit_edge
  %prechargep1 = getelementptr inbounds %struct.ssd1307fb_par, ptr %2, i32 0, i32 12
  %call.i369 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef %prechargep1, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i369)
  %tobool54.not = icmp eq i32 %call.i369, 0
  br i1 %tobool54.not, label %if.end52.if.end57_crit_edge, label %if.then55

if.end52.if.end57_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %prechargep1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %prechargep1, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end52.if.end57_crit_edge
  %prechargep2 = getelementptr inbounds %struct.ssd1307fb_par, ptr %2, i32 0, i32 13
  %call.i370 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.19, ptr noundef %prechargep2, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i370)
  %tobool59.not = icmp eq i32 %call.i370, 0
  br i1 %tobool59.not, label %if.end57.if.end62_crit_edge, label %if.then60

if.end57.if.end62_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %prechargep2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %prechargep2, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end57.if.end62_crit_edge
  %lookup_table = getelementptr inbounds %struct.ssd1307fb_par, ptr %2, i32 0, i32 9
  %call63 = tail call i32 @device_property_read_u8_array(ptr noundef %dev1, ptr noundef nonnull @.str.20, ptr noundef %lookup_table, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then65, label %if.end62.if.end66_crit_edge

if.end62.if.end66_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %2, align 4
  %bf.set = or i8 %bf.load, 8
  store i8 %bf.set, ptr %2, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end62.if.end66_crit_edge
  %call.i371 = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.21) #13
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load68 = load i8, ptr %2, align 4
  %bf.shl = select i1 %call.i371, i8 0, i8 2
  %bf.clear69 = and i8 %bf.load68, -3
  %bf.set70 = or i8 %bf.clear69, %bf.shl
  store i8 %bf.set70, ptr %2, align 4
  %call.i372 = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.22) #13
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load72 = load i8, ptr %2, align 4
  %bf.shl74 = select i1 %call.i372, i8 16, i8 0
  %bf.clear75 = and i8 %bf.load72, -17
  %bf.set76 = or i8 %bf.clear75, %bf.shl74
  store i8 %bf.set76, ptr %2, align 4
  %call.i373 = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.23) #13
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load80 = load i8, ptr %2, align 4
  %bf.shl82 = select i1 %call.i373, i8 32, i8 0
  %bf.clear83 = and i8 %bf.load80, -33
  %bf.set84 = or i8 %bf.clear83, %bf.shl82
  store i8 %bf.set84, ptr %2, align 4
  %call.i374 = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.24) #13
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load88 = load i8, ptr %2, align 4
  %bf.shl90 = select i1 %call.i374, i8 64, i8 0
  %bf.clear91 = and i8 %bf.load88, -65
  %bf.set92 = or i8 %bf.clear91, %bf.shl90
  store i8 %bf.set92, ptr %2, align 4
  %call.i375 = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.25) #13
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load96 = load i8, ptr %2, align 4
  %bf.shl98 = select i1 %call.i375, i8 -128, i8 0
  %bf.clear99 = and i8 %bf.load96, 127
  %bf.set100 = or i8 %bf.clear99, %bf.shl98
  store i8 %bf.set100, ptr %2, align 4
  %call.i376 = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.26) #13
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load104 = load i8, ptr %2, align 4
  %bf.shl106 = select i1 %call.i376, i8 4, i8 0
  %bf.clear107 = and i8 %bf.load104, -5
  %bf.set108 = or i8 %bf.clear107, %bf.shl106
  store i8 %bf.set108, ptr %2, align 4
  %contrast = getelementptr inbounds %struct.ssd1307fb_par, ptr %2, i32 0, i32 2
  %28 = ptrtoint ptr %contrast to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 127, ptr %contrast, align 4
  %29 = ptrtoint ptr %device_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device_info, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %vcomh = getelementptr inbounds %struct.ssd1307fb_par, ptr %2, i32 0, i32 17
  %33 = ptrtoint ptr %vcomh to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %vcomh, align 4
  %dclk_div = getelementptr inbounds %struct.ssd1307fb_par, ptr %2, i32 0, i32 3
  %call.i377 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.27, ptr noundef %dclk_div, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i377)
  %tobool112.not = icmp eq i32 %call.i377, 0
  br i1 %tobool112.not, label %if.end66.if.end116_crit_edge, label %if.then113

if.end66.if.end116_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end116

if.then113:                                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %device_info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device_info, align 4
  %default_dclk_div = getelementptr inbounds %struct.ssd1307fb_deviceinfo, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %default_dclk_div to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %default_dclk_div, align 4
  %38 = ptrtoint ptr %dclk_div to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %dclk_div, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then113, %if.end66.if.end116_crit_edge
  %dclk_frq = getelementptr inbounds %struct.ssd1307fb_par, ptr %2, i32 0, i32 4
  %call.i378 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.28, ptr noundef %dclk_frq, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i378)
  %tobool118.not = icmp eq i32 %call.i378, 0
  br i1 %tobool118.not, label %if.end116.if.end122_crit_edge, label %if.then119

if.end116.if.end122_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end122

if.then119:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %device_info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device_info, align 4
  %default_dclk_frq = getelementptr inbounds %struct.ssd1307fb_deviceinfo, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %default_dclk_frq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %default_dclk_frq, align 4
  %43 = ptrtoint ptr %dclk_frq to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %dclk_frq, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then119, %if.end116.if.end122_crit_edge
  %44 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %width, align 4
  %sub = add i32 %45, 7
  %div361 = lshr i32 %sub, 3
  %46 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %height, align 4
  %mul = mul i32 %div361, %47
  %dec.i = add i32 %mul, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %shr.i = lshr i32 %dec.i, 12
  %48 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #13, !range !152
  %sub.i.i = sub nuw nsw i32 32, %48
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %call126 = tail call i32 @__get_free_pages(i32 noundef 3520, i32 noundef %cond.i.i) #13
  %49 = inttoptr i32 %call126 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %do.end131, label %if.end132

do.end131:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30) #17
  br label %fb_alloc_error

if.end132:                                        ; preds = %if.end122
  %call.i379 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 112, i32 noundef 3520) #13
  %tobool134.not = icmp eq ptr %call.i379, null
  br i1 %tobool134.not, label %do.end138, label %if.end139

do.end138:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33) #17
  br label %fb_alloc_error

if.end139:                                        ; preds = %if.end132
  %50 = load i32, ptr @refreshrate, align 4
  %div140 = udiv i32 100, %50
  %51 = ptrtoint ptr %call.i379 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %div140, ptr %call.i379, align 4
  %deferred_io = getelementptr inbounds %struct.fb_deferred_io, ptr %call.i379, i32 0, i32 4
  %52 = ptrtoint ptr %deferred_io to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @ssd1307fb_deferred_io, ptr %deferred_io, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 20
  %53 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @ssd1307fb_ops, ptr %fbops, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7
  %54 = call ptr @memcpy(ptr %fix, ptr @ssd1307fb_fix, i32 68)
  %55 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %width, align 4
  %sub143 = add i32 %56, 7
  %div144362 = lshr i32 %sub143, 3
  %line_length = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 9
  %57 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %div144362, ptr %line_length, align 4
  %fbdefio = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 19
  %58 = ptrtoint ptr %fbdefio to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i379, ptr %fbdefio, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6
  %59 = call ptr @memcpy(ptr %var, ptr @ssd1307fb_var, i32 160)
  %60 = load i32, ptr %width, align 4
  %61 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %var, align 4
  %62 = load i32, ptr %width, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 2
  %63 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %xres_virtual, align 4
  %64 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %height, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 1
  %66 = ptrtoint ptr %yres to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %yres, align 4
  %67 = load i32, ptr %height, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 3
  %68 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %yres_virtual, align 4
  %69 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 25
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %49, ptr %69, align 4
  %call154 = tail call i32 @__virt_to_phys(i32 noundef %call126) #13
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 1
  %71 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call154, ptr %smem_start, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 2
  %72 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %mul, ptr %smem_len, align 4
  tail call void @fb_deferred_io_init(ptr noundef nonnull %call) #13
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %73 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call, ptr %driver_data.i.i, align 4
  %74 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reset, align 4
  %tobool158.not = icmp eq ptr %75, null
  br i1 %tobool158.not, label %if.end139.if.end162_crit_edge, label %if.then159

if.end139.if.end162_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end162

if.then159:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %75, i32 noundef 1) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 858992) #13
  %77 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %78, i32 noundef 0) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 858992) #13
  br label %if.end162

if.end162:                                        ; preds = %if.then159, %if.end139.if.end162_crit_edge
  %80 = ptrtoint ptr %vbat_reg to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %vbat_reg, align 4
  %tobool164.not = icmp eq ptr %81, null
  br i1 %tobool164.not, label %if.end162.if.end174_crit_edge, label %if.then165

if.end162.if.end174_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end174

if.then165:                                       ; preds = %if.end162
  %call167 = tail call i32 @regulator_enable(ptr noundef nonnull %81) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %if.then165.if.end174_crit_edge, label %do.end172

if.then165.if.end174_crit_edge:                   ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end174

do.end172:                                        ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36, i32 noundef %call167) #17
  br label %reset_oled_error

if.end174:                                        ; preds = %if.then165.if.end174_crit_edge, %if.end162.if.end174_crit_edge
  %call175 = tail call fastcc i32 @ssd1307fb_init(ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %if.end178, label %if.end174.regulator_enable_error_crit_edge

if.end174.regulator_enable_error_crit_edge:       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #15
  br label %regulator_enable_error

if.end178:                                        ; preds = %if.end174
  %call179 = tail call i32 @register_framebuffer(ptr noundef nonnull %call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %if.end185, label %do.end184

do.end184:                                        ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39) #17
  br label %panel_init_error

if.end185:                                        ; preds = %if.end178
  %node = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 1
  %82 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %node, align 4
  %call187 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %bl_name, i32 noundef 12, ptr noundef nonnull @.str.41, i32 noundef %83)
  %call189 = call ptr @backlight_device_register(ptr noundef nonnull %bl_name, ptr noundef %dev1, ptr noundef %2, ptr noundef nonnull @ssd1307fb_bl_ops, ptr noundef null) #13
  %cmp.i380 = icmp ugt ptr %call189, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i380, label %if.then191, label %if.end196

if.then191:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #15
  %84 = ptrtoint ptr %call189 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43, i32 noundef %84) #17
  call void @unregister_framebuffer(ptr noundef nonnull %call) #13
  br label %panel_init_error

if.end196:                                        ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #15
  %85 = ptrtoint ptr %contrast to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %contrast, align 4
  %87 = ptrtoint ptr %call189 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %call189, align 8
  %max_brightness = getelementptr inbounds %struct.backlight_properties, ptr %call189, i32 0, i32 1
  %88 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 255, ptr %max_brightness, align 4
  %bl_dev = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 15
  %89 = ptrtoint ptr %bl_dev to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call189, ptr %bl_dev, align 4
  %90 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %node, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.46, i32 noundef %91, ptr noundef %fix, i32 noundef %mul) #17
  br label %cleanup

panel_init_error:                                 ; preds = %if.then191, %do.end184
  %ret.0 = phi i32 [ %call179, %do.end184 ], [ %84, %if.then191 ]
  %92 = ptrtoint ptr %device_info to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %device_info, align 4
  %need_pwm = getelementptr inbounds %struct.ssd1307fb_deviceinfo, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %need_pwm to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %need_pwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool206.not = icmp eq i32 %95, 0
  br i1 %tobool206.not, label %panel_init_error.regulator_enable_error_crit_edge, label %if.then207

panel_init_error.regulator_enable_error_crit_edge: ; preds = %panel_init_error
  call void @__sanitizer_cov_trace_pc() #15
  br label %regulator_enable_error

if.then207:                                       ; preds = %panel_init_error
  call void @__sanitizer_cov_trace_pc() #15
  %pwm = getelementptr inbounds %struct.ssd1307fb_par, ptr %2, i32 0, i32 14
  %96 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pwm, align 4
  call fastcc void @pwm_disable(ptr noundef %97)
  %98 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pwm, align 4
  call void @pwm_put(ptr noundef %99) #13
  br label %regulator_enable_error

regulator_enable_error:                           ; preds = %if.then207, %panel_init_error.regulator_enable_error_crit_edge, %if.end174.regulator_enable_error_crit_edge
  %ret.1 = phi i32 [ %call175, %if.end174.regulator_enable_error_crit_edge ], [ %ret.0, %if.then207 ], [ %ret.0, %panel_init_error.regulator_enable_error_crit_edge ]
  %100 = ptrtoint ptr %vbat_reg to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %vbat_reg, align 4
  %tobool211.not = icmp eq ptr %101, null
  br i1 %tobool211.not, label %regulator_enable_error.reset_oled_error_crit_edge, label %if.then212

regulator_enable_error.reset_oled_error_crit_edge: ; preds = %regulator_enable_error
  call void @__sanitizer_cov_trace_pc() #15
  br label %reset_oled_error

if.then212:                                       ; preds = %regulator_enable_error
  call void @__sanitizer_cov_trace_pc() #15
  %call214 = call i32 @regulator_disable(ptr noundef nonnull %101) #13
  br label %reset_oled_error

reset_oled_error:                                 ; preds = %if.then212, %regulator_enable_error.reset_oled_error_crit_edge, %do.end172
  %ret.2 = phi i32 [ %call167, %do.end172 ], [ %ret.1, %if.then212 ], [ %ret.1, %regulator_enable_error.reset_oled_error_crit_edge ]
  call void @fb_deferred_io_cleanup(ptr noundef nonnull %call) #13
  br label %fb_alloc_error

fb_alloc_error:                                   ; preds = %reset_oled_error, %do.end138, %do.end131, %do.end25, %do.end
  %ret.3 = phi i32 [ %10, %do.end ], [ %ret.2, %reset_oled_error ], [ -12, %do.end138 ], [ -12, %do.end131 ], [ %13, %do.end25 ]
  call void @framebuffer_release(ptr noundef nonnull %call) #13
  br label %cleanup

cleanup:                                          ; preds = %fb_alloc_error, %if.end196, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %fb_alloc_error ], [ 0, %if.end196 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bl_name) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ssd1307fb_write_cmd(ptr noundef %client, i8 noundef zeroext %cmd) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -128, ptr %call7.i.i.i, align 8
  %data = getelementptr inbounds %struct.ssd1307fb_array, ptr %call7.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %cmd, ptr %data, align 1
  %call.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %call7.i.i.i, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i, label %if.end.ssd1307fb_write_array.exit_crit_edge, label %do.end.i

if.end.ssd1307fb_write_array.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %ssd1307fb_write_array.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.1) #17
  br label %ssd1307fb_write_array.exit

ssd1307fb_write_array.exit:                       ; preds = %do.end.i, %if.end.ssd1307fb_write_array.exit_crit_edge
  %retval.0.i6 = phi i32 [ %call.i.i, %do.end.i ], [ 0, %if.end.ssd1307fb_write_array.exit_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %ssd1307fb_write_array.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i6, %ssd1307fb_write_array.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pwm_disable(ptr noundef %pwm) unnamed_addr #4 align 64 {
entry:
  %state = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #13
  %tobool.not = icmp eq ptr %pwm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %state1.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7
  %0 = call ptr @memcpy(ptr %state, ptr %state1.i, i32 24)
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %1 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %enabled, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %enabled, align 4
  %call = call i32 @pwm_apply_state(ptr noundef nonnull %pwm, ptr noundef nonnull %state) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwm_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_deferred_io_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_apply_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssd1307fb_deferred_io(ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %pagelist) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %width.i = getelementptr inbounds %struct.ssd1307fb_par, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width.i, align 4
  %height.i = getelementptr inbounds %struct.ssd1307fb_par, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height.i, align 4
  %call.i = tail call fastcc i32 @ssd1307fb_update_rect(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %3, i32 noundef %5) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_deferred_io_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ssd1307fb_init(ptr noundef %par) unnamed_addr #2 align 64 {
entry:
  %state.i = alloca %struct.pwm_state, align 8
  %pwmstate = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pwmstate) #13
  %0 = call ptr @memset(ptr %pwmstate, i32 255, i32 24)
  %device_info = getelementptr inbounds %struct.ssd1307fb_par, ptr %par, i32 0, i32 5
  %1 = ptrtoint ptr %device_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device_info, align 4
  %need_pwm = getelementptr inbounds %struct.ssd1307fb_deviceinfo, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %need_pwm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %need_pwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end29_crit_edge, label %if.then

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then:                                          ; preds = %entry
  %client = getelementptr inbounds %struct.ssd1307fb_par, ptr %par, i32 0, i32 6
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  %call = tail call ptr @pwm_get(ptr noundef %dev, ptr noundef null) #13
  %pwm = getelementptr inbounds %struct.ssd1307fb_par, ptr %par, i32 0, i32 14
  %7 = ptrtoint ptr %pwm to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %pwm, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client, align 4
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.52) #17
  %10 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pwm, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup278

if.end:                                           ; preds = %if.then
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %call, i32 0, i32 7
  %13 = call ptr @memcpy(ptr %pwmstate, ptr %state1.i.i, i32 24)
  %args1.i.i = getelementptr inbounds %struct.pwm_device, ptr %call, i32 0, i32 6
  %14 = ptrtoint ptr %args1.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %args.sroa.0.0.copyload8.i = load i64, ptr %args1.i.i, align 8
  %args.sroa.5.0.args1.i.sroa_idx.i = getelementptr inbounds %struct.pwm_device, ptr %call, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %args.sroa.5.0.args1.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %args.sroa.5.0.copyload9.i = load i32, ptr %args.sroa.5.0.args1.i.sroa_idx.i, align 8
  %16 = ptrtoint ptr %pwmstate to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %args.sroa.0.0.copyload8.i, ptr %pwmstate, align 8
  %polarity2.i = getelementptr inbounds %struct.pwm_state, ptr %pwmstate, i32 0, i32 2
  %17 = ptrtoint ptr %polarity2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %args.sroa.5.0.copyload9.i, ptr %polarity2.i, align 8
  %duty_cycle.i = getelementptr inbounds %struct.pwm_state, ptr %pwmstate, i32 0, i32 1
  %usage_power.i = getelementptr inbounds %struct.pwm_state, ptr %pwmstate, i32 0, i32 4
  %18 = ptrtoint ptr %usage_power.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %usage_power.i, align 1
  %mul.i = mul i64 %args.sroa.0.0.copyload8.i, 50
  %add.i = add i64 %mul.i, 50
  %19 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %add.i, i32 0) #18, !srcloc !153
  %asmresult.i.i = extractvalue { i64, i32 } %19, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %19, 1
  %20 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %add.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #18, !srcloc !154
  %asmresult10.i.i = extractvalue { i64, i32 } %20, 0
  %div1681.i = lshr i64 %asmresult10.i.i, 6
  %21 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %div1681.i, ptr %duty_cycle.i, align 8
  %call11 = call i32 @pwm_apply_state(ptr noundef %call, ptr noundef nonnull %pwmstate) #13
  %22 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pwm, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #13
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end.pwm_enable.exit_crit_edge, label %if.end.i

if.end.pwm_enable.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %pwm_enable.exit

if.end.i:                                         ; preds = %if.end
  %state1.i.i405 = getelementptr inbounds %struct.pwm_device, ptr %23, i32 0, i32 7
  %24 = call ptr @memcpy(ptr %state.i, ptr %state1.i.i405, i32 24)
  %enabled.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 3
  %25 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %enabled.i, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool1.not.i = icmp eq i8 %26, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.pwm_enable.exit_crit_edge

if.end.i.pwm_enable.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pwm_enable.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %enabled.i, align 4
  %call.i = call i32 @pwm_apply_state(ptr noundef nonnull %23, ptr noundef nonnull %state.i) #13
  br label %pwm_enable.exit

pwm_enable.exit:                                  ; preds = %if.end3.i, %if.end.i.pwm_enable.exit_crit_edge, %if.end.pwm_enable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssd1307fb_init.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssd1307fb_init, %if.then19)) #13
          to label %if.end29 [label %if.then19], !srcloc !155

if.then19:                                        ; preds = %pwm_enable.exit
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %client, align 4
  %dev21 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pwm, align 4
  %pwm23 = getelementptr inbounds %struct.pwm_device, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %pwm23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pwm23, align 4
  %state1.i.i406 = getelementptr inbounds %struct.pwm_device, ptr %31, i32 0, i32 7
  %34 = ptrtoint ptr %state1.i.i406 to i32
  call void @__asan_load8_noabort(i32 %34)
  %state.sroa.0.0.copyload1.i = load i64, ptr %state1.i.i406, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssd1307fb_init.__UNIQUE_ID_ddebug302, ptr noundef %dev21, ptr noundef nonnull @.str.54, i32 noundef %33, i64 noundef %state.sroa.0.0.copyload1.i) #13
  br label %if.end29

if.end29:                                         ; preds = %if.then19, %pwm_enable.exit, %entry.if.end29_crit_edge
  %client30 = getelementptr inbounds %struct.ssd1307fb_par, ptr %par, i32 0, i32 6
  %35 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %client30, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 2) #16
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end29.cleanup278_crit_edge, label %if.end.i407

if.end29.cleanup278_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end.i407:                                      ; preds = %if.end29
  %38 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -128, ptr %call7.i.i.i.i, align 8
  %data.i = getelementptr inbounds %struct.ssd1307fb_array, ptr %call7.i.i.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -127, ptr %data.i, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %36, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp.not.i.i, label %ssd1307fb_write_cmd.exit.thread509, label %ssd1307fb_write_cmd.exit

ssd1307fb_write_cmd.exit.thread509:               ; preds = %if.end.i407
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #13
  br label %if.end33

ssd1307fb_write_cmd.exit:                         ; preds = %if.end.i407
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.1) #17
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp, label %ssd1307fb_write_cmd.exit.cleanup278_crit_edge, label %ssd1307fb_write_cmd.exit.if.end33_crit_edge

ssd1307fb_write_cmd.exit.if.end33_crit_edge:      ; preds = %ssd1307fb_write_cmd.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

ssd1307fb_write_cmd.exit.cleanup278_crit_edge:    ; preds = %ssd1307fb_write_cmd.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end33:                                         ; preds = %ssd1307fb_write_cmd.exit.if.end33_crit_edge, %ssd1307fb_write_cmd.exit.thread509
  %40 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %client30, align 4
  %contrast = getelementptr inbounds %struct.ssd1307fb_par, ptr %par, i32 0, i32 2
  %42 = ptrtoint ptr %contrast to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %contrast, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i409 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3520, i32 noundef 2) #16
  %tobool.not.i.i410 = icmp eq ptr %call7.i.i.i.i409, null
  br i1 %tobool.not.i.i410, label %if.end33.cleanup278_crit_edge, label %if.end.i414

if.end33.cleanup278_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end.i414:                                      ; preds = %if.end33
  %conv = trunc i32 %43 to i8
  %45 = ptrtoint ptr %call7.i.i.i.i409 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -128, ptr %call7.i.i.i.i409, align 8
  %data.i411 = getelementptr inbounds %struct.ssd1307fb_array, ptr %call7.i.i.i.i409, i32 0, i32 1
  %46 = ptrtoint ptr %data.i411 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv, ptr %data.i411, align 1
  %call.i.i.i412 = call i32 @i2c_transfer_buffer_flags(ptr noundef %41, ptr noundef nonnull %call7.i.i.i.i409, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i412)
  %cmp.not.i.i413 = icmp eq i32 %call.i.i.i412, 2
  br i1 %cmp.not.i.i413, label %ssd1307fb_write_cmd.exit420.thread514, label %ssd1307fb_write_cmd.exit420

ssd1307fb_write_cmd.exit420.thread514:            ; preds = %if.end.i414
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i409) #13
  br label %if.end39

ssd1307fb_write_cmd.exit420:                      ; preds = %if.end.i414
  %dev.i.i415 = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i415, ptr noundef nonnull @.str.1) #17
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i409) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i412)
  %cmp36 = icmp slt i32 %call.i.i.i412, 0
  br i1 %cmp36, label %ssd1307fb_write_cmd.exit420.cleanup278_crit_edge, label %ssd1307fb_write_cmd.exit420.if.end39_crit_edge

ssd1307fb_write_cmd.exit420.if.end39_crit_edge:   ; preds = %ssd1307fb_write_cmd.exit420
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

ssd1307fb_write_cmd.exit420.cleanup278_crit_edge: ; preds = %ssd1307fb_write_cmd.exit420
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end39:                                         ; preds = %ssd1307fb_write_cmd.exit420.if.end39_crit_edge, %ssd1307fb_write_cmd.exit420.thread514
  %47 = ptrtoint ptr %par to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load = load i8, ptr %par, align 4
  %48 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool40.not = icmp eq i8 %48, 0
  br i1 %tobool40.not, label %if.end39.if.end48_crit_edge, label %if.then41

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.then41:                                        ; preds = %if.end39
  %49 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %client30, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %51 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i421 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 3520, i32 noundef 2) #16
  %tobool.not.i.i422 = icmp eq ptr %call7.i.i.i.i421, null
  br i1 %tobool.not.i.i422, label %if.then41.cleanup278_crit_edge, label %if.end.i426

if.then41.cleanup278_crit_edge:                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end.i426:                                      ; preds = %if.then41
  %52 = ptrtoint ptr %call7.i.i.i.i421 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -128, ptr %call7.i.i.i.i421, align 8
  %data.i423 = getelementptr inbounds %struct.ssd1307fb_array, ptr %call7.i.i.i.i421, i32 0, i32 1
  %53 = ptrtoint ptr %data.i423 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -95, ptr %data.i423, align 1
  %call.i.i.i424 = call i32 @i2c_transfer_buffer_flags(ptr noundef %50, ptr noundef nonnull %call7.i.i.i.i421, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i424)
  %cmp.not.i.i425 = icmp eq i32 %call.i.i.i424, 2
  br i1 %cmp.not.i.i425, label %ssd1307fb_write_cmd.exit432.thread519, label %ssd1307fb_write_cmd.exit432

ssd1307fb_write_cmd.exit432.thread519:            ; preds = %if.end.i426
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i421) #13
  br label %if.end48

ssd1307fb_write_cmd.exit432:                      ; preds = %if.end.i426
  %dev.i.i427 = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i427, ptr noundef nonnull @.str.1) #17
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i421) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i424)
  %cmp44 = icmp slt i32 %call.i.i.i424, 0
  br i1 %cmp44, label %ssd1307fb_write_cmd.exit432.cleanup278_crit_edge, label %ssd1307fb_write_cmd.exit432.if.end48_crit_edge

ssd1307fb_write_cmd.exit432.if.end48_crit_edge:   ; preds = %ssd1307fb_write_cmd.exit432
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

ssd1307fb_write_cmd.exit432.cleanup278_crit_edge: ; preds = %ssd1307fb_write_cmd.exit432
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end48:                                         ; preds = %ssd1307fb_write_cmd.exit432.if.end48_crit_edge, %ssd1307fb_write_cmd.exit432.thread519, %if.end39.if.end48_crit_edge
  %54 = ptrtoint ptr %par to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load49 = load i8, ptr %par, align 4
  %55 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %client30, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %57 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i433 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3520, i32 noundef 2) #16
  %tobool.not.i.i434 = icmp eq ptr %call7.i.i.i.i433, null
  br i1 %tobool.not.i.i434, label %if.end48.cleanup278_crit_edge, label %if.end.i438

if.end48.cleanup278_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end.i438:                                      ; preds = %if.end48
  %58 = lshr i8 %bf.load49, 3
  %59 = and i8 %58, 8
  %60 = or i8 %59, -64
  %61 = ptrtoint ptr %call7.i.i.i.i433 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -128, ptr %call7.i.i.i.i433, align 8
  %data.i435 = getelementptr inbounds %struct.ssd1307fb_array, ptr %call7.i.i.i.i433, i32 0, i32 1
  %62 = ptrtoint ptr %data.i435 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %60, ptr %data.i435, align 1
  %call.i.i.i436 = call i32 @i2c_transfer_buffer_flags(ptr noundef %56, ptr noundef nonnull %call7.i.i.i.i433, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i436)
  %cmp.not.i.i437 = icmp eq i32 %call.i.i.i436, 2
  br i1 %cmp.not.i.i437, label %ssd1307fb_write_cmd.exit444.thread524, label %ssd1307fb_write_cmd.exit444

ssd1307fb_write_cmd.exit444.thread524:            ; preds = %if.end.i438
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i433) #13
  br label %if.end59

ssd1307fb_write_cmd.exit444:                      ; preds = %if.end.i438
  %dev.i.i439 = getelementptr inbounds %struct.i2c_client, ptr %56, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i439, ptr noundef nonnull @.str.1) #17
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i433) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i436)
  %cmp56 = icmp slt i32 %call.i.i.i436, 0
  br i1 %cmp56, label %ssd1307fb_write_cmd.exit444.cleanup278_crit_edge, label %ssd1307fb_write_cmd.exit444.if.end59_crit_edge

ssd1307fb_write_cmd.exit444.if.end59_crit_edge:   ; preds = %ssd1307fb_write_cmd.exit444
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

ssd1307fb_write_cmd.exit444.cleanup278_crit_edge: ; preds = %ssd1307fb_write_cmd.exit444
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end59:                                         ; preds = %ssd1307fb_write_cmd.exit444.if.end59_crit_edge, %ssd1307fb_write_cmd.exit444.thread524
  %63 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %client30, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %65 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i445 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3520, i32 noundef 2) #16
  %tobool.not.i.i446 = icmp eq ptr %call7.i.i.i.i445, null
  br i1 %tobool.not.i.i446, label %if.end59.cleanup278_crit_edge, label %if.end.i450

if.end59.cleanup278_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end.i450:                                      ; preds = %if.end59
  %66 = ptrtoint ptr %call7.i.i.i.i445 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -128, ptr %call7.i.i.i.i445, align 8
  %data.i447 = getelementptr inbounds %struct.ssd1307fb_array, ptr %call7.i.i.i.i445, i32 0, i32 1
  %67 = ptrtoint ptr %data.i447 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -88, ptr %data.i447, align 1
  %call.i.i.i448 = call i32 @i2c_transfer_buffer_flags(ptr noundef %64, ptr noundef nonnull %call7.i.i.i.i445, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i448)
  %cmp.not.i.i449 = icmp eq i32 %call.i.i.i448, 2
  br i1 %cmp.not.i.i449, label %ssd1307fb_write_cmd.exit456.thread529, label %ssd1307fb_write_cmd.exit456

ssd1307fb_write_cmd.exit456.thread529:            ; preds = %if.end.i450
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i445) #13
  br label %if.end65

ssd1307fb_write_cmd.exit456:                      ; preds = %if.end.i450
  %dev.i.i451 = getelementptr inbounds %struct.i2c_client, ptr %64, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i451, ptr noundef nonnull @.str.1) #17
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i445) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i448)
  %cmp62 = icmp slt i32 %call.i.i.i448, 0
  br i1 %cmp62, label %ssd1307fb_write_cmd.exit456.cleanup278_crit_edge, label %ssd1307fb_write_cmd.exit456.if.end65_crit_edge

ssd1307fb_write_cmd.exit456.if.end65_crit_edge:   ; preds = %ssd1307fb_write_cmd.exit456
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

ssd1307fb_write_cmd.exit456.cleanup278_crit_edge: ; preds = %ssd1307fb_write_cmd.exit456
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end65:                                         ; preds = %ssd1307fb_write_cmd.exit456.if.end65_crit_edge, %ssd1307fb_write_cmd.exit456.thread529
  %68 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %client30, align 4
  %height = getelementptr inbounds %struct.ssd1307fb_par, ptr %par, i32 0, i32 7
  %70 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %height, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %72 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i457 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %72, i32 noundef 3520, i32 noundef 2) #16
  %tobool.not.i.i458 = icmp eq ptr %call7.i.i.i.i457, null
  br i1 %tobool.not.i.i458, label %if.end65.cleanup278_crit_edge, label %if.end.i462

if.end65.cleanup278_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end.i462:                                      ; preds = %if.end65
  %73 = trunc i32 %71 to i8
  %conv67 = add i8 %73, -1
  %74 = ptrtoint ptr %call7.i.i.i.i457 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -128, ptr %call7.i.i.i.i457, align 8
  %data.i459 = getelementptr inbounds %struct.ssd1307fb_array, ptr %call7.i.i.i.i457, i32 0, i32 1
  %75 = ptrtoint ptr %data.i459 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv67, ptr %data.i459, align 1
  %call.i.i.i460 = call i32 @i2c_transfer_buffer_flags(ptr noundef %69, ptr noundef nonnull %call7.i.i.i.i457, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i460)
  %cmp.not.i.i461 = icmp eq i32 %call.i.i.i460, 2
  br i1 %cmp.not.i.i461, label %ssd1307fb_write_cmd.exit468.thread534, label %ssd1307fb_write_cmd.exit468

ssd1307fb_write_cmd.exit468.thread534:            ; preds = %if.end.i462
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i457) #13
  br label %if.end72

ssd1307fb_write_cmd.exit468:                      ; preds = %if.end.i462
  %dev.i.i463 = getelementptr inbounds %struct.i2c_client, ptr %69, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i463, ptr noundef nonnull @.str.1) #17
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i457) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i460)
  %cmp69 = icmp slt i32 %call.i.i.i460, 0
  br i1 %cmp69, label %ssd1307fb_write_cmd.exit468.cleanup278_crit_edge, label %ssd1307fb_write_cmd.exit468.if.end72_crit_edge

ssd1307fb_write_cmd.exit468.if.end72_crit_edge:   ; preds = %ssd1307fb_write_cmd.exit468
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

ssd1307fb_write_cmd.exit468.cleanup278_crit_edge: ; preds = %ssd1307fb_write_cmd.exit468
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end72:                                         ; preds = %ssd1307fb_write_cmd.exit468.if.end72_crit_edge, %ssd1307fb_write_cmd.exit468.thread534
  %76 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %client30, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %78 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i469 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %78, i32 noundef 3520, i32 noundef 2) #16
  %tobool.not.i.i470 = icmp eq ptr %call7.i.i.i.i469, null
  br i1 %tobool.not.i.i470, label %if.end72.cleanup278_crit_edge, label %if.end.i474

if.end72.cleanup278_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end.i474:                                      ; preds = %if.end72
  %79 = ptrtoint ptr %call7.i.i.i.i469 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -128, ptr %call7.i.i.i.i469, align 8
  %data.i471 = getelementptr inbounds %struct.ssd1307fb_array, ptr %call7.i.i.i.i469, i32 0, i32 1
  %80 = ptrtoint ptr %data.i471 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -45, ptr %data.i471, align 1
  %call.i.i.i472 = call i32 @i2c_transfer_buffer_flags(ptr noundef %77, ptr noundef nonnull %call7.i.i.i.i469, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i472)
  %cmp.not.i.i473 = icmp eq i32 %call.i.i.i472, 2
  br i1 %cmp.not.i.i473, label %ssd1307fb_write_cmd.exit480.thread539, label %ssd1307fb_write_cmd.exit480

ssd1307fb_write_cmd.exit480.thread539:            ; preds = %if.end.i474
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i469) #13
  br label %if.end78

ssd1307fb_write_cmd.exit480:                      ; preds = %if.end.i474
  %dev.i.i475 = getelementptr inbounds %struct.i2c_client, ptr %77, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i475, ptr noundef nonnull @.str.1) #17
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i469) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i472)
  %cmp75 = icmp slt i32 %call.i.i.i472, 0
  br i1 %cmp75, label %ssd1307fb_write_cmd.exit480.cleanup278_crit_edge, label %ssd1307fb_write_cmd.exit480.if.end78_crit_edge

ssd1307fb_write_cmd.exit480.if.end78_crit_edge:   ; preds = %ssd1307fb_write_cmd.exit480
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end78

ssd1307fb_write_cmd.exit480.cleanup278_crit_edge: ; preds = %ssd1307fb_write_cmd.exit480
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end78:                                         ; preds = %ssd1307fb_write_cmd.exit480.if.end78_crit_edge, %ssd1307fb_write_cmd.exit480.thread539
  %81 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %client30, align 4
  %com_offset = getelementptr inbounds %struct.ssd1307fb_par, ptr %par, i32 0, i32 1
  %83 = ptrtoint ptr %com_offset to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %com_offset, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %85 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i481 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %85, i32 noundef 3520, i32 noundef 2) #16
  %tobool.not.i.i482 = icmp eq ptr %call7.i.i.i.i481, null
  br i1 %tobool.not.i.i482, label %if.end78.cleanup278_crit_edge, label %if.end.i486

if.end78.cleanup278_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end.i486:                                      ; preds = %if.end78
  %conv80 = trunc i32 %84 to i8
  %86 = ptrtoint ptr %call7.i.i.i.i481 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -128, ptr %call7.i.i.i.i481, align 8
  %data.i483 = getelementptr inbounds %struct.ssd1307fb_array, ptr %call7.i.i.i.i481, i32 0, i32 1
  %87 = ptrtoint ptr %data.i483 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv80, ptr %data.i483, align 1
  %call.i.i.i484 = call i32 @i2c_transfer_buffer_flags(ptr noundef %82, ptr noundef nonnull %call7.i.i.i.i481, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i484)
  %cmp.not.i.i485 = icmp eq i32 %call.i.i.i484, 2
  br i1 %cmp.not.i.i485, label %ssd1307fb_write_cmd.exit492.thread544, label %ssd1307fb_write_cmd.exit492

ssd1307fb_write_cmd.exit492.thread544:            ; preds = %if.end.i486
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i481) #13
  br label %if.end85

ssd1307fb_write_cmd.exit492:                      ; preds = %if.end.i486
  %dev.i.i487 = getelementptr inbounds %struct.i2c_client, ptr %82, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i487, ptr noundef nonnull @.str.1) #17
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i481) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i484)
  %cmp82 = icmp slt i32 %call.i.i.i484, 0
  br i1 %cmp82, label %ssd1307fb_write_cmd.exit492.cleanup278_crit_edge, label %ssd1307fb_write_cmd.exit492.if.end85_crit_edge

ssd1307fb_write_cmd.exit492.if.end85_crit_edge:   ; preds = %ssd1307fb_write_cmd.exit492
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

ssd1307fb_write_cmd.exit492.cleanup278_crit_edge: ; preds = %ssd1307fb_write_cmd.exit492
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end85:                                         ; preds = %ssd1307fb_write_cmd.exit492.if.end85_crit_edge, %ssd1307fb_write_cmd.exit492.thread544
  %88 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %client30, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %90 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i493 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %90, i32 noundef 3520, i32 noundef 2) #16
  %tobool.not.i.i494 = icmp eq ptr %call7.i.i.i.i493, null
  br i1 %tobool.not.i.i494, label %if.end85.cleanup278_crit_edge, label %if.end.i498

if.end85.cleanup278_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end.i498:                                      ; preds = %if.end85
  %91 = ptrtoint ptr %call7.i.i.i.i493 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -128, ptr %call7.i.i.i.i493, align 8
  %data.i495 = getelementptr inbounds %struct.ssd1307fb_array, ptr %call7.i.i.i.i493, i32 0, i32 1
  %92 = ptrtoint ptr %data.i495 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -43, ptr %data.i495, align 1
  %call.i.i.i496 = call i32 @i2c_transfer_buffer_flags(ptr noundef %89, ptr noundef nonnull %call7.i.i.i.i493, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i496)
  %cmp.not.i.i497 = icmp eq i32 %call.i.i.i496, 2
  br i1 %cmp.not.i.i497, label %ssd1307fb_write_cmd.exit504.thread549, label %ssd1307fb_write_cmd.exit504

ssd1307fb_write_cmd.exit504.thread549:            ; preds = %if.end.i498
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i493) #13
  br label %if.end91

ssd1307fb_write_cmd.exit504:                      ; preds = %if.end.i498
  %dev.i.i499 = getelementptr inbounds %struct.i2c_client, ptr %89, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i499, ptr noundef nonnull @.str.1) #17
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i493) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i496)
  %cmp88 = icmp slt i32 %call.i.i.i496, 0
  br i1 %cmp88, label %ssd1307fb_write_cmd.exit504.cleanup278_crit_edge, label %ssd1307fb_write_cmd.exit504.if.end91_crit_edge

ssd1307fb_write_cmd.exit504.if.end91_crit_edge:   ; preds = %ssd1307fb_write_cmd.exit504
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end91

ssd1307fb_write_cmd.exit504.cleanup278_crit_edge: ; preds = %ssd1307fb_write_cmd.exit504
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end91:                                         ; preds = %ssd1307fb_write_cmd.exit504.if.end91_crit_edge, %ssd1307fb_write_cmd.exit504.thread549
  %dclk_div = getelementptr inbounds %struct.ssd1307fb_par, ptr %par, i32 0, i32 3
  %93 = ptrtoint ptr %dclk_div to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dclk_div, align 4
  %sub92 = add i32 %94, 15
  %and = and i32 %sub92, 15
  %dclk_frq = getelementptr inbounds %struct.ssd1307fb_par, ptr %par, i32 0, i32 4
  %95 = ptrtoint ptr %dclk_frq to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dclk_frq, align 4
  %and93 = shl i32 %96, 4
  %or95 = or i32 %and, %and93
  %97 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %client30, align 4
  %conv97 = trunc i32 %or95 to i8
  %call98 = call fastcc i32 @ssd1307fb_write_cmd(ptr noundef %98, i8 noundef zeroext %conv97)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %if.end91.cleanup278_crit_edge, label %if.end102

if.end91.cleanup278_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end102:                                        ; preds = %if.end91
  %99 = ptrtoint ptr %par to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load103 = load i8, ptr %par, align 4
  %100 = and i8 %bf.load103, -124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %if.end102.if.end137_crit_edge, label %if.then112

if.end102.if.end137_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end137

if.then112:                                       ; preds = %if.end102
  %102 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %client30, align 4
  %call114 = call fastcc i32 @ssd1307fb_write_cmd(ptr noundef %103, i8 noundef zeroext -40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp115 = icmp slt i32 %call114, 0
  br i1 %cmp115, label %if.then112.cleanup278_crit_edge, label %cleanup

if.then112.cleanup278_crit_edge:                  ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

cleanup:                                          ; preds = %if.then112
  %104 = ptrtoint ptr %par to i32
  call void @__asan_load1_noabort(i32 %104)
  %bf.load119 = load i8, ptr %par, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load119)
  %tobool122.not.inv = icmp slt i8 %bf.load119, 0
  %cond = select i1 %tobool122.not.inv, i8 48, i8 0
  %105 = and i8 %bf.load119, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool127.not = icmp eq i8 %105, 0
  %cond128 = select i1 %tobool127.not, i8 0, i8 5
  %or129 = or i8 %cond128, %cond
  %106 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %client30, align 4
  %call132 = call fastcc i32 @ssd1307fb_write_cmd(ptr noundef %107, i8 noundef zeroext %or129)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %cmp133 = icmp slt i32 %call132, 0
  br i1 %cmp133, label %cleanup.cleanup278_crit_edge, label %cleanup.if.end137_crit_edge

cleanup.if.end137_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end137

cleanup.cleanup278_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end137:                                        ; preds = %cleanup.if.end137_crit_edge, %if.end102.if.end137_crit_edge
  %108 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %client30, align 4
  %call139 = call fastcc i32 @ssd1307fb_write_cmd(ptr noundef %109, i8 noundef zeroext -39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %cmp140 = icmp slt i32 %call139, 0
  br i1 %cmp140, label %if.end137.cleanup278_crit_edge, label %if.end143

if.end137.cleanup278_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end143:                                        ; preds = %if.end137
  %prechargep1 = getelementptr inbounds %struct.ssd1307fb_par, ptr %par, i32 0, i32 12
  %110 = ptrtoint ptr %prechargep1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %prechargep1, align 4
  %and144 = and i32 %111, 15
  %prechargep2 = getelementptr inbounds %struct.ssd1307fb_par, ptr %par, i32 0, i32 13
  %112 = ptrtoint ptr %prechargep2 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %prechargep2, align 4
  %and145 = shl i32 %113, 4
  %or147 = or i32 %and145, %and144
  %114 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %client30, align 4
  %conv149 = trunc i32 %or147 to i8
  %call150 = call fastcc i32 @ssd1307fb_write_cmd(ptr noundef %115, i8 noundef zeroext %conv149)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %cmp151 = icmp slt i32 %call150, 0
  br i1 %cmp151, label %if.end143.cleanup278_crit_edge, label %if.end154

if.end143.cleanup278_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end154:                                        ; preds = %if.end143
  %116 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %client30, align 4
  %call156 = call fastcc i32 @ssd1307fb_write_cmd(ptr noundef %117, i8 noundef zeroext -38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %cmp157 = icmp slt i32 %call156, 0
  br i1 %cmp157, label %if.end154.cleanup278_crit_edge, label %if.end160

if.end154.cleanup278_crit_edge:                   ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end160:                                        ; preds = %if.end154
  %118 = ptrtoint ptr %par to i32
  call void @__asan_load1_noabort(i32 %118)
  %bf.load161 = load i8, ptr %par, align 4
  %119 = and i8 %bf.load161, 48
  %or175403 = xor i8 %119, 18
  %120 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %client30, align 4
  %call178 = call fastcc i32 @ssd1307fb_write_cmd(ptr noundef %121, i8 noundef zeroext %or175403)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %cmp179 = icmp slt i32 %call178, 0
  br i1 %cmp179, label %if.end160.cleanup278_crit_edge, label %if.end182

if.end160.cleanup278_crit_edge:                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end182:                                        ; preds = %if.end160
  %122 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %client30, align 4
  %call184 = call fastcc i32 @ssd1307fb_write_cmd(ptr noundef %123, i8 noundef zeroext -37)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %cmp185 = icmp slt i32 %call184, 0
  br i1 %cmp185, label %if.end182.cleanup278_crit_edge, label %if.end188

if.end182.cleanup278_crit_edge:                   ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end188:                                        ; preds = %if.end182
  %124 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %client30, align 4
  %vcomh = getelementptr inbounds %struct.ssd1307fb_par, ptr %par, i32 0, i32 17
  %126 = ptrtoint ptr %vcomh to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %vcomh, align 4
  %conv190 = trunc i32 %127 to i8
  %call191 = call fastcc i32 @ssd1307fb_write_cmd(ptr noundef %125, i8 noundef zeroext %conv190)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %cmp192 = icmp slt i32 %call191, 0
  br i1 %cmp192, label %if.end188.cleanup278_crit_edge, label %if.end195

if.end188.cleanup278_crit_edge:                   ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end195:                                        ; preds = %if.end188
  %128 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %client30, align 4
  %call197 = call fastcc i32 @ssd1307fb_write_cmd(ptr noundef %129, i8 noundef zeroext -115)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %cmp198 = icmp slt i32 %call197, 0
  br i1 %cmp198, label %if.end195.cleanup278_crit_edge, label %if.end201

if.end195.cleanup278_crit_edge:                   ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end201:                                        ; preds = %if.end195
  %130 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %client30, align 4
  %132 = ptrtoint ptr %device_info to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %device_info, align 4
  %need_chargepump = getelementptr inbounds %struct.ssd1307fb_deviceinfo, ptr %133, i32 0, i32 4
  %134 = ptrtoint ptr %need_chargepump to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %need_chargepump, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool204.not = icmp eq i32 %135, 0
  %conv207 = select i1 %tobool204.not, i8 16, i8 20
  %call208 = call fastcc i32 @ssd1307fb_write_cmd(ptr noundef %131, i8 noundef zeroext %conv207)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %cmp209 = icmp slt i32 %call208, 0
  br i1 %cmp209, label %if.end201.cleanup278_crit_edge, label %if.end212

if.end201.cleanup278_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end212:                                        ; preds = %if.end201
  %136 = ptrtoint ptr %par to i32
  call void @__asan_load1_noabort(i32 %136)
  %bf.load213 = load i8, ptr %par, align 4
  %137 = and i8 %bf.load213, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool217.not = icmp eq i8 %137, 0
  br i1 %tobool217.not, label %if.end212.if.end254_crit_edge, label %if.then218

if.end212.if.end254_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end254

if.then218:                                       ; preds = %if.end212
  %138 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %client30, align 4
  %call220 = call fastcc i32 @ssd1307fb_write_cmd(ptr noundef %139, i8 noundef zeroext -111)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220)
  %cmp221 = icmp slt i32 %call220, 0
  br i1 %cmp221, label %if.then218.cleanup278_crit_edge, label %for.body.preheader

if.then218.cleanup278_crit_edge:                  ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

for.body.preheader:                               ; preds = %if.then218
  %arrayidx = getelementptr %struct.ssd1307fb_par, ptr %par, i32 0, i32 9, i32 0
  %140 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx, align 1
  %142 = add i8 %141, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %142)
  %143 = icmp ult i8 %142, -33
  br i1 %143, label %do.end237, label %for.body.preheader.if.end241_crit_edge

for.body.preheader.if.end241_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end241

for.cond:                                         ; preds = %if.end241
  %arrayidx.1 = getelementptr %struct.ssd1307fb_par, ptr %par, i32 0, i32 9, i32 1
  %144 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx.1, align 1
  %146 = add i8 %145, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %146)
  %147 = icmp ult i8 %146, -33
  br i1 %147, label %do.end237.1, label %for.cond.if.end241.1_crit_edge

for.cond.if.end241.1_crit_edge:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end241.1

do.end237.1:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %conv227.1 = zext i8 %145 to i32
  %148 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %client30, align 4
  %dev239.1 = getelementptr inbounds %struct.i2c_client, ptr %149, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev239.1, ptr noundef nonnull @.str.56, i32 noundef 1, i32 noundef %conv227.1) #17
  br label %if.end241.1

if.end241.1:                                      ; preds = %do.end237.1, %for.cond.if.end241.1_crit_edge
  %150 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %client30, align 4
  %call243.1 = call fastcc i32 @ssd1307fb_write_cmd(ptr noundef %151, i8 noundef zeroext %145)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243.1)
  %cmp244.1 = icmp slt i32 %call243.1, 0
  br i1 %cmp244.1, label %if.end241.1.cleanup278_crit_edge, label %for.cond.1

if.end241.1.cleanup278_crit_edge:                 ; preds = %if.end241.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

for.cond.1:                                       ; preds = %if.end241.1
  %arrayidx.2 = getelementptr %struct.ssd1307fb_par, ptr %par, i32 0, i32 9, i32 2
  %152 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx.2, align 1
  %154 = add i8 %153, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %154)
  %155 = icmp ult i8 %154, -33
  br i1 %155, label %do.end237.2, label %for.cond.1.if.end241.2_crit_edge

for.cond.1.if.end241.2_crit_edge:                 ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end241.2

do.end237.2:                                      ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #15
  %conv227.2 = zext i8 %153 to i32
  %156 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %client30, align 4
  %dev239.2 = getelementptr inbounds %struct.i2c_client, ptr %157, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev239.2, ptr noundef nonnull @.str.56, i32 noundef 2, i32 noundef %conv227.2) #17
  br label %if.end241.2

if.end241.2:                                      ; preds = %do.end237.2, %for.cond.1.if.end241.2_crit_edge
  %158 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %client30, align 4
  %call243.2 = call fastcc i32 @ssd1307fb_write_cmd(ptr noundef %159, i8 noundef zeroext %153)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243.2)
  %cmp244.2 = icmp slt i32 %call243.2, 0
  br i1 %cmp244.2, label %if.end241.2.cleanup278_crit_edge, label %for.cond.2

if.end241.2.cleanup278_crit_edge:                 ; preds = %if.end241.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

for.cond.2:                                       ; preds = %if.end241.2
  %arrayidx.3 = getelementptr %struct.ssd1307fb_par, ptr %par, i32 0, i32 9, i32 3
  %160 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx.3, align 1
  %162 = add i8 %161, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %162)
  %163 = icmp ult i8 %162, -33
  br i1 %163, label %do.end237.3, label %for.cond.2.if.end241.3_crit_edge

for.cond.2.if.end241.3_crit_edge:                 ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end241.3

do.end237.3:                                      ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #15
  %conv227.3 = zext i8 %161 to i32
  %164 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %client30, align 4
  %dev239.3 = getelementptr inbounds %struct.i2c_client, ptr %165, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev239.3, ptr noundef nonnull @.str.56, i32 noundef 3, i32 noundef %conv227.3) #17
  br label %if.end241.3

if.end241.3:                                      ; preds = %do.end237.3, %for.cond.2.if.end241.3_crit_edge
  %166 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %client30, align 4
  %call243.3 = call fastcc i32 @ssd1307fb_write_cmd(ptr noundef %167, i8 noundef zeroext %161)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243.3)
  %cmp244.3 = icmp slt i32 %call243.3, 0
  br i1 %cmp244.3, label %if.end241.3.cleanup278_crit_edge, label %if.end241.3.if.end254_crit_edge

if.end241.3.if.end254_crit_edge:                  ; preds = %if.end241.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end254

if.end241.3.cleanup278_crit_edge:                 ; preds = %if.end241.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

do.end237:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  %conv227 = zext i8 %141 to i32
  %168 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %client30, align 4
  %dev239 = getelementptr inbounds %struct.i2c_client, ptr %169, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev239, ptr noundef nonnull @.str.56, i32 noundef 0, i32 noundef %conv227) #17
  br label %if.end241

if.end241:                                        ; preds = %do.end237, %for.body.preheader.if.end241_crit_edge
  %170 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %client30, align 4
  %call243 = call fastcc i32 @ssd1307fb_write_cmd(ptr noundef %171, i8 noundef zeroext %141)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243)
  %cmp244 = icmp slt i32 %call243, 0
  br i1 %cmp244, label %if.end241.cleanup278_crit_edge, label %for.cond

if.end241.cleanup278_crit_edge:                   ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end254:                                        ; preds = %if.end241.3.if.end254_crit_edge, %if.end212.if.end254_crit_edge
  %172 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %client30, align 4
  %call256 = call fastcc i32 @ssd1307fb_write_cmd(ptr noundef %173, i8 noundef zeroext 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call256)
  %cmp257 = icmp slt i32 %call256, 0
  br i1 %cmp257, label %if.end254.cleanup278_crit_edge, label %if.end260

if.end254.cleanup278_crit_edge:                   ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end260:                                        ; preds = %if.end254
  %174 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %client30, align 4
  %call262 = call fastcc i32 @ssd1307fb_write_cmd(ptr noundef %175, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call262)
  %cmp263 = icmp slt i32 %call262, 0
  br i1 %cmp263, label %if.end260.cleanup278_crit_edge, label %if.end266

if.end260.cleanup278_crit_edge:                   ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end266:                                        ; preds = %if.end260
  %width.i = getelementptr inbounds %struct.ssd1307fb_par, ptr %par, i32 0, i32 18
  %176 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %width.i, align 4
  %178 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %height, align 4
  %call.i505 = call fastcc i32 @ssd1307fb_update_rect(ptr noundef %par, i32 noundef 0, i32 noundef 0, i32 noundef %177, i32 noundef %179) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i505)
  %cmp268 = icmp slt i32 %call.i505, 0
  br i1 %cmp268, label %if.end266.cleanup278_crit_edge, label %if.end271

if.end266.cleanup278_crit_edge:                   ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end271:                                        ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #15
  %180 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %client30, align 4
  %call273 = call fastcc i32 @ssd1307fb_write_cmd(ptr noundef %181, i8 noundef zeroext -81)
  %182 = call i32 @llvm.smin.i32(i32 %call273, i32 0)
  br label %cleanup278

cleanup278:                                       ; preds = %if.end271, %if.end266.cleanup278_crit_edge, %if.end260.cleanup278_crit_edge, %if.end254.cleanup278_crit_edge, %if.end241.cleanup278_crit_edge, %if.end241.3.cleanup278_crit_edge, %if.end241.2.cleanup278_crit_edge, %if.end241.1.cleanup278_crit_edge, %if.then218.cleanup278_crit_edge, %if.end201.cleanup278_crit_edge, %if.end195.cleanup278_crit_edge, %if.end188.cleanup278_crit_edge, %if.end182.cleanup278_crit_edge, %if.end160.cleanup278_crit_edge, %if.end154.cleanup278_crit_edge, %if.end143.cleanup278_crit_edge, %if.end137.cleanup278_crit_edge, %cleanup.cleanup278_crit_edge, %if.then112.cleanup278_crit_edge, %if.end91.cleanup278_crit_edge, %ssd1307fb_write_cmd.exit504.cleanup278_crit_edge, %if.end85.cleanup278_crit_edge, %ssd1307fb_write_cmd.exit492.cleanup278_crit_edge, %if.end78.cleanup278_crit_edge, %ssd1307fb_write_cmd.exit480.cleanup278_crit_edge, %if.end72.cleanup278_crit_edge, %ssd1307fb_write_cmd.exit468.cleanup278_crit_edge, %if.end65.cleanup278_crit_edge, %ssd1307fb_write_cmd.exit456.cleanup278_crit_edge, %if.end59.cleanup278_crit_edge, %ssd1307fb_write_cmd.exit444.cleanup278_crit_edge, %if.end48.cleanup278_crit_edge, %ssd1307fb_write_cmd.exit432.cleanup278_crit_edge, %if.then41.cleanup278_crit_edge, %ssd1307fb_write_cmd.exit420.cleanup278_crit_edge, %if.end33.cleanup278_crit_edge, %ssd1307fb_write_cmd.exit.cleanup278_crit_edge, %if.end29.cleanup278_crit_edge, %do.end
  %retval.5 = phi i32 [ %12, %do.end ], [ %call132, %cleanup.cleanup278_crit_edge ], [ %call.i.i.i, %ssd1307fb_write_cmd.exit.cleanup278_crit_edge ], [ %call.i.i.i412, %ssd1307fb_write_cmd.exit420.cleanup278_crit_edge ], [ %call.i.i.i424, %ssd1307fb_write_cmd.exit432.cleanup278_crit_edge ], [ %call.i.i.i436, %ssd1307fb_write_cmd.exit444.cleanup278_crit_edge ], [ %call.i.i.i448, %ssd1307fb_write_cmd.exit456.cleanup278_crit_edge ], [ %call.i.i.i460, %ssd1307fb_write_cmd.exit468.cleanup278_crit_edge ], [ %call.i.i.i472, %ssd1307fb_write_cmd.exit480.cleanup278_crit_edge ], [ %call.i.i.i484, %ssd1307fb_write_cmd.exit492.cleanup278_crit_edge ], [ %call.i.i.i496, %ssd1307fb_write_cmd.exit504.cleanup278_crit_edge ], [ %call98, %if.end91.cleanup278_crit_edge ], [ %call139, %if.end137.cleanup278_crit_edge ], [ %call150, %if.end143.cleanup278_crit_edge ], [ %call156, %if.end154.cleanup278_crit_edge ], [ %call178, %if.end160.cleanup278_crit_edge ], [ %call184, %if.end182.cleanup278_crit_edge ], [ %call191, %if.end188.cleanup278_crit_edge ], [ %call197, %if.end195.cleanup278_crit_edge ], [ %call208, %if.end201.cleanup278_crit_edge ], [ %call256, %if.end254.cleanup278_crit_edge ], [ %call262, %if.end260.cleanup278_crit_edge ], [ %call.i505, %if.end266.cleanup278_crit_edge ], [ %182, %if.end271 ], [ -12, %if.end29.cleanup278_crit_edge ], [ -12, %if.end33.cleanup278_crit_edge ], [ -12, %if.then41.cleanup278_crit_edge ], [ -12, %if.end48.cleanup278_crit_edge ], [ -12, %if.end59.cleanup278_crit_edge ], [ -12, %if.end65.cleanup278_crit_edge ], [ -12, %if.end72.cleanup278_crit_edge ], [ -12, %if.end78.cleanup278_crit_edge ], [ -12, %if.end85.cleanup278_crit_edge ], [ %call114, %if.then112.cleanup278_crit_edge ], [ %call220, %if.then218.cleanup278_crit_edge ], [ %call243, %if.end241.cleanup278_crit_edge ], [ %call243.1, %if.end241.1.cleanup278_crit_edge ], [ %call243.2, %if.end241.2.cleanup278_crit_edge ], [ %call243.3, %if.end241.3.cleanup278_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pwmstate) #13
  ret i32 %retval.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ssd1307fb_update_rect(ptr nocapture noundef %par, i32 noundef %x, i32 noundef %y, i32 noundef %width, i32 noundef %height) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.ssd1307fb_par, ptr %par, i32 0, i32 8
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %2 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %line_length2 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 9
  %5 = ptrtoint ptr %line_length2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %line_length2, align 4
  %rem = and i32 %y, 7
  %add = add nuw nsw i32 %rem, 7
  %sub = add i32 %add, %height
  %div106 = lshr i32 %sub, 3
  %mul = mul i32 %div106, %width
  %add.i = add i32 %mul, 1
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #19
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 64, ptr %call9.i.i.i, align 128
  %col_offset = getelementptr inbounds %struct.ssd1307fb_par, ptr %par, i32 0, i32 11
  %8 = ptrtoint ptr %col_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %col_offset, align 4
  %add4 = add i32 %9, %x
  %conv = trunc i32 %add4 to i8
  %conv5 = trunc i32 %width to i8
  %add.i109 = add i8 %conv5, -1
  %sub.i = add i8 %add.i109, %conv
  %col_start4.i = getelementptr inbounds %struct.ssd1307fb_par, ptr %par, i32 0, i32 19
  %10 = ptrtoint ptr %col_start4.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %col_start4.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %conv)
  %cmp.i = icmp eq i8 %11, %conv
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.if.end.i110_crit_edge

if.end.if.end.i110_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i110

land.lhs.true.i:                                  ; preds = %if.end
  %col_end8.i = getelementptr inbounds %struct.ssd1307fb_par, ptr %par, i32 0, i32 20
  %12 = ptrtoint ptr %col_end8.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %col_end8.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %sub.i, i8 %13)
  %cmp10.i = icmp eq i8 %sub.i, %13
  br i1 %cmp10.i, label %land.lhs.true.i.if.end9_crit_edge, label %land.lhs.true.i.if.end.i110_crit_edge

land.lhs.true.i.if.end.i110_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i110

land.lhs.true.i.if.end9_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.end.i110:                                      ; preds = %land.lhs.true.i.if.end.i110_crit_edge, %if.end.if.end.i110_crit_edge
  %client.i = getelementptr inbounds %struct.ssd1307fb_par, ptr %par, i32 0, i32 6
  %14 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 2) #16
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i110.out_free_crit_edge, label %if.end.i.i

if.end.i110.out_free_crit_edge:                   ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end.i.i:                                       ; preds = %if.end.i110
  %17 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -128, ptr %call7.i.i.i.i.i, align 8
  %data.i.i = getelementptr inbounds %struct.ssd1307fb_array, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 33, ptr %data.i.i, align 1
  %call.i.i.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %15, ptr noundef nonnull %call7.i.i.i.i.i, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 2
  br i1 %cmp.not.i.i.i, label %ssd1307fb_write_cmd.exit.thread73.i, label %ssd1307fb_write_cmd.exit.i

ssd1307fb_write_cmd.exit.thread73.i:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #13
  br label %if.end15.i

ssd1307fb_write_cmd.exit.i:                       ; preds = %if.end.i.i
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.1) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp12.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp12.i, label %ssd1307fb_write_cmd.exit.i.out_free_crit_edge, label %ssd1307fb_write_cmd.exit.i.if.end15.i_crit_edge

ssd1307fb_write_cmd.exit.i.if.end15.i_crit_edge:  ; preds = %ssd1307fb_write_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i

ssd1307fb_write_cmd.exit.i.out_free_crit_edge:    ; preds = %ssd1307fb_write_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end15.i:                                       ; preds = %ssd1307fb_write_cmd.exit.i.if.end15.i_crit_edge, %ssd1307fb_write_cmd.exit.thread73.i
  %19 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i47.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 2) #16
  %tobool.not.i.i48.i = icmp eq ptr %call7.i.i.i.i47.i, null
  br i1 %tobool.not.i.i48.i, label %if.end15.i.out_free_crit_edge, label %if.end.i52.i

if.end15.i.out_free_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end.i52.i:                                     ; preds = %if.end15.i
  %22 = ptrtoint ptr %call7.i.i.i.i47.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -128, ptr %call7.i.i.i.i47.i, align 8
  %data.i49.i = getelementptr inbounds %struct.ssd1307fb_array, ptr %call7.i.i.i.i47.i, i32 0, i32 1
  %23 = ptrtoint ptr %data.i49.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %data.i49.i, align 1
  %call.i.i.i50.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %call7.i.i.i.i47.i, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i50.i)
  %cmp.not.i.i51.i = icmp eq i32 %call.i.i.i50.i, 2
  br i1 %cmp.not.i.i51.i, label %ssd1307fb_write_cmd.exit58.thread78.i, label %ssd1307fb_write_cmd.exit58.i

ssd1307fb_write_cmd.exit58.thread78.i:            ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i47.i) #13
  br label %if.end21.i

ssd1307fb_write_cmd.exit58.i:                     ; preds = %if.end.i52.i
  %dev.i.i53.i = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i53.i, ptr noundef nonnull @.str.1) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i47.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i50.i)
  %cmp18.i = icmp slt i32 %call.i.i.i50.i, 0
  br i1 %cmp18.i, label %ssd1307fb_write_cmd.exit58.i.out_free_crit_edge, label %ssd1307fb_write_cmd.exit58.i.if.end21.i_crit_edge

ssd1307fb_write_cmd.exit58.i.if.end21.i_crit_edge: ; preds = %ssd1307fb_write_cmd.exit58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i

ssd1307fb_write_cmd.exit58.i.out_free_crit_edge:  ; preds = %ssd1307fb_write_cmd.exit58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end21.i:                                       ; preds = %ssd1307fb_write_cmd.exit58.i.if.end21.i_crit_edge, %ssd1307fb_write_cmd.exit58.thread78.i
  %24 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i59.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 2) #16
  %tobool.not.i.i60.i = icmp eq ptr %call7.i.i.i.i59.i, null
  br i1 %tobool.not.i.i60.i, label %if.end21.i.out_free_crit_edge, label %if.end.i64.i

if.end21.i.out_free_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end.i64.i:                                     ; preds = %if.end21.i
  %27 = ptrtoint ptr %call7.i.i.i.i59.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -128, ptr %call7.i.i.i.i59.i, align 8
  %data.i61.i = getelementptr inbounds %struct.ssd1307fb_array, ptr %call7.i.i.i.i59.i, i32 0, i32 1
  %28 = ptrtoint ptr %data.i61.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %sub.i, ptr %data.i61.i, align 1
  %call.i.i.i62.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %25, ptr noundef nonnull %call7.i.i.i.i59.i, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i62.i)
  %cmp.not.i.i63.i = icmp eq i32 %call.i.i.i62.i, 2
  br i1 %cmp.not.i.i63.i, label %ssd1307fb_write_cmd.exit70.thread83.i, label %ssd1307fb_write_cmd.exit70.i

ssd1307fb_write_cmd.exit70.thread83.i:            ; preds = %if.end.i64.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i59.i) #13
  br label %if.end27.i

ssd1307fb_write_cmd.exit70.i:                     ; preds = %if.end.i64.i
  %dev.i.i65.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i65.i, ptr noundef nonnull @.str.1) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i59.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i62.i)
  %cmp24.i = icmp slt i32 %call.i.i.i62.i, 0
  br i1 %cmp24.i, label %ssd1307fb_write_cmd.exit70.i.out_free_crit_edge, label %ssd1307fb_write_cmd.exit70.i.if.end27.i_crit_edge

ssd1307fb_write_cmd.exit70.i.if.end27.i_crit_edge: ; preds = %ssd1307fb_write_cmd.exit70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i

ssd1307fb_write_cmd.exit70.i.out_free_crit_edge:  ; preds = %ssd1307fb_write_cmd.exit70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end27.i:                                       ; preds = %ssd1307fb_write_cmd.exit70.i.if.end27.i_crit_edge, %ssd1307fb_write_cmd.exit70.thread83.i
  %29 = ptrtoint ptr %col_start4.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv, ptr %col_start4.i, align 4
  %col_end29.i = getelementptr inbounds %struct.ssd1307fb_par, ptr %par, i32 0, i32 20
  %30 = ptrtoint ptr %col_end29.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %sub.i, ptr %col_end29.i, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.end27.i, %land.lhs.true.i.if.end9_crit_edge
  %page_offset = getelementptr inbounds %struct.ssd1307fb_par, ptr %par, i32 0, i32 10
  %31 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %page_offset, align 4
  %div10107 = lshr i32 %y, 3
  %add11 = add i32 %32, %div10107
  %conv12 = trunc i32 %add11 to i8
  %conv13 = trunc i32 %div106 to i8
  %add.i112 = add i8 %conv13, -1
  %sub.i113 = add i8 %add.i112, %conv12
  %page_start4.i = getelementptr inbounds %struct.ssd1307fb_par, ptr %par, i32 0, i32 21
  %33 = ptrtoint ptr %page_start4.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %page_start4.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %conv12)
  %cmp.i114 = icmp eq i8 %34, %conv12
  br i1 %cmp.i114, label %land.lhs.true.i116, label %if.end9.if.end.i120_crit_edge

if.end9.if.end.i120_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i120

land.lhs.true.i116:                               ; preds = %if.end9
  %page_end8.i = getelementptr inbounds %struct.ssd1307fb_par, ptr %par, i32 0, i32 22
  %35 = ptrtoint ptr %page_end8.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %page_end8.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %sub.i113, i8 %36)
  %cmp10.i115 = icmp eq i8 %sub.i113, %36
  br i1 %cmp10.i115, label %land.lhs.true.i116.ssd1307fb_set_page_range.exit_crit_edge, label %land.lhs.true.i116.if.end.i120_crit_edge

land.lhs.true.i116.if.end.i120_crit_edge:         ; preds = %land.lhs.true.i116
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i120

land.lhs.true.i116.ssd1307fb_set_page_range.exit_crit_edge: ; preds = %land.lhs.true.i116
  call void @__sanitizer_cov_trace_pc() #15
  br label %ssd1307fb_set_page_range.exit

if.end.i120:                                      ; preds = %land.lhs.true.i116.if.end.i120_crit_edge, %if.end9.if.end.i120_crit_edge
  %client.i117 = getelementptr inbounds %struct.ssd1307fb_par, ptr %par, i32 0, i32 6
  %37 = ptrtoint ptr %client.i117 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %client.i117, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i118 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 2) #16
  %tobool.not.i.i.i119 = icmp eq ptr %call7.i.i.i.i.i118, null
  br i1 %tobool.not.i.i.i119, label %if.end.i120.out_free_crit_edge, label %if.end.i.i124

if.end.i120.out_free_crit_edge:                   ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end.i.i124:                                    ; preds = %if.end.i120
  %40 = ptrtoint ptr %call7.i.i.i.i.i118 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -128, ptr %call7.i.i.i.i.i118, align 8
  %data.i.i121 = getelementptr inbounds %struct.ssd1307fb_array, ptr %call7.i.i.i.i.i118, i32 0, i32 1
  %41 = ptrtoint ptr %data.i.i121 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 34, ptr %data.i.i121, align 1
  %call.i.i.i.i122 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %38, ptr noundef nonnull %call7.i.i.i.i.i118, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i.i122)
  %cmp.not.i.i.i123 = icmp eq i32 %call.i.i.i.i122, 2
  br i1 %cmp.not.i.i.i123, label %ssd1307fb_write_cmd.exit.thread73.i125, label %ssd1307fb_write_cmd.exit.i128

ssd1307fb_write_cmd.exit.thread73.i125:           ; preds = %if.end.i.i124
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i118) #13
  br label %if.end15.i131

ssd1307fb_write_cmd.exit.i128:                    ; preds = %if.end.i.i124
  %dev.i.i.i126 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i126, ptr noundef nonnull @.str.1) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i118) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i122)
  %cmp12.i127 = icmp slt i32 %call.i.i.i.i122, 0
  br i1 %cmp12.i127, label %ssd1307fb_write_cmd.exit.i128.out_free_crit_edge, label %ssd1307fb_write_cmd.exit.i128.if.end15.i131_crit_edge

ssd1307fb_write_cmd.exit.i128.if.end15.i131_crit_edge: ; preds = %ssd1307fb_write_cmd.exit.i128
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i131

ssd1307fb_write_cmd.exit.i128.out_free_crit_edge: ; preds = %ssd1307fb_write_cmd.exit.i128
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end15.i131:                                    ; preds = %ssd1307fb_write_cmd.exit.i128.if.end15.i131_crit_edge, %ssd1307fb_write_cmd.exit.thread73.i125
  %42 = ptrtoint ptr %client.i117 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %client.i117, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i47.i129 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3520, i32 noundef 2) #16
  %tobool.not.i.i48.i130 = icmp eq ptr %call7.i.i.i.i47.i129, null
  br i1 %tobool.not.i.i48.i130, label %if.end15.i131.out_free_crit_edge, label %if.end.i52.i135

if.end15.i131.out_free_crit_edge:                 ; preds = %if.end15.i131
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end.i52.i135:                                  ; preds = %if.end15.i131
  %45 = ptrtoint ptr %call7.i.i.i.i47.i129 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -128, ptr %call7.i.i.i.i47.i129, align 8
  %data.i49.i132 = getelementptr inbounds %struct.ssd1307fb_array, ptr %call7.i.i.i.i47.i129, i32 0, i32 1
  %46 = ptrtoint ptr %data.i49.i132 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv12, ptr %data.i49.i132, align 1
  %call.i.i.i50.i133 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %43, ptr noundef nonnull %call7.i.i.i.i47.i129, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i50.i133)
  %cmp.not.i.i51.i134 = icmp eq i32 %call.i.i.i50.i133, 2
  br i1 %cmp.not.i.i51.i134, label %ssd1307fb_write_cmd.exit58.thread78.i136, label %ssd1307fb_write_cmd.exit58.i139

ssd1307fb_write_cmd.exit58.thread78.i136:         ; preds = %if.end.i52.i135
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i47.i129) #13
  br label %if.end21.i142

ssd1307fb_write_cmd.exit58.i139:                  ; preds = %if.end.i52.i135
  %dev.i.i53.i137 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i53.i137, ptr noundef nonnull @.str.1) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i47.i129) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i50.i133)
  %cmp18.i138 = icmp slt i32 %call.i.i.i50.i133, 0
  br i1 %cmp18.i138, label %ssd1307fb_write_cmd.exit58.i139.out_free_crit_edge, label %ssd1307fb_write_cmd.exit58.i139.if.end21.i142_crit_edge

ssd1307fb_write_cmd.exit58.i139.if.end21.i142_crit_edge: ; preds = %ssd1307fb_write_cmd.exit58.i139
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i142

ssd1307fb_write_cmd.exit58.i139.out_free_crit_edge: ; preds = %ssd1307fb_write_cmd.exit58.i139
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end21.i142:                                    ; preds = %ssd1307fb_write_cmd.exit58.i139.if.end21.i142_crit_edge, %ssd1307fb_write_cmd.exit58.thread78.i136
  %47 = ptrtoint ptr %client.i117 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %client.i117, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i59.i140 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3520, i32 noundef 2) #16
  %tobool.not.i.i60.i141 = icmp eq ptr %call7.i.i.i.i59.i140, null
  br i1 %tobool.not.i.i60.i141, label %if.end21.i142.out_free_crit_edge, label %if.end.i64.i146

if.end21.i142.out_free_crit_edge:                 ; preds = %if.end21.i142
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end.i64.i146:                                  ; preds = %if.end21.i142
  %50 = ptrtoint ptr %call7.i.i.i.i59.i140 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -128, ptr %call7.i.i.i.i59.i140, align 8
  %data.i61.i143 = getelementptr inbounds %struct.ssd1307fb_array, ptr %call7.i.i.i.i59.i140, i32 0, i32 1
  %51 = ptrtoint ptr %data.i61.i143 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %sub.i113, ptr %data.i61.i143, align 1
  %call.i.i.i62.i144 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %48, ptr noundef nonnull %call7.i.i.i.i59.i140, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i62.i144)
  %cmp.not.i.i63.i145 = icmp eq i32 %call.i.i.i62.i144, 2
  br i1 %cmp.not.i.i63.i145, label %ssd1307fb_write_cmd.exit70.thread83.i147, label %ssd1307fb_write_cmd.exit70.i150

ssd1307fb_write_cmd.exit70.thread83.i147:         ; preds = %if.end.i64.i146
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i59.i140) #13
  br label %if.end27.i151

ssd1307fb_write_cmd.exit70.i150:                  ; preds = %if.end.i64.i146
  %dev.i.i65.i148 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i65.i148, ptr noundef nonnull @.str.1) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i59.i140) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i62.i144)
  %cmp24.i149 = icmp slt i32 %call.i.i.i62.i144, 0
  br i1 %cmp24.i149, label %ssd1307fb_write_cmd.exit70.i150.out_free_crit_edge, label %ssd1307fb_write_cmd.exit70.i150.if.end27.i151_crit_edge

ssd1307fb_write_cmd.exit70.i150.if.end27.i151_crit_edge: ; preds = %ssd1307fb_write_cmd.exit70.i150
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i151

ssd1307fb_write_cmd.exit70.i150.out_free_crit_edge: ; preds = %ssd1307fb_write_cmd.exit70.i150
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end27.i151:                                    ; preds = %ssd1307fb_write_cmd.exit70.i150.if.end27.i151_crit_edge, %ssd1307fb_write_cmd.exit70.thread83.i147
  %52 = ptrtoint ptr %page_start4.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv12, ptr %page_start4.i, align 2
  %page_end29.i = getelementptr inbounds %struct.ssd1307fb_par, ptr %par, i32 0, i32 22
  %53 = ptrtoint ptr %page_end29.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %sub.i113, ptr %page_end29.i, align 1
  br label %ssd1307fb_set_page_range.exit

ssd1307fb_set_page_range.exit:                    ; preds = %if.end27.i151, %land.lhs.true.i116.ssd1307fb_set_page_range.exit_crit_edge
  %add21 = add nuw nsw i32 %div106, %div10107
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp22170.not = icmp ult i32 %sub, 8
  br i1 %cmp22170.not, label %ssd1307fb_set_page_range.exit.for.end61_crit_edge, label %for.body.lr.ph

ssd1307fb_set_page_range.exit.for.end61_crit_edge: ; preds = %ssd1307fb_set_page_range.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end61

for.body.lr.ph:                                   ; preds = %ssd1307fb_set_page_range.exit
  %height26 = getelementptr inbounds %struct.ssd1307fb_par, ptr %par, i32 0, i32 7
  %add34 = add i32 %width, %x
  call void @__sanitizer_cov_trace_cmp4(i32 %add34, i32 %x)
  %cmp35165 = icmp ugt i32 %add34, %x
  %54 = ptrtoint ptr %height26 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %height26, align 4
  %rem31 = and i32 %55, 7
  br label %for.body

for.cond.loopexit:                                ; preds = %for.end.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %array_idx.1.lcssa = phi i32 [ %array_idx.0171, %for.body.for.cond.loopexit_crit_edge ], [ %inc54, %for.end.for.cond.loopexit_crit_edge ]
  %cmp22 = icmp ult i32 %add24, %add21
  br i1 %cmp22, label %for.cond.loopexit.for.body_crit_edge, label %for.cond.loopexit.for.end61_crit_edge

for.cond.loopexit.for.end61_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end61

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %i.0172 = phi i32 [ %div10107, %for.body.lr.ph ], [ %add24, %for.cond.loopexit.for.body_crit_edge ]
  %array_idx.0171 = phi i32 [ 0, %for.body.lr.ph ], [ %array_idx.1.lcssa, %for.cond.loopexit.for.body_crit_edge ]
  %add24 = add nuw nsw i32 %i.0172, 1
  %mul25 = shl i32 %add24, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul25, i32 %55)
  %cmp27 = icmp ugt i32 %mul25, %55
  %spec.select = select i1 %cmp27, i32 %rem31, i32 8
  br i1 %cmp35165, label %for.cond38.preheader.lr.ph, label %for.body.for.cond.loopexit_crit_edge

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.loopexit

for.cond38.preheader.lr.ph:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp39162.not = icmp eq i32 %spec.select, 0
  %mul42 = shl i32 %i.0172, 3
  br label %for.cond38.preheader

for.cond38.preheader:                             ; preds = %for.end.for.cond38.preheader_crit_edge, %for.cond38.preheader.lr.ph
  %j.0167 = phi i32 [ %x, %for.cond38.preheader.lr.ph ], [ %inc57, %for.end.for.cond38.preheader_crit_edge ]
  %array_idx.1166 = phi i32 [ %array_idx.0171, %for.cond38.preheader.lr.ph ], [ %inc54, %for.end.for.cond38.preheader_crit_edge ]
  br i1 %cmp39162.not, label %for.cond38.preheader.for.end_crit_edge, label %for.body41.lr.ph

for.cond38.preheader.for.end_crit_edge:           ; preds = %for.cond38.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body41.lr.ph:                                 ; preds = %for.cond38.preheader
  %div45 = sdiv i32 %j.0167, 8
  %rem48108 = and i32 %j.0167, 7
  br label %for.body41

for.body41:                                       ; preds = %for.body41.for.body41_crit_edge, %for.body41.lr.ph
  %data.0164 = phi i8 [ 0, %for.body41.lr.ph ], [ %conv52, %for.body41.for.body41_crit_edge ]
  %k.0163 = phi i32 [ 0, %for.body41.lr.ph ], [ %inc, %for.body41.for.body41_crit_edge ]
  %add43 = add i32 %k.0163, %mul42
  %mul44 = mul i32 %add43, %6
  %add46 = add i32 %mul44, %div45
  %arrayidx = getelementptr i8, ptr %4, i32 %add46
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx, align 1
  %conv47 = zext i8 %57 to i32
  %shr = lshr i32 %conv47, %rem48108
  %conv49 = and i32 %shr, 1
  %shl = shl nuw i32 %conv49, %k.0163
  %58 = trunc i32 %shl to i8
  %conv52 = or i8 %data.0164, %58
  %inc = add nuw nsw i32 %k.0163, 1
  %exitcond.not = icmp eq i32 %inc, %spec.select
  br i1 %exitcond.not, label %for.body41.for.end_crit_edge, label %for.body41.for.body41_crit_edge

for.body41.for.body41_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body41

for.body41.for.end_crit_edge:                     ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body41.for.end_crit_edge, %for.cond38.preheader.for.end_crit_edge
  %data.0.lcssa = phi i8 [ 0, %for.cond38.preheader.for.end_crit_edge ], [ %conv52, %for.body41.for.end_crit_edge ]
  %inc54 = add i32 %array_idx.1166, 1
  %arrayidx55 = getelementptr %struct.ssd1307fb_array, ptr %call9.i.i.i, i32 0, i32 1, i32 %array_idx.1166
  %59 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %data.0.lcssa, ptr %arrayidx55, align 1
  %inc57 = add nuw i32 %j.0167, 1
  %exitcond173.not = icmp eq i32 %inc57, %add34
  br i1 %exitcond173.not, label %for.end.for.cond.loopexit_crit_edge, label %for.end.for.cond38.preheader_crit_edge

for.end.for.cond38.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond38.preheader

for.end.for.cond.loopexit_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.loopexit

for.end61:                                        ; preds = %for.cond.loopexit.for.end61_crit_edge, %ssd1307fb_set_page_range.exit.for.end61_crit_edge
  %client = getelementptr inbounds %struct.ssd1307fb_par, ptr %par, i32 0, i32 6
  %60 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %client, align 4
  %call.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %61, ptr noundef nonnull %call9.i.i.i, i32 noundef %add.i, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %add.i)
  %cmp.not.i = icmp eq i32 %call.i.i, %add.i
  br i1 %cmp.not.i, label %for.end61.out_free_crit_edge, label %do.end.i

for.end61.out_free_crit_edge:                     ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

do.end.i:                                         ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.1) #17
  br label %out_free

out_free:                                         ; preds = %do.end.i, %for.end61.out_free_crit_edge, %ssd1307fb_write_cmd.exit70.i150.out_free_crit_edge, %if.end21.i142.out_free_crit_edge, %ssd1307fb_write_cmd.exit58.i139.out_free_crit_edge, %if.end15.i131.out_free_crit_edge, %ssd1307fb_write_cmd.exit.i128.out_free_crit_edge, %if.end.i120.out_free_crit_edge, %ssd1307fb_write_cmd.exit70.i.out_free_crit_edge, %if.end21.i.out_free_crit_edge, %ssd1307fb_write_cmd.exit58.i.out_free_crit_edge, %if.end15.i.out_free_crit_edge, %ssd1307fb_write_cmd.exit.i.out_free_crit_edge, %if.end.i110.out_free_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %do.end.i ], [ 0, %for.end61.out_free_crit_edge ], [ -12, %if.end21.i.out_free_crit_edge ], [ -12, %if.end15.i.out_free_crit_edge ], [ -12, %if.end.i110.out_free_crit_edge ], [ %call.i.i.i62.i, %ssd1307fb_write_cmd.exit70.i.out_free_crit_edge ], [ %call.i.i.i50.i, %ssd1307fb_write_cmd.exit58.i.out_free_crit_edge ], [ %call.i.i.i.i, %ssd1307fb_write_cmd.exit.i.out_free_crit_edge ], [ -12, %if.end21.i142.out_free_crit_edge ], [ -12, %if.end15.i131.out_free_crit_edge ], [ -12, %if.end.i120.out_free_crit_edge ], [ %call.i.i.i62.i144, %ssd1307fb_write_cmd.exit70.i150.out_free_crit_edge ], [ %call.i.i.i50.i133, %ssd1307fb_write_cmd.exit58.i139.out_free_crit_edge ], [ %call.i.i.i.i122, %ssd1307fb_write_cmd.exit.i128.out_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %out_free, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_free ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_sys_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssd1307fb_write(ptr nocapture noundef readonly %info, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  %conv = trunc i64 %3 to i32
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp = icmp ult i32 %5, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %conv, %count
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp3 = icmp ugt i32 %add, %5
  %sub = sub i32 %5, %conv
  %spec.select = select i1 %cmp3, i32 %sub, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool.not = icmp eq i32 %spec.select, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %6 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp9.i.i = icmp slt i32 %spec.select, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !156

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end8
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %spec.select, i1 noundef zeroext false) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.51, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %spec.select, i32 -1226833920) #18, !srcloc !157
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !156

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %spec.select) #13
  %10 = tail call i32 @llvm.read_register.i32(metadata !140) #13
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !158
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !160
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %spec.select) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #13, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end11, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !156

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i38 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %spec.select, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %spec.select, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %spec.select, %res.0.i.i38
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i38)
  br label %cleanup

if.end11:                                         ; preds = %if.end.i.i
  %width.i = getelementptr inbounds %struct.ssd1307fb_par, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width.i, align 4
  %height.i = getelementptr inbounds %struct.ssd1307fb_par, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height.i, align 4
  %call.i = tail call fastcc i32 @ssd1307fb_update_rect(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %15, i32 noundef %17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp13 = icmp slt i32 %call.i, 0
  br i1 %cmp13, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %conv17 = zext i32 %spec.select to i64
  %18 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ppos, align 8
  %add18 = add i64 %19, %conv17
  store i64 %add18, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end11.cleanup_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end16 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i, %if.end11.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssd1307fb_blank(i32 noundef %blank_mode, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blank_mode)
  %cmp.not = icmp eq i32 %blank_mode, 0
  %client2 = getelementptr inbounds %struct.ssd1307fb_par, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 2) #16
  %tobool.not.i.i6 = icmp eq ptr %call7.i.i.i.i5, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i.i6, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %5 = ptrtoint ptr %call7.i.i.i.i5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -128, ptr %call7.i.i.i.i5, align 8
  %data.i = getelementptr inbounds %struct.ssd1307fb_array, ptr %call7.i.i.i.i5, i32 0, i32 1
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -82, ptr %data.i, align 1
  %call.i.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %call7.i.i.i.i5, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp.not.i.i, label %if.end.i.cleanup.sink.split_crit_edge, label %if.end.i.cleanup.sink.split.sink.split_crit_edge

if.end.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.sink.split

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i.i6, label %if.else.cleanup_crit_edge, label %if.end.i10

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i10:                                       ; preds = %if.else
  %7 = ptrtoint ptr %call7.i.i.i.i5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -128, ptr %call7.i.i.i.i5, align 8
  %data.i7 = getelementptr inbounds %struct.ssd1307fb_array, ptr %call7.i.i.i.i5, i32 0, i32 1
  %8 = ptrtoint ptr %data.i7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -81, ptr %data.i7, align 1
  %call.i.i.i8 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %call7.i.i.i.i5, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i8)
  %cmp.not.i.i9 = icmp eq i32 %call.i.i.i8, 2
  br i1 %cmp.not.i.i9, label %if.end.i10.cleanup.sink.split_crit_edge, label %if.end.i10.cleanup.sink.split.sink.split_crit_edge

if.end.i10.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.sink.split

if.end.i10.cleanup.sink.split_crit_edge:          ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.end.i10.cleanup.sink.split.sink.split_crit_edge, %if.end.i.cleanup.sink.split.sink.split_crit_edge
  %retval.0.ph.ph = phi i32 [ %call.i.i.i, %if.end.i.cleanup.sink.split.sink.split_crit_edge ], [ %call.i.i.i8, %if.end.i10.cleanup.sink.split.sink.split_crit_edge ]
  %dev.i.i11 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i11, ptr noundef nonnull @.str.1) #17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end.i10.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end.i.cleanup.sink.split_crit_edge ], [ 0, %if.end.i10.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i5) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ -12, %if.else.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssd1307fb_fillrect(ptr noundef %info, ptr noundef %rect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  tail call void @sys_fillrect(ptr noundef %info, ptr noundef %rect) #13
  %2 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rect, align 4
  %dy = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 1
  %4 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dy, align 4
  %width = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 2
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 3
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %call = tail call fastcc i32 @ssd1307fb_update_rect(ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssd1307fb_copyarea(ptr noundef %info, ptr noundef %area) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  tail call void @sys_copyarea(ptr noundef %info, ptr noundef %area) #13
  %2 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %area, align 4
  %dy = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 1
  %4 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dy, align 4
  %width = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 2
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 3
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %call = tail call fastcc i32 @ssd1307fb_update_rect(ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssd1307fb_imageblit(ptr noundef %info, ptr noundef %image) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  tail call void @sys_imageblit(ptr noundef %info, ptr noundef %image) #13
  %2 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %image, align 4
  %dy = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 1
  %4 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dy, align 4
  %width = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 3
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %call = tail call fastcc i32 @ssd1307fb_update_rect(ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_copyarea(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_imageblit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwm_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssd1307fb_update_bl(ptr nocapture noundef readonly %bdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bdev, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bdev, align 8
  %contrast = getelementptr inbounds %struct.ssd1307fb_par, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %contrast to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %contrast, align 4
  %client = getelementptr inbounds %struct.ssd1307fb_par, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 2) #16
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %8 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -128, ptr %call7.i.i.i.i, align 8
  %data.i = getelementptr inbounds %struct.ssd1307fb_array, ptr %call7.i.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -127, ptr %data.i, align 1
  %call.i.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp.not.i.i, label %ssd1307fb_write_cmd.exit.thread33, label %ssd1307fb_write_cmd.exit

ssd1307fb_write_cmd.exit.thread33:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #13
  br label %if.end

ssd1307fb_write_cmd.exit:                         ; preds = %if.end.i
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.1) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp, label %ssd1307fb_write_cmd.exit.cleanup_crit_edge, label %ssd1307fb_write_cmd.exit.if.end_crit_edge

ssd1307fb_write_cmd.exit.if.end_crit_edge:        ; preds = %ssd1307fb_write_cmd.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

ssd1307fb_write_cmd.exit.cleanup_crit_edge:       ; preds = %ssd1307fb_write_cmd.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %ssd1307fb_write_cmd.exit.if.end_crit_edge, %ssd1307fb_write_cmd.exit.thread33
  %10 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client, align 4
  %12 = ptrtoint ptr %contrast to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %contrast, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 2) #16
  %tobool.not.i.i20 = icmp eq ptr %call7.i.i.i.i19, null
  br i1 %tobool.not.i.i20, label %if.end.ssd1307fb_write_cmd.exit30.thread_crit_edge, label %if.end.i24

if.end.ssd1307fb_write_cmd.exit30.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %ssd1307fb_write_cmd.exit30.thread

if.end.i24:                                       ; preds = %if.end
  %conv = trunc i32 %13 to i8
  %15 = ptrtoint ptr %call7.i.i.i.i19 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -128, ptr %call7.i.i.i.i19, align 8
  %data.i21 = getelementptr inbounds %struct.ssd1307fb_array, ptr %call7.i.i.i.i19, i32 0, i32 1
  %16 = ptrtoint ptr %data.i21 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %data.i21, align 1
  %call.i.i.i22 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %11, ptr noundef nonnull %call7.i.i.i.i19, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i22)
  %cmp.not.i.i23 = icmp eq i32 %call.i.i.i22, 2
  br i1 %cmp.not.i.i23, label %ssd1307fb_write_cmd.exit30.thread39, label %ssd1307fb_write_cmd.exit30

ssd1307fb_write_cmd.exit30.thread39:              ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i19) #13
  br label %cleanup

ssd1307fb_write_cmd.exit30:                       ; preds = %if.end.i24
  %dev.i.i25 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i25, ptr noundef nonnull @.str.1) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i19) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i22)
  %cmp6 = icmp slt i32 %call.i.i.i22, 0
  br i1 %cmp6, label %ssd1307fb_write_cmd.exit30.ssd1307fb_write_cmd.exit30.thread_crit_edge, label %ssd1307fb_write_cmd.exit30.cleanup_crit_edge

ssd1307fb_write_cmd.exit30.cleanup_crit_edge:     ; preds = %ssd1307fb_write_cmd.exit30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

ssd1307fb_write_cmd.exit30.ssd1307fb_write_cmd.exit30.thread_crit_edge: ; preds = %ssd1307fb_write_cmd.exit30
  call void @__sanitizer_cov_trace_pc() #15
  br label %ssd1307fb_write_cmd.exit30.thread

ssd1307fb_write_cmd.exit30.thread:                ; preds = %ssd1307fb_write_cmd.exit30.ssd1307fb_write_cmd.exit30.thread_crit_edge, %if.end.ssd1307fb_write_cmd.exit30.thread_crit_edge
  %retval.0.i2938 = phi i32 [ %call.i.i.i22, %ssd1307fb_write_cmd.exit30.ssd1307fb_write_cmd.exit30.thread_crit_edge ], [ -12, %if.end.ssd1307fb_write_cmd.exit30.thread_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %ssd1307fb_write_cmd.exit30.thread, %ssd1307fb_write_cmd.exit30.cleanup_crit_edge, %ssd1307fb_write_cmd.exit30.thread39, %ssd1307fb_write_cmd.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %ssd1307fb_write_cmd.exit.cleanup_crit_edge ], [ %retval.0.i2938, %ssd1307fb_write_cmd.exit30.thread ], [ 0, %ssd1307fb_write_cmd.exit30.cleanup_crit_edge ], [ 0, %ssd1307fb_write_cmd.exit30.thread39 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ssd1307fb_get_brightness(ptr nocapture noundef readonly %bdev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bdev, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %contrast = getelementptr inbounds %struct.ssd1307fb_par, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %contrast to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %contrast, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ssd1307fb_check_fb(ptr noundef readnone %bdev, ptr nocapture noundef readonly %info) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bl_dev = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 15
  %0 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bl_dev, align 4
  %cmp = icmp eq ptr %1, %bdev
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !35, !37, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !93, !94, !95, !97, !98, !99, !100, !102, !104, !105, !107, !109, !111, !113, !115, !116, !117, !118, !120, !121, !123, !124, !125, !126, !128, !130, !132, !134, !136, !138}
!llvm.named.register.sp = !{!140}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146, !147, !148}
!llvm.ident = !{!149}

!0 = !{ptr @__param_refreshrate, !1, !"__param_refreshrate", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 49, i32 1}
!2 = !{ptr @__UNIQUE_ID_refreshratetype301, !1, !"__UNIQUE_ID_refreshratetype301", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_ssd1307fb__303_863_ssd1307fb_driver_init6, !4, !"__initcall__kmod_ssd1307fb__303_863_ssd1307fb_driver_init6", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 863, i32 1}
!5 = !{ptr @__exitcall_ssd1307fb_driver_exit, !4, !"__exitcall_ssd1307fb_driver_exit", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description304, !7, !"__UNIQUE_ID_description304", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 865, i32 1}
!8 = !{ptr @__UNIQUE_ID_author305, !9, !"__UNIQUE_ID_author305", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 866, i32 1}
!10 = !{ptr @__UNIQUE_ID_file306, !11, !"__UNIQUE_ID_file306", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 867, i32 1}
!12 = !{ptr @__UNIQUE_ID_license307, !11, !"__UNIQUE_ID_license307", i1 false, i1 false}
!13 = !{ptr @__param_str_refreshrate, !1, !"__param_str_refreshrate", i1 false, i1 false}
!14 = !{ptr @refreshrate, !15, !"refreshrate", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 48, i32 14}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 858, i32 11}
!18 = !{ptr @ssd1307fb_driver, !19, !"ssd1307fb_driver", i1 false, i1 false}
!19 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 853, i32 26}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 136, i32 3}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ssd1307fb_write_array._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @ssd1307fb_write_array._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 659, i32 44}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 661, i32 3}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ssd1307fb_probe._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @ssd1307fb_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 667, i32 51}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 673, i32 4}
!39 = !{ptr @ssd1307fb_probe._entry.10, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ssd1307fb_probe._entry_ptr.12, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 678, i32 36}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 681, i32 36}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 684, i32 36}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 687, i32 36}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 690, i32 36}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 693, i32 36}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 696, i32 36}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 699, i32 42}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 704, i32 51}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 705, i32 48}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 706, i32 52}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 707, i32 51}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 709, i32 34}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 710, i32 50}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 716, i32 36}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 718, i32 36}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 726, i32 3}
!75 = !{ptr @ssd1307fb_probe._entry.29, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @ssd1307fb_probe._entry_ptr.31, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 734, i32 3}
!79 = !{ptr @ssd1307fb_probe._entry.32, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @ssd1307fb_probe._entry_ptr.34, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 772, i32 4}
!83 = !{ptr @ssd1307fb_probe._entry.35, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @ssd1307fb_probe._entry_ptr.37, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 783, i32 3}
!87 = !{ptr @ssd1307fb_probe._entry.38, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @ssd1307fb_probe._entry_ptr.40, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 787, i32 37}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 792, i32 3}
!93 = !{ptr @ssd1307fb_probe._entry.42, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @ssd1307fb_probe._entry_ptr.44, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 800, i32 2}
!97 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @ssd1307fb_probe._entry.45, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @ssd1307fb_probe._entry_ptr.48, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @ssd1307fb_ops, !101, !"ssd1307fb_ops", i1 false, i1 false}
!101 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 363, i32 28}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!104 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!109 = !{ptr @ssd1307fb_fix, !110, !"ssd1307fb_fix", i1 false, i1 false}
!110 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 97, i32 39}
!111 = !{ptr @ssd1307fb_var, !112, !"ssd1307fb_var", i1 false, i1 false}
!112 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 107, i32 39}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 388, i32 4}
!115 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @ssd1307fb_init._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @ssd1307fb_init._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 399, i32 3}
!120 = !{ptr @ssd1307fb_init.__UNIQUE_ID_ddebug302, !119, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 521, i32 5}
!123 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @ssd1307fb_init._entry.55, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @ssd1307fb_init._entry_ptr.58, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @ssd1307fb_bl_ops, !127, !"ssd1307fb_bl_ops", i1 false, i1 false}
!127 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 583, i32 35}
!128 = !{ptr @ssd1307fb_of_match, !129, !"ssd1307fb_of_match", i1 false, i1 false}
!129 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 616, i32 34}
!130 = !{ptr @ssd1307fb_ssd1305_deviceinfo, !131, !"ssd1307fb_ssd1305_deviceinfo", i1 false, i1 false}
!131 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 590, i32 36}
!132 = !{ptr @ssd1307fb_ssd1306_deviceinfo, !133, !"ssd1307fb_ssd1306_deviceinfo", i1 false, i1 false}
!133 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 596, i32 36}
!134 = !{ptr @ssd1307fb_ssd1307_deviceinfo, !135, !"ssd1307fb_ssd1307_deviceinfo", i1 false, i1 false}
!135 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 603, i32 36}
!136 = !{ptr @ssd1307fb_ssd1309_deviceinfo, !137, !"ssd1307fb_ssd1309_deviceinfo", i1 false, i1 false}
!137 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 610, i32 36}
!138 = !{ptr @ssd1307fb_i2c_id, !139, !"ssd1307fb_i2c_id", i1 false, i1 false}
!139 = !{!"../drivers/video/fbdev/ssd1307fb.c", i32 844, i32 35}
!140 = !{!"sp"}
!141 = !{i32 1, !"wchar_size", i32 2}
!142 = !{i32 1, !"min_enum_size", i32 4}
!143 = !{i32 8, !"branch-target-enforcement", i32 0}
!144 = !{i32 8, !"sign-return-address", i32 0}
!145 = !{i32 8, !"sign-return-address-all", i32 0}
!146 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!147 = !{i32 7, !"uwtable", i32 1}
!148 = !{i32 7, !"frame-pointer", i32 2}
!149 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!150 = !{i8 0, i8 2}
!151 = !{i64 2148912712, i64 2148912735, i64 2148912767, i64 2148912799, i64 2148912837, i64 2148912867}
!152 = !{i32 0, i32 33}
!153 = !{i64 849913, i64 849940, i64 849962, i64 849990}
!154 = !{i64 850321, i64 850348, i64 850381, i64 850402, i64 850429, i64 850455}
!155 = !{i64 2148310270, i64 2148310275, i64 2148310288, i64 2148310332, i64 2148310366, i64 2148310387}
!156 = !{!"branch_weights", i32 2000, i32 1}
!157 = !{i64 2153676307, i64 2153676332}
!158 = !{i64 6171862}
!159 = !{i64 6172059}
!160 = !{i64 2153657292}
