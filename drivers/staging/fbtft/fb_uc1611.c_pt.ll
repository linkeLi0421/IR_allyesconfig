; ModuleID = '/llk/IR_all_yes/drivers/staging/fbtft/fb_uc1611.c_pt.bc'
source_filename = "../drivers/staging/fbtft/fb_uc1611.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.fbtft_display = type { i32, i32, i32, i32, i32, %struct.fbtft_ops, i32, i32, i32, ptr, ptr, i32, i32, i32 }
%struct.fbtft_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.fbtft_par = type { ptr, ptr, ptr, ptr, ptr, [16 x i32], %struct.anon.85, ptr, i8, %struct.fbtft_ops, %struct.spinlock, i32, i32, %struct.anon.86, ptr, %struct.anon.87, i32, i8, i64, i8, ptr, i8 }
%struct.anon.85 = type { ptr, i32 }
%struct.anon.86 = type { ptr, ptr, ptr, ptr, ptr, ptr, [16 x ptr], [16 x ptr], [16 x ptr] }
%struct.anon.87 = type { %struct.mutex, ptr, i32, i32 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.84, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__param_str_ratio = internal constant [16 x i8] c"fb_uc1611.ratio\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@ratio = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_ratio = internal constant %struct.kernel_param { ptr @__param_str_ratio, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @ratio } }, section "__param", align 4
@__UNIQUE_ID_ratiotype303 = internal constant [30 x i8] c"fb_uc1611.parmtype=ratio:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_ratio304 = internal constant [66 x i8] c"fb_uc1611.parm=ratio:BR[1:0] Bias voltage ratio: 0-3 (default: 2)\00", section ".modinfo", align 1
@__param_str_gain = internal constant [15 x i8] c"fb_uc1611.gain\00", align 1
@gain = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@__param_gain = internal constant %struct.kernel_param { ptr @__param_str_gain, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @gain } }, section "__param", align 4
@__UNIQUE_ID_gaintype305 = internal constant [29 x i8] c"fb_uc1611.parmtype=gain:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_gain306 = internal constant [64 x i8] c"fb_uc1611.parm=gain:GN[1:0] Bias voltage gain: 0-3 (default: 3)\00", section ".modinfo", align 1
@__param_str_pot = internal constant [14 x i8] c"fb_uc1611.pot\00", align 1
@pot = internal global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@__param_pot = internal constant %struct.kernel_param { ptr @__param_str_pot, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @pot } }, section "__param", align 4
@__UNIQUE_ID_pottype307 = internal constant [28 x i8] c"fb_uc1611.parmtype=pot:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_pot308 = internal constant [65 x i8] c"fb_uc1611.parm=pot:PM[6:0] Bias voltage pot.: 0-63 (default: 16)\00", section ".modinfo", align 1
@__param_str_temp = internal constant [15 x i8] c"fb_uc1611.temp\00", align 1
@temp = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_temp = internal constant %struct.kernel_param { ptr @__param_str_temp, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @temp } }, section "__param", align 4
@__UNIQUE_ID_temptype309 = internal constant [29 x i8] c"fb_uc1611.parmtype=temp:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_temp310 = internal constant [71 x i8] c"fb_uc1611.parm=temp:TC[1:0] Temperature compensation: 0-3 (default: 0)\00", section ".modinfo", align 1
@__param_str_load = internal constant [15 x i8] c"fb_uc1611.load\00", align 1
@load = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_load = internal constant %struct.kernel_param { ptr @__param_str_load, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @load } }, section "__param", align 4
@__UNIQUE_ID_loadtype311 = internal constant [29 x i8] c"fb_uc1611.parmtype=load:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_load312 = internal constant [60 x i8] c"fb_uc1611.parm=load:PC[1:0] Panel Loading: 0-3 (default: 1)\00", section ".modinfo", align 1
@__param_str_pump = internal constant [15 x i8] c"fb_uc1611.pump\00", align 1
@pump = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@__param_pump = internal constant %struct.kernel_param { ptr @__param_str_pump, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @pump } }, section "__param", align 4
@__UNIQUE_ID_pumptype313 = internal constant [29 x i8] c"fb_uc1611.parmtype=pump:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_pump314 = internal constant [61 x i8] c"fb_uc1611.parm=pump:PC[3:2] Pump control: 0,1,3 (default: 3)\00", section ".modinfo", align 1
@fbtft_driver_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @fbtft_driver_probe_spi, ptr @fbtft_driver_remove_spi, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@fbtft_driver_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fbtft_driver_probe_pdev, ptr @fbtft_driver_remove_pdev, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_fb_uc1611__315_328_fbtft_driver_module_init6 = internal global ptr @fbtft_driver_module_init, section ".initcall6.init", align 4
@__exitcall_fbtft_driver_module_exit = internal global ptr @fbtft_driver_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias316 = internal constant [30 x i8] c"fb_uc1611.alias=spi:fb_uc1611\00", section ".modinfo", align 1
@__UNIQUE_ID_alias317 = internal constant [35 x i8] c"fb_uc1611.alias=platform:fb_uc1611\00", section ".modinfo", align 1
@__UNIQUE_ID_alias318 = internal constant [27 x i8] c"fb_uc1611.alias=spi:uc1611\00", section ".modinfo", align 1
@__UNIQUE_ID_alias319 = internal constant [32 x i8] c"fb_uc1611.alias=platform:uc1611\00", section ".modinfo", align 1
@__UNIQUE_ID_description320 = internal constant [62 x i8] c"fb_uc1611.description=FB driver for the UC1611 LCD controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author321 = internal constant [29 x i8] c"fb_uc1611.author=Henri Chain\00", section ".modinfo", align 1
@__UNIQUE_ID_file322 = internal constant [47 x i8] c"fb_uc1611.file=drivers/staging/fbtft/fb_uc1611\00", section ".modinfo", align 1
@__UNIQUE_ID_license323 = internal constant [22 x i8] c"fb_uc1611.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fb_uc1611\00", [22 x i8] zeroinitializer }, align 32
@dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ultrachip,uc1611\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@display = internal global { %struct.fbtft_display, [40 x i8] } { %struct.fbtft_display { i32 240, i32 160, i32 8, i32 0, i32 0, %struct.fbtft_ops { ptr null, ptr null, ptr @write_vmem, ptr null, ptr @set_addr_win, ptr null, ptr null, ptr null, ptr @init_display, ptr @blank, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @set_var, ptr null }, i32 8, i32 40, i32 -1, ptr null, ptr null, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@write_vmem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 302, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unsupported buswidth %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"write_vmem\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/staging/fbtft/fb_uc1611.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@write_vmem._entry_ptr = internal global ptr @write_vmem._entry, section ".printk_index", align 4
@write_vmem._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 307, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"write failed and returned: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@write_vmem._entry_ptr.8 = internal global ptr @write_vmem._entry.6, section ".printk_index", align 4
@init_display._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 76, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not set inverse CS polarity\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_display\00", [19 x i8] zeroinitializer }, align 32
@init_display._entry_ptr = internal global ptr @init_display._entry, section ".printk_index", align 4
@blank._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 139, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"(%s=%s)\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"blank\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@blank._entry_ptr = internal global ptr @blank._entry, section ".printk_index", align 4
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 9]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 90, i64 180, i64 270]
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"ratio\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 35, i32 21 }
@___asan_gen_.23 = private unnamed_addr constant [5 x i8] c"gain\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 39, i32 21 }
@___asan_gen_.26 = private unnamed_addr constant [4 x i8] c"pot\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 43, i32 21 }
@___asan_gen_.29 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 48, i32 21 }
@___asan_gen_.32 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 53, i32 21 }
@___asan_gen_.35 = private unnamed_addr constant [5 x i8] c"pump\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 58, i32 21 }
@___asan_gen_.38 = private unnamed_addr constant [24 x i8] c"fbtft_driver_spi_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [29 x i8] c"fbtft_driver_platform_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"dt_ids\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 328, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 312, i32 29 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 301, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 306, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 75, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [37 x i8] c"../drivers/staging/fbtft/fb_uc1611.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 138, i32 2 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_alias316, ptr @__UNIQUE_ID_alias317, ptr @__UNIQUE_ID_alias318, ptr @__UNIQUE_ID_alias319, ptr @__UNIQUE_ID_author321, ptr @__UNIQUE_ID_description320, ptr @__UNIQUE_ID_file322, ptr @__UNIQUE_ID_gain306, ptr @__UNIQUE_ID_gaintype305, ptr @__UNIQUE_ID_license323, ptr @__UNIQUE_ID_load312, ptr @__UNIQUE_ID_loadtype311, ptr @__UNIQUE_ID_pot308, ptr @__UNIQUE_ID_pottype307, ptr @__UNIQUE_ID_pump314, ptr @__UNIQUE_ID_pumptype313, ptr @__UNIQUE_ID_ratio304, ptr @__UNIQUE_ID_ratiotype303, ptr @__UNIQUE_ID_temp310, ptr @__UNIQUE_ID_temptype309, ptr @__exitcall_fbtft_driver_module_exit, ptr @__initcall__kmod_fb_uc1611__315_328_fbtft_driver_module_init6, ptr @__param_gain, ptr @__param_load, ptr @__param_pot, ptr @__param_pump, ptr @__param_ratio, ptr @__param_temp, ptr @blank._entry, ptr @blank._entry_ptr, ptr @fbtft_driver_module_exit, ptr @init_display._entry, ptr @init_display._entry_ptr, ptr @write_vmem._entry, ptr @write_vmem._entry.6, ptr @write_vmem._entry_ptr, ptr @write_vmem._entry_ptr.8, ptr @ratio, ptr @gain, ptr @pot, ptr @temp, ptr @load, ptr @pump, ptr @fbtft_driver_spi_driver, ptr @fbtft_driver_platform_driver, ptr @.str, ptr @dt_ids, ptr @display, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ratio to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gain to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pot to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pump to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_vmem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_vmem._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_display._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blank._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fbtft_driver_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @fbtft_driver_spi_driver, i32 0, i32 4)) #4
  tail call void @platform_driver_unregister(ptr noundef nonnull @fbtft_driver_platform_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @fbtft_driver_spi_driver) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fbtft_driver_platform_driver, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @fbtft_driver_spi_driver, i32 0, i32 4)) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_probe_spi(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fbtft_probe_common(ptr noundef nonnull @display, ptr noundef %spi, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_remove_spi(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @fbtft_remove_common(ptr noundef %spi, ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fbtft_probe_common(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_vmem(ptr noundef %par, i32 noundef %offset, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %2 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %txbuf = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 6
  %5 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %txbuf, align 4
  %line_length4 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 9
  %7 = ptrtoint ptr %line_length4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %line_length4, align 4
  %div = udiv i32 %offset, %8
  %add = add i32 %offset, -1
  %sub = add i32 %add, %len
  %div5 = udiv i32 %sub, %8
  %pdata = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 3
  %9 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdata, align 4
  %buswidth = getelementptr inbounds %struct.fbtft_display, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %buswidth to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buswidth, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %sw.epilog133.thread [
    i32 8, label %sw.bb
    i32 9, label %sw.bb54
  ]

sw.bb:                                            ; preds = %entry
  %rotate = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 26
  %14 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rotate, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %15, label %sw.default [
    i32 90, label %sw.bb.sw.bb7_crit_edge
    i32 270, label %sw.bb.sw.bb7_crit_edge289
  ]

sw.bb.sw.bb7_crit_edge289:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb7

sw.bb.sw.bb7_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb7

sw.bb7:                                           ; preds = %sw.bb.sw.bb7_crit_edge, %sw.bb.sw.bb7_crit_edge289
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div5)
  %cmp.not266 = icmp sgt i32 %div, %div5
  br i1 %cmp.not266, label %sw.bb7.sw.epilog_crit_edge, label %for.cond8.preheader.lr.ph

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

for.cond8.preheader.lr.ph:                        ; preds = %sw.bb7
  %mul = mul i32 %div, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp9260 = icmp sgt i32 %8, 0
  br label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.inc19.for.cond8.preheader_crit_edge, %for.cond8.preheader.lr.ph
  %i.0269 = phi i32 [ %mul, %for.cond8.preheader.lr.ph ], [ %i.1.lcssa, %for.inc19.for.cond8.preheader_crit_edge ]
  %y.0268 = phi i32 [ %div, %for.cond8.preheader.lr.ph ], [ %inc, %for.inc19.for.cond8.preheader_crit_edge ]
  %buf8.0267 = phi ptr [ %6, %for.cond8.preheader.lr.ph ], [ %buf8.1.lcssa, %for.inc19.for.cond8.preheader_crit_edge ]
  br i1 %cmp9260, label %for.cond8.preheader.for.body10_crit_edge, label %for.cond8.preheader.for.inc19_crit_edge

for.cond8.preheader.for.inc19_crit_edge:          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc19

for.cond8.preheader.for.body10_crit_edge:         ; preds = %for.cond8.preheader
  br label %for.body10

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.cond8.preheader.for.body10_crit_edge
  %i.1263 = phi i32 [ %add17, %for.body10.for.body10_crit_edge ], [ %i.0269, %for.cond8.preheader.for.body10_crit_edge ]
  %x.0262 = phi i32 [ %add18, %for.body10.for.body10_crit_edge ], [ 0, %for.cond8.preheader.for.body10_crit_edge ]
  %buf8.1261 = phi ptr [ %incdec.ptr, %for.body10.for.body10_crit_edge ], [ %buf8.0267, %for.cond8.preheader.for.body10_crit_edge ]
  %arrayidx = getelementptr i8, ptr %4, i32 %i.1263
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %19 = lshr i8 %18, 4
  %20 = ptrtoint ptr %buf8.1261 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %buf8.1261, align 1
  %add12 = add i32 %i.1263, 1
  %arrayidx13 = getelementptr i8, ptr %4, i32 %add12
  %21 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx13, align 1
  %23 = and i8 %22, -16
  %or234 = or i8 %23, %19
  store i8 %or234, ptr %buf8.1261, align 1
  %incdec.ptr = getelementptr i8, ptr %buf8.1261, i32 1
  %add17 = add i32 %i.1263, 2
  %add18 = add i32 %x.0262, 2
  %cmp9 = icmp slt i32 %add18, %8
  br i1 %cmp9, label %for.body10.for.body10_crit_edge, label %for.body10.for.inc19_crit_edge

for.body10.for.inc19_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc19

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body10

for.inc19:                                        ; preds = %for.body10.for.inc19_crit_edge, %for.cond8.preheader.for.inc19_crit_edge
  %buf8.1.lcssa = phi ptr [ %buf8.0267, %for.cond8.preheader.for.inc19_crit_edge ], [ %incdec.ptr, %for.body10.for.inc19_crit_edge ]
  %i.1.lcssa = phi i32 [ %i.0269, %for.cond8.preheader.for.inc19_crit_edge ], [ %add17, %for.body10.for.inc19_crit_edge ]
  %inc = add i32 %y.0268, 1
  %cmp.not = icmp sgt i32 %inc, %div5
  br i1 %cmp.not, label %for.inc19.sw.epilog_crit_edge, label %for.inc19.for.cond8.preheader_crit_edge

for.inc19.for.cond8.preheader_crit_edge:          ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond8.preheader

for.inc19.sw.epilog_crit_edge:                    ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  %and21 = and i32 %div, 254
  call void @__sanitizer_cov_trace_cmp4(i32 %and21, i32 %div5)
  %cmp24.not276 = icmp sgt i32 %and21, %div5
  br i1 %cmp24.not276, label %sw.default.sw.epilog_crit_edge, label %for.cond27.preheader.lr.ph

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

for.cond27.preheader.lr.ph:                       ; preds = %sw.default
  %mul22 = mul i32 %and21, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp28270 = icmp sgt i32 %8, 0
  br label %for.cond27.preheader

for.cond27.preheader:                             ; preds = %for.end46.for.cond27.preheader_crit_edge, %for.cond27.preheader.lr.ph
  %i.2279 = phi i32 [ %mul22, %for.cond27.preheader.lr.ph ], [ %add47, %for.end46.for.cond27.preheader_crit_edge ]
  %y.1278 = phi i32 [ %and21, %for.cond27.preheader.lr.ph ], [ %add49, %for.end46.for.cond27.preheader_crit_edge ]
  %buf8.2277 = phi ptr [ %6, %for.cond27.preheader.lr.ph ], [ %buf8.3.lcssa, %for.end46.for.cond27.preheader_crit_edge ]
  br i1 %cmp28270, label %for.cond27.preheader.for.body30_crit_edge, label %for.cond27.preheader.for.end46_crit_edge

for.cond27.preheader.for.end46_crit_edge:         ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end46

for.cond27.preheader.for.body30_crit_edge:        ; preds = %for.cond27.preheader
  br label %for.body30

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %for.cond27.preheader.for.body30_crit_edge
  %i.3273 = phi i32 [ %inc43, %for.body30.for.body30_crit_edge ], [ %i.2279, %for.cond27.preheader.for.body30_crit_edge ]
  %x.1272 = phi i32 [ %inc45, %for.body30.for.body30_crit_edge ], [ 0, %for.cond27.preheader.for.body30_crit_edge ]
  %buf8.3271 = phi ptr [ %incdec.ptr42, %for.body30.for.body30_crit_edge ], [ %buf8.2277, %for.cond27.preheader.for.body30_crit_edge ]
  %arrayidx31 = getelementptr i8, ptr %4, i32 %i.3273
  %24 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx31, align 1
  %26 = lshr i8 %25, 4
  %27 = ptrtoint ptr %buf8.3271 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %buf8.3271, align 1
  %add35 = add i32 %i.3273, %8
  %arrayidx36 = getelementptr i8, ptr %4, i32 %add35
  %28 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx36, align 1
  %30 = and i8 %29, -16
  %or40235 = or i8 %30, %26
  store i8 %or40235, ptr %buf8.3271, align 1
  %incdec.ptr42 = getelementptr i8, ptr %buf8.3271, i32 1
  %inc43 = add i32 %i.3273, 1
  %inc45 = add nuw nsw i32 %x.1272, 1
  %exitcond282.not = icmp eq i32 %inc45, %8
  br i1 %exitcond282.not, label %for.body30.for.end46_crit_edge, label %for.body30.for.body30_crit_edge

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body30

for.body30.for.end46_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end46

for.end46:                                        ; preds = %for.body30.for.end46_crit_edge, %for.cond27.preheader.for.end46_crit_edge
  %buf8.3.lcssa = phi ptr [ %buf8.2277, %for.cond27.preheader.for.end46_crit_edge ], [ %incdec.ptr42, %for.body30.for.end46_crit_edge ]
  %i.3.lcssa = phi i32 [ %i.2279, %for.cond27.preheader.for.end46_crit_edge ], [ %inc43, %for.body30.for.end46_crit_edge ]
  %add47 = add i32 %i.3.lcssa, %8
  %add49 = add i32 %y.1278, 2
  %cmp24.not = icmp sgt i32 %add49, %div5
  br i1 %cmp24.not, label %for.end46.sw.epilog_crit_edge, label %for.end46.for.cond27.preheader_crit_edge

for.end46.for.cond27.preheader_crit_edge:         ; preds = %for.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond27.preheader

for.end46.sw.epilog_crit_edge:                    ; preds = %for.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end46.sw.epilog_crit_edge, %sw.default.sw.epilog_crit_edge, %for.inc19.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge
  %dc = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 1
  %31 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dc, align 4
  tail call void @gpiod_set_value(ptr noundef %32, i32 noundef 1) #4
  %fbtftops = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9
  %33 = ptrtoint ptr %fbtftops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fbtftops, align 4
  %35 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %txbuf, align 4
  %div53233 = lshr i32 %len, 1
  %call = tail call i32 %34(ptr noundef %par, ptr noundef %36, i32 noundef %div53233) #4
  br label %sw.epilog133

sw.bb54:                                          ; preds = %entry
  %rotate57 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 26
  %37 = ptrtoint ptr %rotate57 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rotate57, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %38, label %sw.default89 [
    i32 90, label %sw.bb54.sw.bb58_crit_edge
    i32 270, label %sw.bb54.sw.bb58_crit_edge290
  ]

sw.bb54.sw.bb58_crit_edge290:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb58

sw.bb54.sw.bb58_crit_edge:                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb58

sw.bb58:                                          ; preds = %sw.bb54.sw.bb58_crit_edge, %sw.bb54.sw.bb58_crit_edge290
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div5)
  %cmp61.not246 = icmp sgt i32 %div, %div5
  br i1 %cmp61.not246, label %sw.bb58.sw.epilog122_crit_edge, label %for.cond64.preheader.lr.ph

sw.bb58.sw.epilog122_crit_edge:                   ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog122

for.cond64.preheader.lr.ph:                       ; preds = %sw.bb58
  %mul59 = mul i32 %div, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp65241 = icmp sgt i32 %8, 0
  br label %for.cond64.preheader

for.cond64.preheader:                             ; preds = %for.inc86.for.cond64.preheader_crit_edge, %for.cond64.preheader.lr.ph
  %i.4249 = phi i32 [ %mul59, %for.cond64.preheader.lr.ph ], [ %i.5.lcssa, %for.inc86.for.cond64.preheader_crit_edge ]
  %y.2248 = phi i32 [ %div, %for.cond64.preheader.lr.ph ], [ %inc87, %for.inc86.for.cond64.preheader_crit_edge ]
  %buf16.0247 = phi ptr [ %6, %for.cond64.preheader.lr.ph ], [ %buf16.1.lcssa, %for.inc86.for.cond64.preheader_crit_edge ]
  br i1 %cmp65241, label %for.cond64.preheader.for.body67_crit_edge, label %for.cond64.preheader.for.inc86_crit_edge

for.cond64.preheader.for.inc86_crit_edge:         ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc86

for.cond64.preheader.for.body67_crit_edge:        ; preds = %for.cond64.preheader
  br label %for.body67

for.body67:                                       ; preds = %for.body67.for.body67_crit_edge, %for.cond64.preheader.for.body67_crit_edge
  %i.5244 = phi i32 [ %add82, %for.body67.for.body67_crit_edge ], [ %i.4249, %for.cond64.preheader.for.body67_crit_edge ]
  %x.2243 = phi i32 [ %add84, %for.body67.for.body67_crit_edge ], [ 0, %for.cond64.preheader.for.body67_crit_edge ]
  %buf16.1242 = phi ptr [ %incdec.ptr81, %for.body67.for.body67_crit_edge ], [ %buf16.0247, %for.cond64.preheader.for.body67_crit_edge ]
  %40 = ptrtoint ptr %buf16.1242 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 256, ptr %buf16.1242, align 2
  %arrayidx68 = getelementptr i8, ptr %4, i32 %i.5244
  %41 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx68, align 1
  %43 = lshr i8 %42, 4
  %44 = zext i8 %43 to i16
  %or72 = or i16 %44, 256
  store i16 %or72, ptr %buf16.1242, align 2
  %add74 = add i32 %i.5244, 1
  %arrayidx75 = getelementptr i8, ptr %4, i32 %add74
  %45 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx75, align 1
  %47 = and i8 %46, -16
  %and77 = zext i8 %47 to i16
  %or79 = or i16 %or72, %and77
  store i16 %or79, ptr %buf16.1242, align 2
  %incdec.ptr81 = getelementptr i16, ptr %buf16.1242, i32 1
  %add82 = add i32 %i.5244, 2
  %add84 = add i32 %x.2243, 2
  %cmp65 = icmp slt i32 %add84, %8
  br i1 %cmp65, label %for.body67.for.body67_crit_edge, label %for.body67.for.inc86_crit_edge

for.body67.for.inc86_crit_edge:                   ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc86

for.body67.for.body67_crit_edge:                  ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body67

for.inc86:                                        ; preds = %for.body67.for.inc86_crit_edge, %for.cond64.preheader.for.inc86_crit_edge
  %buf16.1.lcssa = phi ptr [ %buf16.0247, %for.cond64.preheader.for.inc86_crit_edge ], [ %incdec.ptr81, %for.body67.for.inc86_crit_edge ]
  %i.5.lcssa = phi i32 [ %i.4249, %for.cond64.preheader.for.inc86_crit_edge ], [ %add82, %for.body67.for.inc86_crit_edge ]
  %inc87 = add i32 %y.2248, 1
  %cmp61.not = icmp sgt i32 %inc87, %div5
  br i1 %cmp61.not, label %for.inc86.sw.epilog122_crit_edge, label %for.inc86.for.cond64.preheader_crit_edge

for.inc86.for.cond64.preheader_crit_edge:         ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond64.preheader

for.inc86.sw.epilog122_crit_edge:                 ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog122

sw.default89:                                     ; preds = %sw.bb54
  %and90 = and i32 %div, 254
  call void @__sanitizer_cov_trace_cmp4(i32 %and90, i32 %div5)
  %cmp93.not256 = icmp sgt i32 %and90, %div5
  br i1 %cmp93.not256, label %sw.default89.sw.epilog122_crit_edge, label %for.cond96.preheader.lr.ph

sw.default89.sw.epilog122_crit_edge:              ; preds = %sw.default89
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog122

for.cond96.preheader.lr.ph:                       ; preds = %sw.default89
  %mul91 = mul i32 %and90, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp97250 = icmp sgt i32 %8, 0
  br label %for.cond96.preheader

for.cond96.preheader:                             ; preds = %for.end117.for.cond96.preheader_crit_edge, %for.cond96.preheader.lr.ph
  %i.6259 = phi i32 [ %mul91, %for.cond96.preheader.lr.ph ], [ %add118, %for.end117.for.cond96.preheader_crit_edge ]
  %y.3258 = phi i32 [ %and90, %for.cond96.preheader.lr.ph ], [ %add120, %for.end117.for.cond96.preheader_crit_edge ]
  %buf16.2257 = phi ptr [ %6, %for.cond96.preheader.lr.ph ], [ %buf16.3.lcssa, %for.end117.for.cond96.preheader_crit_edge ]
  br i1 %cmp97250, label %for.cond96.preheader.for.body99_crit_edge, label %for.cond96.preheader.for.end117_crit_edge

for.cond96.preheader.for.end117_crit_edge:        ; preds = %for.cond96.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end117

for.cond96.preheader.for.body99_crit_edge:        ; preds = %for.cond96.preheader
  br label %for.body99

for.body99:                                       ; preds = %for.body99.for.body99_crit_edge, %for.cond96.preheader.for.body99_crit_edge
  %i.7253 = phi i32 [ %inc114, %for.body99.for.body99_crit_edge ], [ %i.6259, %for.cond96.preheader.for.body99_crit_edge ]
  %x.3252 = phi i32 [ %inc116, %for.body99.for.body99_crit_edge ], [ 0, %for.cond96.preheader.for.body99_crit_edge ]
  %buf16.3251 = phi ptr [ %incdec.ptr113, %for.body99.for.body99_crit_edge ], [ %buf16.2257, %for.cond96.preheader.for.body99_crit_edge ]
  %48 = ptrtoint ptr %buf16.3251 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 256, ptr %buf16.3251, align 2
  %arrayidx100 = getelementptr i8, ptr %4, i32 %i.7253
  %49 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx100, align 1
  %51 = lshr i8 %50, 4
  %52 = zext i8 %51 to i16
  %or104 = or i16 %52, 256
  store i16 %or104, ptr %buf16.3251, align 2
  %add106 = add i32 %i.7253, %8
  %arrayidx107 = getelementptr i8, ptr %4, i32 %add106
  %53 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx107, align 1
  %55 = and i8 %54, -16
  %and109 = zext i8 %55 to i16
  %or111 = or i16 %or104, %and109
  store i16 %or111, ptr %buf16.3251, align 2
  %incdec.ptr113 = getelementptr i16, ptr %buf16.3251, i32 1
  %inc114 = add i32 %i.7253, 1
  %inc116 = add nuw nsw i32 %x.3252, 1
  %exitcond.not = icmp eq i32 %inc116, %8
  br i1 %exitcond.not, label %for.body99.for.end117_crit_edge, label %for.body99.for.body99_crit_edge

for.body99.for.body99_crit_edge:                  ; preds = %for.body99
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body99

for.body99.for.end117_crit_edge:                  ; preds = %for.body99
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end117

for.end117:                                       ; preds = %for.body99.for.end117_crit_edge, %for.cond96.preheader.for.end117_crit_edge
  %buf16.3.lcssa = phi ptr [ %buf16.2257, %for.cond96.preheader.for.end117_crit_edge ], [ %incdec.ptr113, %for.body99.for.end117_crit_edge ]
  %i.7.lcssa = phi i32 [ %i.6259, %for.cond96.preheader.for.end117_crit_edge ], [ %inc114, %for.body99.for.end117_crit_edge ]
  %add118 = add i32 %i.7.lcssa, %8
  %add120 = add i32 %y.3258, 2
  %cmp93.not = icmp sgt i32 %add120, %div5
  br i1 %cmp93.not, label %for.end117.sw.epilog122_crit_edge, label %for.end117.for.cond96.preheader_crit_edge

for.end117.for.cond96.preheader_crit_edge:        ; preds = %for.end117
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond96.preheader

for.end117.sw.epilog122_crit_edge:                ; preds = %for.end117
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog122

sw.epilog122:                                     ; preds = %for.end117.sw.epilog122_crit_edge, %sw.default89.sw.epilog122_crit_edge, %for.inc86.sw.epilog122_crit_edge, %sw.bb58.sw.epilog122_crit_edge
  %fbtftops123 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9
  %56 = ptrtoint ptr %fbtftops123 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fbtftops123, align 4
  %58 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %txbuf, align 4
  %call127 = tail call i32 %57(ptr noundef %par, ptr noundef %59, i32 noundef %len) #4
  br label %sw.epilog133

sw.epilog133.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %device = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 21
  %60 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.1, i32 noundef %12) #7
  br label %if.end

sw.epilog133:                                     ; preds = %sw.epilog122, %sw.epilog
  %ret.0 = phi i32 [ %call127, %sw.epilog122 ], [ %call, %sw.epilog ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp134 = icmp slt i32 %ret.0, 0
  br i1 %cmp134, label %do.end138, label %sw.epilog133.if.end_crit_edge

sw.epilog133.if.end_crit_edge:                    ; preds = %sw.epilog133
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end138:                                        ; preds = %sw.epilog133
  call void @__sanitizer_cov_trace_pc() #6
  %62 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %info, align 8
  %device140 = getelementptr inbounds %struct.fb_info, ptr %63, i32 0, i32 21
  %64 = ptrtoint ptr %device140 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %device140, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.7, i32 noundef %ret.0) #7
  br label %if.end

if.end:                                           ; preds = %do.end138, %sw.epilog133.if.end_crit_edge, %sw.epilog133.thread
  %ret.0238 = phi i32 [ 0, %sw.epilog133.thread ], [ %ret.0, %do.end138 ], [ %ret.0, %sw.epilog133.if.end_crit_edge ]
  ret i32 %ret.0238
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_addr_win(ptr noundef %par, i32 noundef %xs, i32 noundef %ys, i32 noundef %xe, i32 noundef %ye) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %rotate = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 26
  %2 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rotate, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %3, label %sw.default [
    i32 90, label %entry.sw.epilog_crit_edge
    i32 270, label %entry.sw.epilog_crit_edge56
  ]

entry.sw.epilog_crit_edge56:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge56
  %xs.sink54 = phi i32 [ %xs, %sw.default ], [ %ys, %entry.sw.epilog_crit_edge ], [ %ys, %entry.sw.epilog_crit_edge56 ]
  %ys.sink51 = phi i32 [ %ys, %sw.default ], [ %xs, %entry.sw.epilog_crit_edge ], [ %xs, %entry.sw.epilog_crit_edge56 ]
  %write_register13 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %5 = ptrtoint ptr %write_register13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_register13, align 4
  %and14 = and i32 %xs.sink54, 15
  tail call void (ptr, i32, ...) %6(ptr noundef %par, i32 noundef 1, i32 noundef %and14) #4
  %7 = ptrtoint ptr %write_register13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_register13, align 4
  %shr17 = ashr i32 %xs.sink54, 4
  %or18 = or i32 %shr17, 16
  tail call void (ptr, i32, ...) %8(ptr noundef %par, i32 noundef 1, i32 noundef %or18) #4
  %9 = ptrtoint ptr %write_register13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_register13, align 4
  %11 = lshr i32 %ys.sink51, 1
  %and22 = and i32 %11, 15
  %or23 = or i32 %and22, 96
  tail call void (ptr, i32, ...) %10(ptr noundef %par, i32 noundef 1, i32 noundef %or23) #4
  %12 = ptrtoint ptr %write_register13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_register13, align 4
  %shr26 = ashr i32 %ys.sink51, 5
  %or27 = or i32 %shr26, 112
  tail call void (ptr, i32, ...) %13(ptr noundef %par, i32 noundef 1, i32 noundef %or27) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_display(ptr noundef %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 8
  %mode = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 8
  %xor = xor i32 %3, 4
  store i32 %xor, ptr %mode, align 8
  %4 = load ptr, ptr %par, align 8
  %call = tail call i32 @spi_setup(ptr noundef %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 21
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.9) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %9 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %10(ptr noundef %par, i32 noundef 1, i32 noundef 226) #4
  %11 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_register, align 4
  %13 = load i32, ptr @ratio, align 4
  %and = and i32 %13, 3
  %or = or i32 %and, 232
  tail call void (ptr, i32, ...) %12(ptr noundef %par, i32 noundef 1, i32 noundef %or) #4
  %14 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %15(ptr noundef %par, i32 noundef 1, i32 noundef 129) #4
  %16 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_register, align 4
  %18 = load i32, ptr @gain, align 4
  %and8 = shl i32 %18, 6
  %shl = and i32 %and8, 192
  %19 = load i32, ptr @pot, align 4
  %and9 = and i32 %19, 63
  %or10 = or i32 %shl, %and9
  tail call void (ptr, i32, ...) %17(ptr noundef %par, i32 noundef 1, i32 noundef %or10) #4
  %20 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_register, align 4
  %22 = load i32, ptr @temp, align 4
  %and13 = and i32 %22, 3
  %or14 = or i32 %and13, 36
  tail call void (ptr, i32, ...) %21(ptr noundef %par, i32 noundef 1, i32 noundef %or14) #4
  %23 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_register, align 4
  %25 = load i32, ptr @load, align 4
  %and17 = and i32 %25, 3
  %or18 = or i32 %and17, 40
  tail call void (ptr, i32, ...) %24(ptr noundef %par, i32 noundef 1, i32 noundef %or18) #4
  %26 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_register, align 4
  %28 = load i32, ptr @pump, align 4
  %and21 = and i32 %28, 3
  %or22 = or i32 %and21, 44
  tail call void (ptr, i32, ...) %27(ptr noundef %par, i32 noundef 1, i32 noundef %or22) #4
  %29 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %30(ptr noundef %par, i32 noundef 1, i32 noundef 167) #4
  %31 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %32(ptr noundef %par, i32 noundef 1, i32 noundef 210) #4
  %33 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %34(ptr noundef %par, i32 noundef 1, i32 noundef 175) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blank(ptr noundef %par, i1 noundef zeroext %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 16
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !106

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %cond = select i1 %on, ptr @.str.14, ptr @.str.15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond) #7
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %6 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_register, align 4
  %. = select i1 %on, i32 168, i32 175
  tail call void (ptr, i32, ...) %7(ptr noundef %par, i32 noundef 1, i32 noundef %.) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_var(ptr noundef %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %grayscale = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 7
  %2 = ptrtoint ptr %grayscale to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %grayscale, align 4
  %3 = load ptr, ptr %info, align 8
  %red = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 6, i32 8
  %4 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %red, align 4
  %5 = load ptr, ptr %info, align 8
  %length = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 8, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %length, align 4
  %7 = load ptr, ptr %info, align 8
  %green = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 6, i32 9
  %8 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %green, align 4
  %9 = load ptr, ptr %info, align 8
  %length12 = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 6, i32 9, i32 1
  %10 = ptrtoint ptr %length12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %length12, align 4
  %11 = load ptr, ptr %info, align 8
  %blue = getelementptr inbounds %struct.fb_info, ptr %11, i32 0, i32 6, i32 10
  %12 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %blue, align 4
  %13 = load ptr, ptr %info, align 8
  %length19 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 10, i32 1
  %14 = ptrtoint ptr %length19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %length19, align 4
  %15 = load ptr, ptr %info, align 8
  %transp = getelementptr inbounds %struct.fb_info, ptr %15, i32 0, i32 6, i32 11
  %16 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %transp, align 4
  %17 = load ptr, ptr %info, align 8
  %length26 = getelementptr inbounds %struct.fb_info, ptr %17, i32 0, i32 6, i32 11, i32 1
  %18 = ptrtoint ptr %length26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %length26, align 4
  %19 = load ptr, ptr %info, align 8
  %rotate = getelementptr inbounds %struct.fb_info, ptr %19, i32 0, i32 6, i32 26
  %20 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rotate, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %21, label %sw.default [
    i32 90, label %entry.sw.epilog_crit_edge
    i32 180, label %sw.bb31
    i32 270, label %sw.bb36
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb36, %sw.bb31, %entry.sw.epilog_crit_edge
  %.sink71 = phi i32 [ 137, %sw.default ], [ 139, %sw.bb36 ], [ 137, %sw.bb31 ], [ 139, %entry.sw.epilog_crit_edge ]
  %.sink = phi i32 [ 194, %sw.default ], [ 198, %sw.bb36 ], [ 196, %sw.bb31 ], [ 192, %entry.sw.epilog_crit_edge ]
  %write_register42 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %23 = ptrtoint ptr %write_register42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_register42, align 4
  tail call void (ptr, i32, ...) %24(ptr noundef %par, i32 noundef 1, i32 noundef %.sink71) #4
  %25 = ptrtoint ptr %write_register42 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_register42, align 4
  tail call void (ptr, i32, ...) %26(ptr noundef %par, i32 noundef 1, i32 noundef %.sink) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbtft_remove_common(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_probe_pdev(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fbtft_probe_common(ptr noundef nonnull @display, ptr noundef null, ptr noundef %pdev) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_remove_pdev(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @fbtft_remove_common(ptr noundef %dev, ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !39, !41, !43, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !61, !63, !64, !66, !67, !68, !70, !72, !73, !74, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !93, !94, !95, !96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__param_ratio, !1, !"__param_ratio", i1 false, i1 false}
!1 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_ratiotype303, !1, !"__UNIQUE_ID_ratiotype303", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_ratio304, !4, !"__UNIQUE_ID_ratio304", i1 false, i1 false}
!4 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 37, i32 1}
!5 = !{ptr @__param_gain, !6, !"__param_gain", i1 false, i1 false}
!6 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 40, i32 1}
!7 = !{ptr @__UNIQUE_ID_gaintype305, !6, !"__UNIQUE_ID_gaintype305", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_gain306, !9, !"__UNIQUE_ID_gain306", i1 false, i1 false}
!9 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 41, i32 1}
!10 = !{ptr @__param_pot, !11, !"__param_pot", i1 false, i1 false}
!11 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 44, i32 1}
!12 = !{ptr @__UNIQUE_ID_pottype307, !11, !"__UNIQUE_ID_pottype307", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_pot308, !14, !"__UNIQUE_ID_pot308", i1 false, i1 false}
!14 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 45, i32 1}
!15 = !{ptr @__param_temp, !16, !"__param_temp", i1 false, i1 false}
!16 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 49, i32 1}
!17 = !{ptr @__UNIQUE_ID_temptype309, !16, !"__UNIQUE_ID_temptype309", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_temp310, !19, !"__UNIQUE_ID_temp310", i1 false, i1 false}
!19 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 50, i32 1}
!20 = !{ptr @__param_load, !21, !"__param_load", i1 false, i1 false}
!21 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 54, i32 1}
!22 = !{ptr @__UNIQUE_ID_loadtype311, !21, !"__UNIQUE_ID_loadtype311", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_load312, !24, !"__UNIQUE_ID_load312", i1 false, i1 false}
!24 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 55, i32 1}
!25 = !{ptr @__param_pump, !26, !"__param_pump", i1 false, i1 false}
!26 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 59, i32 1}
!27 = !{ptr @__UNIQUE_ID_pumptype313, !26, !"__UNIQUE_ID_pumptype313", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_pump314, !29, !"__UNIQUE_ID_pump314", i1 false, i1 false}
!29 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 60, i32 1}
!30 = !{ptr @__initcall__kmod_fb_uc1611__315_328_fbtft_driver_module_init6, !31, !"__initcall__kmod_fb_uc1611__315_328_fbtft_driver_module_init6", i1 false, i1 false}
!31 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 328, i32 1}
!32 = !{ptr @__exitcall_fbtft_driver_module_exit, !31, !"__exitcall_fbtft_driver_module_exit", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_alias316, !34, !"__UNIQUE_ID_alias316", i1 false, i1 false}
!34 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 330, i32 1}
!35 = !{ptr @__UNIQUE_ID_alias317, !36, !"__UNIQUE_ID_alias317", i1 false, i1 false}
!36 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 331, i32 1}
!37 = !{ptr @__UNIQUE_ID_alias318, !38, !"__UNIQUE_ID_alias318", i1 false, i1 false}
!38 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 332, i32 1}
!39 = !{ptr @__UNIQUE_ID_alias319, !40, !"__UNIQUE_ID_alias319", i1 false, i1 false}
!40 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 333, i32 1}
!41 = !{ptr @__UNIQUE_ID_description320, !42, !"__UNIQUE_ID_description320", i1 false, i1 false}
!42 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 335, i32 1}
!43 = !{ptr @__UNIQUE_ID_author321, !44, !"__UNIQUE_ID_author321", i1 false, i1 false}
!44 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 336, i32 1}
!45 = !{ptr @__UNIQUE_ID_file322, !46, !"__UNIQUE_ID_file322", i1 false, i1 false}
!46 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 337, i32 1}
!47 = !{ptr @__UNIQUE_ID_license323, !46, !"__UNIQUE_ID_license323", i1 false, i1 false}
!48 = !{ptr @temp, !49, !"temp", i1 false, i1 false}
!49 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 48, i32 21}
!50 = !{ptr @__param_str_ratio, !1, !"__param_str_ratio", i1 false, i1 false}
!51 = !{ptr @ratio, !52, !"ratio", i1 false, i1 false}
!52 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 35, i32 21}
!53 = !{ptr @__param_str_gain, !6, !"__param_str_gain", i1 false, i1 false}
!54 = !{ptr @gain, !55, !"gain", i1 false, i1 false}
!55 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 39, i32 21}
!56 = !{ptr @__param_str_pot, !11, !"__param_str_pot", i1 false, i1 false}
!57 = !{ptr @pot, !58, !"pot", i1 false, i1 false}
!58 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 43, i32 21}
!59 = !{ptr @__param_str_temp, !16, !"__param_str_temp", i1 false, i1 false}
!60 = !{ptr @__param_str_load, !21, !"__param_str_load", i1 false, i1 false}
!61 = !{ptr @load, !62, !"load", i1 false, i1 false}
!62 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 53, i32 21}
!63 = !{ptr @__param_str_pump, !26, !"__param_str_pump", i1 false, i1 false}
!64 = !{ptr @pump, !65, !"pump", i1 false, i1 false}
!65 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 58, i32 21}
!66 = !{ptr @.str, !31, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @fbtft_driver_spi_driver, !31, !"fbtft_driver_spi_driver", i1 false, i1 false}
!68 = !{ptr @display, !69, !"display", i1 false, i1 false}
!69 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 312, i32 29}
!70 = !{ptr @.str.1, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 301, i32 3}
!72 = !{ptr @.str.2, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.3, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.4, !71, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.5, !71, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @write_vmem._entry, !71, !"_entry", i1 false, i1 false}
!77 = !{ptr @write_vmem._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.7, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 306, i32 3}
!80 = !{ptr @write_vmem._entry.6, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @write_vmem._entry_ptr.8, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.9, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 75, i32 3}
!84 = !{ptr @.str.10, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @init_display._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @init_display._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.11, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/staging/fbtft/fb_uc1611.c", i32 138, i32 2}
!89 = !{ptr @.str.12, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.13, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @blank._entry, !88, !"_entry", i1 false, i1 false}
!92 = !{ptr @blank._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.14, !88, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.15, !88, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @dt_ids, !31, !"dt_ids", i1 false, i1 false}
!96 = !{ptr @fbtft_driver_platform_driver, !31, !"fbtft_driver_platform_driver", i1 false, i1 false}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"branch_weights", i32 2000, i32 1}
