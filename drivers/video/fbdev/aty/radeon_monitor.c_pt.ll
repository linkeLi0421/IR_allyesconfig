; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/aty/radeon_monitor.c_pt.bc'
source_filename = "../drivers/video/fbdev/aty/radeon_monitor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.radeonfb_info = type { ptr, %struct.radeon_regs, %struct.radeon_regs, [50 x i8], i32, i32, ptr, ptr, i32, ptr, ptr, i32, [16 x i32], [256 x %struct.anon.80], i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.panel_info, i32, ptr, ptr, i32, i32, ptr, i32, %struct.pll_info, i32, [100 x i32], i32, i32, i32, i32, i32, ptr, %struct.spinlock, %struct.timer_list, i32, [4 x %struct.radeon_i2c_chan] }
%struct.radeon_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.80 = type { i8, i8, i8, i8 }
%struct.panel_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pll_info = type { i32, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.78, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.78 = type { ptr }

@radeon_probe_screens.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 114, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"radeonfb\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"radeon_probe_screens\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/video/fbdev/aty/radeon_monitor.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Using specified monitor layout: %s\00", [61 x i8] zeroinitializer }, align 32
@radeon_probe_screens._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016radeonfb: No valid monitor, assuming CRT on first port\0A\00", [38 x i8] zeroinitializer }, align 32
@radeon_probe_screens._entry_ptr = internal global ptr @radeon_probe_screens._entry, section ".printk_index", align 4
@radeon_probe_screens.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 121, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Starting monitor auto detection...\0A\00", [60 x i8] zeroinitializer }, align 32
@radeon_probe_screens._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016radeonfb: Reversed DACs detected\0A\00", [60 x i8] zeroinitializer }, align 32
@radeon_probe_screens._entry_ptr.8 = internal global ptr @radeon_probe_screens._entry.6, section ".printk_index", align 4
@radeon_probe_screens._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016radeonfb: Reversed TMDS detected\0A\00", [60 x i8] zeroinitializer }, align 32
@radeon_probe_screens._entry_ptr.11 = internal global ptr @radeon_probe_screens._entry.9, section ".printk_index", align 4
@radeon_probe_screens._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Non-DDC laptop panel detected\0A\00", [33 x i8] zeroinitializer }, align 32
@radeon_probe_screens._entry_ptr.14 = internal global ptr @radeon_probe_screens._entry.12, section ".printk_index", align 4
@radeon_probe_screens._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016radeonfb: Monitor 1 type %s found\0A\00", [59 x i8] zeroinitializer }, align 32
@radeon_probe_screens._entry_ptr.17 = internal global ptr @radeon_probe_screens._entry.15, section ".printk_index", align 4
@radeon_probe_screens._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016radeonfb: EDID probed\0A\00", [39 x i8] zeroinitializer }, align 32
@radeon_probe_screens._entry_ptr.20 = internal global ptr @radeon_probe_screens._entry.18, section ".printk_index", align 4
@radeon_probe_screens._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016radeonfb: Monitor 2 type %s found\0A\00", [59 x i8] zeroinitializer }, align 32
@radeon_probe_screens._entry_ptr.23 = internal global ptr @radeon_probe_screens._entry.21, section ".printk_index", align 4
@radeon_probe_screens._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@radeon_probe_screens._entry_ptr.25 = internal global ptr @radeon_probe_screens._entry.24, section ".printk_index", align 4
@radeonfb_default_var = internal constant { %struct.fb_var_screeninfo, [32 x i8] } { %struct.fb_var_screeninfo { i32 640, i32 480, i32 640, i32 480, i32 0, i32 0, i32 8, i32 0, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 39721, i32 40, i32 24, i32 32, i32 11, i32 96, i32 2, i32 0, i32 0, i32 0, i32 0, [4 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@radeon_check_modes.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 -61, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"radeon_check_modes\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Parsing EDID data for panel info\0A\00", [62 x i8] zeroinitializer }, align 32
@radeon_check_modes.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.28, i8 0, i8 -56, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Setting up default mode based on panel info\0A\00", [51 x i8] zeroinitializer }, align 32
@radeon_check_modes.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.29, i8 0, i8 -44, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Guessing panel info...\0A\00", [40 x i8] zeroinitializer }, align 32
@radeon_check_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.26, ptr @.str.2, i32 856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014radeonfb: Can't find panel size, going back to CRT\0A\00", [42 x i8] zeroinitializer }, align 32
@radeon_check_modes._entry_ptr = internal global ptr @radeon_check_modes._entry, section ".printk_index", align 4
@radeon_check_modes._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.26, ptr @.str.2, i32 861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014radeonfb: Assuming panel size %dx%d\0A\00", [57 x i8] zeroinitializer }, align 32
@radeon_check_modes._entry_ptr.33 = internal global ptr @radeon_check_modes._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%dx%d\00", [26 x i8] zeroinitializer }, align 32
@radeon_check_modes._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.26, ptr @.str.2, i32 867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014radeonfb: Can't find mode for panel size, going back to CRT\0A\00", [33 x i8] zeroinitializer }, align 32
@radeon_check_modes._entry_ptr.37 = internal global ptr @radeon_check_modes._entry.35, section ".printk_index", align 4
@vesa_modes = external dso_local constant [0 x %struct.fb_videomode], align 4
@radeon_parse_connector_info.__conn_type_table = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43], [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Proprietary\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CRT\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DVI-I\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DVI-D\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@radeon_parse_connector_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014radeonfb: No connector info table detected\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"radeon_parse_connector_info\00", [36 x i8] zeroinitializer }, align 32
@radeon_parse_connector_info._entry_ptr = internal global ptr @radeon_parse_connector_info._entry, section ".printk_index", align 4
@radeon_parse_connector_info.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 69, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%d chips in connector info\0A\00", [36 x i8] zeroinitializer }, align 32
@radeon_parse_connector_info.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.47, i8 0, i8 70, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c" - chip %d has %d connectors\0A\00", [34 x i8] zeroinitializer }, align 32
@radeon_parse_connector_info.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.48, i8 0, i8 72, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"  * connector %d of type %d (%s) : %04x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TMDS\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LVDS\00", [27 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DFP\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LCD\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CTV\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"STV\00", [28 x i8] zeroinitializer }, align 32
@radeon_get_panel_info_BIOS._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013radeonfb: Failed to detect DFP panel info using BIOS\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"radeon_get_panel_info_BIOS\00", [37 x i8] zeroinitializer }, align 32
@radeon_get_panel_info_BIOS._entry_ptr = internal global ptr @radeon_get_panel_info_BIOS._entry, section ".printk_index", align 4
@radeon_get_panel_info_BIOS._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"radeonfb: panel ID string: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@radeon_get_panel_info_BIOS._entry_ptr.60 = internal global ptr @radeon_get_panel_info_BIOS._entry.58, section ".printk_index", align 4
@radeon_get_panel_info_BIOS._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"radeonfb: detected LVDS panel size from BIOS: %dx%d\0A\00", [43 x i8] zeroinitializer }, align 32
@radeon_get_panel_info_BIOS._entry_ptr.63 = internal global ptr @radeon_get_panel_info_BIOS._entry.61, section ".printk_index", align 4
@radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.64, i8 0, i8 48, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"BIOS provided panel power delay: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@radeon_get_panel_info_BIOS._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.57, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016radeondb: BIOS provided dividers will be used\0A\00", [47 x i8] zeroinitializer }, align 32
@radeon_get_panel_info_BIOS._entry_ptr.67 = internal global ptr @radeon_get_panel_info_BIOS._entry.65, section ".printk_index", align 4
@radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.68, i8 0, i8 51, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ref_divider = %x\0A\00", [46 x i8] zeroinitializer }, align 32
@radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.69, i8 0, i8 51, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"post_divider = %x\0A\00", [45 x i8] zeroinitializer }, align 32
@radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.70, i8 0, i8 52, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fbk_divider = %x\0A\00", [46 x i8] zeroinitializer }, align 32
@radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.71, i8 0, i8 52, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Scanning BIOS table ...\0A\00", [39 x i8] zeroinitializer }, align 32
@radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.72, i8 0, i8 53, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" %d x %d\0A\00", [22 x i8] zeroinitializer }, align 32
@radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.73, i8 0, i8 58, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Found panel in BIOS table:\0A\00", [36 x i8] zeroinitializer }, align 32
@radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.74, i8 0, i8 58, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"  hblank: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.75, i8 0, i8 59, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  hOver_plus: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.76, i8 0, i8 59, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  hSync_width: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.77, i8 0, i8 59, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"  vblank: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.78, i8 0, i8 59, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  vOver_plus: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.79, i8 0, i8 60, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  vSync_width: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.80, i8 0, i8 60, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"  clock: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.81, i8 0, i8 61, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Didn't find panel in BIOS table !\0A\00", [61 x i8] zeroinitializer }, align 32
@switch.table.radeon_probe_screens = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.51, ptr @.str.40, ptr @.str.53, ptr @.str.52, ptr @.str.54, ptr @.str.55], [40 x i8] zeroinitializer }, align 32
@switch.table.radeon_probe_screens.82 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.51, ptr @.str.40, ptr @.str.53, ptr @.str.52, ptr @.str.54, ptr @.str.55], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 32, i64 44]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 456, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 476, i32 5 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 486, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 538, i32 6 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 542, i32 6 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 570, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 634, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 637, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 640, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 643, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [21 x i8] c"radeonfb_default_var\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 8, i32 39 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 780, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 800, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 848, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 856, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 860, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 864, i32 26 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 867, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant [18 x i8] c"__conn_type_table\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 259, i32 15 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 260, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 260, i32 11 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 260, i32 26 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 260, i32 33 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 260, i32 42 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 260, i32 51 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 270, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 278, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 282, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 289, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 416, i32 22 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 418, i32 22 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 36, i32 11 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 42, i32 11 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 45, i32 11 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 48, i32 11 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 51, i32 11 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 177, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 185, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 188, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 192, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 205, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 206, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 207, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 208, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 210, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 215, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 234, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 235, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 236, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 237, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 238, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 239, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 240, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 241, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.310 = private constant [44 x i8] c"../drivers/video/fbdev/aty/radeon_monitor.c\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 246, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant [34 x i8] c"switch.table.radeon_probe_screens\00", align 1
@___asan_gen_.313 = private unnamed_addr constant [37 x i8] c"switch.table.radeon_probe_screens.82\00", align 1
@llvm.compiler.used = appending global [94 x ptr] [ptr @radeon_check_modes._entry, ptr @radeon_check_modes._entry.31, ptr @radeon_check_modes._entry.35, ptr @radeon_check_modes._entry_ptr, ptr @radeon_check_modes._entry_ptr.33, ptr @radeon_check_modes._entry_ptr.37, ptr @radeon_get_panel_info_BIOS._entry, ptr @radeon_get_panel_info_BIOS._entry.58, ptr @radeon_get_panel_info_BIOS._entry.61, ptr @radeon_get_panel_info_BIOS._entry.65, ptr @radeon_get_panel_info_BIOS._entry_ptr, ptr @radeon_get_panel_info_BIOS._entry_ptr.60, ptr @radeon_get_panel_info_BIOS._entry_ptr.63, ptr @radeon_get_panel_info_BIOS._entry_ptr.67, ptr @radeon_parse_connector_info._entry, ptr @radeon_parse_connector_info._entry_ptr, ptr @radeon_probe_screens._entry, ptr @radeon_probe_screens._entry.12, ptr @radeon_probe_screens._entry.15, ptr @radeon_probe_screens._entry.18, ptr @radeon_probe_screens._entry.21, ptr @radeon_probe_screens._entry.24, ptr @radeon_probe_screens._entry.6, ptr @radeon_probe_screens._entry.9, ptr @radeon_probe_screens._entry_ptr, ptr @radeon_probe_screens._entry_ptr.11, ptr @radeon_probe_screens._entry_ptr.14, ptr @radeon_probe_screens._entry_ptr.17, ptr @radeon_probe_screens._entry_ptr.20, ptr @radeon_probe_screens._entry_ptr.23, ptr @radeon_probe_screens._entry_ptr.25, ptr @radeon_probe_screens._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @radeonfb_default_var, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @radeon_parse_connector_info.__conn_type_table, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @switch.table.radeon_probe_screens, ptr @switch.table.radeon_probe_screens.82], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_probe_screens._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_probe_screens._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_probe_screens._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_probe_screens._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_probe_screens._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_probe_screens._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_probe_screens._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_probe_screens._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_default_var to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_check_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_check_modes._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_check_modes._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_parse_connector_info.__conn_type_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_parse_connector_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_get_panel_info_BIOS._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_get_panel_info_BIOS._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_get_panel_info_BIOS._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_get_panel_info_BIOS._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_probe_screens to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_probe_screens.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_probe_screens(ptr noundef %rinfo, ptr noundef %monitor_layout, i32 noundef %ignore_edid) local_unnamed_addr #0 align 64 {
entry:
  %s1.i = alloca [5 x i8], align 1
  %s2.i = alloca [5 x i8], align 1
  %EDIDs = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @radeon_parse_connector_info(ptr noundef %rinfo)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %s1.i) #8
  %0 = call ptr @memset(ptr %s1.i, i32 255, i32 5)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %s2.i) #8
  %tobool.not.i = icmp eq ptr %monitor_layout, null
  %1 = call ptr @memset(ptr %s2.i, i32 255, i32 5)
  br i1 %tobool.not.i, label %do.body50, label %entry.do.body.outer.i_crit_edge

entry.do.body.outer.i_crit_edge:                  ; preds = %entry
  br label %do.body.outer.i

do.body.outer.i:                                  ; preds = %sw.epilog.thread.i, %entry.do.body.outer.i_crit_edge
  %tobool5.not.i = phi i1 [ false, %sw.epilog.thread.i ], [ true, %entry.do.body.outer.i_crit_edge ]
  %s.0.ph.i = phi ptr [ %incdec.ptr92.i, %sw.epilog.thread.i ], [ %monitor_layout, %entry.do.body.outer.i_crit_edge ]
  %s1.s2.i = select i1 %tobool5.not.i, ptr %s1.i, ptr %s2.i
  br label %do.body.i

do.body.i:                                        ; preds = %sw.epilog.i.do.body.i_crit_edge, %do.body.outer.i
  %i.0.i = phi i32 [ %6, %sw.epilog.i.do.body.i_crit_edge ], [ 0, %do.body.outer.i ]
  %s.0.i = phi ptr [ %incdec.ptr.i, %sw.epilog.i.do.body.i_crit_edge ], [ %s.0.ph.i, %do.body.outer.i ]
  %2 = ptrtoint ptr %s.0.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %s.0.i, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %if.end4.i [
    i8 44, label %sw.epilog.thread.i
    i8 32, label %do.body.i.sw.epilog.i_crit_edge
    i8 0, label %do.body.i.sw.epilog.i_crit_edge567
  ]

do.body.i.sw.epilog.i_crit_edge567:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

do.body.i.sw.epilog.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end4.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx8.i = getelementptr [5 x i8], ptr %s1.s2.i, i32 0, i32 %i.0.i
  %5 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %3, ptr %arrayidx8.i, align 1
  %inc.i = add nsw i32 %i.0.i, 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end4.i, %do.body.i.sw.epilog.i_crit_edge, %do.body.i.sw.epilog.i_crit_edge567
  %i.1.i = phi i32 [ %inc.i, %if.end4.i ], [ %i.0.i, %do.body.i.sw.epilog.i_crit_edge ], [ %i.0.i, %do.body.i.sw.epilog.i_crit_edge567 ]
  %6 = tail call i32 @llvm.smin.i32(i32 %i.1.i, i32 4) #8
  %incdec.ptr.i = getelementptr i8, ptr %s.0.i, i32 1
  %tobool14.not.i = icmp eq i8 %3, 0
  br i1 %tobool14.not.i, label %do.end.i, label %sw.epilog.i.do.body.i_crit_edge

sw.epilog.i.do.body.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

sw.epilog.thread.i:                               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr [5 x i8], ptr %s1.i, i32 0, i32 %i.0.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx.i, align 1
  %incdec.ptr92.i = getelementptr i8, ptr %s.0.i, i32 1
  br label %do.body.outer.i

do.end.i:                                         ; preds = %sw.epilog.i
  br i1 %tobool5.not.i, label %if.else18.i, label %if.then16.i

if.then16.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx17.i = getelementptr [5 x i8], ptr %s2.i, i32 0, i32 %6
  %8 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx17.i, align 1
  br label %if.end21.i

if.else18.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx19.i = getelementptr [5 x i8], ptr %s1.i, i32 0, i32 %6
  %9 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx19.i, align 1
  %10 = ptrtoint ptr %s2.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %s2.i, align 1
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else18.i, %if.then16.i
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %s1.i, ptr noundef nonnull dereferenceable(4) @.str.40, i32 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp22.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp22.i, label %if.end21.i.if.end41.sink.split.i_crit_edge, label %if.else25.i

if.end21.i.if.end41.sink.split.i_crit_edge:       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.sink.split.i

if.else25.i:                                      ; preds = %if.end21.i
  %bcmp85.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %s1.i, ptr noundef nonnull dereferenceable(5) @.str.49, i32 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp85.i)
  %cmp28.i = icmp eq i32 %bcmp85.i, 0
  br i1 %cmp28.i, label %if.else25.i.if.end41.sink.split.i_crit_edge, label %if.else32.i

if.else25.i.if.end41.sink.split.i_crit_edge:      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.sink.split.i

if.else32.i:                                      ; preds = %if.else25.i
  %bcmp86.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %s1.i, ptr noundef nonnull dereferenceable(5) @.str.50, i32 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp86.i)
  %cmp35.i = icmp eq i32 %bcmp86.i, 0
  br i1 %cmp35.i, label %if.else32.i.if.end41.sink.split.i_crit_edge, label %if.else32.i.if.end41.i_crit_edge

if.else32.i.if.end41.i_crit_edge:                 ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.else32.i.if.end41.sink.split.i_crit_edge:      ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.sink.split.i

if.end41.sink.split.i:                            ; preds = %if.else32.i.if.end41.sink.split.i_crit_edge, %if.else25.i.if.end41.sink.split.i_crit_edge, %if.end21.i.if.end41.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1, %if.end21.i.if.end41.sink.split.i_crit_edge ], [ 3, %if.else25.i.if.end41.sink.split.i_crit_edge ], [ 2, %if.else32.i.if.end41.sink.split.i_crit_edge ]
  %mon1_type31.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 31
  %11 = ptrtoint ptr %mon1_type31.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink.i, ptr %mon1_type31.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.end41.sink.split.i, %if.else32.i.if.end41.i_crit_edge
  %bcmp87.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %s2.i, ptr noundef nonnull dereferenceable(4) @.str.40, i32 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp87.i)
  %cmp44.i = icmp eq i32 %bcmp87.i, 0
  br i1 %cmp44.i, label %if.end41.i.cleanup.sink.split.i_crit_edge, label %if.else47.i

if.end41.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.else47.i:                                      ; preds = %if.end41.i
  %bcmp88.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %s2.i, ptr noundef nonnull dereferenceable(5) @.str.49, i32 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp88.i)
  %cmp50.i = icmp eq i32 %bcmp88.i, 0
  br i1 %cmp50.i, label %if.else47.i.cleanup.sink.split.i_crit_edge, label %if.else54.i

if.else47.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.else54.i:                                      ; preds = %if.else47.i
  %bcmp89.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %s2.i, ptr noundef nonnull dereferenceable(5) @.str.50, i32 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp89.i)
  %cmp57.i = icmp eq i32 %bcmp89.i, 0
  br i1 %cmp57.i, label %if.else54.i.cleanup.sink.split.i_crit_edge, label %if.else54.i.do.body_crit_edge

if.else54.i.do.body_crit_edge:                    ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.else54.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else54.i.cleanup.sink.split.i_crit_edge, %if.else47.i.cleanup.sink.split.i_crit_edge, %if.end41.i.cleanup.sink.split.i_crit_edge
  %.sink103.i = phi i32 [ 1, %if.end41.i.cleanup.sink.split.i_crit_edge ], [ 3, %if.else47.i.cleanup.sink.split.i_crit_edge ], [ 2, %if.else54.i.cleanup.sink.split.i_crit_edge ]
  %mon2_type.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 35
  %12 = ptrtoint ptr %mon2_type.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink103.i, ptr %mon2_type.i, align 4
  br label %do.body

do.body:                                          ; preds = %cleanup.sink.split.i, %if.else54.i.do.body_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %s2.i) #8
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %s1.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_probe_screens.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_probe_screens, %do.end)) #8
          to label %if.then7 [label %do.end], !srcloc !179

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_probe_screens.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.3, ptr noundef nonnull %monitor_layout) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ignore_edid)
  %tobool8.not = icmp eq i32 %ignore_edid, 0
  br i1 %tobool8.not, label %if.then9, label %do.end.if.end28_crit_edge

do.end.if.end28_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then9:                                         ; preds = %do.end
  %mon1_type = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 31
  %13 = ptrtoint ptr %mon1_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mon1_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not = icmp eq i32 %14, 0
  br i1 %cmp.not, label %if.then9.if.end17_crit_edge, label %if.then10

if.then9.if.end17_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then10:                                        ; preds = %if.then9
  %mon1_EDID = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 32
  %call11 = tail call i32 @radeon_probe_i2c_connector(ptr noundef %rinfo, i32 noundef 2, ptr noundef %mon1_EDID) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.then10.if.end17_crit_edge

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call i32 @radeon_probe_i2c_connector(ptr noundef %rinfo, i32 noundef 4, ptr noundef %mon1_EDID) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.then10.if.end17_crit_edge, %if.then9.if.end17_crit_edge
  %tobool22.not = phi i1 [ false, %if.then10.if.end17_crit_edge ], [ true, %if.then13 ], [ false, %if.then9.if.end17_crit_edge ]
  %mon2_type = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 35
  %15 = ptrtoint ptr %mon2_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mon2_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp18.not = icmp eq i32 %16, 0
  br i1 %cmp18.not, label %if.end17.if.end28_crit_edge, label %if.then19

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then19:                                        ; preds = %if.end17
  %mon2_EDID = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 36
  %call20 = tail call i32 @radeon_probe_i2c_connector(ptr noundef %rinfo, i32 noundef 3, ptr noundef %mon2_EDID) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp ne i32 %call20, 0
  %brmerge = or i1 %tobool22.not, %tobool21.not
  br i1 %brmerge, label %if.then19.if.end28_crit_edge, label %if.then23

if.then19.if.end28_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %call25 = tail call i32 @radeon_probe_i2c_connector(ptr noundef %rinfo, i32 noundef 4, ptr noundef %mon2_EDID) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.then19.if.end28_crit_edge, %if.end17.if.end28_crit_edge, %do.end.if.end28_crit_edge
  %mon1_type29 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 31
  %17 = ptrtoint ptr %mon1_type29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mon1_type29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp30 = icmp eq i32 %18, 0
  br i1 %cmp30, label %if.then31, label %if.end28.if.end333_crit_edge

if.end28.if.end333_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end333

if.then31:                                        ; preds = %if.end28
  %mon2_type32 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 35
  %19 = ptrtoint ptr %mon2_type32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mon2_type32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp33.not = icmp eq i32 %20, 0
  br i1 %cmp33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %mon1_type29 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %mon1_type29, align 4
  %mon2_EDID37 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 36
  %22 = ptrtoint ptr %mon2_EDID37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mon2_EDID37, align 8
  %mon1_EDID38 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 32
  %24 = ptrtoint ptr %mon1_EDID38 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %mon1_EDID38, align 8
  br label %if.end45

if.else:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %mon1_type29 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %mon1_type29, align 4
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then34
  %26 = ptrtoint ptr %mon2_type32 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %mon2_type32, align 4
  %mon2_EDID47 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 36
  %27 = ptrtoint ptr %mon2_EDID47 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %mon2_EDID47, align 8
  br label %if.end333

do.body50:                                        ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %s2.i) #8
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %s1.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_probe_screens.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_probe_screens, %do.end67)) #8
          to label %if.then64 [label %do.end67], !srcloc !179

if.then64:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_probe_screens.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.5) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %do.body50
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %EDIDs) #8
  %28 = call ptr @memset(ptr %EDIDs, i32 0, i32 16)
  %call70 = call i32 @radeon_probe_i2c_connector(ptr noundef %rinfo, i32 noundef 1, ptr noundef nonnull %EDIDs) #8
  %arrayidx.1 = getelementptr inbounds [4 x ptr], ptr %EDIDs, i32 0, i32 1
  %call70.1 = call i32 @radeon_probe_i2c_connector(ptr noundef %rinfo, i32 noundef 2, ptr noundef %arrayidx.1) #8
  %arrayidx.2 = getelementptr inbounds [4 x ptr], ptr %EDIDs, i32 0, i32 2
  %call70.2 = call i32 @radeon_probe_i2c_connector(ptr noundef %rinfo, i32 noundef 3, ptr noundef %arrayidx.2) #8
  %arrayidx.3 = getelementptr inbounds [4 x ptr], ptr %EDIDs, i32 0, i32 3
  %call70.3 = call i32 @radeon_probe_i2c_connector(ptr noundef %rinfo, i32 noundef 4, ptr noundef %arrayidx.3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %EDIDs) #8
  %has_CRTC2 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 25
  %29 = ptrtoint ptr %has_CRTC2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %has_CRTC2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool71.not = icmp eq i32 %30, 0
  br i1 %tobool71.not, label %if.then72, label %if.end99

if.then72:                                        ; preds = %do.end67
  %mon1_type73 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 31
  %31 = ptrtoint ptr %mon1_type73 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mon1_type73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp74 = icmp eq i32 %32, 0
  br i1 %cmp74, label %if.end79, label %if.then72.if.end86.thread_crit_edge

if.then72.if.end86.thread_crit_edge:              ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86.thread

if.end79:                                         ; preds = %if.then72
  %mon1_EDID76 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 32
  %call77 = call i32 @radeon_probe_i2c_connector(ptr noundef %rinfo, i32 noundef 2, ptr noundef %mon1_EDID76) #8
  %33 = ptrtoint ptr %mon1_type73 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call77, ptr %mon1_type73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp81 = icmp eq i32 %call77, 0
  br i1 %cmp81, label %if.end86, label %if.end79.if.end86.thread_crit_edge

if.end79.if.end86.thread_crit_edge:               ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86.thread

if.end86.thread:                                  ; preds = %if.end79.if.end86.thread_crit_edge, %if.then72.if.end86.thread_crit_edge
  %34 = ptrtoint ptr %mon1_type73 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr = load i32, ptr %mon1_type73, align 4
  br label %if.end93

if.end86:                                         ; preds = %if.end79
  %call84 = call i32 @radeon_probe_i2c_connector(ptr noundef %rinfo, i32 noundef 3, ptr noundef %mon1_EDID76) #8
  %35 = ptrtoint ptr %mon1_type73 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call84, ptr %mon1_type73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp88 = icmp eq i32 %call84, 0
  br i1 %cmp88, label %if.then89, label %if.end86.do.end343_crit_edge

if.end86.do.end343_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end343

if.then89:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %call91 = call i32 @radeon_probe_i2c_connector(ptr noundef %rinfo, i32 noundef 4, ptr noundef %mon1_EDID76) #8
  %36 = ptrtoint ptr %mon1_type73 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call91, ptr %mon1_type73, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then89, %if.end86.thread
  %37 = phi i32 [ %.pr, %if.end86.thread ], [ %call91, %if.then89 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp95 = icmp eq i32 %37, 0
  br i1 %cmp95, label %if.then96, label %if.end93.do.end343_crit_edge

if.end93.do.end343_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end343

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %mon1_type73 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %mon1_type73, align 4
  br label %do.end343

if.end99:                                         ; preds = %do.end67
  %bios_seg = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 10
  %39 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bios_seg, align 8
  %tobool100.not = icmp eq ptr %40, null
  br i1 %tobool100.not, label %if.end99.if.end191_crit_edge, label %land.lhs.true101

if.end99.if.end191_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

land.lhs.true101:                                 ; preds = %if.end99
  %fp_bios_start = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 11
  %41 = ptrtoint ptr %fp_bios_start to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fp_bios_start, align 4
  %add103 = add i32 %42, 80
  %add.ptr = getelementptr i8, ptr %40, i32 %add103
  %43 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  %conv = zext i8 %43 to i32
  %44 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bios_seg, align 8
  %46 = ptrtoint ptr %fp_bios_start to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fp_bios_start, align 4
  %add111 = add i32 %47, 80
  %add.ptr112 = getelementptr i8, ptr %45, i32 %add111
  %add.ptr113 = getelementptr i8, ptr %add.ptr112, i32 1
  %48 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr113) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  %conv117 = zext i8 %48 to i32
  %shl = shl nuw nsw i32 %conv117, 8
  %or = or i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool118.not = icmp eq i32 %or, 0
  br i1 %tobool118.not, label %land.lhs.true101.if.end191_crit_edge, label %if.end137

land.lhs.true101.if.end191_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

if.end137:                                        ; preds = %land.lhs.true101
  %reversed_DAC = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 28
  %reversed_TMDS = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 29
  %49 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bios_seg, align 8
  %add127 = add nuw nsw i32 %or, 2
  %add.ptr128 = getelementptr i8, ptr %50, i32 %add127
  %51 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr128) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  %52 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bios_seg, align 8
  %add.ptr143 = getelementptr i8, ptr %53, i32 %add127
  %54 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr143) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %conv147 = zext i8 %54 to i32
  %55 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bios_seg, align 8
  %add.ptr153 = getelementptr i8, ptr %56, i32 %add127
  %add.ptr154 = getelementptr i8, ptr %add.ptr153, i32 1
  %57 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr154) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %and = and i32 %conv147, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool161.not = icmp eq i32 %and, 0
  %58 = and i8 %57, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %58)
  %cmp164 = icmp eq i8 %58, 2
  %or.cond509 = select i1 %tobool161.not, i1 %cmp164, i1 false
  br i1 %or.cond509, label %if.then166, label %if.end137.if.end172_crit_edge

if.end137.if.end172_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end172

if.then166:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %reversed_DAC to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %reversed_DAC, align 4
  %call171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  br label %if.end172

if.end172:                                        ; preds = %if.then166, %if.end137.if.end172_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %58)
  %cmp175 = icmp ne i8 %58, 2
  %60 = and i32 %conv147, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool180.not = icmp eq i32 %60, 0
  %or.cond510 = select i1 %cmp175, i1 true, i1 %tobool180.not
  br i1 %or.cond510, label %if.end172.for.inc188_crit_edge, label %if.then181

if.end172.for.inc188_crit_edge:                   ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc188

if.then181:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %reversed_TMDS to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %reversed_TMDS, align 8
  %call186 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  br label %for.inc188

for.inc188:                                       ; preds = %if.then181, %if.end172.for.inc188_crit_edge
  %62 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bios_seg, align 8
  %add127.1 = add nuw nsw i32 %or, 4
  %add.ptr128.1 = getelementptr i8, ptr %63, i32 %add127.1
  %64 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr128.1) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool132.not.1 = icmp eq i8 %64, 0
  br i1 %tobool132.not.1, label %for.inc188.if.end191_crit_edge, label %if.end137.1

for.inc188.if.end191_crit_edge:                   ; preds = %for.inc188
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

if.end137.1:                                      ; preds = %for.inc188
  %65 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bios_seg, align 8
  %add.ptr143.1 = getelementptr i8, ptr %66, i32 %add127.1
  %67 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr143.1) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %conv147.1 = zext i8 %67 to i32
  %68 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bios_seg, align 8
  %add.ptr153.1 = getelementptr i8, ptr %69, i32 %add127.1
  %add.ptr154.1 = getelementptr i8, ptr %add.ptr153.1, i32 1
  %70 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr154.1) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %and.1 = and i32 %conv147.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool161.not.1 = icmp eq i32 %and.1, 0
  %71 = and i8 %70, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %71)
  %cmp164.1 = icmp eq i8 %71, 2
  %or.cond509.1 = select i1 %tobool161.not.1, i1 %cmp164.1, i1 false
  br i1 %or.cond509.1, label %if.then166.1, label %if.end137.1.if.end172.1_crit_edge

if.end137.1.if.end172.1_crit_edge:                ; preds = %if.end137.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end172.1

if.then166.1:                                     ; preds = %if.end137.1
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %reversed_DAC to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %reversed_DAC, align 4
  %call171.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  br label %if.end172.1

if.end172.1:                                      ; preds = %if.then166.1, %if.end137.1.if.end172.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %71)
  %cmp175.1 = icmp ne i8 %71, 2
  %73 = and i32 %conv147.1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool180.not.1 = icmp eq i32 %73, 0
  %or.cond510.1 = select i1 %cmp175.1, i1 true, i1 %tobool180.not.1
  br i1 %or.cond510.1, label %if.end172.1.for.inc188.1_crit_edge, label %if.then181.1

if.end172.1.for.inc188.1_crit_edge:               ; preds = %if.end172.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc188.1

if.then181.1:                                     ; preds = %if.end172.1
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %reversed_TMDS to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %reversed_TMDS, align 8
  %call186.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  br label %for.inc188.1

for.inc188.1:                                     ; preds = %if.then181.1, %if.end172.1.for.inc188.1_crit_edge
  %75 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bios_seg, align 8
  %add127.2 = add nuw nsw i32 %or, 6
  %add.ptr128.2 = getelementptr i8, ptr %76, i32 %add127.2
  %77 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr128.2) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool132.not.2 = icmp eq i8 %77, 0
  br i1 %tobool132.not.2, label %for.inc188.1.if.end191_crit_edge, label %if.end137.2

for.inc188.1.if.end191_crit_edge:                 ; preds = %for.inc188.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

if.end137.2:                                      ; preds = %for.inc188.1
  %78 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bios_seg, align 8
  %add.ptr143.2 = getelementptr i8, ptr %79, i32 %add127.2
  %80 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr143.2) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %conv147.2 = zext i8 %80 to i32
  %81 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bios_seg, align 8
  %add.ptr153.2 = getelementptr i8, ptr %82, i32 %add127.2
  %add.ptr154.2 = getelementptr i8, ptr %add.ptr153.2, i32 1
  %83 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr154.2) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %and.2 = and i32 %conv147.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool161.not.2 = icmp eq i32 %and.2, 0
  %84 = and i8 %83, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %84)
  %cmp164.2 = icmp eq i8 %84, 2
  %or.cond509.2 = select i1 %tobool161.not.2, i1 %cmp164.2, i1 false
  br i1 %or.cond509.2, label %if.then166.2, label %if.end137.2.if.end172.2_crit_edge

if.end137.2.if.end172.2_crit_edge:                ; preds = %if.end137.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end172.2

if.then166.2:                                     ; preds = %if.end137.2
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %reversed_DAC to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %reversed_DAC, align 4
  %call171.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  br label %if.end172.2

if.end172.2:                                      ; preds = %if.then166.2, %if.end137.2.if.end172.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %84)
  %cmp175.2 = icmp ne i8 %84, 2
  %86 = and i32 %conv147.2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool180.not.2 = icmp eq i32 %86, 0
  %or.cond510.2 = select i1 %cmp175.2, i1 true, i1 %tobool180.not.2
  br i1 %or.cond510.2, label %if.end172.2.if.end191_crit_edge, label %if.then181.2

if.end172.2.if.end191_crit_edge:                  ; preds = %if.end172.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

if.then181.2:                                     ; preds = %if.end172.2
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %reversed_TMDS to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %reversed_TMDS, align 8
  %call186.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  br label %if.end191

if.end191:                                        ; preds = %if.then181.2, %if.end172.2.if.end191_crit_edge, %for.inc188.1.if.end191_crit_edge, %for.inc188.if.end191_crit_edge, %land.lhs.true101.if.end191_crit_edge, %if.end99.if.end191_crit_edge
  %mon1_type192 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 31
  %88 = ptrtoint ptr %mon1_type192 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mon1_type192, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp193 = icmp eq i32 %89, 0
  br i1 %cmp193, label %if.end199, label %if.end191.if.end254_crit_edge

if.end191.if.end254_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end254

if.end199:                                        ; preds = %if.end191
  %mon1_EDID196 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 32
  %call197 = call i32 @radeon_probe_i2c_connector(ptr noundef %rinfo, i32 noundef 2, ptr noundef %mon1_EDID196) #8
  %90 = ptrtoint ptr %mon1_type192 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %call197, ptr %mon1_type192, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %cmp201 = icmp eq i32 %call197, 0
  br i1 %cmp201, label %if.end212, label %if.end199.if.end254_crit_edge

if.end199.if.end254_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end254

if.end212:                                        ; preds = %if.end199
  %call205 = call i32 @radeon_probe_i2c_connector(ptr noundef %rinfo, i32 noundef 4, ptr noundef %mon1_EDID196) #8
  %91 = ptrtoint ptr %mon1_type192 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call205, ptr %mon1_type192, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %cmp208.not = icmp eq i32 %call205, 0
  br i1 %cmp208.not, label %land.lhs.true216, label %if.end212.if.end254_crit_edge

if.end212.if.end254_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end254

land.lhs.true216:                                 ; preds = %if.end212
  %is_mobility = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 26
  %92 = ptrtoint ptr %is_mobility to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %is_mobility, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool217.not = icmp eq i32 %93, 0
  br i1 %tobool217.not, label %land.lhs.true216.if.end246_crit_edge, label %land.lhs.true218

land.lhs.true216.if.end246_crit_edge:             ; preds = %land.lhs.true216
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end246

land.lhs.true218:                                 ; preds = %land.lhs.true216
  %94 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bios_seg, align 8
  %tobool220.not = icmp eq ptr %95, null
  br i1 %tobool220.not, label %land.lhs.true218.lor.lhs.false_crit_edge, label %land.lhs.true221

land.lhs.true218.lor.lhs.false_crit_edge:         ; preds = %land.lhs.true218
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true221:                                 ; preds = %land.lhs.true218
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %96 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mmio_base, align 8
  %add.ptr224 = getelementptr i8, ptr %97, i32 32
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr224) #8, !srcloc !186
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !187
  %99 = and i32 %98, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool229.not = icmp eq i32 %99, 0
  br i1 %tobool229.not, label %land.lhs.true221.lor.lhs.false_crit_edge, label %land.lhs.true221.if.then239_crit_edge

land.lhs.true221.if.then239_crit_edge:            ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then239

land.lhs.true221.lor.lhs.false_crit_edge:         ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true221.lor.lhs.false_crit_edge, %land.lhs.true218.lor.lhs.false_crit_edge
  %mmio_base232 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %100 = ptrtoint ptr %mmio_base232 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mmio_base232, align 8
  %add.ptr233 = getelementptr i8, ptr %101, i32 720
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr233) #8, !srcloc !186
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  %103 = and i32 %102, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool238.not = icmp eq i32 %103, 0
  br i1 %tobool238.not, label %lor.lhs.false.if.end246_crit_edge, label %lor.lhs.false.if.then239_crit_edge

lor.lhs.false.if.then239_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then239

lor.lhs.false.if.end246_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end246

if.then239:                                       ; preds = %lor.lhs.false.if.then239_crit_edge, %land.lhs.true221.if.then239_crit_edge
  %104 = ptrtoint ptr %mon1_type192 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 2, ptr %mon1_type192, align 4
  %call245 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #12
  br label %if.end246

if.end246:                                        ; preds = %if.then239, %lor.lhs.false.if.end246_crit_edge, %land.lhs.true216.if.end246_crit_edge
  %105 = ptrtoint ptr %mon1_type192 to i32
  call void @__asan_load4_noabort(i32 %105)
  %.pr539.pr = load i32, ptr %mon1_type192, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr539.pr)
  %cmp248 = icmp eq i32 %.pr539.pr, 0
  br i1 %cmp248, label %if.then250, label %if.end246.if.end254_crit_edge

if.end246.if.end254_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end254

if.then250:                                       ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #10
  %reversed_DAC251 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 28
  %106 = ptrtoint ptr %reversed_DAC251 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %reversed_DAC251, align 4
  %call252 = call fastcc i32 @radeon_crt_is_connected(ptr noundef %rinfo, i32 noundef %107)
  %108 = ptrtoint ptr %mon1_type192 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %call252, ptr %mon1_type192, align 4
  br label %if.end254

if.end254:                                        ; preds = %if.then250, %if.end246.if.end254_crit_edge, %if.end212.if.end254_crit_edge, %if.end199.if.end254_crit_edge, %if.end191.if.end254_crit_edge
  %tobool267.not538542 = phi i1 [ false, %if.then250 ], [ false, %if.end246.if.end254_crit_edge ], [ true, %if.end212.if.end254_crit_edge ], [ false, %if.end191.if.end254_crit_edge ], [ false, %if.end199.if.end254_crit_edge ]
  %mon2_type255 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 35
  %109 = ptrtoint ptr %mon2_type255 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %mon2_type255, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp256 = icmp eq i32 %110, 0
  br i1 %cmp256, label %if.then258, label %if.end254.if.end262_crit_edge

if.end254.if.end262_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end262

if.then258:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #10
  %mon2_EDID259 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 36
  %call260 = call i32 @radeon_probe_i2c_connector(ptr noundef %rinfo, i32 noundef 3, ptr noundef %mon2_EDID259) #8
  %111 = ptrtoint ptr %mon2_type255 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %call260, ptr %mon2_type255, align 4
  br label %if.end262

if.end262:                                        ; preds = %if.then258, %if.end254.if.end262_crit_edge
  %112 = ptrtoint ptr %mon2_type255 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %mon2_type255, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp264 = icmp ne i32 %113, 0
  %brmerge511 = or i1 %cmp264, %tobool267.not538542
  br i1 %brmerge511, label %if.end262.if.end272_crit_edge, label %if.then268

if.end262.if.end272_crit_edge:                    ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end272

if.then268:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #10
  %mon2_EDID269 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 36
  %call270 = call i32 @radeon_probe_i2c_connector(ptr noundef %rinfo, i32 noundef 4, ptr noundef %mon2_EDID269) #8
  %114 = ptrtoint ptr %mon2_type255 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %call270, ptr %mon2_type255, align 4
  br label %if.end272

if.end272:                                        ; preds = %if.then268, %if.end262.if.end272_crit_edge
  %115 = phi i32 [ %113, %if.end262.if.end272_crit_edge ], [ %call270, %if.then268 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp274 = icmp eq i32 %115, 0
  br i1 %cmp274, label %if.then276, label %if.end272.if.end283_crit_edge

if.end272.if.end283_crit_edge:                    ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end283

if.then276:                                       ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #10
  %reversed_DAC277 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 28
  %116 = ptrtoint ptr %reversed_DAC277 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %reversed_DAC277, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool278.not = icmp eq i32 %117, 0
  %lnot.ext280 = zext i1 %tobool278.not to i32
  %call281 = call fastcc i32 @radeon_crt_is_connected(ptr noundef %rinfo, i32 noundef %lnot.ext280)
  %118 = ptrtoint ptr %mon2_type255 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %call281, ptr %mon2_type255, align 4
  br label %if.end283

if.end283:                                        ; preds = %if.then276, %if.end272.if.end283_crit_edge
  %119 = ptrtoint ptr %mon1_type192 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %mon1_type192, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp285 = icmp eq i32 %120, 0
  br i1 %cmp285, label %if.then287, label %if.end283.if.end301_crit_edge

if.end283.if.end301_crit_edge:                    ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end301

if.then287:                                       ; preds = %if.end283
  %121 = ptrtoint ptr %mon2_type255 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %mon2_type255, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp289.not = icmp eq i32 %122, 0
  br i1 %cmp289.not, label %if.else296, label %if.then291

if.then291:                                       ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #10
  %123 = ptrtoint ptr %mon1_type192 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %mon1_type192, align 4
  %mon2_EDID294 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 36
  %124 = ptrtoint ptr %mon2_EDID294 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mon2_EDID294, align 8
  %mon1_EDID295 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 32
  %126 = ptrtoint ptr %mon1_EDID295 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %125, ptr %mon1_EDID295, align 8
  br label %if.end298

if.else296:                                       ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #10
  %127 = ptrtoint ptr %mon1_type192 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 1, ptr %mon1_type192, align 4
  br label %if.end298

if.end298:                                        ; preds = %if.else296, %if.then291
  %128 = ptrtoint ptr %mon2_type255 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %mon2_type255, align 4
  %mon2_EDID300 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 36
  %129 = ptrtoint ptr %mon2_EDID300 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %mon2_EDID300, align 8
  br label %if.end301

if.end301:                                        ; preds = %if.end298, %if.end283.if.end301_crit_edge
  %reversed_TMDS302 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 29
  %130 = ptrtoint ptr %reversed_TMDS302 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %reversed_TMDS302, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool303.not = icmp eq i32 %131, 0
  br i1 %tobool303.not, label %if.end301.if.end333_crit_edge, label %if.then304

if.end301.if.end333_crit_edge:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end333

if.then304:                                       ; preds = %if.end301
  %132 = ptrtoint ptr %mon1_type192 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %mon1_type192, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %133)
  %cmp306 = icmp eq i32 %133, 3
  %134 = ptrtoint ptr %mon2_type255 to i32
  call void @__asan_load4_noabort(i32 %134)
  %.pr543 = load i32, ptr %mon2_type255, align 4
  br i1 %cmp306, label %if.then304.if.then312_crit_edge, label %lor.lhs.false308

if.then304.if.then312_crit_edge:                  ; preds = %if.then304
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then312

lor.lhs.false308:                                 ; preds = %if.then304
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr543)
  %cmp310 = icmp eq i32 %.pr543, 3
  br i1 %cmp310, label %lor.lhs.false308.if.then312_crit_edge, label %lor.lhs.false308.if.end333_crit_edge

lor.lhs.false308.if.end333_crit_edge:             ; preds = %lor.lhs.false308
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end333

lor.lhs.false308.if.then312_crit_edge:            ; preds = %lor.lhs.false308
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then312

if.then312:                                       ; preds = %lor.lhs.false308.if.then312_crit_edge, %if.then304.if.then312_crit_edge
  %135 = phi i32 [ 3, %lor.lhs.false308.if.then312_crit_edge ], [ %.pr543, %if.then304.if.then312_crit_edge ]
  %mon1_EDID314 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 32
  %136 = ptrtoint ptr %mon1_EDID314 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mon1_EDID314, align 8
  %138 = ptrtoint ptr %mon1_type192 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %135, ptr %mon1_type192, align 4
  %mon2_EDID317 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 36
  %139 = ptrtoint ptr %mon2_EDID317 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %mon2_EDID317, align 8
  store ptr %140, ptr %mon1_EDID314, align 8
  %141 = ptrtoint ptr %mon2_type255 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %133, ptr %mon2_type255, align 4
  store ptr %137, ptr %mon2_EDID317, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %135)
  %cmp322 = icmp eq i32 %135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %133)
  %cmp326 = icmp eq i32 %133, 1
  %or.cond549 = select i1 %cmp322, i1 true, i1 %cmp326
  br i1 %or.cond549, label %if.then328, label %if.then312.if.end333_crit_edge

if.then312.if.end333_crit_edge:                   ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end333

if.then328:                                       ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #10
  %reversed_DAC329 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 28
  %142 = ptrtoint ptr %reversed_DAC329 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %reversed_DAC329, align 4
  %xor = xor i32 %143, 1
  store i32 %xor, ptr %reversed_DAC329, align 4
  br label %if.end333

if.end333:                                        ; preds = %if.then328, %if.then312.if.end333_crit_edge, %lor.lhs.false308.if.end333_crit_edge, %if.end301.if.end333_crit_edge, %if.end45, %if.end28.if.end333_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ignore_edid)
  %tobool334.not = icmp eq i32 %ignore_edid, 0
  br i1 %tobool334.not, label %if.end333.do.end343_crit_edge, label %if.then335

if.end333.do.end343_crit_edge:                    ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end343

if.then335:                                       ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #10
  %mon1_EDID336 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 32
  %144 = ptrtoint ptr %mon1_EDID336 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %mon1_EDID336, align 8
  call void @kfree(ptr noundef %145) #8
  %146 = ptrtoint ptr %mon1_EDID336 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %mon1_EDID336, align 8
  %mon2_EDID338 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 36
  %147 = ptrtoint ptr %mon2_EDID338 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mon2_EDID338, align 8
  call void @kfree(ptr noundef %148) #8
  %149 = ptrtoint ptr %mon2_EDID338 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %mon2_EDID338, align 8
  br label %do.end343

do.end343:                                        ; preds = %if.then335, %if.end333.do.end343_crit_edge, %if.then96, %if.end93.do.end343_crit_edge, %if.end86.do.end343_crit_edge
  %mon1_type345 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 31
  %150 = ptrtoint ptr %mon1_type345 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %mon1_type345, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %151)
  %152 = icmp ult i32 %151, 6
  br i1 %152, label %switch.lookup, label %do.end343.radeon_get_mon_name.exit_crit_edge

do.end343.radeon_get_mon_name.exit_crit_edge:     ; preds = %do.end343
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_mon_name.exit

switch.lookup:                                    ; preds = %do.end343
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.radeon_probe_screens, i32 0, i32 %151
  %153 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %153)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %radeon_get_mon_name.exit

radeon_get_mon_name.exit:                         ; preds = %switch.lookup, %do.end343.radeon_get_mon_name.exit_crit_edge
  %pret.0.i = phi ptr [ null, %do.end343.radeon_get_mon_name.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %call347 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %pret.0.i) #12
  %mon1_EDID348 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 32
  %154 = ptrtoint ptr %mon1_EDID348 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %mon1_EDID348, align 8
  %tobool349.not = icmp eq ptr %155, null
  br i1 %tobool349.not, label %radeon_get_mon_name.exit.if.end356_crit_edge, label %do.end353

radeon_get_mon_name.exit.if.end356_crit_edge:     ; preds = %radeon_get_mon_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end356

do.end353:                                        ; preds = %radeon_get_mon_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call355 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #12
  br label %if.end356

if.end356:                                        ; preds = %do.end353, %radeon_get_mon_name.exit.if.end356_crit_edge
  %has_CRTC2357 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 25
  %156 = ptrtoint ptr %has_CRTC2357 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %has_CRTC2357, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool358.not = icmp eq i32 %157, 0
  br i1 %tobool358.not, label %if.end356.cleanup377_crit_edge, label %do.end363

if.end356.cleanup377_crit_edge:                   ; preds = %if.end356
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup377

do.end363:                                        ; preds = %if.end356
  %mon2_type365 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 35
  %158 = ptrtoint ptr %mon2_type365 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %mon2_type365, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %159)
  %160 = icmp ult i32 %159, 6
  br i1 %160, label %switch.lookup560, label %do.end363.radeon_get_mon_name.exit525_crit_edge

do.end363.radeon_get_mon_name.exit525_crit_edge:  ; preds = %do.end363
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_mon_name.exit525

switch.lookup560:                                 ; preds = %do.end363
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep561 = getelementptr inbounds [6 x ptr], ptr @switch.table.radeon_probe_screens.82, i32 0, i32 %159
  %161 = ptrtoint ptr %switch.gep561 to i32
  call void @__asan_load4_noabort(i32 %161)
  %switch.load562 = load ptr, ptr %switch.gep561, align 4
  br label %radeon_get_mon_name.exit525

radeon_get_mon_name.exit525:                      ; preds = %switch.lookup560, %do.end363.radeon_get_mon_name.exit525_crit_edge
  %pret.0.i523 = phi ptr [ null, %do.end363.radeon_get_mon_name.exit525_crit_edge ], [ %switch.load562, %switch.lookup560 ]
  %call367 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %pret.0.i523) #12
  %mon2_EDID368 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 36
  %162 = ptrtoint ptr %mon2_EDID368 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %mon2_EDID368, align 8
  %tobool369.not = icmp eq ptr %163, null
  br i1 %tobool369.not, label %radeon_get_mon_name.exit525.cleanup377_crit_edge, label %do.end373

radeon_get_mon_name.exit525.cleanup377_crit_edge: ; preds = %radeon_get_mon_name.exit525
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup377

do.end373:                                        ; preds = %radeon_get_mon_name.exit525
  call void @__sanitizer_cov_trace_pc() #10
  %call375 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #12
  br label %cleanup377

cleanup377:                                       ; preds = %do.end373, %radeon_get_mon_name.exit525.cleanup377_crit_edge, %if.end356.cleanup377_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_parse_connector_info(ptr nocapture noundef readonly %rinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bios_seg = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 10
  %0 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bios_seg, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %fp_bios_start = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 11
  %2 = ptrtoint ptr %fp_bios_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fp_bios_start, align 4
  %add = add i32 %3, 80
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  %conv = zext i8 %4 to i32
  %5 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bios_seg, align 8
  %7 = ptrtoint ptr %fp_bios_start to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fp_bios_start, align 4
  %add8 = add i32 %8, 80
  %add.ptr9 = getelementptr i8, ptr %6, i32 %add8
  %add.ptr10 = getelementptr i8, ptr %add.ptr9, i32 1
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr10) #8, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  %conv14 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv14, 8
  %or = or i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp = icmp eq i32 %or, 0
  br i1 %cmp, label %do.end, label %if.end19

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #12
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %10 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bios_seg, align 8
  %inc = add nuw nsw i32 %or, 1
  %add.ptr23 = getelementptr i8, ptr %11, i32 %or
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr23) #8, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %13 = lshr i8 %12, 4
  %14 = zext i8 %13 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_parse_connector_info.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_parse_connector_info, %do.end38)) #8
          to label %if.then35 [label %do.end38], !srcloc !179

if.then35:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_parse_connector_info.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.46, i32 noundef %14) #8
  br label %do.end38

do.end38:                                         ; preds = %if.then35, %if.end19
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %12)
  %cmp39166.not = icmp ult i8 %12, 16
  br i1 %cmp39166.not, label %do.end38.cleanup_crit_edge, label %for.body.preheader

do.end38.cleanup_crit_edge:                       ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %do.end38
  %smax = call i32 @llvm.smax.i32(i32 %14, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc115.for.body_crit_edge, %for.body.preheader
  %offset.0168 = phi i32 [ %offset.1.lcssa, %for.inc115.for.body_crit_edge ], [ %inc, %for.body.preheader ]
  %i.0167 = phi i32 [ %inc116, %for.inc115.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %15 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bios_seg, align 8
  %inc44 = add i32 %offset.0168, 1
  %add.ptr45 = getelementptr i8, ptr %16, i32 %offset.0168
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr45) #8, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_parse_connector_info.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_parse_connector_info, %do.end68)) #8
          to label %if.then64 [label %do.end68], !srcloc !179

if.then64:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv49 = zext i8 %17 to i32
  %and = and i32 %conv49, 15
  %18 = lshr i32 %conv49, 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_parse_connector_info.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.47, i32 noundef %18, i32 noundef %and) #8
  br label %do.end68

do.end68:                                         ; preds = %if.then64, %for.body
  %19 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bios_seg, align 8
  %add.ptr73154 = getelementptr i8, ptr %20, i32 %inc44
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr73154) #8, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %conv77155 = zext i8 %21 to i32
  %22 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bios_seg, align 8
  %add.ptr81156 = getelementptr i8, ptr %23, i32 1
  %add.ptr82157 = getelementptr i8, ptr %add.ptr81156, i32 %inc44
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr82157) #8, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  %conv86158 = zext i8 %24 to i32
  %shl87159 = shl nuw nsw i32 %conv86158, 8
  %or88160 = or i32 %shl87159, %conv77155
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or88160)
  %cmp89161 = icmp eq i32 %or88160, 0
  br i1 %cmp89161, label %do.end68.for.inc115_crit_edge, label %do.end68.if.end92_crit_edge

do.end68.if.end92_crit_edge:                      ; preds = %do.end68
  br label %if.end92

do.end68.for.inc115_crit_edge:                    ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc115

if.end92:                                         ; preds = %for.inc.if.end92_crit_edge, %do.end68.if.end92_crit_edge
  %or88165 = phi i32 [ %or88, %for.inc.if.end92_crit_edge ], [ %or88160, %do.end68.if.end92_crit_edge ]
  %conv86164 = phi i32 [ %conv86, %for.inc.if.end92_crit_edge ], [ %conv86158, %do.end68.if.end92_crit_edge ]
  %offset.1163 = phi i32 [ %add93, %for.inc.if.end92_crit_edge ], [ %inc44, %do.end68.if.end92_crit_edge ]
  %conn.0162 = phi i32 [ %inc114, %for.inc.if.end92_crit_edge ], [ 0, %do.end68.if.end92_crit_edge ]
  %add93 = add i32 %offset.1163, 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_parse_connector_info.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_parse_connector_info, %for.inc)) #8
          to label %if.then110 [label %for.inc], !srcloc !179

if.then110:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %25 = lshr i32 %conv86164, 4
  %arrayidx = getelementptr [16 x ptr], ptr @radeon_parse_connector_info.__conn_type_table, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_parse_connector_info.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.48, i32 noundef %conn.0162, i32 noundef %25, ptr noundef %27, i32 noundef %or88165) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then110, %if.end92
  %inc114 = add i32 %conn.0162, 1
  %28 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bios_seg, align 8
  %add.ptr73 = getelementptr i8, ptr %29, i32 %add93
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr73) #8, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %conv77 = zext i8 %30 to i32
  %31 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bios_seg, align 8
  %add.ptr81 = getelementptr i8, ptr %32, i32 1
  %add.ptr82 = getelementptr i8, ptr %add.ptr81, i32 %add93
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr82) #8, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  %conv86 = zext i8 %33 to i32
  %shl87 = shl nuw nsw i32 %conv86, 8
  %or88 = or i32 %shl87, %conv77
  %cmp89 = icmp eq i32 %or88, 0
  br i1 %cmp89, label %for.inc.for.inc115_crit_edge, label %for.inc.if.end92_crit_edge

for.inc.if.end92_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

for.inc.for.inc115_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc115

for.inc115:                                       ; preds = %for.inc.for.inc115_crit_edge, %do.end68.for.inc115_crit_edge
  %offset.1.lcssa = phi i32 [ %inc44, %do.end68.for.inc115_crit_edge ], [ %add93, %for.inc.for.inc115_crit_edge ]
  %inc116 = add nuw nsw i32 %i.0167, 1
  %exitcond.not = icmp eq i32 %inc116, %smax
  br i1 %exitcond.not, label %for.inc115.cleanup_crit_edge, label %for.inc115.for.body_crit_edge

for.inc115.for.body_crit_edge:                    ; preds = %for.inc115
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc115.cleanup_crit_edge:                     ; preds = %for.inc115
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc115.cleanup_crit_edge, %do.end38.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_probe_i2c_connector(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @radeon_crt_is_connected(ptr noundef %rinfo, i32 noundef %is_crt_dac) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_crt_dac)
  %tobool.not = icmp eq i32 %is_crt_dac, 0
  br i1 %tobool.not, label %entry.if.end66_crit_edge, label %if.then

entry.if.end66_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 8) #8
  %and = and i32 %call, -193
  tail call void @__OUTPLLP(ptr noundef %rinfo, i32 noundef 8, i32 noundef %and, i32 noundef -193) #8
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %0 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 84
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !195
  %3 = or i32 %2, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio_base, align 8
  %add.ptr4 = getelementptr i8, ptr %5, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %3) #8, !srcloc !197
  %6 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_base, align 8
  %add.ptr8 = getelementptr i8, ptr %7, i32 640
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  %9 = and i32 %8, 251723007
  %10 = or i32 %9, -268435456
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %family = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 15
  %12 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %family, align 4
  %14 = add i8 %13, -8
  %switch.and = and i8 %14, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and)
  %switch.selectcmp = icmp eq i8 %switch.and, 0
  %15 = select i1 %switch.selectcmp, i32 112128, i32 109568
  %or20 = or i32 %11, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %or20)
  %17 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio_base, align 8
  %add.ptr26 = getelementptr i8, ptr %18, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %16) #8, !srcloc !197
  %19 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio_base, align 8
  %add.ptr30 = getelementptr i8, ptr %20, i32 88
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #8, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !200
  %22 = and i32 %21, -192937985
  %23 = or i32 %22, 167772160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio_base, align 8
  %add.ptr41 = getelementptr i8, ptr %25, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %23) #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #8
  %27 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio_base, align 8
  %add.ptr45 = getelementptr i8, ptr %28, i32 88
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #8, !srcloc !186
  %30 = lshr i32 %29, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @__OUTPLLP(ptr noundef %rinfo, i32 noundef 8, i32 noundef %call, i32 noundef -1) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio_base, align 8
  %add.ptr55 = getelementptr i8, ptr %32, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %21) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  %33 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio_base, align 8
  %add.ptr60 = getelementptr i8, ptr %34, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %8) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !205
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio_base, align 8
  %add.ptr65 = getelementptr i8, ptr %36, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %2) #8, !srcloc !197
  br label %if.end66

if.end66:                                         ; preds = %if.then, %entry.if.end66_crit_edge
  %connected.0 = phi i32 [ %30, %if.then ], [ 0, %entry.if.end66_crit_edge ]
  ret i32 %connected.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_check_modes(ptr noundef %rinfo, ptr noundef %mode_option) local_unnamed_addr #0 align 64 {
entry:
  %var7 = alloca %struct.fb_var_screeninfo, align 4
  %modename = alloca [32 x i8], align 1
  %mode = alloca %struct.fb_videomode, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rinfo, align 8
  %var = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %2 = call ptr @memcpy(ptr %var, ptr @radeonfb_default_var, i32 160)
  %modelist = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %modelist to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %modelist, ptr %modelist, align 4
  %prev.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %modelist, ptr %prev.i, align 4
  %mon1_type = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 31
  %5 = ptrtoint ptr %mon1_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mon1_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @radeon_get_panel_info_BIOS(ptr noundef %rinfo)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %panel_info = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30
  %use_bios_dividers = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 14
  %7 = ptrtoint ptr %use_bios_dividers to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %use_bios_dividers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end
  %9 = ptrtoint ptr %mon1_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mon1_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp3.not = icmp eq i32 %10, 1
  br i1 %cmp3.not, label %land.lhs.true.if.end95_crit_edge, label %land.lhs.true4

land.lhs.true.if.end95_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

land.lhs.true4:                                   ; preds = %land.lhs.true
  %mon1_EDID = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 32
  %11 = ptrtoint ptr %mon1_EDID to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mon1_EDID, align 8
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %land.lhs.true4.if.end29_crit_edge, label %if.then6

land.lhs.true4.if.end29_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then6:                                         ; preds = %land.lhs.true4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %var7) #8
  %13 = call ptr @memset(ptr %var7, i32 255, i32 160)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_check_modes.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_check_modes, %do.end)) #8
          to label %if.then13 [label %do.end], !srcloc !179

if.then13:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_check_modes.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.27) #8
  br label %do.end

do.end:                                           ; preds = %if.then13, %if.then6
  %14 = ptrtoint ptr %mon1_EDID to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mon1_EDID, align 8
  %call16 = call i32 @fb_parse_edid(ptr noundef %15, ptr noundef nonnull %var7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %do.end.if.end28_crit_edge

do.end.if.end28_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then18:                                        ; preds = %do.end
  %16 = ptrtoint ptr %var7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %var7, align 4
  %18 = ptrtoint ptr %panel_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %panel_info, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp21.not = icmp ult i32 %17, %19
  br i1 %cmp21.not, label %if.then18.if.end28_crit_edge, label %land.lhs.true22

if.then18.if.end28_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.lhs.true22:                                  ; preds = %if.then18
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var7, i32 0, i32 1
  %20 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %yres, align 4
  %yres24 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 1
  %22 = ptrtoint ptr %yres24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %yres24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp25.not = icmp ult i32 %21, %23
  br i1 %cmp25.not, label %land.lhs.true22.if.end28_crit_edge, label %if.then26

land.lhs.true22.if.end28_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then26:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @radeon_var_to_panel_info(ptr noundef %rinfo, ptr noundef nonnull %var7)
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %land.lhs.true22.if.end28_crit_edge, %if.then18.if.end28_crit_edge, %do.end.if.end28_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %var7) #8
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %land.lhs.true4.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %24 = ptrtoint ptr %mon1_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load i32, ptr %mon1_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp31.not = icmp eq i32 %.pr, 1
  br i1 %cmp31.not, label %if.end29.if.end95_crit_edge, label %land.lhs.true32

if.end29.if.end95_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

land.lhs.true32:                                  ; preds = %if.end29
  %valid = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 2
  %25 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool34.not = icmp eq i32 %26, 0
  br i1 %tobool34.not, label %land.lhs.true32.if.end95_crit_edge, label %if.then35

land.lhs.true32.if.end95_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then35:                                        ; preds = %land.lhs.true32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_check_modes.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_check_modes, %do.end55)) #8
          to label %if.then52 [label %do.end55], !srcloc !179

if.then52:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_check_modes.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.28) #8
  br label %do.end55

do.end55:                                         ; preds = %if.then52, %if.then35
  %27 = ptrtoint ptr %panel_info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %panel_info, align 4
  %29 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %var, align 4
  %yres60 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 1
  %30 = ptrtoint ptr %yres60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %yres60, align 4
  %yres61 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %yres61 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %yres61, align 4
  %33 = load i32, ptr %panel_info, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 2
  %34 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %xres_virtual, align 4
  %35 = load i32, ptr %yres60, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 3
  %36 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %yres_virtual, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 5
  %37 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %yoffset, align 4
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 4
  %38 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %xoffset, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 6
  %39 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8, ptr %bits_per_pixel, align 4
  %clock = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 3
  %40 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %clock, align 4
  %div = sdiv i32 100000000, %41
  %pixclock = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 17
  %42 = ptrtoint ptr %pixclock to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div, ptr %pixclock, align 4
  %hblank = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 6
  %43 = ptrtoint ptr %hblank to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hblank, align 4
  %hOver_plus = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 4
  %45 = ptrtoint ptr %hOver_plus to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hOver_plus, align 4
  %hSync_width = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 5
  %47 = ptrtoint ptr %hSync_width to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hSync_width, align 4
  %49 = add i32 %46, %48
  %sub70 = sub i32 %44, %49
  %left_margin = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 18
  %50 = ptrtoint ptr %left_margin to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub70, ptr %left_margin, align 4
  %51 = load i32, ptr %hOver_plus, align 4
  %right_margin = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 19
  %52 = ptrtoint ptr %right_margin to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %right_margin, align 4
  %vblank = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 9
  %53 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vblank, align 4
  %vOver_plus = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 7
  %55 = ptrtoint ptr %vOver_plus to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %vOver_plus, align 4
  %vSync_width = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 8
  %57 = ptrtoint ptr %vSync_width to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %vSync_width, align 4
  %59 = add i32 %56, %58
  %sub77 = sub i32 %54, %59
  %upper_margin = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 20
  %60 = ptrtoint ptr %upper_margin to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sub77, ptr %upper_margin, align 4
  %61 = load i32, ptr %vOver_plus, align 4
  %lower_margin = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 21
  %62 = ptrtoint ptr %lower_margin to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %lower_margin, align 4
  %63 = load i32, ptr %hSync_width, align 4
  %hsync_len = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 22
  %64 = ptrtoint ptr %hsync_len to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %hsync_len, align 4
  %65 = load i32, ptr %vSync_width, align 4
  %vsync_len = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 23
  %66 = ptrtoint ptr %vsync_len to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %vsync_len, align 4
  %sync = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 24
  %67 = ptrtoint ptr %sync to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %sync, align 4
  %hAct_high = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 10
  %68 = ptrtoint ptr %hAct_high to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %hAct_high, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool85.not = icmp ne i32 %69, 0
  %spec.store.select = zext i1 %tobool85.not to i32
  %70 = ptrtoint ptr %sync to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %spec.store.select, ptr %sync, align 4
  %vAct_high = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 11
  %71 = ptrtoint ptr %vAct_high to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %vAct_high, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool90.not = icmp eq i32 %72, 0
  br i1 %tobool90.not, label %do.end55.if.end94_crit_edge, label %if.then91

do.end55.if.end94_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.then91:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #10
  %or93 = or i32 %spec.store.select, 2
  %73 = ptrtoint ptr %sync to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %or93, ptr %sync, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %do.end55.if.end94_crit_edge
  %vmode = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 25
  %74 = ptrtoint ptr %vmode to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %vmode, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %land.lhs.true32.if.end95_crit_edge, %if.end29.if.end95_crit_edge, %land.lhs.true.if.end95_crit_edge
  %has_default_mode.0 = phi i32 [ 1, %if.end94 ], [ 0, %land.lhs.true32.if.end95_crit_edge ], [ 0, %if.end29.if.end95_crit_edge ], [ 0, %land.lhs.true.if.end95_crit_edge ]
  %mon1_EDID96 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 32
  %75 = ptrtoint ptr %mon1_EDID96 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mon1_EDID96, align 8
  %tobool97.not = icmp eq ptr %76, null
  br i1 %tobool97.not, label %if.end95.if.end107_crit_edge, label %if.then98

if.end95.if.end107_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  %monspecs = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 8
  call void @fb_edid_to_monspecs(ptr noundef nonnull %76, ptr noundef %monspecs) #8
  %modedb = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 8, i32 1
  %77 = ptrtoint ptr %modedb to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %modedb, align 4
  %modedb_len = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 8, i32 6
  %79 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %modedb_len, align 4
  call void @fb_videomode_to_modelist(ptr noundef %78, i32 noundef %80, ptr noundef %modelist) #8
  %81 = ptrtoint ptr %modedb to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %modedb, align 4
  %mon1_modedb = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 33
  %83 = ptrtoint ptr %mon1_modedb to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %mon1_modedb, align 4
  %84 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %modedb_len, align 4
  %mon1_dbsize = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 34
  %86 = ptrtoint ptr %mon1_dbsize to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %mon1_dbsize, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.then98, %if.end95.if.end107_crit_edge
  %87 = ptrtoint ptr %mon1_type to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %mon1_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %88)
  %cmp109.not = icmp eq i32 %88, 1
  br i1 %cmp109.not, label %if.end107.pickup_default_crit_edge, label %land.lhs.true110

if.end107.pickup_default_crit_edge:               ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %pickup_default

land.lhs.true110:                                 ; preds = %if.end107
  %valid112 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 2
  %89 = ptrtoint ptr %valid112 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %valid112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool113.not = icmp eq i32 %90, 0
  br i1 %tobool113.not, label %if.then114, label %land.lhs.true110.pickup_default_crit_edge

land.lhs.true110.pickup_default_crit_edge:        ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #10
  br label %pickup_default

if.then114:                                       ; preds = %land.lhs.true110
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %modename) #8
  %91 = call ptr @memset(ptr %modename, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_check_modes.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_check_modes, %do.end133)) #8
          to label %if.then130 [label %do.end133], !srcloc !179

if.then130:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_check_modes.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.29) #8
  br label %do.end133

do.end133:                                        ; preds = %if.then130, %if.then114
  %92 = ptrtoint ptr %panel_info to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %panel_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp136 = icmp eq i32 %93, 0
  br i1 %cmp136, label %do.end133.if.then140_crit_edge, label %lor.lhs.false

do.end133.if.then140_crit_edge:                   ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then140

lor.lhs.false:                                    ; preds = %do.end133
  %yres138 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 1
  %94 = ptrtoint ptr %yres138 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %yres138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp139 = icmp eq i32 %95, 0
  br i1 %cmp139, label %lor.lhs.false.if.then140_crit_edge, label %lor.lhs.false.if.end159_crit_edge

lor.lhs.false.if.end159_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159

lor.lhs.false.if.then140_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then140

if.then140:                                       ; preds = %lor.lhs.false.if.then140_crit_edge, %do.end133.if.then140_crit_edge
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %96 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %97, i32 652
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !186
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !206
  %99 = and i32 %98, 65281
  %100 = call i32 @llvm.bswap.i32(i32 %99)
  %shr = lshr exact i32 %100, 13
  %mul = add nuw nsw i32 %shr, 8
  %101 = ptrtoint ptr %panel_info to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %mul, ptr %panel_info, align 4
  %102 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mmio_base, align 8
  %add.ptr150 = getelementptr i8, ptr %103, i32 656
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr150) #8, !srcloc !186
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !207
  %105 = and i32 %104, 15793920
  %106 = call i32 @llvm.bswap.i32(i32 %105)
  %shr155 = lshr exact i32 %106, 12
  %add156 = add nuw nsw i32 %shr155, 1
  %yres158 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 1
  %107 = ptrtoint ptr %yres158 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %add156, ptr %yres158, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.then140, %lor.lhs.false.if.end159_crit_edge
  %108 = ptrtoint ptr %panel_info to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %panel_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp162 = icmp eq i32 %109, 0
  br i1 %cmp162, label %if.end159.do.end170_crit_edge, label %lor.lhs.false163

if.end159.do.end170_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end170

lor.lhs.false163:                                 ; preds = %if.end159
  %yres165 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 1
  %110 = ptrtoint ptr %yres165 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %yres165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp166 = icmp eq i32 %111, 0
  br i1 %cmp166, label %lor.lhs.false163.do.end170_crit_edge, label %do.end177

lor.lhs.false163.do.end170_crit_edge:             ; preds = %lor.lhs.false163
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end170

do.end170:                                        ; preds = %lor.lhs.false163.do.end170_crit_edge, %if.end159.do.end170_crit_edge
  %call172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #12
  %112 = ptrtoint ptr %mon1_type to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1, ptr %mon1_type, align 4
  br label %cleanup

do.end177:                                        ; preds = %lor.lhs.false163
  %call183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %109, i32 noundef %111) #12
  %mon1_modedb184 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 33
  %113 = ptrtoint ptr %mon1_modedb184 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mon1_modedb184, align 4
  %mon1_dbsize185 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 34
  %115 = ptrtoint ptr %mon1_dbsize185 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %mon1_dbsize185, align 8
  %117 = ptrtoint ptr %panel_info to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %panel_info, align 4
  %119 = ptrtoint ptr %yres165 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %yres165, align 4
  %call190 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %modename, i32 noundef 31, ptr noundef nonnull @.str.34, i32 noundef %118, i32 noundef %120)
  %call193 = call i32 @fb_find_mode(ptr noundef %var, ptr noundef %1, ptr noundef nonnull %modename, ptr noundef %114, i32 noundef %116, ptr noundef null, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %cmp194 = icmp eq i32 %call193, 0
  br i1 %cmp194, label %do.end198, label %if.end202

do.end198:                                        ; preds = %do.end177
  call void @__sanitizer_cov_trace_pc() #10
  %call200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #12
  %121 = ptrtoint ptr %mon1_type to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 1, ptr %mon1_type, align 4
  br label %cleanup

if.end202:                                        ; preds = %do.end177
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @radeon_var_to_panel_info(ptr noundef %rinfo, ptr noundef %var)
  br label %cleanup

cleanup:                                          ; preds = %if.end202, %do.end198, %do.end170
  %has_default_mode.1 = phi i32 [ %has_default_mode.0, %do.end170 ], [ %has_default_mode.0, %do.end198 ], [ 1, %if.end202 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %modename) #8
  br label %pickup_default

pickup_default:                                   ; preds = %cleanup, %land.lhs.true110.pickup_default_crit_edge, %if.end107.pickup_default_crit_edge
  %has_default_mode.2 = phi i32 [ %has_default_mode.0, %land.lhs.true110.pickup_default_crit_edge ], [ %has_default_mode.1, %cleanup ], [ %has_default_mode.0, %if.end107.pickup_default_crit_edge ]
  %tobool207.not = icmp eq ptr %mode_option, null
  br i1 %tobool207.not, label %if.end218, label %if.then208

if.then208:                                       ; preds = %pickup_default
  %modedb211 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 8, i32 1
  %122 = ptrtoint ptr %modedb211 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %modedb211, align 4
  %modedb_len213 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 8, i32 6
  %124 = ptrtoint ptr %modedb_len213 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %modedb_len213, align 4
  %call214 = call i32 @fb_find_mode(ptr noundef %var, ptr noundef %1, ptr noundef nonnull %mode_option, ptr noundef %123, i32 noundef %125, ptr noundef null, i32 noundef 8) #8
  %126 = or i32 %call214, %has_default_mode.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %if.then208.land.lhs.true220_crit_edge, label %if.then208.if.end250_crit_edge

if.then208.if.end250_crit_edge:                   ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end250

if.then208.land.lhs.true220_crit_edge:            ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true220

if.end218:                                        ; preds = %pickup_default
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %has_default_mode.2)
  %tobool219.not.old = icmp eq i32 %has_default_mode.2, 0
  br i1 %tobool219.not.old, label %if.end218.land.lhs.true220_crit_edge, label %if.end218.if.end250_crit_edge

if.end218.if.end250_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end250

if.end218.land.lhs.true220_crit_edge:             ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true220

land.lhs.true220:                                 ; preds = %if.end218.land.lhs.true220_crit_edge, %if.then208.land.lhs.true220_crit_edge
  %modedb222 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 8, i32 1
  %128 = ptrtoint ptr %modedb222 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %modedb222, align 4
  %cmp223.not = icmp eq ptr %129, null
  br i1 %cmp223.not, label %land.lhs.true220.if.end250_crit_edge, label %if.then224

land.lhs.true220.if.end250_crit_edge:             ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end250

if.then224:                                       ; preds = %land.lhs.true220
  %misc = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 8, i32 22
  %130 = ptrtoint ptr %misc to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %misc, align 2
  %132 = and i16 %131, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %132)
  %tobool228.not = icmp eq i16 %132, 0
  br i1 %tobool228.not, label %if.then224.if.then245_crit_edge, label %for.cond.preheader

if.then224.if.then245_crit_edge:                  ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then245

for.cond.preheader:                               ; preds = %if.then224
  %modedb_len230 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 8, i32 6
  %133 = ptrtoint ptr %modedb_len230 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %modedb_len230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp231381.not = icmp eq i32 %134, 0
  br i1 %cmp231381.not, label %for.cond.preheader.if.end250_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end250_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end250

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0382 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %flag = getelementptr %struct.fb_videomode, ptr %129, i32 %i.0382, i32 13
  %135 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %flag, align 4
  %and234 = and i32 %136, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and234)
  %tobool235.not = icmp eq i32 %and234, 0
  br i1 %tobool235.not, label %for.inc, label %if.end242

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0382, 1
  %exitcond.not = icmp eq i32 %inc, %134
  br i1 %exitcond.not, label %for.inc.if.end250_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end250_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end250

if.end242:                                        ; preds = %for.body
  %arrayidx = getelementptr %struct.fb_videomode, ptr %129, i32 %i.0382
  %cmp243.not = icmp eq ptr %arrayidx, null
  br i1 %cmp243.not, label %if.end242.if.end250_crit_edge, label %if.end242.if.then245_crit_edge

if.end242.if.then245_crit_edge:                   ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then245

if.end242.if.end250_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end250

if.then245:                                       ; preds = %if.end242.if.then245_crit_edge, %if.then224.if.then245_crit_edge
  %modedb226.1374 = phi ptr [ %arrayidx, %if.end242.if.then245_crit_edge ], [ %129, %if.then224.if.then245_crit_edge ]
  %bits_per_pixel247 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 6
  %137 = ptrtoint ptr %bits_per_pixel247 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 8, ptr %bits_per_pixel247, align 4
  %xres.i = getelementptr inbounds %struct.fb_videomode, ptr %modedb226.1374, i32 0, i32 2
  %138 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %xres.i, align 4
  %140 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %var, align 4
  %yres.i = getelementptr inbounds %struct.fb_videomode, ptr %modedb226.1374, i32 0, i32 3
  %141 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %yres.i, align 4
  %yres2.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 1
  %143 = ptrtoint ptr %yres2.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %yres2.i, align 4
  %144 = load i32, ptr %xres.i, align 4
  %xres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 2
  %145 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %xres_virtual.i, align 4
  %146 = load i32, ptr %yres.i, align 4
  %yres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 3
  %147 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %yres_virtual.i, align 4
  %xoffset.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 4
  %148 = ptrtoint ptr %xoffset.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %xoffset.i, align 4
  %yoffset.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 5
  %149 = ptrtoint ptr %yoffset.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %yoffset.i, align 4
  %pixclock.i = getelementptr inbounds %struct.fb_videomode, ptr %modedb226.1374, i32 0, i32 4
  %150 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %pixclock.i, align 4
  %pixclock5.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 17
  %152 = ptrtoint ptr %pixclock5.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %pixclock5.i, align 4
  %left_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %modedb226.1374, i32 0, i32 5
  %153 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %left_margin.i, align 4
  %left_margin6.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 18
  %155 = ptrtoint ptr %left_margin6.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %left_margin6.i, align 4
  %right_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %modedb226.1374, i32 0, i32 6
  %156 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %right_margin.i, align 4
  %right_margin7.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 19
  %158 = ptrtoint ptr %right_margin7.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %right_margin7.i, align 4
  %upper_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %modedb226.1374, i32 0, i32 7
  %159 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %upper_margin.i, align 4
  %upper_margin8.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 20
  %161 = ptrtoint ptr %upper_margin8.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %upper_margin8.i, align 4
  %lower_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %modedb226.1374, i32 0, i32 8
  %162 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %lower_margin.i, align 4
  %lower_margin9.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 21
  %164 = ptrtoint ptr %lower_margin9.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %lower_margin9.i, align 4
  %hsync_len.i = getelementptr inbounds %struct.fb_videomode, ptr %modedb226.1374, i32 0, i32 9
  %165 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %hsync_len.i, align 4
  %hsync_len10.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 22
  %167 = ptrtoint ptr %hsync_len10.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %hsync_len10.i, align 4
  %vsync_len.i = getelementptr inbounds %struct.fb_videomode, ptr %modedb226.1374, i32 0, i32 10
  %168 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %vsync_len.i, align 4
  %vsync_len11.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 23
  %170 = ptrtoint ptr %vsync_len11.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %vsync_len11.i, align 4
  %sync.i = getelementptr inbounds %struct.fb_videomode, ptr %modedb226.1374, i32 0, i32 11
  %171 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %sync.i, align 4
  %sync12.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 24
  %173 = ptrtoint ptr %sync12.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %sync12.i, align 4
  %vmode.i = getelementptr inbounds %struct.fb_videomode, ptr %modedb226.1374, i32 0, i32 12
  %174 = ptrtoint ptr %vmode.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %vmode.i, align 4
  %vmode13.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 25
  %176 = ptrtoint ptr %vmode13.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %vmode13.i, align 4
  br label %if.end250

if.end250:                                        ; preds = %if.then245, %if.end242.if.end250_crit_edge, %for.inc.if.end250_crit_edge, %for.cond.preheader.if.end250_crit_edge, %land.lhs.true220.if.end250_crit_edge, %if.end218.if.end250_crit_edge, %if.then208.if.end250_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %mode) #8
  %177 = call ptr @memset(ptr %mode, i32 255, i32 56)
  call void @fb_var_to_videomode(ptr noundef nonnull %mode, ptr noundef %var) #8
  %call253 = call i32 @fb_add_videomode(ptr noundef nonnull %mode, ptr noundef %modelist) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %mode) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_get_panel_info_BIOS(ptr noundef %rinfo) unnamed_addr #0 align 64 {
entry:
  %stmp = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %stmp) #8
  %0 = getelementptr inbounds [30 x i8], ptr %stmp, i32 0, i32 24
  %bios_seg = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 10
  %1 = call ptr @memset(ptr %stmp, i32 255, i32 30)
  %2 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios_seg, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %fp_bios_start = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 11
  %4 = ptrtoint ptr %fp_bios_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fp_bios_start, align 4
  %add = add i32 %5, 64
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !208
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bios_seg, align 8
  %9 = ptrtoint ptr %fp_bios_start to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fp_bios_start, align 4
  %add8 = add i32 %10, 64
  %add.ptr9 = getelementptr i8, ptr %8, i32 %add8
  %add.ptr10 = getelementptr i8, ptr %add.ptr9, i32 1
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr10) #8, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !209
  %conv14 = zext i8 %11 to i32
  %shl = shl nuw nsw i32 %conv14, 8
  %or = or i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool15.not = icmp eq i32 %or, 0
  br i1 %tobool15.not, label %do.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #12
  %pwr_delay = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 13
  %12 = ptrtoint ptr %pwr_delay to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 200, ptr %pwr_delay, align 4
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.059 = phi i32 [ %add24, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %13 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bios_seg, align 8
  %add24 = add nuw nsw i32 %i.059, 1
  %add25 = add nuw nsw i32 %add24, %or
  %add.ptr26 = getelementptr i8, ptr %14, i32 %add25
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr26) #8, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !210
  %arrayidx = getelementptr [30 x i8], ptr %stmp, i32 0, i32 %i.059
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx, align 1
  %exitcond.not = icmp eq i32 %add24, 24
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %0, align 1
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull %stmp) #12
  %18 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bios_seg, align 8
  %add39 = add nuw nsw i32 %or, 25
  %add.ptr40 = getelementptr i8, ptr %19, i32 %add39
  %20 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr40) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  %conv44 = zext i8 %20 to i32
  %21 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bios_seg, align 8
  %add.ptr49 = getelementptr i8, ptr %22, i32 %add39
  %add.ptr50 = getelementptr i8, ptr %add.ptr49, i32 1
  %23 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr50) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !212
  %conv54 = zext i8 %23 to i32
  %shl55 = shl nuw nsw i32 %conv54, 8
  %or56 = or i32 %shl55, %conv44
  %panel_info57 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30
  %24 = ptrtoint ptr %panel_info57 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or56, ptr %panel_info57, align 4
  %25 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bios_seg, align 8
  %add61 = add nuw nsw i32 %or, 27
  %add.ptr62 = getelementptr i8, ptr %26, i32 %add61
  %27 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr62) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !213
  %conv66 = zext i8 %27 to i32
  %28 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bios_seg, align 8
  %add.ptr71 = getelementptr i8, ptr %29, i32 %add61
  %add.ptr72 = getelementptr i8, ptr %add.ptr71, i32 1
  %30 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr72) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  %conv76 = zext i8 %30 to i32
  %shl77 = shl nuw nsw i32 %conv76, 8
  %or78 = or i32 %shl77, %conv66
  %yres = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 1
  %31 = ptrtoint ptr %yres to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or78, ptr %yres, align 4
  %32 = ptrtoint ptr %panel_info57 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %panel_info57, align 4
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %33, i32 noundef %or78) #12
  %34 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bios_seg, align 8
  %add92 = add nuw nsw i32 %or, 44
  %add.ptr93 = getelementptr i8, ptr %35, i32 %add92
  %36 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr93) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !215
  %conv97 = zext i8 %36 to i32
  %37 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bios_seg, align 8
  %add.ptr102 = getelementptr i8, ptr %38, i32 %add92
  %add.ptr103 = getelementptr i8, ptr %add.ptr102, i32 1
  %39 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr103) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  %conv107 = zext i8 %39 to i32
  %shl108 = shl nuw nsw i32 %conv107, 8
  %or109 = or i32 %shl108, %conv97
  %pwr_delay111 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 13
  %40 = ptrtoint ptr %pwr_delay111 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or109, ptr %pwr_delay111, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_get_panel_info_BIOS, %do.end124)) #8
          to label %if.then119 [label %do.end124], !srcloc !179

if.then119:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %pwr_delay111 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pwr_delay111, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.64, i32 noundef %42) #8
  br label %do.end124

do.end124:                                        ; preds = %if.then119, %for.end
  %43 = ptrtoint ptr %pwr_delay111 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pwr_delay111, align 4
  %45 = add i32 %44, -2001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2000, i32 %45)
  %46 = icmp ult i32 %45, -2000
  br i1 %46, label %if.then133, label %do.end124.if.end136_crit_edge

do.end124.if.end136_crit_edge:                    ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

if.then133:                                       ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %pwr_delay111 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2000, ptr %pwr_delay111, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.then133, %do.end124.if.end136_crit_edge
  %48 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bios_seg, align 8
  %add140 = add nuw nsw i32 %or, 46
  %add.ptr141 = getelementptr i8, ptr %49, i32 %add140
  %50 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr141) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !217
  %conv145 = zext i8 %50 to i32
  %51 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bios_seg, align 8
  %add.ptr150 = getelementptr i8, ptr %52, i32 %add140
  %add.ptr151 = getelementptr i8, ptr %add.ptr150, i32 1
  %53 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr151) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !218
  %conv155 = zext i8 %53 to i32
  %shl156 = shl nuw nsw i32 %conv155, 8
  %or157 = or i32 %shl156, %conv145
  %ref_divider = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 15
  %54 = ptrtoint ptr %ref_divider to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or157, ptr %ref_divider, align 4
  %55 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bios_seg, align 8
  %add162 = add nuw nsw i32 %or, 48
  %add.ptr163 = getelementptr i8, ptr %56, i32 %add162
  %57 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr163) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !219
  %conv167 = zext i8 %57 to i32
  %post_divider = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 16
  %58 = ptrtoint ptr %post_divider to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv167, ptr %post_divider, align 4
  %59 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bios_seg, align 8
  %add172 = add nuw nsw i32 %or, 49
  %add.ptr173 = getelementptr i8, ptr %60, i32 %add172
  %61 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr173) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !220
  %conv177 = zext i8 %61 to i32
  %62 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bios_seg, align 8
  %add.ptr182 = getelementptr i8, ptr %63, i32 %add172
  %add.ptr183 = getelementptr i8, ptr %add.ptr182, i32 1
  %64 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr183) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  %conv187 = zext i8 %64 to i32
  %shl188 = shl nuw nsw i32 %conv187, 8
  %or189 = or i32 %shl188, %conv177
  %fbk_divider = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 17
  %65 = ptrtoint ptr %fbk_divider to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or189, ptr %fbk_divider, align 4
  %66 = ptrtoint ptr %ref_divider to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ref_divider, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp193.not = icmp ne i32 %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %or189)
  %cmp197 = icmp ugt i32 %or189, 3
  %or.cond1 = select i1 %cmp193.not, i1 %cmp197, i1 false
  br i1 %or.cond1, label %if.then199, label %if.end136.do.body267_crit_edge

if.end136.do.body267_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body267

if.then199:                                       ; preds = %if.end136
  %use_bios_dividers = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 14
  %68 = ptrtoint ptr %use_bios_dividers to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %use_bios_dividers, align 4
  %call205 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_get_panel_info_BIOS, %do.body226)) #8
          to label %if.then220 [label %do.body226], !srcloc !179

if.then220:                                       ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %ref_divider to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ref_divider, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.68, i32 noundef %70) #8
  br label %do.body226

do.body226:                                       ; preds = %if.then220, %if.then199
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_get_panel_info_BIOS, %do.body246)) #8
          to label %if.then240 [label %do.body246], !srcloc !179

if.then240:                                       ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %post_divider to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %post_divider, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.69, i32 noundef %72) #8
  br label %do.body246

do.body246:                                       ; preds = %if.then240, %do.body226
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_get_panel_info_BIOS, %do.body267)) #8
          to label %if.then260 [label %do.body267], !srcloc !179

if.then260:                                       ; preds = %do.body246
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %fbk_divider to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fbk_divider, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.70, i32 noundef %74) #8
  br label %do.body267

do.body267:                                       ; preds = %if.then260, %do.body246, %if.end136.do.body267_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_get_panel_info_BIOS, %do.end284)) #8
          to label %if.then281 [label %do.end284], !srcloc !179

if.then281:                                       ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.71) #8
  br label %do.end284

do.end284:                                        ; preds = %if.then281, %do.body267
  %add292 = add nuw nsw i32 %or, 64
  br label %for.body288

for.body288:                                      ; preds = %for.inc822.for.body288_crit_edge, %do.end284
  %i.160 = phi i32 [ 0, %do.end284 ], [ %inc823, %for.inc822.for.body288_crit_edge ]
  %75 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bios_seg, align 8
  %mul = shl nuw i32 %i.160, 1
  %add293 = add nuw nsw i32 %add292, %mul
  %add.ptr294 = getelementptr i8, ptr %76, i32 %add293
  %77 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr294) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  %conv298 = zext i8 %77 to i32
  %78 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bios_seg, align 8
  %add.ptr305 = getelementptr i8, ptr %79, i32 1
  %add.ptr306 = getelementptr i8, ptr %add.ptr305, i32 %add293
  %80 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr306) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  %conv310 = zext i8 %80 to i32
  %shl311 = shl nuw nsw i32 %conv310, 8
  %or312 = or i32 %shl311, %conv298
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or312)
  %cmp313 = icmp eq i32 %or312, 0
  br i1 %cmp313, label %for.body288.do.body825_crit_edge, label %do.body317

for.body288.do.body825_crit_edge:                 ; preds = %for.body288
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body825

do.body317:                                       ; preds = %for.body288
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_get_panel_info_BIOS, %do.end374)) #8
          to label %if.then331 [label %do.end374], !srcloc !179

if.then331:                                       ; preds = %do.body317
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bios_seg, align 8
  %add.ptr335 = getelementptr i8, ptr %82, i32 %or312
  %83 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr335) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  %conv339 = zext i8 %83 to i32
  %84 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bios_seg, align 8
  %add.ptr343 = getelementptr i8, ptr %85, i32 1
  %add.ptr344 = getelementptr i8, ptr %add.ptr343, i32 %or312
  %86 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr344) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !225
  %conv348 = zext i8 %86 to i32
  %shl349 = shl nuw nsw i32 %conv348, 8
  %or350 = or i32 %shl349, %conv339
  %87 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bios_seg, align 8
  %add354 = add nuw nsw i32 %or312, 2
  %add.ptr355 = getelementptr i8, ptr %88, i32 %add354
  %89 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr355) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !226
  %conv359 = zext i8 %89 to i32
  %90 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bios_seg, align 8
  %add.ptr364 = getelementptr i8, ptr %91, i32 1
  %add.ptr365 = getelementptr i8, ptr %add.ptr364, i32 %add354
  %92 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr365) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %conv369 = zext i8 %92 to i32
  %shl370 = shl nuw nsw i32 %conv369, 8
  %or371 = or i32 %shl370, %conv359
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.72, i32 noundef %or350, i32 noundef %or371) #8
  br label %do.end374

do.end374:                                        ; preds = %if.then331, %do.body317
  %93 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bios_seg, align 8
  %add.ptr378 = getelementptr i8, ptr %94, i32 %or312
  %95 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr378) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %conv382 = zext i8 %95 to i32
  %96 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bios_seg, align 8
  %add.ptr386 = getelementptr i8, ptr %97, i32 1
  %add.ptr387 = getelementptr i8, ptr %add.ptr386, i32 %or312
  %98 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr387) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  %conv391 = zext i8 %98 to i32
  %shl392 = shl nuw nsw i32 %conv391, 8
  %or393 = or i32 %shl392, %conv382
  %99 = ptrtoint ptr %panel_info57 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %panel_info57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or393, i32 %100)
  %cmp396 = icmp eq i32 %or393, %100
  br i1 %cmp396, label %land.lhs.true398, label %do.end374.for.inc822_crit_edge

do.end374.for.inc822_crit_edge:                   ; preds = %do.end374
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc822

land.lhs.true398:                                 ; preds = %do.end374
  %101 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %bios_seg, align 8
  %add402 = add nuw nsw i32 %or312, 2
  %add.ptr403 = getelementptr i8, ptr %102, i32 %add402
  %103 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr403) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !230
  %conv407 = zext i8 %103 to i32
  %104 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bios_seg, align 8
  %add.ptr412 = getelementptr i8, ptr %105, i32 1
  %add.ptr413 = getelementptr i8, ptr %add.ptr412, i32 %add402
  %106 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr413) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  %conv417 = zext i8 %106 to i32
  %shl418 = shl nuw nsw i32 %conv417, 8
  %or419 = or i32 %shl418, %conv407
  %107 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or419, i32 %108)
  %cmp422 = icmp eq i32 %or419, %108
  br i1 %cmp422, label %if.then424, label %land.lhs.true398.for.inc822_crit_edge

land.lhs.true398.for.inc822_crit_edge:            ; preds = %land.lhs.true398
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc822

if.then424:                                       ; preds = %land.lhs.true398
  %109 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bios_seg, align 8
  %add428 = add nuw nsw i32 %or312, 17
  %add.ptr429 = getelementptr i8, ptr %110, i32 %add428
  %111 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr429) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %conv433 = zext i8 %111 to i32
  %112 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %bios_seg, align 8
  %add.ptr438 = getelementptr i8, ptr %113, i32 %add428
  %add.ptr439 = getelementptr i8, ptr %add.ptr438, i32 1
  %114 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr439) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !233
  %conv443 = zext i8 %114 to i32
  %shl444 = shl nuw nsw i32 %conv443, 8
  %115 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %bios_seg, align 8
  %add449 = add nuw nsw i32 %or312, 19
  %add.ptr450 = getelementptr i8, ptr %116, i32 %add449
  %117 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr450) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !234
  %conv454 = zext i8 %117 to i32
  %118 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %bios_seg, align 8
  %add.ptr459 = getelementptr i8, ptr %119, i32 %add449
  %add.ptr460 = getelementptr i8, ptr %add.ptr459, i32 1
  %120 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr460) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !235
  %conv464 = zext i8 %120 to i32
  %shl465.neg61 = mul nsw i32 %conv464, -256
  %or466.neg = or i32 %shl444, %conv433
  %or445 = sub nsw i32 %or466.neg, %conv454
  %sub = add nsw i32 %or445, %shl465.neg61
  %mul467 = shl nsw i32 %sub, 3
  %hblank = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 6
  %121 = ptrtoint ptr %hblank to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %mul467, ptr %hblank, align 4
  %122 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %bios_seg, align 8
  %add472 = add nuw nsw i32 %or312, 21
  %add.ptr473 = getelementptr i8, ptr %123, i32 %add472
  %124 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr473) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !236
  %conv477 = zext i8 %124 to i32
  %125 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %bios_seg, align 8
  %add.ptr482 = getelementptr i8, ptr %126, i32 %add472
  %add.ptr483 = getelementptr i8, ptr %add.ptr482, i32 1
  %127 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr483) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !237
  %conv487 = zext i8 %127 to i32
  %shl488 = shl nuw nsw i32 %conv487, 8
  %or489 = or i32 %shl488, %conv477
  %128 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %bios_seg, align 8
  %add.ptr494 = getelementptr i8, ptr %129, i32 %add449
  %130 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr494) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  %conv498 = zext i8 %130 to i32
  %131 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %bios_seg, align 8
  %add.ptr503 = getelementptr i8, ptr %132, i32 %add449
  %add.ptr504 = getelementptr i8, ptr %add.ptr503, i32 1
  %133 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr504) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  %conv508 = zext i8 %133 to i32
  %shl509 = shl nuw nsw i32 %conv508, 8
  %or510 = or i32 %shl509, %conv498
  %134 = xor i32 %or510, -1
  %sub512 = add nsw i32 %or489, %134
  %mul513 = shl nsw i32 %sub512, 3
  %and = and i32 %mul513, 32760
  %hOver_plus = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 4
  %135 = ptrtoint ptr %hOver_plus to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %and, ptr %hOver_plus, align 4
  %136 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %bios_seg, align 8
  %add518 = add nuw nsw i32 %or312, 23
  %add.ptr519 = getelementptr i8, ptr %137, i32 %add518
  %138 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr519) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  %conv523 = zext i8 %138 to i32
  %mul524 = shl nuw nsw i32 %conv523, 3
  %hSync_width = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 5
  %139 = ptrtoint ptr %hSync_width to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %mul524, ptr %hSync_width, align 4
  %140 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %bios_seg, align 8
  %add529 = add nuw nsw i32 %or312, 24
  %add.ptr530 = getelementptr i8, ptr %141, i32 %add529
  %142 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr530) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  %conv534 = zext i8 %142 to i32
  %143 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %bios_seg, align 8
  %add.ptr539 = getelementptr i8, ptr %144, i32 %add529
  %add.ptr540 = getelementptr i8, ptr %add.ptr539, i32 1
  %145 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr540) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !242
  %conv544 = zext i8 %145 to i32
  %shl545 = shl nuw nsw i32 %conv544, 8
  %146 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %bios_seg, align 8
  %add550 = add nuw nsw i32 %or312, 26
  %add.ptr551 = getelementptr i8, ptr %147, i32 %add550
  %148 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr551) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !243
  %conv555 = zext i8 %148 to i32
  %149 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %bios_seg, align 8
  %add.ptr560 = getelementptr i8, ptr %150, i32 %add550
  %add.ptr561 = getelementptr i8, ptr %add.ptr560, i32 1
  %151 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr561) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  %conv565 = zext i8 %151 to i32
  %shl566.neg62 = mul nsw i32 %conv565, -256
  %or567.neg = or i32 %shl545, %conv534
  %or546 = sub nsw i32 %or567.neg, %conv555
  %sub568 = add nsw i32 %or546, %shl566.neg62
  %vblank = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 9
  %152 = ptrtoint ptr %vblank to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %sub568, ptr %vblank, align 4
  %153 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %bios_seg, align 8
  %add573 = add nuw nsw i32 %or312, 28
  %add.ptr574 = getelementptr i8, ptr %154, i32 %add573
  %155 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr574) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  %conv578 = zext i8 %155 to i32
  %156 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %bios_seg, align 8
  %add.ptr583 = getelementptr i8, ptr %157, i32 %add573
  %add.ptr584 = getelementptr i8, ptr %add.ptr583, i32 1
  %158 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr584) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !246
  %conv588 = zext i8 %158 to i32
  %shl589 = shl nuw nsw i32 %conv588, 8
  %shl589.masked = and i32 %shl589, 1792
  %159 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %bios_seg, align 8
  %add.ptr596 = getelementptr i8, ptr %160, i32 %add550
  %161 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr596) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !247
  %conv600 = zext i8 %161 to i32
  %162 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %bios_seg, align 8
  %add.ptr605 = getelementptr i8, ptr %163, i32 %add550
  %add.ptr606 = getelementptr i8, ptr %add.ptr605, i32 1
  %164 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr606) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !248
  %conv610 = zext i8 %164 to i32
  %shl611.neg63 = mul nsw i32 %conv610, -256
  %or612.neg = or i32 %shl589.masked, %conv578
  %and591 = sub nsw i32 %or612.neg, %conv600
  %sub613 = add nsw i32 %and591, %shl611.neg63
  %vOver_plus = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 7
  %165 = ptrtoint ptr %vOver_plus to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %sub613, ptr %vOver_plus, align 4
  %166 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %bios_seg, align 8
  %add.ptr619 = getelementptr i8, ptr %167, i32 %add573
  %168 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr619) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !249
  %169 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %bios_seg, align 8
  %add.ptr628 = getelementptr i8, ptr %170, i32 %add573
  %add.ptr629 = getelementptr i8, ptr %add.ptr628, i32 1
  %171 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr629) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !250
  %172 = lshr i8 %171, 3
  %173 = zext i8 %172 to i32
  %vSync_width = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 8
  %174 = ptrtoint ptr %vSync_width to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %vSync_width, align 4
  %175 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %bios_seg, align 8
  %add641 = add nuw nsw i32 %or312, 9
  %add.ptr642 = getelementptr i8, ptr %176, i32 %add641
  %177 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr642) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !251
  %conv646 = zext i8 %177 to i32
  %178 = ptrtoint ptr %bios_seg to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %bios_seg, align 8
  %add.ptr651 = getelementptr i8, ptr %179, i32 %add641
  %add.ptr652 = getelementptr i8, ptr %add.ptr651, i32 1
  %180 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr652) #8, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  %conv656 = zext i8 %180 to i32
  %shl657 = shl nuw nsw i32 %conv656, 8
  %or658 = or i32 %shl657, %conv646
  %clock = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 3
  %181 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %or658, ptr %clock, align 4
  %hAct_high = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 10
  %182 = ptrtoint ptr %hAct_high to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 1, ptr %hAct_high, align 4
  %vAct_high = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 11
  %183 = ptrtoint ptr %vAct_high to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 1, ptr %vAct_high, align 4
  %valid = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 2
  %184 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 1, ptr %valid, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_get_panel_info_BIOS, %do.body681)) #8
          to label %if.then677 [label %do.body681], !srcloc !179

if.then677:                                       ; preds = %if.then424
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.73) #8
  br label %do.body681

do.body681:                                       ; preds = %if.then677, %if.then424
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_get_panel_info_BIOS, %do.body701)) #8
          to label %if.then695 [label %do.body701], !srcloc !179

if.then695:                                       ; preds = %do.body681
  call void @__sanitizer_cov_trace_pc() #10
  %185 = ptrtoint ptr %hblank to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %hblank, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.74, i32 noundef %186) #8
  br label %do.body701

do.body701:                                       ; preds = %if.then695, %do.body681
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_get_panel_info_BIOS, %do.body721)) #8
          to label %if.then715 [label %do.body721], !srcloc !179

if.then715:                                       ; preds = %do.body701
  call void @__sanitizer_cov_trace_pc() #10
  %187 = ptrtoint ptr %hOver_plus to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %hOver_plus, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.75, i32 noundef %188) #8
  br label %do.body721

do.body721:                                       ; preds = %if.then715, %do.body701
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_get_panel_info_BIOS, %do.body741)) #8
          to label %if.then735 [label %do.body741], !srcloc !179

if.then735:                                       ; preds = %do.body721
  call void @__sanitizer_cov_trace_pc() #10
  %189 = ptrtoint ptr %hSync_width to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %hSync_width, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.76, i32 noundef %190) #8
  br label %do.body741

do.body741:                                       ; preds = %if.then735, %do.body721
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_get_panel_info_BIOS, %do.body761)) #8
          to label %if.then755 [label %do.body761], !srcloc !179

if.then755:                                       ; preds = %do.body741
  call void @__sanitizer_cov_trace_pc() #10
  %191 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %vblank, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.77, i32 noundef %192) #8
  br label %do.body761

do.body761:                                       ; preds = %if.then755, %do.body741
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_get_panel_info_BIOS, %do.body781)) #8
          to label %if.then775 [label %do.body781], !srcloc !179

if.then775:                                       ; preds = %do.body761
  call void @__sanitizer_cov_trace_pc() #10
  %193 = ptrtoint ptr %vOver_plus to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %vOver_plus, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.78, i32 noundef %194) #8
  br label %do.body781

do.body781:                                       ; preds = %if.then775, %do.body761
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_get_panel_info_BIOS, %do.body801)) #8
          to label %if.then795 [label %do.body801], !srcloc !179

if.then795:                                       ; preds = %do.body781
  call void @__sanitizer_cov_trace_pc() #10
  %195 = ptrtoint ptr %vSync_width to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %vSync_width, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.79, i32 noundef %196) #8
  br label %do.body801

do.body801:                                       ; preds = %if.then795, %do.body781
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_get_panel_info_BIOS, %cleanup)) #8
          to label %if.then815 [label %cleanup], !srcloc !179

if.then815:                                       ; preds = %do.body801
  call void @__sanitizer_cov_trace_pc() #10
  %197 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %clock, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.80, i32 noundef %198) #8
  br label %cleanup

for.inc822:                                       ; preds = %land.lhs.true398.for.inc822_crit_edge, %do.end374.for.inc822_crit_edge
  %inc823 = add nuw nsw i32 %i.160, 1
  %exitcond65.not = icmp eq i32 %inc823, 32
  br i1 %exitcond65.not, label %for.inc822.do.body825_crit_edge, label %for.inc822.for.body288_crit_edge

for.inc822.for.body288_crit_edge:                 ; preds = %for.inc822
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body288

for.inc822.do.body825_crit_edge:                  ; preds = %for.inc822
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body825

do.body825:                                       ; preds = %for.inc822.do.body825_crit_edge, %for.body288.do.body825_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_get_panel_info_BIOS, %cleanup)) #8
          to label %if.then839 [label %cleanup], !srcloc !179

if.then839:                                       ; preds = %do.body825
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.81) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then839, %do.body825, %if.then815, %do.body801, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %stmp) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_parse_edid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @radeon_var_to_panel_info(ptr nocapture noundef writeonly %rinfo, ptr nocapture noundef readonly %var) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %var, align 4
  %panel_info = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30
  %2 = ptrtoint ptr %panel_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %panel_info, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %3 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %yres, align 4
  %yres3 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 1
  %5 = ptrtoint ptr %yres3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %yres3, align 4
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %6 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixclock, align 4
  %div = udiv i32 100000000, %7
  %clock = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 3
  %8 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div, ptr %clock, align 4
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %9 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %right_margin, align 4
  %hOver_plus = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 4
  %11 = ptrtoint ptr %hOver_plus to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %hOver_plus, align 4
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %12 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hsync_len, align 4
  %hSync_width = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 5
  %14 = ptrtoint ptr %hSync_width to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %hSync_width, align 4
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %15 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %left_margin, align 4
  %17 = load i32, ptr %right_margin, align 4
  %18 = load i32, ptr %hsync_len, align 4
  %add = add i32 %17, %16
  %add9 = add i32 %add, %18
  %hblank = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 6
  %19 = ptrtoint ptr %hblank to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add9, ptr %hblank, align 4
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %20 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lower_margin, align 4
  %vOver_plus = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 7
  %22 = ptrtoint ptr %vOver_plus to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %vOver_plus, align 4
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %23 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vsync_len, align 4
  %vSync_width = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 8
  %25 = ptrtoint ptr %vSync_width to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %vSync_width, align 4
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %26 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %upper_margin, align 4
  %28 = load i32, ptr %lower_margin, align 4
  %29 = load i32, ptr %vsync_len, align 4
  %add15 = add i32 %28, %27
  %add16 = add i32 %add15, %29
  %vblank = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 9
  %30 = ptrtoint ptr %vblank to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add16, ptr %vblank, align 4
  %sync = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %31 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sync, align 4
  %and = and i32 %32, 1
  %hAct_high = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 10
  %33 = ptrtoint ptr %hAct_high to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and, ptr %hAct_high, align 4
  %34 = load i32, ptr %sync, align 4
  %and20 = lshr i32 %34, 1
  %and20.lobit = and i32 %and20, 1
  %vAct_high = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 11
  %35 = ptrtoint ptr %vAct_high to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and20.lobit, ptr %vAct_high, align 4
  %valid = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 2
  %36 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %valid, align 4
  %pwr_delay = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 30, i32 13
  %37 = ptrtoint ptr %pwr_delay to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 200, ptr %pwr_delay, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_edid_to_monspecs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_modelist(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_var_to_videomode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_add_videomode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_match_mode(ptr nocapture noundef readonly %rinfo, ptr nocapture noundef writeonly %dest, ptr noundef %src) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %dest, ptr %src, i32 160)
  %mon1_modedb = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 33
  %1 = ptrtoint ptr %mon1_modedb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mon1_modedb, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mon1_dbsize = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 34
  %3 = ptrtoint ptr %mon1_dbsize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mon1_dbsize, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %db.0 = phi ptr [ %2, %if.then ], [ @vesa_modes, %entry.if.end_crit_edge ]
  %dbsize.0 = phi i32 [ %4, %if.then ], [ 34, %entry.if.end_crit_edge ]
  %native_db.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %mon1_type = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 31
  %5 = ptrtoint ptr %mon1_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mon1_type, align 4
  %activate = getelementptr inbounds %struct.fb_var_screeninfo, ptr %src, i32 0, i32 13
  %7 = ptrtoint ptr %activate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %activate, align 4
  %and = and i32 %8, 15
  %9 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %and, label %while.cond.preheader [
    i32 2, label %if.end.if.then8_crit_edge
    i32 0, label %if.end.if.then8_crit_edge100
  ]

if.end.if.then8_crit_edge100:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

while.cond.preheader:                             ; preds = %if.end
  %yres20 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %src, i32 0, i32 1
  %10 = and i32 %6, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %switch83 = icmp ne i32 %10, 2
  br label %for.cond.preheader

if.then8:                                         ; preds = %if.end.if.then8_crit_edge, %if.end.if.then8_crit_edge100
  %11 = and i32 %6, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %switch = icmp eq i32 %11, 2
  %brmerge = select i1 %switch, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.then8.if.end16_crit_edge, label %if.then12

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then12:                                        ; preds = %if.then8
  %12 = ptrtoint ptr %rinfo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rinfo, align 8
  %call = tail call i32 @fb_validate_mode(ptr noundef %src, ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool13.not = icmp eq i32 %call, 0
  br i1 %tobool13.not, label %if.then12.if.end16_crit_edge, label %if.then12.cleanup46_crit_edge

if.then12.cleanup46_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup46

if.then12.if.end16_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end16:                                         ; preds = %if.then12.if.end16_crit_edge, %if.then8.if.end16_crit_edge
  br label %cleanup46

for.cond.preheader:                               ; preds = %for.end.for.cond.preheader_crit_edge, %while.cond.preheader
  %candidate.098 = phi ptr [ null, %while.cond.preheader ], [ %candidate.1.lcssa, %for.end.for.cond.preheader_crit_edge ]
  %distance.097 = phi i32 [ 2147483647, %while.cond.preheader ], [ %distance.1.lcssa, %for.end.for.cond.preheader_crit_edge ]
  %native_db.196 = phi i32 [ %native_db.0, %while.cond.preheader ], [ %native_db.2, %for.end.for.cond.preheader_crit_edge ]
  %dbsize.195 = phi i32 [ %dbsize.0, %while.cond.preheader ], [ 34, %for.end.for.cond.preheader_crit_edge ]
  %db.194 = phi ptr [ %db.0, %while.cond.preheader ], [ @vesa_modes, %for.end.for.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dbsize.195)
  %cmp1988 = icmp sgt i32 %dbsize.195, 0
  br i1 %cmp1988, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %14 = ptrtoint ptr %yres20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %yres20, align 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %candidate.192 = phi ptr [ %candidate.098, %for.body.lr.ph ], [ %candidate.3, %cleanup.for.body_crit_edge ]
  %distance.191 = phi i32 [ %distance.097, %for.body.lr.ph ], [ %distance.3, %cleanup.for.body_crit_edge ]
  %i.089 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fb_videomode, ptr %db.194, i32 %i.089
  %yres = getelementptr %struct.fb_videomode, ptr %db.194, i32 %i.089, i32 3
  %16 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp21 = icmp ult i32 %17, %15
  br i1 %cmp21, label %for.body.cleanup_crit_edge, label %if.end23

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %for.body
  %xres = getelementptr %struct.fb_videomode, ptr %db.194, i32 %i.089, i32 2
  %18 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xres, align 4
  %20 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp26 = icmp ult i32 %19, %21
  br i1 %cmp26, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %yres, align 4
  %sub.i = sub i32 %23, %15
  %24 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xres, align 4
  %sub3.i = sub i32 %25, %21
  %div7.i = lshr i32 %sub3.i, 1
  %add.i = add i32 %div7.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %distance.191)
  %cmp31 = icmp slt i32 %add.i, %distance.191
  %26 = tail call i32 @llvm.smin.i32(i32 %add.i, i32 %distance.191)
  %spec.select81 = select i1 %cmp31, ptr %arrayidx, ptr %candidate.192
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end23.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %distance.3 = phi i32 [ %26, %if.end28 ], [ %distance.191, %for.body.cleanup_crit_edge ], [ %distance.191, %if.end23.cleanup_crit_edge ]
  %candidate.3 = phi ptr [ %spec.select81, %if.end28 ], [ %candidate.192, %for.body.cleanup_crit_edge ], [ %candidate.192, %if.end23.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc, %dbsize.195
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %distance.1.lcssa = phi i32 [ %distance.097, %for.cond.preheader.for.end_crit_edge ], [ %distance.3, %cleanup.for.end_crit_edge ]
  %candidate.1.lcssa = phi ptr [ %candidate.098, %for.cond.preheader.for.end_crit_edge ], [ %candidate.3, %cleanup.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %native_db.196)
  %tobool35.not = icmp eq i32 %native_db.196, 0
  %brmerge99 = select i1 %tobool35.not, i1 true, i1 %switch83
  %not.tobool35.not = xor i1 %tobool35.not, true
  %narrow = and i1 %brmerge99, %not.tobool35.not
  %native_db.2 = zext i1 %narrow to i32
  br i1 %brmerge99, label %while.end, label %for.end.for.cond.preheader_crit_edge

for.end.for.cond.preheader_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

while.end:                                        ; preds = %for.end
  %cmp40.not = icmp eq ptr %candidate.1.lcssa, null
  br i1 %cmp40.not, label %if.end42, label %if.then41

if.then41:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %xres.i86 = getelementptr inbounds %struct.fb_videomode, ptr %candidate.1.lcssa, i32 0, i32 2
  %27 = ptrtoint ptr %xres.i86 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %xres.i86, align 4
  %29 = ptrtoint ptr %dest to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %dest, align 4
  %yres.i87 = getelementptr inbounds %struct.fb_videomode, ptr %candidate.1.lcssa, i32 0, i32 3
  %30 = ptrtoint ptr %yres.i87 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %yres.i87, align 4
  %yres2.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %dest, i32 0, i32 1
  %32 = ptrtoint ptr %yres2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %yres2.i, align 4
  %33 = load i32, ptr %xres.i86, align 4
  %xres_virtual.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %dest, i32 0, i32 2
  %34 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %xres_virtual.i, align 4
  %35 = load i32, ptr %yres.i87, align 4
  %yres_virtual.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %dest, i32 0, i32 3
  %36 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %yres_virtual.i, align 4
  %xoffset.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %dest, i32 0, i32 4
  %37 = ptrtoint ptr %xoffset.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %xoffset.i, align 4
  %yoffset.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %dest, i32 0, i32 5
  %38 = ptrtoint ptr %yoffset.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %yoffset.i, align 4
  %pixclock.i = getelementptr inbounds %struct.fb_videomode, ptr %candidate.1.lcssa, i32 0, i32 4
  %39 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pixclock.i, align 4
  %pixclock5.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %dest, i32 0, i32 17
  %41 = ptrtoint ptr %pixclock5.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %pixclock5.i, align 4
  %left_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %candidate.1.lcssa, i32 0, i32 5
  %42 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %left_margin.i, align 4
  %left_margin6.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %dest, i32 0, i32 18
  %44 = ptrtoint ptr %left_margin6.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %left_margin6.i, align 4
  %right_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %candidate.1.lcssa, i32 0, i32 6
  %45 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %right_margin.i, align 4
  %right_margin7.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %dest, i32 0, i32 19
  %47 = ptrtoint ptr %right_margin7.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %right_margin7.i, align 4
  %upper_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %candidate.1.lcssa, i32 0, i32 7
  %48 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %upper_margin.i, align 4
  %upper_margin8.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %dest, i32 0, i32 20
  %50 = ptrtoint ptr %upper_margin8.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %upper_margin8.i, align 4
  %lower_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %candidate.1.lcssa, i32 0, i32 8
  %51 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %lower_margin.i, align 4
  %lower_margin9.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %dest, i32 0, i32 21
  %53 = ptrtoint ptr %lower_margin9.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %lower_margin9.i, align 4
  %hsync_len.i = getelementptr inbounds %struct.fb_videomode, ptr %candidate.1.lcssa, i32 0, i32 9
  %54 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hsync_len.i, align 4
  %hsync_len10.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %dest, i32 0, i32 22
  %56 = ptrtoint ptr %hsync_len10.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %hsync_len10.i, align 4
  %vsync_len.i = getelementptr inbounds %struct.fb_videomode, ptr %candidate.1.lcssa, i32 0, i32 10
  %57 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %vsync_len.i, align 4
  %vsync_len11.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %dest, i32 0, i32 23
  %59 = ptrtoint ptr %vsync_len11.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %vsync_len11.i, align 4
  %sync.i = getelementptr inbounds %struct.fb_videomode, ptr %candidate.1.lcssa, i32 0, i32 11
  %60 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sync.i, align 4
  %sync12.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %dest, i32 0, i32 24
  %62 = ptrtoint ptr %sync12.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %sync12.i, align 4
  %vmode.i = getelementptr inbounds %struct.fb_videomode, ptr %candidate.1.lcssa, i32 0, i32 12
  %63 = ptrtoint ptr %vmode.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %vmode.i, align 4
  %vmode13.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %dest, i32 0, i32 25
  %65 = ptrtoint ptr %vmode13.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %vmode13.i, align 4
  br label %cleanup46

if.end42:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %switch85 = icmp eq i32 %10, 2
  %spec.select = select i1 %switch85, i32 0, i32 -22
  br label %cleanup46

cleanup46:                                        ; preds = %if.end42, %if.then41, %if.end16, %if.then12.cleanup46_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ 0, %if.then41 ], [ -22, %if.then12.cleanup46_crit_edge ], [ %spec.select, %if.end42 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_validate_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__INPLL(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__OUTPLLP(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !44, !46, !47, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !85, !86, !88, !89, !91, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !126, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !169}
!llvm.module.flags = !{!170, !171, !172, !173, !174, !175, !176, !177}
!llvm.ident = !{!178}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 456, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @radeon_probe_screens.__UNIQUE_ID_ddebug323, !1, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 476, i32 5}
!8 = !{ptr @radeon_probe_screens._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @radeon_probe_screens._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 486, i32 3}
!12 = !{ptr @radeon_probe_screens.__UNIQUE_ID_ddebug324, !11, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 538, i32 6}
!15 = !{ptr @radeon_probe_screens._entry.6, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @radeon_probe_screens._entry_ptr.8, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 542, i32 6}
!19 = !{ptr @radeon_probe_screens._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @radeon_probe_screens._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 570, i32 4}
!23 = !{ptr @radeon_probe_screens._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @radeon_probe_screens._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 634, i32 2}
!27 = !{ptr @radeon_probe_screens._entry.15, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @radeon_probe_screens._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 637, i32 3}
!31 = !{ptr @radeon_probe_screens._entry.18, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @radeon_probe_screens._entry_ptr.20, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 640, i32 2}
!35 = !{ptr @radeon_probe_screens._entry.21, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @radeon_probe_screens._entry_ptr.23, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @radeon_probe_screens._entry.24, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 643, i32 3}
!39 = !{ptr @radeon_probe_screens._entry_ptr.25, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 780, i32 3}
!42 = !{ptr @.str.27, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @radeon_check_modes.__UNIQUE_ID_ddebug325, !41, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 800, i32 3}
!46 = !{ptr @radeon_check_modes.__UNIQUE_ID_ddebug326, !45, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!47 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 848, i32 3}
!49 = !{ptr @radeon_check_modes.__UNIQUE_ID_ddebug327, !48, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!50 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 856, i32 4}
!52 = !{ptr @radeon_check_modes._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @radeon_check_modes._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 860, i32 3}
!56 = !{ptr @radeon_check_modes._entry.31, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @radeon_check_modes._entry_ptr.33, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 864, i32 26}
!60 = !{ptr @.str.36, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 867, i32 4}
!62 = !{ptr @radeon_check_modes._entry.35, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @radeon_check_modes._entry_ptr.37, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 260, i32 3}
!66 = !{ptr @.str.39, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 260, i32 11}
!68 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 260, i32 26}
!70 = !{ptr @.str.41, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 260, i32 33}
!72 = !{ptr @.str.42, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 260, i32 42}
!74 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 260, i32 51}
!76 = !{ptr @radeon_parse_connector_info.__conn_type_table, !77, !"__conn_type_table", i1 false, i1 false}
!77 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 259, i32 15}
!78 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 270, i32 3}
!80 = !{ptr @.str.45, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @radeon_parse_connector_info._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @radeon_parse_connector_info._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 278, i32 2}
!85 = !{ptr @radeon_parse_connector_info.__UNIQUE_ID_ddebug320, !84, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 282, i32 3}
!88 = !{ptr @radeon_parse_connector_info.__UNIQUE_ID_ddebug321, !87, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!89 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 289, i32 4}
!91 = !{ptr @radeon_parse_connector_info.__UNIQUE_ID_ddebug322, !90, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 416, i32 22}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 418, i32 22}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 36, i32 11}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 42, i32 11}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 45, i32 11}
!102 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 48, i32 11}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 51, i32 11}
!106 = !{ptr @radeonfb_default_var, !107, !"radeonfb_default_var", i1 false, i1 false}
!107 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 8, i32 39}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 177, i32 3}
!110 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @radeon_get_panel_info_BIOS._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @radeon_get_panel_info_BIOS._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 185, i32 2}
!115 = !{ptr @radeon_get_panel_info_BIOS._entry.58, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @radeon_get_panel_info_BIOS._entry_ptr.60, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 188, i32 2}
!119 = !{ptr @radeon_get_panel_info_BIOS._entry.61, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @radeon_get_panel_info_BIOS._entry_ptr.63, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 192, i32 2}
!123 = !{ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug305, !122, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!124 = !{ptr @.str.66, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 205, i32 3}
!126 = !{ptr @radeon_get_panel_info_BIOS._entry.65, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @radeon_get_panel_info_BIOS._entry_ptr.67, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 206, i32 3}
!130 = !{ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug306, !129, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!131 = !{ptr @.str.69, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 207, i32 3}
!133 = !{ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug307, !132, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!134 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 208, i32 3}
!136 = !{ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug308, !135, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!137 = !{ptr @.str.71, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 210, i32 2}
!139 = !{ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug309, !138, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!140 = !{ptr @.str.72, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 215, i32 3}
!142 = !{ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug310, !141, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!143 = !{ptr @.str.73, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 234, i32 4}
!145 = !{ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug311, !144, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!146 = !{ptr @.str.74, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 235, i32 4}
!148 = !{ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug312, !147, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!149 = !{ptr @.str.75, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 236, i32 4}
!151 = !{ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug313, !150, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 237, i32 4}
!154 = !{ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug314, !153, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!155 = !{ptr @.str.77, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 238, i32 4}
!157 = !{ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug315, !156, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!158 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 239, i32 4}
!160 = !{ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug316, !159, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!161 = !{ptr @.str.79, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 240, i32 4}
!163 = !{ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug317, !162, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!164 = !{ptr @.str.80, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 241, i32 4}
!166 = !{ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug318, !165, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!167 = !{ptr @.str.81, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/video/fbdev/aty/radeon_monitor.c", i32 246, i32 2}
!169 = !{ptr @radeon_get_panel_info_BIOS.__UNIQUE_ID_ddebug319, !168, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!170 = !{i32 1, !"wchar_size", i32 2}
!171 = !{i32 1, !"min_enum_size", i32 4}
!172 = !{i32 8, !"branch-target-enforcement", i32 0}
!173 = !{i32 8, !"sign-return-address", i32 0}
!174 = !{i32 8, !"sign-return-address-all", i32 0}
!175 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!176 = !{i32 7, !"uwtable", i32 1}
!177 = !{i32 7, !"frame-pointer", i32 2}
!178 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!179 = !{i64 2148995423, i64 2148995428, i64 2148995441, i64 2148995485, i64 2148995519, i64 2148995540}
!180 = !{i64 5029799}
!181 = !{i64 2156437747}
!182 = !{i64 2156438051}
!183 = !{i64 2156438352}
!184 = !{i64 2156438712}
!185 = !{i64 2156438980}
!186 = !{i64 5030019}
!187 = !{i64 2156442517}
!188 = !{i64 2156443084}
!189 = !{i64 2156413697}
!190 = !{i64 2156414001}
!191 = !{i64 2156415844}
!192 = !{i64 2156418450}
!193 = !{i64 2156421184}
!194 = !{i64 2156421446}
!195 = !{i64 2156424720}
!196 = !{i64 2156425014}
!197 = !{i64 5029601}
!198 = !{i64 2156425774}
!199 = !{i64 2156426100}
!200 = !{i64 2156426860}
!201 = !{i64 2156427169}
!202 = !{i64 2156429217}
!203 = !{i64 2156429590}
!204 = !{i64 2156430115}
!205 = !{i64 2156430654}
!206 = !{i64 2156458074}
!207 = !{i64 2156458658}
!208 = !{i64 2156354929}
!209 = !{i64 2156355233}
!210 = !{i64 2156357133}
!211 = !{i64 2156358880}
!212 = !{i64 2156359146}
!213 = !{i64 2156359502}
!214 = !{i64 2156359768}
!215 = !{i64 2156361731}
!216 = !{i64 2156361997}
!217 = !{i64 2156368891}
!218 = !{i64 2156369157}
!219 = !{i64 2156369455}
!220 = !{i64 2156369811}
!221 = !{i64 2156370077}
!222 = !{i64 2156381214}
!223 = !{i64 2156381484}
!224 = !{i64 2156384086}
!225 = !{i64 2156384344}
!226 = !{i64 2156384692}
!227 = !{i64 2156384954}
!228 = !{i64 2156385294}
!229 = !{i64 2156385552}
!230 = !{i64 2156385900}
!231 = !{i64 2156386162}
!232 = !{i64 2156386514}
!233 = !{i64 2156386778}
!234 = !{i64 2156387130}
!235 = !{i64 2156387394}
!236 = !{i64 2156387746}
!237 = !{i64 2156388010}
!238 = !{i64 2156388362}
!239 = !{i64 2156388626}
!240 = !{i64 2156388921}
!241 = !{i64 2156389273}
!242 = !{i64 2156389537}
!243 = !{i64 2156389889}
!244 = !{i64 2156390153}
!245 = !{i64 2156390505}
!246 = !{i64 2156390769}
!247 = !{i64 2156391121}
!248 = !{i64 2156391385}
!249 = !{i64 2156391737}
!250 = !{i64 2156392001}
!251 = !{i64 2156392349}
!252 = !{i64 2156392611}
