; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/aty/radeon_base.c_pt.bc'
source_filename = "../drivers/video/fbdev/aty/radeon_base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.88 = type { i32, i32 }
%struct.radeonfb_info = type { ptr, %struct.radeon_regs, %struct.radeon_regs, [50 x i8], i32, i32, ptr, ptr, i32, ptr, ptr, i32, [16 x i32], [256 x %struct.anon.80], i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.panel_info, i32, ptr, ptr, i32, i32, ptr, i32, %struct.pll_info, i32, [100 x i32], i32, i32, i32, i32, i32, ptr, %struct.spinlock, %struct.timer_list, i32, [4 x %struct.radeon_i2c_chan] }
%struct.radeon_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.80 = type { i8, i8, i8, i8 }
%struct.panel_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pll_info = type { i32, i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.radeon_i2c_chan = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_algo_bit_data }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.79, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.79 = type { ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.78, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.78 = type { ptr }
%struct.apertures_struct = type { i32, [0 x %struct.aperture] }
%struct.aperture = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@_radeon_fifo_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013radeonfb: FIFO Timeout !\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"_radeon_fifo_wait\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/video/fbdev/aty/radeon_base.c\00", [58 x i8] zeroinitializer }, align 32
@_radeon_fifo_wait._entry_ptr = internal global ptr @_radeon_fifo_wait._entry, section ".printk_index", align 4
@radeon_engine_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013radeonfb: Flush Timeout !\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"radeon_engine_flush\00", [44 x i8] zeroinitializer }, align 32
@radeon_engine_flush._entry_ptr = internal global ptr @radeon_engine_flush._entry, section ".printk_index", align 4
@_radeon_engine_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013radeonfb: Idle Timeout !\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"_radeon_engine_idle\00", [44 x i8] zeroinitializer }, align 32
@_radeon_engine_idle._entry_ptr = internal global ptr @_radeon_engine_idle._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nomodeset = internal global { i8, [31 x i8] } zeroinitializer, align 32
@radeonfb_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.7, ptr @radeonfb_pci_table, ptr @radeonfb_pci_register, ptr @radeonfb_pci_unregister, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @radeonfb_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_radeonfb__323_2633_radeonfb_init6 = internal global ptr @radeonfb_init, section ".initcall6.init", align 4
@__exitcall_radeonfb_exit = internal global ptr @radeonfb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author324 = internal constant [26 x i8] c"radeonfb.author=Ani Joshi\00", section ".modinfo", align 1
@__UNIQUE_ID_description325 = internal constant [63 x i8] c"radeonfb.description=framebuffer driver for ATI Radeon chipset\00", section ".modinfo", align 1
@__UNIQUE_ID_file326 = internal constant [47 x i8] c"radeonfb.file=drivers/video/fbdev/aty/radeonfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license327 = internal constant [21 x i8] c"radeonfb.license=GPL\00", section ".modinfo", align 1
@__param_str_noaccel = internal constant [17 x i8] c"radeonfb.noaccel\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@noaccel = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_noaccel = internal constant %struct.kernel_param { ptr @__param_str_noaccel, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @noaccel } }, section "__param", align 4
@__UNIQUE_ID_noacceltype328 = internal constant [31 x i8] c"radeonfb.parmtype=noaccel:bool\00", section ".modinfo", align 1
@__param_str_default_dynclk = internal constant [24 x i8] c"radeonfb.default_dynclk\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@default_dynclk = internal global { i32, [28 x i8] } { i32 -2, [28 x i8] zeroinitializer }, align 32
@__param_default_dynclk = internal constant %struct.kernel_param { ptr @__param_str_default_dynclk, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @default_dynclk } }, section "__param", align 4
@__UNIQUE_ID_default_dynclktype329 = internal constant [37 x i8] c"radeonfb.parmtype=default_dynclk:int\00", section ".modinfo", align 1
@__UNIQUE_ID_default_dynclk330 = internal constant [89 x i8] c"radeonfb.parm=default_dynclk:int: -2=enable on mobility only,-1=do not change,0=off,1=on\00", section ".modinfo", align 1
@__UNIQUE_ID_noaccel331 = internal constant [49 x i8] c"radeonfb.parm=noaccel:bool: disable acceleration\00", section ".modinfo", align 1
@__param_str_nomodeset = internal constant [19 x i8] c"radeonfb.nomodeset\00", align 1
@__param_nomodeset = internal constant %struct.kernel_param { ptr @__param_str_nomodeset, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @nomodeset } }, section "__param", align 4
@__UNIQUE_ID_nomodesettype332 = internal constant [33 x i8] c"radeonfb.parmtype=nomodeset:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nomodeset333 = internal constant [67 x i8] c"radeonfb.parm=nomodeset:bool: disable actual setting of video mode\00", section ".modinfo", align 1
@__param_str_mirror = internal constant [16 x i8] c"radeonfb.mirror\00", align 1
@mirror = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_mirror = internal constant %struct.kernel_param { ptr @__param_str_mirror, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @mirror } }, section "__param", align 4
@__UNIQUE_ID_mirrortype334 = internal constant [30 x i8] c"radeonfb.parmtype=mirror:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_mirror335 = internal constant [63 x i8] c"radeonfb.parm=mirror:bool: mirror the display to both monitors\00", section ".modinfo", align 1
@__param_str_force_dfp = internal constant [19 x i8] c"radeonfb.force_dfp\00", align 1
@force_dfp = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_force_dfp = internal constant %struct.kernel_param { ptr @__param_str_force_dfp, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @force_dfp } }, section "__param", align 4
@__UNIQUE_ID_force_dfptype336 = internal constant [33 x i8] c"radeonfb.parmtype=force_dfp:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_force_dfp337 = internal constant [51 x i8] c"radeonfb.parm=force_dfp:bool: force display to dfp\00", section ".modinfo", align 1
@__param_str_ignore_edid = internal constant [21 x i8] c"radeonfb.ignore_edid\00", align 1
@ignore_edid = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_ignore_edid = internal constant %struct.kernel_param { ptr @__param_str_ignore_edid, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @ignore_edid } }, section "__param", align 4
@__UNIQUE_ID_ignore_edidtype338 = internal constant [35 x i8] c"radeonfb.parmtype=ignore_edid:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_ignore_edid339 = internal constant [70 x i8] c"radeonfb.parm=ignore_edid:bool: Ignore EDID data when doing DDC probe\00", section ".modinfo", align 1
@__param_str_monitor_layout = internal constant [24 x i8] c"radeonfb.monitor_layout\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@monitor_layout = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_monitor_layout = internal constant %struct.kernel_param { ptr @__param_str_monitor_layout, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @monitor_layout } }, section "__param", align 4
@__UNIQUE_ID_monitor_layouttype340 = internal constant [39 x i8] c"radeonfb.parmtype=monitor_layout:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_monitor_layout341 = internal constant [68 x i8] c"radeonfb.parm=monitor_layout:Specify monitor mapping (like XFree86)\00", section ".modinfo", align 1
@__param_str_force_measure_pll = internal constant [27 x i8] c"radeonfb.force_measure_pll\00", align 1
@force_measure_pll = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_force_measure_pll = internal constant %struct.kernel_param { ptr @__param_str_force_measure_pll, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @force_measure_pll } }, section "__param", align 4
@__UNIQUE_ID_force_measure_plltype342 = internal constant [41 x i8] c"radeonfb.parmtype=force_measure_pll:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_force_measure_pll343 = internal constant [65 x i8] c"radeonfb.parm=force_measure_pll:Force measurement of PLL (debug)\00", section ".modinfo", align 1
@__param_str_nomtrr = internal constant [16 x i8] c"radeonfb.nomtrr\00", align 1
@nomtrr = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_nomtrr = internal constant %struct.kernel_param { ptr @__param_str_nomtrr, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @nomtrr } }, section "__param", align 4
@__UNIQUE_ID_nomtrrtype344 = internal constant [30 x i8] c"radeonfb.parmtype=nomtrr:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nomtrr345 = internal constant [57 x i8] c"radeonfb.parm=nomtrr:bool: disable use of MTRR registers\00", section ".modinfo", align 1
@__param_str_panel_yres = internal constant [20 x i8] c"radeonfb.panel_yres\00", align 1
@panel_yres = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_panel_yres = internal constant %struct.kernel_param { ptr @__param_str_panel_yres, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @panel_yres } }, section "__param", align 4
@__UNIQUE_ID_panel_yrestype346 = internal constant [33 x i8] c"radeonfb.parmtype=panel_yres:int\00", section ".modinfo", align 1
@__UNIQUE_ID_panel_yres347 = internal constant [45 x i8] c"radeonfb.parm=panel_yres:int: set panel yres\00", section ".modinfo", align 1
@__param_str_mode_option = internal constant [21 x i8] c"radeonfb.mode_option\00", align 1
@mode_option = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_mode_option = internal constant %struct.kernel_param { ptr @__param_str_mode_option, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @mode_option } }, section "__param", align 4
@__UNIQUE_ID_mode_optiontype348 = internal constant [36 x i8] c"radeonfb.parmtype=mode_option:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mode_option349 = internal constant [85 x i8] c"radeonfb.parm=mode_option:Specify resolution as \22<xres>x<yres>[-<bpp>][@<refresh>]\22 \00", section ".modinfo", align 1
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"radeonfb\00", [23 x i8] zeroinitializer }, align 32
@radeonfb_pci_table = internal constant { [99 x %struct.pci_device_id], [768 x i8] } { [99 x %struct.pci_device_id] [%struct.pci_device_id { i32 4098, i32 22869, i32 -1, i32 -1, i32 0, i32 0, i32 458770, i32 0 }, %struct.pci_device_id { i32 4098, i32 22901, i32 -1, i32 -1, i32 0, i32 0, i32 458770, i32 0 }, %struct.pci_device_id { i32 4098, i32 19545, i32 -1, i32 -1, i32 0, i32 0, i32 327683, i32 0 }, %struct.pci_device_id { i32 4098, i32 19546, i32 -1, i32 -1, i32 0, i32 0, i32 327683, i32 0 }, %struct.pci_device_id { i32 4098, i32 20825, i32 -1, i32 -1, i32 0, i32 0, i32 262147, i32 0 }, %struct.pci_device_id { i32 4098, i32 20826, i32 -1, i32 -1, i32 0, i32 0, i32 262147, i32 0 }, %struct.pci_device_id { i32 4098, i32 20830, i32 -1, i32 -1, i32 0, i32 0, i32 262147, i32 0 }, %struct.pci_device_id { i32 4098, i32 17206, i32 -1, i32 -1, i32 0, i32 0, i32 458756, i32 0 }, %struct.pci_device_id { i32 4098, i32 16694, i32 -1, i32 -1, i32 0, i32 0, i32 393220, i32 0 }, %struct.pci_device_id { i32 4098, i32 17207, i32 -1, i32 -1, i32 0, i32 0, i32 458758, i32 0 }, %struct.pci_device_id { i32 4098, i32 16695, i32 -1, i32 -1, i32 0, i32 0, i32 393222, i32 0 }, %struct.pci_device_id { i32 4098, i32 17463, i32 -1, i32 -1, i32 0, i32 0, i32 458758, i32 0 }, %struct.pci_device_id { i32 4098, i32 16951, i32 -1, i32 -1, i32 0, i32 0, i32 393222, i32 0 }, %struct.pci_device_id { i32 4098, i32 16962, i32 -1, i32 -1, i32 0, i32 0, i32 262151, i32 0 }, %struct.pci_device_id { i32 4098, i32 16963, i32 -1, i32 -1, i32 0, i32 0, i32 262151, i32 0 }, %struct.pci_device_id { i32 4098, i32 20808, i32 -1, i32 -1, i32 0, i32 0, i32 262151, i32 0 }, %struct.pci_device_id { i32 4098, i32 20812, i32 -1, i32 -1, i32 0, i32 0, i32 262151, i32 0 }, %struct.pci_device_id { i32 4098, i32 20813, i32 -1, i32 -1, i32 0, i32 0, i32 262151, i32 0 }, %struct.pci_device_id { i32 4098, i32 19543, i32 -1, i32 -1, i32 0, i32 0, i32 327685, i32 0 }, %struct.pci_device_id { i32 4098, i32 19544, i32 -1, i32 -1, i32 0, i32 0, i32 327685, i32 0 }, %struct.pci_device_id { i32 4098, i32 20823, i32 -1, i32 -1, i32 0, i32 0, i32 262149, i32 0 }, %struct.pci_device_id { i32 4098, i32 20824, i32 -1, i32 -1, i32 0, i32 0, i32 262149, i32 0 }, %struct.pci_device_id { i32 4098, i32 19556, i32 -1, i32 -1, i32 0, i32 0, i32 327688, i32 0 }, %struct.pci_device_id { i32 4098, i32 19557, i32 -1, i32 -1, i32 0, i32 0, i32 327688, i32 0 }, %struct.pci_device_id { i32 4098, i32 19558, i32 -1, i32 -1, i32 0, i32 0, i32 327688, i32 0 }, %struct.pci_device_id { i32 4098, i32 19559, i32 -1, i32 -1, i32 0, i32 0, i32 327688, i32 0 }, %struct.pci_device_id { i32 4098, i32 18790, i32 -1, i32 -1, i32 0, i32 0, i32 262152, i32 0 }, %struct.pci_device_id { i32 4098, i32 18791, i32 -1, i32 -1, i32 0, i32 0, i32 262152, i32 0 }, %struct.pci_device_id { i32 4098, i32 23138, i32 -1, i32 -1, i32 0, i32 0, i32 458768, i32 0 }, %struct.pci_device_id { i32 4098, i32 22581, i32 -1, i32 -1, i32 0, i32 0, i32 458761, i32 0 }, %struct.pci_device_id { i32 4098, i32 30773, i32 -1, i32 -1, i32 0, i32 0, i32 458761, i32 0 }, %struct.pci_device_id { i32 4098, i32 22580, i32 -1, i32 -1, i32 0, i32 0, i32 393225, i32 0 }, %struct.pci_device_id { i32 4098, i32 30772, i32 -1, i32 -1, i32 0, i32 0, i32 393225, i32 0 }, %struct.pci_device_id { i32 4098, i32 23649, i32 -1, i32 -1, i32 0, i32 0, i32 327690, i32 0 }, %struct.pci_device_id { i32 4098, i32 23651, i32 -1, i32 -1, i32 0, i32 0, i32 327690, i32 0 }, %struct.pci_device_id { i32 4098, i32 22880, i32 -1, i32 -1, i32 0, i32 0, i32 262154, i32 0 }, %struct.pci_device_id { i32 4098, i32 22881, i32 -1, i32 -1, i32 0, i32 0, i32 262154, i32 0 }, %struct.pci_device_id { i32 4098, i32 22882, i32 -1, i32 -1, i32 0, i32 0, i32 262154, i32 0 }, %struct.pci_device_id { i32 4098, i32 22884, i32 -1, i32 -1, i32 0, i32 0, i32 262154, i32 0 }, %struct.pci_device_id { i32 4098, i32 16708, i32 -1, i32 -1, i32 0, i32 0, i32 262155, i32 0 }, %struct.pci_device_id { i32 4098, i32 16709, i32 -1, i32 -1, i32 0, i32 0, i32 262155, i32 0 }, %struct.pci_device_id { i32 4098, i32 16710, i32 -1, i32 -1, i32 0, i32 0, i32 262155, i32 0 }, %struct.pci_device_id { i32 4098, i32 16711, i32 -1, i32 -1, i32 0, i32 0, i32 262155, i32 0 }, %struct.pci_device_id { i32 4098, i32 20036, i32 -1, i32 -1, i32 0, i32 0, i32 262155, i32 0 }, %struct.pci_device_id { i32 4098, i32 20037, i32 -1, i32 -1, i32 0, i32 0, i32 262155, i32 0 }, %struct.pci_device_id { i32 4098, i32 20038, i32 -1, i32 -1, i32 0, i32 0, i32 262155, i32 0 }, %struct.pci_device_id { i32 4098, i32 20039, i32 -1, i32 -1, i32 0, i32 0, i32 262155, i32 0 }, %struct.pci_device_id { i32 4098, i32 20048, i32 -1, i32 -1, i32 0, i32 0, i32 327693, i32 0 }, %struct.pci_device_id { i32 4098, i32 20049, i32 -1, i32 -1, i32 0, i32 0, i32 327693, i32 0 }, %struct.pci_device_id { i32 4098, i32 20050, i32 -1, i32 -1, i32 0, i32 0, i32 327693, i32 0 }, %struct.pci_device_id { i32 4098, i32 20051, i32 -1, i32 -1, i32 0, i32 0, i32 327693, i32 0 }, %struct.pci_device_id { i32 4098, i32 20052, i32 -1, i32 -1, i32 0, i32 0, i32 327693, i32 0 }, %struct.pci_device_id { i32 4098, i32 20054, i32 -1, i32 -1, i32 0, i32 0, i32 327693, i32 0 }, %struct.pci_device_id { i32 4098, i32 16720, i32 -1, i32 -1, i32 0, i32 0, i32 262157, i32 0 }, %struct.pci_device_id { i32 4098, i32 16721, i32 -1, i32 -1, i32 0, i32 0, i32 262157, i32 0 }, %struct.pci_device_id { i32 4098, i32 16722, i32 -1, i32 -1, i32 0, i32 0, i32 262157, i32 0 }, %struct.pci_device_id { i32 4098, i32 16723, i32 -1, i32 -1, i32 0, i32 0, i32 262157, i32 0 }, %struct.pci_device_id { i32 4098, i32 16724, i32 -1, i32 -1, i32 0, i32 0, i32 262157, i32 0 }, %struct.pci_device_id { i32 4098, i32 16726, i32 -1, i32 -1, i32 0, i32 0, i32 262157, i32 0 }, %struct.pci_device_id { i32 4098, i32 16712, i32 -1, i32 -1, i32 0, i32 0, i32 262156, i32 0 }, %struct.pci_device_id { i32 4098, i32 16713, i32 -1, i32 -1, i32 0, i32 0, i32 262156, i32 0 }, %struct.pci_device_id { i32 4098, i32 16714, i32 -1, i32 -1, i32 0, i32 0, i32 262156, i32 0 }, %struct.pci_device_id { i32 4098, i32 16715, i32 -1, i32 -1, i32 0, i32 0, i32 262156, i32 0 }, %struct.pci_device_id { i32 4098, i32 20040, i32 -1, i32 -1, i32 0, i32 0, i32 262156, i32 0 }, %struct.pci_device_id { i32 4098, i32 20041, i32 -1, i32 -1, i32 0, i32 0, i32 262156, i32 0 }, %struct.pci_device_id { i32 4098, i32 20042, i32 -1, i32 -1, i32 0, i32 0, i32 262156, i32 0 }, %struct.pci_device_id { i32 4098, i32 20043, i32 -1, i32 -1, i32 0, i32 0, i32 262156, i32 0 }, %struct.pci_device_id { i32 4098, i32 15952, i32 -1, i32 -1, i32 0, i32 0, i32 262158, i32 0 }, %struct.pci_device_id { i32 4098, i32 15956, i32 -1, i32 -1, i32 0, i32 0, i32 262158, i32 0 }, %struct.pci_device_id { i32 4098, i32 12624, i32 -1, i32 -1, i32 0, i32 0, i32 327694, i32 0 }, %struct.pci_device_id { i32 4098, i32 12628, i32 -1, i32 -1, i32 0, i32 0, i32 327694, i32 0 }, %struct.pci_device_id { i32 4098, i32 23392, i32 -1, i32 -1, i32 0, i32 0, i32 262158, i32 0 }, %struct.pci_device_id { i32 4098, i32 23394, i32 -1, i32 -1, i32 0, i32 0, i32 262158, i32 0 }, %struct.pci_device_id { i32 4098, i32 23395, i32 -1, i32 -1, i32 0, i32 0, i32 262158, i32 0 }, %struct.pci_device_id { i32 4098, i32 23396, i32 -1, i32 -1, i32 0, i32 0, i32 262158, i32 0 }, %struct.pci_device_id { i32 4098, i32 23397, i32 -1, i32 -1, i32 0, i32 0, i32 262158, i32 0 }, %struct.pci_device_id { i32 4098, i32 21600, i32 -1, i32 -1, i32 0, i32 0, i32 327694, i32 0 }, %struct.pci_device_id { i32 4098, i32 21604, i32 -1, i32 -1, i32 0, i32 0, i32 327694, i32 0 }, %struct.pci_device_id { i32 4098, i32 19016, i32 -1, i32 -1, i32 0, i32 0, i32 262159, i32 0 }, %struct.pci_device_id { i32 4098, i32 19017, i32 -1, i32 -1, i32 0, i32 0, i32 262159, i32 0 }, %struct.pci_device_id { i32 4098, i32 19018, i32 -1, i32 -1, i32 0, i32 0, i32 262159, i32 0 }, %struct.pci_device_id { i32 4098, i32 19019, i32 -1, i32 -1, i32 0, i32 0, i32 262159, i32 0 }, %struct.pci_device_id { i32 4098, i32 19020, i32 -1, i32 -1, i32 0, i32 0, i32 262159, i32 0 }, %struct.pci_device_id { i32 4098, i32 19021, i32 -1, i32 -1, i32 0, i32 0, i32 262159, i32 0 }, %struct.pci_device_id { i32 4098, i32 19022, i32 -1, i32 -1, i32 0, i32 0, i32 327695, i32 0 }, %struct.pci_device_id { i32 4098, i32 19024, i32 -1, i32 -1, i32 0, i32 0, i32 262159, i32 0 }, %struct.pci_device_id { i32 4098, i32 21832, i32 -1, i32 -1, i32 0, i32 0, i32 262159, i32 0 }, %struct.pci_device_id { i32 4098, i32 21833, i32 -1, i32 -1, i32 0, i32 0, i32 262159, i32 0 }, %struct.pci_device_id { i32 4098, i32 21834, i32 -1, i32 -1, i32 0, i32 0, i32 262159, i32 0 }, %struct.pci_device_id { i32 4098, i32 21835, i32 -1, i32 -1, i32 0, i32 0, i32 262159, i32 0 }, %struct.pci_device_id { i32 4098, i32 21841, i32 -1, i32 -1, i32 0, i32 0, i32 262159, i32 0 }, %struct.pci_device_id { i32 4098, i32 21842, i32 -1, i32 -1, i32 0, i32 0, i32 262159, i32 0 }, %struct.pci_device_id { i32 4098, i32 21844, i32 -1, i32 -1, i32 0, i32 0, i32 262159, i32 0 }, %struct.pci_device_id { i32 4098, i32 23895, i32 -1, i32 -1, i32 0, i32 0, i32 262159, i32 0 }, %struct.pci_device_id { i32 4098, i32 20804, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 20805, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 20806, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 20807, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id zeroinitializer], [768 x i8] zeroinitializer }, align 32
@radeonfb_pci_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@radeonfb_pci_register.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 2, i8 54, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"radeonfb_pci_register\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"radeonfb_pci_register BEGIN\0A\00", [35 x i8] zeroinitializer }, align 32
@radeonfb_pci_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 2273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013radeonfb (%s): Cannot enable PCI device\0A\00", [53 x i8] zeroinitializer }, align 32
@radeonfb_pci_register._entry_ptr = internal global ptr @radeonfb_pci_register._entry, section ".printk_index", align 4
@radeonfb_pci_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&rinfo->reg_lock\00", [47 x i8] zeroinitializer }, align 32
@radeonfb_pci_register.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&rinfo->lvds_timer)\00", [43 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ATI Radeon %x \22%c%c\22\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ATI Radeon %x\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"radeonfb framebuffer\00", [43 x i8] zeroinitializer }, align 32
@radeonfb_pci_register._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.8, ptr @.str.2, i32 2316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013radeonfb (%s): cannot request region 0.\0A\00", [53 x i8] zeroinitializer }, align 32
@radeonfb_pci_register._entry_ptr.19 = internal global ptr @radeonfb_pci_register._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"radeonfb mmio\00", [18 x i8] zeroinitializer }, align 32
@radeonfb_pci_register._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.8, ptr @.str.2, i32 2323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013radeonfb (%s): cannot request region 2.\0A\00", [53 x i8] zeroinitializer }, align 32
@radeonfb_pci_register._entry_ptr.23 = internal global ptr @radeonfb_pci_register._entry.21, section ".printk_index", align 4
@radeonfb_pci_register._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.8, ptr @.str.2, i32 2331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013radeonfb (%s): cannot map MMIO\0A\00", [62 x i8] zeroinitializer }, align 32
@radeonfb_pci_register._entry_ptr.26 = internal global ptr @radeonfb_pci_register._entry.24, section ".printk_index", align 4
@radeonfb_pci_register._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.8, ptr @.str.2, i32 2387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013radeonfb (%s): cannot map FB\0A\00", [32 x i8] zeroinitializer }, align 32
@radeonfb_pci_register._entry_ptr.29 = internal global ptr @radeonfb_pci_register._entry.27, section ".printk_index", align 4
@radeonfb_pci_register.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.30, i8 2, i8 86, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"radeonfb (%s): mapped %ldk videoram\0A\00", [59 x i8] zeroinitializer }, align 32
@edid1_attr = internal constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.96, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 128, ptr null, ptr null, ptr @radeon_show_edid1, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@edid2_attr = internal constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.97, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 128, ptr null, ptr null, ptr @radeon_show_edid2, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@radeonfb_pci_register._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.8, ptr @.str.2, i32 2452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014%s() Creating sysfs files failed, continuing\0A\00", [48 x i8] zeroinitializer }, align 32
@radeonfb_pci_register._entry_ptr.33 = internal global ptr @radeonfb_pci_register._entry.31, section ".printk_index", align 4
@radeonfb_pci_register._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.8, ptr @.str.2, i32 2475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013radeonfb (%s): could not register framebuffer\0A\00", [47 x i8] zeroinitializer }, align 32
@radeonfb_pci_register._entry_ptr.36 = internal global ptr @radeonfb_pci_register._entry.34, section ".printk_index", align 4
@backlight = internal global { i32, [28 x i8] } zeroinitializer, align 32
@radeonfb_pci_register._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.8, ptr @.str.2, i32 2486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"radeonfb (%s): %s\0A\00", [45 x i8] zeroinitializer }, align 32
@radeonfb_pci_register._entry_ptr.39 = internal global ptr @radeonfb_pci_register._entry.37, section ".printk_index", align 4
@radeonfb_pci_register.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.40, i8 2, i8 110, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"radeonfb_pci_register END\0A\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@radeon_identify_vram.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 2, i8 34, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"radeon_identify_vram\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"radeonfb (%s): Found %ldk of %s %d bits wide videoram\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DDR\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDRAM\00", [26 x i8] zeroinitializer }, align 32
@radeon_map_ROM._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013radeonfb (%s): ROM failed to map\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"radeon_map_ROM\00", [17 x i8] zeroinitializer }, align 32
@radeon_map_ROM._entry_ptr = internal global ptr @radeon_map_ROM._entry, section ".printk_index", align 4
@radeon_map_ROM._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017radeonfb (%s): Invalid ROM signature %x should be 0xaa55\0A\00", [36 x i8] zeroinitializer }, align 32
@radeon_map_ROM._entry_ptr.49 = internal global ptr @radeon_map_ROM._entry.47, section ".printk_index", align 4
@radeon_map_ROM._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.2, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014radeonfb (%s): PCI DATA signature in ROMincorrect: %08x\0A\00", [37 x i8] zeroinitializer }, align 32
@radeon_map_ROM._entry_ptr.52 = internal global ptr @radeon_map_ROM._entry.50, section ".printk_index", align 4
@radeon_map_ROM._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.46, ptr @.str.2, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016radeonfb: Found Intel x86 BIOS ROM Image\0A\00", [52 x i8] zeroinitializer }, align 32
@radeon_map_ROM._entry_ptr.55 = internal global ptr @radeon_map_ROM._entry.53, section ".printk_index", align 4
@radeon_map_ROM._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.46, ptr @.str.2, i32 488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016radeonfb: Found Open Firmware ROM Image\0A\00", [53 x i8] zeroinitializer }, align 32
@radeon_map_ROM._entry_ptr.58 = internal global ptr @radeon_map_ROM._entry.56, section ".printk_index", align 4
@radeon_map_ROM._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.46, ptr @.str.2, i32 491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016radeonfb: Found HP PA-RISC ROM Image\0A\00", [56 x i8] zeroinitializer }, align 32
@radeon_map_ROM._entry_ptr.61 = internal global ptr @radeon_map_ROM._entry.59, section ".printk_index", align 4
@radeon_map_ROM._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.46, ptr @.str.2, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016radeonfb: Found unknown type %d ROM Image\0A\00", [51 x i8] zeroinitializer }, align 32
@radeon_map_ROM._entry_ptr.64 = internal global ptr @radeon_map_ROM._entry.62, section ".printk_index", align 4
@radeon_get_pllinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016radeonfb: Retrieved PLL infos from BIOS\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"radeon_get_pllinfo\00", [45 x i8] zeroinitializer }, align 32
@radeon_get_pllinfo._entry_ptr = internal global ptr @radeon_get_pllinfo._entry, section ".printk_index", align 4
@radeon_get_pllinfo._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.2, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016radeonfb: Retrieved PLL infos from registers\0A\00", [48 x i8] zeroinitializer }, align 32
@radeon_get_pllinfo._entry_ptr.69 = internal global ptr @radeon_get_pllinfo._entry.67, section ".printk_index", align 4
@radeon_get_pllinfo._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.2, i32 810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016radeonfb: Used default PLL infos\0A\00", [60 x i8] zeroinitializer }, align 32
@radeon_get_pllinfo._entry_ptr.72 = internal global ptr @radeon_get_pllinfo._entry.70, section ".printk_index", align 4
@radeon_get_pllinfo._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.66, ptr @.str.2, i32 827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"radeonfb: Reference=%d.%02d MHz (RefDiv=%d) Memory=%d.%02d Mhz, System=%d.%02d MHz\0A\00", [44 x i8] zeroinitializer }, align 32
@radeon_get_pllinfo._entry_ptr.75 = internal global ptr @radeon_get_pllinfo._entry.73, section ".printk_index", align 4
@radeon_get_pllinfo._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.66, ptr @.str.2, i32 828, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"radeonfb: PLL min %d max %d\0A\00", [35 x i8] zeroinitializer }, align 32
@radeon_get_pllinfo._entry_ptr.78 = internal global ptr @radeon_get_pllinfo._entry.76, section ".printk_index", align 4
@radeon_probe_pll_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014xtal calculation failed: %ld\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"radeon_probe_pll_params\00", [40 x i8] zeroinitializer }, align 32
@radeon_probe_pll_params._entry_ptr = internal global ptr @radeon_probe_pll_params._entry, section ".printk_index", align 4
@radeonfb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @radeonfb_check_var, ptr @radeonfb_set_par, ptr @radeonfb_setcolreg, ptr @radeonfb_setcmap, ptr @radeonfb_blank, ptr @radeonfb_pan_display, ptr @radeonfb_fillrect, ptr @radeonfb_copyarea, ptr @radeonfb_imageblit, ptr null, ptr @radeonfb_sync, ptr @radeonfb_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@radeonfb_check_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"radeonfb: mode %dx%dx%d rejected, color depth invalid\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"radeonfb_check_var\00", [45 x i8] zeroinitializer }, align 32
@radeonfb_check_var._entry_ptr = internal global ptr @radeonfb_check_var._entry, section ".printk_index", align 4
@__const.radeonfb_set_par.hsync_adj_tab = private unnamed_addr constant [6 x i8] c"\00\12\09\09\06\05", align 1
@__const.radeonfb_set_par.hsync_fudge_fp = private unnamed_addr constant [6 x i8] c"\02\02\00\00\05\05", align 1
@radeonfb_set_par.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 1, i8 -86, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"radeonfb_set_par\00", [47 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"hStart = %d, hEnd = %d, hTotal = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@radeonfb_set_par.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.83, ptr @.str.2, ptr @.str.85, i8 1, i8 -85, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"vStart = %d, vEnd = %d, vTotal = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@radeonfb_set_par.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.83, ptr @.str.2, ptr @.str.86, i8 1, i8 -59, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"h_total_disp = 0x%x\09   hsync_strt_wid = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@radeonfb_set_par.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.83, ptr @.str.2, ptr @.str.87, i8 1, i8 -59, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"v_total_disp = 0x%x\09   vsync_strt_wid = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@radeonfb_set_par.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.83, ptr @.str.2, ptr @.str.88, i8 1, i8 -58, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pixclock = %lu\0A\00", [16 x i8] zeroinitializer }, align 32
@radeonfb_set_par.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.83, ptr @.str.2, ptr @.str.89, i8 1, i8 -57, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"freq = %lu\0A\00", [20 x i8] zeroinitializer }, align 32
@radeon_calc_pll_regs.post_div = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@radeon_calc_pll_regs.post_divs = internal constant { [9 x %struct.anon.88], [56 x i8] } { [9 x %struct.anon.88] [%struct.anon.88 { i32 1, i32 0 }, %struct.anon.88 { i32 2, i32 1 }, %struct.anon.88 { i32 4, i32 2 }, %struct.anon.88 { i32 8, i32 3 }, %struct.anon.88 { i32 3, i32 4 }, %struct.anon.88 { i32 16, i32 5 }, %struct.anon.88 { i32 6, i32 6 }, %struct.anon.88 { i32 12, i32 7 }, %struct.anon.88 zeroinitializer], [56 x i8] zeroinitializer }, align 32
@radeon_calc_pll_regs.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.90, ptr @.str.2, ptr @.str.91, i8 1, i8 -114, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"radeon_calc_pll_regs\00", [43 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"freq = %lu, PLL min = %u, PLL max = %u\0A\00", [56 x i8] zeroinitializer }, align 32
@radeon_calc_pll_regs.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.90, ptr @.str.2, ptr @.str.92, i8 1, i8 -109, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ref_div = %d, ref_clk = %d, output_freq = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@radeon_calc_pll_regs.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.90, ptr @.str.2, ptr @.str.92, i8 1, i8 -106, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@radeon_calc_pll_regs.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.90, ptr @.str.2, ptr @.str.93, i8 1, i8 -104, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"post div = 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@radeon_calc_pll_regs.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.90, ptr @.str.2, ptr @.str.94, i8 1, i8 -104, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fb_div = 0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@radeon_calc_pll_regs.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.90, ptr @.str.2, ptr @.str.95, i8 1, i8 -104, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppll_div_3 = 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"edid1\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"edid2\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"noaccel\00", [24 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mirror\00", [25 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"force_dfp\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"panel_yres:\00", [20 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"backlight:\00", [21 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nomtrr\00", [25 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nomodeset\00", [22 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"force_measure_pll\00", [46 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ignore_edid\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.110 = internal global [11 x i64] [i64 9, i64 8, i64 9, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.111 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.112 = internal global [8 x i64] [i64 6, i64 8, i64 4, i64 6, i64 9, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 6]
@__sancov_gen_cov_switch_values.114 = internal global [12 x i64] [i64 10, i64 8, i64 3, i64 4, i64 6, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 18]
@__sancov_gen_cov_switch_values.115 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.117 = internal global [17 x i64] [i64 15, i64 32, i64 16962, i64 18788, i64 18789, i64 18790, i64 18791, i64 20036, i64 20037, i64 20038, i64 20039, i64 20812, i64 20814, i64 20815, i64 20823, i64 20824, i64 20844]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.119 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.120 = internal global [27 x i64] [i64 25, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32]
@__sancov_gen_cov_switch_values.121 = internal global [6 x i64] [i64 4, i64 16, i64 8, i64 15, i64 16, i64 32]
@__sancov_gen_cov_switch_values.122 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.123 = internal global [10 x i64] [i64 8, i64 8, i64 7, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 18]
@__sancov_gen_cov_switch_values.124 = internal global [10 x i64] [i64 8, i64 8, i64 7, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 18]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 32, i64 1074020356, i64 2147762179]
@__sancov_gen_cov_switch_values.126 = internal global [10 x i64] [i64 8, i64 8, i64 7, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 18]
@__sancov_gen_cov_switch_values.127 = internal global [6 x i64] [i64 4, i64 32, i64 15, i64 16, i64 24, i64 32]
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 363, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 385, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 402, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [10 x i8] c"nomodeset\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 263, i32 13 }
@___asan_gen_.161 = private unnamed_addr constant [16 x i8] c"radeonfb_driver\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2564, i32 26 }
@___asan_gen_.164 = private unnamed_addr constant [8 x i8] c"noaccel\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 261, i32 13 }
@___asan_gen_.167 = private unnamed_addr constant [15 x i8] c"default_dynclk\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 262, i32 12 }
@___asan_gen_.170 = private unnamed_addr constant [7 x i8] c"mirror\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 265, i32 13 }
@___asan_gen_.173 = private unnamed_addr constant [10 x i8] c"force_dfp\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 267, i32 13 }
@___asan_gen_.176 = private unnamed_addr constant [12 x i8] c"ignore_edid\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 264, i32 13 }
@___asan_gen_.179 = private unnamed_addr constant [15 x i8] c"monitor_layout\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 260, i32 14 }
@___asan_gen_.182 = private unnamed_addr constant [18 x i8] c"force_measure_pll\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 268, i32 13 }
@___asan_gen_.185 = private unnamed_addr constant [7 x i8] c"nomtrr\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 269, i32 13 }
@___asan_gen_.188 = private unnamed_addr constant [11 x i8] c"panel_yres\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 266, i32 12 }
@___asan_gen_.191 = private unnamed_addr constant [12 x i8] c"mode_option\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 259, i32 14 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2565, i32 11 }
@___asan_gen_.197 = private unnamed_addr constant [19 x i8] c"radeonfb_pci_table\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 99, i32 35 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2267, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2272, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2286, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2287, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2293, i32 5 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2296, i32 5 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2313, i32 36 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2315, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2320, i32 36 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2322, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2330, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2386, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2392, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant [11 x i8] c"edid1_attr\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2222, i32 35 }
@___asan_gen_.266 = private unnamed_addr constant [11 x i8] c"edid2_attr\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2231, i32 35 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2451, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2474, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant [10 x i8] c"backlight\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 272, i32 12 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2486, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2490, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2182, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 436, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 445, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 478, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 485, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 488, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 491, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 494, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 794, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 803, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 810, i32 9 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 823, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 828, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 683, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant [13 x i8] c"radeonfb_ops\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1952, i32 28 }
@___asan_gen_.395 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 902, i32 25 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1706, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1708, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1811, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1813, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1819, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1820, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant [9 x i8] c"post_div\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1526, i32 5 }
@___asan_gen_.428 = private unnamed_addr constant [10 x i8] c"post_divs\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1527, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1592, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1613, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1632, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1633, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1634, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2224, i32 11 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2233, i32 11 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2580, i32 39 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2584, i32 26 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2586, i32 33 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2588, i32 33 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2590, i32 33 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2592, i32 33 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2594, i32 33 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2596, i32 33 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2598, i32 33 }
@___asan_gen_.482 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.483 = private constant [41 x i8] c"../drivers/video/fbdev/aty/radeon_base.c\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 2600, i32 33 }
@llvm.compiler.used = appending global [184 x ptr] [ptr @__UNIQUE_ID_author324, ptr @__UNIQUE_ID_default_dynclk330, ptr @__UNIQUE_ID_default_dynclktype329, ptr @__UNIQUE_ID_description325, ptr @__UNIQUE_ID_file326, ptr @__UNIQUE_ID_force_dfp337, ptr @__UNIQUE_ID_force_dfptype336, ptr @__UNIQUE_ID_force_measure_pll343, ptr @__UNIQUE_ID_force_measure_plltype342, ptr @__UNIQUE_ID_ignore_edid339, ptr @__UNIQUE_ID_ignore_edidtype338, ptr @__UNIQUE_ID_license327, ptr @__UNIQUE_ID_mirror335, ptr @__UNIQUE_ID_mirrortype334, ptr @__UNIQUE_ID_mode_option349, ptr @__UNIQUE_ID_mode_optiontype348, ptr @__UNIQUE_ID_monitor_layout341, ptr @__UNIQUE_ID_monitor_layouttype340, ptr @__UNIQUE_ID_noaccel331, ptr @__UNIQUE_ID_noacceltype328, ptr @__UNIQUE_ID_nomodeset333, ptr @__UNIQUE_ID_nomodesettype332, ptr @__UNIQUE_ID_nomtrr345, ptr @__UNIQUE_ID_nomtrrtype344, ptr @__UNIQUE_ID_panel_yres347, ptr @__UNIQUE_ID_panel_yrestype346, ptr @__exitcall_radeonfb_exit, ptr @__initcall__kmod_radeonfb__323_2633_radeonfb_init6, ptr @__param_default_dynclk, ptr @__param_force_dfp, ptr @__param_force_measure_pll, ptr @__param_ignore_edid, ptr @__param_mirror, ptr @__param_mode_option, ptr @__param_monitor_layout, ptr @__param_noaccel, ptr @__param_nomodeset, ptr @__param_nomtrr, ptr @__param_panel_yres, ptr @_radeon_engine_idle._entry, ptr @_radeon_engine_idle._entry_ptr, ptr @_radeon_fifo_wait._entry, ptr @_radeon_fifo_wait._entry_ptr, ptr @radeon_engine_flush._entry, ptr @radeon_engine_flush._entry_ptr, ptr @radeon_get_pllinfo._entry, ptr @radeon_get_pllinfo._entry.67, ptr @radeon_get_pllinfo._entry.70, ptr @radeon_get_pllinfo._entry.73, ptr @radeon_get_pllinfo._entry.76, ptr @radeon_get_pllinfo._entry_ptr, ptr @radeon_get_pllinfo._entry_ptr.69, ptr @radeon_get_pllinfo._entry_ptr.72, ptr @radeon_get_pllinfo._entry_ptr.75, ptr @radeon_get_pllinfo._entry_ptr.78, ptr @radeon_map_ROM._entry, ptr @radeon_map_ROM._entry.47, ptr @radeon_map_ROM._entry.50, ptr @radeon_map_ROM._entry.53, ptr @radeon_map_ROM._entry.56, ptr @radeon_map_ROM._entry.59, ptr @radeon_map_ROM._entry.62, ptr @radeon_map_ROM._entry_ptr, ptr @radeon_map_ROM._entry_ptr.49, ptr @radeon_map_ROM._entry_ptr.52, ptr @radeon_map_ROM._entry_ptr.55, ptr @radeon_map_ROM._entry_ptr.58, ptr @radeon_map_ROM._entry_ptr.61, ptr @radeon_map_ROM._entry_ptr.64, ptr @radeon_probe_pll_params._entry, ptr @radeon_probe_pll_params._entry_ptr, ptr @radeonfb_check_var._entry, ptr @radeonfb_check_var._entry_ptr, ptr @radeonfb_exit, ptr @radeonfb_pci_register._entry, ptr @radeonfb_pci_register._entry.17, ptr @radeonfb_pci_register._entry.21, ptr @radeonfb_pci_register._entry.24, ptr @radeonfb_pci_register._entry.27, ptr @radeonfb_pci_register._entry.31, ptr @radeonfb_pci_register._entry.34, ptr @radeonfb_pci_register._entry.37, ptr @radeonfb_pci_register._entry_ptr, ptr @radeonfb_pci_register._entry_ptr.19, ptr @radeonfb_pci_register._entry_ptr.23, ptr @radeonfb_pci_register._entry_ptr.26, ptr @radeonfb_pci_register._entry_ptr.29, ptr @radeonfb_pci_register._entry_ptr.33, ptr @radeonfb_pci_register._entry_ptr.36, ptr @radeonfb_pci_register._entry_ptr.39, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @nomodeset, ptr @radeonfb_driver, ptr @noaccel, ptr @default_dynclk, ptr @mirror, ptr @force_dfp, ptr @ignore_edid, ptr @monitor_layout, ptr @force_measure_pll, ptr @nomtrr, ptr @panel_yres, ptr @mode_option, ptr @.str.7, ptr @radeonfb_pci_table, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @radeonfb_pci_register.__key, ptr @.str.11, ptr @radeonfb_pci_register.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @edid1_attr, ptr @edid2_attr, ptr @.str.32, ptr @.str.35, ptr @backlight, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @radeonfb_ops, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @radeon_calc_pll_regs.post_div, ptr @radeon_calc_pll_regs.post_divs, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107], section "llvm.metadata"
@0 = internal global [119 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_radeon_fifo_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_engine_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_radeon_engine_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nomodeset to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noaccel to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_dynclk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mirror to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_dfp to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ignore_edid to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @monitor_layout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_measure_pll to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nomtrr to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_yres to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_option to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_pci_table to i32), i32 3168, i32 3936, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_pci_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_pci_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_pci_register.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_pci_register._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_pci_register._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_pci_register._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_pci_register._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edid1_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edid2_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_pci_register._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_pci_register._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @backlight to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_pci_register._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_map_ROM._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_map_ROM._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_map_ROM._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_map_ROM._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_map_ROM._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_map_ROM._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_map_ROM._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_get_pllinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_get_pllinfo._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_get_pllinfo._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_get_pllinfo._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_get_pllinfo._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_probe_pll_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_check_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_calc_pll_regs.post_div to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_calc_pll_regs.post_divs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_radeon_msleep(ptr nocapture noundef readonly %rinfo, i32 noundef %ms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %no_schedule = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 44
  %0 = ptrtoint ptr %no_schedule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %no_schedule, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.while.cond.preheader_crit_edge

entry.while.cond.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader

lor.lhs.false:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %2 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.else, label %lor.lhs.false.while.cond.preheader_crit_edge

lor.lhs.false.while.cond.preheader_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %lor.lhs.false.while.cond.preheader_crit_edge, %entry.while.cond.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ms)
  %tobool12.not21 = icmp eq i32 %ms, 0
  br i1 %tobool12.not21, label %while.cond.preheader.if.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %__ms.022 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %ms, %while.cond.preheader.while.body_crit_edge ]
  %dec = add i32 %__ms.022, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #11
  %tobool12.not = icmp eq i32 %dec, 0
  br i1 %tobool12.not, label %while.body.if.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @msleep(i32 noundef %ms) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %while.body.if.end_crit_edge, %while.cond.preheader.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_pll_errata_after_index_slow(ptr nocapture noundef readonly %rinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %0 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %3 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio_base, align 8
  %add.ptr5 = getelementptr i8, ptr %4, i32 80
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_pll_errata_after_data_slow(ptr nocapture noundef readonly %rinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %errata = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 17
  %0 = ptrtoint ptr %errata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %errata, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %no_schedule.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 44
  %2 = ptrtoint ptr %no_schedule.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %no_schedule.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.if.then.i_crit_edge

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %4 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not.i = icmp eq i32 %4, 0
  br i1 %tobool1.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.then.if.then.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #11
  br label %if.end

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @msleep(i32 noundef 5) #11
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then.i, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %errata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %errata, align 8
  %and2 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end22_crit_edge, label %if.then4

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %12 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !335
  %15 = and i32 %14, 1090519039
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !336
  tail call void @arm_heavy_mb() #11
  %16 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio_base, align 8
  %add.ptr9 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %15) #11, !srcloc !337
  %18 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio_base, align 8
  %add.ptr13 = getelementptr i8, ptr %19, i32 12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !338
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !339
  tail call void @arm_heavy_mb() #11
  %21 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio_base, align 8
  %add.ptr21 = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %14) #11, !srcloc !337
  br label %if.end22

if.end22:                                         ; preds = %if.then4, %if.end.if.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_OUTREGP(ptr noundef %rinfo, i32 noundef %addr, i32 noundef %val, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 47
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #11
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %0 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %addr
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !332
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %and = and i32 %3, %mask
  %or = or i32 %and, %val
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !341
  tail call void @arm_heavy_mb() #11
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio_base, align 8
  %add.ptr13 = getelementptr i8, ptr %6, i32 %addr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %4) #11, !srcloc !337
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__INPLL(ptr nocapture noundef readonly %rinfo, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void @arm_heavy_mb() #11
  %0 = trunc i32 %addr to i8
  %conv = and i8 %0, 63
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %1 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #11, !srcloc !343
  %errata.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 17
  %3 = ptrtoint ptr %errata.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %errata.i, align 8
  %and.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.radeon_pll_errata_after_index.exit_crit_edge, label %if.then.i

entry.radeon_pll_errata_after_index.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %8 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio_base, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %9, i32 80
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit

radeon_pll_errata_after_index.exit:               ; preds = %if.then.i, %entry.radeon_pll_errata_after_index.exit_crit_edge
  %11 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio_base, align 8
  %add.ptr2 = getelementptr i8, ptr %12, i32 12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  %14 = ptrtoint ptr %errata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %errata.i, align 8
  %and.i8 = and i32 %15, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8)
  %tobool.not.i9 = icmp eq i32 %and.i8, 0
  br i1 %tobool.not.i9, label %radeon_pll_errata_after_index.exit.radeon_pll_errata_after_data.exit_crit_edge, label %if.then.i10

radeon_pll_errata_after_index.exit.radeon_pll_errata_after_data.exit_crit_edge: ; preds = %radeon_pll_errata_after_index.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_data.exit

if.then.i10:                                      ; preds = %radeon_pll_errata_after_index.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %radeon_pll_errata_after_data.exit

radeon_pll_errata_after_data.exit:                ; preds = %if.then.i10, %radeon_pll_errata_after_index.exit.radeon_pll_errata_after_data.exit_crit_edge
  %16 = tail call i32 @llvm.bswap.i32(i32 %13)
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__OUTPLL(ptr nocapture noundef readonly %rinfo, i32 noundef %index, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !345
  tail call void @arm_heavy_mb() #11
  %0 = trunc i32 %index to i8
  %1 = and i8 %0, 63
  %conv = or i8 %1, -128
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %2 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #11, !srcloc !343
  %errata.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 17
  %4 = ptrtoint ptr %errata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %errata.i, align 8
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.radeon_pll_errata_after_index.exit_crit_edge, label %if.then.i

entry.radeon_pll_errata_after_index.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %9 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_base, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %10, i32 80
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit

radeon_pll_errata_after_index.exit:               ; preds = %if.then.i, %entry.radeon_pll_errata_after_index.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !346
  tail call void @arm_heavy_mb() #11
  %12 = tail call i32 @llvm.bswap.i32(i32 %val)
  %13 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio_base, align 8
  %add.ptr4 = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %12) #11, !srcloc !337
  %15 = ptrtoint ptr %errata.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %errata.i, align 8
  %and.i9 = and i32 %16, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool.not.i10 = icmp eq i32 %and.i9, 0
  br i1 %tobool.not.i10, label %radeon_pll_errata_after_index.exit.radeon_pll_errata_after_data.exit_crit_edge, label %if.then.i11

radeon_pll_errata_after_index.exit.radeon_pll_errata_after_data.exit_crit_edge: ; preds = %radeon_pll_errata_after_index.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_data.exit

if.then.i11:                                      ; preds = %radeon_pll_errata_after_index.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %radeon_pll_errata_after_data.exit

radeon_pll_errata_after_data.exit:                ; preds = %if.then.i11, %radeon_pll_errata_after_index.exit.radeon_pll_errata_after_data.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__OUTPLLP(ptr nocapture noundef readonly %rinfo, i32 noundef %index, i32 noundef %val, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void @arm_heavy_mb() #11
  %0 = trunc i32 %index to i8
  %conv.i = and i8 %0, 63
  %mmio_base.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %1 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv.i) #11, !srcloc !343
  %errata.i.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 17
  %3 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %errata.i.i, align 8
  %and.i.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.radeon_pll_errata_after_index.exit.i_crit_edge, label %if.then.i.i

entry.radeon_pll_errata_after_index.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %8 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr5.i.i.i = getelementptr i8, ptr %9, i32 80
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i

radeon_pll_errata_after_index.exit.i:             ; preds = %if.then.i.i, %entry.radeon_pll_errata_after_index.exit.i_crit_edge
  %11 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %12, i32 12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  %14 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %errata.i.i, align 8
  %and.i8.i = and i32 %15, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i)
  %tobool.not.i9.i = icmp eq i32 %and.i8.i, 0
  br i1 %tobool.not.i9.i, label %radeon_pll_errata_after_index.exit.i.__INPLL.exit_crit_edge, label %if.then.i10.i

radeon_pll_errata_after_index.exit.i.__INPLL.exit_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__INPLL.exit

if.then.i10.i:                                    ; preds = %radeon_pll_errata_after_index.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %__INPLL.exit

__INPLL.exit:                                     ; preds = %if.then.i10.i, %radeon_pll_errata_after_index.exit.i.__INPLL.exit_crit_edge
  %16 = tail call i32 @llvm.bswap.i32(i32 %13) #11
  %and = and i32 %16, %mask
  %or = or i32 %and, %val
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !345
  tail call void @arm_heavy_mb() #11
  %conv.i5 = or i8 %conv.i, -128
  %17 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i7 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7, i8 %conv.i5) #11, !srcloc !343
  %19 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %errata.i.i, align 8
  %and.i.i9 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i9)
  %tobool.not.i.i10 = icmp eq i32 %and.i.i9, 0
  br i1 %tobool.not.i.i10, label %__INPLL.exit.radeon_pll_errata_after_index.exit.i14_crit_edge, label %if.then.i.i13

__INPLL.exit.radeon_pll_errata_after_index.exit.i14_crit_edge: ; preds = %__INPLL.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i14

if.then.i.i13:                                    ; preds = %__INPLL.exit
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i.i11 = getelementptr i8, ptr %22, i32 12
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i11) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %24 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr5.i.i.i12 = getelementptr i8, ptr %25, i32 80
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i12) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i14

radeon_pll_errata_after_index.exit.i14:           ; preds = %if.then.i.i13, %__INPLL.exit.radeon_pll_errata_after_index.exit.i14_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !346
  tail call void @arm_heavy_mb() #11
  %27 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %28 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %29, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %27) #11, !srcloc !337
  %30 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %errata.i.i, align 8
  %and.i9.i = and i32 %31, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9.i)
  %tobool.not.i10.i = icmp eq i32 %and.i9.i, 0
  br i1 %tobool.not.i10.i, label %radeon_pll_errata_after_index.exit.i14.__OUTPLL.exit_crit_edge, label %if.then.i11.i

radeon_pll_errata_after_index.exit.i14.__OUTPLL.exit_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i14
  call void @__sanitizer_cov_trace_pc() #13
  br label %__OUTPLL.exit

if.then.i11.i:                                    ; preds = %radeon_pll_errata_after_index.exit.i14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %__OUTPLL.exit

__OUTPLL.exit:                                    ; preds = %if.then.i11.i, %radeon_pll_errata_after_index.exit.i14.__OUTPLL.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_radeon_fifo_wait(ptr nocapture noundef readonly %rinfo, i32 noundef %entries) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 3648
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !332
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !347
  %and = and i32 %3, 127
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %entries)
  %cmp2.not = icmp ult i32 %and, %entries
  br i1 %cmp2.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #11
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 2000000
  br i1 %exitcond.not, label %do.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_engine_flush(ptr noundef %rinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 47
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #11
  %mmio_base.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %0 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 5908
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %3 = or i32 %2, 83886080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !341
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr13.i = getelementptr i8, ptr %5, i32 5908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %3) #11, !srcloc !337
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call3.i) #11
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.06.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 3648
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !347
  %9 = and i32 %8, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2.not.i.not.not = icmp eq i32 %9, 0
  br i1 %cmp2.not.i.not.not, label %if.end.i, label %for.body.i.for.body.preheader_crit_edge

for.body.i.for.body.preheader_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #11
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2000000
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end.i, %for.body.i.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %i.010 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %11 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr = getelementptr i8, ptr %12, i32 5908
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !348
  %.mask = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #11
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 2000000
  br i1 %exitcond.not, label %do.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_radeon_engine_idle(ptr noundef %rinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_base.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.06.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 3648
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !347
  %3 = and i32 %2, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.not.i.not.not = icmp eq i32 %3, 0
  br i1 %cmp2.not.i.not.not, label %if.end.i, label %for.body.i.for.body.preheader_crit_edge

for.body.i.for.body.preheader_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #11
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2000000
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end.i, %for.body.i.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %i.08 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %5 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 3648
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !349
  %.mask = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %cmp2 = icmp eq i32 %.mask, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_engine_flush(ptr noundef %rinfo)
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #11
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, 2000000
  br i1 %exitcond.not, label %do.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_screen_blank(ptr noundef %rinfo, i32 noundef %blank, i32 noundef %mode_switch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock_blank = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 42
  %0 = ptrtoint ptr %lock_blank to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lock_blank, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mmio_base.i.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.end
  %i.06.i.i = phi i32 [ 0, %if.end ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %2 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 3648
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !347
  %5 = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.not.i.not.not.i = icmp eq i32 %5, 0
  br i1 %cmp2.not.i.not.not.i, label %if.end.i.i, label %for.body.i.i.for.body.i.preheader_crit_edge

for.body.i.i.for.body.i.preheader_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.preheader

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #11
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 2000000
  br i1 %exitcond.not.i.i, label %do.end.i.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %do.end.i.i, %for.body.i.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i206.for.body.i_crit_edge, %for.body.i.preheader
  %i.08.i = phi i32 [ %inc.i, %if.end.i206.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %7 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 3648
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !349
  %.mask.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %cmp2.i = icmp eq i32 %.mask.i, 0
  br i1 %cmp2.i, label %if.then.i205, label %if.end.i206

if.then.i205:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_engine_flush(ptr noundef %rinfo) #11
  br label %_radeon_engine_idle.exit

if.end.i206:                                      ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #11
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2000000
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i206.for.body.i_crit_edge

if.end.i206.for.body.i_crit_edge:                 ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #14
  br label %_radeon_engine_idle.exit

_radeon_engine_idle.exit:                         ; preds = %do.end.i, %if.then.i205
  %11 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr = getelementptr i8, ptr %12, i32 84
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !350
  %14 = and i32 %13, -458753
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = zext i32 %blank to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %blank, label %_radeon_engine_idle.exit.do.body_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb2
    i32 4, label %sw.bb4
    i32 1, label %sw.bb6
  ]

_radeon_engine_idle.exit.do.body_crit_edge:       ; preds = %_radeon_engine_idle.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

sw.bb:                                            ; preds = %_radeon_engine_idle.exit
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %15, 1536
  br label %do.body

sw.bb2:                                           ; preds = %_radeon_engine_idle.exit
  call void @__sanitizer_cov_trace_pc() #13
  %or3 = or i32 %15, 1280
  br label %do.body

sw.bb4:                                           ; preds = %_radeon_engine_idle.exit
  call void @__sanitizer_cov_trace_pc() #13
  %or5 = or i32 %15, 1792
  br label %do.body

sw.bb6:                                           ; preds = %_radeon_engine_idle.exit
  call void @__sanitizer_cov_trace_pc() #13
  %or7 = or i32 %15, 1024
  br label %do.body

do.body:                                          ; preds = %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb, %_radeon_engine_idle.exit.do.body_crit_edge
  %tobool27.not = phi i1 [ true, %sw.bb ], [ true, %sw.bb2 ], [ true, %sw.bb4 ], [ true, %sw.bb6 ], [ false, %_radeon_engine_idle.exit.do.body_crit_edge ]
  %val.0 = phi i32 [ %or, %sw.bb ], [ %or3, %sw.bb2 ], [ %or5, %sw.bb4 ], [ %or7, %sw.bb6 ], [ %15, %_radeon_engine_idle.exit.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !351
  tail call void @arm_heavy_mb() #11
  %17 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %18 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr10 = getelementptr i8, ptr %19, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %17) #11, !srcloc !337
  %mon1_type = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 31
  %20 = ptrtoint ptr %mon1_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mon1_type, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %21, label %do.body.cleanup_crit_edge [
    i32 3, label %sw.bb11
    i32 2, label %sw.bb18
  ]

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb11:                                          ; preds = %do.body
  br i1 %tobool27.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  %reg_lock.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 47
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #11
  %23 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr.i207 = getelementptr i8, ptr %24, i32 644
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i207) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %26 = or i32 %25, 83886080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !341
  tail call void @arm_heavy_mb() #11
  %27 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr13.i = getelementptr i8, ptr %28, i32 644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %26) #11, !srcloc !337
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call3.i) #11
  br label %cleanup

if.else:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode_switch)
  %tobool14.not = icmp ne i32 %mode_switch, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %blank)
  %cmp = icmp eq i32 %blank, 1
  %or.cond = or i1 %cmp, %tobool14.not
  br i1 %or.cond, label %if.else.cleanup_crit_edge, label %if.end16

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %reg_lock.i208 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 47
  %call3.i209 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i208) #11
  %29 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr.i211 = getelementptr i8, ptr %30, i32 644
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i211) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %32 = and i32 %31, -83886081
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !341
  tail call void @arm_heavy_mb() #11
  %33 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr13.i213 = getelementptr i8, ptr %34, i32 644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i213, i32 %32) #11, !srcloc !337
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i208, i32 noundef %call3.i209) #11
  br label %cleanup

sw.bb18:                                          ; preds = %do.body
  %lvds_timer = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 48
  %call19 = tail call i32 @del_timer_sync(ptr noundef %lvds_timer) #11
  %35 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr23 = getelementptr i8, ptr %36, i32 720
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #11, !srcloc !332
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !352
  br i1 %tobool27.not, label %if.else75, label %if.then28

if.then28:                                        ; preds = %sw.bb18
  %and29 = and i32 %38, -524420
  %lvds_gen_cntl = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 2, i32 60
  %39 = ptrtoint ptr %lvds_gen_cntl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lvds_gen_cntl, align 4
  %and33 = and i32 %40, 327680
  %or32 = or i32 %and29, %and33
  %or34 = or i32 %or32, 524417
  %xor = xor i32 %or34, %38
  %41 = zext i32 %xor to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %xor, label %do.body46 [
    i32 2, label %do.body37
    i32 0, label %if.then28.cleanup_crit_edge
  ]

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body37:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !353
  tail call void @arm_heavy_mb() #11
  %42 = tail call i32 @llvm.bswap.i32(i32 %or34)
  %43 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr41 = getelementptr i8, ptr %44, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %42) #11, !srcloc !337
  br label %cleanup

do.body46:                                        ; preds = %if.then28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !354
  tail call void @arm_heavy_mb() #11
  %and49 = and i32 %or34, -65540
  %45 = tail call i32 @llvm.bswap.i32(i32 %and49)
  %46 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr51 = getelementptr i8, ptr %47, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %45) #11, !srcloc !337
  %48 = ptrtoint ptr %lvds_gen_cntl to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %lvds_gen_cntl, align 4
  %and54 = and i32 %49, -589572
  %and55 = and i32 %or34, 589569
  %or58 = or i32 %and54, %and55
  store i32 %or58, ptr %lvds_gen_cntl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode_switch)
  %tobool59.not = icmp eq i32 %mode_switch, 0
  br i1 %tobool59.not, label %if.else66, label %if.then60

if.then60:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  %pwr_delay = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 13
  %50 = ptrtoint ptr %pwr_delay to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pwr_delay, align 4
  tail call void @_radeon_msleep(ptr noundef %rinfo, i32 noundef %51)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !355
  tail call void @arm_heavy_mb() #11
  %52 = tail call i32 @llvm.bswap.i32(i32 %or34)
  %53 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr65 = getelementptr i8, ptr %54, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %52) #11, !srcloc !337
  br label %cleanup

if.else66:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  %pending_lvds_gen_cntl = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 49
  %55 = ptrtoint ptr %pending_lvds_gen_cntl to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or34, ptr %pending_lvds_gen_cntl, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %pwr_delay69 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 13
  %57 = ptrtoint ptr %pwr_delay69 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pwr_delay69, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %58) #11
  %add = add i32 %call2.i, %56
  %call71 = tail call i32 @mod_timer(ptr noundef %lvds_timer, i32 noundef %add) #11
  br label %cleanup

if.else75:                                        ; preds = %sw.bb18
  %or76 = or i32 %38, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !356
  tail call void @arm_heavy_mb() #11
  %59 = tail call i32 @llvm.bswap.i32(i32 %or76)
  %60 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr81 = getelementptr i8, ptr %61, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 %59) #11, !srcloc !337
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode_switch)
  %tobool82.not = icmp ne i32 %mode_switch, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %blank)
  %cmp84 = icmp eq i32 %blank, 1
  %or.cond195 = or i1 %cmp84, %tobool82.not
  br i1 %or.cond195, label %if.else75.cleanup_crit_edge, label %if.end86

if.else75.cleanup_crit_edge:                      ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end86:                                         ; preds = %if.else75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void @arm_heavy_mb() #11
  %62 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr.i215 = getelementptr i8, ptr %63, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i215, i8 45) #11, !srcloc !343
  %errata.i.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 17
  %64 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %errata.i.i, align 8
  %and.i.i = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end86.radeon_pll_errata_after_index.exit.i_crit_edge, label %if.then.i.i

if.end86.radeon_pll_errata_after_index.exit.i_crit_edge: ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i

if.then.i.i:                                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %67, i32 12
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %69 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr5.i.i.i = getelementptr i8, ptr %70, i32 80
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i

radeon_pll_errata_after_index.exit.i:             ; preds = %if.then.i.i, %if.end86.radeon_pll_errata_after_index.exit.i_crit_edge
  %72 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %73, i32 12
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  %75 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %errata.i.i, align 8
  %and.i8.i = and i32 %76, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i)
  %tobool.not.i9.i = icmp eq i32 %and.i8.i, 0
  br i1 %tobool.not.i9.i, label %radeon_pll_errata_after_index.exit.i.__INPLL.exit_crit_edge, label %if.then.i10.i

radeon_pll_errata_after_index.exit.i.__INPLL.exit_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__INPLL.exit

if.then.i10.i:                                    ; preds = %radeon_pll_errata_after_index.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %__INPLL.exit

__INPLL.exit:                                     ; preds = %if.then.i10.i, %radeon_pll_errata_after_index.exit.i.__INPLL.exit_crit_edge
  %is_mobility = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 26
  %77 = ptrtoint ptr %is_mobility to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %is_mobility, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool88.not = icmp eq i32 %78, 0
  br i1 %tobool88.not, label %lor.lhs.false89, label %__INPLL.exit.if.then91_crit_edge

__INPLL.exit.if.then91_crit_edge:                 ; preds = %__INPLL.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then91

lor.lhs.false89:                                  ; preds = %__INPLL.exit
  %is_IGP = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 27
  %79 = ptrtoint ptr %is_IGP to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %is_IGP, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool90.not = icmp eq i32 %80, 0
  br i1 %tobool90.not, label %lor.lhs.false89.if.end92_crit_edge, label %lor.lhs.false89.if.then91_crit_edge

lor.lhs.false89.if.then91_crit_edge:              ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then91

lor.lhs.false89.if.end92_crit_edge:               ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

if.then91:                                        ; preds = %lor.lhs.false89.if.then91_crit_edge, %__INPLL.exit.if.then91_crit_edge
  tail call void @__OUTPLLP(ptr noundef %rinfo, i32 noundef 45, i32 noundef 0, i32 noundef -16385)
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %lor.lhs.false89.if.end92_crit_edge
  %and93 = and i32 %or76, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !357
  tail call void @arm_heavy_mb() #11
  %81 = tail call i32 @llvm.bswap.i32(i32 %and93)
  %82 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr98 = getelementptr i8, ptr %83, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 %81) #11, !srcloc !337
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %84(i32 noundef 21474800) #11
  %and99 = and i32 %or76, -65666
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !358
  tail call void @arm_heavy_mb() #11
  %85 = tail call i32 @llvm.bswap.i32(i32 %and99)
  %86 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr104 = getelementptr i8, ptr %87, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 %85) #11, !srcloc !337
  %and105 = and i32 %or76, -327810
  %pending_lvds_gen_cntl106 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 49
  %88 = ptrtoint ptr %pending_lvds_gen_cntl106 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %and105, ptr %pending_lvds_gen_cntl106, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %89 = load volatile i32, ptr @jiffies, align 128
  %pwr_delay109 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 13
  %90 = ptrtoint ptr %pwr_delay109 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pwr_delay109, align 4
  %call2.i201 = tail call i32 @__msecs_to_jiffies(i32 noundef %91) #11
  %add111 = add i32 %call2.i201, %89
  %call112 = tail call i32 @mod_timer(ptr noundef %lvds_timer, i32 noundef %add111) #11
  %lvds_gen_cntl114 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 2, i32 60
  %92 = ptrtoint ptr %lvds_gen_cntl114 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %lvds_gen_cntl114, align 4
  %and115 = and i32 %93, -589572
  %and116 = and i32 %or76, 589570
  %or119 = or i32 %and115, %and116
  store i32 %or119, ptr %lvds_gen_cntl114, align 4
  %94 = ptrtoint ptr %is_mobility to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %is_mobility, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool121.not = icmp eq i32 %95, 0
  br i1 %tobool121.not, label %lor.lhs.false122, label %if.end92.if.then125_crit_edge

if.end92.if.then125_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then125

lor.lhs.false122:                                 ; preds = %if.end92
  %is_IGP123 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 27
  %96 = ptrtoint ptr %is_IGP123 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %is_IGP123, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool124.not = icmp eq i32 %97, 0
  br i1 %tobool124.not, label %lor.lhs.false122.cleanup_crit_edge, label %lor.lhs.false122.if.then125_crit_edge

lor.lhs.false122.if.then125_crit_edge:            ; preds = %lor.lhs.false122
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then125

lor.lhs.false122.cleanup_crit_edge:               ; preds = %lor.lhs.false122
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then125:                                       ; preds = %lor.lhs.false122.if.then125_crit_edge, %if.end92.if.then125_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !345
  tail call void @arm_heavy_mb() #11
  %98 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr.i217 = getelementptr i8, ptr %99, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i217, i8 -83) #11, !srcloc !343
  %100 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %errata.i.i, align 8
  %and.i.i219 = and i32 %101, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i219)
  %tobool.not.i.i220 = icmp eq i32 %and.i.i219, 0
  br i1 %tobool.not.i.i220, label %if.then125.radeon_pll_errata_after_index.exit.i224_crit_edge, label %if.then.i.i223

if.then125.radeon_pll_errata_after_index.exit.i224_crit_edge: ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i224

if.then.i.i223:                                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr.i.i.i221 = getelementptr i8, ptr %103, i32 12
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i221) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %105 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr5.i.i.i222 = getelementptr i8, ptr %106, i32 80
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i222) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i224

radeon_pll_errata_after_index.exit.i224:          ; preds = %if.then.i.i223, %if.then125.radeon_pll_errata_after_index.exit.i224_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !346
  tail call void @arm_heavy_mb() #11
  %108 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %109, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %74) #11, !srcloc !337
  %110 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %errata.i.i, align 8
  %and.i9.i = and i32 %111, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9.i)
  %tobool.not.i10.i = icmp eq i32 %and.i9.i, 0
  br i1 %tobool.not.i10.i, label %radeon_pll_errata_after_index.exit.i224.cleanup_crit_edge, label %if.then.i11.i

radeon_pll_errata_after_index.exit.i224.cleanup_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i224
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i11.i:                                    ; preds = %radeon_pll_errata_after_index.exit.i224
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i11.i, %radeon_pll_errata_after_index.exit.i224.cleanup_crit_edge, %lor.lhs.false122.cleanup_crit_edge, %if.else75.cleanup_crit_edge, %if.else66, %if.then60, %do.body37, %if.then28.cleanup_crit_edge, %if.end16, %if.else.cleanup_crit_edge, %if.then13, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_write_mode(ptr noundef %rinfo, ptr noundef readonly %mode, i32 noundef %regs_only) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mon1_type = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 31
  %0 = ptrtoint ptr %mon1_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mon1_type, align 4
  %2 = load i8, ptr @nomodeset, align 1, !range !359
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %regs_only)
  %tobool1.not = icmp eq i32 %regs_only, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @radeon_screen_blank(ptr noundef %rinfo, i32 noundef 1, i32 noundef 0)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %mmio_base.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end3
  %i.06.i = phi i32 [ 0, %if.end3 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 3648
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !347
  %6 = and i32 %5, 2130706432
  call void @__sanitizer_cov_trace_const_cmp4(i32 520093696, i32 %6)
  %cmp2.not.i = icmp ult i32 %6, 520093696
  br i1 %cmp2.not.i, label %if.end.i, label %for.body.i._radeon_fifo_wait.exit_crit_edge

for.body.i._radeon_fifo_wait.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_radeon_fifo_wait.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #11
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2000000
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %_radeon_fifo_wait.exit

_radeon_fifo_wait.exit:                           ; preds = %do.end.i, %for.body.i._radeon_fifo_wait.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !360
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !360
  tail call void @arm_heavy_mb() #11
  %10 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.1 = getelementptr i8, ptr %11, i32 564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1, i32 0) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !360
  tail call void @arm_heavy_mb() #11
  %12 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.2 = getelementptr i8, ptr %13, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2, i32 0) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !360
  tail call void @arm_heavy_mb() #11
  %14 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.3 = getelementptr i8, ptr %15, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3, i32 0) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !360
  tail call void @arm_heavy_mb() #11
  %16 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.4 = getelementptr i8, ptr %17, i32 1344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.4, i32 0) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !360
  tail call void @arm_heavy_mb() #11
  %18 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.5 = getelementptr i8, ptr %19, i32 3136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.5, i32 0) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !360
  tail call void @arm_heavy_mb() #11
  %20 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.6 = getelementptr i8, ptr %21, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.6, i32 0) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !360
  tail call void @arm_heavy_mb() #11
  %22 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.7 = getelementptr i8, ptr %23, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.7, i32 0) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !360
  tail call void @arm_heavy_mb() #11
  %24 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.8 = getelementptr i8, ptr %25, i32 2384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.8, i32 0) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !360
  tail call void @arm_heavy_mb() #11
  %26 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.9 = getelementptr i8, ptr %27, i32 2496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.9, i32 0) #11, !srcloc !337
  br label %do.body9

do.body9:                                         ; preds = %do.body9.do.body9_crit_edge, %_radeon_fifo_wait.exit
  %i.1253 = phi i32 [ %inc33, %do.body9.do.body9_crit_edge ], [ 0, %_radeon_fifo_wait.exit ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  tail call void @arm_heavy_mb() #11
  %arrayidx12 = getelementptr %struct.radeon_regs, ptr %mode, i32 0, i32 20, i32 %i.1253
  %28 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx12, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr14 = getelementptr i8, ptr %32, i32 2820
  %mul = shl i32 %i.1253, 4
  %add.ptr15 = getelementptr i8, ptr %add.ptr14, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %30) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !362
  tail call void @arm_heavy_mb() #11
  %arrayidx19 = getelementptr %struct.radeon_regs, ptr %mode, i32 0, i32 21, i32 %i.1253
  %33 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx19, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %36 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr21 = getelementptr i8, ptr %37, i32 2824
  %add.ptr23 = getelementptr i8, ptr %add.ptr21, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %35) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !363
  tail call void @arm_heavy_mb() #11
  %arrayidx27 = getelementptr %struct.radeon_regs, ptr %mode, i32 0, i32 22, i32 %i.1253
  %38 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx27, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %41 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr29 = getelementptr i8, ptr %42, i32 2828
  %add.ptr31 = getelementptr i8, ptr %add.ptr29, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %40) #11, !srcloc !337
  %inc33 = add nuw nsw i32 %i.1253, 1
  %exitcond.not = icmp eq i32 %inc33, 8
  br i1 %exitcond.not, label %do.body35, label %do.body9.do.body9_crit_edge

do.body9.do.body9_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body9

do.body35:                                        ; preds = %do.body9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !364
  tail call void @arm_heavy_mb() #11
  %crtc_gen_cntl = getelementptr inbounds %struct.radeon_regs, ptr %mode, i32 0, i32 23
  %43 = ptrtoint ptr %crtc_gen_cntl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %crtc_gen_cntl, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %46 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr39 = getelementptr i8, ptr %47, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %45) #11, !srcloc !337
  %crtc_ext_cntl = getelementptr inbounds %struct.radeon_regs, ptr %mode, i32 0, i32 24
  %48 = ptrtoint ptr %crtc_ext_cntl to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %crtc_ext_cntl, align 4
  %reg_lock.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 47
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #11
  %50 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i210 = getelementptr i8, ptr %51, i32 84
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i210) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %53 = and i32 %52, -458753
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %or.i = or i32 %54, %49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !341
  tail call void @arm_heavy_mb() #11
  %55 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %56 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr13.i = getelementptr i8, ptr %57, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %55) #11, !srcloc !337
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call3.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !365
  tail call void @arm_heavy_mb() #11
  %crtc_more_cntl = getelementptr inbounds %struct.radeon_regs, ptr %mode, i32 0, i32 35
  %58 = ptrtoint ptr %crtc_more_cntl to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %crtc_more_cntl, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %61 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr44 = getelementptr i8, ptr %62, i32 636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %60) #11, !srcloc !337
  %dac_cntl = getelementptr inbounds %struct.radeon_regs, ptr %mode, i32 0, i32 25
  %63 = ptrtoint ptr %dac_cntl to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dac_cntl, align 4
  %call3.i213 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #11
  %65 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i215 = getelementptr i8, ptr %66, i32 88
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i215) #11, !srcloc !332
  %68 = lshr i32 %67, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %and.i216 = and i32 %68, 7
  %or.i217 = or i32 %and.i216, %64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !341
  tail call void @arm_heavy_mb() #11
  %69 = tail call i32 @llvm.bswap.i32(i32 %or.i217) #11
  %70 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr13.i218 = getelementptr i8, ptr %71, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i218, i32 %69) #11, !srcloc !337
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call3.i213) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !366
  tail call void @arm_heavy_mb() #11
  %crtc_h_total_disp = getelementptr inbounds %struct.radeon_regs, ptr %mode, i32 0, i32 26
  %72 = ptrtoint ptr %crtc_h_total_disp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %crtc_h_total_disp, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  %75 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr49 = getelementptr i8, ptr %76, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %74) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !367
  tail call void @arm_heavy_mb() #11
  %crtc_h_sync_strt_wid = getelementptr inbounds %struct.radeon_regs, ptr %mode, i32 0, i32 27
  %77 = ptrtoint ptr %crtc_h_sync_strt_wid to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %crtc_h_sync_strt_wid, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  %80 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr54 = getelementptr i8, ptr %81, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %79) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !368
  tail call void @arm_heavy_mb() #11
  %crtc_v_total_disp = getelementptr inbounds %struct.radeon_regs, ptr %mode, i32 0, i32 28
  %82 = ptrtoint ptr %crtc_v_total_disp to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %crtc_v_total_disp, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  %85 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr59 = getelementptr i8, ptr %86, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %84) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !369
  tail call void @arm_heavy_mb() #11
  %crtc_v_sync_strt_wid = getelementptr inbounds %struct.radeon_regs, ptr %mode, i32 0, i32 29
  %87 = ptrtoint ptr %crtc_v_sync_strt_wid to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %crtc_v_sync_strt_wid, align 4
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  %90 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr64 = getelementptr i8, ptr %91, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %89) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  tail call void @arm_heavy_mb() #11
  %92 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr69 = getelementptr i8, ptr %93, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 0) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %94 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr74 = getelementptr i8, ptr %95, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 0) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !372
  tail call void @arm_heavy_mb() #11
  %crtc_pitch = getelementptr inbounds %struct.radeon_regs, ptr %mode, i32 0, i32 32
  %96 = ptrtoint ptr %crtc_pitch to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %crtc_pitch, align 4
  %98 = tail call i32 @llvm.bswap.i32(i32 %97)
  %99 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr79 = getelementptr i8, ptr %100, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %98) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !373
  tail call void @arm_heavy_mb() #11
  %surface_cntl = getelementptr inbounds %struct.radeon_regs, ptr %mode, i32 0, i32 13
  %101 = ptrtoint ptr %surface_cntl to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %surface_cntl, align 4
  %103 = tail call i32 @llvm.bswap.i32(i32 %102)
  %104 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr84 = getelementptr i8, ptr %105, i32 2816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 %103) #11, !srcloc !337
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %do.body35
  %i.06.i.i = phi i32 [ 0, %do.body35 ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %106 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %107, i32 3648
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !347
  %109 = and i32 %108, 2080374784
  call void @__sanitizer_cov_trace_const_cmp4(i32 335544320, i32 %109)
  %cmp2.not.i.i = icmp ult i32 %109, 335544320
  br i1 %cmp2.not.i.i, label %if.end.i.i, label %for.body.i.i._radeon_fifo_wait.exit.i_crit_edge

for.body.i.i._radeon_fifo_wait.exit.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_radeon_fifo_wait.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %110(i32 noundef 214748) #11
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 2000000
  br i1 %exitcond.not.i.i, label %do.end.i.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %_radeon_fifo_wait.exit.i

_radeon_fifo_wait.exit.i:                         ; preds = %do.end.i.i, %for.body.i.i._radeon_fifo_wait.exit.i_crit_edge
  %is_mobility.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 26
  %111 = ptrtoint ptr %is_mobility.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %is_mobility.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool.not.i = icmp eq i32 %112, 0
  br i1 %tobool.not.i, label %_radeon_fifo_wait.exit.i.if.end6.i_crit_edge, label %if.then.i

_radeon_fifo_wait.exit.i.if.end6.i_crit_edge:     ; preds = %_radeon_fifo_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then.i:                                        ; preds = %_radeon_fifo_wait.exit.i
  %ppll_ref_div.i = getelementptr inbounds %struct.radeon_regs, ptr %mode, i32 0, i32 68
  %113 = ptrtoint ptr %ppll_ref_div.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ppll_ref_div.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void @arm_heavy_mb() #11
  %115 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i120.i = getelementptr i8, ptr %116, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i120.i, i8 3) #11, !srcloc !343
  %errata.i.i.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 17
  %117 = ptrtoint ptr %errata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %errata.i.i.i, align 8
  %and.i.i.i = and i32 %118, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.radeon_pll_errata_after_index.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.i.radeon_pll_errata_after_index.exit.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %119 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %120, i32 12
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %122 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr5.i.i.i.i = getelementptr i8, ptr %123, i32 80
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i.i

radeon_pll_errata_after_index.exit.i.i:           ; preds = %if.then.i.i.i, %if.then.i.radeon_pll_errata_after_index.exit.i.i_crit_edge
  %125 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %126, i32 12
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  %128 = ptrtoint ptr %errata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %errata.i.i.i, align 8
  %and.i8.i.i = and i32 %129, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %and.i8.i.i, 0
  br i1 %tobool.not.i9.i.i, label %radeon_pll_errata_after_index.exit.i.i.__INPLL.exit.i_crit_edge, label %if.then.i10.i.i

radeon_pll_errata_after_index.exit.i.i.__INPLL.exit.i_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__INPLL.exit.i

if.then.i10.i.i:                                  ; preds = %radeon_pll_errata_after_index.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %__INPLL.exit.i

__INPLL.exit.i:                                   ; preds = %if.then.i10.i.i, %radeon_pll_errata_after_index.exit.i.i.__INPLL.exit.i_crit_edge
  %130 = and i32 %127, -16580608
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %131)
  %cmp.i = icmp eq i32 %114, %131
  br i1 %cmp.i, label %land.lhs.true.i, label %__INPLL.exit.i.if.end6.i_crit_edge

__INPLL.exit.i.if.end6.i_crit_edge:               ; preds = %__INPLL.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %__INPLL.exit.i
  %ppll_div_3.i = getelementptr inbounds %struct.radeon_regs, ptr %mode, i32 0, i32 67
  %132 = ptrtoint ptr %ppll_div_3.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %ppll_div_3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void @arm_heavy_mb() #11
  %134 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i122.i = getelementptr i8, ptr %135, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i122.i, i8 7) #11, !srcloc !343
  %136 = ptrtoint ptr %errata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %errata.i.i.i, align 8
  %and.i.i124.i = and i32 %137, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i124.i)
  %tobool.not.i.i125.i = icmp eq i32 %and.i.i124.i, 0
  br i1 %tobool.not.i.i125.i, label %land.lhs.true.i.radeon_pll_errata_after_index.exit.i132.i_crit_edge, label %if.then.i.i128.i

land.lhs.true.i.radeon_pll_errata_after_index.exit.i132.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i132.i

if.then.i.i128.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %138 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i.i126.i = getelementptr i8, ptr %139, i32 12
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i126.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %141 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr5.i.i.i127.i = getelementptr i8, ptr %142, i32 80
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i127.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i132.i

radeon_pll_errata_after_index.exit.i132.i:        ; preds = %if.then.i.i128.i, %land.lhs.true.i.radeon_pll_errata_after_index.exit.i132.i_crit_edge
  %144 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr2.i129.i = getelementptr i8, ptr %145, i32 12
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i129.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  %147 = ptrtoint ptr %errata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %errata.i.i.i, align 8
  %and.i8.i130.i = and i32 %148, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i130.i)
  %tobool.not.i9.i131.i = icmp eq i32 %and.i8.i130.i, 0
  br i1 %tobool.not.i9.i131.i, label %radeon_pll_errata_after_index.exit.i132.i.__INPLL.exit134.i_crit_edge, label %if.then.i10.i133.i

radeon_pll_errata_after_index.exit.i132.i.__INPLL.exit134.i_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i132.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__INPLL.exit134.i

if.then.i10.i133.i:                               ; preds = %radeon_pll_errata_after_index.exit.i132.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %__INPLL.exit134.i

__INPLL.exit134.i:                                ; preds = %if.then.i10.i133.i, %radeon_pll_errata_after_index.exit.i132.i.__INPLL.exit134.i_crit_edge
  %149 = and i32 %146, -16316672
  %150 = tail call i32 @llvm.bswap.i32(i32 %149) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %150)
  %cmp3.i = icmp eq i32 %133, %150
  br i1 %cmp3.i, label %if.then4.i, label %__INPLL.exit134.i.if.end6.i_crit_edge

__INPLL.exit134.i.if.end6.i_crit_edge:            ; preds = %__INPLL.exit134.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then4.i:                                       ; preds = %__INPLL.exit134.i
  %clk_cntl_index.i = getelementptr inbounds %struct.radeon_regs, ptr %mode, i32 0, i32 70
  %151 = ptrtoint ptr %clk_cntl_index.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %clk_cntl_index.i, align 4
  %and5.i = and i32 %152, 768
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #11
  %153 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i136.i = getelementptr i8, ptr %154, i32 8
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i136.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %156 = and i32 %155, -196609
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #11
  %or.i.i = or i32 %157, %and5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !341
  tail call void @arm_heavy_mb() #11
  %158 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #11
  %159 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr13.i.i = getelementptr i8, ptr %160, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i, i32 %158) #11, !srcloc !337
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call3.i.i) #11
  %161 = ptrtoint ptr %errata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %errata.i.i.i, align 8
  %and.i138.i = and i32 %162, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138.i)
  %tobool.not.i.i = icmp eq i32 %and.i138.i, 0
  br i1 %tobool.not.i.i, label %if.then4.i.radeon_pll_errata_after_index.exit.i_crit_edge, label %if.then.i.i

if.then4.i.radeon_pll_errata_after_index.exit.i_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i

if.then.i.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  %163 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %164, i32 12
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %166 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr5.i.i.i = getelementptr i8, ptr %167, i32 80
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i

radeon_pll_errata_after_index.exit.i:             ; preds = %if.then.i.i, %if.then4.i.radeon_pll_errata_after_index.exit.i_crit_edge
  %169 = ptrtoint ptr %errata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %errata.i.i.i, align 8
  %and.i141.i = and i32 %170, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i141.i)
  %tobool.not.i142.i = icmp eq i32 %and.i141.i, 0
  br i1 %tobool.not.i142.i, label %radeon_pll_errata_after_index.exit.i.radeon_write_pll_regs.exit_crit_edge, label %if.then.i143.i

radeon_pll_errata_after_index.exit.i.radeon_write_pll_regs.exit_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_write_pll_regs.exit

if.then.i143.i:                                   ; preds = %radeon_pll_errata_after_index.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %radeon_write_pll_regs.exit

if.end6.i:                                        ; preds = %__INPLL.exit134.i.if.end6.i_crit_edge, %__INPLL.exit.i.if.end6.i_crit_edge, %_radeon_fifo_wait.exit.i.if.end6.i_crit_edge
  tail call void @__OUTPLLP(ptr noundef %rinfo, i32 noundef 8, i32 noundef 0, i32 noundef -4) #11
  tail call void @__OUTPLLP(ptr noundef %rinfo, i32 noundef 2, i32 noundef 196609, i32 noundef -196610) #11
  %clk_cntl_index7.i = getelementptr inbounds %struct.radeon_regs, ptr %mode, i32 0, i32 70
  %171 = ptrtoint ptr %clk_cntl_index7.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %clk_cntl_index7.i, align 4
  %and8.i = and i32 %172, 768
  %call3.i146.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #11
  %173 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i148.i = getelementptr i8, ptr %174, i32 8
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i148.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %176 = and i32 %175, -196609
  %177 = tail call i32 @llvm.bswap.i32(i32 %176) #11
  %or.i150.i = or i32 %177, %and8.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !341
  tail call void @arm_heavy_mb() #11
  %178 = tail call i32 @llvm.bswap.i32(i32 %or.i150.i) #11
  %179 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr13.i151.i = getelementptr i8, ptr %180, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i151.i, i32 %178) #11, !srcloc !337
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call3.i146.i) #11
  %errata.i152.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 17
  %181 = ptrtoint ptr %errata.i152.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %errata.i152.i, align 8
  %and.i153.i = and i32 %182, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i153.i)
  %tobool.not.i154.i = icmp eq i32 %and.i153.i, 0
  br i1 %tobool.not.i154.i, label %if.end6.i.radeon_pll_errata_after_index.exit160.i_crit_edge, label %if.then.i158.i

if.end6.i.radeon_pll_errata_after_index.exit160.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit160.i

if.then.i158.i:                                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %183 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i156.i = getelementptr i8, ptr %184, i32 12
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i156.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %186 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr5.i.i157.i = getelementptr i8, ptr %187, i32 80
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i157.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit160.i

radeon_pll_errata_after_index.exit160.i:          ; preds = %if.then.i158.i, %if.end6.i.radeon_pll_errata_after_index.exit160.i_crit_edge
  %189 = ptrtoint ptr %errata.i152.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %errata.i152.i, align 8
  %and.i162.i = and i32 %190, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i162.i)
  %tobool.not.i163.i = icmp eq i32 %and.i162.i, 0
  br i1 %tobool.not.i163.i, label %radeon_pll_errata_after_index.exit160.i.radeon_pll_errata_after_data.exit166.i_crit_edge, label %if.then.i164.i

radeon_pll_errata_after_index.exit160.i.radeon_pll_errata_after_data.exit166.i_crit_edge: ; preds = %radeon_pll_errata_after_index.exit160.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_data.exit166.i

if.then.i164.i:                                   ; preds = %radeon_pll_errata_after_index.exit160.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %radeon_pll_errata_after_data.exit166.i

radeon_pll_errata_after_data.exit166.i:           ; preds = %if.then.i164.i, %radeon_pll_errata_after_index.exit160.i.radeon_pll_errata_after_data.exit166.i_crit_edge
  %family.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 15
  %191 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %family.i, align 4
  %193 = zext i8 %192 to i64
  call void @__sanitizer_cov_trace_switch(i64 %193, ptr @__sancov_gen_cov_switch_values.110)
  switch i8 %192, label %if.else63.i [
    i8 11, label %radeon_pll_errata_after_data.exit166.i.if.then55.i_crit_edge
    i8 13, label %radeon_pll_errata_after_data.exit166.i.if.then55.i_crit_edge254
    i8 12, label %radeon_pll_errata_after_data.exit166.i.if.then55.i_crit_edge255
    i8 14, label %radeon_pll_errata_after_data.exit166.i.if.then55.i_crit_edge256
    i8 15, label %radeon_pll_errata_after_data.exit166.i.if.then55.i_crit_edge257
    i8 16, label %radeon_pll_errata_after_data.exit166.i.if.then55.i_crit_edge258
    i8 18, label %radeon_pll_errata_after_data.exit166.i.if.then55.i_crit_edge259
    i8 9, label %radeon_pll_errata_after_data.exit166.i.if.then55.i_crit_edge260
    i8 17, label %radeon_pll_errata_after_data.exit166.i.if.then55.i_crit_edge261
  ]

radeon_pll_errata_after_data.exit166.i.if.then55.i_crit_edge261: ; preds = %radeon_pll_errata_after_data.exit166.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55.i

radeon_pll_errata_after_data.exit166.i.if.then55.i_crit_edge260: ; preds = %radeon_pll_errata_after_data.exit166.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55.i

radeon_pll_errata_after_data.exit166.i.if.then55.i_crit_edge259: ; preds = %radeon_pll_errata_after_data.exit166.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55.i

radeon_pll_errata_after_data.exit166.i.if.then55.i_crit_edge258: ; preds = %radeon_pll_errata_after_data.exit166.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55.i

radeon_pll_errata_after_data.exit166.i.if.then55.i_crit_edge257: ; preds = %radeon_pll_errata_after_data.exit166.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55.i

radeon_pll_errata_after_data.exit166.i.if.then55.i_crit_edge256: ; preds = %radeon_pll_errata_after_data.exit166.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55.i

radeon_pll_errata_after_data.exit166.i.if.then55.i_crit_edge255: ; preds = %radeon_pll_errata_after_data.exit166.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55.i

radeon_pll_errata_after_data.exit166.i.if.then55.i_crit_edge254: ; preds = %radeon_pll_errata_after_data.exit166.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55.i

radeon_pll_errata_after_data.exit166.i.if.then55.i_crit_edge: ; preds = %radeon_pll_errata_after_data.exit166.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55.i

if.then55.i:                                      ; preds = %radeon_pll_errata_after_data.exit166.i.if.then55.i_crit_edge, %radeon_pll_errata_after_data.exit166.i.if.then55.i_crit_edge254, %radeon_pll_errata_after_data.exit166.i.if.then55.i_crit_edge255, %radeon_pll_errata_after_data.exit166.i.if.then55.i_crit_edge256, %radeon_pll_errata_after_data.exit166.i.if.then55.i_crit_edge257, %radeon_pll_errata_after_data.exit166.i.if.then55.i_crit_edge258, %radeon_pll_errata_after_data.exit166.i.if.then55.i_crit_edge259, %radeon_pll_errata_after_data.exit166.i.if.then55.i_crit_edge260, %radeon_pll_errata_after_data.exit166.i.if.then55.i_crit_edge261
  %ppll_ref_div56.i = getelementptr inbounds %struct.radeon_regs, ptr %mode, i32 0, i32 68
  %194 = ptrtoint ptr %ppll_ref_div56.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %ppll_ref_div56.i, align 4
  %and57.i = and i32 %195, 268173312
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %if.else.i, label %if.then59.i

if.then59.i:                                      ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__OUTPLLP(ptr noundef %rinfo, i32 noundef 3, i32 noundef %195, i32 noundef 0) #11
  br label %if.end65.i

if.else.i:                                        ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #13
  %shl.i = shl i32 %195, 18
  tail call void @__OUTPLLP(ptr noundef %rinfo, i32 noundef 3, i32 noundef %shl.i, i32 noundef -268173313) #11
  br label %if.end65.i

if.else63.i:                                      ; preds = %radeon_pll_errata_after_data.exit166.i
  call void @__sanitizer_cov_trace_pc() #13
  %ppll_ref_div64.i = getelementptr inbounds %struct.radeon_regs, ptr %mode, i32 0, i32 68
  %196 = ptrtoint ptr %ppll_ref_div64.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %ppll_ref_div64.i, align 4
  tail call void @__OUTPLLP(ptr noundef %rinfo, i32 noundef 3, i32 noundef %197, i32 noundef -1024) #11
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.else63.i, %if.else.i, %if.then59.i
  %ppll_div_366.i = getelementptr inbounds %struct.radeon_regs, ptr %mode, i32 0, i32 67
  %198 = ptrtoint ptr %ppll_div_366.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %ppll_div_366.i, align 4
  tail call void @__OUTPLLP(ptr noundef %rinfo, i32 noundef 7, i32 noundef %199, i32 noundef -2048) #11
  %200 = ptrtoint ptr %ppll_div_366.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %ppll_div_366.i, align 4
  tail call void @__OUTPLLP(ptr noundef %rinfo, i32 noundef 7, i32 noundef %201, i32 noundef -458753) #11
  br label %while.cond.i

while.cond.i:                                     ; preds = %__INPLL.exit180.i.while.cond.i_crit_edge, %if.end65.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void @arm_heavy_mb() #11
  %202 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i168.i = getelementptr i8, ptr %203, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i168.i, i8 3) #11, !srcloc !343
  %204 = ptrtoint ptr %errata.i152.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %errata.i152.i, align 8
  %and.i.i170.i = and i32 %205, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i170.i)
  %tobool.not.i.i171.i = icmp eq i32 %and.i.i170.i, 0
  br i1 %tobool.not.i.i171.i, label %while.cond.i.radeon_pll_errata_after_index.exit.i178.i_crit_edge, label %if.then.i.i174.i

while.cond.i.radeon_pll_errata_after_index.exit.i178.i_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i178.i

if.then.i.i174.i:                                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %206 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i.i172.i = getelementptr i8, ptr %207, i32 12
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i172.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %209 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr5.i.i.i173.i = getelementptr i8, ptr %210, i32 80
  %211 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i173.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i178.i

radeon_pll_errata_after_index.exit.i178.i:        ; preds = %if.then.i.i174.i, %while.cond.i.radeon_pll_errata_after_index.exit.i178.i_crit_edge
  %212 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr2.i175.i = getelementptr i8, ptr %213, i32 12
  %214 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i175.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  %215 = ptrtoint ptr %errata.i152.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %errata.i152.i, align 8
  %and.i8.i176.i = and i32 %216, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i176.i)
  %tobool.not.i9.i177.i = icmp eq i32 %and.i8.i176.i, 0
  br i1 %tobool.not.i9.i177.i, label %radeon_pll_errata_after_index.exit.i178.i.__INPLL.exit180.i_crit_edge, label %if.then.i10.i179.i

radeon_pll_errata_after_index.exit.i178.i.__INPLL.exit180.i_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__INPLL.exit180.i

if.then.i10.i179.i:                               ; preds = %radeon_pll_errata_after_index.exit.i178.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %__INPLL.exit180.i

__INPLL.exit180.i:                                ; preds = %if.then.i10.i179.i, %radeon_pll_errata_after_index.exit.i178.i.__INPLL.exit180.i_crit_edge
  %217 = and i32 %214, 8388608
  %tobool70.not.i = icmp eq i32 %217, 0
  br i1 %tobool70.not.i, label %while.end.i, label %__INPLL.exit180.i.while.cond.i_crit_edge

__INPLL.exit180.i.while.cond.i_crit_edge:         ; preds = %__INPLL.exit180.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

while.end.i:                                      ; preds = %__INPLL.exit180.i
  tail call void @__OUTPLLP(ptr noundef %rinfo, i32 noundef 3, i32 noundef 32768, i32 noundef -32769) #11
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %__INPLL.exit194.i.land.rhs.i_crit_edge, %while.end.i
  %i.0207.i = phi i32 [ 0, %while.end.i ], [ %inc.i219, %__INPLL.exit194.i.land.rhs.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void @arm_heavy_mb() #11
  %218 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i182.i = getelementptr i8, ptr %219, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i182.i, i8 3) #11, !srcloc !343
  %220 = ptrtoint ptr %errata.i152.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %errata.i152.i, align 8
  %and.i.i184.i = and i32 %221, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i184.i)
  %tobool.not.i.i185.i = icmp eq i32 %and.i.i184.i, 0
  br i1 %tobool.not.i.i185.i, label %land.rhs.i.radeon_pll_errata_after_index.exit.i192.i_crit_edge, label %if.then.i.i188.i

land.rhs.i.radeon_pll_errata_after_index.exit.i192.i_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i192.i

if.then.i.i188.i:                                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %222 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i.i186.i = getelementptr i8, ptr %223, i32 12
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i186.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %225 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr5.i.i.i187.i = getelementptr i8, ptr %226, i32 80
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i187.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i192.i

radeon_pll_errata_after_index.exit.i192.i:        ; preds = %if.then.i.i188.i, %land.rhs.i.radeon_pll_errata_after_index.exit.i192.i_crit_edge
  %228 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr2.i189.i = getelementptr i8, ptr %229, i32 12
  %230 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i189.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  %231 = ptrtoint ptr %errata.i152.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %errata.i152.i, align 8
  %and.i8.i190.i = and i32 %232, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i190.i)
  %tobool.not.i9.i191.i = icmp eq i32 %and.i8.i190.i, 0
  br i1 %tobool.not.i9.i191.i, label %radeon_pll_errata_after_index.exit.i192.i.__INPLL.exit194.i_crit_edge, label %if.then.i10.i193.i

radeon_pll_errata_after_index.exit.i192.i.__INPLL.exit194.i_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i192.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__INPLL.exit194.i

if.then.i10.i193.i:                               ; preds = %radeon_pll_errata_after_index.exit.i192.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %__INPLL.exit194.i

__INPLL.exit194.i:                                ; preds = %if.then.i10.i193.i, %radeon_pll_errata_after_index.exit.i192.i.__INPLL.exit194.i_crit_edge
  %233 = and i32 %230, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool75.not.i = icmp eq i32 %233, 0
  %inc.i219 = add nuw nsw i32 %i.0207.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %inc.i219)
  %exitcond.not.i220 = icmp eq i32 %inc.i219, 10000
  %or.cond.i = select i1 %tobool75.not.i, i1 true, i1 %exitcond.not.i220
  br i1 %or.cond.i, label %for.end.i, label %__INPLL.exit194.i.land.rhs.i_crit_edge

__INPLL.exit194.i.land.rhs.i_crit_edge:           ; preds = %__INPLL.exit194.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

for.end.i:                                        ; preds = %__INPLL.exit194.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !345
  tail call void @arm_heavy_mb() #11
  %234 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i196.i = getelementptr i8, ptr %235, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i196.i, i8 -119) #11, !srcloc !343
  %236 = ptrtoint ptr %errata.i152.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %errata.i152.i, align 8
  %and.i.i198.i = and i32 %237, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i198.i)
  %tobool.not.i.i199.i = icmp eq i32 %and.i.i198.i, 0
  br i1 %tobool.not.i.i199.i, label %for.end.i.radeon_pll_errata_after_index.exit.i203.i_crit_edge, label %if.then.i.i202.i

for.end.i.radeon_pll_errata_after_index.exit.i203.i_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i203.i

if.then.i.i202.i:                                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %238 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i.i200.i = getelementptr i8, ptr %239, i32 12
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i200.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %241 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr5.i.i.i201.i = getelementptr i8, ptr %242, i32 80
  %243 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i201.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i203.i

radeon_pll_errata_after_index.exit.i203.i:        ; preds = %if.then.i.i202.i, %for.end.i.radeon_pll_errata_after_index.exit.i203.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !346
  tail call void @arm_heavy_mb() #11
  %244 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr4.i.i = getelementptr i8, ptr %245, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 0) #11, !srcloc !337
  %246 = ptrtoint ptr %errata.i152.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %errata.i152.i, align 8
  %and.i9.i.i = and i32 %247, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9.i.i)
  %tobool.not.i10.i.i = icmp eq i32 %and.i9.i.i, 0
  br i1 %tobool.not.i10.i.i, label %radeon_pll_errata_after_index.exit.i203.i.__OUTPLL.exit.i_crit_edge, label %if.then.i11.i.i

radeon_pll_errata_after_index.exit.i203.i.__OUTPLL.exit.i_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i203.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__OUTPLL.exit.i

if.then.i11.i.i:                                  ; preds = %radeon_pll_errata_after_index.exit.i203.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %__OUTPLL.exit.i

__OUTPLL.exit.i:                                  ; preds = %if.then.i11.i.i, %radeon_pll_errata_after_index.exit.i203.i.__OUTPLL.exit.i_crit_edge
  tail call void @__OUTPLLP(ptr noundef %rinfo, i32 noundef 2, i32 noundef 0, i32 noundef -196612) #11
  %no_schedule.i.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 44
  %248 = ptrtoint ptr %no_schedule.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %no_schedule.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %tobool.not.i204.i = icmp eq i32 %249, 0
  br i1 %tobool.not.i204.i, label %lor.lhs.false.i.i, label %__OUTPLL.exit.i.if.then.i205.i_crit_edge

__OUTPLL.exit.i.if.then.i205.i_crit_edge:         ; preds = %__OUTPLL.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i205.i

lor.lhs.false.i.i:                                ; preds = %__OUTPLL.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %250 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %tobool1.not.i.i = icmp eq i32 %250, 0
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %lor.lhs.false.i.i.if.then.i205.i_crit_edge

lor.lhs.false.i.i.if.then.i205.i_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i205.i

if.then.i205.i:                                   ; preds = %lor.lhs.false.i.i.if.then.i205.i_crit_edge, %__OUTPLL.exit.i.if.then.i205.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %251 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %251(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %252 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %252(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %253 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %253(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %254 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %254(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %255 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %255(i32 noundef 214748000) #11
  br label %_radeon_msleep.exit.i

if.else.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @msleep(i32 noundef 5) #11
  br label %_radeon_msleep.exit.i

_radeon_msleep.exit.i:                            ; preds = %if.else.i.i, %if.then.i205.i
  tail call void @__OUTPLLP(ptr noundef %rinfo, i32 noundef 8, i32 noundef 3, i32 noundef -4) #11
  br label %radeon_write_pll_regs.exit

radeon_write_pll_regs.exit:                       ; preds = %_radeon_msleep.exit.i, %if.then.i143.i, %radeon_pll_errata_after_index.exit.i.radeon_write_pll_regs.exit_crit_edge
  %256 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %256)
  %switch = icmp eq i32 %256, 2
  br i1 %switch, label %radeon_write_pll_regs.exit.for.body.i226_crit_edge, label %radeon_write_pll_regs.exit.if.end135_crit_edge

radeon_write_pll_regs.exit.if.end135_crit_edge:   ; preds = %radeon_write_pll_regs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end135

radeon_write_pll_regs.exit.for.body.i226_crit_edge: ; preds = %radeon_write_pll_regs.exit
  br label %for.body.i226

for.body.i226:                                    ; preds = %if.end.i229.for.body.i226_crit_edge, %radeon_write_pll_regs.exit.for.body.i226_crit_edge
  %i.06.i222 = phi i32 [ %inc.i227, %if.end.i229.for.body.i226_crit_edge ], [ 0, %radeon_write_pll_regs.exit.for.body.i226_crit_edge ]
  %257 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i223 = getelementptr i8, ptr %258, i32 3648
  %259 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i223) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !347
  %260 = and i32 %259, 2113929216
  call void @__sanitizer_cov_trace_const_cmp4(i32 167772160, i32 %260)
  %cmp2.not.i225 = icmp ult i32 %260, 167772160
  br i1 %cmp2.not.i225, label %if.end.i229, label %for.body.i226._radeon_fifo_wait.exit232_crit_edge

for.body.i226._radeon_fifo_wait.exit232_crit_edge: ; preds = %for.body.i226
  call void @__sanitizer_cov_trace_pc() #13
  br label %_radeon_fifo_wait.exit232

if.end.i229:                                      ; preds = %for.body.i226
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %261 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %261(i32 noundef 214748) #11
  %inc.i227 = add nuw nsw i32 %i.06.i222, 1
  %exitcond.not.i228 = icmp eq i32 %inc.i227, 2000000
  br i1 %exitcond.not.i228, label %do.end.i231, label %if.end.i229.for.body.i226_crit_edge

if.end.i229.for.body.i226_crit_edge:              ; preds = %if.end.i229
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i226

do.end.i231:                                      ; preds = %if.end.i229
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i230 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %_radeon_fifo_wait.exit232

_radeon_fifo_wait.exit232:                        ; preds = %do.end.i231, %for.body.i226._radeon_fifo_wait.exit232_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !374
  tail call void @arm_heavy_mb() #11
  %fp_crtc_h_total_disp = getelementptr inbounds %struct.radeon_regs, ptr %mode, i32 0, i32 49
  %262 = ptrtoint ptr %fp_crtc_h_total_disp to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %fp_crtc_h_total_disp, align 4
  %264 = tail call i32 @llvm.bswap.i32(i32 %263)
  %265 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr94 = getelementptr i8, ptr %266, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %264) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !375
  tail call void @arm_heavy_mb() #11
  %fp_crtc_v_total_disp = getelementptr inbounds %struct.radeon_regs, ptr %mode, i32 0, i32 50
  %267 = ptrtoint ptr %fp_crtc_v_total_disp to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %fp_crtc_v_total_disp, align 4
  %269 = tail call i32 @llvm.bswap.i32(i32 %268)
  %270 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr99 = getelementptr i8, ptr %271, i32 596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 %269) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !376
  tail call void @arm_heavy_mb() #11
  %fp_h_sync_strt_wid = getelementptr inbounds %struct.radeon_regs, ptr %mode, i32 0, i32 53
  %272 = ptrtoint ptr %fp_h_sync_strt_wid to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %fp_h_sync_strt_wid, align 4
  %274 = tail call i32 @llvm.bswap.i32(i32 %273)
  %275 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr104 = getelementptr i8, ptr %276, i32 708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 %274) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %fp_v_sync_strt_wid = getelementptr inbounds %struct.radeon_regs, ptr %mode, i32 0, i32 57
  %277 = ptrtoint ptr %fp_v_sync_strt_wid to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %fp_v_sync_strt_wid, align 4
  %279 = tail call i32 @llvm.bswap.i32(i32 %278)
  %280 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr109 = getelementptr i8, ptr %281, i32 712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 %279) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %fp_horz_stretch = getelementptr inbounds %struct.radeon_regs, ptr %mode, i32 0, i32 55
  %282 = ptrtoint ptr %fp_horz_stretch to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %fp_horz_stretch, align 4
  %284 = tail call i32 @llvm.bswap.i32(i32 %283)
  %285 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr114 = getelementptr i8, ptr %286, i32 652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114, i32 %284) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void @arm_heavy_mb() #11
  %fp_vert_stretch = getelementptr inbounds %struct.radeon_regs, ptr %mode, i32 0, i32 59
  %287 = ptrtoint ptr %fp_vert_stretch to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %fp_vert_stretch, align 4
  %289 = tail call i32 @llvm.bswap.i32(i32 %288)
  %290 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr119 = getelementptr i8, ptr %291, i32 656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119, i32 %289) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %fp_gen_cntl = getelementptr inbounds %struct.radeon_regs, ptr %mode, i32 0, i32 51
  %292 = ptrtoint ptr %fp_gen_cntl to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %fp_gen_cntl, align 4
  %294 = tail call i32 @llvm.bswap.i32(i32 %293)
  %295 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr124 = getelementptr i8, ptr %296, i32 644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124, i32 %294) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  %tmds_crc = getelementptr inbounds %struct.radeon_regs, ptr %mode, i32 0, i32 62
  %297 = ptrtoint ptr %tmds_crc to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %tmds_crc, align 4
  %299 = tail call i32 @llvm.bswap.i32(i32 %298)
  %300 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr129 = getelementptr i8, ptr %301, i32 672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 %299) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  tail call void @arm_heavy_mb() #11
  %tmds_transmitter_cntl = getelementptr inbounds %struct.radeon_regs, ptr %mode, i32 0, i32 63
  %302 = ptrtoint ptr %tmds_transmitter_cntl to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %tmds_transmitter_cntl, align 4
  %304 = tail call i32 @llvm.bswap.i32(i32 %303)
  %305 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr134 = getelementptr i8, ptr %306, i32 676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 %304) #11, !srcloc !337
  br label %if.end135

if.end135:                                        ; preds = %_radeon_fifo_wait.exit232, %radeon_write_pll_regs.exit.if.end135_crit_edge
  br i1 %tobool1.not, label %if.then137, label %if.end135.for.body.i238.preheader_crit_edge

if.end135.for.body.i238.preheader_crit_edge:      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i238.preheader

if.then137:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  %call138 = tail call i32 @radeon_screen_blank(ptr noundef %rinfo, i32 noundef 0, i32 noundef 0)
  br label %for.body.i238.preheader

for.body.i238.preheader:                          ; preds = %if.then137, %if.end135.for.body.i238.preheader_crit_edge
  br label %for.body.i238

for.body.i238:                                    ; preds = %if.end.i241.for.body.i238_crit_edge, %for.body.i238.preheader
  %i.06.i234 = phi i32 [ %inc.i239, %if.end.i241.for.body.i238_crit_edge ], [ 0, %for.body.i238.preheader ]
  %307 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i235 = getelementptr i8, ptr %308, i32 3648
  %309 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i235) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !347
  %310 = and i32 %309, 2113929216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %310)
  %cmp2.not.i237 = icmp eq i32 %310, 0
  br i1 %cmp2.not.i237, label %if.end.i241, label %for.body.i238._radeon_fifo_wait.exit244_crit_edge

for.body.i238._radeon_fifo_wait.exit244_crit_edge: ; preds = %for.body.i238
  call void @__sanitizer_cov_trace_pc() #13
  br label %_radeon_fifo_wait.exit244

if.end.i241:                                      ; preds = %for.body.i238
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %311 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %311(i32 noundef 214748) #11
  %inc.i239 = add nuw nsw i32 %i.06.i234, 1
  %exitcond.not.i240 = icmp eq i32 %inc.i239, 2000000
  br i1 %exitcond.not.i240, label %do.end.i243, label %if.end.i241.for.body.i238_crit_edge

if.end.i241.for.body.i238_crit_edge:              ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i238

do.end.i243:                                      ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i242 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %_radeon_fifo_wait.exit244

_radeon_fifo_wait.exit244:                        ; preds = %do.end.i243, %for.body.i238._radeon_fifo_wait.exit244_crit_edge
  %vclk_ecp_cntl = getelementptr inbounds %struct.radeon_regs, ptr %mode, i32 0, i32 69
  %312 = ptrtoint ptr %vclk_ecp_cntl to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %vclk_ecp_cntl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !345
  tail call void @arm_heavy_mb() #11
  %314 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i246 = getelementptr i8, ptr %315, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i246, i8 -120) #11, !srcloc !343
  %errata.i.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 17
  %316 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %errata.i.i, align 8
  %and.i.i = and i32 %317, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i247 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i247, label %_radeon_fifo_wait.exit244.radeon_pll_errata_after_index.exit.i251_crit_edge, label %if.then.i.i250

_radeon_fifo_wait.exit244.radeon_pll_errata_after_index.exit.i251_crit_edge: ; preds = %_radeon_fifo_wait.exit244
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i251

if.then.i.i250:                                   ; preds = %_radeon_fifo_wait.exit244
  call void @__sanitizer_cov_trace_pc() #13
  %318 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i.i248 = getelementptr i8, ptr %319, i32 12
  %320 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i248) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %321 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr5.i.i.i249 = getelementptr i8, ptr %322, i32 80
  %323 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i249) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i251

radeon_pll_errata_after_index.exit.i251:          ; preds = %if.then.i.i250, %_radeon_fifo_wait.exit244.radeon_pll_errata_after_index.exit.i251_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !346
  tail call void @arm_heavy_mb() #11
  %324 = tail call i32 @llvm.bswap.i32(i32 %313) #11
  %325 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %326, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %324) #11, !srcloc !337
  %327 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %errata.i.i, align 8
  %and.i9.i = and i32 %328, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9.i)
  %tobool.not.i10.i = icmp eq i32 %and.i9.i, 0
  br i1 %tobool.not.i10.i, label %radeon_pll_errata_after_index.exit.i251.cleanup_crit_edge, label %if.then.i11.i

radeon_pll_errata_after_index.exit.i251.cleanup_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i251
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i11.i:                                    ; preds = %radeon_pll_errata_after_index.exit.i251
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i11.i, %radeon_pll_errata_after_index.exit.i251.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @radeonfb_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @radeonfb_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @radeonfb_init() #5 section ".init.text" align 64 {
entry:
  %option = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #11
  %0 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %option, align 4
  %call = call i32 @fb_get_options(ptr noundef nonnull @.str.7, ptr noundef nonnull %option) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %option, align 4
  call fastcc void @radeonfb_setup(ptr noundef %2) #15
  %call2 = call i32 @__pci_register_driver(ptr noundef nonnull @radeonfb_driver, ptr noundef null, ptr noundef nonnull @.str.7) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeonfb_pci_register(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeonfb_pci_register.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeonfb_pci_register, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !383

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeonfb_pci_register.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.9) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call i32 @pci_enable_device(ptr noundef %pdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end8, label %if.end12

do.end8:                                          ; preds = %do.end
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end8.pci_name.exit_crit_edge

do.end8.pci_name.exit_crit_edge:                  ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end8.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %do.end8.pci_name.exit_crit_edge ]
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %retval.0.i.i) #14
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call13 = tail call ptr @framebuffer_alloc(i32 noundef 8312, ptr noundef %dev) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %par = getelementptr inbounds %struct.fb_info, ptr %call13, i32 0, i32 30
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %5, align 8
  %pdev18 = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 9
  %7 = ptrtoint ptr %pdev18 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdev, ptr %pdev18, align 4
  %reg_lock = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 47
  tail call void @__raw_spin_lock_init(ptr noundef %reg_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @radeonfb_pci_register.__key, i16 noundef signext 3) #11
  %lvds_timer = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 48
  tail call void @init_timer_key(ptr noundef %lvds_timer, ptr noundef nonnull @radeon_lvds_timer_func, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @radeonfb_pci_register.__key.12) #11
  %device = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 1
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device, align 4
  %shr = lshr i32 %9, 8
  %conv28 = and i32 %shr, 255
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv28
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %12 = and i8 %11, -105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp31.not = icmp eq i8 %12, 0
  br i1 %cmp31.not, label %if.end16.if.else_crit_edge, label %land.lhs.true

if.end16.if.else_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.end16
  %conv33 = and i32 %9, 255
  %arrayidx34 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv33
  %13 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx34, align 1
  %15 = and i8 %14, -105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp37.not = icmp eq i8 %15, 0
  br i1 %cmp37.not, label %land.lhs.true.if.else_crit_edge, label %if.then39

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 3
  %and41 = and i32 %9, 65535
  %call44 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 50, ptr noundef nonnull @.str.14, i32 noundef %and41, i32 noundef %conv28, i32 noundef %conv33)
  br label %if.end50

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end16.if.else_crit_edge
  %name45 = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 3
  %and48 = and i32 %9, 65535
  %call49 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name45, i32 noundef 50, ptr noundef nonnull @.str.15, i32 noundef %and48)
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then39
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %16 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %driver_data, align 4
  %conv52 = trunc i32 %17 to i8
  %family = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 15
  %18 = ptrtoint ptr %family to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv52, ptr %family, align 4
  %device53 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %19 = ptrtoint ptr %device53 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device53, align 2
  %conv54 = zext i16 %20 to i32
  %chipset = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 14
  %21 = ptrtoint ptr %chipset to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv54, ptr %chipset, align 8
  %22 = load i32, ptr %driver_data, align 4
  %and56 = lshr i32 %22, 18
  %and56.lobit = and i32 %and56, 1
  %has_CRTC2 = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 25
  %23 = ptrtoint ptr %has_CRTC2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and56.lobit, ptr %has_CRTC2, align 8
  %24 = load i32, ptr %driver_data, align 4
  %and60 = lshr i32 %24, 16
  %and60.lobit = and i32 %and60, 1
  %is_mobility = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 26
  %25 = ptrtoint ptr %is_mobility to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and60.lobit, ptr %is_mobility, align 4
  %26 = load i32, ptr %driver_data, align 4
  %and64 = lshr i32 %26, 17
  %and64.lobit = and i32 %and64, 1
  %is_IGP = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 27
  %27 = ptrtoint ptr %is_IGP to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and64.lobit, ptr %is_IGP, align 8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %28 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %resource, align 8
  %fb_base_phys = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 5
  %30 = ptrtoint ptr %fb_base_phys to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %fb_base_phys, align 4
  %arrayidx69 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %31 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx69, align 8
  %mmio_base_phys = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 4
  %33 = ptrtoint ptr %mmio_base_phys to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %mmio_base_phys, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 12) #16
  %tobool.not.i.i470 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i470, label %if.end50.err_release_fb_crit_edge, label %if.end74

if.end50.err_release_fb_crit_edge:                ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_release_fb

if.end74:                                         ; preds = %if.end50
  %35 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %call7.i.i.i.i, align 8
  %36 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %resource, align 8
  %ranges.i = getelementptr inbounds %struct.apertures_struct, ptr %call7.i.i.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %ranges.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %ranges.i, align 4
  %end.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %39 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i = icmp eq i32 %40, 0
  %sub.i = sub i32 1, %37
  %add.i = add i32 %sub.i, %40
  %cond.i = select i1 %cmp.i, i32 0, i32 %add.i
  %size.i = getelementptr inbounds %struct.apertures_struct, ptr %call7.i.i.i.i, i32 2
  %41 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %cond.i, ptr %size.i, align 8
  %call12.i = tail call i32 @remove_conflicting_framebuffers(ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull @.str.7, i1 noundef zeroext false) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  %call75 = tail call i32 @pci_request_region(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull @.str.16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %do.end81, label %if.end86

do.end81:                                         ; preds = %if.end74
  %42 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev18, align 4
  %init_name.i.i472 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44, i32 3
  %44 = ptrtoint ptr %init_name.i.i472 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i.i472, align 8
  %tobool.not.i.i473 = icmp eq ptr %45, null
  br i1 %tobool.not.i.i473, label %if.end.i.i475, label %do.end81.pci_name.exit477_crit_edge

do.end81.pci_name.exit477_crit_edge:              ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit477

if.end.i.i475:                                    ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i474 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %46 = ptrtoint ptr %dev.i474 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i474, align 4
  br label %pci_name.exit477

pci_name.exit477:                                 ; preds = %if.end.i.i475, %do.end81.pci_name.exit477_crit_edge
  %retval.0.i.i476 = phi ptr [ %47, %if.end.i.i475 ], [ %45, %do.end81.pci_name.exit477_crit_edge ]
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %retval.0.i.i476) #14
  br label %err_release_fb

if.end86:                                         ; preds = %if.end74
  %call87 = tail call i32 @pci_request_region(ptr noundef %pdev, i32 noundef 2, ptr noundef nonnull @.str.20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %do.end93, label %if.end98

do.end93:                                         ; preds = %if.end86
  %48 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev18, align 4
  %init_name.i.i478 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44, i32 3
  %50 = ptrtoint ptr %init_name.i.i478 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %init_name.i.i478, align 8
  %tobool.not.i.i479 = icmp eq ptr %51, null
  br i1 %tobool.not.i.i479, label %if.end.i.i481, label %do.end93.pci_name.exit483_crit_edge

do.end93.pci_name.exit483_crit_edge:              ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit483

if.end.i.i481:                                    ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i480 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %52 = ptrtoint ptr %dev.i480 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i480, align 4
  br label %pci_name.exit483

pci_name.exit483:                                 ; preds = %if.end.i.i481, %do.end93.pci_name.exit483_crit_edge
  %retval.0.i.i482 = phi ptr [ %53, %if.end.i.i481 ], [ %51, %do.end93.pci_name.exit483_crit_edge ]
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %retval.0.i.i482) #14
  br label %err_release_pci0

if.end98:                                         ; preds = %if.end86
  %54 = ptrtoint ptr %mmio_base_phys to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mmio_base_phys, align 8
  %call100 = tail call ptr @ioremap(i32 noundef %55, i32 noundef 16384) #11
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 6
  %56 = ptrtoint ptr %mmio_base to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call100, ptr %mmio_base, align 8
  %tobool102.not = icmp eq ptr %call100, null
  br i1 %tobool102.not, label %do.end106, label %if.end111

do.end106:                                        ; preds = %if.end98
  %57 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdev18, align 4
  %init_name.i.i484 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44, i32 3
  %59 = ptrtoint ptr %init_name.i.i484 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_name.i.i484, align 8
  %tobool.not.i.i485 = icmp eq ptr %60, null
  br i1 %tobool.not.i.i485, label %if.end.i.i487, label %do.end106.pci_name.exit489_crit_edge

do.end106.pci_name.exit489_crit_edge:             ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit489

if.end.i.i487:                                    ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i486 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  %61 = ptrtoint ptr %dev.i486 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i486, align 4
  br label %pci_name.exit489

pci_name.exit489:                                 ; preds = %if.end.i.i487, %do.end106.pci_name.exit489_crit_edge
  %retval.0.i.i488 = phi ptr [ %62, %if.end.i.i487 ], [ %60, %do.end106.pci_name.exit489_crit_edge ]
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %retval.0.i.i488) #14
  br label %err_release_pci2

if.end111:                                        ; preds = %if.end98
  %add.ptr = getelementptr i8, ptr %call100, i32 328
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !332
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !384
  %shl = shl i32 %64, 16
  %fb_local_base = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 8
  %65 = ptrtoint ptr %fb_local_base to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %shl, ptr %fb_local_base, align 8
  %errata = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 17
  %66 = ptrtoint ptr %errata to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %errata, align 8
  %67 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %68)
  %cmp118 = icmp eq i8 %68, 11
  br i1 %cmp118, label %land.lhs.true120, label %if.end111.if.end133_crit_edge

if.end111.if.end133_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end133

land.lhs.true120:                                 ; preds = %if.end111
  %69 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mmio_base, align 8
  %add.ptr124 = getelementptr i8, ptr %70, i32 224
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr124) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !385
  %72 = and i32 %71, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp129 = icmp eq i32 %72, 0
  br i1 %cmp129, label %if.then131, label %land.lhs.true120.if.end133_crit_edge

land.lhs.true120.if.end133_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end133

if.then131:                                       ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #13
  %73 = ptrtoint ptr %errata to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %errata, align 8
  %or = or i32 %74, 1
  store i32 %or, ptr %errata, align 8
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %land.lhs.true120.if.end133_crit_edge, %if.end111.if.end133_crit_edge
  %75 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %family, align 4
  %.off = add i8 %76, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then142, label %if.end133.if.end145_crit_edge

if.end133.if.end145_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end145

if.then142:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  %77 = ptrtoint ptr %errata to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %errata, align 8
  %or144 = or i32 %78, 2
  store i32 %or144, ptr %errata, align 8
  %79 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %79)
  %.pr = load i8, ptr %family, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then142, %if.end133.if.end145_crit_edge
  %80 = phi i8 [ %76, %if.end133.if.end145_crit_edge ], [ %.pr, %if.then142 ]
  %81 = zext i8 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.111)
  switch i8 %80, label %if.end145.if.end163_crit_edge [
    i8 3, label %if.end145.if.then160_crit_edge
    i8 4, label %if.end145.if.then160_crit_edge529
    i8 6, label %if.end145.if.then160_crit_edge530
  ]

if.end145.if.then160_crit_edge530:                ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then160

if.end145.if.then160_crit_edge529:                ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then160

if.end145.if.then160_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then160

if.end145.if.end163_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end163

if.then160:                                       ; preds = %if.end145.if.then160_crit_edge, %if.end145.if.then160_crit_edge529, %if.end145.if.then160_crit_edge530
  %82 = ptrtoint ptr %errata to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %errata, align 8
  %or162 = or i32 %83, 4
  store i32 %or162, ptr %errata, align 8
  br label %if.end163

if.end163:                                        ; preds = %if.then160, %if.end145.if.end163_crit_edge
  tail call fastcc void @radeon_identify_vram(ptr noundef %5)
  %video_ram = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 18
  %84 = ptrtoint ptr %video_ram to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %video_ram, align 4
  %86 = tail call i32 @llvm.umin.i32(i32 %85, i32 16777216)
  %mapped_vram = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 19
  %87 = ptrtoint ptr %mapped_vram to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %mapped_vram, align 8
  %fb_base = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 7
  br label %do.body167

do.body167:                                       ; preds = %land.rhs.do.body167_crit_edge, %if.end163
  %88 = ptrtoint ptr %fb_base_phys to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %fb_base_phys, align 4
  %90 = ptrtoint ptr %mapped_vram to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mapped_vram, align 8
  %call170 = tail call ptr @ioremap_wc(i32 noundef %89, i32 noundef %91) #11
  %92 = ptrtoint ptr %fb_base to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call170, ptr %fb_base, align 4
  %cmp173 = icmp eq ptr %call170, null
  br i1 %cmp173, label %land.rhs, label %do.body167.do.body191_crit_edge

do.body167.do.body191_crit_edge:                  ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body191

land.rhs:                                         ; preds = %do.body167
  %93 = ptrtoint ptr %mapped_vram to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %mapped_vram, align 8
  %div463 = lshr i32 %94, 1
  store i32 %div463, ptr %mapped_vram, align 8
  %cmp176 = icmp ugt i32 %94, 1572863
  br i1 %cmp176, label %land.rhs.do.body167_crit_edge, label %do.end178

land.rhs.do.body167_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body167

do.end178:                                        ; preds = %land.rhs
  %95 = ptrtoint ptr %fb_base to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pr522 = load ptr, ptr %fb_base, align 4
  %cmp180 = icmp eq ptr %.pr522, null
  br i1 %cmp180, label %do.end185, label %do.end178.do.body191_crit_edge

do.end178.do.body191_crit_edge:                   ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body191

do.end185:                                        ; preds = %do.end178
  %96 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pdev18, align 4
  %init_name.i.i490 = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 44, i32 3
  %98 = ptrtoint ptr %init_name.i.i490 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %init_name.i.i490, align 8
  %tobool.not.i.i491 = icmp eq ptr %99, null
  br i1 %tobool.not.i.i491, label %if.end.i.i493, label %do.end185.pci_name.exit495_crit_edge

do.end185.pci_name.exit495_crit_edge:             ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit495

if.end.i.i493:                                    ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i492 = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 44
  %100 = ptrtoint ptr %dev.i492 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev.i492, align 4
  br label %pci_name.exit495

pci_name.exit495:                                 ; preds = %if.end.i.i493, %do.end185.pci_name.exit495_crit_edge
  %retval.0.i.i494 = phi ptr [ %101, %if.end.i.i493 ], [ %99, %do.end185.pci_name.exit495_crit_edge ]
  %call189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %retval.0.i.i494) #14
  br label %err_unmap_rom

do.body191:                                       ; preds = %do.end178.do.body191_crit_edge, %do.body167.do.body191_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeonfb_pci_register.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeonfb_pci_register, %do.end212)) #11
          to label %if.then205 [label %do.end212], !srcloc !383

if.then205:                                       ; preds = %do.body191
  %102 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pdev18, align 4
  %init_name.i.i496 = getelementptr inbounds %struct.pci_dev, ptr %103, i32 0, i32 44, i32 3
  %104 = ptrtoint ptr %init_name.i.i496 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %init_name.i.i496, align 8
  %tobool.not.i.i497 = icmp eq ptr %105, null
  br i1 %tobool.not.i.i497, label %if.end.i.i499, label %if.then205.pci_name.exit501_crit_edge

if.then205.pci_name.exit501_crit_edge:            ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit501

if.end.i.i499:                                    ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i498 = getelementptr inbounds %struct.pci_dev, ptr %103, i32 0, i32 44
  %106 = ptrtoint ptr %dev.i498 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev.i498, align 4
  br label %pci_name.exit501

pci_name.exit501:                                 ; preds = %if.end.i.i499, %if.then205.pci_name.exit501_crit_edge
  %retval.0.i.i500 = phi ptr [ %107, %if.end.i.i499 ], [ %105, %if.then205.pci_name.exit501_crit_edge ]
  %108 = ptrtoint ptr %mapped_vram to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %mapped_vram, align 8
  %div209462 = lshr i32 %109, 10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeonfb_pci_register.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.30, ptr noundef %retval.0.i.i500, i32 noundef %div209462) #11
  br label %do.end212

do.end212:                                        ; preds = %pci_name.exit501, %do.body191
  %110 = ptrtoint ptr %is_mobility to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %is_mobility, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool214.not = icmp eq i32 %111, 0
  br i1 %tobool214.not, label %if.then215, label %do.end212.if.end217_crit_edge

do.end212.if.end217_crit_edge:                    ; preds = %do.end212
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end217

if.then215:                                       ; preds = %do.end212
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @radeon_map_ROM(ptr noundef %5, ptr noundef %pdev)
  br label %if.end217

if.end217:                                        ; preds = %if.then215, %do.end212.if.end217_crit_edge
  %bios_seg = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 10
  %112 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %bios_seg, align 8
  %cmp218 = icmp eq ptr %113, null
  br i1 %cmp218, label %land.lhs.true220, label %if.end217.if.end225_crit_edge

if.end217.if.end225_crit_edge:                    ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end225

land.lhs.true220:                                 ; preds = %if.end217
  %114 = ptrtoint ptr %is_mobility to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %is_mobility, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool222.not = icmp eq i32 %115, 0
  br i1 %tobool222.not, label %land.lhs.true220.if.end225_crit_edge, label %if.then223

land.lhs.true220.if.end225_crit_edge:             ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end225

if.then223:                                       ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @radeon_map_ROM(ptr noundef %5, ptr noundef %pdev)
  br label %if.end225

if.end225:                                        ; preds = %if.then223, %land.lhs.true220.if.end225_crit_edge, %if.end217.if.end225_crit_edge
  tail call fastcc void @radeon_get_pllinfo(ptr noundef %5)
  tail call void @radeon_create_i2c_busses(ptr noundef %5) #11
  tail call fastcc void @radeon_set_fbinfo(ptr noundef %5)
  %116 = load ptr, ptr @monitor_layout, align 4
  %117 = load i8, ptr @ignore_edid, align 1, !range !359
  %118 = zext i8 %117 to i32
  tail call void @radeon_probe_screens(ptr noundef %5, ptr noundef %116, i32 noundef %118) #11
  %119 = load ptr, ptr @mode_option, align 4
  tail call void @radeon_check_modes(ptr noundef %5, ptr noundef %119) #11
  %mon1_EDID = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 32
  %120 = ptrtoint ptr %mon1_EDID to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mon1_EDID, align 8
  %tobool229.not = icmp eq ptr %121, null
  br i1 %tobool229.not, label %if.end225.if.end235_crit_edge, label %if.then230

if.end225.if.end235_crit_edge:                    ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end235

if.then230:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #13
  %122 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pdev18, align 4
  %dev232 = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44
  %call233 = tail call i32 @sysfs_create_bin_file(ptr noundef %dev232, ptr noundef nonnull @edid1_attr) #11
  br label %if.end235

if.end235:                                        ; preds = %if.then230, %if.end225.if.end235_crit_edge
  %err.0 = phi i32 [ %call233, %if.then230 ], [ 0, %if.end225.if.end235_crit_edge ]
  %mon2_EDID = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 36
  %124 = ptrtoint ptr %mon2_EDID to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mon2_EDID, align 8
  %tobool236.not = icmp eq ptr %125, null
  br i1 %tobool236.not, label %if.end235.if.end243_crit_edge, label %if.then237

if.end235.if.end243_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end243

if.then237:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #13
  %126 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pdev18, align 4
  %dev239 = getelementptr inbounds %struct.pci_dev, ptr %127, i32 0, i32 44
  %call241 = tail call i32 @sysfs_create_bin_file(ptr noundef %dev239, ptr noundef nonnull @edid2_attr) #11
  %or242 = or i32 %call241, %err.0
  br label %if.end243

if.end243:                                        ; preds = %if.then237, %if.end235.if.end243_crit_edge
  %err.1 = phi i32 [ %or242, %if.then237 ], [ %err.0, %if.end235.if.end243_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool244.not = icmp eq i32 %err.1, 0
  br i1 %tobool244.not, label %if.end243.if.end251_crit_edge, label %do.end248

if.end243.if.end251_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end251

do.end248:                                        ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #13
  %call250 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.8) #14
  br label %if.end251

if.end251:                                        ; preds = %do.end248, %if.end243.if.end251_crit_edge
  %init_state = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 2
  tail call fastcc void @radeon_save_state(ptr noundef %5, ptr noundef %init_state)
  %state = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 1
  %128 = call ptr @memcpy(ptr %state, ptr %init_state, i32 396)
  %129 = load i32, ptr @default_dynclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %129)
  %cmp253 = icmp slt i32 %129, -1
  br i1 %cmp253, label %if.then255, label %if.end251.if.end268_crit_edge

if.end251.if.end268_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end268

if.then255:                                       ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #13
  %130 = ptrtoint ptr %is_mobility to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %is_mobility, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool257.not = icmp eq i32 %131, 0
  %cond258 = select i1 %tobool257.not, i32 -1, i32 1
  br label %if.end268

if.end268:                                        ; preds = %if.then255, %if.end251.if.end268_crit_edge
  %.sink = phi i32 [ %cond258, %if.then255 ], [ %129, %if.end251.if.end268_crit_edge ]
  tail call void @radeonfb_pm_init(ptr noundef %5, i32 noundef %.sink, i32 noundef 0, i32 noundef 0) #11
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %132 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call13, ptr %driver_data.i.i, align 4
  %call269 = tail call i32 @register_framebuffer(ptr noundef nonnull %call13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call269)
  %cmp270 = icmp slt i32 %call269, 0
  br i1 %cmp270, label %do.end275, label %if.end280

do.end275:                                        ; preds = %if.end268
  %133 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %pdev18, align 4
  %init_name.i.i502 = getelementptr inbounds %struct.pci_dev, ptr %134, i32 0, i32 44, i32 3
  %135 = ptrtoint ptr %init_name.i.i502 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %init_name.i.i502, align 8
  %tobool.not.i.i503 = icmp eq ptr %136, null
  br i1 %tobool.not.i.i503, label %if.end.i.i505, label %do.end275.pci_name.exit507_crit_edge

do.end275.pci_name.exit507_crit_edge:             ; preds = %do.end275
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit507

if.end.i.i505:                                    ; preds = %do.end275
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i504 = getelementptr inbounds %struct.pci_dev, ptr %134, i32 0, i32 44
  %137 = ptrtoint ptr %dev.i504 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev.i504, align 4
  br label %pci_name.exit507

pci_name.exit507:                                 ; preds = %if.end.i.i505, %do.end275.pci_name.exit507_crit_edge
  %retval.0.i.i506 = phi ptr [ %138, %if.end.i.i505 ], [ %136, %do.end275.pci_name.exit507_crit_edge ]
  %call279 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %retval.0.i.i506) #14
  %139 = ptrtoint ptr %fb_base to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %fb_base, align 4
  tail call void @iounmap(ptr noundef %140) #11
  br label %err_unmap_rom

if.end280:                                        ; preds = %if.end268
  %141 = load i8, ptr @nomtrr, align 1, !range !359
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool281.not = icmp eq i8 %141, 0
  br i1 %tobool281.not, label %if.then282, label %if.end280.if.end286_crit_edge

if.end280.if.end286_crit_edge:                    ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end286

if.then282:                                       ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #13
  %wc_cookie = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 39
  %142 = ptrtoint ptr %wc_cookie to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %wc_cookie, align 8
  br label %if.end286

if.end286:                                        ; preds = %if.then282, %if.end280.if.end286_crit_edge
  %143 = load i32, ptr @backlight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool287.not = icmp eq i32 %143, 0
  br i1 %tobool287.not, label %if.end286.do.end292_crit_edge, label %if.then288

if.end286.do.end292_crit_edge:                    ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end292

if.then288:                                       ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeonfb_bl_init(ptr noundef %5) #11
  br label %do.end292

do.end292:                                        ; preds = %if.then288, %if.end286.do.end292_crit_edge
  %144 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pdev18, align 4
  %init_name.i.i508 = getelementptr inbounds %struct.pci_dev, ptr %145, i32 0, i32 44, i32 3
  %146 = ptrtoint ptr %init_name.i.i508 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %init_name.i.i508, align 8
  %tobool.not.i.i509 = icmp eq ptr %147, null
  br i1 %tobool.not.i.i509, label %if.end.i.i511, label %do.end292.pci_name.exit513_crit_edge

do.end292.pci_name.exit513_crit_edge:             ; preds = %do.end292
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit513

if.end.i.i511:                                    ; preds = %do.end292
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i510 = getelementptr inbounds %struct.pci_dev, ptr %145, i32 0, i32 44
  %148 = ptrtoint ptr %dev.i510 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev.i510, align 4
  br label %pci_name.exit513

pci_name.exit513:                                 ; preds = %if.end.i.i511, %do.end292.pci_name.exit513_crit_edge
  %retval.0.i.i512 = phi ptr [ %149, %if.end.i.i511 ], [ %147, %do.end292.pci_name.exit513_crit_edge ]
  %name296 = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 3
  %call298 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %retval.0.i.i512, ptr noundef %name296) #14
  %150 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %bios_seg, align 8
  %tobool300.not = icmp eq ptr %151, null
  br i1 %tobool300.not, label %pci_name.exit513.do.body303_crit_edge, label %radeon_unmap_ROM.exit

pci_name.exit513.do.body303_crit_edge:            ; preds = %pci_name.exit513
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body303

radeon_unmap_ROM.exit:                            ; preds = %pci_name.exit513
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unmap_rom(ptr noundef %pdev, ptr noundef nonnull %151) #11
  br label %do.body303

do.body303:                                       ; preds = %radeon_unmap_ROM.exit, %pci_name.exit513.do.body303_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeonfb_pci_register.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeonfb_pci_register, %cleanup)) #11
          to label %if.then317 [label %cleanup], !srcloc !383

if.then317:                                       ; preds = %do.body303
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeonfb_pci_register.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.40) #11
  br label %cleanup

err_unmap_rom:                                    ; preds = %pci_name.exit507, %pci_name.exit495
  %ret.0 = phi i32 [ -5, %pci_name.exit495 ], [ %call269, %pci_name.exit507 ]
  %mon1_EDID322 = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 32
  %152 = ptrtoint ptr %mon1_EDID322 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %mon1_EDID322, align 8
  tail call void @kfree(ptr noundef %153) #11
  %mon2_EDID323 = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 36
  %154 = ptrtoint ptr %mon2_EDID323 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %mon2_EDID323, align 8
  tail call void @kfree(ptr noundef %155) #11
  %mon1_modedb = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 33
  %156 = ptrtoint ptr %mon1_modedb to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %mon1_modedb, align 4
  %tobool324.not = icmp eq ptr %157, null
  br i1 %tobool324.not, label %err_unmap_rom.if.end327_crit_edge, label %if.then325

err_unmap_rom.if.end327_crit_edge:                ; preds = %err_unmap_rom
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end327

if.then325:                                       ; preds = %err_unmap_rom
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fb_destroy_modedb(ptr noundef nonnull %157) #11
  br label %if.end327

if.end327:                                        ; preds = %if.then325, %err_unmap_rom.if.end327_crit_edge
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call13, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #11
  tail call void @radeon_delete_i2c_busses(ptr noundef %5) #11
  %bios_seg328 = getelementptr inbounds %struct.radeonfb_info, ptr %5, i32 0, i32 10
  %158 = ptrtoint ptr %bios_seg328 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %bios_seg328, align 8
  %tobool329.not = icmp eq ptr %159, null
  br i1 %tobool329.not, label %if.end327.if.end331_crit_edge, label %radeon_unmap_ROM.exit518

if.end327.if.end331_crit_edge:                    ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end331

radeon_unmap_ROM.exit518:                         ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unmap_rom(ptr noundef %pdev, ptr noundef nonnull %159) #11
  br label %if.end331

if.end331:                                        ; preds = %radeon_unmap_ROM.exit518, %if.end327.if.end331_crit_edge
  %160 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %mmio_base, align 8
  tail call void @iounmap(ptr noundef %161) #11
  br label %err_release_pci2

err_release_pci2:                                 ; preds = %if.end331, %pci_name.exit489
  %ret.1 = phi i32 [ %ret.0, %if.end331 ], [ -5, %pci_name.exit489 ]
  tail call void @pci_release_region(ptr noundef %pdev, i32 noundef 2) #11
  br label %err_release_pci0

err_release_pci0:                                 ; preds = %err_release_pci2, %pci_name.exit483
  %ret.2 = phi i32 [ %call87, %pci_name.exit483 ], [ %ret.1, %err_release_pci2 ]
  tail call void @pci_release_region(ptr noundef %pdev, i32 noundef 0) #11
  br label %err_release_fb

err_release_fb:                                   ; preds = %err_release_pci0, %pci_name.exit477, %if.end50.err_release_fb_crit_edge
  %ret.3 = phi i32 [ %call75, %pci_name.exit477 ], [ %ret.2, %err_release_pci0 ], [ -12, %if.end50.err_release_fb_crit_edge ]
  tail call void @framebuffer_release(ptr noundef nonnull %call13) #11
  br label %cleanup

cleanup:                                          ; preds = %err_release_fb, %if.then317, %do.body303, %if.end12.cleanup_crit_edge, %pci_name.exit
  %retval.0 = phi i32 [ 0, %if.then317 ], [ %call4, %pci_name.exit ], [ %ret.3, %err_release_fb ], [ -12, %if.end12.cleanup_crit_edge ], [ 0, %do.body303 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeonfb_pci_unregister(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @radeonfb_pm_exit(ptr noundef nonnull %3) #11
  %mon1_EDID = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %mon1_EDID to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mon1_EDID, align 8
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %pdev3 = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev3, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void @sysfs_remove_bin_file(ptr noundef %dev, ptr noundef nonnull @edid1_attr) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %mon2_EDID = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 36
  %8 = ptrtoint ptr %mon2_EDID to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mon2_EDID, align 8
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.end4.if.end10_crit_edge, label %if.then6

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %pdev7 = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %pdev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev7, align 4
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void @sysfs_remove_bin_file(ptr noundef %dev8, ptr noundef nonnull @edid2_attr) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end4.if.end10_crit_edge
  %lvds_timer = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 48
  %call11 = tail call i32 @del_timer_sync(ptr noundef %lvds_timer) #11
  tail call void @unregister_framebuffer(ptr noundef %1) #11
  tail call void @radeonfb_bl_exit(ptr noundef nonnull %3) #11
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio_base, align 8
  tail call void @iounmap(ptr noundef %13) #11
  %fb_base = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %fb_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fb_base, align 4
  tail call void @iounmap(ptr noundef %15) #11
  tail call void @pci_release_region(ptr noundef %pdev, i32 noundef 2) #11
  tail call void @pci_release_region(ptr noundef %pdev, i32 noundef 0) #11
  %16 = ptrtoint ptr %mon1_EDID to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mon1_EDID, align 8
  tail call void @kfree(ptr noundef %17) #11
  %18 = ptrtoint ptr %mon2_EDID to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mon2_EDID, align 8
  tail call void @kfree(ptr noundef %19) #11
  %mon1_modedb = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 33
  %20 = ptrtoint ptr %mon1_modedb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mon1_modedb, align 4
  %tobool14.not = icmp eq ptr %21, null
  br i1 %tobool14.not, label %if.end10.if.end17_crit_edge, label %if.then15

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fb_destroy_modedb(ptr noundef nonnull %21) #11
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end10.if.end17_crit_edge
  tail call void @radeon_delete_i2c_busses(ptr noundef nonnull %3) #11
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #11
  tail call void @framebuffer_release(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_lvds_timer_func(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -2624
  %mmio_base.i.i = getelementptr i8, ptr %t, i32 -1768
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %entry
  %i.06.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %0 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 3648
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !347
  %3 = and i32 %2, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.not.i.not.not.i = icmp eq i32 %3, 0
  br i1 %cmp2.not.i.not.not.i, label %if.end.i.i, label %for.body.i.i.for.body.i.preheader_crit_edge

for.body.i.i.for.body.i.preheader_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.preheader

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #11
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 2000000
  br i1 %exitcond.not.i.i, label %do.end.i.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %do.end.i.i, %for.body.i.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.08.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %5 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 3648
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !349
  %.mask.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %cmp2.i = icmp eq i32 %.mask.i, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_engine_flush(ptr noundef %add.ptr) #11
  br label %_radeon_engine_idle.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #11
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2000000
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #14
  br label %_radeon_engine_idle.exit

_radeon_engine_idle.exit:                         ; preds = %do.end.i, %if.then.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !386
  tail call void @arm_heavy_mb() #11
  %pending_lvds_gen_cntl = getelementptr i8, ptr %t, i32 48
  %9 = ptrtoint ptr %pending_lvds_gen_cntl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pending_lvds_gen_cntl, align 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr1 = getelementptr i8, ptr %13, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %11) #11, !srcloc !337
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_region(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_identify_vram(ptr noundef %rinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 15
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %family, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.112)
  switch i8 %1, label %if.else [
    i8 4, label %entry.if.then_crit_edge
    i8 6, label %entry.if.then_crit_edge275
    i8 9, label %entry.if.then_crit_edge276
    i8 16, label %entry.if.then_crit_edge277
    i8 17, label %entry.if.then_crit_edge278
    i8 18, label %entry.if.then_crit_edge279
  ]

entry.if.then_crit_edge279:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge278:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge277:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge276:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge275:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge275, %entry.if.then_crit_edge276, %entry.if.then_crit_edge277, %entry.if.then_crit_edge278, %entry.if.then_crit_edge279
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %3 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 348
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !332
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !387
  %shr270 = mul i32 %6, -65535
  %7 = add i32 %shr270, 65536
  %mul = and i32 %7, -65536
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then
  %i.06.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 3648
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !347
  %11 = and i32 %10, 2113929216
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %11)
  %cmp2.not.i = icmp ult i32 %11, 100663296
  br i1 %cmp2.not.i, label %if.end.i, label %for.body.i._radeon_fifo_wait.exit_crit_edge

for.body.i._radeon_fifo_wait.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_radeon_fifo_wait.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #11
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2000000
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %_radeon_fifo_wait.exit

_radeon_fifo_wait.exit:                           ; preds = %do.end.i, %for.body.i._radeon_fifo_wait.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !388
  tail call void @arm_heavy_mb() #11
  %13 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio_base, align 8
  %add.ptr29 = getelementptr i8, ptr %14, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %5) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !389
  tail call void @arm_heavy_mb() #11
  %15 = lshr i32 %5, 16
  %16 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio_base, align 8
  %add.ptr36 = getelementptr i8, ptr %17, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %15) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !390
  tail call void @arm_heavy_mb() #11
  %18 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio_base, align 8
  %add.ptr43 = getelementptr i8, ptr %19, i32 828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %15) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !391
  tail call void @arm_heavy_mb() #11
  %20 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio_base, align 8
  %add.ptr50 = getelementptr i8, ptr %21, i32 1084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %15) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !392
  tail call void @arm_heavy_mb() #11
  %22 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio_base, align 8
  %add.ptr57 = getelementptr i8, ptr %23, i32 1008
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !393
  %25 = and i32 %24, -32513
  %26 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio_base, align 8
  %add.ptr63 = getelementptr i8, ptr %27, i32 1008
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %25) #11, !srcloc !337
  %28 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %family, align 4
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.113)
  switch i8 %29, label %_radeon_fifo_wait.exit.if.end81_crit_edge [
    i8 4, label %_radeon_fifo_wait.exit.if.then73_crit_edge
    i8 6, label %_radeon_fifo_wait.exit.if.then73_crit_edge280
  ]

_radeon_fifo_wait.exit.if.then73_crit_edge280:    ; preds = %_radeon_fifo_wait.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then73

_radeon_fifo_wait.exit.if.then73_crit_edge:       ; preds = %_radeon_fifo_wait.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then73

_radeon_fifo_wait.exit.if.end81_crit_edge:        ; preds = %_radeon_fifo_wait.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then73:                                        ; preds = %_radeon_fifo_wait.exit.if.then73_crit_edge, %_radeon_fifo_wait.exit.if.then73_crit_edge280
  %reg_lock.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 47
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #11
  %31 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i272 = getelementptr i8, ptr %32, i32 636
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i272) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %34 = or i32 %33, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !341
  tail call void @arm_heavy_mb() #11
  %35 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio_base, align 8
  %add.ptr13.i = getelementptr i8, ptr %36, i32 636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %34) #11, !srcloc !337
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call3.i) #11
  br label %if.end81

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mmio_base76 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %37 = ptrtoint ptr %mmio_base76 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio_base76, align 8
  %add.ptr77 = getelementptr i8, ptr %38, i32 248
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77) #11, !srcloc !332
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !394
  br label %if.end81

if.end81:                                         ; preds = %if.else, %if.then73, %_radeon_fifo_wait.exit.if.end81_crit_edge
  %tmp.0 = phi i32 [ %40, %if.else ], [ %mul, %_radeon_fifo_wait.exit.if.end81_crit_edge ], [ %mul, %if.then73 ]
  %and82 = and i32 %tmp.0, 520093696
  %video_ram = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 18
  %41 = ptrtoint ptr %video_ram to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and82, ptr %video_ram, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %cmp84 = icmp eq i32 %and82, 0
  br i1 %cmp84, label %if.then86, label %if.end81.if.end89_crit_edge

if.end81.if.end89_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

if.then86:                                        ; preds = %if.end81
  %pdev = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 9
  %42 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %device, align 2
  %.off = add i16 %45, -19545
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %sw.bb, label %if.then86.if.end89_crit_edge

if.then86.if.end89_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

sw.bb:                                            ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %video_ram to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 8388608, ptr %video_ram, align 4
  br label %if.end89

if.end89:                                         ; preds = %sw.bb, %if.then86.if.end89_crit_edge, %if.end81.if.end89_crit_edge
  %is_IGP = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 27
  %47 = ptrtoint ptr %is_IGP to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %is_IGP, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not = icmp eq i32 %48, 0
  br i1 %tobool.not, label %lor.lhs.false90, label %if.end89.if.end108_crit_edge

if.end89.if.end108_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

lor.lhs.false90:                                  ; preds = %if.end89
  %49 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %50)
  %cmp93 = icmp ugt i8 %50, 10
  br i1 %cmp93, label %lor.lhs.false90.if.end108_crit_edge, label %lor.lhs.false95

lor.lhs.false90.if.end108_crit_edge:              ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

lor.lhs.false95:                                  ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #13
  %mmio_base98 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %51 = ptrtoint ptr %mmio_base98 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio_base98, align 8
  %add.ptr99 = getelementptr i8, ptr %52, i32 344
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr99) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !395
  %54 = lshr i32 %53, 6
  %.lobit = and i32 %54, 1
  br label %if.end108

if.end108:                                        ; preds = %lor.lhs.false95, %lor.lhs.false90.if.end108_crit_edge, %if.end89.if.end108_crit_edge
  %.sink = phi i32 [ 1, %lor.lhs.false90.if.end108_crit_edge ], [ 1, %if.end89.if.end108_crit_edge ], [ %.lobit, %lor.lhs.false95 ]
  %vram_ddr107 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 21
  %55 = ptrtoint ptr %vram_ddr107 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.sink, ptr %vram_ddr107, align 8
  %mmio_base111 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %56 = ptrtoint ptr %mmio_base111 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio_base111, align 8
  %add.ptr112 = getelementptr i8, ptr %57, i32 320
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr112) #11, !srcloc !332
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !396
  %60 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %family, align 4
  %62 = zext i8 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.114)
  switch i8 %61, label %if.else183 [
    i8 11, label %if.end108.if.then150_crit_edge
    i8 13, label %if.end108.if.then150_crit_edge281
    i8 12, label %if.end108.if.then150_crit_edge282
    i8 14, label %if.end108.if.then150_crit_edge283
    i8 15, label %if.end108.if.then150_crit_edge284
    i8 16, label %if.end108.if.then150_crit_edge285
    i8 18, label %if.end108.if.then150_crit_edge286
    i8 3, label %if.end108.if.then175_crit_edge
    i8 4, label %if.end108.if.then175_crit_edge287
    i8 6, label %if.end108.if.then175_crit_edge288
  ]

if.end108.if.then175_crit_edge288:                ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then175

if.end108.if.then175_crit_edge287:                ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then175

if.end108.if.then175_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then175

if.end108.if.then150_crit_edge286:                ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then150

if.end108.if.then150_crit_edge285:                ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then150

if.end108.if.then150_crit_edge284:                ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then150

if.end108.if.then150_crit_edge283:                ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then150

if.end108.if.then150_crit_edge282:                ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then150

if.end108.if.then150_crit_edge281:                ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then150

if.end108.if.then150_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then150

if.then150:                                       ; preds = %if.end108.if.then150_crit_edge, %if.end108.if.then150_crit_edge281, %if.end108.if.then150_crit_edge282, %if.end108.if.then150_crit_edge283, %if.end108.if.then150_crit_edge284, %if.end108.if.then150_crit_edge285, %if.end108.if.then150_crit_edge286
  %and151 = and i32 %59, 3
  %63 = zext i32 %and151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %and151, label %sw.default157 [
    i32 0, label %sw.bb152
    i32 1, label %sw.bb153
    i32 2, label %sw.bb155
  ]

sw.bb152:                                         ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #13
  %vram_width = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 20
  %64 = ptrtoint ptr %vram_width to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 64, ptr %vram_width, align 4
  br label %do.body193

sw.bb153:                                         ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #13
  %vram_width154 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 20
  %65 = ptrtoint ptr %vram_width154 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 128, ptr %vram_width154, align 4
  br label %do.body193

sw.bb155:                                         ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #13
  %vram_width156 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 20
  %66 = ptrtoint ptr %vram_width156 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 256, ptr %vram_width156, align 4
  br label %do.body193

sw.default157:                                    ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #13
  %vram_width158 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 20
  %67 = ptrtoint ptr %vram_width158 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 128, ptr %vram_width158, align 4
  br label %do.body193

if.then175:                                       ; preds = %if.end108.if.then175_crit_edge, %if.end108.if.then175_crit_edge287, %if.end108.if.then175_crit_edge288
  %and176 = and i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool177.not = icmp eq i32 %and176, 0
  %vram_width181 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 20
  br i1 %tobool177.not, label %if.else180, label %if.then178

if.then178:                                       ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %vram_width181 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 32, ptr %vram_width181, align 4
  br label %do.body193

if.else180:                                       ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %vram_width181 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 64, ptr %vram_width181, align 4
  br label %do.body193

if.else183:                                       ; preds = %if.end108
  %and184 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  %vram_width189 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 20
  br i1 %tobool185.not, label %if.else188, label %if.then186

if.then186:                                       ; preds = %if.else183
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %vram_width189 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 128, ptr %vram_width189, align 4
  br label %do.body193

if.else188:                                       ; preds = %if.else183
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %vram_width189 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 64, ptr %vram_width189, align 4
  br label %do.body193

do.body193:                                       ; preds = %if.else188, %if.then186, %if.else180, %if.then178, %sw.default157, %sw.bb155, %sw.bb153, %sw.bb152
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_identify_vram.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_identify_vram, %do.end209)) #11
          to label %if.then200 [label %do.end209], !srcloc !383

if.then200:                                       ; preds = %do.body193
  %pdev201 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 9
  %72 = ptrtoint ptr %pdev201 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdev201, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44, i32 3
  %74 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %75, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then200.pci_name.exit_crit_edge

if.then200.pci_name.exit_crit_edge:               ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  %76 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.then200.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %77, %if.end.i.i ], [ %75, %if.then200.pci_name.exit_crit_edge ]
  %78 = ptrtoint ptr %video_ram to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %video_ram, align 4
  %div268 = lshr i32 %79, 10
  %vram_ddr204 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 21
  %80 = ptrtoint ptr %vram_ddr204 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %vram_ddr204, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool205.not = icmp eq i32 %81, 0
  %cond = select i1 %tobool205.not, ptr @.str.44, ptr @.str.43
  %vram_width206 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 20
  %82 = ptrtoint ptr %vram_width206 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %vram_width206, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_identify_vram.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.42, ptr noundef %retval.0.i.i, i32 noundef %div268, ptr noundef nonnull %cond, i32 noundef %83) #11
  br label %do.end209

do.end209:                                        ; preds = %pci_name.exit, %do.body193
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_map_ROM(ptr nocapture noundef %rinfo, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %rom_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rom_size) #11
  %0 = ptrtoint ptr %rom_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rom_size, align 4, !annotation !397
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %1 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 448
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !398
  %4 = and i32 %3, -256
  %5 = or i32 %4, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !399
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_base, align 8
  %add.ptr3 = getelementptr i8, ptr %7, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #11, !srcloc !337
  %8 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio_base, align 8
  %add.ptr7 = getelementptr i8, ptr %9, i32 448
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !400
  %call11 = call ptr @pci_map_rom(ptr noundef %dev, ptr noundef nonnull %rom_size) #11
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %do.end14, label %if.end

do.end14:                                         ; preds = %entry
  %pdev = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 9
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44, i32 3
  %13 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end14.pci_name.exit_crit_edge

do.end14.pci_name.exit_crit_edge:                 ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end14.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %16, %if.end.i.i ], [ %14, %do.end14.pci_name.exit_crit_edge ]
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %retval.0.i.i) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %bios_seg = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 10
  %17 = ptrtoint ptr %bios_seg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call11, ptr %bios_seg, align 8
  %18 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %call11) #11, !srcloc !401
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !402
  %conv = zext i8 %18 to i32
  %19 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bios_seg, align 8
  %add.ptr29 = getelementptr i8, ptr %20, i32 1
  %21 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr29) #11, !srcloc !401
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !403
  %conv33 = zext i8 %21 to i32
  %shl = shl nuw nsw i32 %conv33, 8
  %or34 = or i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 43605, i32 %or34)
  %cmp.not = icmp eq i32 %or34, 43605
  br i1 %cmp.not, label %if.end63, label %do.end39

do.end39:                                         ; preds = %if.end
  %pdev41 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 9
  %22 = ptrtoint ptr %pdev41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev41, align 4
  %init_name.i.i1 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44, i32 3
  %24 = ptrtoint ptr %init_name.i.i1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i.i1, align 8
  %tobool.not.i.i2 = icmp eq ptr %25, null
  br i1 %tobool.not.i.i2, label %if.end.i.i4, label %do.end39.pci_name.exit6_crit_edge

do.end39.pci_name.exit6_crit_edge:                ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit6

if.end.i.i4:                                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i3 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %26 = ptrtoint ptr %dev.i3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i3, align 4
  br label %pci_name.exit6

pci_name.exit6:                                   ; preds = %if.end.i.i4, %do.end39.pci_name.exit6_crit_edge
  %retval.0.i.i5 = phi ptr [ %27, %if.end.i.i4 ], [ %25, %do.end39.pci_name.exit6_crit_edge ]
  %28 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bios_seg, align 8
  %30 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %29) #11, !srcloc !401
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !404
  %conv50 = zext i8 %30 to i32
  %31 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bios_seg, align 8
  %add.ptr55 = getelementptr i8, ptr %32, i32 1
  %33 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr55) #11, !srcloc !401
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !405
  %conv59 = zext i8 %33 to i32
  %shl60 = shl nuw nsw i32 %conv59, 8
  %or61 = or i32 %shl60, %conv50
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %retval.0.i.i5, i32 noundef %or61) #14
  br label %radeon_unmap_ROM.exit

if.end63:                                         ; preds = %if.end
  %34 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bios_seg, align 8
  %add.ptr67 = getelementptr i8, ptr %35, i32 24
  %36 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr67) #11, !srcloc !401
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !406
  %conv71 = zext i8 %36 to i32
  %37 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bios_seg, align 8
  %add.ptr76 = getelementptr i8, ptr %38, i32 25
  %39 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr76) #11, !srcloc !401
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !407
  %conv80 = zext i8 %39 to i32
  %shl81 = shl nuw nsw i32 %conv80, 8
  %or82 = or i32 %shl81, %conv71
  %40 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bios_seg, align 8
  %add.ptr88 = getelementptr i8, ptr %41, i32 %or82
  %42 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr88) #11, !srcloc !401
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !408
  %conv92 = zext i8 %42 to i32
  %43 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bios_seg, align 8
  %add.ptr97 = getelementptr i8, ptr %44, i32 %or82
  %add.ptr98 = getelementptr i8, ptr %add.ptr97, i32 1
  %45 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr98) #11, !srcloc !401
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !409
  %conv102 = zext i8 %45 to i32
  %shl103 = shl nuw nsw i32 %conv102, 8
  %or104 = or i32 %shl103, %conv92
  %46 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bios_seg, align 8
  %add.ptr109 = getelementptr i8, ptr %47, i32 %or82
  %add.ptr110 = getelementptr i8, ptr %add.ptr109, i32 2
  %48 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr110) #11, !srcloc !401
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !410
  %conv114 = zext i8 %48 to i32
  %shl115 = shl nuw nsw i32 %conv114, 16
  %or116 = or i32 %shl115, %or104
  %49 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bios_seg, align 8
  %add.ptr121 = getelementptr i8, ptr %50, i32 %or82
  %add.ptr122 = getelementptr i8, ptr %add.ptr121, i32 3
  %51 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr122) #11, !srcloc !401
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !411
  %conv126 = zext i8 %51 to i32
  %shl127 = shl nuw i32 %conv126, 24
  %or128 = or i32 %shl127, %or116
  call void @__sanitizer_cov_trace_const_cmp4(i32 1380533072, i32 %or128)
  %cmp129.not = icmp eq i32 %or128, 1380533072
  br i1 %cmp129.not, label %if.end184, label %do.end134

do.end134:                                        ; preds = %if.end63
  %pdev136 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 9
  %52 = ptrtoint ptr %pdev136 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev136, align 4
  %init_name.i.i7 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44, i32 3
  %54 = ptrtoint ptr %init_name.i.i7 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %init_name.i.i7, align 8
  %tobool.not.i.i8 = icmp eq ptr %55, null
  br i1 %tobool.not.i.i8, label %if.end.i.i10, label %do.end134.pci_name.exit12_crit_edge

do.end134.pci_name.exit12_crit_edge:              ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit12

if.end.i.i10:                                     ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i9 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  %56 = ptrtoint ptr %dev.i9 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i9, align 4
  br label %pci_name.exit12

pci_name.exit12:                                  ; preds = %if.end.i.i10, %do.end134.pci_name.exit12_crit_edge
  %retval.0.i.i11 = phi ptr [ %57, %if.end.i.i10 ], [ %55, %do.end134.pci_name.exit12_crit_edge ]
  %58 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bios_seg, align 8
  %add.ptr142 = getelementptr i8, ptr %59, i32 %or82
  %60 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr142) #11, !srcloc !401
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !412
  %conv146 = zext i8 %60 to i32
  %61 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bios_seg, align 8
  %add.ptr151 = getelementptr i8, ptr %62, i32 %or82
  %add.ptr152 = getelementptr i8, ptr %add.ptr151, i32 1
  %63 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr152) #11, !srcloc !401
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !413
  %conv156 = zext i8 %63 to i32
  %shl157 = shl nuw nsw i32 %conv156, 8
  %or158 = or i32 %shl157, %conv146
  %64 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bios_seg, align 8
  %add.ptr163 = getelementptr i8, ptr %65, i32 %or82
  %add.ptr164 = getelementptr i8, ptr %add.ptr163, i32 2
  %66 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr164) #11, !srcloc !401
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !414
  %conv168 = zext i8 %66 to i32
  %shl169 = shl nuw nsw i32 %conv168, 16
  %or170 = or i32 %shl169, %or158
  %67 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bios_seg, align 8
  %add.ptr175 = getelementptr i8, ptr %68, i32 %or82
  %add.ptr176 = getelementptr i8, ptr %add.ptr175, i32 3
  %69 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr176) #11, !srcloc !401
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !415
  %conv180 = zext i8 %69 to i32
  %shl181 = shl nuw i32 %conv180, 24
  %or182 = or i32 %shl181, %or170
  %call183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %retval.0.i.i11, i32 noundef %or182) #14
  br label %anyway

if.end184:                                        ; preds = %if.end63
  %70 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bios_seg, align 8
  %add = add nuw nsw i32 %or82, 20
  %add.ptr189 = getelementptr i8, ptr %71, i32 %add
  %72 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr189) #11, !srcloc !401
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !416
  %73 = zext i8 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.116)
  switch i8 %72, label %do.end213 [
    i8 0, label %do.end196
    i8 1, label %do.end202
    i8 2, label %do.end208
  ]

do.end196:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #13
  %call198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #14
  br label %anyway

do.end202:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #13
  %call204 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #14
  br label %radeon_unmap_ROM.exit

do.end208:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #13
  %call210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #14
  br label %radeon_unmap_ROM.exit

do.end213:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #13
  %conv193 = zext i8 %72 to i32
  %call216 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %conv193) #14
  br label %radeon_unmap_ROM.exit

anyway:                                           ; preds = %do.end196, %pci_name.exit12
  %74 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bios_seg, align 8
  %add.ptr220 = getelementptr i8, ptr %75, i32 72
  %76 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr220) #11, !srcloc !401
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !417
  %conv224 = zext i8 %76 to i32
  %77 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bios_seg, align 8
  %add.ptr229 = getelementptr i8, ptr %78, i32 73
  %79 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr229) #11, !srcloc !401
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !418
  %conv233 = zext i8 %79 to i32
  %shl234 = shl nuw nsw i32 %conv233, 8
  %or235 = or i32 %shl234, %conv224
  %fp_bios_start = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 11
  %80 = ptrtoint ptr %fp_bios_start to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %or235, ptr %fp_bios_start, align 4
  br label %cleanup

radeon_unmap_ROM.exit:                            ; preds = %do.end213, %do.end208, %do.end202, %pci_name.exit6
  %81 = ptrtoint ptr %bios_seg to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %bios_seg, align 8
  br label %cleanup

cleanup:                                          ; preds = %radeon_unmap_ROM.exit, %anyway, %pci_name.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rom_size) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_get_pllinfo(ptr noundef %rinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chipset = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 14
  %0 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chipset, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %1, label %sw.default [
    i32 20823, label %entry.sw.epilog_crit_edge
    i32 20824, label %entry.sw.epilog_crit_edge430
    i32 20812, label %entry.sw.bb5_crit_edge
    i32 20814, label %entry.sw.bb5_crit_edge431
    i32 20815, label %entry.sw.bb5_crit_edge432
    i32 20844, label %entry.sw.bb5_crit_edge433
    i32 16962, label %entry.sw.bb5_crit_edge434
    i32 18788, label %entry.sw.bb16_crit_edge
    i32 18789, label %entry.sw.bb16_crit_edge435
    i32 18790, label %entry.sw.bb16_crit_edge436
    i32 18791, label %entry.sw.bb16_crit_edge437
    i32 20036, label %entry.sw.bb27_crit_edge
    i32 20037, label %entry.sw.bb27_crit_edge438
    i32 20038, label %entry.sw.bb27_crit_edge439
    i32 20039, label %entry.sw.bb27_crit_edge440
  ]

entry.sw.bb27_crit_edge440:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb27

entry.sw.bb27_crit_edge439:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb27

entry.sw.bb27_crit_edge438:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb27

entry.sw.bb27_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb27

entry.sw.bb16_crit_edge437:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb16

entry.sw.bb16_crit_edge436:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb16

entry.sw.bb16_crit_edge435:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb16

entry.sw.bb16_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb16

entry.sw.bb5_crit_edge434:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

entry.sw.bb5_crit_edge433:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

entry.sw.bb5_crit_edge432:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

entry.sw.bb5_crit_edge431:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

entry.sw.epilog_crit_edge430:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge431, %entry.sw.bb5_crit_edge432, %entry.sw.bb5_crit_edge433, %entry.sw.bb5_crit_edge434
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry.sw.bb16_crit_edge, %entry.sw.bb16_crit_edge435, %entry.sw.bb16_crit_edge436, %entry.sw.bb16_crit_edge437
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry.sw.bb27_crit_edge, %entry.sw.bb27_crit_edge438, %entry.sw.bb27_crit_edge439, %entry.sw.bb27_crit_edge440
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb27, %sw.bb16, %sw.bb5, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge430
  %.sink427 = phi i32 [ 35000, %sw.default ], [ 40000, %sw.bb27 ], [ 35000, %sw.bb16 ], [ 35000, %sw.bb5 ], [ 35000, %entry.sw.epilog_crit_edge ], [ 35000, %entry.sw.epilog_crit_edge430 ]
  %.sink426 = phi i32 [ 12000, %sw.default ], [ 20000, %sw.bb27 ], [ 12000, %sw.bb16 ], [ 12000, %sw.bb5 ], [ 12000, %entry.sw.epilog_crit_edge ], [ 12000, %entry.sw.epilog_crit_edge430 ]
  %.sink425 = phi i32 [ 16600, %sw.default ], [ 27000, %sw.bb27 ], [ 25000, %sw.bb16 ], [ 27500, %sw.bb5 ], [ 23000, %entry.sw.epilog_crit_edge ], [ 23000, %entry.sw.epilog_crit_edge430 ]
  %pll39 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 38
  %3 = ptrtoint ptr %pll39 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink427, ptr %pll39, align 8
  %ppll_min42 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 38, i32 1
  %4 = ptrtoint ptr %ppll_min42 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink426, ptr %ppll_min42, align 4
  %mclk44 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 38, i32 3
  %5 = ptrtoint ptr %mclk44 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink425, ptr %mclk44, align 4
  %sclk46 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 38, i32 2
  %6 = ptrtoint ptr %sclk46 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink425, ptr %sclk46, align 8
  %ref_clk48 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 38, i32 5
  %7 = ptrtoint ptr %ref_clk48 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2700, ptr %ref_clk48, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void @arm_heavy_mb() #11
  %mmio_base.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %8 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 3) #11, !srcloc !343
  %errata.i.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 17
  %10 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %errata.i.i, align 8
  %and.i.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %sw.epilog.radeon_pll_errata_after_index.exit.i_crit_edge, label %if.then.i.i

sw.epilog.radeon_pll_errata_after_index.exit.i_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i

if.then.i.i:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %15 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr5.i.i.i = getelementptr i8, ptr %16, i32 80
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i

radeon_pll_errata_after_index.exit.i:             ; preds = %if.then.i.i, %sw.epilog.radeon_pll_errata_after_index.exit.i_crit_edge
  %18 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %19, i32 12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  %21 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %errata.i.i, align 8
  %and.i8.i = and i32 %22, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i)
  %tobool.not.i9.i = icmp eq i32 %and.i8.i, 0
  br i1 %tobool.not.i9.i, label %radeon_pll_errata_after_index.exit.i.__INPLL.exit_crit_edge, label %if.then.i10.i

radeon_pll_errata_after_index.exit.i.__INPLL.exit_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__INPLL.exit

if.then.i10.i:                                    ; preds = %radeon_pll_errata_after_index.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %__INPLL.exit

__INPLL.exit:                                     ; preds = %if.then.i10.i, %radeon_pll_errata_after_index.exit.i.__INPLL.exit_crit_edge
  %23 = and i32 %20, -16580608
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %pll49 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 38
  %ref_div = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 38, i32 4
  %25 = ptrtoint ptr %ref_div to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %ref_div, align 8
  %26 = load i8, ptr @force_measure_pll, align 1, !range !359
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not = icmp eq i8 %26, 0
  br i1 %tobool.not, label %land.lhs.true, label %__INPLL.exit.if.end_crit_edge

__INPLL.exit.if.end_crit_edge:                    ; preds = %__INPLL.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %__INPLL.exit
  %bios_seg = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 10
  %27 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bios_seg, align 8
  %tobool50.not = icmp eq ptr %28, null
  br i1 %tobool50.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %fp_bios_start = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 11
  %29 = ptrtoint ptr %fp_bios_start to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fp_bios_start, align 4
  %add = add i32 %30, 48
  %add.ptr = getelementptr i8, ptr %28, i32 %add
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !419
  %conv = zext i8 %31 to i32
  %32 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bios_seg, align 8
  %34 = ptrtoint ptr %fp_bios_start to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fp_bios_start, align 4
  %add58 = add i32 %35, 48
  %add.ptr59 = getelementptr i8, ptr %33, i32 %add58
  %add.ptr60 = getelementptr i8, ptr %add.ptr59, i32 1
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr60) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !420
  %conv64 = zext i8 %36 to i32
  %shl = shl nuw nsw i32 %conv64, 8
  %or = or i32 %shl, %conv
  %37 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bios_seg, align 8
  %add70 = add nuw nsw i32 %or, 8
  %add.ptr71 = getelementptr i8, ptr %38, i32 %add70
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr71) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !421
  %conv75 = zext i8 %39 to i32
  %40 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bios_seg, align 8
  %add.ptr81 = getelementptr i8, ptr %41, i32 %add70
  %add.ptr82 = getelementptr i8, ptr %add.ptr81, i32 1
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr82) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  %conv86 = zext i8 %42 to i32
  %shl87 = shl nuw nsw i32 %conv86, 8
  %or88 = or i32 %shl87, %conv75
  %sclk90 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 38, i32 2
  %43 = ptrtoint ptr %sclk90 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or88, ptr %sclk90, align 8
  %44 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bios_seg, align 8
  %add95 = add nuw nsw i32 %or, 10
  %add.ptr96 = getelementptr i8, ptr %45, i32 %add95
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr96) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !423
  %conv100 = zext i8 %46 to i32
  %47 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bios_seg, align 8
  %add.ptr106 = getelementptr i8, ptr %48, i32 %add95
  %add.ptr107 = getelementptr i8, ptr %add.ptr106, i32 1
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr107) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !424
  %conv111 = zext i8 %49 to i32
  %shl112 = shl nuw nsw i32 %conv111, 8
  %or113 = or i32 %shl112, %conv100
  %mclk115 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 38, i32 3
  %50 = ptrtoint ptr %mclk115 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or113, ptr %mclk115, align 4
  %51 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bios_seg, align 8
  %add120 = add nuw nsw i32 %or, 14
  %add.ptr121 = getelementptr i8, ptr %52, i32 %add120
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr121) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !425
  %conv125 = zext i8 %53 to i32
  %54 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bios_seg, align 8
  %add.ptr131 = getelementptr i8, ptr %55, i32 %add120
  %add.ptr132 = getelementptr i8, ptr %add.ptr131, i32 1
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr132) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !426
  %conv136 = zext i8 %56 to i32
  %shl137 = shl nuw nsw i32 %conv136, 8
  %or138 = or i32 %shl137, %conv125
  %ref_clk140 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 38, i32 5
  %57 = ptrtoint ptr %ref_clk140 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or138, ptr %ref_clk140, align 4
  %58 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bios_seg, align 8
  %add145 = add nuw nsw i32 %or, 16
  %add.ptr146 = getelementptr i8, ptr %59, i32 %add145
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr146) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !427
  %conv150 = zext i8 %60 to i32
  %61 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bios_seg, align 8
  %add.ptr156 = getelementptr i8, ptr %62, i32 %add145
  %add.ptr157 = getelementptr i8, ptr %add.ptr156, i32 1
  %63 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr157) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !428
  %conv161 = zext i8 %63 to i32
  %shl162 = shl nuw nsw i32 %conv161, 8
  %or163 = or i32 %shl162, %conv150
  %64 = ptrtoint ptr %ref_div to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or163, ptr %ref_div, align 8
  %65 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bios_seg, align 8
  %add170 = add nuw nsw i32 %or, 18
  %add.ptr171 = getelementptr i8, ptr %66, i32 %add170
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr171) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !429
  %conv175 = zext i8 %67 to i32
  %68 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bios_seg, align 8
  %add.ptr181 = getelementptr i8, ptr %69, i32 %add170
  %add.ptr182 = getelementptr i8, ptr %add.ptr181, i32 1
  %70 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr182) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !430
  %conv186 = zext i8 %70 to i32
  %shl187 = shl nuw nsw i32 %conv186, 8
  %or188 = or i32 %shl187, %conv175
  %71 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bios_seg, align 8
  %add.ptr194 = getelementptr i8, ptr %72, i32 %add170
  %add.ptr195 = getelementptr i8, ptr %add.ptr194, i32 2
  %73 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr195) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !431
  %conv199 = zext i8 %73 to i32
  %shl200 = shl nuw nsw i32 %conv199, 16
  %or201 = or i32 %shl200, %or188
  %74 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bios_seg, align 8
  %add.ptr207 = getelementptr i8, ptr %75, i32 %add170
  %add.ptr208 = getelementptr i8, ptr %add.ptr207, i32 3
  %76 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr208) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !432
  %conv212 = zext i8 %76 to i32
  %shl213 = shl nuw i32 %conv212, 24
  %or214 = or i32 %shl213, %or201
  %ppll_min216 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 38, i32 1
  %77 = ptrtoint ptr %ppll_min216 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or214, ptr %ppll_min216, align 4
  %78 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bios_seg, align 8
  %add221 = add nuw nsw i32 %or, 22
  %add.ptr222 = getelementptr i8, ptr %79, i32 %add221
  %80 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr222) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !433
  %conv226 = zext i8 %80 to i32
  %81 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bios_seg, align 8
  %add.ptr232 = getelementptr i8, ptr %82, i32 %add221
  %add.ptr233 = getelementptr i8, ptr %add.ptr232, i32 1
  %83 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr233) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !434
  %conv237 = zext i8 %83 to i32
  %shl238 = shl nuw nsw i32 %conv237, 8
  %or239 = or i32 %shl238, %conv226
  %84 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bios_seg, align 8
  %add.ptr245 = getelementptr i8, ptr %85, i32 %add221
  %add.ptr246 = getelementptr i8, ptr %add.ptr245, i32 2
  %86 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr246) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !435
  %conv250 = zext i8 %86 to i32
  %shl251 = shl nuw nsw i32 %conv250, 16
  %or252 = or i32 %shl251, %or239
  %87 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bios_seg, align 8
  %add.ptr258 = getelementptr i8, ptr %88, i32 %add221
  %add.ptr259 = getelementptr i8, ptr %add.ptr258, i32 3
  %89 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr259) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !436
  %conv263 = zext i8 %89 to i32
  %shl264 = shl nuw i32 %conv263, 24
  %or265 = or i32 %shl264, %or252
  %90 = ptrtoint ptr %pll49 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %or265, ptr %pll49, align 8
  br label %found

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %__INPLL.exit.if.end_crit_edge
  %91 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i416 = getelementptr i8, ptr %92, i32 3842
  %93 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i416) #11, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !438
  %94 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !439
  %and.i.i.i = and i32 %94, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #11, !srcloc !440
  br i1 %tobool.not.i, label %if.then.i, label %if.end.for.body.i.preheader_crit_edge

if.end.for.body.i.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.preheader

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then.i, %if.end.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.0716.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %95 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr9.i = getelementptr i8, ptr %96, i32 528
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !441
  %98 = and i32 %97, 65283
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp13.i = icmp eq i32 %98, 0
  %inc.i = add nuw nsw i32 %i.0716.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 1000000
  %or.cond.i = select i1 %cmp13.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %call17.i = tail call i64 @ktime_get() #11
  br label %for.body21.i

for.body21.i:                                     ; preds = %for.body21.i.for.body21.i_crit_edge, %for.end.i
  %i.1717.i = phi i32 [ 0, %for.end.i ], [ %inc36.i, %for.body21.i.for.body21.i_crit_edge ]
  %99 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr25.i = getelementptr i8, ptr %100, i32 528
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !442
  %102 = and i32 %101, 65283
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp31.not.i = icmp ne i32 %102, 0
  %inc36.i = add nuw nsw i32 %i.1717.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %inc36.i)
  %exitcond719.not.i = icmp eq i32 %inc36.i, 1000000
  %or.cond721.i = select i1 %cmp31.not.i, i1 true, i1 %exitcond719.not.i
  br i1 %or.cond721.i, label %for.body21.i.for.body41.i_crit_edge, label %for.body21.i.for.body21.i_crit_edge

for.body21.i.for.body21.i_crit_edge:              ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body21.i

for.body21.i.for.body41.i_crit_edge:              ; preds = %for.body21.i
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.body41.i.for.body41.i_crit_edge, %for.body21.i.for.body41.i_crit_edge
  %i.2718.i = phi i32 [ %inc56.i, %for.body41.i.for.body41.i_crit_edge ], [ 0, %for.body21.i.for.body41.i_crit_edge ]
  %103 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr45.i = getelementptr i8, ptr %104, i32 528
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !443
  %106 = and i32 %105, 65283
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp51.i = icmp eq i32 %106, 0
  %inc56.i = add nuw nsw i32 %i.2718.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %inc56.i)
  %exitcond720.not.i = icmp eq i32 %inc56.i, 1000000
  %or.cond722.i = select i1 %cmp51.i, i1 true, i1 %exitcond720.not.i
  br i1 %or.cond722.i, label %for.end57.i, label %for.body41.i.for.body41.i_crit_edge

for.body41.i.for.body41.i_crit_edge:              ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body41.i

for.end57.i:                                      ; preds = %for.body41.i
  %call58.i = tail call i64 @ktime_get() #11
  tail call void @trace_hardirqs_on() #11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !444
  %sub.i.i = sub i64 %call58.i, %call17.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp8.i.i.i.i = icmp slt i64 %sub.i.i, 0
  %107 = tail call i64 @llvm.abs.i64(i64 %sub.i.i, i1 false) #11
  %108 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %107, i32 0) #17, !srcloc !445
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %108, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %108, 1
  %109 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %107, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #17, !srcloc !446
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %109, 0
  %tmp.0.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 9
  %sub210.i.i.i.i = sub nsw i64 0, %tmp.0.i.i.i.i
  %cond213.i.i.i.i = select i1 %cmp8.i.i.i.i, i64 %sub210.i.i.i.i, i64 %tmp.0.i.i.i.i
  %110 = add nsw i64 %cond213.i.i.i.i, -10000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9999999, i64 %110)
  %111 = icmp ult i64 %110, -9999999
  br i1 %111, label %for.end57.i.found_crit_edge, label %if.end68.i

for.end57.i.found_crit_edge:                      ; preds = %for.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

if.end68.i:                                       ; preds = %for.end57.i
  %conv69.i = trunc i64 %cond213.i.i.i.i to i32
  %div.i = udiv i32 1000000, %conv69.i
  %conv70.i = zext i32 %div.i to i64
  %112 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr74.i = getelementptr i8, ptr %113, i32 512
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !447
  %115 = and i32 %114, -16711680
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #11
  %add.i = shl nuw nsw i32 %116, 3
  %mul.i = add nuw nsw i32 %add.i, 8
  %117 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr82.i = getelementptr i8, ptr %118, i32 520
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !448
  %120 = and i32 %119, -16580608
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #11
  %add87.i = add nuw nsw i32 %121, 1
  %narrow.i = mul nuw nsw i32 %add87.i, %mul.i
  %mul90.i = zext i32 %narrow.i to i64
  %mul91.i = mul nuw nsw i64 %mul90.i, %conv70.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void @arm_heavy_mb() #11
  %122 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %123, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 3) #11, !srcloc !343
  %124 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %errata.i.i, align 8
  %and.i.i551.i = and i32 %125, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i551.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i551.i, 0
  br i1 %tobool.not.i.i.i, label %if.end68.i.radeon_pll_errata_after_index.exit.i.i_crit_edge, label %if.then.i.i.i

if.end68.i.radeon_pll_errata_after_index.exit.i.i_crit_edge: ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #13
  %126 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %127, i32 12
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %129 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr5.i.i.i.i = getelementptr i8, ptr %130, i32 80
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i.i

radeon_pll_errata_after_index.exit.i.i:           ; preds = %if.then.i.i.i, %if.end68.i.radeon_pll_errata_after_index.exit.i.i_crit_edge
  %132 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %133, i32 12
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  %135 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %errata.i.i, align 8
  %and.i8.i.i = and i32 %136, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %and.i8.i.i, 0
  br i1 %tobool.not.i9.i.i, label %radeon_pll_errata_after_index.exit.i.i.__INPLL.exit.i_crit_edge, label %if.then.i10.i.i

radeon_pll_errata_after_index.exit.i.i.__INPLL.exit.i_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__INPLL.exit.i

if.then.i10.i.i:                                  ; preds = %radeon_pll_errata_after_index.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %__INPLL.exit.i

__INPLL.exit.i:                                   ; preds = %if.then.i10.i.i, %radeon_pll_errata_after_index.exit.i.i.__INPLL.exit.i_crit_edge
  %137 = lshr i32 %134, 8
  %shr94.i = and i32 %137, 3
  %138 = zext i32 %shr94.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %shr94.i, label %__INPLL.exit.i.sw.epilog.i_crit_edge [
    i32 2, label %sw.bb103.i
    i32 1, label %sw.bb95.i
  ]

__INPLL.exit.i.sw.epilog.i_crit_edge:             ; preds = %__INPLL.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb95.i:                                        ; preds = %__INPLL.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void @arm_heavy_mb() #11
  %139 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i553.i = getelementptr i8, ptr %140, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i553.i, i8 10) #11, !srcloc !343
  %141 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %errata.i.i, align 8
  %and.i.i555.i = and i32 %142, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i555.i)
  %tobool.not.i.i556.i = icmp eq i32 %and.i.i555.i, 0
  br i1 %tobool.not.i.i556.i, label %sw.bb95.i.radeon_pll_errata_after_index.exit.i563.i_crit_edge, label %if.then.i.i559.i

sw.bb95.i.radeon_pll_errata_after_index.exit.i563.i_crit_edge: ; preds = %sw.bb95.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i563.i

if.then.i.i559.i:                                 ; preds = %sw.bb95.i
  call void @__sanitizer_cov_trace_pc() #13
  %143 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i.i557.i = getelementptr i8, ptr %144, i32 12
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i557.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %146 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr5.i.i.i558.i = getelementptr i8, ptr %147, i32 80
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i558.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i563.i

radeon_pll_errata_after_index.exit.i563.i:        ; preds = %if.then.i.i559.i, %sw.bb95.i.radeon_pll_errata_after_index.exit.i563.i_crit_edge
  %149 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr2.i560.i = getelementptr i8, ptr %150, i32 12
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i560.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  %152 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %errata.i.i, align 8
  %and.i8.i561.i = and i32 %153, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i561.i)
  %tobool.not.i9.i562.i = icmp eq i32 %and.i8.i561.i, 0
  br i1 %tobool.not.i9.i562.i, label %radeon_pll_errata_after_index.exit.i563.i.__INPLL.exit565.i_crit_edge, label %if.then.i10.i564.i

radeon_pll_errata_after_index.exit.i563.i.__INPLL.exit565.i_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i563.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__INPLL.exit565.i

if.then.i10.i564.i:                               ; preds = %radeon_pll_errata_after_index.exit.i563.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %__INPLL.exit565.i

__INPLL.exit565.i:                                ; preds = %if.then.i10.i564.i, %radeon_pll_errata_after_index.exit.i563.i.__INPLL.exit565.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void @arm_heavy_mb() #11
  %154 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i567.i = getelementptr i8, ptr %155, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i567.i, i8 10) #11, !srcloc !343
  %156 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %errata.i.i, align 8
  %and.i.i569.i = and i32 %157, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i569.i)
  %tobool.not.i.i570.i = icmp eq i32 %and.i.i569.i, 0
  br i1 %tobool.not.i.i570.i, label %__INPLL.exit565.i.radeon_pll_errata_after_index.exit.i577.i_crit_edge, label %if.then.i.i573.i

__INPLL.exit565.i.radeon_pll_errata_after_index.exit.i577.i_crit_edge: ; preds = %__INPLL.exit565.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i577.i

if.then.i.i573.i:                                 ; preds = %__INPLL.exit565.i
  call void @__sanitizer_cov_trace_pc() #13
  %158 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i.i571.i = getelementptr i8, ptr %159, i32 12
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i571.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %161 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr5.i.i.i572.i = getelementptr i8, ptr %162, i32 80
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i572.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i577.i

radeon_pll_errata_after_index.exit.i577.i:        ; preds = %if.then.i.i573.i, %__INPLL.exit565.i.radeon_pll_errata_after_index.exit.i577.i_crit_edge
  %164 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr2.i574.i = getelementptr i8, ptr %165, i32 12
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i574.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  %167 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %errata.i.i, align 8
  %and.i8.i575.i = and i32 %168, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i575.i)
  %tobool.not.i9.i576.i = icmp eq i32 %and.i8.i575.i, 0
  br i1 %tobool.not.i9.i576.i, label %radeon_pll_errata_after_index.exit.i577.i.__INPLL.exit579.i_crit_edge, label %if.then.i10.i578.i

radeon_pll_errata_after_index.exit.i577.i.__INPLL.exit579.i_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i577.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__INPLL.exit579.i

if.then.i10.i578.i:                               ; preds = %radeon_pll_errata_after_index.exit.i577.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %__INPLL.exit579.i

__INPLL.exit579.i:                                ; preds = %if.then.i10.i578.i, %radeon_pll_errata_after_index.exit.i577.i.__INPLL.exit579.i_crit_edge
  %169 = lshr i32 %151, 7
  %mul101.i = and i32 %169, 510
  %170 = lshr i32 %166, 23
  %and100.i = and i32 %170, 510
  br label %sw.epilog.i

sw.bb103.i:                                       ; preds = %__INPLL.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void @arm_heavy_mb() #11
  %171 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i581.i = getelementptr i8, ptr %172, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i581.i, i8 10) #11, !srcloc !343
  %173 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %errata.i.i, align 8
  %and.i.i583.i = and i32 %174, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i583.i)
  %tobool.not.i.i584.i = icmp eq i32 %and.i.i583.i, 0
  br i1 %tobool.not.i.i584.i, label %sw.bb103.i.radeon_pll_errata_after_index.exit.i591.i_crit_edge, label %if.then.i.i587.i

sw.bb103.i.radeon_pll_errata_after_index.exit.i591.i_crit_edge: ; preds = %sw.bb103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i591.i

if.then.i.i587.i:                                 ; preds = %sw.bb103.i
  call void @__sanitizer_cov_trace_pc() #13
  %175 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i.i585.i = getelementptr i8, ptr %176, i32 12
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i585.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %178 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr5.i.i.i586.i = getelementptr i8, ptr %179, i32 80
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i586.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i591.i

radeon_pll_errata_after_index.exit.i591.i:        ; preds = %if.then.i.i587.i, %sw.bb103.i.radeon_pll_errata_after_index.exit.i591.i_crit_edge
  %181 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr2.i588.i = getelementptr i8, ptr %182, i32 12
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i588.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  %184 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %errata.i.i, align 8
  %and.i8.i589.i = and i32 %185, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i589.i)
  %tobool.not.i9.i590.i = icmp eq i32 %and.i8.i589.i, 0
  br i1 %tobool.not.i9.i590.i, label %radeon_pll_errata_after_index.exit.i591.i.__INPLL.exit593.i_crit_edge, label %if.then.i10.i592.i

radeon_pll_errata_after_index.exit.i591.i.__INPLL.exit593.i_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i591.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__INPLL.exit593.i

if.then.i10.i592.i:                               ; preds = %radeon_pll_errata_after_index.exit.i591.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %__INPLL.exit593.i

__INPLL.exit593.i:                                ; preds = %if.then.i10.i592.i, %radeon_pll_errata_after_index.exit.i591.i.__INPLL.exit593.i_crit_edge
  %186 = lshr i32 %183, 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void @arm_heavy_mb() #11
  %187 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i595.i = getelementptr i8, ptr %188, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i595.i, i8 10) #11, !srcloc !343
  %189 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %errata.i.i, align 8
  %and.i.i597.i = and i32 %190, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i597.i)
  %tobool.not.i.i598.i = icmp eq i32 %and.i.i597.i, 0
  br i1 %tobool.not.i.i598.i, label %__INPLL.exit593.i.radeon_pll_errata_after_index.exit.i605.i_crit_edge, label %if.then.i.i601.i

__INPLL.exit593.i.radeon_pll_errata_after_index.exit.i605.i_crit_edge: ; preds = %__INPLL.exit593.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i605.i

if.then.i.i601.i:                                 ; preds = %__INPLL.exit593.i
  call void @__sanitizer_cov_trace_pc() #13
  %191 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i.i599.i = getelementptr i8, ptr %192, i32 12
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i599.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %194 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr5.i.i.i600.i = getelementptr i8, ptr %195, i32 80
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i600.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i605.i

radeon_pll_errata_after_index.exit.i605.i:        ; preds = %if.then.i.i601.i, %__INPLL.exit593.i.radeon_pll_errata_after_index.exit.i605.i_crit_edge
  %197 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr2.i602.i = getelementptr i8, ptr %198, i32 12
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i602.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  %200 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %errata.i.i, align 8
  %and.i8.i603.i = and i32 %201, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i603.i)
  %tobool.not.i9.i604.i = icmp eq i32 %and.i8.i603.i, 0
  br i1 %tobool.not.i9.i604.i, label %radeon_pll_errata_after_index.exit.i605.i.__INPLL.exit607.i_crit_edge, label %if.then.i10.i606.i

radeon_pll_errata_after_index.exit.i605.i.__INPLL.exit607.i_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i605.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__INPLL.exit607.i

if.then.i10.i606.i:                               ; preds = %radeon_pll_errata_after_index.exit.i605.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %__INPLL.exit607.i

__INPLL.exit607.i:                                ; preds = %if.then.i10.i606.i, %radeon_pll_errata_after_index.exit.i605.i.__INPLL.exit607.i_crit_edge
  %mul109.i = and i32 %186, 510
  %202 = lshr i32 %199, 23
  %and108.i = and i32 %202, 510
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %__INPLL.exit607.i, %__INPLL.exit579.i, %__INPLL.exit.i.sw.epilog.i_crit_edge
  %denom.0.i = phi i32 [ %and100.i, %__INPLL.exit579.i ], [ %and108.i, %__INPLL.exit607.i ], [ 1, %__INPLL.exit.i.sw.epilog.i_crit_edge ]
  %num.0.i = phi i32 [ %mul101.i, %__INPLL.exit579.i ], [ %mul109.i, %__INPLL.exit607.i ], [ 1, %__INPLL.exit.i.sw.epilog.i_crit_edge ]
  %203 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr115.i = getelementptr i8, ptr %204, i32 9
  %205 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr115.i) #11, !srcloc !401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !449
  %206 = and i8 %205, 3
  %207 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %errata.i.i, align 8
  %and.i.i417 = and i32 %208, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i417)
  %tobool.not.i.i418 = icmp eq i32 %and.i.i417, 0
  br i1 %tobool.not.i.i418, label %sw.epilog.i.radeon_pll_errata_after_index.exit.i422_crit_edge, label %if.then.i.i421

sw.epilog.i.radeon_pll_errata_after_index.exit.i422_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i422

if.then.i.i421:                                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %209 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i.i419 = getelementptr i8, ptr %210, i32 12
  %211 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i419) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %212 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr5.i.i.i420 = getelementptr i8, ptr %213, i32 80
  %214 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i420) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i422

radeon_pll_errata_after_index.exit.i422:          ; preds = %if.then.i.i421, %sw.epilog.i.radeon_pll_errata_after_index.exit.i422_crit_edge
  %215 = or i8 %206, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void @arm_heavy_mb() #11
  %216 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i609.i = getelementptr i8, ptr %217, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i609.i, i8 %215) #11, !srcloc !343
  %218 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %errata.i.i, align 8
  %and.i.i611.i = and i32 %219, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i611.i)
  %tobool.not.i.i612.i = icmp eq i32 %and.i.i611.i, 0
  br i1 %tobool.not.i.i612.i, label %radeon_pll_errata_after_index.exit.i422.radeon_pll_errata_after_index.exit.i619.i_crit_edge, label %if.then.i.i615.i

radeon_pll_errata_after_index.exit.i422.radeon_pll_errata_after_index.exit.i619.i_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i422
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i619.i

if.then.i.i615.i:                                 ; preds = %radeon_pll_errata_after_index.exit.i422
  call void @__sanitizer_cov_trace_pc() #13
  %220 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i.i613.i = getelementptr i8, ptr %221, i32 12
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i613.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %223 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr5.i.i.i614.i = getelementptr i8, ptr %224, i32 80
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i614.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i619.i

radeon_pll_errata_after_index.exit.i619.i:        ; preds = %if.then.i.i615.i, %radeon_pll_errata_after_index.exit.i422.radeon_pll_errata_after_index.exit.i619.i_crit_edge
  %226 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr2.i616.i = getelementptr i8, ptr %227, i32 12
  %228 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i616.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  %229 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %errata.i.i, align 8
  %and.i8.i617.i = and i32 %230, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i617.i)
  %tobool.not.i9.i618.i = icmp eq i32 %and.i8.i617.i, 0
  br i1 %tobool.not.i9.i618.i, label %radeon_pll_errata_after_index.exit.i619.i.__INPLL.exit621.i_crit_edge, label %if.then.i10.i620.i

radeon_pll_errata_after_index.exit.i619.i.__INPLL.exit621.i_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i619.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__INPLL.exit621.i

if.then.i10.i620.i:                               ; preds = %radeon_pll_errata_after_index.exit.i619.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %__INPLL.exit621.i

__INPLL.exit621.i:                                ; preds = %if.then.i10.i620.i, %radeon_pll_errata_after_index.exit.i619.i.__INPLL.exit621.i_crit_edge
  %231 = and i32 %228, -16318464
  %232 = tail call i32 @llvm.bswap.i32(i32 %231) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void @arm_heavy_mb() #11
  %233 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i623.i = getelementptr i8, ptr %234, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i623.i, i8 3) #11, !srcloc !343
  %235 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %errata.i.i, align 8
  %and.i.i625.i = and i32 %236, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i625.i)
  %tobool.not.i.i626.i = icmp eq i32 %and.i.i625.i, 0
  br i1 %tobool.not.i.i626.i, label %__INPLL.exit621.i.radeon_pll_errata_after_index.exit.i633.i_crit_edge, label %if.then.i.i629.i

__INPLL.exit621.i.radeon_pll_errata_after_index.exit.i633.i_crit_edge: ; preds = %__INPLL.exit621.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i633.i

if.then.i.i629.i:                                 ; preds = %__INPLL.exit621.i
  call void @__sanitizer_cov_trace_pc() #13
  %237 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i.i627.i = getelementptr i8, ptr %238, i32 12
  %239 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i627.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %240 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr5.i.i.i628.i = getelementptr i8, ptr %241, i32 80
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i628.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i633.i

radeon_pll_errata_after_index.exit.i633.i:        ; preds = %if.then.i.i629.i, %__INPLL.exit621.i.radeon_pll_errata_after_index.exit.i633.i_crit_edge
  %243 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr2.i630.i = getelementptr i8, ptr %244, i32 12
  %245 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i630.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  %246 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %errata.i.i, align 8
  %and.i8.i631.i = and i32 %247, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i631.i)
  %tobool.not.i9.i632.i = icmp eq i32 %and.i8.i631.i, 0
  br i1 %tobool.not.i9.i632.i, label %radeon_pll_errata_after_index.exit.i633.i.__INPLL.exit635.i_crit_edge, label %if.then.i10.i634.i

radeon_pll_errata_after_index.exit.i633.i.__INPLL.exit635.i_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i633.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__INPLL.exit635.i

if.then.i10.i634.i:                               ; preds = %radeon_pll_errata_after_index.exit.i633.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %__INPLL.exit635.i

__INPLL.exit635.i:                                ; preds = %if.then.i10.i634.i, %radeon_pll_errata_after_index.exit.i633.i.__INPLL.exit635.i_crit_edge
  %248 = and i32 %245, -16580608
  %249 = tail call i32 @llvm.bswap.i32(i32 %248) #11
  %mul128.i = mul nuw nsw i32 %232, %num.0.i
  %mul129.i = mul nuw nsw i32 %249, %denom.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void @arm_heavy_mb() #11
  %250 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i637.i = getelementptr i8, ptr %251, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i637.i, i8 %215) #11, !srcloc !343
  %252 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %errata.i.i, align 8
  %and.i.i639.i = and i32 %253, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i639.i)
  %tobool.not.i.i640.i = icmp eq i32 %and.i.i639.i, 0
  br i1 %tobool.not.i.i640.i, label %__INPLL.exit635.i.radeon_pll_errata_after_index.exit.i647.i_crit_edge, label %if.then.i.i643.i

__INPLL.exit635.i.radeon_pll_errata_after_index.exit.i647.i_crit_edge: ; preds = %__INPLL.exit635.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i647.i

if.then.i.i643.i:                                 ; preds = %__INPLL.exit635.i
  call void @__sanitizer_cov_trace_pc() #13
  %254 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i.i641.i = getelementptr i8, ptr %255, i32 12
  %256 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i641.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %257 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr5.i.i.i642.i = getelementptr i8, ptr %258, i32 80
  %259 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i642.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i647.i

radeon_pll_errata_after_index.exit.i647.i:        ; preds = %if.then.i.i643.i, %__INPLL.exit635.i.radeon_pll_errata_after_index.exit.i647.i_crit_edge
  %260 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr2.i644.i = getelementptr i8, ptr %261, i32 12
  %262 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i644.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  %263 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %errata.i.i, align 8
  %and.i8.i645.i = and i32 %264, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i645.i)
  %tobool.not.i9.i646.i = icmp eq i32 %and.i8.i645.i, 0
  br i1 %tobool.not.i9.i646.i, label %radeon_pll_errata_after_index.exit.i647.i.__INPLL.exit649.i_crit_edge, label %if.then.i10.i648.i

radeon_pll_errata_after_index.exit.i647.i.__INPLL.exit649.i_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i647.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__INPLL.exit649.i

if.then.i10.i648.i:                               ; preds = %radeon_pll_errata_after_index.exit.i647.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %__INPLL.exit649.i

__INPLL.exit649.i:                                ; preds = %if.then.i10.i648.i, %radeon_pll_errata_after_index.exit.i647.i.__INPLL.exit649.i_crit_edge
  %265 = lshr i32 %262, 8
  %and134.i = and i32 %265, 7
  %266 = zext i32 %and134.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %266, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %and134.i, label %__INPLL.exit649.i.sw.epilog147.i_crit_edge [
    i32 1, label %sw.bb135.i
    i32 2, label %sw.bb137.i
    i32 3, label %sw.bb139.i
    i32 4, label %sw.bb141.i
    i32 6, label %sw.bb143.i
    i32 7, label %sw.bb145.i
  ]

__INPLL.exit649.i.sw.epilog147.i_crit_edge:       ; preds = %__INPLL.exit649.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog147.i

sw.bb135.i:                                       ; preds = %__INPLL.exit649.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul136.i = shl nuw nsw i32 %mul129.i, 1
  br label %sw.epilog147.i

sw.bb137.i:                                       ; preds = %__INPLL.exit649.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul138.i = shl nuw nsw i32 %mul129.i, 2
  br label %sw.epilog147.i

sw.bb139.i:                                       ; preds = %__INPLL.exit649.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul140.i = shl nuw nsw i32 %mul129.i, 3
  br label %sw.epilog147.i

sw.bb141.i:                                       ; preds = %__INPLL.exit649.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul142.i = mul nuw nsw i32 %mul129.i, 3
  br label %sw.epilog147.i

sw.bb143.i:                                       ; preds = %__INPLL.exit649.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul144.i = mul nuw nsw i32 %mul129.i, 6
  br label %sw.epilog147.i

sw.bb145.i:                                       ; preds = %__INPLL.exit649.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul146.i = mul nuw nsw i32 %mul129.i, 12
  br label %sw.epilog147.i

sw.epilog147.i:                                   ; preds = %sw.bb145.i, %sw.bb143.i, %sw.bb141.i, %sw.bb139.i, %sw.bb137.i, %sw.bb135.i, %__INPLL.exit649.i.sw.epilog147.i_crit_edge
  %denom.1.i = phi i32 [ %mul129.i, %__INPLL.exit649.i.sw.epilog147.i_crit_edge ], [ %mul146.i, %sw.bb145.i ], [ %mul144.i, %sw.bb143.i ], [ %mul142.i, %sw.bb141.i ], [ %mul140.i, %sw.bb139.i ], [ %mul138.i, %sw.bb137.i ], [ %mul136.i, %sw.bb135.i ]
  %267 = zext i32 %denom.1.i to i64
  %mul149.i = mul i64 %mul91.i, %267
  %mul150.i = mul nuw nsw i32 %mul128.i, 1000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul149.i)
  %cmp327.i = icmp ult i64 %mul149.i, 4294967296
  br i1 %cmp327.i, label %if.then331.i, label %if.else337.i, !prof !450

if.then331.i:                                     ; preds = %sw.epilog147.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv332.i = trunc i64 %mul149.i to i32
  %div335.i = udiv i32 %conv332.i, %mul150.i
  br label %if.end341.i

if.else337.i:                                     ; preds = %sw.epilog147.i
  call void @__sanitizer_cov_trace_pc() #13
  %268 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul150.i, i64 %mul149.i) #17, !srcloc !451
  %asmresult1.i.i = extractvalue { i64, i64 } %268, 1
  %extract.t713.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end341.i

if.end341.i:                                      ; preds = %if.else337.i, %if.then331.i
  %vclk.0.off0.i = phi i32 [ %div335.i, %if.then331.i ], [ %extract.t713.i, %if.else337.i ]
  %269 = add i32 %vclk.0.off0.i, -26901
  call void @__sanitizer_cov_trace_const_cmp4(i32 199, i32 %269)
  %270 = icmp ult i32 %269, 199
  br i1 %270, label %if.end341.i.if.end372.i_crit_edge, label %if.else350.i

if.end341.i.if.end372.i_crit_edge:                ; preds = %if.end341.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end372.i

if.else350.i:                                     ; preds = %if.end341.i
  %271 = add i32 %vclk.0.off0.i, -14201
  call void @__sanitizer_cov_trace_const_cmp4(i32 199, i32 %271)
  %272 = icmp ult i32 %271, 199
  br i1 %272, label %if.else350.i.if.end372.i_crit_edge, label %if.else357.i

if.else350.i.if.end372.i_crit_edge:               ; preds = %if.else350.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end372.i

if.else357.i:                                     ; preds = %if.else350.i
  %273 = add i32 %vclk.0.off0.i, -29401
  call void @__sanitizer_cov_trace_const_cmp4(i32 199, i32 %273)
  %274 = icmp ult i32 %273, 199
  br i1 %274, label %if.else357.i.if.end372.i_crit_edge, label %do.end367.i

if.else357.i.if.end372.i_crit_edge:               ; preds = %if.else357.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end372.i

do.end367.i:                                      ; preds = %if.else357.i
  call void @__sanitizer_cov_trace_pc() #13
  %call369.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %vclk.0.off0.i) #14
  br label %found

if.end372.i:                                      ; preds = %if.else357.i.if.end372.i_crit_edge, %if.else350.i.if.end372.i_crit_edge, %if.end341.i.if.end372.i_crit_edge
  %xtal.0.i = phi i32 [ 2700, %if.end341.i.if.end372.i_crit_edge ], [ 1432, %if.else350.i.if.end372.i_crit_edge ], [ 2950, %if.else357.i.if.end372.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void @arm_heavy_mb() #11
  %275 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i654.i = getelementptr i8, ptr %276, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i654.i, i8 10) #11, !srcloc !343
  %277 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %errata.i.i, align 8
  %and.i.i656.i = and i32 %278, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i656.i)
  %tobool.not.i.i657.i = icmp eq i32 %and.i.i656.i, 0
  br i1 %tobool.not.i.i657.i, label %if.end372.i.radeon_pll_errata_after_index.exit.i664.i_crit_edge, label %if.then.i.i660.i

if.end372.i.radeon_pll_errata_after_index.exit.i664.i_crit_edge: ; preds = %if.end372.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i664.i

if.then.i.i660.i:                                 ; preds = %if.end372.i
  call void @__sanitizer_cov_trace_pc() #13
  %279 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i.i658.i = getelementptr i8, ptr %280, i32 12
  %281 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i658.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %282 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr5.i.i.i659.i = getelementptr i8, ptr %283, i32 80
  %284 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i659.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i664.i

radeon_pll_errata_after_index.exit.i664.i:        ; preds = %if.then.i.i660.i, %if.end372.i.radeon_pll_errata_after_index.exit.i664.i_crit_edge
  %285 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr2.i661.i = getelementptr i8, ptr %286, i32 12
  %287 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i661.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  %288 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %errata.i.i, align 8
  %and.i8.i662.i = and i32 %289, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i662.i)
  %tobool.not.i9.i663.i = icmp eq i32 %and.i8.i662.i, 0
  br i1 %tobool.not.i9.i663.i, label %radeon_pll_errata_after_index.exit.i664.i.__INPLL.exit666.i_crit_edge, label %if.then.i10.i665.i

radeon_pll_errata_after_index.exit.i664.i.__INPLL.exit666.i_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i664.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__INPLL.exit666.i

if.then.i10.i665.i:                               ; preds = %radeon_pll_errata_after_index.exit.i664.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %__INPLL.exit666.i

__INPLL.exit666.i:                                ; preds = %if.then.i10.i665.i, %radeon_pll_errata_after_index.exit.i664.i.__INPLL.exit666.i_crit_edge
  %290 = tail call i32 @llvm.bswap.i32(i32 %287) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void @arm_heavy_mb() #11
  %291 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i668.i = getelementptr i8, ptr %292, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i668.i, i8 3) #11, !srcloc !343
  %293 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %errata.i.i, align 8
  %and.i.i670.i = and i32 %294, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i670.i)
  %tobool.not.i.i671.i = icmp eq i32 %and.i.i670.i, 0
  br i1 %tobool.not.i.i671.i, label %__INPLL.exit666.i.radeon_pll_errata_after_index.exit.i678.i_crit_edge, label %if.then.i.i674.i

__INPLL.exit666.i.radeon_pll_errata_after_index.exit.i678.i_crit_edge: ; preds = %__INPLL.exit666.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i678.i

if.then.i.i674.i:                                 ; preds = %__INPLL.exit666.i
  call void @__sanitizer_cov_trace_pc() #13
  %295 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i.i672.i = getelementptr i8, ptr %296, i32 12
  %297 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i672.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %298 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr5.i.i.i673.i = getelementptr i8, ptr %299, i32 80
  %300 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i673.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i678.i

radeon_pll_errata_after_index.exit.i678.i:        ; preds = %if.then.i.i674.i, %__INPLL.exit666.i.radeon_pll_errata_after_index.exit.i678.i_crit_edge
  %301 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr2.i675.i = getelementptr i8, ptr %302, i32 12
  %303 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i675.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  %304 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %errata.i.i, align 8
  %and.i8.i676.i = and i32 %305, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i676.i)
  %tobool.not.i9.i677.i = icmp eq i32 %and.i8.i676.i, 0
  br i1 %tobool.not.i9.i677.i, label %radeon_pll_errata_after_index.exit.i678.i.do.end275_crit_edge, label %if.then.i10.i679.i

radeon_pll_errata_after_index.exit.i678.i.do.end275_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i678.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end275

if.then.i10.i679.i:                               ; preds = %radeon_pll_errata_after_index.exit.i678.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %do.end275

do.end275:                                        ; preds = %if.then.i10.i679.i, %radeon_pll_errata_after_index.exit.i678.i.do.end275_crit_edge
  %306 = and i32 %303, -16580608
  %307 = tail call i32 @llvm.bswap.i32(i32 %306) #11
  %308 = lshr i32 %290, 15
  %mul381.i = and i32 %308, 510
  %mul382.i = mul nuw nsw i32 %mul381.i, %xtal.0.i
  %and380.i = shl i32 %290, 1
  %mul383.i = and i32 %and380.i, 510
  %div.i707708715.i = lshr exact i32 %mul383.i, 1
  %add.i.i = add nuw nsw i32 %div.i707708715.i, %mul382.i
  %div1.i709.i = udiv i32 %add.i.i, %mul383.i
  %309 = lshr i32 %290, 7
  %mul385.i = and i32 %309, 510
  %mul386.i = mul nuw nsw i32 %mul385.i, %xtal.0.i
  %add.i682.i = add nuw nsw i32 %div.i707708715.i, %mul386.i
  %div1.i683710.i = udiv i32 %add.i682.i, %mul383.i
  %ref_clk.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 38, i32 5
  %310 = ptrtoint ptr %ref_clk.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %xtal.0.i, ptr %ref_clk.i, align 4
  %311 = ptrtoint ptr %ref_div to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %307, ptr %ref_div, align 8
  %sclk392.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 38, i32 2
  %312 = ptrtoint ptr %sclk392.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 %div1.i709.i, ptr %sclk392.i, align 8
  %mclk394.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 38, i32 3
  %313 = ptrtoint ptr %mclk394.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %div1.i683710.i, ptr %mclk394.i, align 4
  br label %found

found:                                            ; preds = %do.end275, %do.end367.i, %for.end57.i.found_crit_edge, %if.then
  %.str.65.sink = phi ptr [ @.str.65, %if.then ], [ @.str.68, %do.end275 ], [ @.str.71, %do.end367.i ], [ @.str.71, %for.end57.i.found_crit_edge ]
  %call269 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.65.sink) #14
  %mclk285 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 38, i32 3
  %314 = ptrtoint ptr %mclk285 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %mclk285, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %315)
  %cmp286 = icmp eq i32 %315, 0
  br i1 %cmp286, label %if.then288, label %found.if.end291_crit_edge

found.if.end291_crit_edge:                        ; preds = %found
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end291

if.then288:                                       ; preds = %found
  call void @__sanitizer_cov_trace_pc() #13
  %316 = ptrtoint ptr %mclk285 to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 20000, ptr %mclk285, align 4
  br label %if.end291

if.end291:                                        ; preds = %if.then288, %found.if.end291_crit_edge
  %sclk293 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 38, i32 2
  %317 = ptrtoint ptr %sclk293 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %sclk293, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %318)
  %cmp294 = icmp eq i32 %318, 0
  br i1 %cmp294, label %if.then296, label %if.end291.do.end302_crit_edge

if.end291.do.end302_crit_edge:                    ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end302

if.then296:                                       ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #13
  %319 = ptrtoint ptr %sclk293 to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 20000, ptr %sclk293, align 8
  br label %do.end302

do.end302:                                        ; preds = %if.then296, %if.end291.do.end302_crit_edge
  %ref_clk305 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 38, i32 5
  %320 = ptrtoint ptr %ref_clk305 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %ref_clk305, align 4
  %.frozen = freeze i32 %321
  %div = sdiv i32 %.frozen, 100
  %322 = mul i32 %div, 100
  %rem.decomposed = sub i32 %.frozen, %322
  %323 = ptrtoint ptr %ref_div to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %ref_div, align 8
  %325 = ptrtoint ptr %mclk285 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %mclk285, align 4
  %.frozen428 = freeze i32 %326
  %div312 = sdiv i32 %.frozen428, 100
  %327 = mul i32 %div312, 100
  %rem315.decomposed = sub i32 %.frozen428, %327
  %328 = ptrtoint ptr %sclk293 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %sclk293, align 8
  %.frozen429 = freeze i32 %329
  %div318 = sdiv i32 %.frozen429, 100
  %330 = mul i32 %div318, 100
  %rem321.decomposed = sub i32 %.frozen429, %330
  %call322 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %div, i32 noundef %rem.decomposed, i32 noundef %324, i32 noundef %div312, i32 noundef %rem315.decomposed, i32 noundef %div318, i32 noundef %rem321.decomposed) #14
  %ppll_min328 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 38, i32 1
  %331 = ptrtoint ptr %ppll_min328 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %ppll_min328, align 4
  %333 = ptrtoint ptr %pll49 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %pll49, align 8
  %call331 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %332, i32 noundef %334) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_create_i2c_busses(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_set_fbinfo(ptr noundef %rinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rinfo, align 8
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %rinfo, ptr %par, align 4
  %pseudo_palette = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 12
  %pseudo_palette2 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 27
  %3 = ptrtoint ptr %pseudo_palette2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pseudo_palette, ptr %pseudo_palette2, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 13056, ptr %flags, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @radeonfb_ops, ptr %fbops, align 4
  %fb_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 7
  %6 = ptrtoint ptr %fb_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb_base, align 4
  %8 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 4
  %mapped_vram = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 19
  %10 = ptrtoint ptr %mapped_vram to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mapped_vram, align 8
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 26
  %12 = ptrtoint ptr %screen_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %screen_size, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7
  %name = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 3
  %call = tail call i32 @strlcpy(ptr noundef %fix, ptr noundef %name, i32 noundef 16) #11
  %fb_base_phys = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 5
  %13 = ptrtoint ptr %fb_base_phys to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fb_base_phys, align 4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %smem_start, align 4
  %video_ram = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 18
  %16 = ptrtoint ptr %video_ram to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %video_ram, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 2
  %18 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %smem_len, align 4
  %type = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 3
  %19 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %type, align 4
  %visual = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 5
  %20 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %visual, align 4
  %xpanstep = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 6
  %21 = ptrtoint ptr %xpanstep to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 8, ptr %xpanstep, align 4
  %ypanstep = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 7
  %22 = ptrtoint ptr %ypanstep to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %ypanstep, align 2
  %ywrapstep = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 8
  %23 = ptrtoint ptr %ywrapstep to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %ywrapstep, align 4
  %type_aux = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 4
  %24 = ptrtoint ptr %type_aux to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %type_aux, align 4
  %mmio_base_phys = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 4
  %25 = ptrtoint ptr %mmio_base_phys to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mmio_base_phys, align 8
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 10
  %27 = ptrtoint ptr %mmio_start to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %mmio_start, align 4
  %mmio_len = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 11
  %28 = ptrtoint ptr %mmio_len to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 16384, ptr %mmio_len, align 4
  %accel = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 12
  %29 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 38, ptr %accel, align 4
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  %call16 = tail call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #11
  %30 = load i8, ptr @noaccel, align 1, !range !359
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not = icmp eq i8 %30, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 4
  %or = or i32 %32, 2
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_probe_screens(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_check_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_save_state(ptr noundef readonly %rinfo, ptr noundef writeonly %save) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %0 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 80
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !332
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !452
  %crtc_gen_cntl = getelementptr inbounds %struct.radeon_regs, ptr %save, i32 0, i32 23
  %4 = ptrtoint ptr %crtc_gen_cntl to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %crtc_gen_cntl, align 4
  %5 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio_base, align 8
  %add.ptr5 = getelementptr i8, ptr %6, i32 84
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #11, !srcloc !332
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !453
  %crtc_ext_cntl = getelementptr inbounds %struct.radeon_regs, ptr %save, i32 0, i32 24
  %9 = ptrtoint ptr %crtc_ext_cntl to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %crtc_ext_cntl, align 4
  %10 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_base, align 8
  %add.ptr12 = getelementptr i8, ptr %11, i32 636
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #11, !srcloc !332
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !454
  %crtc_more_cntl = getelementptr inbounds %struct.radeon_regs, ptr %save, i32 0, i32 35
  %14 = ptrtoint ptr %crtc_more_cntl to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %crtc_more_cntl, align 4
  %15 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio_base, align 8
  %add.ptr19 = getelementptr i8, ptr %16, i32 88
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #11, !srcloc !332
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !455
  %dac_cntl = getelementptr inbounds %struct.radeon_regs, ptr %save, i32 0, i32 25
  %19 = ptrtoint ptr %dac_cntl to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %dac_cntl, align 4
  %20 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio_base, align 8
  %add.ptr26 = getelementptr i8, ptr %21, i32 512
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #11, !srcloc !332
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !456
  %crtc_h_total_disp = getelementptr inbounds %struct.radeon_regs, ptr %save, i32 0, i32 26
  %24 = ptrtoint ptr %crtc_h_total_disp to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %crtc_h_total_disp, align 4
  %25 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio_base, align 8
  %add.ptr33 = getelementptr i8, ptr %26, i32 516
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #11, !srcloc !332
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !457
  %crtc_h_sync_strt_wid = getelementptr inbounds %struct.radeon_regs, ptr %save, i32 0, i32 27
  %29 = ptrtoint ptr %crtc_h_sync_strt_wid to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %crtc_h_sync_strt_wid, align 4
  %30 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio_base, align 8
  %add.ptr40 = getelementptr i8, ptr %31, i32 520
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #11, !srcloc !332
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !458
  %crtc_v_total_disp = getelementptr inbounds %struct.radeon_regs, ptr %save, i32 0, i32 28
  %34 = ptrtoint ptr %crtc_v_total_disp to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %crtc_v_total_disp, align 4
  %35 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio_base, align 8
  %add.ptr47 = getelementptr i8, ptr %36, i32 524
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #11, !srcloc !332
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !459
  %crtc_v_sync_strt_wid = getelementptr inbounds %struct.radeon_regs, ptr %save, i32 0, i32 29
  %39 = ptrtoint ptr %crtc_v_sync_strt_wid to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %crtc_v_sync_strt_wid, align 4
  %40 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio_base, align 8
  %add.ptr54 = getelementptr i8, ptr %41, i32 556
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #11, !srcloc !332
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !460
  %crtc_pitch = getelementptr inbounds %struct.radeon_regs, ptr %save, i32 0, i32 32
  %44 = ptrtoint ptr %crtc_pitch to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %crtc_pitch, align 4
  %45 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio_base, align 8
  %add.ptr61 = getelementptr i8, ptr %46, i32 2816
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #11, !srcloc !332
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !461
  %surface_cntl = getelementptr inbounds %struct.radeon_regs, ptr %save, i32 0, i32 13
  %49 = ptrtoint ptr %surface_cntl to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %surface_cntl, align 4
  %50 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio_base, align 8
  %add.ptr68 = getelementptr i8, ptr %51, i32 592
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #11, !srcloc !332
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !462
  %fp_crtc_h_total_disp = getelementptr inbounds %struct.radeon_regs, ptr %save, i32 0, i32 49
  %54 = ptrtoint ptr %fp_crtc_h_total_disp to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %fp_crtc_h_total_disp, align 4
  %55 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmio_base, align 8
  %add.ptr75 = getelementptr i8, ptr %56, i32 596
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75) #11, !srcloc !332
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !463
  %fp_crtc_v_total_disp = getelementptr inbounds %struct.radeon_regs, ptr %save, i32 0, i32 50
  %59 = ptrtoint ptr %fp_crtc_v_total_disp to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %fp_crtc_v_total_disp, align 4
  %60 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio_base, align 8
  %add.ptr82 = getelementptr i8, ptr %61, i32 644
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82) #11, !srcloc !332
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  %fp_gen_cntl = getelementptr inbounds %struct.radeon_regs, ptr %save, i32 0, i32 51
  %64 = ptrtoint ptr %fp_gen_cntl to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %fp_gen_cntl, align 4
  %65 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio_base, align 8
  %add.ptr89 = getelementptr i8, ptr %66, i32 708
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89) #11, !srcloc !332
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !465
  %fp_h_sync_strt_wid = getelementptr inbounds %struct.radeon_regs, ptr %save, i32 0, i32 53
  %69 = ptrtoint ptr %fp_h_sync_strt_wid to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %fp_h_sync_strt_wid, align 4
  %70 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmio_base, align 8
  %add.ptr96 = getelementptr i8, ptr %71, i32 652
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr96) #11, !srcloc !332
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !466
  %fp_horz_stretch = getelementptr inbounds %struct.radeon_regs, ptr %save, i32 0, i32 55
  %74 = ptrtoint ptr %fp_horz_stretch to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %fp_horz_stretch, align 4
  %75 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmio_base, align 8
  %add.ptr103 = getelementptr i8, ptr %76, i32 712
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr103) #11, !srcloc !332
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !467
  %fp_v_sync_strt_wid = getelementptr inbounds %struct.radeon_regs, ptr %save, i32 0, i32 57
  %79 = ptrtoint ptr %fp_v_sync_strt_wid to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %fp_v_sync_strt_wid, align 4
  %80 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mmio_base, align 8
  %add.ptr110 = getelementptr i8, ptr %81, i32 656
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110) #11, !srcloc !332
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  %fp_vert_stretch = getelementptr inbounds %struct.radeon_regs, ptr %save, i32 0, i32 59
  %84 = ptrtoint ptr %fp_vert_stretch to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %fp_vert_stretch, align 4
  %85 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mmio_base, align 8
  %add.ptr117 = getelementptr i8, ptr %86, i32 720
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr117) #11, !srcloc !332
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !469
  %lvds_gen_cntl = getelementptr inbounds %struct.radeon_regs, ptr %save, i32 0, i32 60
  %89 = ptrtoint ptr %lvds_gen_cntl to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %lvds_gen_cntl, align 4
  %90 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mmio_base, align 8
  %add.ptr124 = getelementptr i8, ptr %91, i32 724
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr124) #11, !srcloc !332
  %93 = tail call i32 @llvm.bswap.i32(i32 %92)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !470
  %lvds_pll_cntl = getelementptr inbounds %struct.radeon_regs, ptr %save, i32 0, i32 61
  %94 = ptrtoint ptr %lvds_pll_cntl to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %lvds_pll_cntl, align 4
  %95 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mmio_base, align 8
  %add.ptr131 = getelementptr i8, ptr %96, i32 672
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr131) #11, !srcloc !332
  %98 = tail call i32 @llvm.bswap.i32(i32 %97)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !471
  %tmds_crc = getelementptr inbounds %struct.radeon_regs, ptr %save, i32 0, i32 62
  %99 = ptrtoint ptr %tmds_crc to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %tmds_crc, align 4
  %100 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mmio_base, align 8
  %add.ptr138 = getelementptr i8, ptr %101, i32 676
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr138) #11, !srcloc !332
  %103 = tail call i32 @llvm.bswap.i32(i32 %102)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !472
  %tmds_transmitter_cntl = getelementptr inbounds %struct.radeon_regs, ptr %save, i32 0, i32 63
  %104 = ptrtoint ptr %tmds_transmitter_cntl to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %tmds_transmitter_cntl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void @arm_heavy_mb() #11
  %105 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i = getelementptr i8, ptr %106, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 8) #11, !srcloc !343
  %errata.i.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 17
  %107 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %errata.i.i, align 8
  %and.i.i = and i32 %108, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.radeon_pll_errata_after_index.exit.i_crit_edge, label %if.then.i.i

entry.radeon_pll_errata_after_index.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %109 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %110, i32 12
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %112 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mmio_base, align 8
  %add.ptr5.i.i.i = getelementptr i8, ptr %113, i32 80
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i

radeon_pll_errata_after_index.exit.i:             ; preds = %if.then.i.i, %entry.radeon_pll_errata_after_index.exit.i_crit_edge
  %115 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mmio_base, align 8
  %add.ptr2.i = getelementptr i8, ptr %116, i32 12
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  %118 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %errata.i.i, align 8
  %and.i8.i = and i32 %119, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i)
  %tobool.not.i9.i = icmp eq i32 %and.i8.i, 0
  br i1 %tobool.not.i9.i, label %radeon_pll_errata_after_index.exit.i.__INPLL.exit_crit_edge, label %if.then.i10.i

radeon_pll_errata_after_index.exit.i.__INPLL.exit_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__INPLL.exit

if.then.i10.i:                                    ; preds = %radeon_pll_errata_after_index.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %__INPLL.exit

__INPLL.exit:                                     ; preds = %if.then.i10.i, %radeon_pll_errata_after_index.exit.i.__INPLL.exit_crit_edge
  %120 = tail call i32 @llvm.bswap.i32(i32 %117) #11
  %vclk_ecp_cntl = getelementptr inbounds %struct.radeon_regs, ptr %save, i32 0, i32 69
  %121 = ptrtoint ptr %vclk_ecp_cntl to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %vclk_ecp_cntl, align 4
  %122 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mmio_base, align 8
  %add.ptr146 = getelementptr i8, ptr %123, i32 8
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr146) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !473
  %125 = and i32 %124, -1056964609
  %126 = tail call i32 @llvm.bswap.i32(i32 %125)
  %clk_cntl_index = getelementptr inbounds %struct.radeon_regs, ptr %save, i32 0, i32 70
  %127 = ptrtoint ptr %clk_cntl_index to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %clk_cntl_index, align 4
  %128 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %errata.i.i, align 8
  %and.i = and i32 %129, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %__INPLL.exit.radeon_pll_errata_after_index.exit_crit_edge, label %if.then.i

__INPLL.exit.radeon_pll_errata_after_index.exit_crit_edge: ; preds = %__INPLL.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit

if.then.i:                                        ; preds = %__INPLL.exit
  call void @__sanitizer_cov_trace_pc() #13
  %130 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i.i = getelementptr i8, ptr %131, i32 12
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %133 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %mmio_base, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %134, i32 80
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit

radeon_pll_errata_after_index.exit:               ; preds = %if.then.i, %__INPLL.exit.radeon_pll_errata_after_index.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void @arm_heavy_mb() #11
  %136 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i202 = getelementptr i8, ptr %137, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i202, i8 7) #11, !srcloc !343
  %138 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %errata.i.i, align 8
  %and.i.i204 = and i32 %139, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i204)
  %tobool.not.i.i205 = icmp eq i32 %and.i.i204, 0
  br i1 %tobool.not.i.i205, label %radeon_pll_errata_after_index.exit.radeon_pll_errata_after_index.exit.i212_crit_edge, label %if.then.i.i208

radeon_pll_errata_after_index.exit.radeon_pll_errata_after_index.exit.i212_crit_edge: ; preds = %radeon_pll_errata_after_index.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i212

if.then.i.i208:                                   ; preds = %radeon_pll_errata_after_index.exit
  call void @__sanitizer_cov_trace_pc() #13
  %140 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i.i.i206 = getelementptr i8, ptr %141, i32 12
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i206) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %143 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %mmio_base, align 8
  %add.ptr5.i.i.i207 = getelementptr i8, ptr %144, i32 80
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i207) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i212

radeon_pll_errata_after_index.exit.i212:          ; preds = %if.then.i.i208, %radeon_pll_errata_after_index.exit.radeon_pll_errata_after_index.exit.i212_crit_edge
  %146 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mmio_base, align 8
  %add.ptr2.i209 = getelementptr i8, ptr %147, i32 12
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i209) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  %149 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %errata.i.i, align 8
  %and.i8.i210 = and i32 %150, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i210)
  %tobool.not.i9.i211 = icmp eq i32 %and.i8.i210, 0
  br i1 %tobool.not.i9.i211, label %radeon_pll_errata_after_index.exit.i212.__INPLL.exit214_crit_edge, label %if.then.i10.i213

radeon_pll_errata_after_index.exit.i212.__INPLL.exit214_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i212
  call void @__sanitizer_cov_trace_pc() #13
  br label %__INPLL.exit214

if.then.i10.i213:                                 ; preds = %radeon_pll_errata_after_index.exit.i212
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %__INPLL.exit214

__INPLL.exit214:                                  ; preds = %if.then.i10.i213, %radeon_pll_errata_after_index.exit.i212.__INPLL.exit214_crit_edge
  %151 = tail call i32 @llvm.bswap.i32(i32 %148) #11
  %ppll_div_3 = getelementptr inbounds %struct.radeon_regs, ptr %save, i32 0, i32 67
  %152 = ptrtoint ptr %ppll_div_3 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %ppll_div_3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void @arm_heavy_mb() #11
  %153 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i216 = getelementptr i8, ptr %154, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i216, i8 3) #11, !srcloc !343
  %155 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %errata.i.i, align 8
  %and.i.i218 = and i32 %156, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i218)
  %tobool.not.i.i219 = icmp eq i32 %and.i.i218, 0
  br i1 %tobool.not.i.i219, label %__INPLL.exit214.radeon_pll_errata_after_index.exit.i226_crit_edge, label %if.then.i.i222

__INPLL.exit214.radeon_pll_errata_after_index.exit.i226_crit_edge: ; preds = %__INPLL.exit214
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i226

if.then.i.i222:                                   ; preds = %__INPLL.exit214
  call void @__sanitizer_cov_trace_pc() #13
  %157 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i.i.i220 = getelementptr i8, ptr %158, i32 12
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i220) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %160 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %mmio_base, align 8
  %add.ptr5.i.i.i221 = getelementptr i8, ptr %161, i32 80
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i221) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i226

radeon_pll_errata_after_index.exit.i226:          ; preds = %if.then.i.i222, %__INPLL.exit214.radeon_pll_errata_after_index.exit.i226_crit_edge
  %163 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %mmio_base, align 8
  %add.ptr2.i223 = getelementptr i8, ptr %164, i32 12
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i223) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  %166 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %errata.i.i, align 8
  %and.i8.i224 = and i32 %167, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i224)
  %tobool.not.i9.i225 = icmp eq i32 %and.i8.i224, 0
  br i1 %tobool.not.i9.i225, label %radeon_pll_errata_after_index.exit.i226.__INPLL.exit228_crit_edge, label %if.then.i10.i227

radeon_pll_errata_after_index.exit.i226.__INPLL.exit228_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i226
  call void @__sanitizer_cov_trace_pc() #13
  br label %__INPLL.exit228

if.then.i10.i227:                                 ; preds = %radeon_pll_errata_after_index.exit.i226
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %rinfo) #11
  br label %__INPLL.exit228

__INPLL.exit228:                                  ; preds = %if.then.i10.i227, %radeon_pll_errata_after_index.exit.i226.__INPLL.exit228_crit_edge
  %168 = tail call i32 @llvm.bswap.i32(i32 %165) #11
  %ppll_ref_div = getelementptr inbounds %struct.radeon_regs, ptr %save, i32 0, i32 68
  %169 = ptrtoint ptr %ppll_ref_div to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %ppll_ref_div, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeonfb_pm_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeonfb_bl_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_destroy_modedb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_delete_i2c_busses(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_region(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_conflicting_framebuffers(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_map_rom(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeonfb_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %v = alloca %struct.fb_var_screeninfo, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %v) #11
  %2 = call ptr @memset(ptr %v, i32 255, i32 160)
  %call = call i32 @radeon_match_mode(ptr noundef %1, ptr noundef nonnull %v, ptr noundef %var) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 6
  %3 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bits_per_pixel, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %4, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.bb7_crit_edge
    i32 1, label %if.end.sw.bb7_crit_edge184
    i32 2, label %if.end.sw.bb7_crit_edge185
    i32 3, label %if.end.sw.bb7_crit_edge186
    i32 4, label %if.end.sw.bb7_crit_edge187
    i32 5, label %if.end.sw.bb7_crit_edge188
    i32 6, label %if.end.sw.bb7_crit_edge189
    i32 7, label %if.end.sw.bb7_crit_edge190
    i32 8, label %if.end.sw.bb7_crit_edge191
    i32 9, label %if.end.if.end.i_crit_edge
    i32 10, label %if.end.if.end.i_crit_edge192
    i32 11, label %if.end.if.end.i_crit_edge193
    i32 12, label %if.end.if.end.i_crit_edge194
    i32 13, label %if.end.if.end.i_crit_edge195
    i32 14, label %if.end.if.end.i_crit_edge196
    i32 15, label %if.end.if.end.i_crit_edge197
    i32 16, label %if.end.if.end.i_crit_edge198
    i32 25, label %if.end.sw.bb69_crit_edge
    i32 26, label %if.end.sw.bb69_crit_edge199
    i32 27, label %if.end.sw.bb69_crit_edge200
    i32 28, label %if.end.sw.bb69_crit_edge201
    i32 29, label %if.end.sw.bb69_crit_edge202
    i32 30, label %if.end.sw.bb69_crit_edge203
    i32 31, label %if.end.sw.bb69_crit_edge204
    i32 32, label %if.end.sw.bb69_crit_edge205
  ]

if.end.sw.bb69_crit_edge205:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb69

if.end.sw.bb69_crit_edge204:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb69

if.end.sw.bb69_crit_edge203:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb69

if.end.sw.bb69_crit_edge202:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb69

if.end.sw.bb69_crit_edge201:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb69

if.end.sw.bb69_crit_edge200:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb69

if.end.sw.bb69_crit_edge199:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb69

if.end.sw.bb69_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb69

if.end.if.end.i_crit_edge198:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.if.end.i_crit_edge197:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.if.end.i_crit_edge196:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.if.end.i_crit_edge195:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.if.end.i_crit_edge194:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.if.end.i_crit_edge193:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.if.end.i_crit_edge192:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.sw.bb7_crit_edge191:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

if.end.sw.bb7_crit_edge190:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

if.end.sw.bb7_crit_edge189:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

if.end.sw.bb7_crit_edge188:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

if.end.sw.bb7_crit_edge187:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

if.end.sw.bb7_crit_edge186:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

if.end.sw.bb7_crit_edge185:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

if.end.sw.bb7_crit_edge184:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

if.end.sw.bb7_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end.if.end.i_crit_edge, %if.end.if.end.i_crit_edge192, %if.end.if.end.i_crit_edge193, %if.end.if.end.i_crit_edge194, %if.end.if.end.i_crit_edge195, %if.end.if.end.i_crit_edge196, %if.end.if.end.i_crit_edge197, %if.end.if.end.i_crit_edge198
  %6 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16, ptr %bits_per_pixel, align 4
  %length.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp2.i = icmp eq i32 %8, 5
  %red19 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 8
  br i1 %cmp2.i, label %sw.bb18, label %sw.bb35

sw.bb7:                                           ; preds = %if.end.sw.bb7_crit_edge, %if.end.sw.bb7_crit_edge184, %if.end.sw.bb7_crit_edge185, %if.end.sw.bb7_crit_edge186, %if.end.sw.bb7_crit_edge187, %if.end.sw.bb7_crit_edge188, %if.end.sw.bb7_crit_edge189, %if.end.sw.bb7_crit_edge190, %if.end.sw.bb7_crit_edge191
  %9 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %bits_per_pixel, align 4
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 10
  %10 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %blue, align 4
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 9
  %11 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %green, align 4
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 8
  %12 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %red, align 4
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %length, align 4
  %length12 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %length12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %length12, align 4
  %length14 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %length14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %length14, align 4
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 11
  %length15 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 11, i32 1
  %16 = ptrtoint ptr %length15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %length15, align 4
  %17 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %transp, align 4
  br label %sw.epilog89

sw.bb18:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %red19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 10, ptr %red19, align 4
  %green21 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 9
  %19 = ptrtoint ptr %green21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 5, ptr %green21, align 4
  %blue23 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 10
  %20 = ptrtoint ptr %blue23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %blue23, align 4
  %length26 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %length26 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 5, ptr %length26, align 4
  %22 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 5, ptr %length.i, align 4
  %length30 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 8, i32 1
  %23 = ptrtoint ptr %length30 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5, ptr %length30, align 4
  %transp31 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 11
  %length32 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 11, i32 1
  %24 = ptrtoint ptr %length32 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %length32, align 4
  %25 = ptrtoint ptr %transp31 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %transp31, align 4
  br label %sw.epilog89

sw.bb35:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %red19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 11, ptr %red19, align 4
  %green38 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 9
  %27 = ptrtoint ptr %green38 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 5, ptr %green38, align 4
  %blue40 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 10
  %28 = ptrtoint ptr %blue40 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %blue40, align 4
  %length43 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 8, i32 1
  %29 = ptrtoint ptr %length43 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 5, ptr %length43, align 4
  %30 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 6, ptr %length.i, align 4
  %length47 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %length47 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 5, ptr %length47, align 4
  %transp48 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 11
  %length49 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 11, i32 1
  %32 = ptrtoint ptr %length49 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %length49, align 4
  %33 = ptrtoint ptr %transp48 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %transp48, align 4
  br label %sw.epilog89

sw.bb69:                                          ; preds = %if.end.sw.bb69_crit_edge, %if.end.sw.bb69_crit_edge199, %if.end.sw.bb69_crit_edge200, %if.end.sw.bb69_crit_edge201, %if.end.sw.bb69_crit_edge202, %if.end.sw.bb69_crit_edge203, %if.end.sw.bb69_crit_edge204, %if.end.sw.bb69_crit_edge205
  %34 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 32, ptr %bits_per_pixel, align 4
  %red70 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 8
  %35 = ptrtoint ptr %red70 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 16, ptr %red70, align 4
  %green72 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 9
  %36 = ptrtoint ptr %green72 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8, ptr %green72, align 4
  %blue74 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 10
  %37 = ptrtoint ptr %blue74 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %blue74, align 4
  %length77 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 9, i32 1
  %38 = ptrtoint ptr %length77 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 8, ptr %length77, align 4
  %length79 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 10, i32 1
  %39 = ptrtoint ptr %length79 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8, ptr %length79, align 4
  %length81 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 8, i32 1
  %40 = ptrtoint ptr %length81 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 8, ptr %length81, align 4
  %transp82 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 11
  %41 = ptrtoint ptr %transp82 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 24, ptr %transp82, align 4
  %length85 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 11, i32 1
  %42 = ptrtoint ptr %length85 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 8, ptr %length85, align 4
  br label %sw.epilog89

sw.epilog89:                                      ; preds = %sw.bb69, %sw.bb35, %sw.bb18, %sw.bb7
  %nom.0 = phi i32 [ 4, %sw.bb69 ], [ 2, %sw.bb35 ], [ 2, %sw.bb18 ], [ 1, %sw.bb7 ]
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 3
  %43 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %yres_virtual, align 4
  %yres90 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 1
  %45 = ptrtoint ptr %yres90 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %yres90, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp = icmp ult i32 %44, %46
  br i1 %cmp, label %if.then91, label %sw.epilog89.if.end94_crit_edge

sw.epilog89.if.end94_crit_edge:                   ; preds = %sw.epilog89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.then91:                                        ; preds = %sw.epilog89
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %yres_virtual, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %sw.epilog89.if.end94_crit_edge
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 2
  %48 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %xres_virtual, align 4
  %50 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp96 = icmp ult i32 %49, %51
  br i1 %cmp96, label %if.then97, label %if.end94.if.end100_crit_edge

if.end94.if.end100_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %xres_virtual, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %if.end94.if.end100_crit_edge
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 8
  %flags = getelementptr inbounds %struct.fb_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags, align 4
  %and = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool102.not = icmp eq i32 %and, 0
  %57 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %xres_virtual, align 4
  br i1 %tobool102.not, label %if.else, label %if.then103

if.then103:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  %and105 = and i32 %58, -8
  br label %if.end116

if.else:                                          ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  %mul = mul i32 %58, %nom.0
  %add109 = add i32 %mul, 63
  %shr = and i32 %add109, -64
  %div114 = udiv i32 %shr, %nom.0
  br label %if.end116

if.end116:                                        ; preds = %if.else, %if.then103
  %storemerge = phi i32 [ %div114, %if.else ], [ %and105, %if.then103 ]
  %59 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %storemerge, ptr %xres_virtual, align 4
  %60 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %yres_virtual, align 4
  %mul119 = mul i32 %storemerge, %nom.0
  %mul120 = mul i32 %mul119, %61
  %mapped_vram = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 19
  %62 = ptrtoint ptr %mapped_vram to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mapped_vram, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul120, i32 %63)
  %cmp122 = icmp ugt i32 %mul120, %63
  br i1 %cmp122, label %if.end116.cleanup_crit_edge, label %if.end124

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end124:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge, i32 %51)
  %cmp127 = icmp ult i32 %storemerge, %51
  br i1 %cmp127, label %if.then128, label %if.end124.if.end131_crit_edge

if.end124.if.end131_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131

if.then128:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %storemerge, ptr %v, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.then128, %if.end124.if.end131_crit_edge
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 4
  %65 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %xoffset, align 4
  %67 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %v, align 4
  %sub = sub i32 %storemerge, %68
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %sub)
  %cmp134 = icmp ugt i32 %66, %sub
  br i1 %cmp134, label %if.then135, label %if.end131.if.end141_crit_edge

if.end131.if.end141_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end141

if.then135:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #13
  %sub139 = add i32 %sub, -1
  %69 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub139, ptr %xoffset, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then135, %if.end131.if.end141_crit_edge
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 5
  %70 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %yoffset, align 4
  %sub144 = sub i32 %61, %46
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %sub144)
  %cmp145 = icmp ugt i32 %71, %sub144
  br i1 %cmp145, label %if.then146, label %if.end141.if.end152_crit_edge

if.end141.if.end152_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end152

if.then146:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #13
  %sub150 = add i32 %sub144, -1
  %72 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %sub150, ptr %yoffset, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.then146, %if.end141.if.end152_crit_edge
  %msb_right159 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 10, i32 2
  %msb_right161 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 9, i32 2
  %73 = ptrtoint ptr %msb_right161 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %msb_right161, align 4
  %msb_right163 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %v, i32 0, i32 8, i32 2
  %74 = ptrtoint ptr %msb_right163 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %msb_right163, align 4
  %75 = call ptr @memset(ptr %msb_right159, i32 0, i32 16)
  %76 = call ptr @memcpy(ptr %var, ptr %v, i32 160)
  br label %cleanup

cleanup:                                          ; preds = %if.end152, %if.end116.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end152 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end116.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %v) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeonfb_set_par(ptr nocapture noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %mon1_type = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %mon1_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mon1_type, align 4
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %4 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits_per_pixel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 16
  br i1 %cmp.not.i, label %if.end.i, label %entry.var_to_depth.exit_crit_edge

entry.var_to_depth.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %var_to_depth.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %6 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp2.i = icmp eq i32 %7, 5
  %cond.i = select i1 %cmp2.i, i32 15, i32 16
  br label %var_to_depth.exit

var_to_depth.exit:                                ; preds = %if.end.i, %entry.var_to_depth.exit_crit_edge
  %retval.0.i833 = phi i32 [ %cond.i, %if.end.i ], [ %5, %entry.var_to_depth.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 396) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %var_to_depth.exit.cleanup_crit_edge, label %if.end

var_to_depth.exit.cleanup_crit_edge:              ; preds = %var_to_depth.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %var_to_depth.exit
  %mmio_base.i.i = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.end
  %i.06.i.i = phi i32 [ 0, %if.end ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %9 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 3648
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !347
  %12 = and i32 %11, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp2.not.i.not.not.i = icmp eq i32 %12, 0
  br i1 %cmp2.not.i.not.not.i, label %if.end.i.i, label %for.body.i.i.for.body.i.preheader_crit_edge

for.body.i.i.for.body.i.preheader_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.preheader

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #11
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 2000000
  br i1 %exitcond.not.i.i, label %do.end.i.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %do.end.i.i, %for.body.i.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i835.for.body.i_crit_edge, %for.body.i.preheader
  %i.08.i = phi i32 [ %inc.i, %if.end.i835.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %14 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_base.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %15, i32 3648
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !349
  %.mask.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %cmp2.i834 = icmp eq i32 %.mask.i, 0
  br i1 %cmp2.i834, label %if.then.i, label %if.end.i835

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_engine_flush(ptr noundef %1) #11
  br label %_radeon_engine_idle.exit

if.end.i835:                                      ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #11
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2000000
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i835.for.body.i_crit_edge

if.end.i835.for.body.i_crit_edge:                 ; preds = %if.end.i835
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i835
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #14
  br label %_radeon_engine_idle.exit

_radeon_engine_idle.exit:                         ; preds = %do.end.i, %if.then.i
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %_radeon_engine_idle.exit.if.then13_crit_edge, label %lor.lhs.false

_radeon_engine_idle.exit.if.then13_crit_edge:     ; preds = %_radeon_engine_idle.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

lor.lhs.false:                                    ; preds = %_radeon_engine_idle.exit
  %sync7 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 24
  %18 = ptrtoint ptr %sync7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sync7, align 4
  %and9 = lshr i32 %19, 1
  %and9.lobit = and i32 %and9, 1
  %20 = xor i32 %and9.lobit, 1
  %and = and i32 %19, 1
  %21 = xor i32 %and, 1
  %pixclock = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %22 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pixclock, align 4
  %24 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %yres, align 4
  %lower_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 21
  %26 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lower_margin, align 4
  %add4 = add i32 %27, %25
  %vsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 23
  %28 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vsync_len, align 4
  %add5 = add i32 %add4, %29
  %upper_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 20
  %30 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %upper_margin, align 4
  %add6 = add i32 %add5, %31
  %32 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %var, align 4
  %right_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 19
  %34 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %right_margin, align 4
  %add = add i32 %35, %33
  %hsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 22
  %36 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hsync_len, align 4
  %add2 = add i32 %add, %37
  %left_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 18
  %38 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %left_margin, align 4
  %add3 = add i32 %add2, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp12 = icmp eq i32 %3, 2
  br i1 %cmp12, label %lor.lhs.false.if.then13_crit_edge, label %lor.lhs.false.if.end61_crit_edge

lor.lhs.false.if.end61_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %_radeon_engine_idle.exit.if.then13_crit_edge
  %panel_info = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 30
  %40 = ptrtoint ptr %panel_info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %panel_info, align 4
  %42 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp16 = icmp ult i32 %41, %43
  br i1 %cmp16, label %if.then17, label %if.then13.if.end21_crit_edge

if.then13.if.end21_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %41, ptr %var, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.then13.if.end21_crit_edge
  %yres23 = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 30, i32 1
  %45 = ptrtoint ptr %yres23 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %yres23, align 4
  %47 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp25 = icmp ult i32 %46, %48
  br i1 %cmp25, label %if.then26, label %if.end21.if.end30_crit_edge

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %yres to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %46, ptr %yres, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end21.if.end30_crit_edge
  %50 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %var, align 4
  %hblank = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 30, i32 6
  %52 = ptrtoint ptr %hblank to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hblank, align 4
  %add33 = add i32 %53, %51
  %hOver_plus = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 30, i32 4
  %54 = ptrtoint ptr %hOver_plus to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hOver_plus, align 4
  %add36 = add i32 %55, %51
  %hSync_width = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 30, i32 5
  %56 = ptrtoint ptr %hSync_width to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hSync_width, align 4
  %add38 = add i32 %add36, %57
  %58 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %yres, align 4
  %vblank = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 30, i32 9
  %60 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %vblank, align 4
  %add41 = add i32 %61, %59
  %vOver_plus = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 30, i32 7
  %62 = ptrtoint ptr %vOver_plus to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vOver_plus, align 4
  %add44 = add i32 %63, %59
  %vSync_width = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 30, i32 8
  %64 = ptrtoint ptr %vSync_width to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %vSync_width, align 4
  %add46 = add i32 %add44, %65
  %hAct_high = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 30, i32 10
  %66 = ptrtoint ptr %hAct_high to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %hAct_high, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool48.not = icmp eq i32 %67, 0
  %lnot.ext = zext i1 %tobool48.not to i32
  %vAct_high = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 30, i32 11
  %68 = ptrtoint ptr %vAct_high to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %vAct_high, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool50.not = icmp eq i32 %69, 0
  %lnot.ext52 = zext i1 %tobool50.not to i32
  %clock = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 30, i32 3
  %70 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %clock, align 4
  %div = sdiv i32 100000000, %71
  %use_bios_dividers = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 30, i32 14
  %72 = ptrtoint ptr %use_bios_dividers to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %use_bios_dividers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool55.not = icmp eq i32 %73, 0
  br i1 %tobool55.not, label %if.end30.if.end61_crit_edge, label %if.then56

if.end30.if.end61_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then56:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %fbk_divider = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 30, i32 17
  %74 = ptrtoint ptr %fbk_divider to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fbk_divider, align 4
  %post_divider = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 30, i32 16
  %76 = ptrtoint ptr %post_divider to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %post_divider, align 4
  %shl = shl i32 %77, 16
  %or = or i32 %shl, %75
  %ppll_div_3 = getelementptr inbounds %struct.radeon_regs, ptr %call7.i, i32 0, i32 67
  %78 = ptrtoint ptr %ppll_div_3 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or, ptr %ppll_div_3, align 8
  %ref_divider = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 30, i32 15
  %79 = ptrtoint ptr %ref_divider to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ref_divider, align 4
  %ppll_ref_div = getelementptr inbounds %struct.radeon_regs, ptr %call7.i, i32 0, i32 68
  %81 = ptrtoint ptr %ppll_ref_div to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %ppll_ref_div, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %if.end30.if.end61_crit_edge, %lor.lhs.false.if.end61_crit_edge
  %v_sync_pol.0 = phi i32 [ %lnot.ext52, %if.then56 ], [ %lnot.ext52, %if.end30.if.end61_crit_edge ], [ %20, %lor.lhs.false.if.end61_crit_edge ]
  %pixClock.0 = phi i32 [ %div, %if.then56 ], [ %div, %if.end30.if.end61_crit_edge ], [ %23, %lor.lhs.false.if.end61_crit_edge ]
  %tobool285.not = phi i1 [ false, %if.then56 ], [ true, %if.end30.if.end61_crit_edge ], [ true, %lor.lhs.false.if.end61_crit_edge ]
  %h_sync_pol.0 = phi i32 [ %lnot.ext, %if.then56 ], [ %lnot.ext, %if.end30.if.end61_crit_edge ], [ %21, %lor.lhs.false.if.end61_crit_edge ]
  %vSyncEnd.0 = phi i32 [ %add46, %if.then56 ], [ %add46, %if.end30.if.end61_crit_edge ], [ %add5, %lor.lhs.false.if.end61_crit_edge ]
  %vSyncStart.0 = phi i32 [ %add44, %if.then56 ], [ %add44, %if.end30.if.end61_crit_edge ], [ %add4, %lor.lhs.false.if.end61_crit_edge ]
  %hSyncEnd.0 = phi i32 [ %add38, %if.then56 ], [ %add38, %if.end30.if.end61_crit_edge ], [ %add2, %lor.lhs.false.if.end61_crit_edge ]
  %hSyncStart.0 = phi i32 [ %add36, %if.then56 ], [ %add36, %if.end30.if.end61_crit_edge ], [ %add, %lor.lhs.false.if.end61_crit_edge ]
  %vTotal.0 = phi i32 [ %add41, %if.then56 ], [ %add41, %if.end30.if.end61_crit_edge ], [ %add6, %lor.lhs.false.if.end61_crit_edge ]
  %hTotal.0 = phi i32 [ %add33, %if.then56 ], [ %add33, %if.end30.if.end61_crit_edge ], [ %add3, %lor.lhs.false.if.end61_crit_edge ]
  %div62 = udiv i32 1000000000, %pixClock.0
  %div63 = udiv i32 %div62, 10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeonfb_set_par.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeonfb_set_par, %do.body75)) #11
          to label %if.then73 [label %do.body75], !srcloc !383

if.then73:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeonfb_set_par.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.84, i32 noundef %hSyncStart.0, i32 noundef %hSyncEnd.0, i32 noundef %hTotal.0) #11
  br label %do.body75

do.body75:                                        ; preds = %if.then73, %if.end61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeonfb_set_par.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeonfb_set_par, %do.end92)) #11
          to label %if.then89 [label %do.end92], !srcloc !383

if.then89:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeonfb_set_par.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.85, i32 noundef %vSyncStart.0, i32 noundef %vSyncEnd.0, i32 noundef %vTotal.0) #11
  br label %do.end92

do.end92:                                         ; preds = %if.then89, %do.body75
  %sub = sub i32 %hSyncEnd.0, %hSyncStart.0
  %sub94 = sub i32 %vSyncEnd.0, %vSyncStart.0
  %sub.off = add i32 %sub, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.off)
  %82 = icmp ult i32 %sub.off, 15
  %div93 = sdiv i32 %sub, 8
  %83 = tail call i32 @llvm.smin.i32(i32 %div93, i32 63)
  call void @__sanitizer_cov_trace_cmp4(i32 %vSyncEnd.0, i32 %vSyncStart.0)
  %cmp101 = icmp eq i32 %vSyncEnd.0, %vSyncStart.0
  %84 = tail call i32 @llvm.smin.i32(i32 %sub94, i32 31)
  %conv = trunc i32 %retval.0.i833 to i16
  %85 = zext i16 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.121)
  switch i16 %conv, label %sw.default.i [
    i16 8, label %do.end92.radeon_get_dstbpp.exit_crit_edge
    i16 15, label %sw.bb1.i
    i16 16, label %sw.bb2.i
    i16 32, label %sw.bb3.i
  ]

do.end92.radeon_get_dstbpp.exit_crit_edge:        ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_get_dstbpp.exit

sw.bb1.i:                                         ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_get_dstbpp.exit

sw.bb2.i:                                         ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_get_dstbpp.exit

sw.bb3.i:                                         ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_get_dstbpp.exit

sw.default.i:                                     ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_get_dstbpp.exit

radeon_get_dstbpp.exit:                           ; preds = %sw.default.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %do.end92.radeon_get_dstbpp.exit_crit_edge
  %retval.0.i836 = phi i32 [ 0, %sw.default.i ], [ 6, %sw.bb3.i ], [ 4, %sw.bb2.i ], [ 3, %sw.bb1.i ], [ 2, %do.end92.radeon_get_dstbpp.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp112 = icmp eq i32 %3, 2
  %86 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %86)
  %87 = icmp eq i32 %86, 2
  %sub115 = add nsw i32 %retval.0.i836, -1
  %arrayidx = getelementptr [6 x i8], ptr @__const.radeonfb_set_par.hsync_fudge_fp, i32 0, i32 %sub115
  %arrayidx119 = getelementptr [6 x i8], ptr @__const.radeonfb_set_par.hsync_adj_tab, i32 0, i32 %sub115
  %hsync_fudge.0.in.in = select i1 %87, ptr %arrayidx, ptr %arrayidx119
  %88 = ptrtoint ptr %hsync_fudge.0.in.in to i32
  call void @__asan_load1_noabort(i32 %88)
  %hsync_fudge.0.in = load i8, ptr %hsync_fudge.0.in.in, align 1
  %hsync_fudge.0 = zext i8 %hsync_fudge.0.in to i32
  %sub122 = add i32 %hSyncStart.0, 8184
  %add123 = add i32 %sub122, %hsync_fudge.0
  %shl124 = shl nuw nsw i32 %retval.0.i836, 8
  %or125 = or i32 %shl124, 50331648
  %crtc_gen_cntl = getelementptr inbounds %struct.radeon_regs, ptr %call7.i, i32 0, i32 23
  %89 = ptrtoint ptr %crtc_gen_cntl to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %or125, ptr %crtc_gen_cntl, align 8
  %crtc_more_cntl = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 2, i32 35
  %90 = ptrtoint ptr %crtc_more_cntl to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %crtc_more_cntl, align 8
  %crtc_more_cntl126 = getelementptr inbounds %struct.radeon_regs, ptr %call7.i, i32 0, i32 35
  %and128 = and i32 %91, -16
  %92 = ptrtoint ptr %crtc_more_cntl126 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %and128, ptr %crtc_more_cntl126, align 8
  %crtc_ext_cntl = getelementptr inbounds %struct.radeon_regs, ptr %call7.i, i32 0, i32 24
  br i1 %87, label %if.then134, label %if.else142

if.then134:                                       ; preds = %radeon_get_dstbpp.exit
  call void @__sanitizer_cov_trace_pc() #13
  %93 = load i8, ptr @mirror, align 1, !range !359
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool135.not = icmp eq i8 %93, 0
  %spec.store.select = select i1 %tobool135.not, i32 72, i32 32840
  %94 = ptrtoint ptr %crtc_ext_cntl to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %spec.store.select, ptr %crtc_ext_cntl, align 4
  %95 = ptrtoint ptr %crtc_gen_cntl to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %or125, ptr %crtc_gen_cntl, align 8
  br label %if.end144

if.else142:                                       ; preds = %radeon_get_dstbpp.exit
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %crtc_ext_cntl to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 32840, ptr %crtc_ext_cntl, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.else142, %if.then134
  %dac_cntl = getelementptr inbounds %struct.radeon_regs, ptr %call7.i, i32 0, i32 25
  %97 = ptrtoint ptr %dac_cntl to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -16768768, ptr %dac_cntl, align 8
  %div145 = sdiv i32 %hTotal.0, 8
  %sub146 = add nsw i32 %div145, 1023
  %and147 = and i32 %sub146, 1023
  %98 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %var, align 4
  %100 = shl i32 %99, 13
  %101 = add i32 %100, -65536
  %shl151 = and i32 %101, -65536
  %or152 = or i32 %shl151, %and147
  %crtc_h_total_disp = getelementptr inbounds %struct.radeon_regs, ptr %call7.i, i32 0, i32 26
  %102 = ptrtoint ptr %crtc_h_total_disp to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or152, ptr %crtc_h_total_disp, align 4
  %and153 = and i32 %add123, 8191
  %.op = shl i32 %83, 16
  %shl154 = select i1 %82, i32 65536, i32 %.op
  %shl156 = shl nsw i32 %h_sync_pol.0, 23
  %or155 = or i32 %shl154, %shl156
  %or157 = or i32 %or155, %and153
  %crtc_h_sync_strt_wid = getelementptr inbounds %struct.radeon_regs, ptr %call7.i, i32 0, i32 27
  %103 = ptrtoint ptr %crtc_h_sync_strt_wid to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %or157, ptr %crtc_h_sync_strt_wid, align 8
  %sub158 = add i32 %vTotal.0, 65535
  %and159 = and i32 %sub158, 65535
  %104 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %yres, align 4
  %sub161 = shl i32 %105, 16
  %shl162 = add i32 %sub161, -65536
  %or163 = or i32 %shl162, %and159
  %crtc_v_total_disp = getelementptr inbounds %struct.radeon_regs, ptr %call7.i, i32 0, i32 28
  %106 = ptrtoint ptr %crtc_v_total_disp to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %or163, ptr %crtc_v_total_disp, align 4
  %sub164 = add i32 %vSyncStart.0, 4095
  %and165 = and i32 %sub164, 4095
  %.op846 = shl i32 %84, 16
  %shl166 = select i1 %cmp101, i32 65536, i32 %.op846
  %shl168 = shl nsw i32 %v_sync_pol.0, 23
  %or167 = or i32 %shl166, %shl168
  %or169 = or i32 %or167, %and165
  %crtc_v_sync_strt_wid = getelementptr inbounds %struct.radeon_regs, ptr %call7.i, i32 0, i32 29
  %107 = ptrtoint ptr %crtc_v_sync_strt_wid to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %or169, ptr %crtc_v_sync_strt_wid, align 8
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %108 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %flags, align 4
  %and170 = and i32 %109, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %110 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %xres_virtual, align 4
  br i1 %tobool171.not, label %if.then172, label %if.else183

if.then172:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #13
  %112 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %bits_per_pixel.i, align 4
  %add173 = add i32 %113, 1
  %div174810 = lshr i32 %add173, 3
  %mul = mul i32 %div174810, %111
  %add175 = add i32 %mul, 63
  %shr = lshr i32 %add175, 6
  %pitch = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 22
  %114 = ptrtoint ptr %pitch to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %shr, ptr %pitch, align 4
  %shl178 = shl nuw nsw i32 %shr, 3
  %115 = load i32, ptr %bits_per_pixel.i, align 4
  %add180 = add i32 %115, 1
  %div181811 = lshr i32 %add180, 3
  %div182 = udiv i32 %shl178, %div181811
  br label %if.end187

if.else183:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #13
  %shr185 = lshr i32 %111, 3
  br label %if.end187

if.end187:                                        ; preds = %if.else183, %if.then172
  %shr185.sink = phi i32 [ %div182, %if.then172 ], [ %shr185, %if.else183 ]
  %116 = getelementptr inbounds %struct.radeon_regs, ptr %call7.i, i32 0, i32 32
  %shl189 = shl i32 %shr185.sink, 16
  %or191 = or i32 %shl189, %shr185.sink
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %or191, ptr %116, align 4
  %surface_cntl = getelementptr inbounds %struct.radeon_regs, ptr %call7.i, i32 0, i32 13
  %118 = ptrtoint ptr %surface_cntl to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %surface_cntl, align 4
  %119 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %bits_per_pixel.i, align 4
  %121 = zext i32 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %120, label %if.end187.sw.epilog_crit_edge [
    i32 16, label %if.end187.sw.epilog.sink.split_crit_edge
    i32 24, label %if.end187.sw.bb197_crit_edge
    i32 32, label %if.end187.sw.bb197_crit_edge848
  ]

if.end187.sw.bb197_crit_edge848:                  ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb197

if.end187.sw.bb197_crit_edge:                     ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb197

if.end187.sw.epilog.sink.split_crit_edge:         ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

if.end187.sw.epilog_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb197:                                         ; preds = %if.end187.sw.bb197_crit_edge, %if.end187.sw.bb197_crit_edge848
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb197, %if.end187.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 10485760, %sw.bb197 ], [ 5242880, %if.end187.sw.epilog.sink.split_crit_edge ]
  %122 = ptrtoint ptr %surface_cntl to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %.sink, ptr %surface_cntl, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end187.sw.epilog_crit_edge
  %arrayidx204 = getelementptr %struct.radeon_regs, ptr %call7.i, i32 0, i32 20, i32 0
  %123 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %arrayidx204, align 8
  %arrayidx205 = getelementptr %struct.radeon_regs, ptr %call7.i, i32 0, i32 21, i32 0
  %124 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 31, ptr %arrayidx205, align 8
  %arrayidx206 = getelementptr %struct.radeon_regs, ptr %call7.i, i32 0, i32 22, i32 0
  %125 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %arrayidx206, align 8
  %arrayidx204.1 = getelementptr %struct.radeon_regs, ptr %call7.i, i32 0, i32 20, i32 1
  %126 = ptrtoint ptr %arrayidx204.1 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %arrayidx204.1, align 4
  %arrayidx205.1 = getelementptr %struct.radeon_regs, ptr %call7.i, i32 0, i32 21, i32 1
  %127 = ptrtoint ptr %arrayidx205.1 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 31, ptr %arrayidx205.1, align 4
  %arrayidx206.1 = getelementptr %struct.radeon_regs, ptr %call7.i, i32 0, i32 22, i32 1
  %128 = ptrtoint ptr %arrayidx206.1 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %arrayidx206.1, align 4
  %arrayidx204.2 = getelementptr %struct.radeon_regs, ptr %call7.i, i32 0, i32 20, i32 2
  %129 = ptrtoint ptr %arrayidx204.2 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %arrayidx204.2, align 8
  %arrayidx205.2 = getelementptr %struct.radeon_regs, ptr %call7.i, i32 0, i32 21, i32 2
  %130 = ptrtoint ptr %arrayidx205.2 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 31, ptr %arrayidx205.2, align 8
  %arrayidx206.2 = getelementptr %struct.radeon_regs, ptr %call7.i, i32 0, i32 22, i32 2
  %131 = ptrtoint ptr %arrayidx206.2 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %arrayidx206.2, align 8
  %arrayidx204.3 = getelementptr %struct.radeon_regs, ptr %call7.i, i32 0, i32 20, i32 3
  %132 = ptrtoint ptr %arrayidx204.3 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %arrayidx204.3, align 4
  %arrayidx205.3 = getelementptr %struct.radeon_regs, ptr %call7.i, i32 0, i32 21, i32 3
  %133 = ptrtoint ptr %arrayidx205.3 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 31, ptr %arrayidx205.3, align 4
  %arrayidx206.3 = getelementptr %struct.radeon_regs, ptr %call7.i, i32 0, i32 22, i32 3
  %134 = ptrtoint ptr %arrayidx206.3 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %arrayidx206.3, align 4
  %arrayidx204.4 = getelementptr %struct.radeon_regs, ptr %call7.i, i32 0, i32 20, i32 4
  %135 = ptrtoint ptr %arrayidx204.4 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %arrayidx204.4, align 8
  %arrayidx205.4 = getelementptr %struct.radeon_regs, ptr %call7.i, i32 0, i32 21, i32 4
  %136 = ptrtoint ptr %arrayidx205.4 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 31, ptr %arrayidx205.4, align 8
  %arrayidx206.4 = getelementptr %struct.radeon_regs, ptr %call7.i, i32 0, i32 22, i32 4
  %137 = ptrtoint ptr %arrayidx206.4 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %arrayidx206.4, align 8
  %arrayidx204.5 = getelementptr %struct.radeon_regs, ptr %call7.i, i32 0, i32 20, i32 5
  %138 = ptrtoint ptr %arrayidx204.5 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %arrayidx204.5, align 4
  %arrayidx205.5 = getelementptr %struct.radeon_regs, ptr %call7.i, i32 0, i32 21, i32 5
  %139 = ptrtoint ptr %arrayidx205.5 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 31, ptr %arrayidx205.5, align 4
  %arrayidx206.5 = getelementptr %struct.radeon_regs, ptr %call7.i, i32 0, i32 22, i32 5
  %140 = ptrtoint ptr %arrayidx206.5 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %arrayidx206.5, align 4
  %arrayidx204.6 = getelementptr %struct.radeon_regs, ptr %call7.i, i32 0, i32 20, i32 6
  %141 = ptrtoint ptr %arrayidx204.6 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %arrayidx204.6, align 8
  %arrayidx205.6 = getelementptr %struct.radeon_regs, ptr %call7.i, i32 0, i32 21, i32 6
  %142 = ptrtoint ptr %arrayidx205.6 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 31, ptr %arrayidx205.6, align 8
  %arrayidx206.6 = getelementptr %struct.radeon_regs, ptr %call7.i, i32 0, i32 22, i32 6
  %143 = ptrtoint ptr %arrayidx206.6 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %arrayidx206.6, align 8
  %arrayidx204.7 = getelementptr %struct.radeon_regs, ptr %call7.i, i32 0, i32 20, i32 7
  %144 = ptrtoint ptr %arrayidx204.7 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %arrayidx204.7, align 4
  %arrayidx205.7 = getelementptr %struct.radeon_regs, ptr %call7.i, i32 0, i32 21, i32 7
  %145 = ptrtoint ptr %arrayidx205.7 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 31, ptr %arrayidx205.7, align 4
  %arrayidx206.7 = getelementptr %struct.radeon_regs, ptr %call7.i, i32 0, i32 22, i32 7
  %146 = ptrtoint ptr %arrayidx206.7 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %arrayidx206.7, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeonfb_set_par.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeonfb_set_par, %do.body227)) #11
          to label %if.then221 [label %do.body227], !srcloc !383

if.then221:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %147 = ptrtoint ptr %crtc_h_total_disp to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %crtc_h_total_disp, align 4
  %149 = ptrtoint ptr %crtc_h_sync_strt_wid to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %crtc_h_sync_strt_wid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeonfb_set_par.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.86, i32 noundef %148, i32 noundef %150) #11
  br label %do.body227

do.body227:                                       ; preds = %if.then221, %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeonfb_set_par.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeonfb_set_par, %do.end246)) #11
          to label %if.then241 [label %do.end246], !srcloc !383

if.then241:                                       ; preds = %do.body227
  call void @__sanitizer_cov_trace_pc() #13
  %151 = ptrtoint ptr %crtc_v_total_disp to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %crtc_v_total_disp, align 4
  %153 = ptrtoint ptr %crtc_v_sync_strt_wid to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %crtc_v_sync_strt_wid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeonfb_set_par.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.87, i32 noundef %152, i32 noundef %154) #11
  br label %do.end246

do.end246:                                        ; preds = %if.then241, %do.body227
  %155 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %bits_per_pixel.i, align 4
  %bpp = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 23
  %157 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %bpp, align 8
  %depth248 = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 24
  %158 = ptrtoint ptr %depth248 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %retval.0.i833, ptr %depth248, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeonfb_set_par.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeonfb_set_par, %do.body267)) #11
          to label %if.then263 [label %do.body267], !srcloc !383

if.then263:                                       ; preds = %do.end246
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeonfb_set_par.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.88, i32 noundef %pixClock.0) #11
  br label %do.body267

do.body267:                                       ; preds = %if.then263, %do.end246
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeonfb_set_par.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeonfb_set_par, %do.end284)) #11
          to label %if.then281 [label %do.end284], !srcloc !383

if.then281:                                       ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeonfb_set_par.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.89, i32 noundef %div63) #11
  br label %do.end284

do.end284:                                        ; preds = %if.then281, %do.body267
  %clk_cntl_index = getelementptr inbounds %struct.radeon_regs, ptr %call7.i, i32 0, i32 70
  %159 = ptrtoint ptr %clk_cntl_index to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 768, ptr %clk_cntl_index, align 4
  br i1 %tobool285.not, label %if.then286, label %do.end284.if.end287_crit_edge

do.end284.if.end287_crit_edge:                    ; preds = %do.end284
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end287

if.then286:                                       ; preds = %do.end284
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @radeon_calc_pll_regs(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef %div63)
  br label %if.end287

if.end287:                                        ; preds = %if.then286, %do.end284.if.end287_crit_edge
  %vclk_ecp_cntl = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 2, i32 69
  %160 = ptrtoint ptr %vclk_ecp_cntl to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %vclk_ecp_cntl, align 8
  %vclk_ecp_cntl289 = getelementptr inbounds %struct.radeon_regs, ptr %call7.i, i32 0, i32 69
  %162 = ptrtoint ptr %vclk_ecp_cntl289 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %vclk_ecp_cntl289, align 8
  br i1 %87, label %if.then295, label %if.end287.if.end526_crit_edge

if.end287.if.end526_crit_edge:                    ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end526

if.then295:                                       ; preds = %if.end287
  %163 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %var, align 4
  %panel_info297 = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 30
  %165 = ptrtoint ptr %panel_info297 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %panel_info297, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %164, i32 %166)
  %cmp299 = icmp ugt i32 %164, %166
  br i1 %cmp299, label %if.then301, label %if.then295.if.end305_crit_edge

if.then295.if.end305_crit_edge:                   ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end305

if.then301:                                       ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #13
  %167 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %var, align 4
  br label %if.end305

if.end305:                                        ; preds = %if.then301, %if.then295.if.end305_crit_edge
  %168 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %yres, align 4
  %yres308 = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 30, i32 1
  %170 = ptrtoint ptr %yres308 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %yres308, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %169, i32 %171)
  %cmp309 = icmp ugt i32 %169, %171
  br i1 %cmp309, label %if.then311, label %if.end305.if.end315_crit_edge

if.end305.if.end315_crit_edge:                    ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end315

if.then311:                                       ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #13
  %172 = ptrtoint ptr %yres to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %yres, align 4
  br label %if.end315

if.end315:                                        ; preds = %if.then311, %if.end305.if.end315_crit_edge
  %173 = ptrtoint ptr %panel_info297 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %panel_info297, align 4
  %div318 = sdiv i32 %174, 8
  %sub319 = shl i32 %div318, 16
  %shl320 = add i32 %sub319, -65536
  %fp_horz_stretch = getelementptr inbounds %struct.radeon_regs, ptr %call7.i, i32 0, i32 55
  %175 = ptrtoint ptr %fp_horz_stretch to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %shl320, ptr %fp_horz_stretch, align 8
  %176 = ptrtoint ptr %yres308 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %yres308, align 4
  %sub323 = shl i32 %177, 12
  %shl324 = add i32 %sub323, -4096
  %fp_vert_stretch = getelementptr inbounds %struct.radeon_regs, ptr %call7.i, i32 0, i32 59
  %178 = ptrtoint ptr %fp_vert_stretch to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %shl324, ptr %fp_vert_stretch, align 8
  %179 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %var, align 4
  %181 = load i32, ptr %panel_info297, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %180, i32 %181)
  %cmp328.not = icmp eq i32 %180, %181
  br i1 %cmp328.not, label %if.end315.if.end343_crit_edge, label %if.then330

if.end315.if.end343_crit_edge:                    ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end343

if.then330:                                       ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #13
  %mul332 = shl i32 %180, 12
  %div.i = sdiv i32 %181, 2
  %add.i = add i32 %div.i, %mul332
  %div1.i = sdiv i32 %add.i, %181
  %and336 = and i32 %div1.i, 65535
  %and338 = and i32 %shl320, -234946560
  %or339 = or i32 %and338, %and336
  %or342 = or i32 %or339, 100663296
  %182 = ptrtoint ptr %fp_horz_stretch to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %or342, ptr %fp_horz_stretch, align 8
  br label %if.end343

if.end343:                                        ; preds = %if.then330, %if.end315.if.end343_crit_edge
  %use_rmx.0 = phi i32 [ 1, %if.then330 ], [ 0, %if.end315.if.end343_crit_edge ]
  %183 = ptrtoint ptr %fp_horz_stretch to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %fp_horz_stretch, align 8
  %and345 = and i32 %184, -134217729
  store i32 %and345, ptr %fp_horz_stretch, align 8
  %185 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %yres, align 4
  %187 = ptrtoint ptr %yres308 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %yres308, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %186, i32 %188)
  %cmp349.not = icmp eq i32 %186, %188
  br i1 %cmp349.not, label %if.end343.if.end364_crit_edge, label %if.then351

if.end343.if.end364_crit_edge:                    ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end364

if.then351:                                       ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #13
  %mul353 = shl i32 %186, 12
  %div.i837 = sdiv i32 %188, 2
  %add.i838 = add i32 %div.i837, %mul353
  %div1.i839 = sdiv i32 %add.i838, %188
  %and357 = and i32 %div1.i839, 4095
  %189 = ptrtoint ptr %fp_vert_stretch to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %fp_vert_stretch, align 8
  %and359 = and i32 %190, -234885120
  %or360 = or i32 %and357, %and359
  %or363 = or i32 %or360, 100663296
  store i32 %or363, ptr %fp_vert_stretch, align 8
  br label %if.end364

if.end364:                                        ; preds = %if.then351, %if.end343.if.end364_crit_edge
  %use_rmx.1 = phi i32 [ 1, %if.then351 ], [ %use_rmx.0, %if.end343.if.end364_crit_edge ]
  %191 = ptrtoint ptr %fp_vert_stretch to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %fp_vert_stretch, align 8
  %and366 = and i32 %192, -134217729
  store i32 %and366, ptr %fp_vert_stretch, align 8
  %fp_gen_cntl = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 2, i32 51
  %193 = ptrtoint ptr %fp_gen_cntl to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %fp_gen_cntl, align 8
  %and368 = and i32 %194, -100081673
  %fp_gen_cntl369 = getelementptr inbounds %struct.radeon_regs, ptr %call7.i, i32 0, i32 51
  %or371 = or i32 %and368, 196616
  %195 = ptrtoint ptr %fp_gen_cntl369 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %or371, ptr %fp_gen_cntl369, align 8
  %family = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 15
  %196 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %family, align 4
  %198 = zext i8 %197 to i64
  call void @__sanitizer_cov_trace_switch(i64 %198, ptr @__sancov_gen_cov_switch_values.123)
  switch i8 %197, label %if.end364.if.end424_crit_edge [
    i8 11, label %if.end364.if.then410_crit_edge
    i8 13, label %if.end364.if.then410_crit_edge849
    i8 12, label %if.end364.if.then410_crit_edge850
    i8 14, label %if.end364.if.then410_crit_edge851
    i8 15, label %if.end364.if.then410_crit_edge852
    i8 16, label %if.end364.if.then410_crit_edge853
    i8 18, label %if.end364.if.then410_crit_edge854
    i8 7, label %if.end364.if.then410_crit_edge855
  ]

if.end364.if.then410_crit_edge855:                ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then410

if.end364.if.then410_crit_edge854:                ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then410

if.end364.if.then410_crit_edge853:                ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then410

if.end364.if.then410_crit_edge852:                ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then410

if.end364.if.then410_crit_edge851:                ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then410

if.end364.if.then410_crit_edge850:                ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then410

if.end364.if.then410_crit_edge849:                ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then410

if.end364.if.then410_crit_edge:                   ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then410

if.end364.if.end424_crit_edge:                    ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end424

if.then410:                                       ; preds = %if.end364.if.then410_crit_edge, %if.end364.if.then410_crit_edge849, %if.end364.if.then410_crit_edge850, %if.end364.if.then410_crit_edge851, %if.end364.if.then410_crit_edge852, %if.end364.if.then410_crit_edge853, %if.end364.if.then410_crit_edge854, %if.end364.if.then410_crit_edge855
  %and412 = and i32 %or371, -99888129
  %199 = ptrtoint ptr %fp_gen_cntl369 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %and412, ptr %fp_gen_cntl369, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_rmx.1)
  %tobool413.not = icmp eq i32 %use_rmx.1, 0
  br i1 %tobool413.not, label %if.then410.if.end424_crit_edge, label %if.then414

if.then410.if.end424_crit_edge:                   ; preds = %if.then410
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end424

if.then414:                                       ; preds = %if.then410
  call void @__sanitizer_cov_trace_pc() #13
  %or416 = or i32 %and412, 2048
  %200 = ptrtoint ptr %fp_gen_cntl369 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %or416, ptr %fp_gen_cntl369, align 8
  br label %if.end424

if.end424:                                        ; preds = %if.then414, %if.then410.if.end424_crit_edge, %if.end364.if.end424_crit_edge
  %lvds_gen_cntl = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 2, i32 60
  %201 = ptrtoint ptr %lvds_gen_cntl to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %lvds_gen_cntl, align 4
  %lvds_gen_cntl426 = getelementptr inbounds %struct.radeon_regs, ptr %call7.i, i32 0, i32 60
  %203 = ptrtoint ptr %lvds_gen_cntl426 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %202, ptr %lvds_gen_cntl426, align 4
  %lvds_pll_cntl = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 2, i32 61
  %204 = ptrtoint ptr %lvds_pll_cntl to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %lvds_pll_cntl, align 8
  %lvds_pll_cntl428 = getelementptr inbounds %struct.radeon_regs, ptr %call7.i, i32 0, i32 61
  %206 = ptrtoint ptr %lvds_pll_cntl428 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %lvds_pll_cntl428, align 8
  %tmds_crc = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 2, i32 62
  %207 = ptrtoint ptr %tmds_crc to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %tmds_crc, align 4
  %tmds_crc430 = getelementptr inbounds %struct.radeon_regs, ptr %call7.i, i32 0, i32 62
  %209 = ptrtoint ptr %tmds_crc430 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %tmds_crc430, align 4
  %tmds_transmitter_cntl = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 2, i32 63
  %210 = ptrtoint ptr %tmds_transmitter_cntl to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %tmds_transmitter_cntl, align 8
  %tmds_transmitter_cntl432 = getelementptr inbounds %struct.radeon_regs, ptr %call7.i, i32 0, i32 63
  %212 = ptrtoint ptr %tmds_transmitter_cntl432 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %tmds_transmitter_cntl432, align 8
  br i1 %cmp112, label %if.then435, label %if.else440

if.then435:                                       ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #13
  %or437 = or i32 %202, 524289
  %213 = ptrtoint ptr %lvds_gen_cntl426 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %or437, ptr %lvds_gen_cntl426, align 4
  %214 = ptrtoint ptr %fp_gen_cntl369 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %fp_gen_cntl369, align 8
  %and439 = and i32 %215, -6
  store i32 %and439, ptr %fp_gen_cntl369, align 8
  br label %if.end495

if.else440:                                       ; preds = %if.end424
  %216 = ptrtoint ptr %fp_gen_cntl369 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %fp_gen_cntl369, align 8
  %or442 = or i32 %217, 5
  store i32 %or442, ptr %fp_gen_cntl369, align 8
  %and444 = and i32 %211, -3
  %218 = ptrtoint ptr %tmds_transmitter_cntl432 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %and444, ptr %tmds_transmitter_cntl432, align 8
  %219 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %family, align 4
  %221 = zext i8 %220 to i64
  call void @__sanitizer_cov_trace_switch(i64 %221, ptr @__sancov_gen_cov_switch_values.124)
  switch i8 %220, label %lor.lhs.false484 [
    i8 11, label %if.else440.if.then486_crit_edge
    i8 13, label %if.else440.if.then486_crit_edge856
    i8 12, label %if.else440.if.then486_crit_edge857
    i8 14, label %if.else440.if.then486_crit_edge858
    i8 15, label %if.else440.if.then486_crit_edge859
    i8 16, label %if.else440.if.then486_crit_edge860
    i8 18, label %if.else440.if.then486_crit_edge861
    i8 7, label %if.else440.if.then486_crit_edge862
  ]

if.else440.if.then486_crit_edge862:               ; preds = %if.else440
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then486

if.else440.if.then486_crit_edge861:               ; preds = %if.else440
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then486

if.else440.if.then486_crit_edge860:               ; preds = %if.else440
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then486

if.else440.if.then486_crit_edge859:               ; preds = %if.else440
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then486

if.else440.if.then486_crit_edge858:               ; preds = %if.else440
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then486

if.else440.if.then486_crit_edge857:               ; preds = %if.else440
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then486

if.else440.if.then486_crit_edge856:               ; preds = %if.else440
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then486

if.else440.if.then486_crit_edge:                  ; preds = %if.else440
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then486

lor.lhs.false484:                                 ; preds = %if.else440
  %has_CRTC2 = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 25
  %222 = ptrtoint ptr %has_CRTC2 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %has_CRTC2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %tobool485.not = icmp eq i32 %223, 0
  br i1 %tobool485.not, label %lor.lhs.false484.if.then486_crit_edge, label %if.else489

lor.lhs.false484.if.then486_crit_edge:            ; preds = %lor.lhs.false484
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then486

if.then486:                                       ; preds = %lor.lhs.false484.if.then486_crit_edge, %if.else440.if.then486_crit_edge, %if.else440.if.then486_crit_edge856, %if.else440.if.then486_crit_edge857, %if.else440.if.then486_crit_edge858, %if.else440.if.then486_crit_edge859, %if.else440.if.then486_crit_edge860, %if.else440.if.then486_crit_edge861, %if.else440.if.then486_crit_edge862
  %and488 = and i32 %211, -4
  br label %if.end492

if.else489:                                       ; preds = %lor.lhs.false484
  call void @__sanitizer_cov_trace_pc() #13
  %or491 = or i32 %and444, 1
  br label %if.end492

if.end492:                                        ; preds = %if.else489, %if.then486
  %storemerge = phi i32 [ %and488, %if.then486 ], [ %or491, %if.else489 ]
  %224 = ptrtoint ptr %tmds_transmitter_cntl432 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %storemerge, ptr %tmds_transmitter_cntl432, align 8
  %crtc_ext_cntl493 = getelementptr inbounds %struct.radeon_regs, ptr %call7.i, i32 0, i32 24
  %225 = ptrtoint ptr %crtc_ext_cntl493 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %crtc_ext_cntl493, align 4
  %and494 = and i32 %226, -32769
  store i32 %and494, ptr %crtc_ext_cntl493, align 4
  br label %if.end495

if.end495:                                        ; preds = %if.end492, %if.then435
  %hblank497 = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 30, i32 6
  %227 = ptrtoint ptr %hblank497 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %hblank497, align 4
  %div498 = sdiv i32 %228, 8
  %and499 = and i32 %div498, 1023
  %229 = shl i32 %180, 13
  %230 = add i32 %229, -65536
  %shl503 = and i32 %230, -65536
  %or504 = or i32 %and499, %shl503
  %fp_crtc_h_total_disp = getelementptr inbounds %struct.radeon_regs, ptr %call7.i, i32 0, i32 49
  %231 = ptrtoint ptr %fp_crtc_h_total_disp to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %or504, ptr %fp_crtc_h_total_disp, align 8
  %vblank506 = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 30, i32 9
  %232 = ptrtoint ptr %vblank506 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %vblank506, align 4
  %and507 = and i32 %233, 65535
  %sub509 = shl i32 %186, 16
  %shl510 = add i32 %sub509, -65536
  %or511 = or i32 %and507, %shl510
  %fp_crtc_v_total_disp = getelementptr inbounds %struct.radeon_regs, ptr %call7.i, i32 0, i32 50
  %234 = ptrtoint ptr %fp_crtc_v_total_disp to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %or511, ptr %fp_crtc_v_total_disp, align 4
  %hOver_plus513 = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 30, i32 4
  %235 = ptrtoint ptr %hOver_plus513 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %hOver_plus513, align 4
  %and514 = and i32 %236, 8191
  %or518 = or i32 %or155, %and514
  %fp_h_sync_strt_wid = getelementptr inbounds %struct.radeon_regs, ptr %call7.i, i32 0, i32 53
  %237 = ptrtoint ptr %fp_h_sync_strt_wid to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %or518, ptr %fp_h_sync_strt_wid, align 8
  %vOver_plus520 = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 30, i32 7
  %238 = ptrtoint ptr %vOver_plus520 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %vOver_plus520, align 4
  %and521 = and i32 %239, 4095
  %or525 = or i32 %or167, %and521
  %fp_v_sync_strt_wid = getelementptr inbounds %struct.radeon_regs, ptr %call7.i, i32 0, i32 57
  %240 = ptrtoint ptr %fp_v_sync_strt_wid to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %or525, ptr %fp_v_sync_strt_wid, align 8
  br label %if.end526

if.end526:                                        ; preds = %if.end495, %if.end287.if.end526_crit_edge
  %asleep = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 41
  %241 = ptrtoint ptr %asleep to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %asleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %tobool527.not = icmp eq i32 %242, 0
  br i1 %tobool527.not, label %if.then528, label %if.end526.if.end534_crit_edge

if.end526.if.end534_crit_edge:                    ; preds = %if.end526
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end534

if.then528:                                       ; preds = %if.end526
  %state = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 1
  %243 = call ptr @memcpy(ptr %state, ptr %call7.i, i32 396)
  tail call void @radeon_write_mode(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 0)
  %244 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %flags, align 4
  %and530 = and i32 %245, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and530)
  %tobool531.not = icmp eq i32 %and530, 0
  br i1 %tobool531.not, label %if.then532, label %if.then528.if.end534_crit_edge

if.then528.if.end534_crit_edge:                   ; preds = %if.then528
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end534

if.then532:                                       ; preds = %if.then528
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeonfb_engine_init(ptr noundef %1) #11
  br label %if.end534

if.end534:                                        ; preds = %if.then532, %if.then528.if.end534_crit_edge, %if.end526.if.end534_crit_edge
  %246 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %flags, align 4
  %and536 = and i32 %247, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and536)
  %tobool537.not = icmp eq i32 %and536, 0
  br i1 %tobool537.not, label %if.then538, label %if.else541

if.then538:                                       ; preds = %if.end534
  call void @__sanitizer_cov_trace_pc() #13
  %pitch539 = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 22
  %248 = ptrtoint ptr %pitch539 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %pitch539, align 4
  %mul540 = shl i32 %249, 6
  br label %if.end549

if.else541:                                       ; preds = %if.end534
  call void @__sanitizer_cov_trace_pc() #13
  %xres_virtual542 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %250 = ptrtoint ptr %xres_virtual542 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %xres_virtual542, align 4
  %252 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %bits_per_pixel.i, align 4
  %add544 = add i32 %253, 1
  %div545812 = lshr i32 %add544, 3
  %mul546 = mul i32 %div545812, %251
  br label %if.end549

if.end549:                                        ; preds = %if.else541, %if.then538
  %mul546.sink = phi i32 [ %mul540, %if.then538 ], [ %mul546, %if.else541 ]
  %254 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %mul546.sink, ptr %254, align 4
  %256 = ptrtoint ptr %depth248 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %depth248, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %257)
  %cmp551 = icmp eq i32 %257, 8
  %cond553 = select i1 %cmp551, i32 3, i32 4
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %258 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %cond553, ptr %visual, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end549, %var_to_depth.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end549 ], [ -12, %var_to_depth.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeonfb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %asleep = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %asleep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then:                                          ; preds = %entry
  %is_mobility = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %is_mobility to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %is_mobility, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then2:                                         ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void @arm_heavy_mb() #11
  %mmio_base.i = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 8) #11, !srcloc !343
  %errata.i.i = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %errata.i.i, align 8
  %and.i.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then2.radeon_pll_errata_after_index.exit.i_crit_edge, label %if.then.i.i

if.then2.radeon_pll_errata_after_index.exit.i_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i

if.then.i.i:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %13 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr5.i.i.i = getelementptr i8, ptr %14, i32 80
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i

radeon_pll_errata_after_index.exit.i:             ; preds = %if.then.i.i, %if.then2.radeon_pll_errata_after_index.exit.i_crit_edge
  %16 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %17, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  %19 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %errata.i.i, align 8
  %and.i8.i = and i32 %20, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i)
  %tobool.not.i9.i = icmp eq i32 %and.i8.i, 0
  br i1 %tobool.not.i9.i, label %radeon_pll_errata_after_index.exit.i.__INPLL.exit_crit_edge, label %if.then.i10.i

radeon_pll_errata_after_index.exit.i.__INPLL.exit_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__INPLL.exit

if.then.i10.i:                                    ; preds = %radeon_pll_errata_after_index.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %1) #11
  br label %__INPLL.exit

__INPLL.exit:                                     ; preds = %if.then.i10.i, %radeon_pll_errata_after_index.exit.i.__INPLL.exit_crit_edge
  %21 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  %and = and i32 %21, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !345
  tail call void @arm_heavy_mb() #11
  %22 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i32 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i32, i8 -120) #11, !srcloc !343
  %24 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %errata.i.i, align 8
  %and.i.i34 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i34)
  %tobool.not.i.i35 = icmp eq i32 %and.i.i34, 0
  br i1 %tobool.not.i.i35, label %__INPLL.exit.radeon_pll_errata_after_index.exit.i39_crit_edge, label %if.then.i.i38

__INPLL.exit.radeon_pll_errata_after_index.exit.i39_crit_edge: ; preds = %__INPLL.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i39

if.then.i.i38:                                    ; preds = %__INPLL.exit
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i.i36 = getelementptr i8, ptr %27, i32 12
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i36) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %29 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr5.i.i.i37 = getelementptr i8, ptr %30, i32 80
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i37) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i39

radeon_pll_errata_after_index.exit.i39:           ; preds = %if.then.i.i38, %__INPLL.exit.radeon_pll_errata_after_index.exit.i39_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !346
  tail call void @arm_heavy_mb() #11
  %32 = tail call i32 @llvm.bswap.i32(i32 %and) #11
  %33 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %34, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %32) #11, !srcloc !337
  %35 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %errata.i.i, align 8
  %and.i9.i = and i32 %36, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9.i)
  %tobool.not.i10.i = icmp eq i32 %and.i9.i, 0
  br i1 %tobool.not.i10.i, label %radeon_pll_errata_after_index.exit.i39.if.end_crit_edge, label %if.then.i11.i

radeon_pll_errata_after_index.exit.i39.if.end_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i11.i:                                    ; preds = %radeon_pll_errata_after_index.exit.i39
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i11.i, %radeon_pll_errata_after_index.exit.i39.if.end_crit_edge, %if.then.if.end_crit_edge
  %vclk_cntl.0 = phi i32 [ 0, %if.then.if.end_crit_edge ], [ %21, %radeon_pll_errata_after_index.exit.i39.if.end_crit_edge ], [ %21, %if.then.i11.i ]
  %has_CRTC2 = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 25
  %37 = ptrtoint ptr %has_CRTC2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %has_CRTC2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool3.not = icmp eq i32 %38, 0
  br i1 %tobool3.not, label %if.end.if.end11_crit_edge, label %if.then4

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 6
  %39 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %40, i32 124
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !474
  %42 = and i32 %41, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !475
  tail call void @arm_heavy_mb() #11
  %43 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio_base, align 8
  %add.ptr9 = getelementptr i8, ptr %44, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %42) #11, !srcloc !337
  br label %if.end11

if.end11:                                         ; preds = %if.then4, %if.end.if.end11_crit_edge, %entry.if.end11_crit_edge
  %vclk_cntl.1 = phi i32 [ 0, %entry.if.end11_crit_edge ], [ %vclk_cntl.0, %if.then4 ], [ %vclk_cntl.0, %if.end.if.end11_crit_edge ]
  %call12 = tail call fastcc i32 @radeon_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, ptr noundef %1)
  %45 = ptrtoint ptr %asleep to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %asleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool14.not = icmp eq i32 %46, 0
  br i1 %tobool14.not, label %land.lhs.true, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end11
  %is_mobility15 = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 26
  %47 = ptrtoint ptr %is_mobility15 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %is_mobility15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool16.not = icmp eq i32 %48, 0
  br i1 %tobool16.not, label %land.lhs.true.if.end18_crit_edge, label %if.then17

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then17:                                        ; preds = %land.lhs.true
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !345
  tail call void @arm_heavy_mb() #11
  %mmio_base.i40 = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 6
  %49 = ptrtoint ptr %mmio_base.i40 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio_base.i40, align 8
  %add.ptr.i41 = getelementptr i8, ptr %50, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i41, i8 -120) #11, !srcloc !343
  %errata.i.i42 = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 17
  %51 = ptrtoint ptr %errata.i.i42 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %errata.i.i42, align 8
  %and.i.i43 = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i43)
  %tobool.not.i.i44 = icmp eq i32 %and.i.i43, 0
  br i1 %tobool.not.i.i44, label %if.then17.radeon_pll_errata_after_index.exit.i51_crit_edge, label %if.then.i.i47

if.then17.radeon_pll_errata_after_index.exit.i51_crit_edge: ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i51

if.then.i.i47:                                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %mmio_base.i40 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmio_base.i40, align 8
  %add.ptr.i.i.i45 = getelementptr i8, ptr %54, i32 12
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i45) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %56 = ptrtoint ptr %mmio_base.i40 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio_base.i40, align 8
  %add.ptr5.i.i.i46 = getelementptr i8, ptr %57, i32 80
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i46) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i51

radeon_pll_errata_after_index.exit.i51:           ; preds = %if.then.i.i47, %if.then17.radeon_pll_errata_after_index.exit.i51_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !346
  tail call void @arm_heavy_mb() #11
  %59 = tail call i32 @llvm.bswap.i32(i32 %vclk_cntl.1) #11
  %60 = ptrtoint ptr %mmio_base.i40 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio_base.i40, align 8
  %add.ptr4.i48 = getelementptr i8, ptr %61, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i48, i32 %59) #11, !srcloc !337
  %62 = ptrtoint ptr %errata.i.i42 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %errata.i.i42, align 8
  %and.i9.i49 = and i32 %63, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9.i49)
  %tobool.not.i10.i50 = icmp eq i32 %and.i9.i49, 0
  br i1 %tobool.not.i10.i50, label %radeon_pll_errata_after_index.exit.i51.if.end18_crit_edge, label %if.then.i11.i52

radeon_pll_errata_after_index.exit.i51.if.end18_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then.i11.i52:                                  ; preds = %radeon_pll_errata_after_index.exit.i51
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %1) #11
  br label %if.end18

if.end18:                                         ; preds = %if.then.i11.i52, %radeon_pll_errata_after_index.exit.i51.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeonfb_setcmap(ptr nocapture noundef readonly %cmap, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %asleep = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %asleep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then:                                          ; preds = %entry
  %is_mobility = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %is_mobility to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %is_mobility, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then2:                                         ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void @arm_heavy_mb() #11
  %mmio_base.i = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 8) #11, !srcloc !343
  %errata.i.i = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %errata.i.i, align 8
  %and.i.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then2.radeon_pll_errata_after_index.exit.i_crit_edge, label %if.then.i.i

if.then2.radeon_pll_errata_after_index.exit.i_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i

if.then.i.i:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %13 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr5.i.i.i = getelementptr i8, ptr %14, i32 80
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i

radeon_pll_errata_after_index.exit.i:             ; preds = %if.then.i.i, %if.then2.radeon_pll_errata_after_index.exit.i_crit_edge
  %16 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %17, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  %19 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %errata.i.i, align 8
  %and.i8.i = and i32 %20, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i)
  %tobool.not.i9.i = icmp eq i32 %and.i8.i, 0
  br i1 %tobool.not.i9.i, label %radeon_pll_errata_after_index.exit.i.__INPLL.exit_crit_edge, label %if.then.i10.i

radeon_pll_errata_after_index.exit.i.__INPLL.exit_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__INPLL.exit

if.then.i10.i:                                    ; preds = %radeon_pll_errata_after_index.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %1) #11
  br label %__INPLL.exit

__INPLL.exit:                                     ; preds = %if.then.i10.i, %radeon_pll_errata_after_index.exit.i.__INPLL.exit_crit_edge
  %21 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  %and = and i32 %21, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !345
  tail call void @arm_heavy_mb() #11
  %22 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i71 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i71, i8 -120) #11, !srcloc !343
  %24 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %errata.i.i, align 8
  %and.i.i73 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i73)
  %tobool.not.i.i74 = icmp eq i32 %and.i.i73, 0
  br i1 %tobool.not.i.i74, label %__INPLL.exit.radeon_pll_errata_after_index.exit.i78_crit_edge, label %if.then.i.i77

__INPLL.exit.radeon_pll_errata_after_index.exit.i78_crit_edge: ; preds = %__INPLL.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i78

if.then.i.i77:                                    ; preds = %__INPLL.exit
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i.i.i75 = getelementptr i8, ptr %27, i32 12
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i75) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %29 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr5.i.i.i76 = getelementptr i8, ptr %30, i32 80
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i76) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i78

radeon_pll_errata_after_index.exit.i78:           ; preds = %if.then.i.i77, %__INPLL.exit.radeon_pll_errata_after_index.exit.i78_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !346
  tail call void @arm_heavy_mb() #11
  %32 = tail call i32 @llvm.bswap.i32(i32 %and) #11
  %33 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %34, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %32) #11, !srcloc !337
  %35 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %errata.i.i, align 8
  %and.i9.i = and i32 %36, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9.i)
  %tobool.not.i10.i = icmp eq i32 %and.i9.i, 0
  br i1 %tobool.not.i10.i, label %radeon_pll_errata_after_index.exit.i78.if.end_crit_edge, label %if.then.i11.i

radeon_pll_errata_after_index.exit.i78.if.end_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i11.i:                                    ; preds = %radeon_pll_errata_after_index.exit.i78
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i11.i, %radeon_pll_errata_after_index.exit.i78.if.end_crit_edge, %if.then.if.end_crit_edge
  %vclk_cntl.0 = phi i32 [ 0, %if.then.if.end_crit_edge ], [ %21, %radeon_pll_errata_after_index.exit.i78.if.end_crit_edge ], [ %21, %if.then.i11.i ]
  %has_CRTC2 = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 25
  %37 = ptrtoint ptr %has_CRTC2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %has_CRTC2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool3.not = icmp eq i32 %38, 0
  br i1 %tobool3.not, label %if.end.if.end11_crit_edge, label %if.then4

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 6
  %39 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %40, i32 124
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !476
  %42 = and i32 %41, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !477
  tail call void @arm_heavy_mb() #11
  %43 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio_base, align 8
  %add.ptr9 = getelementptr i8, ptr %44, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %42) #11, !srcloc !337
  br label %if.end11

if.end11:                                         ; preds = %if.then4, %if.end.if.end11_crit_edge, %entry.if.end11_crit_edge
  %vclk_cntl.1 = phi i32 [ 0, %entry.if.end11_crit_edge ], [ %vclk_cntl.0, %if.then4 ], [ %vclk_cntl.0, %if.end.if.end11_crit_edge ]
  %len = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 1
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp93.not = icmp eq i32 %46, 0
  br i1 %cmp93.not, label %if.end11.for.end_crit_edge, label %for.body.preheader

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %if.end11
  %47 = ptrtoint ptr %cmap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cmap, align 4
  %blue14 = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 4
  %49 = ptrtoint ptr %blue14 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %blue14, align 4
  %green13 = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 3
  %51 = ptrtoint ptr %green13 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %green13, align 4
  %red12 = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 2
  %53 = ptrtoint ptr %red12 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %red12, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %red.099 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %54, %for.body.preheader ]
  %green.098 = phi ptr [ %incdec.ptr17, %for.inc.for.body_crit_edge ], [ %52, %for.body.preheader ]
  %blue.097 = phi ptr [ %incdec.ptr19, %for.inc.for.body_crit_edge ], [ %50, %for.body.preheader ]
  %start.096 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %48, %for.body.preheader ]
  %i.095 = phi i32 [ %inc33, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %55 = ptrtoint ptr %red.099 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %red.099, align 2
  %conv = zext i16 %56 to i32
  %57 = ptrtoint ptr %green.098 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %green.098, align 2
  %conv18 = zext i16 %58 to i32
  %59 = ptrtoint ptr %blue.097 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %blue.097, align 2
  %conv20 = zext i16 %60 to i32
  %call26 = tail call fastcc i32 @radeon_setcolreg(i32 noundef %start.096, i32 noundef %conv, i32 noundef %conv18, i32 noundef %conv20, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add i32 %start.096, 1
  %incdec.ptr19 = getelementptr i16, ptr %blue.097, i32 1
  %incdec.ptr17 = getelementptr i16, ptr %green.098, i32 1
  %incdec.ptr = getelementptr i16, ptr %red.099, i32 1
  %inc33 = add nuw i32 %i.095, 1
  %61 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len, align 4
  %cmp = icmp ult i32 %inc33, %62
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end11.for.end_crit_edge
  %rc.1 = phi i32 [ 0, %if.end11.for.end_crit_edge ], [ %call26, %for.body.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %63 = ptrtoint ptr %asleep to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %asleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool35.not = icmp eq i32 %64, 0
  br i1 %tobool35.not, label %land.lhs.true, label %for.end.if.end39_crit_edge

for.end.if.end39_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

land.lhs.true:                                    ; preds = %for.end
  %is_mobility36 = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 26
  %65 = ptrtoint ptr %is_mobility36 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %is_mobility36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool37.not = icmp eq i32 %66, 0
  br i1 %tobool37.not, label %land.lhs.true.if.end39_crit_edge, label %if.then38

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then38:                                        ; preds = %land.lhs.true
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !345
  tail call void @arm_heavy_mb() #11
  %mmio_base.i79 = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 6
  %67 = ptrtoint ptr %mmio_base.i79 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mmio_base.i79, align 8
  %add.ptr.i80 = getelementptr i8, ptr %68, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i80, i8 -120) #11, !srcloc !343
  %errata.i.i81 = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 17
  %69 = ptrtoint ptr %errata.i.i81 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %errata.i.i81, align 8
  %and.i.i82 = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i82)
  %tobool.not.i.i83 = icmp eq i32 %and.i.i82, 0
  br i1 %tobool.not.i.i83, label %if.then38.radeon_pll_errata_after_index.exit.i90_crit_edge, label %if.then.i.i86

if.then38.radeon_pll_errata_after_index.exit.i90_crit_edge: ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_pll_errata_after_index.exit.i90

if.then.i.i86:                                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %mmio_base.i79 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmio_base.i79, align 8
  %add.ptr.i.i.i84 = getelementptr i8, ptr %72, i32 12
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i84) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %74 = ptrtoint ptr %mmio_base.i79 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmio_base.i79, align 8
  %add.ptr5.i.i.i85 = getelementptr i8, ptr %75, i32 80
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i85) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  br label %radeon_pll_errata_after_index.exit.i90

radeon_pll_errata_after_index.exit.i90:           ; preds = %if.then.i.i86, %if.then38.radeon_pll_errata_after_index.exit.i90_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !346
  tail call void @arm_heavy_mb() #11
  %77 = tail call i32 @llvm.bswap.i32(i32 %vclk_cntl.1) #11
  %78 = ptrtoint ptr %mmio_base.i79 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mmio_base.i79, align 8
  %add.ptr4.i87 = getelementptr i8, ptr %79, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i87, i32 %77) #11, !srcloc !337
  %80 = ptrtoint ptr %errata.i.i81 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %errata.i.i81, align 8
  %and.i9.i88 = and i32 %81, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9.i88)
  %tobool.not.i10.i89 = icmp eq i32 %and.i9.i88, 0
  br i1 %tobool.not.i10.i89, label %radeon_pll_errata_after_index.exit.i90.if.end39_crit_edge, label %if.then.i11.i91

radeon_pll_errata_after_index.exit.i90.if.end39_crit_edge: ; preds = %radeon_pll_errata_after_index.exit.i90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then.i11.i91:                                  ; preds = %radeon_pll_errata_after_index.exit.i90
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_pll_errata_after_data_slow(ptr noundef %1) #11
  br label %if.end39

if.end39:                                         ; preds = %if.then.i11.i91, %radeon_pll_errata_after_index.exit.i90.if.end39_crit_edge, %land.lhs.true.if.end39_crit_edge, %for.end.if.end39_crit_edge
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeonfb_blank(i32 noundef %blank, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %asleep = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %asleep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @radeon_screen_blank(ptr noundef %1, i32 noundef %blank, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeonfb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %2 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xoffset, align 4
  %var1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %4 = ptrtoint ptr %var1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %var1, align 4
  %add = add i32 %5, %3
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp = icmp ugt i32 %add, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %8 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yoffset, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres, align 4
  %add4 = add i32 %11, %9
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %12 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %13)
  %cmp6 = icmp ugt i32 %add4, %13
  br i1 %cmp6, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %asleep = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 41
  %14 = ptrtoint ptr %asleep to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %asleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %mmio_base.i = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end8
  %i.06.i = phi i32 [ 0, %if.end8 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 3648
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !347
  %19 = and i32 %18, 2113929216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp2.not.i = icmp eq i32 %19, 0
  br i1 %cmp2.not.i, label %if.end.i, label %for.body.i._radeon_fifo_wait.exit_crit_edge

for.body.i._radeon_fifo_wait.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_radeon_fifo_wait.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #11
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2000000
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %_radeon_fifo_wait.exit

_radeon_fifo_wait.exit:                           ; preds = %do.end.i, %for.body.i._radeon_fifo_wait.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !478
  tail call void @arm_heavy_mb() #11
  %21 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %yoffset, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %23 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %line_length, align 4
  %mul = mul i32 %24, %22
  %25 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %xoffset, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %27 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bits_per_pixel, align 4
  %mul12 = mul i32 %28, %26
  %div25 = lshr i32 %mul12, 3
  %add13 = add i32 %div25, %mul
  %and = and i32 %add13, -8
  %29 = tail call i32 @llvm.bswap.i32(i32 %and)
  %30 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr = getelementptr i8, ptr %31, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %29) #11, !srcloc !337
  br label %cleanup

cleanup:                                          ; preds = %_radeon_fifo_wait.exit, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %_radeon_fifo_wait.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeonfb_fillrect(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeonfb_copyarea(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeonfb_imageblit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeonfb_sync(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeonfb_ioctl(ptr nocapture noundef readonly %info, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1074020356, label %sw.bb
    i32 -2147205117, label %sw.bb49
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %is_mobility = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 26
  %3 = ptrtoint ptr %is_mobility to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %is_mobility, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 983) #11
  %5 = inttoptr i32 %arg to ptr
  %6 = tail call i32 @llvm.read_register.i32(metadata !322) #11
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !479
  %and.i = and i32 %8, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !481
  %9 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %5, i32 -1226833921) #11, !srcloc !482
  %asmresult = extractvalue { i32, i32 } %9, 0
  %asmresult2 = extractvalue { i32, i32 } %9, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #11, !srcloc !480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !481
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool4.not = icmp eq i32 %asmresult, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %mmio_base.i = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end6
  %i.06.i = phi i32 [ 0, %if.end6 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 3648
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !347
  %13 = and i32 %12, 2113929216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2.not.i = icmp eq i32 %13, 0
  br i1 %cmp2.not.i, label %if.end.i, label %for.body.i._radeon_fifo_wait.exit_crit_edge

for.body.i._radeon_fifo_wait.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_radeon_fifo_wait.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #11
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2000000
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %_radeon_fifo_wait.exit

_radeon_fifo_wait.exit:                           ; preds = %do.end.i, %for.body.i._radeon_fifo_wait.exit_crit_edge
  %and = and i32 %asmresult2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %15 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr15 = getelementptr i8, ptr %16, i32 720
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  %18 = and i32 %17, -16779265
  %masksel = select i1 %tobool7.not, i32 0, i32 16779264
  %.sink = or i32 %18, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !483
  tail call void @arm_heavy_mb() #11
  %19 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr22 = getelementptr i8, ptr %20, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %.sink) #11, !srcloc !337
  %and23 = and i32 %asmresult2, 2
  %21 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr38 = getelementptr i8, ptr %22, i32 84
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  %24 = and i32 %23, -8388609
  %25 = shl nuw nsw i32 %and23, 22
  %.sink121 = or i32 %24, %25
  %and23.lobit = lshr exact i32 %and23, 1
  %26 = trunc i32 %and23.lobit to i8
  store i8 %26, ptr @mirror, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !484
  tail call void @arm_heavy_mb() #11
  %27 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr48 = getelementptr i8, ptr %28, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %.sink121) #11, !srcloc !337
  br label %cleanup

sw.bb49:                                          ; preds = %entry
  %is_mobility50 = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 26
  %29 = ptrtoint ptr %is_mobility50 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %is_mobility50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool51.not = icmp eq i32 %30, 0
  br i1 %tobool51.not, label %sw.bb49.cleanup_crit_edge, label %if.end53

sw.bb49.cleanup_crit_edge:                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end53:                                         ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #13
  %mmio_base56 = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 6
  %31 = ptrtoint ptr %mmio_base56 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio_base56, align 8
  %add.ptr57 = getelementptr i8, ptr %32, i32 720
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !485
  %34 = and i32 %33, 16779264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool62.not = icmp ne i32 %34, 0
  %spec.select = zext i1 %tobool62.not to i32
  %35 = ptrtoint ptr %mmio_base56 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio_base56, align 8
  %add.ptr69 = getelementptr i8, ptr %36, i32 84
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !486
  %38 = lshr i32 %37, 22
  %39 = and i32 %38, 2
  %40 = or i32 %39, %spec.select
  %41 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1028) #11
  %42 = tail call i32 @llvm.read_register.i32(metadata !322) #11
  %and.i.i.i116 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i116 to ptr
  %cpu_domain.i.i117 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 4
  %44 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i117) #9, !srcloc !479
  %and.i118 = and i32 %44, -13
  %or.i119 = or i32 %and.i118, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i119) #11, !srcloc !480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !481
  %45 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %41, i32 %40, i32 -1226833921) #11, !srcloc !487
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #11, !srcloc !480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !481
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %sw.bb49.cleanup_crit_edge, %_radeon_fifo_wait.exit, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %45, %if.end53 ], [ 0, %_radeon_fifo_wait.exit ], [ -22, %sw.bb.cleanup_crit_edge ], [ %asmresult, %if.end.cleanup_crit_edge ], [ -22, %sw.bb49.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_match_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_calc_pll_regs(ptr nocapture noundef readonly %rinfo, ptr nocapture noundef %regs, i32 noundef %freq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %has_CRTC2 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 25
  %0 = ptrtoint ptr %has_CRTC2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %has_CRTC2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.while.end_crit_edge, label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %entry
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %2 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 648
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !332
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !488
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end:                                           ; preds = %while.body
  %family = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 15
  %6 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %family, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.126)
  switch i8 %7, label %if.else [
    i8 7, label %if.end.if.then38_crit_edge
    i8 11, label %if.end.if.then38_crit_edge299
    i8 13, label %if.end.if.then38_crit_edge300
    i8 12, label %if.end.if.then38_crit_edge301
    i8 14, label %if.end.if.then38_crit_edge302
    i8 15, label %if.end.if.then38_crit_edge303
    i8 16, label %if.end.if.then38_crit_edge304
    i8 18, label %if.end.if.then38_crit_edge305
  ]

if.end.if.then38_crit_edge305:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38

if.end.if.then38_crit_edge304:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38

if.end.if.then38_crit_edge303:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38

if.end.if.then38_crit_edge302:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38

if.end.if.then38_crit_edge301:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38

if.end.if.then38_crit_edge300:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38

if.end.if.then38_crit_edge299:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38

if.end.if.then38_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38

if.then38:                                        ; preds = %if.end.if.then38_crit_edge, %if.end.if.then38_crit_edge299, %if.end.if.then38_crit_edge300, %if.end.if.then38_crit_edge301, %if.end.if.then38_crit_edge302, %if.end.if.then38_crit_edge303, %if.end.if.then38_crit_edge304, %if.end.if.then38_crit_edge305
  %shr = lshr i32 %5, 10
  %and39 = and i32 %shr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and39)
  %cmp40 = icmp eq i32 %and39, 3
  br i1 %cmp40, label %if.then42, label %if.then38.if.end55_crit_edge

if.then38.if.end55_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then42:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_base, align 8
  %add.ptr46 = getelementptr i8, ptr %10, i32 3428
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #11, !srcloc !332
  %12 = lshr i32 %11, 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !489
  %and51 = and i32 %12, 3
  br label %if.end55

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %shr53 = lshr i32 %5, 13
  %and54 = and i32 %shr53, 1
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then42, %if.then38.if.end55_crit_edge
  %source.0 = phi i32 [ %and51, %if.then42 ], [ %and39, %if.then38.if.end55_crit_edge ], [ %and54, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %source.0)
  %cmp56 = icmp ne i32 %source.0, 1
  %. = zext i1 %cmp56 to i32
  br label %while.end

while.end:                                        ; preds = %if.end55, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %uses_dvo.1 = phi i32 [ 0, %entry.while.end_crit_edge ], [ 0, %while.body.while.end_crit_edge ], [ %., %if.end55 ]
  %pll = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 38
  %13 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pll, align 8
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %freq)
  %mul = mul i32 %15, 12
  %ppll_min = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 38, i32 1
  %16 = ptrtoint ptr %ppll_min to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ppll_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %17)
  %cmp69 = icmp ult i32 %mul, %17
  %div = sdiv i32 %17, 12
  %freq.addr.1 = select i1 %cmp69, i32 %div, i32 %15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_calc_pll_regs.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_calc_pll_regs, %do.end)) #11
          to label %if.then81 [label %do.end], !srcloc !383

if.then81:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %ppll_min to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ppll_min, align 4
  %20 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pll, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_calc_pll_regs.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.91, i32 noundef %freq.addr.1, i32 noundef %19, i32 noundef %21) #11
  br label %do.end

do.end:                                           ; preds = %if.then81, %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %uses_dvo.1)
  %tobool90.not = icmp eq i32 %uses_dvo.1, 0
  br i1 %tobool90.not, label %if.end95, label %do.end.if.end95.1_crit_edge

do.end.if.end95.1_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.1

if.end95:                                         ; preds = %do.end
  %22 = ptrtoint ptr %ppll_min to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ppll_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %freq.addr.1, i32 %23)
  %cmp98.not = icmp slt i32 %freq.addr.1, %23
  br i1 %cmp98.not, label %if.end95.if.end95.1_crit_edge, label %land.lhs.true100

if.end95.if.end95.1_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.1

land.lhs.true100:                                 ; preds = %if.end95
  %24 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pll, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %freq.addr.1, i32 %25)
  %cmp103.not = icmp sgt i32 %freq.addr.1, %25
  br i1 %cmp103.not, label %land.lhs.true100.if.end95.1_crit_edge, label %land.lhs.true100.do.body113_crit_edge

land.lhs.true100.do.body113_crit_edge:            ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body113

land.lhs.true100.if.end95.1_crit_edge:            ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.1

if.end95.1:                                       ; preds = %land.lhs.true100.if.end95.1_crit_edge, %if.end95.if.end95.1_crit_edge, %do.end.if.end95.1_crit_edge
  %mul89.1 = shl i32 %freq.addr.1, 1
  %26 = ptrtoint ptr %ppll_min to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ppll_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul89.1, i32 %27)
  %cmp98.not.1 = icmp slt i32 %mul89.1, %27
  br i1 %cmp98.not.1, label %if.end95.1.if.end95.2_crit_edge, label %land.lhs.true100.1

if.end95.1.if.end95.2_crit_edge:                  ; preds = %if.end95.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.2

land.lhs.true100.1:                               ; preds = %if.end95.1
  %28 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pll, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul89.1, i32 %29)
  %cmp103.not.1 = icmp sgt i32 %mul89.1, %29
  br i1 %cmp103.not.1, label %land.lhs.true100.1.if.end95.2_crit_edge, label %land.lhs.true100.1.do.body113_crit_edge

land.lhs.true100.1.do.body113_crit_edge:          ; preds = %land.lhs.true100.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body113

land.lhs.true100.1.if.end95.2_crit_edge:          ; preds = %land.lhs.true100.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.2

if.end95.2:                                       ; preds = %land.lhs.true100.1.if.end95.2_crit_edge, %if.end95.1.if.end95.2_crit_edge
  %mul89.2 = shl i32 %freq.addr.1, 2
  %30 = ptrtoint ptr %ppll_min to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ppll_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul89.2, i32 %31)
  %cmp98.not.2 = icmp slt i32 %mul89.2, %31
  br i1 %cmp98.not.2, label %if.end95.2.if.end95.3_crit_edge, label %land.lhs.true100.2

if.end95.2.if.end95.3_crit_edge:                  ; preds = %if.end95.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.3

land.lhs.true100.2:                               ; preds = %if.end95.2
  %32 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pll, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul89.2, i32 %33)
  %cmp103.not.2 = icmp sgt i32 %mul89.2, %33
  br i1 %cmp103.not.2, label %land.lhs.true100.2.if.end95.3_crit_edge, label %land.lhs.true100.2.do.body113_crit_edge

land.lhs.true100.2.do.body113_crit_edge:          ; preds = %land.lhs.true100.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body113

land.lhs.true100.2.if.end95.3_crit_edge:          ; preds = %land.lhs.true100.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.3

if.end95.3:                                       ; preds = %land.lhs.true100.2.if.end95.3_crit_edge, %if.end95.2.if.end95.3_crit_edge
  %mul89.3 = shl i32 %freq.addr.1, 3
  %34 = ptrtoint ptr %ppll_min to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ppll_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul89.3, i32 %35)
  %cmp98.not.3 = icmp slt i32 %mul89.3, %35
  br i1 %cmp98.not.3, label %if.end95.3.for.inc.3_crit_edge, label %land.lhs.true100.3

if.end95.3.for.inc.3_crit_edge:                   ; preds = %if.end95.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

land.lhs.true100.3:                               ; preds = %if.end95.3
  %36 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pll, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul89.3, i32 %37)
  %cmp103.not.3 = icmp sgt i32 %mul89.3, %37
  br i1 %cmp103.not.3, label %land.lhs.true100.3.for.inc.3_crit_edge, label %land.lhs.true100.3.do.body113_crit_edge

land.lhs.true100.3.do.body113_crit_edge:          ; preds = %land.lhs.true100.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body113

land.lhs.true100.3.for.inc.3_crit_edge:           ; preds = %land.lhs.true100.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

for.inc.3:                                        ; preds = %land.lhs.true100.3.for.inc.3_crit_edge, %if.end95.3.for.inc.3_crit_edge
  %mul89.4 = mul i32 %freq.addr.1, 3
  br i1 %tobool90.not, label %if.end95.4, label %for.inc.3.if.end95.5_crit_edge

for.inc.3.if.end95.5_crit_edge:                   ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.5

if.end95.4:                                       ; preds = %for.inc.3
  %38 = ptrtoint ptr %ppll_min to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ppll_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul89.4, i32 %39)
  %cmp98.not.4 = icmp slt i32 %mul89.4, %39
  br i1 %cmp98.not.4, label %if.end95.4.if.end95.5_crit_edge, label %land.lhs.true100.4

if.end95.4.if.end95.5_crit_edge:                  ; preds = %if.end95.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.5

land.lhs.true100.4:                               ; preds = %if.end95.4
  %40 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pll, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul89.4, i32 %41)
  %cmp103.not.4 = icmp sgt i32 %mul89.4, %41
  br i1 %cmp103.not.4, label %land.lhs.true100.4.if.end95.5_crit_edge, label %land.lhs.true100.4.do.body113_crit_edge

land.lhs.true100.4.do.body113_crit_edge:          ; preds = %land.lhs.true100.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body113

land.lhs.true100.4.if.end95.5_crit_edge:          ; preds = %land.lhs.true100.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.5

if.end95.5:                                       ; preds = %land.lhs.true100.4.if.end95.5_crit_edge, %if.end95.4.if.end95.5_crit_edge, %for.inc.3.if.end95.5_crit_edge
  %mul89.5 = shl i32 %freq.addr.1, 4
  %42 = ptrtoint ptr %ppll_min to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ppll_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul89.5, i32 %43)
  %cmp98.not.5 = icmp slt i32 %mul89.5, %43
  br i1 %cmp98.not.5, label %if.end95.5.if.end95.6_crit_edge, label %land.lhs.true100.5

if.end95.5.if.end95.6_crit_edge:                  ; preds = %if.end95.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.6

land.lhs.true100.5:                               ; preds = %if.end95.5
  %44 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pll, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul89.5, i32 %45)
  %cmp103.not.5 = icmp sgt i32 %mul89.5, %45
  br i1 %cmp103.not.5, label %land.lhs.true100.5.if.end95.6_crit_edge, label %land.lhs.true100.5.do.body113_crit_edge

land.lhs.true100.5.do.body113_crit_edge:          ; preds = %land.lhs.true100.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body113

land.lhs.true100.5.if.end95.6_crit_edge:          ; preds = %land.lhs.true100.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.6

if.end95.6:                                       ; preds = %land.lhs.true100.5.if.end95.6_crit_edge, %if.end95.5.if.end95.6_crit_edge
  %mul89.6 = mul i32 %freq.addr.1, 6
  %46 = ptrtoint ptr %ppll_min to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ppll_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul89.6, i32 %47)
  %cmp98.not.6 = icmp slt i32 %mul89.6, %47
  br i1 %cmp98.not.6, label %if.end95.6.if.end95.7_crit_edge, label %land.lhs.true100.6

if.end95.6.if.end95.7_crit_edge:                  ; preds = %if.end95.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.7

land.lhs.true100.6:                               ; preds = %if.end95.6
  %48 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pll, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul89.6, i32 %49)
  %cmp103.not.6 = icmp sgt i32 %mul89.6, %49
  br i1 %cmp103.not.6, label %land.lhs.true100.6.if.end95.7_crit_edge, label %land.lhs.true100.6.do.body113_crit_edge

land.lhs.true100.6.do.body113_crit_edge:          ; preds = %land.lhs.true100.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body113

land.lhs.true100.6.if.end95.7_crit_edge:          ; preds = %land.lhs.true100.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.7

if.end95.7:                                       ; preds = %land.lhs.true100.6.if.end95.7_crit_edge, %if.end95.6.if.end95.7_crit_edge
  %mul89.7 = mul i32 %freq.addr.1, 12
  %50 = ptrtoint ptr %ppll_min to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ppll_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul89.7, i32 %51)
  %cmp98.not.7 = icmp slt i32 %mul89.7, %51
  br i1 %cmp98.not.7, label %if.end95.7.for.inc.7_crit_edge, label %land.lhs.true100.7

if.end95.7.for.inc.7_crit_edge:                   ; preds = %if.end95.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.7

land.lhs.true100.7:                               ; preds = %if.end95.7
  %52 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pll, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul89.7, i32 %53)
  %cmp103.not.7 = icmp sgt i32 %mul89.7, %53
  br i1 %cmp103.not.7, label %land.lhs.true100.7.for.inc.7_crit_edge, label %land.lhs.true100.7.do.body113_crit_edge

land.lhs.true100.7.do.body113_crit_edge:          ; preds = %land.lhs.true100.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body113

land.lhs.true100.7.for.inc.7_crit_edge:           ; preds = %land.lhs.true100.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.7

for.inc.7:                                        ; preds = %land.lhs.true100.7.for.inc.7_crit_edge, %if.end95.7.for.inc.7_crit_edge
  br label %do.body113

do.body113:                                       ; preds = %for.inc.7, %land.lhs.true100.7.do.body113_crit_edge, %land.lhs.true100.6.do.body113_crit_edge, %land.lhs.true100.5.do.body113_crit_edge, %land.lhs.true100.4.do.body113_crit_edge, %land.lhs.true100.3.do.body113_crit_edge, %land.lhs.true100.2.do.body113_crit_edge, %land.lhs.true100.1.do.body113_crit_edge, %land.lhs.true100.do.body113_crit_edge
  %storemerge = phi ptr [ @radeon_calc_pll_regs.post_divs, %for.inc.7 ], [ @radeon_calc_pll_regs.post_divs, %land.lhs.true100.do.body113_crit_edge ], [ getelementptr inbounds ([9 x %struct.anon.88], ptr @radeon_calc_pll_regs.post_divs, i32 0, i32 1), %land.lhs.true100.1.do.body113_crit_edge ], [ getelementptr inbounds ([9 x %struct.anon.88], ptr @radeon_calc_pll_regs.post_divs, i32 0, i32 2), %land.lhs.true100.2.do.body113_crit_edge ], [ getelementptr inbounds ([9 x %struct.anon.88], ptr @radeon_calc_pll_regs.post_divs, i32 0, i32 3), %land.lhs.true100.3.do.body113_crit_edge ], [ getelementptr inbounds ([9 x %struct.anon.88], ptr @radeon_calc_pll_regs.post_divs, i32 0, i32 4), %land.lhs.true100.4.do.body113_crit_edge ], [ getelementptr inbounds ([9 x %struct.anon.88], ptr @radeon_calc_pll_regs.post_divs, i32 0, i32 5), %land.lhs.true100.5.do.body113_crit_edge ], [ getelementptr inbounds ([9 x %struct.anon.88], ptr @radeon_calc_pll_regs.post_divs, i32 0, i32 6), %land.lhs.true100.6.do.body113_crit_edge ], [ getelementptr inbounds ([9 x %struct.anon.88], ptr @radeon_calc_pll_regs.post_divs, i32 0, i32 7), %land.lhs.true100.7.do.body113_crit_edge ]
  %pll_output_freq.2 = phi i32 [ %freq.addr.1, %for.inc.7 ], [ %freq.addr.1, %land.lhs.true100.do.body113_crit_edge ], [ %mul89.1, %land.lhs.true100.1.do.body113_crit_edge ], [ %mul89.2, %land.lhs.true100.2.do.body113_crit_edge ], [ %mul89.3, %land.lhs.true100.3.do.body113_crit_edge ], [ %mul89.4, %land.lhs.true100.4.do.body113_crit_edge ], [ %mul89.5, %land.lhs.true100.5.do.body113_crit_edge ], [ %mul89.6, %land.lhs.true100.6.do.body113_crit_edge ], [ %mul89.7, %land.lhs.true100.7.do.body113_crit_edge ]
  store ptr %storemerge, ptr @radeon_calc_pll_regs.post_div, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_calc_pll_regs.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_calc_pll_regs, %do.end132)) #11
          to label %if.then127 [label %do.end132], !srcloc !383

if.then127:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #13
  %ref_div = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 38, i32 4
  %54 = ptrtoint ptr %ref_div to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ref_div, align 8
  %ref_clk = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 38, i32 5
  %56 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ref_clk, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_calc_pll_regs.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.92, i32 noundef %55, i32 noundef %57, i32 noundef %pll_output_freq.2) #11
  br label %do.end132

do.end132:                                        ; preds = %if.then127, %do.body113
  %58 = load ptr, ptr @radeon_calc_pll_regs.post_div, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool134.not = icmp eq i32 %60, 0
  br i1 %tobool134.not, label %if.then135, label %do.end132.do.body141_crit_edge

do.end132.do.body141_crit_edge:                   ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body141

if.then135:                                       ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #13
  %bitvalue136 = getelementptr inbounds %struct.anon.88, ptr %58, i32 0, i32 1
  %61 = ptrtoint ptr %bitvalue136 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bitvalue136, align 4
  %arrayidx137 = getelementptr [9 x %struct.anon.88], ptr @radeon_calc_pll_regs.post_divs, i32 0, i32 %62
  store ptr %arrayidx137, ptr @radeon_calc_pll_regs.post_div, align 4
  %63 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx137, align 4
  %mul139 = mul i32 %64, %freq.addr.1
  br label %do.body141

do.body141:                                       ; preds = %if.then135, %do.end132.do.body141_crit_edge
  %pll_output_freq.3 = phi i32 [ %pll_output_freq.2, %do.end132.do.body141_crit_edge ], [ %mul139, %if.then135 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_calc_pll_regs.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_calc_pll_regs, %do.end162)) #11
          to label %if.then155 [label %do.end162], !srcloc !383

if.then155:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #13
  %ref_div157 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 38, i32 4
  %65 = ptrtoint ptr %ref_div157 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ref_div157, align 8
  %ref_clk159 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 38, i32 5
  %67 = ptrtoint ptr %ref_clk159 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ref_clk159, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_calc_pll_regs.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.92, i32 noundef %66, i32 noundef %68, i32 noundef %pll_output_freq.3) #11
  br label %do.end162

do.end162:                                        ; preds = %if.then155, %do.body141
  %ref_div164 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 38, i32 4
  %69 = ptrtoint ptr %ref_div164 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ref_div164, align 8
  %mul165 = mul i32 %70, %pll_output_freq.3
  %ref_clk167 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 38, i32 5
  %71 = ptrtoint ptr %ref_clk167 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ref_clk167, align 4
  %div.i = sdiv i32 %72, 2
  %add.i = add i32 %div.i, %mul165
  %div1.i = sdiv i32 %add.i, %72
  %ppll_ref_div = getelementptr inbounds %struct.radeon_regs, ptr %regs, i32 0, i32 68
  %73 = ptrtoint ptr %ppll_ref_div to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %70, ptr %ppll_ref_div, align 4
  %74 = load ptr, ptr @radeon_calc_pll_regs.post_div, align 4
  %bitvalue171 = getelementptr inbounds %struct.anon.88, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %bitvalue171 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bitvalue171, align 4
  %shl = shl i32 %76, 16
  %or = or i32 %shl, %div1.i
  %ppll_div_3 = getelementptr inbounds %struct.radeon_regs, ptr %regs, i32 0, i32 67
  %77 = ptrtoint ptr %ppll_div_3 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or, ptr %ppll_div_3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_calc_pll_regs.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_calc_pll_regs, %do.body191)) #11
          to label %if.then186 [label %do.body191], !srcloc !383

if.then186:                                       ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #13
  %78 = load ptr, ptr @radeon_calc_pll_regs.post_div, align 4
  %bitvalue187 = getelementptr inbounds %struct.anon.88, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %bitvalue187 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bitvalue187, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_calc_pll_regs.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.93, i32 noundef %80) #11
  br label %do.body191

do.body191:                                       ; preds = %if.then186, %do.end162
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_calc_pll_regs.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_calc_pll_regs, %do.body209)) #11
          to label %if.then205 [label %do.body209], !srcloc !383

if.then205:                                       ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_calc_pll_regs.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.94, i32 noundef %div1.i) #11
  br label %do.body209

do.body209:                                       ; preds = %if.then205, %do.body191
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_calc_pll_regs.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_calc_pll_regs, %do.end227)) #11
          to label %if.then223 [label %do.end227], !srcloc !383

if.then223:                                       ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %ppll_div_3 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ppll_div_3, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_calc_pll_regs.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.95, i32 noundef %82) #11
  br label %do.end227

do.end227:                                        ; preds = %if.then223, %do.body209
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeonfb_engine_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @radeon_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, ptr nocapture noundef %rinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %regno)
  %cmp = icmp ugt i32 %regno, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i32 %red, 8
  %shr1 = lshr i32 %green, 8
  %shr2 = lshr i32 %blue, 8
  %conv = trunc i32 %shr to i8
  %arrayidx = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 13, i32 %regno
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %arrayidx, align 4
  %conv4 = trunc i32 %shr1 to i8
  %green7 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 13, i32 %regno, i32 1
  %1 = ptrtoint ptr %green7 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv4, ptr %green7, align 1
  %conv8 = trunc i32 %shr2 to i8
  %blue11 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 13, i32 %regno, i32 2
  %2 = ptrtoint ptr %blue11 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv8, ptr %blue11, align 2
  %asleep = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 41
  %3 = ptrtoint ptr %asleep to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %asleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then12, label %if.end.if.end80_crit_edge

if.end.if.end80_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

if.then12:                                        ; preds = %if.end
  %mmio_base.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then12
  %i.06.i = phi i32 [ 0, %if.then12 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 3648
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !347
  %8 = and i32 %7, 2130706432
  call void @__sanitizer_cov_trace_const_cmp4(i32 150994944, i32 %8)
  %cmp2.not.i = icmp ult i32 %8, 150994944
  br i1 %cmp2.not.i, label %if.end.i, label %for.body.i._radeon_fifo_wait.exit_crit_edge

for.body.i._radeon_fifo_wait.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_radeon_fifo_wait.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #11
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2000000
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %_radeon_fifo_wait.exit

_radeon_fifo_wait.exit:                           ; preds = %do.end.i, %for.body.i._radeon_fifo_wait.exit_crit_edge
  %bpp = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 23
  %10 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bpp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %11)
  %cmp13 = icmp eq i32 %11, 16
  br i1 %cmp13, label %if.then15, label %_radeon_fifo_wait.exit.if.end58_crit_edge

_radeon_fifo_wait.exit.if.end58_crit_edge:        ; preds = %_radeon_fifo_wait.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then15:                                        ; preds = %_radeon_fifo_wait.exit
  %mul = shl i32 %regno, 3
  %depth = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 24
  %12 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %13)
  %cmp16 = icmp eq i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %regno)
  %cmp18 = icmp ugt i32 %regno, 63
  %or.cond = and i1 %cmp18, %cmp16
  br i1 %or.cond, label %if.then15.cleanup_crit_edge, label %if.end21

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %13)
  %cmp23 = icmp eq i32 %13, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %regno)
  %cmp26 = icmp ugt i32 %regno, 31
  %or.cond1 = and i1 %cmp26, %cmp23
  br i1 %or.cond1, label %if.end21.cleanup_crit_edge, label %if.end29

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  br i1 %cmp16, label %do.body, label %if.end29.if.end58_crit_edge

if.end29.if.end58_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

do.body:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !490
  tail call void @arm_heavy_mb() #11
  %shr34 = lshr exact i32 %mul, 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %shr34)
  %15 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr = getelementptr i8, ptr %16, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !491
  tail call void @arm_heavy_mb() #11
  %shr39 = lshr i32 %regno, 1
  %arrayidx40 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 13, i32 %shr39
  %17 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx40, align 4
  %conv42 = zext i8 %18 to i32
  %shl = shl nuw nsw i32 %conv42, 16
  %shl43 = and i32 %green, -256
  %or = or i32 %shl, %shl43
  %blue47 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 13, i32 %shr39, i32 2
  %19 = ptrtoint ptr %blue47 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %blue47, align 2
  %conv48 = zext i8 %20 to i32
  %or49 = or i32 %or, %conv48
  %21 = tail call i32 @llvm.bswap.i32(i32 %or49)
  %22 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr51 = getelementptr i8, ptr %23, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %21) #11, !srcloc !337
  %shl53 = shl i32 %regno, 1
  %green55 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 13, i32 %shl53, i32 1
  %24 = ptrtoint ptr %green55 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %green55, align 1
  %conv56 = zext i8 %25 to i32
  br label %if.end58

if.end58:                                         ; preds = %do.body, %if.end29.if.end58_crit_edge, %_radeon_fifo_wait.exit.if.end58_crit_edge
  %green.addr.0 = phi i32 [ %conv56, %do.body ], [ %shr1, %if.end29.if.end58_crit_edge ], [ %shr1, %_radeon_fifo_wait.exit.if.end58_crit_edge ]
  %pindex.0 = phi i32 [ %mul, %do.body ], [ %mul, %if.end29.if.end58_crit_edge ], [ %regno, %_radeon_fifo_wait.exit.if.end58_crit_edge ]
  %depth59 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 24
  %26 = ptrtoint ptr %depth59 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %depth59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %27)
  %cmp60.not = icmp ne i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %regno)
  %cmp62 = icmp ult i32 %regno, 32
  %or.cond2 = or i1 %cmp62, %cmp60.not
  br i1 %or.cond2, label %do.body65, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body65:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !492
  tail call void @arm_heavy_mb() #11
  %28 = tail call i32 @llvm.bswap.i32(i32 %pindex.0)
  %29 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr69 = getelementptr i8, ptr %30, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %28) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !493
  tail call void @arm_heavy_mb() #11
  %shl73 = shl i32 %shr, 16
  %shl74 = shl nuw i32 %green.addr.0, 8
  %or75 = or i32 %shr2, %shl73
  %or76 = or i32 %or75, %shl74
  %31 = tail call i32 @llvm.bswap.i32(i32 %or76)
  %32 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr78 = getelementptr i8, ptr %33, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %31) #11, !srcloc !337
  br label %if.end80

if.end80:                                         ; preds = %do.body65, %if.end.if.end80_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp81 = icmp ult i32 %regno, 16
  br i1 %cmp81, label %if.then83, label %if.end80.cleanup_crit_edge

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then83:                                        ; preds = %if.end80
  %34 = ptrtoint ptr %rinfo to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rinfo, align 8
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pseudo_palette, align 4
  %depth84 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 24
  %38 = ptrtoint ptr %depth84 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %depth84, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %39, label %if.then83.cleanup_crit_edge [
    i32 15, label %sw.bb
    i32 16, label %sw.bb90
    i32 24, label %sw.bb96
    i32 32, label %sw.bb102
  ]

if.then83.cleanup_crit_edge:                      ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  %shl85 = shl nuw nsw i32 %regno, 10
  %shl86 = shl nuw nsw i32 %regno, 5
  %or87 = or i32 %shl86, %regno
  %or88 = or i32 %or87, %shl85
  br label %cleanup.sink.split

sw.bb90:                                          ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  %shl91 = shl nuw nsw i32 %regno, 11
  %shl92 = shl nuw nsw i32 %regno, 5
  %or93 = or i32 %shl92, %regno
  %or94 = or i32 %or93, %shl91
  br label %cleanup.sink.split

sw.bb96:                                          ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  %shl97 = shl nuw nsw i32 %regno, 16
  %shl98 = shl nuw nsw i32 %regno, 8
  %or99 = or i32 %shl98, %regno
  %or100 = or i32 %or99, %shl97
  br label %cleanup.sink.split

sw.bb102:                                         ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  %shl103 = shl nuw nsw i32 %regno, 8
  %or104 = or i32 %shl103, %regno
  %shl105 = shl i32 %or104, 16
  %or106 = or i32 %shl105, %or104
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb102, %sw.bb96, %sw.bb90, %sw.bb
  %or106.sink = phi i32 [ %or106, %sw.bb102 ], [ %or100, %sw.bb96 ], [ %or94, %sw.bb90 ], [ %or88, %sw.bb ]
  %arrayidx107 = getelementptr i32, ptr %37, i32 %regno
  %41 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or106.sink, ptr %arrayidx107, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then83.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then15.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ], [ 0, %if.then83.cleanup_crit_edge ], [ 0, %if.end80.cleanup_crit_edge ], [ 0, %if.end58.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_show_edid1(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  %off.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %mon1_EDID = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %mon1_EDID to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mon1_EDID, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %off.addr.i)
  %6 = ptrtoint ptr %off.addr.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %off, ptr %off.addr.i, align 8
  %call.i = call i32 @memory_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %off.addr.i, ptr noundef %5, i32 noundef 128) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %off.addr.i)
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memory_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_show_edid2(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  %off.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %mon2_EDID = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 36
  %4 = ptrtoint ptr %mon2_EDID to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mon2_EDID, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %off.addr.i)
  %6 = ptrtoint ptr %off.addr.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %off, ptr %off.addr.i, align 8
  %call.i = call i32 @memory_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %off.addr.i, ptr noundef %5, i32 noundef 128) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %off.addr.i)
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unmap_rom(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeonfb_pm_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeonfb_bl_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeonfb_setup(ptr noundef %options) unnamed_addr #5 section ".init.text" align 64 {
entry:
  %options.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %options, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %while.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader:                             ; preds = %lor.lhs.false
  %call1 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.98) #11
  %cmp.not2 = icmp eq ptr %call1, null
  br i1 %cmp.not2, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call3 = phi ptr [ %call, %while.cond.backedge.while.body_crit_edge ], [ %call1, %while.cond.preheader.while.body_crit_edge ]
  %3 = ptrtoint ptr %call3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %while.body.while.cond.backedge_crit_edge, label %if.end4

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.end4:                                          ; preds = %while.body
  %call5 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(8) @.str.99, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  store i8 1, ptr @noaccel, align 1
  br label %while.cond.backedge

if.else:                                          ; preds = %if.end4
  %call8 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(7) @.str.100, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  store i8 1, ptr @mirror, align 1
  br label %while.cond.backedge

if.else11:                                        ; preds = %if.else
  %call12 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(10) @.str.101, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #13
  store i8 1, ptr @force_dfp, align 1
  br label %while.cond.backedge

if.else15:                                        ; preds = %if.else11
  %call16 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(12) @.str.102, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %call3, i32 11
  %call19 = call i32 @simple_strtoul(ptr noundef %add.ptr, ptr noundef null, i32 noundef 0) #11
  store i32 %call19, ptr @panel_yres, align 4
  br label %while.cond.backedge

if.else20:                                        ; preds = %if.else15
  %call21 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(11) @.str.103, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.else26

if.then23:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr24 = getelementptr i8, ptr %call3, i32 10
  %call25 = call i32 @simple_strtoul(ptr noundef %add.ptr24, ptr noundef null, i32 noundef 0) #11
  store i32 %call25, ptr @backlight, align 4
  br label %while.cond.backedge

if.else26:                                        ; preds = %if.else20
  %call27 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(7) @.str.104, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #13
  store i8 1, ptr @nomtrr, align 1
  br label %while.cond.backedge

if.else30:                                        ; preds = %if.else26
  %call31 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(10) @.str.105, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %if.else34

if.then33:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #13
  store i8 1, ptr @nomodeset, align 1
  br label %while.cond.backedge

if.else34:                                        ; preds = %if.else30
  %call35 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(18) @.str.106, i32 noundef 17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #13
  store i8 1, ptr @force_measure_pll, align 1
  br label %while.cond.backedge

if.else38:                                        ; preds = %if.else34
  %call39 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(12) @.str.107, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then41, label %if.else42

if.then41:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #13
  store i8 1, ptr @ignore_edid, align 1
  br label %while.cond.backedge

if.else42:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %call3, ptr @mode_option, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else42, %if.then41, %if.then37, %if.then33, %if.then29, %if.then23, %if.then18, %if.then14, %if.then10, %if.then7, %while.body.while.cond.backedge_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.98) #11
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 119)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 119)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { cold }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !20, !22, !24, !26, !27, !29, !30, !32, !33, !35, !37, !39, !40, !42, !44, !45, !47, !49, !50, !52, !54, !55, !57, !59, !60, !62, !64, !65, !67, !69, !70, !72, !74, !75, !77, !79, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !99, !100, !102, !103, !104, !106, !107, !109, !110, !112, !114, !116, !118, !119, !120, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !154, !155, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !213, !215, !217, !218, !219, !220, !222, !223, !224, !226, !227, !229, !230, !232, !233, !235, !236, !238, !239, !241, !243, !245, !246, !247, !249, !250, !252, !254, !255, !257, !258, !260, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !296, !298, !299, !301, !302, !303, !305, !306, !308, !309, !311, !312, !313, !315, !316, !318, !319, !321}
!llvm.named.register.sp = !{!322}
!llvm.module.flags = !{!323, !324, !325, !326, !327, !328, !329, !330}
!llvm.ident = !{!331}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 363, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @_radeon_fifo_wait._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @_radeon_fifo_wait._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 385, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @radeon_engine_flush._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @radeon_engine_flush._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 402, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @_radeon_engine_idle._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @_radeon_engine_idle._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__initcall__kmod_radeonfb__323_2633_radeonfb_init6, !17, !"__initcall__kmod_radeonfb__323_2633_radeonfb_init6", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2633, i32 1}
!18 = !{ptr @__exitcall_radeonfb_exit, !19, !"__exitcall_radeonfb_exit", i1 false, i1 false}
!19 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2634, i32 1}
!20 = !{ptr @__UNIQUE_ID_author324, !21, !"__UNIQUE_ID_author324", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2636, i32 1}
!22 = !{ptr @__UNIQUE_ID_description325, !23, !"__UNIQUE_ID_description325", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2637, i32 1}
!24 = !{ptr @__UNIQUE_ID_file326, !25, !"__UNIQUE_ID_file326", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2638, i32 1}
!26 = !{ptr @__UNIQUE_ID_license327, !25, !"__UNIQUE_ID_license327", i1 false, i1 false}
!27 = !{ptr @__param_noaccel, !28, !"__param_noaccel", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2639, i32 1}
!29 = !{ptr @__UNIQUE_ID_noacceltype328, !28, !"__UNIQUE_ID_noacceltype328", i1 false, i1 false}
!30 = !{ptr @__param_default_dynclk, !31, !"__param_default_dynclk", i1 false, i1 false}
!31 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2640, i32 1}
!32 = !{ptr @__UNIQUE_ID_default_dynclktype329, !31, !"__UNIQUE_ID_default_dynclktype329", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_default_dynclk330, !34, !"__UNIQUE_ID_default_dynclk330", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2641, i32 1}
!35 = !{ptr @__UNIQUE_ID_noaccel331, !36, !"__UNIQUE_ID_noaccel331", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2642, i32 1}
!37 = !{ptr @__param_nomodeset, !38, !"__param_nomodeset", i1 false, i1 false}
!38 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2643, i32 1}
!39 = !{ptr @__UNIQUE_ID_nomodesettype332, !38, !"__UNIQUE_ID_nomodesettype332", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_nomodeset333, !41, !"__UNIQUE_ID_nomodeset333", i1 false, i1 false}
!41 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2644, i32 1}
!42 = !{ptr @__param_mirror, !43, !"__param_mirror", i1 false, i1 false}
!43 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2645, i32 1}
!44 = !{ptr @__UNIQUE_ID_mirrortype334, !43, !"__UNIQUE_ID_mirrortype334", i1 false, i1 false}
!45 = !{ptr @__UNIQUE_ID_mirror335, !46, !"__UNIQUE_ID_mirror335", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2646, i32 1}
!47 = !{ptr @__param_force_dfp, !48, !"__param_force_dfp", i1 false, i1 false}
!48 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2647, i32 1}
!49 = !{ptr @__UNIQUE_ID_force_dfptype336, !48, !"__UNIQUE_ID_force_dfptype336", i1 false, i1 false}
!50 = !{ptr @__UNIQUE_ID_force_dfp337, !51, !"__UNIQUE_ID_force_dfp337", i1 false, i1 false}
!51 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2648, i32 1}
!52 = !{ptr @__param_ignore_edid, !53, !"__param_ignore_edid", i1 false, i1 false}
!53 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2649, i32 1}
!54 = !{ptr @__UNIQUE_ID_ignore_edidtype338, !53, !"__UNIQUE_ID_ignore_edidtype338", i1 false, i1 false}
!55 = !{ptr @__UNIQUE_ID_ignore_edid339, !56, !"__UNIQUE_ID_ignore_edid339", i1 false, i1 false}
!56 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2650, i32 1}
!57 = !{ptr @__param_monitor_layout, !58, !"__param_monitor_layout", i1 false, i1 false}
!58 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2651, i32 1}
!59 = !{ptr @__UNIQUE_ID_monitor_layouttype340, !58, !"__UNIQUE_ID_monitor_layouttype340", i1 false, i1 false}
!60 = !{ptr @__UNIQUE_ID_monitor_layout341, !61, !"__UNIQUE_ID_monitor_layout341", i1 false, i1 false}
!61 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2652, i32 1}
!62 = !{ptr @__param_force_measure_pll, !63, !"__param_force_measure_pll", i1 false, i1 false}
!63 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2653, i32 1}
!64 = !{ptr @__UNIQUE_ID_force_measure_plltype342, !63, !"__UNIQUE_ID_force_measure_plltype342", i1 false, i1 false}
!65 = !{ptr @__UNIQUE_ID_force_measure_pll343, !66, !"__UNIQUE_ID_force_measure_pll343", i1 false, i1 false}
!66 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2654, i32 1}
!67 = !{ptr @__param_nomtrr, !68, !"__param_nomtrr", i1 false, i1 false}
!68 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2655, i32 1}
!69 = !{ptr @__UNIQUE_ID_nomtrrtype344, !68, !"__UNIQUE_ID_nomtrrtype344", i1 false, i1 false}
!70 = !{ptr @__UNIQUE_ID_nomtrr345, !71, !"__UNIQUE_ID_nomtrr345", i1 false, i1 false}
!71 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2656, i32 1}
!72 = !{ptr @__param_panel_yres, !73, !"__param_panel_yres", i1 false, i1 false}
!73 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2657, i32 1}
!74 = !{ptr @__UNIQUE_ID_panel_yrestype346, !73, !"__UNIQUE_ID_panel_yrestype346", i1 false, i1 false}
!75 = !{ptr @__UNIQUE_ID_panel_yres347, !76, !"__UNIQUE_ID_panel_yres347", i1 false, i1 false}
!76 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2658, i32 1}
!77 = !{ptr @__param_mode_option, !78, !"__param_mode_option", i1 false, i1 false}
!78 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2659, i32 1}
!79 = !{ptr @__UNIQUE_ID_mode_optiontype348, !78, !"__UNIQUE_ID_mode_optiontype348", i1 false, i1 false}
!80 = !{ptr @__UNIQUE_ID_mode_option349, !81, !"__UNIQUE_ID_mode_option349", i1 false, i1 false}
!81 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2660, i32 1}
!82 = !{ptr @mode_option, !83, !"mode_option", i1 false, i1 false}
!83 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 259, i32 14}
!84 = !{ptr @monitor_layout, !85, !"monitor_layout", i1 false, i1 false}
!85 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 260, i32 14}
!86 = !{ptr @nomodeset, !87, !"nomodeset", i1 false, i1 false}
!87 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 263, i32 13}
!88 = distinct !{null, !89, !"common_regs", i1 false, i1 false}
!89 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 242, i32 16}
!90 = !{ptr @.str.7, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2565, i32 11}
!92 = !{ptr @radeonfb_driver, !93, !"radeonfb_driver", i1 false, i1 false}
!93 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2564, i32 26}
!94 = !{ptr @radeonfb_pci_table, !95, !"radeonfb_pci_table", i1 false, i1 false}
!95 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 99, i32 35}
!96 = !{ptr @.str.8, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2267, i32 2}
!98 = !{ptr @.str.9, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @radeonfb_pci_register.__UNIQUE_ID_ddebug318, !97, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!100 = !{ptr @.str.10, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2272, i32 3}
!102 = !{ptr @radeonfb_pci_register._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @radeonfb_pci_register._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @radeonfb_pci_register.__key, !105, !"__key", i1 false, i1 false}
!105 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2286, i32 2}
!106 = !{ptr @.str.11, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @radeonfb_pci_register.__key.12, !108, !"__key", i1 false, i1 false}
!108 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2287, i32 2}
!109 = !{ptr @.str.13, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.14, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2293, i32 5}
!112 = !{ptr @.str.15, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2296, i32 5}
!114 = !{ptr @.str.16, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2313, i32 36}
!116 = !{ptr @.str.18, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2315, i32 3}
!118 = !{ptr @radeonfb_pci_register._entry.17, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @radeonfb_pci_register._entry_ptr.19, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.20, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2320, i32 36}
!122 = !{ptr @.str.22, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2322, i32 3}
!124 = !{ptr @radeonfb_pci_register._entry.21, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @radeonfb_pci_register._entry_ptr.23, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.25, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2330, i32 3}
!128 = !{ptr @radeonfb_pci_register._entry.24, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @radeonfb_pci_register._entry_ptr.26, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.28, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2386, i32 3}
!132 = !{ptr @radeonfb_pci_register._entry.27, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @radeonfb_pci_register._entry_ptr.29, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.30, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2392, i32 2}
!136 = !{ptr @radeonfb_pci_register.__UNIQUE_ID_ddebug321, !135, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!137 = !{ptr @.str.32, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2451, i32 3}
!139 = !{ptr @radeonfb_pci_register._entry.31, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @radeonfb_pci_register._entry_ptr.33, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.35, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2474, i32 3}
!143 = !{ptr @radeonfb_pci_register._entry.34, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @radeonfb_pci_register._entry_ptr.36, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.38, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2486, i32 2}
!147 = !{ptr @radeonfb_pci_register._entry.37, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @radeonfb_pci_register._entry_ptr.39, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.40, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2490, i32 2}
!151 = !{ptr @radeonfb_pci_register.__UNIQUE_ID_ddebug322, !150, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!152 = !{ptr @.str.41, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2182, i32 2}
!154 = !{ptr @.str.42, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @radeon_identify_vram.__UNIQUE_ID_ddebug317, !153, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!156 = !{ptr @.str.43, !153, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.44, !153, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.45, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 436, i32 3}
!160 = !{ptr @.str.46, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @radeon_map_ROM._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @radeon_map_ROM._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.48, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 445, i32 3}
!165 = !{ptr @radeon_map_ROM._entry.47, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @radeon_map_ROM._entry_ptr.49, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.51, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 478, i32 3}
!169 = !{ptr @radeon_map_ROM._entry.50, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @radeon_map_ROM._entry_ptr.52, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.54, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 485, i32 3}
!173 = !{ptr @radeon_map_ROM._entry.53, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @radeon_map_ROM._entry_ptr.55, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.57, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 488, i32 3}
!177 = !{ptr @radeon_map_ROM._entry.56, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @radeon_map_ROM._entry_ptr.58, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.60, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 491, i32 3}
!181 = !{ptr @radeon_map_ROM._entry.59, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @radeon_map_ROM._entry_ptr.61, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.63, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 494, i32 3}
!185 = !{ptr @radeon_map_ROM._entry.62, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @radeon_map_ROM._entry_ptr.64, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.65, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 794, i32 3}
!189 = !{ptr @.str.66, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @radeon_get_pllinfo._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @radeon_get_pllinfo._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.68, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 803, i32 3}
!194 = !{ptr @radeon_get_pllinfo._entry.67, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @radeon_get_pllinfo._entry_ptr.69, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.71, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 810, i32 9}
!198 = !{ptr @radeon_get_pllinfo._entry.70, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @radeon_get_pllinfo._entry_ptr.72, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.74, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 823, i32 2}
!202 = !{ptr @radeon_get_pllinfo._entry.73, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @radeon_get_pllinfo._entry_ptr.75, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.77, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 828, i32 2}
!206 = !{ptr @radeon_get_pllinfo._entry.76, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @radeon_get_pllinfo._entry_ptr.78, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.79, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 683, i32 3}
!210 = !{ptr @.str.80, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @radeon_probe_pll_params._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @radeon_probe_pll_params._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @radeonfb_ops, !214, !"radeonfb_ops", i1 false, i1 false}
!214 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 1952, i32 28}
!215 = !{ptr @.str.81, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 902, i32 25}
!217 = !{ptr @.str.82, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @radeonfb_check_var._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @radeonfb_check_var._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.83, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 1706, i32 2}
!222 = !{ptr @.str.84, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @radeonfb_set_par.__UNIQUE_ID_ddebug311, !221, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!224 = !{ptr @.str.85, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 1708, i32 2}
!226 = !{ptr @radeonfb_set_par.__UNIQUE_ID_ddebug312, !225, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!227 = !{ptr @.str.86, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 1811, i32 2}
!229 = !{ptr @radeonfb_set_par.__UNIQUE_ID_ddebug313, !228, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!230 = !{ptr @.str.87, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 1813, i32 2}
!232 = !{ptr @radeonfb_set_par.__UNIQUE_ID_ddebug314, !231, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!233 = !{ptr @.str.88, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 1819, i32 2}
!235 = !{ptr @radeonfb_set_par.__UNIQUE_ID_ddebug315, !234, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!236 = !{ptr @.str.89, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 1820, i32 2}
!238 = !{ptr @radeonfb_set_par.__UNIQUE_ID_ddebug316, !237, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!239 = !{ptr @radeon_calc_pll_regs.post_div, !240, !"post_div", i1 false, i1 false}
!240 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 1526, i32 5}
!241 = !{ptr @radeon_calc_pll_regs.post_divs, !242, !"post_divs", i1 false, i1 false}
!242 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 1527, i32 4}
!243 = !{ptr @.str.90, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 1592, i32 2}
!245 = !{ptr @.str.91, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @radeon_calc_pll_regs.__UNIQUE_ID_ddebug305, !244, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!247 = !{ptr @.str.92, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 1613, i32 2}
!249 = !{ptr @radeon_calc_pll_regs.__UNIQUE_ID_ddebug306, !248, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!250 = !{ptr @radeon_calc_pll_regs.__UNIQUE_ID_ddebug307, !251, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!251 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 1623, i32 2}
!252 = !{ptr @.str.93, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 1632, i32 2}
!254 = !{ptr @radeon_calc_pll_regs.__UNIQUE_ID_ddebug308, !253, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!255 = !{ptr @.str.94, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 1633, i32 2}
!257 = !{ptr @radeon_calc_pll_regs.__UNIQUE_ID_ddebug309, !256, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!258 = !{ptr @.str.95, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 1634, i32 2}
!260 = !{ptr @radeon_calc_pll_regs.__UNIQUE_ID_ddebug310, !259, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!261 = !{ptr @.str.96, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2224, i32 11}
!263 = !{ptr @edid1_attr, !264, !"edid1_attr", i1 false, i1 false}
!264 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2222, i32 35}
!265 = !{ptr @.str.97, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2233, i32 11}
!267 = !{ptr @edid2_attr, !268, !"edid2_attr", i1 false, i1 false}
!268 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2231, i32 35}
!269 = distinct !{null, !270, !"ignore_devlist", i1 false, i1 false}
!270 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 271, i32 13}
!271 = distinct !{null, !272, !"force_sleep", i1 false, i1 false}
!272 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 270, i32 13}
!273 = !{ptr @backlight, !274, !"backlight", i1 false, i1 false}
!274 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 272, i32 12}
!275 = !{ptr @.str.98, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2580, i32 39}
!277 = !{ptr @.str.99, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2584, i32 26}
!279 = !{ptr @.str.100, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2586, i32 33}
!281 = !{ptr @.str.101, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2588, i32 33}
!283 = !{ptr @.str.102, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2590, i32 33}
!285 = !{ptr @.str.103, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2592, i32 33}
!287 = !{ptr @.str.104, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2594, i32 33}
!289 = !{ptr @.str.105, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2596, i32 33}
!291 = !{ptr @.str.106, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2598, i32 33}
!293 = !{ptr @.str.107, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 2600, i32 33}
!295 = !{ptr @__param_str_noaccel, !28, !"__param_str_noaccel", i1 false, i1 false}
!296 = !{ptr @noaccel, !297, !"noaccel", i1 false, i1 false}
!297 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 261, i32 13}
!298 = !{ptr @__param_str_default_dynclk, !31, !"__param_str_default_dynclk", i1 false, i1 false}
!299 = !{ptr @default_dynclk, !300, !"default_dynclk", i1 false, i1 false}
!300 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 262, i32 12}
!301 = !{ptr @__param_str_nomodeset, !38, !"__param_str_nomodeset", i1 false, i1 false}
!302 = !{ptr @__param_str_mirror, !43, !"__param_str_mirror", i1 false, i1 false}
!303 = !{ptr @mirror, !304, !"mirror", i1 false, i1 false}
!304 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 265, i32 13}
!305 = !{ptr @__param_str_force_dfp, !48, !"__param_str_force_dfp", i1 false, i1 false}
!306 = !{ptr @force_dfp, !307, !"force_dfp", i1 false, i1 false}
!307 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 267, i32 13}
!308 = !{ptr @__param_str_ignore_edid, !53, !"__param_str_ignore_edid", i1 false, i1 false}
!309 = !{ptr @ignore_edid, !310, !"ignore_edid", i1 false, i1 false}
!310 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 264, i32 13}
!311 = !{ptr @__param_str_monitor_layout, !58, !"__param_str_monitor_layout", i1 false, i1 false}
!312 = !{ptr @__param_str_force_measure_pll, !63, !"__param_str_force_measure_pll", i1 false, i1 false}
!313 = !{ptr @force_measure_pll, !314, !"force_measure_pll", i1 false, i1 false}
!314 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 268, i32 13}
!315 = !{ptr @__param_str_nomtrr, !68, !"__param_str_nomtrr", i1 false, i1 false}
!316 = !{ptr @nomtrr, !317, !"nomtrr", i1 false, i1 false}
!317 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 269, i32 13}
!318 = !{ptr @__param_str_panel_yres, !73, !"__param_str_panel_yres", i1 false, i1 false}
!319 = !{ptr @panel_yres, !320, !"panel_yres", i1 false, i1 false}
!320 = !{!"../drivers/video/fbdev/aty/radeon_base.c", i32 266, i32 12}
!321 = !{ptr @__param_str_mode_option, !78, !"__param_str_mode_option", i1 false, i1 false}
!322 = !{!"sp"}
!323 = !{i32 1, !"wchar_size", i32 2}
!324 = !{i32 1, !"min_enum_size", i32 4}
!325 = !{i32 8, !"branch-target-enforcement", i32 0}
!326 = !{i32 8, !"sign-return-address", i32 0}
!327 = !{i32 8, !"sign-return-address-all", i32 0}
!328 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!329 = !{i32 7, !"uwtable", i32 1}
!330 = !{i32 7, !"frame-pointer", i32 2}
!331 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!332 = !{i64 5078087}
!333 = !{i64 2156433712}
!334 = !{i64 2156434279}
!335 = !{i64 2156434846}
!336 = !{i64 2156435135}
!337 = !{i64 5077669}
!338 = !{i64 2156435886}
!339 = !{i64 2156436166}
!340 = !{i64 2156437267}
!341 = !{i64 2156437534}
!342 = !{i64 2156438022}
!343 = !{i64 5077472}
!344 = !{i64 2156438665}
!345 = !{i64 2156439003}
!346 = !{i64 2156439373}
!347 = !{i64 2156440124}
!348 = !{i64 2156442867}
!349 = !{i64 2156445420}
!350 = !{i64 2156521085}
!351 = !{i64 2156521467}
!352 = !{i64 2156522440}
!353 = !{i64 2156522798}
!354 = !{i64 2156523392}
!355 = !{i64 2156524269}
!356 = !{i64 2156524761}
!357 = !{i64 2156525341}
!358 = !{i64 2156526369}
!359 = !{i8 0, i8 2}
!360 = !{i64 2156548849}
!361 = !{i64 2156549430}
!362 = !{i64 2156550029}
!363 = !{i64 2156550614}
!364 = !{i64 2156551162}
!365 = !{i64 2156551837}
!366 = !{i64 2156552493}
!367 = !{i64 2156553061}
!368 = !{i64 2156553632}
!369 = !{i64 2156554200}
!370 = !{i64 2156554727}
!371 = !{i64 2156555179}
!372 = !{i64 2156555661}
!373 = !{i64 2156556192}
!374 = !{i64 2156556781}
!375 = !{i64 2156557358}
!376 = !{i64 2156557931}
!377 = !{i64 2156558498}
!378 = !{i64 2156559059}
!379 = !{i64 2156559611}
!380 = !{i64 2156560155}
!381 = !{i64 2156560681}
!382 = !{i64 2156561224}
!383 = !{i64 2149043491, i64 2149043496, i64 2149043509, i64 2149043553, i64 2149043587, i64 2149043608}
!384 = !{i64 2156619041}
!385 = !{i64 2156619608}
!386 = !{i64 2156548204}
!387 = !{i64 2156599035}
!388 = !{i64 2156599348}
!389 = !{i64 2156599844}
!390 = !{i64 2156600391}
!391 = !{i64 2156600938}
!392 = !{i64 2156602548}
!393 = !{i64 2156603503}
!394 = !{i64 2156604170}
!395 = !{i64 2156604762}
!396 = !{i64 2156605329}
!397 = !{!"auto-init"}
!398 = !{i64 2156447968}
!399 = !{i64 2156448248}
!400 = !{i64 2156449002}
!401 = !{i64 5077867}
!402 = !{i64 2156450859}
!403 = !{i64 2156451111}
!404 = !{i64 2156453173}
!405 = !{i64 2156453425}
!406 = !{i64 2156453765}
!407 = !{i64 2156454023}
!408 = !{i64 2156454473}
!409 = !{i64 2156454731}
!410 = !{i64 2156454989}
!411 = !{i64 2156455247}
!412 = !{i64 2156457413}
!413 = !{i64 2156457671}
!414 = !{i64 2156457929}
!415 = !{i64 2156458187}
!416 = !{i64 2156458494}
!417 = !{i64 2156464948}
!418 = !{i64 2156465206}
!419 = !{i64 2156476835}
!420 = !{i64 2156477139}
!421 = !{i64 2156477547}
!422 = !{i64 2156477839}
!423 = !{i64 2156478247}
!424 = !{i64 2156478539}
!425 = !{i64 2156478947}
!426 = !{i64 2156479239}
!427 = !{i64 2156479647}
!428 = !{i64 2156479939}
!429 = !{i64 2156480491}
!430 = !{i64 2156480783}
!431 = !{i64 2156481075}
!432 = !{i64 2156481367}
!433 = !{i64 2156481919}
!434 = !{i64 2156482211}
!435 = !{i64 2156482503}
!436 = !{i64 2156482795}
!437 = !{i64 5077249}
!438 = !{i64 2156465787}
!439 = !{i64 836546}
!440 = !{i64 834249}
!441 = !{i64 2156466577}
!442 = !{i64 2156467144}
!443 = !{i64 2156467711}
!444 = !{i64 834059}
!445 = !{i64 790994, i64 791021, i64 791043, i64 791071}
!446 = !{i64 791402, i64 791429, i64 791462, i64 791483, i64 791510, i64 791536}
!447 = !{i64 2156468424}
!448 = !{i64 2156468991}
!449 = !{i64 2156469473}
!450 = !{!"branch_weights", i32 2000, i32 1}
!451 = !{i64 2148276538, i64 2148276818, i64 2148277152, i64 2148277486}
!452 = !{i64 2156532593}
!453 = !{i64 2156533160}
!454 = !{i64 2156533727}
!455 = !{i64 2156534294}
!456 = !{i64 2156534861}
!457 = !{i64 2156535428}
!458 = !{i64 2156535995}
!459 = !{i64 2156536562}
!460 = !{i64 2156537129}
!461 = !{i64 2156537696}
!462 = !{i64 2156538263}
!463 = !{i64 2156538830}
!464 = !{i64 2156539397}
!465 = !{i64 2156539964}
!466 = !{i64 2156540531}
!467 = !{i64 2156541098}
!468 = !{i64 2156541665}
!469 = !{i64 2156542232}
!470 = !{i64 2156542799}
!471 = !{i64 2156543366}
!472 = !{i64 2156543933}
!473 = !{i64 2156544535}
!474 = !{i64 2156530240}
!475 = !{i64 2156530539}
!476 = !{i64 2156531473}
!477 = !{i64 2156531772}
!478 = !{i64 2156493002}
!479 = !{i64 6469588}
!480 = !{i64 6469785}
!481 = !{i64 2153955018}
!482 = !{i64 2156502858, i64 2156503138, i64 2156503472, i64 2156503806}
!483 = !{i64 2156507927}
!484 = !{i64 2156509543}
!485 = !{i64 2156511019}
!486 = !{i64 2156511605}
!487 = !{i64 2156517584, i64 2156517864, i64 2156518198, i64 2156518532}
!488 = !{i64 2156562144}
!489 = !{i64 2156563146}
!490 = !{i64 2156527162}
!491 = !{i64 2156527880}
!492 = !{i64 2156528705}
!493 = !{i64 2156529256}
