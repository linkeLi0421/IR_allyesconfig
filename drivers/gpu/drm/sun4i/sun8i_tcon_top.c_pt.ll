; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sun4i/sun8i_tcon_top.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun8i_tcon_top.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sun8i_tcon_top_set_hdmi_src\22, \22a\22\09"
module asm "\09.weak\09__crc_sun8i_tcon_top_set_hdmi_src\09\09\09\09"
module asm "\09.long\09__crc_sun8i_tcon_top_set_hdmi_src\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun8i_tcon_top_set_hdmi_src:\09\09\09\09\09"
module asm "\09.asciz \09\22sun8i_tcon_top_set_hdmi_src\22\09\09\09\09\09"
module asm "__kstrtabns_sun8i_tcon_top_set_hdmi_src:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sun8i_tcon_top_de_config\22, \22a\22\09"
module asm "\09.weak\09__crc_sun8i_tcon_top_de_config\09\09\09\09"
module asm "\09.long\09__crc_sun8i_tcon_top_de_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun8i_tcon_top_de_config:\09\09\09\09\09"
module asm "\09.asciz \09\22sun8i_tcon_top_de_config\22\09\09\09\09\09"
module asm "__kstrtabns_sun8i_tcon_top_de_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sun8i_tcon_top_of_table\22, \22a\22\09"
module asm "\09.weak\09__crc_sun8i_tcon_top_of_table\09\09\09\09"
module asm "\09.long\09__crc_sun8i_tcon_top_of_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun8i_tcon_top_of_table:\09\09\09\09\09"
module asm "\09.asciz \09\22sun8i_tcon_top_of_table\22\09\09\09\09\09"
module asm "__kstrtabns_sun8i_tcon_top_of_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sun8i_tcon_top_quirks = type { i8, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.sun8i_tcon_top = type { ptr, ptr, ptr, ptr, %struct.spinlock }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@sun8i_tcon_top_set_hdmi_src._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 35, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Device is not TCON TOP!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sun8i_tcon_top_set_hdmi_src\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/sun4i/sun8i_tcon_top.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun8i_tcon_top_set_hdmi_src._entry_ptr = internal global ptr @sun8i_tcon_top_set_hdmi_src._entry, section ".printk_index", align 4
@sun8i_tcon_top_set_hdmi_src._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 40, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"TCON index must be 2 or 3!\0A\00", [36 x i8] zeroinitializer }, align 32
@sun8i_tcon_top_set_hdmi_src._entry_ptr.7 = internal global ptr @sun8i_tcon_top_set_hdmi_src._entry.5, section ".printk_index", align 4
@__kstrtab_sun8i_tcon_top_set_hdmi_src = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun8i_tcon_top_set_hdmi_src = external dso_local constant [0 x i8], align 1
@__ksymtab_sun8i_tcon_top_set_hdmi_src = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun8i_tcon_top_set_hdmi_src to i32), ptr @__kstrtab_sun8i_tcon_top_set_hdmi_src, ptr @__kstrtabns_sun8i_tcon_top_set_hdmi_src }, section "___ksymtab+sun8i_tcon_top_set_hdmi_src", align 4
@sun8i_tcon_top_de_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 64, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sun8i_tcon_top_de_config\00", [39 x i8] zeroinitializer }, align 32
@sun8i_tcon_top_de_config._entry_ptr = internal global ptr @sun8i_tcon_top_de_config._entry, section ".printk_index", align 4
@sun8i_tcon_top_de_config._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 69, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Mixer index is too high!\0A\00", [38 x i8] zeroinitializer }, align 32
@sun8i_tcon_top_de_config._entry_ptr.11 = internal global ptr @sun8i_tcon_top_de_config._entry.9, section ".printk_index", align 4
@sun8i_tcon_top_de_config._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 74, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TCON index is too high!\0A\00", [39 x i8] zeroinitializer }, align 32
@sun8i_tcon_top_de_config._entry_ptr.14 = internal global ptr @sun8i_tcon_top_de_config._entry.12, section ".printk_index", align 4
@__kstrtab_sun8i_tcon_top_de_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun8i_tcon_top_de_config = external dso_local constant [0 x i8], align 1
@__ksymtab_sun8i_tcon_top_de_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun8i_tcon_top_de_config to i32), ptr @__kstrtab_sun8i_tcon_top_de_config, ptr @__kstrtabns_sun8i_tcon_top_de_config }, section "___ksymtab+sun8i_tcon_top_de_config", align 4
@sun8i_r40_tcon_top_quirks = internal constant { %struct.sun8i_tcon_top_quirks, [30 x i8] } { %struct.sun8i_tcon_top_quirks { i8 1, i8 1 }, [30 x i8] zeroinitializer }, align 32
@sun50i_h6_tcon_top_quirks = internal constant { %struct.sun8i_tcon_top_quirks, [30 x i8] } zeroinitializer, align 32
@sun8i_tcon_top_of_table = dso_local constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-r40-tcon-top\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_r40_tcon_top_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-tcon-top\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h6_tcon_top_quirks }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@__kstrtab_sun8i_tcon_top_of_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun8i_tcon_top_of_table = external dso_local constant [0 x i8], align 1
@__ksymtab_sun8i_tcon_top_of_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun8i_tcon_top_of_table to i32), ptr @__kstrtab_sun8i_tcon_top_of_table, ptr @__kstrtabns_sun8i_tcon_top_of_table }, section "___ksymtab+sun8i_tcon_top_of_table", align 4
@__initcall__kmod_sun8i_tcon_top__185_302_sun8i_tcon_top_platform_driver_init6 = internal global ptr @sun8i_tcon_top_platform_driver_init, section ".initcall6.init", align 4
@sun8i_tcon_top_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun8i_tcon_top_probe, ptr @sun8i_tcon_top_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.15, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun8i_tcon_top_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun8i_tcon_top_platform_driver_exit = internal global ptr @sun8i_tcon_top_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author186 = internal constant [63 x i8] c"sun8i_tcon_top.author=Jernej Skrabec <jernej.skrabec@siol.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description187 = internal constant [57 x i8] c"sun8i_tcon_top.description=Allwinner R40 TCON TOP driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file188 = internal constant [57 x i8] c"sun8i_tcon_top.file=drivers/gpu/drm/sun4i/sun8i_tcon_top\00", section ".modinfo", align 1
@__UNIQUE_ID_license189 = internal constant [27 x i8] c"sun8i_tcon_top.license=GPL\00", section ".modinfo", align 1
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sun8i-tcon-top\00", [17 x i8] zeroinitializer }, align 32
@sun8i_tcon_top_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @sun8i_tcon_top_bind, ptr @sun8i_tcon_top_unbind }, [24 x i8] zeroinitializer }, align 32
@sun8i_tcon_top_bind.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&tcon_top->reg_lock\00", [44 x i8] zeroinitializer }, align 32
@sun8i_tcon_top_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 150, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't get our reset line\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sun8i_tcon_top_bind\00", [44 x i8] zeroinitializer }, align 32
@sun8i_tcon_top_bind._entry_ptr = internal global ptr @sun8i_tcon_top_bind._entry, section ".printk_index", align 4
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@sun8i_tcon_top_bind._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.2, i32 156, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't get the bus clock\0A\00", [36 x i8] zeroinitializer }, align 32
@sun8i_tcon_top_bind._entry_ptr.22 = internal global ptr @sun8i_tcon_top_bind._entry.20, section ".printk_index", align 4
@sun8i_tcon_top_bind._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.18, ptr @.str.2, i32 167, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Could not deassert ctrl reset control\0A\00", [57 x i8] zeroinitializer }, align 32
@sun8i_tcon_top_bind._entry_ptr.25 = internal global ptr @sun8i_tcon_top_bind._entry.23, section ".printk_index", align 4
@sun8i_tcon_top_bind._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.18, ptr @.str.2, i32 173, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not enable bus clock\0A\00", [36 x i8] zeroinitializer }, align 32
@sun8i_tcon_top_bind._entry_ptr.28 = internal global ptr @sun8i_tcon_top_bind._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tcon-tv0\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tcon-tv1\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dsi\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clock-names\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 35, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 40, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 64, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 69, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 74, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [26 x i8] c"sun8i_r40_tcon_top_quirks\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 270, i32 43 }
@___asan_gen_.79 = private unnamed_addr constant [26 x i8] c"sun50i_h6_tcon_top_quirks\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 275, i32 43 }
@___asan_gen_.82 = private unnamed_addr constant [24 x i8] c"sun8i_tcon_top_of_table\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 280, i32 27 }
@___asan_gen_.85 = private unnamed_addr constant [31 x i8] c"sun8i_tcon_top_platform_driver\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 294, i32 31 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 298, i32 12 }
@___asan_gen_.91 = private unnamed_addr constant [19 x i8] c"sun8i_tcon_top_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 253, i32 35 }
@___asan_gen_.94 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 146, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 150, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 154, i32 36 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 156, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 167, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 173, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 193, i32 37 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 199, i32 38 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 205, i32 38 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 106, i32 49 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private constant [42 x i8] c"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 113, i32 10 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author186, ptr @__UNIQUE_ID_description187, ptr @__UNIQUE_ID_file188, ptr @__UNIQUE_ID_license189, ptr @__exitcall_sun8i_tcon_top_platform_driver_exit, ptr @__initcall__kmod_sun8i_tcon_top__185_302_sun8i_tcon_top_platform_driver_init6, ptr @__ksymtab_sun8i_tcon_top_de_config, ptr @__ksymtab_sun8i_tcon_top_of_table, ptr @__ksymtab_sun8i_tcon_top_set_hdmi_src, ptr @sun8i_tcon_top_bind._entry, ptr @sun8i_tcon_top_bind._entry.20, ptr @sun8i_tcon_top_bind._entry.23, ptr @sun8i_tcon_top_bind._entry.26, ptr @sun8i_tcon_top_bind._entry_ptr, ptr @sun8i_tcon_top_bind._entry_ptr.22, ptr @sun8i_tcon_top_bind._entry_ptr.25, ptr @sun8i_tcon_top_bind._entry_ptr.28, ptr @sun8i_tcon_top_de_config._entry, ptr @sun8i_tcon_top_de_config._entry.12, ptr @sun8i_tcon_top_de_config._entry.9, ptr @sun8i_tcon_top_de_config._entry_ptr, ptr @sun8i_tcon_top_de_config._entry_ptr.11, ptr @sun8i_tcon_top_de_config._entry_ptr.14, ptr @sun8i_tcon_top_platform_driver_exit, ptr @sun8i_tcon_top_set_hdmi_src._entry, ptr @sun8i_tcon_top_set_hdmi_src._entry.5, ptr @sun8i_tcon_top_set_hdmi_src._entry_ptr, ptr @sun8i_tcon_top_set_hdmi_src._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @sun8i_r40_tcon_top_quirks, ptr @sun50i_h6_tcon_top_quirks, ptr @sun8i_tcon_top_of_table, ptr @sun8i_tcon_top_platform_driver, ptr @.str.15, ptr @sun8i_tcon_top_ops, ptr @sun8i_tcon_top_bind.__key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_tcon_top_set_hdmi_src._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_tcon_top_set_hdmi_src._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_tcon_top_de_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_tcon_top_de_config._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_tcon_top_de_config._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_r40_tcon_top_quirks to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_tcon_top_quirks to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_tcon_top_of_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_tcon_top_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_tcon_top_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_tcon_top_bind.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_tcon_top_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_tcon_top_bind._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_tcon_top_bind._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_tcon_top_bind._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_tcon_top_set_hdmi_src(ptr noundef %dev, i32 noundef %tcon) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_match_node(ptr noundef nonnull @sun8i_tcon_top_of_table, ptr noundef %3) #6
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = add i32 %tcon, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %4)
  %5 = icmp ult i32 %4, -2
  br i1 %5, label %do.end6, label %do.end38

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #9
  br label %cleanup

do.end38:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %reg_lock = getelementptr inbounds %struct.sun8i_tcon_top, ptr %1, i32 0, i32 4
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #6
  %regs = getelementptr inbounds %struct.sun8i_tcon_top, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %9 = and i32 %8, -49
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %sub = shl nuw nsw i32 %tcon, 28
  %shl = add nuw nsw i32 %sub, 805306368
  %and41 = and i32 %shl, 805306368
  %or = or i32 %10, %and41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %or)
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr46 = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %11) #6, !srcloc !96
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call12) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end6 ], [ 0, %do.end38 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_tcon_top_de_config(ptr noundef %dev, i32 noundef %mixer, i32 noundef %tcon) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_match_node(ptr noundef nonnull @sun8i_tcon_top_of_table, ptr noundef %3) #6
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mixer)
  %cmp = icmp sgt i32 %mixer, 1
  br i1 %cmp, label %do.end5, label %if.end6

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %tcon)
  %cmp7 = icmp sgt i32 %tcon, 3
  br i1 %cmp7, label %do.end11, label %do.body14

do.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %cleanup

do.body14:                                        ; preds = %if.end6
  %reg_lock = getelementptr inbounds %struct.sun8i_tcon_top, ptr %1, i32 0, i32 4
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #6
  %regs = getelementptr inbounds %struct.sun8i_tcon_top, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 28
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !93
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mixer)
  %cmp25 = icmp eq i32 %mixer, 0
  br i1 %cmp25, label %do.end45, label %do.end69

do.end45:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %7, -4
  %and47 = and i32 %tcon, 3
  %or = or i32 %and, %and47
  br label %do.body75

do.end69:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  %and48 = and i32 %7, -49
  %shl71 = shl i32 %tcon, 4
  %and72 = and i32 %shl71, 48
  %or73 = or i32 %and48, %and72
  br label %do.body75

do.body75:                                        ; preds = %do.end69, %do.end45
  %reg.0 = phi i32 [ %or, %do.end45 ], [ %or73, %do.end69 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr79 = getelementptr i8, ptr %10, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %8) #6, !srcloc !96
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call17) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body75, %do.end11, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end5 ], [ -22, %do.end11 ], [ 0, %do.body75 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_tcon_top_platform_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun8i_tcon_top_platform_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_tcon_top_platform_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun8i_tcon_top_platform_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_tcon_top_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @sun8i_tcon_top_ops) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_tcon_top_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @sun8i_tcon_top_ops) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_tcon_top_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %clk_name.i195 = alloca ptr, align 4
  %clk_name.i180 = alloca ptr, align 4
  %clk_name.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 60, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i170 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #6
  %tobool5.not = icmp eq ptr %call.i170, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %clk_data8 = getelementptr inbounds %struct.sun8i_tcon_top, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %clk_data8 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i170, ptr %clk_data8, align 4
  %reg_lock = getelementptr inbounds %struct.sun8i_tcon_top, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %reg_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @sun8i_tcon_top_bind.__key, i16 noundef signext 3) #6
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %rst = getelementptr inbounds %struct.sun8i_tcon_top, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i.i, ptr %rst, align 4
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  %2 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst, align 4
  %4 = ptrtoint ptr %3 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end7
  %call20 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.19) #6
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call20, ptr %call.i, align 4
  %cmp.i171 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i171, label %do.end26, label %if.end29

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #9
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end19
  %call30 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %add.ptr, i32 noundef 0) #6
  %regs31 = getelementptr inbounds %struct.sun8i_tcon_top, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %regs31 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call30, ptr %regs31, align 4
  %cmp.i172 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i172, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call30 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  %11 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rst, align 4
  %call37 = tail call i32 @reset_control_deassert(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end43, label %do.end42

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end43:                                         ; preds = %if.end35
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %call.i173 = tail call i32 @clk_prepare(ptr noundef %14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i173)
  %tobool.not.i = icmp eq i32 %call.i173, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end43.do.end50_crit_edge

if.end43.do.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end50

if.end.i:                                         ; preds = %if.end43
  %call1.i = tail call i32 @clk_enable(ptr noundef %14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body52, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %14) #6
  br label %do.end50

do.end50:                                         ; preds = %if.then3.i, %if.end43.do.end50_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i173, %if.end43.do.end50_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #9
  br label %err_assert_reset

do.body52:                                        ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %add.ptr55 = getelementptr i8, ptr %call30, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 0) #6, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %add.ptr59 = getelementptr i8, ptr %call30, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 0) #6, !srcloc !96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name.i) #6
  %15 = ptrtoint ptr %clk_name.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %clk_name.i, align 4, !annotation !101
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %16 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node.i, align 8
  %call.i174 = tail call i32 @of_property_match_string(ptr noundef %17, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174)
  %cmp.i175 = icmp slt i32 %call.i174, 0
  br i1 %cmp.i175, label %if.then.i, label %if.end.i178

if.then.i:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  %18 = inttoptr i32 %call.i174 to ptr
  br label %sun8i_tcon_top_register_gate.exit

if.end.i178:                                      ; preds = %do.body52
  %19 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node.i, align 8
  %call3.i = tail call ptr @of_clk_get_parent_name(ptr noundef %20, i32 noundef %call.i174) #6
  %21 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node.i, align 8
  %call.i.i176 = call i32 @of_property_read_string_helper(ptr noundef %22, ptr noundef nonnull @.str.33, ptr noundef nonnull %clk_name.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i176)
  %tobool.not.i177 = icmp sgt i32 %call.i.i176, -1
  br i1 %tobool.not.i177, label %if.end8.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #8
  %23 = inttoptr i32 %call.i.i176 to ptr
  br label %sun8i_tcon_top_register_gate.exit

if.end8.i:                                        ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %clk_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_name.i, align 4
  %call9.i = call ptr @__clk_hw_register_gate(ptr noundef %dev, ptr noundef null, ptr noundef %25, ptr noundef %call3.i, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr59, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef %reg_lock) #6
  br label %sun8i_tcon_top_register_gate.exit

sun8i_tcon_top_register_gate.exit:                ; preds = %if.end8.i, %if.then6.i, %if.then.i
  %retval.0.i179 = phi ptr [ %18, %if.then.i ], [ %23, %if.then6.i ], [ %call9.i, %if.end8.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name.i) #6
  %hws = getelementptr %struct.clk_hw_onecell_data, ptr %call.i170, i32 0, i32 1
  %26 = ptrtoint ptr %hws to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %retval.0.i179, ptr %hws, align 4
  %27 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %call, align 1, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool62.not = icmp eq i8 %28, 0
  br i1 %tobool62.not, label %sun8i_tcon_top_register_gate.exit.if.end68_crit_edge, label %if.then63

sun8i_tcon_top_register_gate.exit.if.end68_crit_edge: ; preds = %sun8i_tcon_top_register_gate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then63:                                        ; preds = %sun8i_tcon_top_register_gate.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name.i180) #6
  %29 = ptrtoint ptr %clk_name.i180 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 -1 to ptr), ptr %clk_name.i180, align 4, !annotation !101
  %30 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node.i, align 8
  %call.i182 = call i32 @of_property_match_string(ptr noundef %31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %cmp.i183 = icmp slt i32 %call.i182, 0
  br i1 %cmp.i183, label %if.then.i184, label %if.end.i188

if.then.i184:                                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  %32 = inttoptr i32 %call.i182 to ptr
  br label %sun8i_tcon_top_register_gate.exit194

if.end.i188:                                      ; preds = %if.then63
  %33 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %of_node.i, align 8
  %call3.i185 = call ptr @of_clk_get_parent_name(ptr noundef %34, i32 noundef %call.i182) #6
  %35 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node.i, align 8
  %call.i.i186 = call i32 @of_property_read_string_helper(ptr noundef %36, ptr noundef nonnull @.str.33, ptr noundef nonnull %clk_name.i180, i32 noundef 1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i186)
  %tobool.not.i187 = icmp sgt i32 %call.i.i186, -1
  br i1 %tobool.not.i187, label %if.end8.i192, label %if.then6.i189

if.then6.i189:                                    ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #8
  %37 = inttoptr i32 %call.i.i186 to ptr
  br label %sun8i_tcon_top_register_gate.exit194

if.end8.i192:                                     ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %clk_name.i180 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk_name.i180, align 4
  %call9.i191 = call ptr @__clk_hw_register_gate(ptr noundef %dev, ptr noundef null, ptr noundef %39, ptr noundef %call3.i185, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr59, i8 noundef zeroext 24, i8 noundef zeroext 0, ptr noundef %reg_lock) #6
  br label %sun8i_tcon_top_register_gate.exit194

sun8i_tcon_top_register_gate.exit194:             ; preds = %if.end8.i192, %if.then6.i189, %if.then.i184
  %retval.0.i193 = phi ptr [ %32, %if.then.i184 ], [ %37, %if.then6.i189 ], [ %call9.i191, %if.end8.i192 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name.i180) #6
  %arrayidx67 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i170, i32 2
  %40 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %retval.0.i193, ptr %arrayidx67, align 4
  br label %if.end68

if.end68:                                         ; preds = %sun8i_tcon_top_register_gate.exit194, %sun8i_tcon_top_register_gate.exit.if.end68_crit_edge
  %has_dsi = getelementptr inbounds %struct.sun8i_tcon_top_quirks, ptr %call, i32 0, i32 1
  %41 = ptrtoint ptr %has_dsi to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %has_dsi, align 1, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool69.not = icmp eq i8 %42, 0
  br i1 %tobool69.not, label %if.end68.if.end75_crit_edge, label %if.then70

if.end68.if.end75_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then70:                                        ; preds = %if.end68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name.i195) #6
  %43 = ptrtoint ptr %clk_name.i195 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 -1 to ptr), ptr %clk_name.i195, align 4, !annotation !101
  %44 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %of_node.i, align 8
  %call.i197 = call i32 @of_property_match_string(ptr noundef %45, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i197)
  %cmp.i198 = icmp slt i32 %call.i197, 0
  br i1 %cmp.i198, label %if.then.i199, label %if.end.i203

if.then.i199:                                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  %46 = inttoptr i32 %call.i197 to ptr
  br label %sun8i_tcon_top_register_gate.exit209

if.end.i203:                                      ; preds = %if.then70
  %47 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %of_node.i, align 8
  %call3.i200 = call ptr @of_clk_get_parent_name(ptr noundef %48, i32 noundef %call.i197) #6
  %49 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %of_node.i, align 8
  %call.i.i201 = call i32 @of_property_read_string_helper(ptr noundef %50, ptr noundef nonnull @.str.33, ptr noundef nonnull %clk_name.i195, i32 noundef 1, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i201)
  %tobool.not.i202 = icmp sgt i32 %call.i.i201, -1
  br i1 %tobool.not.i202, label %if.end8.i207, label %if.then6.i204

if.then6.i204:                                    ; preds = %if.end.i203
  call void @__sanitizer_cov_trace_pc() #8
  %51 = inttoptr i32 %call.i.i201 to ptr
  br label %sun8i_tcon_top_register_gate.exit209

if.end8.i207:                                     ; preds = %if.end.i203
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %clk_name.i195 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %clk_name.i195, align 4
  %call9.i206 = call ptr @__clk_hw_register_gate(ptr noundef %dev, ptr noundef null, ptr noundef %53, ptr noundef %call3.i200, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr59, i8 noundef zeroext 16, i8 noundef zeroext 0, ptr noundef %reg_lock) #6
  br label %sun8i_tcon_top_register_gate.exit209

sun8i_tcon_top_register_gate.exit209:             ; preds = %if.end8.i207, %if.then6.i204, %if.then.i199
  %retval.0.i208 = phi ptr [ %46, %if.then.i199 ], [ %51, %if.then6.i204 ], [ %call9.i206, %if.end8.i207 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name.i195) #6
  %arrayidx74 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i170, i32 3
  %54 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %retval.0.i208, ptr %arrayidx74, align 4
  br label %if.end75

if.end75:                                         ; preds = %sun8i_tcon_top_register_gate.exit209, %if.end68.if.end75_crit_edge
  %55 = ptrtoint ptr %hws to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hws, align 4
  %cmp.i210 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i210, label %if.end75.if.then79_crit_edge, label %for.cond

if.end75.if.then79_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then79

for.cond:                                         ; preds = %if.end75
  %arrayidx77.1 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i170, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %arrayidx77.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx77.1, align 4
  %cmp.i210.1 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i210.1, label %for.cond.if.then79_crit_edge, label %for.cond.1

for.cond.if.then79_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then79

for.cond.1:                                       ; preds = %for.cond
  %arrayidx77.2 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i170, i32 0, i32 1, i32 2
  %59 = ptrtoint ptr %arrayidx77.2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx77.2, align 4
  %cmp.i210.2 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i210.2, label %for.cond.1.if.then79_crit_edge, label %for.cond.2

for.cond.1.if.then79_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then79

for.cond.2:                                       ; preds = %for.cond.1
  %61 = ptrtoint ptr %call.i170 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 3, ptr %call.i170, align 4
  %62 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %of_node.i, align 8
  %call84 = call i32 @of_clk_add_hw_provider(ptr noundef %63, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call.i170) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %for.cond.2.err_unregister_gates_crit_edge

for.cond.2.err_unregister_gates_crit_edge:        ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unregister_gates

if.then79:                                        ; preds = %for.cond.1.if.then79_crit_edge, %for.cond.if.then79_crit_edge, %if.end75.if.then79_crit_edge
  %.lcssa = phi ptr [ %56, %if.end75.if.then79_crit_edge ], [ %58, %for.cond.if.then79_crit_edge ], [ %60, %for.cond.1.if.then79_crit_edge ]
  %64 = ptrtoint ptr %.lcssa to i32
  br label %err_unregister_gates

if.end87:                                         ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %65 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i, ptr %driver_data.i, align 4
  br label %cleanup

err_unregister_gates:                             ; preds = %if.then79, %for.cond.2.err_unregister_gates_crit_edge
  %ret.0 = phi i32 [ %64, %if.then79 ], [ %call84, %for.cond.2.err_unregister_gates_crit_edge ]
  %66 = ptrtoint ptr %hws to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hws, align 4
  %tobool.not.i211 = icmp eq ptr %67, null
  %cmp.i212 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i211, %cmp.i212
  br i1 %spec.select.i, label %err_unregister_gates.for.inc98_crit_edge, label %if.then94

err_unregister_gates.for.inc98_crit_edge:         ; preds = %err_unregister_gates
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc98

if.then94:                                        ; preds = %err_unregister_gates
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_hw_unregister_gate(ptr noundef nonnull %67) #6
  br label %for.inc98

for.inc98:                                        ; preds = %if.then94, %err_unregister_gates.for.inc98_crit_edge
  %arrayidx92.1 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i170, i32 0, i32 1, i32 1
  %68 = ptrtoint ptr %arrayidx92.1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx92.1, align 4
  %tobool.not.i211.1 = icmp eq ptr %69, null
  %cmp.i212.1 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  %spec.select.i.1 = or i1 %tobool.not.i211.1, %cmp.i212.1
  br i1 %spec.select.i.1, label %for.inc98.for.inc98.1_crit_edge, label %if.then94.1

for.inc98.for.inc98.1_crit_edge:                  ; preds = %for.inc98
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc98.1

if.then94.1:                                      ; preds = %for.inc98
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_hw_unregister_gate(ptr noundef nonnull %69) #6
  br label %for.inc98.1

for.inc98.1:                                      ; preds = %if.then94.1, %for.inc98.for.inc98.1_crit_edge
  %arrayidx92.2 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i170, i32 0, i32 1, i32 2
  %70 = ptrtoint ptr %arrayidx92.2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx92.2, align 4
  %tobool.not.i211.2 = icmp eq ptr %71, null
  %cmp.i212.2 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  %spec.select.i.2 = or i1 %tobool.not.i211.2, %cmp.i212.2
  br i1 %spec.select.i.2, label %for.inc98.1.for.inc98.2_crit_edge, label %if.then94.2

for.inc98.1.for.inc98.2_crit_edge:                ; preds = %for.inc98.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc98.2

if.then94.2:                                      ; preds = %for.inc98.1
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_hw_unregister_gate(ptr noundef nonnull %71) #6
  br label %for.inc98.2

for.inc98.2:                                      ; preds = %if.then94.2, %for.inc98.1.for.inc98.2_crit_edge
  %72 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call.i, align 4
  call void @clk_disable(ptr noundef %73) #6
  call void @clk_unprepare(ptr noundef %73) #6
  br label %err_assert_reset

err_assert_reset:                                 ; preds = %for.inc98.2, %do.end50
  %ret.1 = phi i32 [ %retval.0.i.ph, %do.end50 ], [ %ret.0, %for.inc98.2 ]
  %74 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rst, align 4
  %call103 = call i32 @reset_control_assert(ptr noundef %75) #6
  br label %cleanup

cleanup:                                          ; preds = %err_assert_reset, %if.end87, %do.end42, %if.then33, %do.end26, %do.end16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %do.end16 ], [ %8, %do.end26 ], [ %10, %if.then33 ], [ %call37, %do.end42 ], [ %ret.1, %err_assert_reset ], [ 0, %if.end87 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_tcon_top_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_data1 = getelementptr inbounds %struct.sun8i_tcon_top, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_data1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %5) #6
  %arrayidx = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 0, i32 1, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_hw_unregister_gate(ptr noundef nonnull %7) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %9, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_hw_unregister_gate(ptr noundef nonnull %9) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %11, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_hw_unregister_gate(ptr noundef nonnull %11) #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  %rst = getelementptr inbounds %struct.sun8i_tcon_top, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rst, align 4
  %call4 = tail call i32 @reset_control_assert(ptr noundef %15) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister_gate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !35, !37, !39, !41, !42, !44, !46, !48, !50, !52, !54, !55, !57, !58, !59, !60, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !78, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 35, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sun8i_tcon_top_set_hdmi_src._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sun8i_tcon_top_set_hdmi_src._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 40, i32 3}
!10 = !{ptr @sun8i_tcon_top_set_hdmi_src._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @sun8i_tcon_top_set_hdmi_src._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_sun8i_tcon_top_set_hdmi_src, !13, !"__ksymtab_sun8i_tcon_top_set_hdmi_src", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 55, i32 1}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 64, i32 3}
!16 = !{ptr @sun8i_tcon_top_de_config._entry, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @sun8i_tcon_top_de_config._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 69, i32 3}
!20 = !{ptr @sun8i_tcon_top_de_config._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @sun8i_tcon_top_de_config._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 74, i32 3}
!24 = !{ptr @sun8i_tcon_top_de_config._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sun8i_tcon_top_de_config._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__ksymtab_sun8i_tcon_top_de_config, !27, !"__ksymtab_sun8i_tcon_top_de_config", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 94, i32 1}
!28 = !{ptr @sun8i_tcon_top_of_table, !29, !"sun8i_tcon_top_of_table", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 280, i32 27}
!30 = !{ptr @__ksymtab_sun8i_tcon_top_of_table, !31, !"__ksymtab_sun8i_tcon_top_of_table", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 292, i32 1}
!32 = !{ptr @__initcall__kmod_sun8i_tcon_top__185_302_sun8i_tcon_top_platform_driver_init6, !33, !"__initcall__kmod_sun8i_tcon_top__185_302_sun8i_tcon_top_platform_driver_init6", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 302, i32 1}
!34 = !{ptr @__exitcall_sun8i_tcon_top_platform_driver_exit, !33, !"__exitcall_sun8i_tcon_top_platform_driver_exit", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_author186, !36, !"__UNIQUE_ID_author186", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 304, i32 1}
!37 = !{ptr @__UNIQUE_ID_description187, !38, !"__UNIQUE_ID_description187", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 305, i32 1}
!39 = !{ptr @__UNIQUE_ID_file188, !40, !"__UNIQUE_ID_file188", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 306, i32 1}
!41 = !{ptr @__UNIQUE_ID_license189, !40, !"__UNIQUE_ID_license189", i1 false, i1 false}
!42 = !{ptr @sun8i_r40_tcon_top_quirks, !43, !"sun8i_r40_tcon_top_quirks", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 270, i32 43}
!44 = !{ptr @sun50i_h6_tcon_top_quirks, !45, !"sun50i_h6_tcon_top_quirks", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 275, i32 43}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 298, i32 12}
!48 = !{ptr @sun8i_tcon_top_platform_driver, !49, !"sun8i_tcon_top_platform_driver", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 294, i32 31}
!50 = !{ptr @sun8i_tcon_top_ops, !51, !"sun8i_tcon_top_ops", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 253, i32 35}
!52 = !{ptr @sun8i_tcon_top_bind.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 146, i32 2}
!54 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 150, i32 3}
!57 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sun8i_tcon_top_bind._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @sun8i_tcon_top_bind._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 154, i32 36}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 156, i32 3}
!64 = !{ptr @sun8i_tcon_top_bind._entry.20, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @sun8i_tcon_top_bind._entry_ptr.22, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 167, i32 3}
!68 = !{ptr @sun8i_tcon_top_bind._entry.23, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @sun8i_tcon_top_bind._entry_ptr.25, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 173, i32 3}
!72 = !{ptr @sun8i_tcon_top_bind._entry.26, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @sun8i_tcon_top_bind._entry_ptr.28, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 193, i32 37}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 199, i32 38}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 205, i32 38}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 106, i32 49}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/sun4i/sun8i_tcon_top.c", i32 113, i32 10}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i64 4808815}
!94 = !{i64 2152674068}
!95 = !{i64 2152715202}
!96 = !{i64 4808397}
!97 = !{i64 2152726854}
!98 = !{i64 2152807591}
!99 = !{i64 2152818938}
!100 = !{i64 2152819312}
!101 = !{!"auto-init"}
!102 = !{i8 0, i8 2}
