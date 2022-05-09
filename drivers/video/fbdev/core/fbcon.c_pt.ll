; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/core/fbcon.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/fbcon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fbcon_update_vcs\22, \22a\22\09"
module asm "\09.weak\09__crc_fbcon_update_vcs\09\09\09\09"
module asm "\09.long\09__crc_fbcon_update_vcs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fbcon_update_vcs:\09\09\09\09\09"
module asm "\09.asciz \09\22fbcon_update_vcs\22\09\09\09\09\09"
module asm "__kstrtabns_fbcon_update_vcs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.vc = type { ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fbcon_display = type { ptr, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, ptr }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.consw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.81, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.anon.81 = type { ptr }
%struct.fbcon_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.fb_var_screeninfo, %struct.timer_list, %struct.fb_cursor, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32 }
%struct.fb_cursor = type { i16, i16, i16, ptr, %struct.fbcurpos, %struct.fb_image }
%struct.fbcurpos = type { i16, i16 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, ptr, i32, %struct.wait_queue_head, i16, i8, i32, [8 x i32], [48 x i8], ptr, i32, i32, i32, i16, ptr, ptr, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.40, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.40 = type { ptr }
%struct.llist_head = type { ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.kref = type { %struct.refcount_struct }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.console_font = type { i32, i32, i32, ptr }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_blit_caps = type { i32, i32, i32, i32 }
%struct.fb_con2fbmap = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.font_desc = type { i32, ptr, i32, i32, i32, ptr, i32 }
%struct.fb_tile_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@__setup_str_fb_console_setup = internal constant [7 x i8] c"fbcon=\00", section ".init.rodata", align 1
@__setup_fb_console_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_fb_console_setup, ptr @fb_console_setup, i32 0 }, section ".init.setup", align 4
@vc_cons = external dso_local local_unnamed_addr global [63 x %struct.vc], align 4
@__kstrtab_fbcon_update_vcs = external dso_local constant [0 x i8], align 1
@__kstrtabns_fbcon_update_vcs = external dso_local constant [0 x i8], align 1
@__ksymtab_fbcon_update_vcs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fbcon_update_vcs to i32), ptr @__kstrtab_fbcon_update_vcs, ptr @__kstrtabns_fbcon_update_vcs }, section "___ksymtab+fbcon_update_vcs", align 4
@first_fb_vc = internal global { i32, [28 x i8] } zeroinitializer, align 32
@last_fb_vc = internal global { i32, [28 x i8] } { i32 62, [28 x i8] zeroinitializer }, align 32
@con2fb_map = internal global { [63 x i8], [33 x i8] } zeroinitializer, align 32
@registered_fb = external dso_local local_unnamed_addr global [32 x ptr], align 4
@fb_display = internal global { [63 x %struct.fbcon_display], [1844 x i8] } zeroinitializer, align 32
@ignore_console_lock_warning = external dso_local global %struct.atomic_t, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/video/fbdev/core/fbcon.c\00", [63 x i8] zeroinitializer }, align 32
@fbcon_has_console_bind = internal global { i1, [31 x i8] } zeroinitializer, align 32
@deferred_takeover = internal global { i1, [31 x i8] } zeroinitializer, align 32
@info_idx = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@num_registered_fb = external dso_local local_unnamed_addr global i32, align 4
@fb_con = internal constant { %struct.consw, [56 x i8] } { %struct.consw { ptr null, ptr @fbcon_startup, ptr @fbcon_init, ptr @fbcon_deinit, ptr @fbcon_clear, ptr @fbcon_putc, ptr @fbcon_putcs, ptr @fbcon_cursor, ptr @fbcon_scroll, ptr @fbcon_switch, ptr @fbcon_blank, ptr @fbcon_set_font, ptr @fbcon_get_font, ptr @fbcon_set_def_font, ptr @fbcon_resize, ptr @fbcon_set_palette, ptr null, ptr null, ptr null, ptr null, ptr @fbcon_invert_region, ptr @fbcon_screen_pos, ptr @fbcon_getxy, ptr null, ptr @fbcon_debug_enter, ptr @fbcon_debug_leave }, [56 x i8] zeroinitializer }, align 32
@con2fb_map_boot = internal global { [63 x i8], [33 x i8] } zeroinitializer, align 32
@fbcon_remap_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 2895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016fbcon: Remapping primary device, fb%i, to tty %i-%i\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fbcon_remap_all\00", [16 x i8] zeroinitializer }, align 32
@fbcon_remap_all._entry_ptr = internal global ptr @fbcon_remap_all._entry, section ".printk_index", align 4
@fbcon_fb_registered._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 2942, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016fbcon: Deferring console take-over\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fbcon_fb_registered\00", [44 x i8] zeroinitializer }, align 32
@fbcon_fb_registered._entry_ptr = internal global ptr @fbcon_fb_registered._entry, section ".printk_index", align 4
@fg_console = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fb%d\00", [27 x i8] zeroinitializer }, align 32
@fb_class = external dso_local local_unnamed_addr global ptr, align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fbcon\00", [26 x i8] zeroinitializer }, align 32
@fbcon_device = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@fb_console_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 3383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014Unable to create device for fbcon; errno = %ld\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fb_console_init\00", [16 x i8] zeroinitializer }, align 32
@fb_console_init._entry_ptr = internal global ptr @fb_console_init._entry, section ".printk_index", align 4
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"font:\00", [26 x i8] zeroinitializer }, align 32
@fontname = internal global { [40 x i8], [56 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scrollback:\00", [20 x i8] zeroinitializer }, align 32
@fb_console_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014Ignoring scrollback size option\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fb_console_setup\00", [47 x i8] zeroinitializer }, align 32
@fb_console_setup._entry_ptr = internal global ptr @fb_console_setup._entry, section ".printk_index", align 4
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"map:\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vc:\00", [28 x i8] zeroinitializer }, align 32
@fbcon_is_default = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rotate:\00", [24 x i8] zeroinitializer }, align 32
@initial_rotation = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"margin:\00", [24 x i8] zeroinitializer }, align 32
@margin_color = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nodefer\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"logo-pos:\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"center\00", [25 x i8] zeroinitializer }, align 32
@fb_center_logo = external dso_local local_unnamed_addr global i8, align 1
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"logo-count:\00", [20 x i8] zeroinitializer }, align 32
@fb_logo_count = external dso_local local_unnamed_addr global i32, align 4
@fbcon_cursor_noblink = internal global { i1, [31 x i8] } zeroinitializer, align 32
@fbcon_add_cursor_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&info->queue)\00", [32 x i8] zeroinitializer }, align 32
@fbcon_add_cursor_timer.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&ops->cursor_timer)\00", [43 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@console_blanked = external dso_local local_unnamed_addr global i32, align 4
@scrollback_max = internal global { i32, [28 x i8] } zeroinitializer, align 32
@color_table = external dso_local constant [0 x i8], align 1
@palette_red = internal global { [16 x i16], [32 x i8] } zeroinitializer, align 32
@palette_green = internal global { [16 x i16], [32 x i8] } zeroinitializer, align 32
@palette_blue = internal global { [16 x i16], [32 x i8] } zeroinitializer, align 32
@palette_cmap = internal global { %struct.fb_cmap, [40 x i8] } { %struct.fb_cmap { i32 0, i32 16, ptr @palette_red, ptr @palette_green, ptr @palette_blue, ptr null }, [40 x i8] zeroinitializer }, align 32
@logo_shown = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@con2fb_init_display._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013con2fb_init_display: detected unhandled fb_set_par error, error code %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"con2fb_init_display\00", [44 x i8] zeroinitializer }, align 32
@con2fb_init_display._entry_ptr = internal global ptr @con2fb_init_display._entry, section ".printk_index", align 4
@logo_lines = internal global { i32, [28 x i8] } zeroinitializer, align 32
@fbcon_prepare_logo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016fbcon_init: disable boot-logo (boot-logo bigger than screen).\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fbcon_prepare_logo\00", [45 x i8] zeroinitializer }, align 32
@fbcon_prepare_logo._entry_ptr = internal global ptr @fbcon_prepare_logo._entry, section ".printk_index", align 4
@con2fb_release_oldinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str, i32 782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013con2fb_release_oldinfo: detected unhandled fb_set_par error, error code %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"con2fb_release_oldinfo\00", [41 x i8] zeroinitializer }, align 32
@con2fb_release_oldinfo._entry_ptr = internal global ptr @con2fb_release_oldinfo._entry, section ".printk_index", align 4
@fbcon_select_primary._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str, i32 2909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016fbcon: %s (fb%i) is primary device\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fbcon_select_primary\00", [43 x i8] zeroinitializer }, align 32
@fbcon_select_primary._entry_ptr = internal global ptr @fbcon_select_primary._entry, section ".printk_index", align 4
@fbcon_select_primary._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.32, ptr @.str, i32 2918, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fbcon_select_primary._entry_ptr.34 = internal global ptr @fbcon_select_primary._entry.33, section ".printk_index", align 4
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"frame buffer device\00", [44 x i8] zeroinitializer }, align 32
@fbcon_startup.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.40, ptr @.str, ptr @.str.41, i8 0, i8 -4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fb\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fbcon_startup\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mode:   %s\0A\00", [20 x i8] zeroinitializer }, align 32
@fbcon_startup.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.40, ptr @.str, ptr @.str.42, i8 0, i8 -4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"visual: %d\0A\00", [20 x i8] zeroinitializer }, align 32
@fbcon_startup.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.40, ptr @.str, ptr @.str.43, i8 0, i8 -3, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"res:    %dx%d-%d\0A\00", [46 x i8] zeroinitializer }, align 32
@console_printk = external dso_local local_unnamed_addr global [0 x i32], align 4
@fbcon_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str, i32 1130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013fbcon_init: detected unhandled fb_set_par error, error code %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fbcon_init\00", [21 x i8] zeroinitializer }, align 32
@fbcon_init._entry_ptr = internal global ptr @fbcon_init._entry, section ".printk_index", align 4
@fbcon_output_nb = internal global { %struct.notifier_block, [20 x i8] } zeroinitializer, align 32
@fbcon_exit.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.46, ptr @.str, ptr @.str.47, i8 3, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fbcon_exit\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fbcon: %s pending work\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"canceled\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@scrollback_phys_max = internal global { i32, [28 x i8] } zeroinitializer, align 32
@fbcon_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str, i32 2138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013fbcon_switch: detected unhandled fb_set_par error, error code %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fbcon_switch\00", [19 x i8] zeroinitializer }, align 32
@fbcon_switch._entry_ptr = internal global ptr @fbcon_switch._entry, section ".printk_index", align 4
@fbcon_resize.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.52, ptr @.str, ptr @.str.53, i8 2, i8 2, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fbcon_resize\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"attempting resize %ix%i\0A\00", [39 x i8] zeroinitializer }, align 32
@fbcon_resize.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.52, ptr @.str, ptr @.str.54, i8 2, i8 4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"resize now %ix%i\0A\00", [46 x i8] zeroinitializer }, align 32
@device_attrs = internal global { [3 x %struct.device_attribute], [44 x i8] } { [3 x %struct.device_attribute] [%struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_rotate, ptr @store_rotate }, %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @store_rotate_all }, %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_cursor_blink, ptr @store_cursor_blink }], [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rotate\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rotate_all\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cursor_blink\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@conswitchp = external dso_local local_unnamed_addr global ptr, align 4
@dummy_con = external dso_local constant %struct.consw, align 4
@fbcon_output_notifier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str, i32 3282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016fbcon: Taking over console\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fbcon_output_notifier\00", [42 x i8] zeroinitializer }, align 32
@fbcon_output_notifier._entry_ptr = internal global ptr @fbcon_output_notifier._entry, section ".printk_index", align 4
@fbcon_deferred_takeover_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @fbcon_deferred_takeover_work, i64 4), ptr getelementptr (i8, ptr @fbcon_deferred_takeover_work, i64 4) }, ptr @fbcon_register_existing_fbs, %struct.lockdep_map { ptr @fbcon_deferred_takeover_work, [2 x ptr] zeroinitializer, ptr @.str.61, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fbcon_deferred_takeover_work\00", [35 x i8] zeroinitializer }, align 32
@switch.table.fbcon_cursor = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1], [60 x i8] zeroinitializer }, align 32
@switch.table.fbcon_cursor.62 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1], [60 x i8] zeroinitializer }, align 32
@switch.table.fb_flashcursor = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1], [60 x i8] zeroinitializer }, align 32
@switch.table.fb_flashcursor.63 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1], [60 x i8] zeroinitializer }, align 32
@switch.table.fbcon_putcs = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1], [60 x i8] zeroinitializer }, align 32
@switch.table.fbcon_putcs.64 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.87 = internal global [7 x i64] [i64 5, i64 16, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.88 = internal global [7 x i64] [i64 5, i64 16, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 16, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 512]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.97 = private unnamed_addr constant [12 x i8] c"first_fb_vc\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 118, i32 12 }
@___asan_gen_.100 = private unnamed_addr constant [11 x i8] c"last_fb_vc\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 119, i32 12 }
@___asan_gen_.103 = private unnamed_addr constant [11 x i8] c"con2fb_map\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 110, i32 20 }
@___asan_gen_.106 = private unnamed_addr constant [11 x i8] c"fb_display\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 108, i32 29 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2792, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [23 x i8] c"fbcon_has_console_bind\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [18 x i8] c"deferred_takeover\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [9 x i8] c"info_idx\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 147, i32 12 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"fb_con\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 3085, i32 27 }
@___asan_gen_.120 = private unnamed_addr constant [16 x i8] c"con2fb_map_boot\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 111, i32 20 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2893, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2942, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 3052, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 3378, i32 10 }
@___asan_gen_.147 = private unnamed_addr constant [13 x i8] c"fbcon_device\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 199, i32 23 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 3381, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 437, i32 38 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 438, i32 25 }
@___asan_gen_.165 = private unnamed_addr constant [9 x i8] c"fontname\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 144, i32 13 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 443, i32 25 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 444, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 448, i32 25 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 463, i32 25 }
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"fbcon_is_default\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 475, i32 25 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"initial_rotation\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 150, i32 12 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 484, i32 25 }
@___asan_gen_.196 = private unnamed_addr constant [13 x i8] c"margin_color\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 152, i32 12 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 491, i32 24 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 497, i32 25 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 499, i32 25 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 504, i32 25 }
@___asan_gen_.211 = private unnamed_addr constant [21 x i8] c"fbcon_cursor_noblink\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 409, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 411, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [15 x i8] c"scrollback_max\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1344, i32 12 }
@___asan_gen_.227 = private unnamed_addr constant [12 x i8] c"palette_red\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2547, i32 12 }
@___asan_gen_.230 = private unnamed_addr constant [14 x i8] c"palette_green\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2548, i32 12 }
@___asan_gen_.233 = private unnamed_addr constant [13 x i8] c"palette_blue\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2549, i32 12 }
@___asan_gen_.236 = private unnamed_addr constant [13 x i8] c"palette_cmap\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2551, i32 23 }
@___asan_gen_.239 = private unnamed_addr constant [11 x i8] c"logo_shown\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 116, i32 12 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 801, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant [11 x i8] c"logo_lines\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 113, i32 12 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 654, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 780, i32 5 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2908, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2916, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 156, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 937, i32 29 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1010, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1011, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1012, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1128, i32 5 }
@___asan_gen_.314 = private unnamed_addr constant [16 x i8] c"fbcon_output_nb\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 3274, i32 30 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 3342, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant [20 x i8] c"scrollback_phys_max\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1343, i32 12 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2136, i32 5 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2056, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2066, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant [13 x i8] c"device_attrs\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 3231, i32 32 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 3232, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 3233, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 3234, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 3169, i32 34 }
@___asan_gen_.365 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 3282, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant [29 x i8] c"fbcon_deferred_takeover_work\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.378 = private constant [36 x i8] c"../drivers/video/fbdev/core/fbcon.c\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 3275, i32 8 }
@___asan_gen_.380 = private unnamed_addr constant [26 x i8] c"switch.table.fbcon_cursor\00", align 1
@___asan_gen_.381 = private unnamed_addr constant [29 x i8] c"switch.table.fbcon_cursor.62\00", align 1
@___asan_gen_.382 = private unnamed_addr constant [28 x i8] c"switch.table.fb_flashcursor\00", align 1
@___asan_gen_.383 = private unnamed_addr constant [31 x i8] c"switch.table.fb_flashcursor.63\00", align 1
@___asan_gen_.384 = private unnamed_addr constant [25 x i8] c"switch.table.fbcon_putcs\00", align 1
@___asan_gen_.385 = private unnamed_addr constant [28 x i8] c"switch.table.fbcon_putcs.64\00", align 1
@llvm.compiler.used = appending global [117 x ptr] [ptr @__ksymtab_fbcon_update_vcs, ptr @__setup_fb_console_setup, ptr @con2fb_init_display._entry, ptr @con2fb_init_display._entry_ptr, ptr @con2fb_release_oldinfo._entry, ptr @con2fb_release_oldinfo._entry_ptr, ptr @fb_console_init._entry, ptr @fb_console_init._entry_ptr, ptr @fb_console_setup._entry, ptr @fb_console_setup._entry_ptr, ptr @fbcon_fb_registered._entry, ptr @fbcon_fb_registered._entry_ptr, ptr @fbcon_init._entry, ptr @fbcon_init._entry_ptr, ptr @fbcon_output_notifier._entry, ptr @fbcon_output_notifier._entry_ptr, ptr @fbcon_prepare_logo._entry, ptr @fbcon_prepare_logo._entry_ptr, ptr @fbcon_remap_all._entry, ptr @fbcon_remap_all._entry_ptr, ptr @fbcon_select_primary._entry, ptr @fbcon_select_primary._entry.33, ptr @fbcon_select_primary._entry_ptr, ptr @fbcon_select_primary._entry_ptr.34, ptr @fbcon_switch._entry, ptr @fbcon_switch._entry_ptr, ptr @first_fb_vc, ptr @last_fb_vc, ptr @con2fb_map, ptr @fb_display, ptr @.str, ptr @fbcon_has_console_bind, ptr @deferred_takeover, ptr @info_idx, ptr @fb_con, ptr @con2fb_map_boot, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @fbcon_device, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @fontname, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @fbcon_is_default, ptr @.str.16, ptr @initial_rotation, ptr @.str.17, ptr @margin_color, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @fbcon_cursor_noblink, ptr @fbcon_add_cursor_timer.__key, ptr @.str.22, ptr @fbcon_add_cursor_timer.__key.23, ptr @.str.24, ptr @scrollback_max, ptr @palette_red, ptr @palette_green, ptr @palette_blue, ptr @palette_cmap, ptr @logo_shown, ptr @.str.25, ptr @.str.26, ptr @logo_lines, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @fbcon_output_nb, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @scrollback_phys_max, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @device_attrs, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @fbcon_deferred_takeover_work, ptr @.str.61, ptr @switch.table.fbcon_cursor, ptr @switch.table.fbcon_cursor.62, ptr @switch.table.fb_flashcursor, ptr @switch.table.fb_flashcursor.63, ptr @switch.table.fbcon_putcs, ptr @switch.table.fbcon_putcs.64], section "llvm.metadata"
@0 = internal global [103 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @first_fb_vc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @last_fb_vc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @con2fb_map to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_display to i32), i32 7308, i32 9152, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbcon_has_console_bind to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deferred_takeover to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @info_idx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_con to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @con2fb_map_boot to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbcon_remap_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbcon_fb_registered._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbcon_device to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_console_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fontname to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_console_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbcon_is_default to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initial_rotation to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @margin_color to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbcon_cursor_noblink to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbcon_add_cursor_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbcon_add_cursor_timer.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scrollback_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palette_red to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palette_green to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palette_blue to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palette_cmap to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logo_shown to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @con2fb_init_display._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logo_lines to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbcon_prepare_logo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @con2fb_release_oldinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbcon_select_primary._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbcon_select_primary._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbcon_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbcon_output_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scrollback_phys_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbcon_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_attrs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbcon_output_notifier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbcon_deferred_takeover_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fbcon_cursor to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fbcon_cursor.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fb_flashcursor to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fb_flashcursor.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fbcon_putcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fbcon_putcs.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fb_console_setup(ptr noundef %this_opt) #0 section ".init.text" align 64 {
entry:
  %this_opt.addr = alloca ptr, align 4
  %options = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %this_opt.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %this_opt, ptr %this_opt.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options) #20
  %tobool.not = icmp eq ptr %this_opt, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %this_opt to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %this_opt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %while.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

while.cond.preheader:                             ; preds = %lor.lhs.false
  %call102 = call ptr @strsep(ptr noundef nonnull %this_opt.addr, ptr noundef nonnull @.str.9) #20
  %3 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call102, ptr %options, align 4
  %cmp.not103 = icmp eq ptr %call102, null
  br i1 %cmp.not103, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call104 = phi ptr [ %call, %while.cond.backedge.while.body_crit_edge ], [ %call102, %while.cond.preheader.while.body_crit_edge ]
  %call2 = call i32 @strncmp(ptr noundef nonnull %call104, ptr noundef nonnull dereferenceable(6) @.str.10, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr = getelementptr i8, ptr %call104, i32 5
  %call5 = call i32 @strlcpy(ptr noundef nonnull @fontname, ptr noundef %add.ptr, i32 noundef 40) #20
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then89, %if.then86.while.cond.backedge_crit_edge, %if.end83.while.cond.backedge_crit_edge, %if.then81, %if.then77.while.cond.backedge_crit_edge, %if.then73, %if.then67, %if.then64.while.cond.backedge_crit_edge, %if.then59, %if.end56.while.cond.backedge_crit_edge, %if.end47, %for.body.while.cond.backedge_crit_edge, %if.then14.while.cond.backedge_crit_edge, %do.end, %if.then4
  %call = call ptr @strsep(ptr noundef nonnull %this_opt.addr, ptr noundef nonnull @.str.9) #20
  %4 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %options, align 4
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end6:                                          ; preds = %while.body
  %call7 = call i32 @strncmp(ptr noundef nonnull %call104, ptr noundef nonnull dereferenceable(12) @.str.11, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #22
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #23
  br label %while.cond.backedge

if.end11:                                         ; preds = %if.end6
  %call12 = call i32 @strncmp(ptr noundef nonnull %call104, ptr noundef nonnull dereferenceable(5) @.str.14, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end27

if.then14:                                        ; preds = %if.end11
  %add.ptr15 = getelementptr i8, ptr %call104, i32 4
  %5 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr15, ptr %options, align 4
  %6 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool16.not = icmp eq i8 %7, 0
  br i1 %tobool16.not, label %if.then14.while.cond.backedge_crit_edge, label %if.then14.for.body_crit_edge

if.then14.for.body_crit_edge:                     ; preds = %if.then14
  br label %for.body

if.then14.while.cond.backedge_crit_edge:          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.backedge

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then14.for.body_crit_edge
  %j.0101 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then14.for.body_crit_edge ]
  %i.0100 = phi i32 [ %inc25, %for.body.for.body_crit_edge ], [ 0, %if.then14.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %add.ptr15, i32 %j.0101
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool19.not = icmp eq i8 %9, 0
  %spec.store.select = select i1 %tobool19.not, i32 0, i32 %j.0101
  %inc = add i32 %spec.store.select, 1
  %arrayidx22 = getelementptr i8, ptr %add.ptr15, i32 %spec.store.select
  %10 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx22, align 1
  %conv = zext i8 %11 to i16
  %sub = add nsw i16 %conv, -48
  %rem99 = srem i16 %sub, 32
  %conv23 = trunc i16 %rem99 to i8
  %arrayidx24 = getelementptr [63 x i8], ptr @con2fb_map_boot, i32 0, i32 %i.0100
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv23, ptr %arrayidx24, align 1
  %inc25 = add nuw nsw i32 %i.0100, 1
  %exitcond.not = icmp eq i32 %inc25, 63
  br i1 %exitcond.not, label %for.body.while.cond.backedge_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.body.while.cond.backedge_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.backedge

if.end27:                                         ; preds = %if.end11
  %call28 = call i32 @strncmp(ptr noundef nonnull %call104, ptr noundef nonnull dereferenceable(4) @.str.15, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then30, label %if.end48

if.then30:                                        ; preds = %if.end27
  %add.ptr31 = getelementptr i8, ptr %call104, i32 3
  %13 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr31, ptr %options, align 4
  %14 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool32.not = icmp eq i8 %15, 0
  br i1 %tobool32.not, label %if.end36thread-pre-split, label %if.then33

if.then33:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #22
  %call34 = call i32 @simple_strtoul(ptr noundef %add.ptr31, ptr noundef nonnull %options, i32 noundef 10) #20
  %sub35 = add i32 %call34, -1
  store i32 %sub35, ptr @first_fb_vc, align 4
  br label %if.end36

if.end36thread-pre-split:                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #22
  %.pr = load i32, ptr @first_fb_vc, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end36thread-pre-split, %if.then33
  %16 = phi i32 [ %.pr, %if.end36thread-pre-split ], [ %sub35, %if.then33 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp37 = icmp slt i32 %16, 0
  br i1 %cmp37, label %if.then39, label %if.end36.if.end40_crit_edge

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end40

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #22
  store i32 0, ptr @first_fb_vc, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end36.if.end40_crit_edge
  %17 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %options, align 4
  %incdec.ptr = getelementptr i8, ptr %18, i32 1
  store ptr %incdec.ptr, ptr %options, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %20)
  %cmp42 = icmp eq i8 %20, 45
  br i1 %cmp42, label %if.then44, label %if.end40.if.end47_crit_edge

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end47

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #22
  %call45 = call i32 @simple_strtoul(ptr noundef %incdec.ptr, ptr noundef nonnull %options, i32 noundef 10) #20
  %sub46 = add i32 %call45, -1
  store i32 %sub46, ptr @last_fb_vc, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end40.if.end47_crit_edge
  store i1 true, ptr @fbcon_is_default, align 4
  br label %while.cond.backedge

if.end48:                                         ; preds = %if.end27
  %call49 = call i32 @strncmp(ptr noundef nonnull %call104, ptr noundef nonnull dereferenceable(8) @.str.16, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then51, label %if.end61

if.then51:                                        ; preds = %if.end48
  %add.ptr52 = getelementptr i8, ptr %call104, i32 7
  %21 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr52, ptr %options, align 4
  %22 = ptrtoint ptr %add.ptr52 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr52, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool53.not = icmp eq i8 %23, 0
  br i1 %tobool53.not, label %if.end56thread-pre-split, label %if.then54

if.then54:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #22
  %call55 = call i32 @simple_strtoul(ptr noundef %add.ptr52, ptr noundef nonnull %options, i32 noundef 0) #20
  store i32 %call55, ptr @initial_rotation, align 4
  br label %if.end56

if.end56thread-pre-split:                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #22
  %.pr98 = load i32, ptr @initial_rotation, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.end56thread-pre-split, %if.then54
  %24 = phi i32 [ %.pr98, %if.end56thread-pre-split ], [ %call55, %if.then54 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp57 = icmp sgt i32 %24, 3
  br i1 %cmp57, label %if.then59, label %if.end56.while.cond.backedge_crit_edge

if.end56.while.cond.backedge_crit_edge:           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.backedge

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #22
  store i32 0, ptr @initial_rotation, align 4
  br label %while.cond.backedge

if.end61:                                         ; preds = %if.end48
  %call62 = call i32 @strncmp(ptr noundef nonnull %call104, ptr noundef nonnull dereferenceable(8) @.str.17, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then64, label %if.end70

if.then64:                                        ; preds = %if.end61
  %add.ptr65 = getelementptr i8, ptr %call104, i32 7
  %25 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr65, ptr %options, align 4
  %26 = ptrtoint ptr %add.ptr65 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr65, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool66.not = icmp eq i8 %27, 0
  br i1 %tobool66.not, label %if.then64.while.cond.backedge_crit_edge, label %if.then67

if.then64.while.cond.backedge_crit_edge:          ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.backedge

if.then67:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #22
  %call68 = call i32 @simple_strtoul(ptr noundef %add.ptr65, ptr noundef nonnull %options, i32 noundef 0) #20
  store i32 %call68, ptr @margin_color, align 4
  br label %while.cond.backedge

if.end70:                                         ; preds = %if.end61
  %call71 = call i32 @strcmp(ptr noundef nonnull %call104, ptr noundef nonnull dereferenceable(8) @.str.18) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @deferred_takeover, align 1
  br label %while.cond.backedge

if.end74:                                         ; preds = %if.end70
  %call75 = call i32 @strncmp(ptr noundef nonnull %call104, ptr noundef nonnull dereferenceable(10) @.str.19, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.then77, label %if.end83

if.then77:                                        ; preds = %if.end74
  %add.ptr78 = getelementptr i8, ptr %call104, i32 9
  %28 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr78, ptr %options, align 4
  %call79 = call i32 @strcmp(ptr noundef %add.ptr78, ptr noundef nonnull dereferenceable(7) @.str.20) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.then81, label %if.then77.while.cond.backedge_crit_edge

if.then77.while.cond.backedge_crit_edge:          ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.backedge

if.then81:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #22
  call void @__asan_store1_noabort(i32 ptrtoint (ptr @fb_center_logo to i32))
  store i8 1, ptr @fb_center_logo, align 1
  br label %while.cond.backedge

if.end83:                                         ; preds = %if.end74
  %call84 = call i32 @strncmp(ptr noundef nonnull %call104, ptr noundef nonnull dereferenceable(12) @.str.21, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.then86, label %if.end83.while.cond.backedge_crit_edge

if.end83.while.cond.backedge_crit_edge:           ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.backedge

if.then86:                                        ; preds = %if.end83
  %add.ptr87 = getelementptr i8, ptr %call104, i32 11
  %29 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr87, ptr %options, align 4
  %30 = ptrtoint ptr %add.ptr87 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr87, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool88.not = icmp eq i8 %31, 0
  br i1 %tobool88.not, label %if.then86.while.cond.backedge_crit_edge, label %if.then89

if.then86.while.cond.backedge_crit_edge:          ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.backedge

if.then89:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #22
  %call90 = call i32 @simple_strtol(ptr noundef %add.ptr87, ptr noundef nonnull %options, i32 noundef 0) #20
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @fb_logo_count to i32))
  store i32 %call90, ptr @fb_logo_count, align 4
  br label %while.cond.backedge

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options) #20
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fbcon_suspended(ptr nocapture noundef readonly %info) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 29
  %0 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbcon_par, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %currcon = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %currcon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %currcon, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @fbcon_cursor(ptr noundef %5, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fbcon_cursor(ptr noundef %vc, i32 noundef %mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom1 = sext i8 %3 to i32
  %arrayidx2 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbcon_par, align 4
  %vc_pos = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 26
  %8 = ptrtoint ptr %vc_pos to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vc_pos, align 4
  %10 = inttoptr i32 %9 to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %10, align 2
  %vc_cur_blink_ms = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 46
  %13 = ptrtoint ptr %vc_cur_blink_ms to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vc_cur_blink_ms, align 4
  %conv3 = zext i16 %14 to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv3) #20
  %cur_blink_jiffies = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 13
  %15 = ptrtoint ptr %cur_blink_jiffies to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call2.i, ptr %cur_blink_jiffies, align 4
  %16 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fbcon_par, align 4
  %state.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 28
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %vc_mode.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 17
  %20 = ptrtoint ptr %vc_mode.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %vc_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp1.not.i = icmp eq i8 %21, 0
  br i1 %cmp1.not.i, label %fbcon_is_inactive.exit, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

fbcon_is_inactive.exit:                           ; preds = %lor.lhs.false.i
  %graphics.i = getelementptr inbounds %struct.fbcon_ops, ptr %17, i32 0, i32 17
  %22 = ptrtoint ptr %graphics.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %graphics.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.not = icmp eq i32 %23, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %fbcon_is_inactive.exit.cleanup_crit_edge

fbcon_is_inactive.exit.cleanup_crit_edge:         ; preds = %fbcon_is_inactive.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %fbcon_is_inactive.exit
  %vc_deccm = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 37
  %24 = ptrtoint ptr %vc_deccm to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load = load i16, ptr %vc_deccm, align 4
  %25 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp.not.not = icmp eq i16 %25, 0
  br i1 %cmp.not.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %vc_cursor_type = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 23
  %26 = ptrtoint ptr %vc_cursor_type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vc_cursor_type, align 4
  %and = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  %func.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 9, i32 2
  %28 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %func.i, align 4
  %cmp.i = icmp eq ptr %29, @fb_flashcursor
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then7.if.end8_crit_edge

if.then7.if.end8_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8

land.lhs.true.i:                                  ; preds = %if.then7
  %flags.i = getelementptr inbounds %struct.fbcon_ops, ptr %17, i32 0, i32 19
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end8_crit_edge, label %if.then.i

land.lhs.true.i.if.end8_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  %cursor_timer.i = getelementptr inbounds %struct.fbcon_ops, ptr %17, i32 0, i32 8
  %call.i = tail call i32 @del_timer_sync(ptr noundef %cursor_timer.i) #20
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i, align 4
  %and2.i = and i32 %33, -3
  store i32 %and2.i, ptr %flags.i, align 4
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @fbcon_add_cursor_timer(ptr noundef %5)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then.i, %land.lhs.true.i.if.end8_crit_edge, %if.then7.if.end8_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp9 = icmp ne i32 %mode, 2
  %cond = zext i1 %cmp9 to i32
  %cursor_flash = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 14
  %34 = ptrtoint ptr %cursor_flash to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %cond, ptr %cursor_flash, align 4
  %cursor = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 4
  %35 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cursor, align 4
  %tobool11.not = icmp eq ptr %36, null
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %var.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6
  %fix.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 7
  %call.i42 = tail call i32 @fb_get_color_depth(ptr noundef %var.i, ptr noundef %fix.i) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @console_blanked to i32))
  %37 = load i32, ptr @console_blanked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i43 = icmp eq i32 %37, 0
  br i1 %tobool.not.i43, label %if.end13.if.end.i47_crit_edge, label %if.then.i45

if.end13.if.end.i47_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i47

if.then.i45:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  %vc_hi_font_mask.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %38 = ptrtoint ptr %vc_hi_font_mask.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vc_hi_font_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool1.not.i = icmp eq i16 %39, 0
  %conv2.i = select i1 %tobool1.not.i, i16 255, i16 511
  %vc_video_erase_char.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 29
  %40 = ptrtoint ptr %vc_video_erase_char.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vc_video_erase_char.i, align 4
  %and.i44 = and i16 %conv2.i, %41
  br label %if.end.i47

if.end.i47:                                       ; preds = %if.then.i45, %if.end13.if.end.i47_crit_edge
  %c.addr.0.i = phi i16 [ %and.i44, %if.then.i45 ], [ %12, %if.end13.if.end.i47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i42)
  %cmp.not.i46 = icmp eq i32 %call.i42, 1
  br i1 %cmp.not.i46, label %sw.bb.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i47
  %conv15.i = zext i16 %c.addr.0.i to i32
  %vc_hi_font_mask16.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %42 = ptrtoint ptr %vc_hi_font_mask16.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vc_hi_font_mask16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool18.not.i = icmp eq i16 %43, 0
  %cond13.i = select i1 %tobool18.not.i, i32 8, i32 9
  %shr.i = lshr i32 %conv15.i, %cond13.i
  %and14.i = and i32 %shr.i, 15
  %44 = zext i32 %call.i42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i42, label %if.then7.i.get_color.exit_crit_edge [
    i32 3, label %sw.bb52.i
    i32 2, label %sw.bb48.i
  ]

if.then7.i.get_color.exit_crit_edge:              ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %get_color.exit

sw.bb.i:                                          ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #22
  %length.i.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 9, i32 1
  %45 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %length.i.i, align 4
  %length2.i.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 8, i32 1
  %47 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %length2.i.i, align 4
  %49 = tail call i32 @llvm.umax.i32(i32 %46, i32 %48) #20
  %length4.i.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 10, i32 1
  %50 = ptrtoint ptr %length4.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %length4.i.i, align 4
  %52 = tail call i32 @llvm.umax.i32(i32 %51, i32 %49) #20
  %shl.i.i = shl i32 4095, %52
  %neg.i.i = and i32 %shl.i.i, 255
  %and.i.i = xor i32 %neg.i.i, 255
  %visual.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 7, i32 5
  %53 = ptrtoint ptr %visual.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %visual.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp26.not.i = icmp eq i32 %54, 0
  %spec.select.i = select i1 %cmp26.not.i, i32 0, i32 %and.i.i
  %cond39.i = select i1 %cmp26.not.i, i32 %and.i.i, i32 0
  %fg.0.i = select i1 %tobool.not.i43, i32 %spec.select.i, i32 %cond39.i
  br label %get_color.exit

sw.bb48.i:                                        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and14.i)
  %55 = icmp ult i32 %and14.i, 9
  br i1 %55, label %switch.lookup, label %sw.bb48.i.get_color.exit_crit_edge

sw.bb48.i.get_color.exit_crit_edge:               ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %get_color.exit

sw.bb52.i:                                        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #22
  %and53.i = and i32 %shr.i, 7
  br label %get_color.exit

switch.lookup:                                    ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #22
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.fbcon_cursor, i32 0, i32 %and14.i
  %56 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %56)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_color.exit

get_color.exit:                                   ; preds = %switch.lookup, %sw.bb52.i, %sw.bb48.i.get_color.exit_crit_edge, %sw.bb.i, %if.then7.i.get_color.exit_crit_edge
  %color.1.i = phi i32 [ %and14.i, %if.then7.i.get_color.exit_crit_edge ], [ %and53.i, %sw.bb52.i ], [ %fg.0.i, %sw.bb.i ], [ %switch.load, %switch.lookup ], [ 3, %sw.bb48.i.get_color.exit_crit_edge ]
  %call.i50 = tail call i32 @fb_get_color_depth(ptr noundef %var.i, ptr noundef %fix.i) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @console_blanked to i32))
  %57 = load i32, ptr @console_blanked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i51 = icmp eq i32 %57, 0
  br i1 %tobool.not.i51, label %get_color.exit.if.end.i60_crit_edge, label %if.then.i57

get_color.exit.if.end.i60_crit_edge:              ; preds = %get_color.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i60

if.then.i57:                                      ; preds = %get_color.exit
  call void @__sanitizer_cov_trace_pc() #22
  %vc_hi_font_mask.i52 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %58 = ptrtoint ptr %vc_hi_font_mask.i52 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %vc_hi_font_mask.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool1.not.i53 = icmp eq i16 %59, 0
  %conv2.i54 = select i1 %tobool1.not.i53, i16 255, i16 511
  %vc_video_erase_char.i55 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 29
  %60 = ptrtoint ptr %vc_video_erase_char.i55 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vc_video_erase_char.i55, align 4
  %and.i56 = and i16 %conv2.i54, %61
  br label %if.end.i60

if.end.i60:                                       ; preds = %if.then.i57, %get_color.exit.if.end.i60_crit_edge
  %c.addr.0.i58 = phi i16 [ %and.i56, %if.then.i57 ], [ %12, %get_color.exit.if.end.i60_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i50)
  %cmp.not.i59 = icmp eq i32 %call.i50, 1
  br i1 %cmp.not.i59, label %sw.bb.i76, label %if.then7.i64

if.then7.i64:                                     ; preds = %if.end.i60
  %conv15.i61 = zext i16 %c.addr.0.i58 to i32
  %vc_hi_font_mask16.i62 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %62 = ptrtoint ptr %vc_hi_font_mask16.i62 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %vc_hi_font_mask16.i62, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool18.not.i63 = icmp eq i16 %63, 0
  %cond19.i = select i1 %tobool18.not.i63, i32 12, i32 13
  %shr20.i = lshr i32 %conv15.i61, %cond19.i
  %64 = zext i32 %call.i50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %call.i50, label %if.then7.i64.get_color.exit84_crit_edge [
    i32 3, label %sw.bb52.i82
    i32 2, label %sw.bb48.i77
  ]

if.then7.i64.get_color.exit84_crit_edge:          ; preds = %if.then7.i64
  call void @__sanitizer_cov_trace_pc() #22
  br label %get_color.exit84

sw.bb.i76:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #22
  %length.i.i65 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 9, i32 1
  %65 = ptrtoint ptr %length.i.i65 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %length.i.i65, align 4
  %length2.i.i66 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 8, i32 1
  %67 = ptrtoint ptr %length2.i.i66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %length2.i.i66, align 4
  %69 = tail call i32 @llvm.umax.i32(i32 %66, i32 %68) #20
  %length4.i.i67 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 10, i32 1
  %70 = ptrtoint ptr %length4.i.i67 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %length4.i.i67, align 4
  %72 = tail call i32 @llvm.umax.i32(i32 %71, i32 %69) #20
  %shl.i.i68 = shl i32 4095, %72
  %neg.i.i69 = and i32 %shl.i.i68, 255
  %and.i.i70 = xor i32 %neg.i.i69, 255
  %visual.i71 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 7, i32 5
  %73 = ptrtoint ptr %visual.i71 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %visual.i71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp26.not.i72 = icmp eq i32 %74, 0
  %cond39.i74 = select i1 %cmp26.not.i72, i32 %and.i.i70, i32 0
  br label %get_color.exit84

sw.bb48.i77:                                      ; preds = %if.then7.i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %shr20.i)
  %75 = icmp ult i32 %shr20.i, 9
  br i1 %75, label %switch.lookup86, label %sw.bb48.i77.get_color.exit84_crit_edge

sw.bb48.i77.get_color.exit84_crit_edge:           ; preds = %sw.bb48.i77
  call void @__sanitizer_cov_trace_pc() #22
  br label %get_color.exit84

sw.bb52.i82:                                      ; preds = %if.then7.i64
  call void @__sanitizer_cov_trace_pc() #22
  %and53.i81 = and i32 %shr20.i, 7
  br label %get_color.exit84

switch.lookup86:                                  ; preds = %sw.bb48.i77
  call void @__sanitizer_cov_trace_pc() #22
  %switch.gep87 = getelementptr inbounds [9 x i32], ptr @switch.table.fbcon_cursor.62, i32 0, i32 %shr20.i
  %76 = ptrtoint ptr %switch.gep87 to i32
  call void @__asan_load4_noabort(i32 %76)
  %switch.load88 = load i32, ptr %switch.gep87, align 4
  br label %get_color.exit84

get_color.exit84:                                 ; preds = %switch.lookup86, %sw.bb52.i82, %sw.bb48.i77.get_color.exit84_crit_edge, %sw.bb.i76, %if.then7.i64.get_color.exit84_crit_edge
  %color.1.i83 = phi i32 [ %shr20.i, %if.then7.i64.get_color.exit84_crit_edge ], [ %and53.i81, %sw.bb52.i82 ], [ %cond39.i74, %sw.bb.i76 ], [ %switch.load88, %switch.lookup86 ], [ 3, %sw.bb48.i77.get_color.exit84_crit_edge ]
  tail call void %36(ptr noundef %vc, ptr noundef %5, i32 noundef %mode, i32 noundef %color.1.i, i32 noundef %color.1.i83) #20
  br label %cleanup

cleanup:                                          ; preds = %get_color.exit84, %if.end8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %fbcon_is_inactive.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fbcon_resumed(ptr nocapture noundef readonly %info) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 29
  %0 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbcon_par, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %currcon = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %currcon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %currcon, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @redraw_screen(ptr noundef %5, i32 noundef 0) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @redraw_screen(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fbcon_update_vcs(ptr noundef %info, i1 noundef zeroext %all) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %all, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @fbcon_set_all_vcs(ptr noundef %info)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @fbcon_modechanged(ptr noundef %info)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fbcon_set_all_vcs(ptr noundef %info) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 29
  %0 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbcon_par, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %currcon = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %currcon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %currcon, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, ptr @first_fb_vc, align 4
  %5 = load i32, ptr @last_fb_vc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %5)
  %cmp1.not91 = icmp sgt i32 %4, %5
  br i1 %cmp1.not91, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %xres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %yres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %grayscale.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 7
  %nonstd.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 12
  %accel_flags.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 16
  %height.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 14
  %width.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 15
  %red9.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %green10.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %blue11.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %transp12.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11
  %rotate.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 26
  %modelist.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 13
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %rotate = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %fg.094 = phi i32 [ -1, %for.body.lr.ph ], [ %fg.1, %for.inc.for.body_crit_edge ]
  %i.092 = phi i32 [ %4, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %i.092
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

lor.lhs.false3:                                   ; preds = %for.body
  %vc_mode = getelementptr inbounds %struct.vc_data, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %vc_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp4.not = icmp eq i8 %9, 0
  br i1 %cmp4.not, label %lor.lhs.false6, label %lor.lhs.false3.for.inc_crit_edge

lor.lhs.false3.for.inc_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %arrayidx7 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %i.092
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx7, align 1
  %idxprom = sext i8 %11 to i32
  %arrayidx8 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx8, align 4
  %cmp9.not = icmp eq ptr %13, %info
  br i1 %cmp9.not, label %if.end12, label %lor.lhs.false6.for.inc_crit_edge

lor.lhs.false6.for.inc_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.end12:                                         ; preds = %lor.lhs.false6
  %call = tail call zeroext i1 @con_is_visible(ptr noundef nonnull %7) #20
  br i1 %call, label %if.end12.for.inc_crit_edge, label %if.end14

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.end14:                                         ; preds = %if.end12
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %7, i32 0, i32 3
  %14 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vc_num, align 4
  %idxprom15 = zext i16 %15 to i32
  %arrayidx16 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom15
  %16 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fbcon_par, align 4
  %p.i = getelementptr inbounds %struct.fbcon_ops, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx16, ptr %p.i, align 4
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %20, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.i, label %if.then.i

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @fbcon_set_tileops(ptr noundef nonnull %7, ptr noundef %info) #20
  br label %set_blitting_type.exit

land.lhs.true.i.i:                                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #22
  %21 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fbcon_par, align 4
  %p.i.i = getelementptr inbounds %struct.fbcon_ops, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %p.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %p.i.i, align 4
  %con_rotate.i.i = getelementptr inbounds %struct.fbcon_display, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %con_rotate.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %con_rotate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp.i.i = icmp slt i32 %26, 4
  %spec.select.i = select i1 %cmp.i.i, i32 %26, i32 0
  %rotate3.i.i = getelementptr inbounds %struct.fbcon_ops, ptr %22, i32 0, i32 20
  %27 = ptrtoint ptr %rotate3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %spec.select.i, ptr %rotate3.i.i, align 4
  tail call void @fbcon_set_bitops(ptr noundef %17) #20
  br label %set_blitting_type.exit

set_blitting_type.exit:                           ; preds = %land.lhs.true.i.i, %if.then.i
  %28 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xres_virtual.i, align 4
  %xres_virtual1.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom15, i32 8
  %30 = ptrtoint ptr %xres_virtual1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %xres_virtual1.i, align 4
  %31 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %yres_virtual.i, align 4
  %yres_virtual2.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom15, i32 9
  %33 = ptrtoint ptr %yres_virtual2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %yres_virtual2.i, align 4
  %34 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bits_per_pixel.i, align 4
  %bits_per_pixel3.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom15, i32 12
  %36 = ptrtoint ptr %bits_per_pixel3.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %bits_per_pixel3.i, align 4
  %37 = ptrtoint ptr %grayscale.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %grayscale.i, align 4
  %grayscale4.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom15, i32 13
  %39 = ptrtoint ptr %grayscale4.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %grayscale4.i, align 4
  %40 = ptrtoint ptr %nonstd.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nonstd.i, align 4
  %nonstd5.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom15, i32 14
  %42 = ptrtoint ptr %nonstd5.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %nonstd5.i, align 4
  %43 = ptrtoint ptr %accel_flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %accel_flags.i, align 4
  %accel_flags6.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom15, i32 15
  %45 = ptrtoint ptr %accel_flags6.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %accel_flags6.i, align 4
  %46 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %height.i, align 4
  %height7.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom15, i32 10
  %48 = ptrtoint ptr %height7.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %height7.i, align 4
  %49 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %width.i, align 4
  %width8.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom15, i32 11
  %51 = ptrtoint ptr %width8.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %width8.i, align 4
  %red.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom15, i32 17
  %52 = call ptr @memcpy(ptr %red.i, ptr %red9.i, i32 12)
  %green.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom15, i32 18
  %53 = call ptr @memcpy(ptr %green.i, ptr %green10.i, i32 12)
  %blue.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom15, i32 19
  %54 = call ptr @memcpy(ptr %blue.i, ptr %blue11.i, i32 12)
  %transp.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom15, i32 20
  %55 = call ptr @memcpy(ptr %transp.i, ptr %transp12.i, i32 12)
  %56 = ptrtoint ptr %rotate.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rotate.i, align 4
  %rotate13.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom15, i32 16
  %58 = ptrtoint ptr %rotate13.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %rotate13.i, align 4
  %call.i = tail call ptr @fb_match_mode(ptr noundef %var, ptr noundef %modelist.i) #20
  %mode.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom15, i32 21
  %59 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i, ptr %mode.i, align 4
  %60 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %var, align 4
  %62 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %yres, align 4
  %64 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rotate, align 4
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %65, label %cond.false [
    i32 0, label %set_blitting_type.exit.cond.end_crit_edge
    i32 2, label %set_blitting_type.exit.cond.end_crit_edge97
  ]

set_blitting_type.exit.cond.end_crit_edge97:      ; preds = %set_blitting_type.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

set_blitting_type.exit.cond.end_crit_edge:        ; preds = %set_blitting_type.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

cond.false:                                       ; preds = %set_blitting_type.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %set_blitting_type.exit.cond.end_crit_edge, %set_blitting_type.exit.cond.end_crit_edge97
  %cond = phi i32 [ %63, %cond.false ], [ %61, %set_blitting_type.exit.cond.end_crit_edge ], [ %61, %set_blitting_type.exit.cond.end_crit_edge97 ]
  %67 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %65, label %cond.false45 [
    i32 0, label %cond.end.cond.end46_crit_edge
    i32 2, label %cond.end.cond.end46_crit_edge98
  ]

cond.end.cond.end46_crit_edge98:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end46

cond.end.cond.end46_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end46

cond.false45:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false45, %cond.end.cond.end46_crit_edge, %cond.end.cond.end46_crit_edge98
  %cond47 = phi i32 [ %61, %cond.false45 ], [ %63, %cond.end.cond.end46_crit_edge ], [ %63, %cond.end.cond.end46_crit_edge98 ]
  %vc_font = getelementptr inbounds %struct.vc_data, ptr %7, i32 0, i32 28
  %68 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %vc_font, align 4
  %div = udiv i32 %cond, %69
  %height = getelementptr inbounds %struct.vc_data, ptr %7, i32 0, i32 28, i32 1
  %70 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %height, align 4
  %div49 = udiv i32 %cond47, %71
  %call50 = tail call i32 @vc_resize(ptr noundef nonnull %7, i32 noundef %div, i32 noundef %div49) #20
  br label %for.inc

for.inc:                                          ; preds = %cond.end46, %if.end12.for.inc_crit_edge, %lor.lhs.false6.for.inc_crit_edge, %lor.lhs.false3.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %fg.1 = phi i32 [ %fg.094, %lor.lhs.false3.for.inc_crit_edge ], [ %fg.094, %lor.lhs.false6.for.inc_crit_edge ], [ %fg.094, %cond.end46 ], [ %fg.094, %for.body.for.inc_crit_edge ], [ %i.092, %if.end12.for.inc_crit_edge ]
  %inc = add i32 %i.092, 1
  %72 = load i32, ptr @last_fb_vc, align 4
  %cmp1.not = icmp sgt i32 %inc, %72
  br i1 %cmp1.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %fg.1)
  %cmp51.not = icmp eq i32 %fg.1, -1
  br i1 %cmp51.not, label %for.end.cleanup_crit_edge, label %if.then53

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then53:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @fbcon_modechanged(ptr noundef %info)
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fbcon_modechanged(ptr noundef %info) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 29
  %0 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbcon_par, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %currcon = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %currcon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %currcon, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %vc_mode = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %vc_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp2.not = icmp eq i8 %7, 0
  br i1 %cmp2.not, label %lor.lhs.false4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.end
  %arrayidx6 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %3
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6, align 1
  %idxprom = sext i8 %9 to i32
  %arrayidx7 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx7, align 4
  %cmp8.not = icmp eq ptr %11, %info
  br i1 %cmp8.not, label %if.end11, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false4
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vc_num, align 4
  %idxprom12 = zext i16 %13 to i32
  %arrayidx13 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom12
  %p.i = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx13, ptr %p.i, align 4
  %flags.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %16, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.i, label %if.then.i

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @fbcon_set_tileops(ptr noundef %5, ptr noundef %info) #20
  br label %set_blitting_type.exit

land.lhs.true.i.i:                                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  %17 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fbcon_par, align 4
  %p.i.i = getelementptr inbounds %struct.fbcon_ops, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %p.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %p.i.i, align 4
  %con_rotate.i.i = getelementptr inbounds %struct.fbcon_display, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %con_rotate.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %con_rotate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp.i.i = icmp slt i32 %22, 4
  %spec.select.i = select i1 %cmp.i.i, i32 %22, i32 0
  %rotate3.i.i = getelementptr inbounds %struct.fbcon_ops, ptr %18, i32 0, i32 20
  %23 = ptrtoint ptr %rotate3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.select.i, ptr %rotate3.i.i, align 4
  tail call void @fbcon_set_bitops(ptr noundef nonnull %1) #20
  br label %set_blitting_type.exit

set_blitting_type.exit:                           ; preds = %land.lhs.true.i.i, %if.then.i
  %call = tail call zeroext i1 @con_is_visible(ptr noundef %5) #20
  br i1 %call, label %if.then14, label %set_blitting_type.exit.cleanup_crit_edge

set_blitting_type.exit.cleanup_crit_edge:         ; preds = %set_blitting_type.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then14:                                        ; preds = %set_blitting_type.exit
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %xres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %24 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xres_virtual.i, align 4
  %xres_virtual1.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom12, i32 8
  %26 = ptrtoint ptr %xres_virtual1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %xres_virtual1.i, align 4
  %yres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %27 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %yres_virtual.i, align 4
  %yres_virtual2.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom12, i32 9
  %29 = ptrtoint ptr %yres_virtual2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %yres_virtual2.i, align 4
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %30 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bits_per_pixel.i, align 4
  %bits_per_pixel3.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom12, i32 12
  %32 = ptrtoint ptr %bits_per_pixel3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %bits_per_pixel3.i, align 4
  %grayscale.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 7
  %33 = ptrtoint ptr %grayscale.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %grayscale.i, align 4
  %grayscale4.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom12, i32 13
  %35 = ptrtoint ptr %grayscale4.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %grayscale4.i, align 4
  %nonstd.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 12
  %36 = ptrtoint ptr %nonstd.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nonstd.i, align 4
  %nonstd5.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom12, i32 14
  %38 = ptrtoint ptr %nonstd5.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %nonstd5.i, align 4
  %accel_flags.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 16
  %39 = ptrtoint ptr %accel_flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %accel_flags.i, align 4
  %accel_flags6.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom12, i32 15
  %41 = ptrtoint ptr %accel_flags6.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %accel_flags6.i, align 4
  %height.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 14
  %42 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %height.i, align 4
  %height7.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom12, i32 10
  %44 = ptrtoint ptr %height7.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %height7.i, align 4
  %width.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 15
  %45 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %width.i, align 4
  %width8.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom12, i32 11
  %47 = ptrtoint ptr %width8.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %width8.i, align 4
  %red.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom12, i32 17
  %red9.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %48 = call ptr @memcpy(ptr %red.i, ptr %red9.i, i32 12)
  %green.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom12, i32 18
  %green10.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %49 = call ptr @memcpy(ptr %green.i, ptr %green10.i, i32 12)
  %blue.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom12, i32 19
  %blue11.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %50 = call ptr @memcpy(ptr %blue.i, ptr %blue11.i, i32 12)
  %transp.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom12, i32 20
  %transp12.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11
  %51 = call ptr @memcpy(ptr %transp.i, ptr %transp12.i, i32 12)
  %rotate.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 26
  %52 = ptrtoint ptr %rotate.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rotate.i, align 4
  %rotate13.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom12, i32 16
  %54 = ptrtoint ptr %rotate13.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %rotate13.i, align 4
  %modelist.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 13
  %call.i = tail call ptr @fb_match_mode(ptr noundef %var, ptr noundef %modelist.i) #20
  %mode.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom12, i32 21
  %55 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i, ptr %mode.i, align 4
  %56 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %58 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %yres, align 4
  %rotate = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 20
  %60 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rotate, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %61, label %cond.false [
    i32 0, label %if.then14.cond.end_crit_edge
    i32 2, label %if.then14.cond.end_crit_edge101
  ]

if.then14.cond.end_crit_edge101:                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

if.then14.cond.end_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

cond.false:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then14.cond.end_crit_edge, %if.then14.cond.end_crit_edge101
  %cond = phi i32 [ %59, %cond.false ], [ %57, %if.then14.cond.end_crit_edge ], [ %57, %if.then14.cond.end_crit_edge101 ]
  %63 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %61, label %cond.false43 [
    i32 0, label %cond.end.cond.end44_crit_edge
    i32 2, label %cond.end.cond.end44_crit_edge102
  ]

cond.end.cond.end44_crit_edge102:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end44

cond.end.cond.end44_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end44

cond.false43:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end44

cond.end44:                                       ; preds = %cond.false43, %cond.end.cond.end44_crit_edge, %cond.end.cond.end44_crit_edge102
  %cond45 = phi i32 [ %57, %cond.false43 ], [ %59, %cond.end.cond.end44_crit_edge ], [ %59, %cond.end.cond.end44_crit_edge102 ]
  %vc_font = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 28
  %64 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %vc_font, align 4
  %div = udiv i32 %cond, %65
  %height = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 28, i32 1
  %66 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %height, align 4
  %div47 = udiv i32 %cond45, %67
  %call48 = tail call i32 @vc_resize(ptr noundef %5, i32 noundef %div, i32 noundef %div47) #20
  tail call fastcc void @updatescrollmode(ptr noundef %arrayidx13, ptr noundef %info, ptr noundef %5)
  store i32 0, ptr @scrollback_max, align 4
  %68 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fbcon_par, align 4
  %state.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %70 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.not.i = icmp eq i32 %71, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %cond.end44.if.end55_crit_edge

cond.end44.if.end55_crit_edge:                    ; preds = %cond.end44
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end55

lor.lhs.false.i:                                  ; preds = %cond.end44
  %72 = ptrtoint ptr %vc_mode to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %vc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp1.not.i = icmp eq i8 %73, 0
  br i1 %cmp1.not.i, label %fbcon_is_inactive.exit, label %lor.lhs.false.i.if.end55_crit_edge

lor.lhs.false.i.if.end55_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end55

fbcon_is_inactive.exit:                           ; preds = %lor.lhs.false.i
  %graphics.i = getelementptr inbounds %struct.fbcon_ops, ptr %69, i32 0, i32 17
  %74 = ptrtoint ptr %graphics.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %graphics.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.i.not = icmp eq i32 %75, 0
  br i1 %tobool.i.not, label %if.then51, label %fbcon_is_inactive.exit.if.end55_crit_edge

fbcon_is_inactive.exit.if.end55_crit_edge:        ; preds = %fbcon_is_inactive.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end55

if.then51:                                        ; preds = %fbcon_is_inactive.exit
  call void @__sanitizer_cov_trace_pc() #22
  %yscroll = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom12, i32 4
  %76 = ptrtoint ptr %yscroll to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %yscroll, align 4
  %yoffset = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 7, i32 5
  %77 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %yoffset, align 4
  %xoffset = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 7, i32 4
  %78 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %xoffset, align 4
  %update_start = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 5
  %79 = ptrtoint ptr %update_start to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %update_start, align 4
  %call54 = tail call i32 %80(ptr noundef %info) #20
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %fbcon_is_inactive.exit.if.end55_crit_edge, %lor.lhs.false.i.if.end55_crit_edge, %cond.end44.if.end55_crit_edge
  tail call void @fbcon_set_palette(ptr noundef %5, ptr noundef nonnull @color_table)
  tail call void @redraw_screen(ptr noundef %5, i32 noundef 0) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %set_blitting_type.exit.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fbcon_mode_deleted(ptr noundef readnone %info, ptr noundef %mode) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @first_fb_vc, align 4
  %1 = load i32, ptr @last_fb_vc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %1)
  %cmp.not23 = icmp sgt i32 %0, %1
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %i.024
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp1 = icmp eq i8 %3, -1
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.end:                                           ; preds = %for.body
  %conv = sext i8 %3 to i32
  %arrayidx3 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  %cmp4.not = icmp ne ptr %5, %info
  %arrayidx8 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %i.024
  %tobool.not = icmp eq ptr %arrayidx8, null
  %or.cond = select i1 %cmp4.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.end.for.inc_crit_edge, label %lor.lhs.false

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end
  %mode9 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %i.024, i32 21
  %6 = ptrtoint ptr %mode9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode9, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end12

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.end12:                                         ; preds = %lor.lhs.false
  %call = tail call i32 @fb_mode_is_equal(ptr noundef nonnull %7, ptr noundef %mode) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not = icmp eq i32 %call, 0
  br i1 %tobool14.not, label %if.end12.for.inc_crit_edge, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

for.inc:                                          ; preds = %if.end12.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %i.024, 1
  %8 = load i32, ptr @last_fb_vc, align 4
  %cmp.not = icmp sgt i32 %inc, %8
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end12.for.end_crit_edge, %entry.for.end_crit_edge
  %found.0 = phi i32 [ 0, %entry.for.end_crit_edge ], [ 1, %if.end12.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  ret i32 %found.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_mode_is_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fbcon_fb_unbind(ptr nocapture noundef readonly %info) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %node = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ignore_console_lock_warning, i32 noundef 4) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ignore_console_lock_warning to i32))
  %2 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @is_console_locked() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.rhs, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %3 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !209

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2792, i32 noundef 9, ptr noundef null) #20
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %.b = load i1, ptr @fbcon_has_console_bind, align 4
  br i1 %.b, label %if.end26, label %if.end.cleanup83_crit_edge

if.end.cleanup83_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup83

if.end26:                                         ; preds = %if.end
  %4 = load i32, ptr @first_fb_vc, align 4
  %5 = load i32, ptr @last_fb_vc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %5)
  %cmp.not119 = icmp sgt i32 %4, %5
  br i1 %cmp.not119, label %if.end26.if.else_crit_edge, label %if.end26.for.body_crit_edge

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  br label %for.body

if.end26.if.else_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else

for.cond:                                         ; preds = %for.body
  %inc = add i32 %i.0120, 1
  %cmp.not = icmp sgt i32 %inc, %5
  br i1 %cmp.not, label %for.cond.if.else_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.cond.if.else_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end26.for.body_crit_edge
  %i.0120 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ %4, %if.end26.for.body_crit_edge ]
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %i.0120
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp27.not = icmp eq i32 %1, %conv
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp32.not = icmp eq i8 %7, -1
  %or.cond = or i1 %cmp32.not, %cmp27.not
  br i1 %or.cond, label %for.cond, label %for.cond41.preheader

for.cond41.preheader:                             ; preds = %for.body
  %conv.le = sext i8 %7 to i32
  %8 = load i32, ptr @last_fb_vc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %8)
  %cmp42.not121 = icmp sgt i32 %4, %8
  br i1 %cmp42.not121, label %for.cond41.preheader.cleanup83_crit_edge, label %for.cond41.preheader.for.body44_crit_edge

for.cond41.preheader.for.body44_crit_edge:        ; preds = %for.cond41.preheader
  br label %for.body44

for.cond41.preheader.cleanup83_crit_edge:         ; preds = %for.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup83

for.body44:                                       ; preds = %for.inc52.for.body44_crit_edge, %for.cond41.preheader.for.body44_crit_edge
  %i.1122 = phi i32 [ %inc53, %for.inc52.for.body44_crit_edge ], [ %4, %for.cond41.preheader.for.body44_crit_edge ]
  %arrayidx45 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %i.1122
  %9 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx45, align 1
  %conv46 = sext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv46)
  %cmp47 = icmp eq i32 %1, %conv46
  br i1 %cmp47, label %if.then49, label %for.body44.for.inc52_crit_edge

for.body44.for.inc52_crit_edge:                   ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc52

if.then49:                                        ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #22
  %call50 = tail call fastcc i32 @set_con2fb_map(i32 noundef %i.1122, i32 noundef %conv.le, i32 noundef 0)
  br label %for.inc52

for.inc52:                                        ; preds = %if.then49, %for.body44.for.inc52_crit_edge
  %inc53 = add i32 %i.1122, 1
  %11 = load i32, ptr @last_fb_vc, align 4
  %cmp42.not = icmp sgt i32 %inc53, %11
  br i1 %cmp42.not, label %for.inc52.cleanup83_crit_edge, label %for.inc52.for.body44_crit_edge

for.inc52.for.body44_crit_edge:                   ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body44

for.inc52.cleanup83_crit_edge:                    ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup83

if.else:                                          ; preds = %for.cond.if.else_crit_edge, %if.end26.if.else_crit_edge
  %arrayidx56 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %1
  %12 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx56, align 4
  %14 = load i32, ptr @last_fb_vc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %14)
  %cmp58.not124 = icmp sgt i32 %4, %14
  br i1 %cmp58.not124, label %if.else.for.end81_crit_edge, label %if.else.for.body60_crit_edge

if.else.for.body60_crit_edge:                     ; preds = %if.else
  br label %for.body60

if.else.for.end81_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end81

for.body60:                                       ; preds = %for.inc79.for.body60_crit_edge, %if.else.for.body60_crit_edge
  %15 = phi i32 [ %23, %for.inc79.for.body60_crit_edge ], [ %14, %if.else.for.body60_crit_edge ]
  %i.2125 = phi i32 [ %inc80, %for.inc79.for.body60_crit_edge ], [ %4, %if.else.for.body60_crit_edge ]
  %arrayidx61 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %i.2125
  %16 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx61, align 1
  %conv62 = sext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv62)
  %cmp63 = icmp eq i32 %1, %conv62
  br i1 %cmp63, label %if.then65, label %for.body60.for.inc79_crit_edge

for.body60.for.inc79_crit_edge:                   ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc79

if.then65:                                        ; preds = %for.body60
  %18 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %arrayidx61, align 1
  %19 = load i32, ptr @first_fb_vc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %15)
  %cmp.not6.i = icmp sgt i32 %19, %15
  br i1 %cmp.not6.i, label %if.then65.if.then69_crit_edge, label %if.then65.for.body.i_crit_edge

if.then65.for.body.i_crit_edge:                   ; preds = %if.then65
  br label %for.body.i

if.then65.if.then69_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then69

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then65.for.body.i_crit_edge
  %retval1.08.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then65.for.body.i_crit_edge ]
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %19, %if.then65.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %i.07.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  %conv.i = sext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv.i)
  %cmp2.i = icmp eq i32 %1, %conv.i
  %spec.select.i = select i1 %cmp2.i, i32 1, i32 %retval1.08.i
  %inc.i = add i32 %i.07.i, 1
  %cmp.not.i = icmp sgt i32 %inc.i, %15
  br i1 %cmp.not.i, label %search_fb_in_map.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

search_fb_in_map.exit:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool68.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool68.not, label %search_fb_in_map.exit.if.then69_crit_edge, label %search_fb_in_map.exit.for.inc79_crit_edge

search_fb_in_map.exit.for.inc79_crit_edge:        ; preds = %search_fb_in_map.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc79

search_fb_in_map.exit.if.then69_crit_edge:        ; preds = %search_fb_in_map.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then69

if.then69:                                        ; preds = %search_fb_in_map.exit.if.then69_crit_edge, %if.then65.if.then69_crit_edge
  %call71 = tail call fastcc i32 @con2fb_release_oldinfo(ptr noundef %13, ptr noundef null, i32 noundef %i.2125, i32 noundef %1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then69.for.inc79_crit_edge, label %if.then73

if.then69.for.inc79_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc79

if.then73:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #22
  %conv74 = trunc i32 %1 to i8
  %22 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv74, ptr %arrayidx61, align 1
  br label %cleanup83

for.inc79:                                        ; preds = %if.then69.for.inc79_crit_edge, %search_fb_in_map.exit.for.inc79_crit_edge, %for.body60.for.inc79_crit_edge
  %inc80 = add i32 %i.2125, 1
  %23 = load i32, ptr @last_fb_vc, align 4
  %cmp58.not = icmp sgt i32 %inc80, %23
  br i1 %cmp58.not, label %for.inc79.for.end81_crit_edge, label %for.inc79.for.body60_crit_edge

for.inc79.for.body60_crit_edge:                   ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body60

for.inc79.for.end81_crit_edge:                    ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end81

for.end81:                                        ; preds = %for.inc79.for.end81_crit_edge, %if.else.for.end81_crit_edge
  %.lcssa = phi i32 [ %14, %if.else.for.end81_crit_edge ], [ %23, %for.inc79.for.end81_crit_edge ]
  %24 = load i32, ptr @first_fb_vc, align 4
  %.b.i = load i1, ptr @fbcon_is_default, align 4
  %not..b.i = xor i1 %.b.i, true
  %25 = zext i1 %not..b.i to i32
  %call.i = tail call i32 @do_unbind_con_driver(ptr noundef nonnull @fb_con, i32 noundef %24, i32 noundef %.lcssa, i32 noundef %25) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.end81.cleanup83_crit_edge

for.end81.cleanup83_crit_edge:                    ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup83

if.then.i:                                        ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #22
  store i1 false, ptr @fbcon_has_console_bind, align 4
  br label %cleanup83

cleanup83:                                        ; preds = %if.then.i, %for.end81.cleanup83_crit_edge, %if.then73, %for.inc52.cleanup83_crit_edge, %for.cond41.preheader.cleanup83_crit_edge, %if.end.cleanup83_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_console_locked() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_con2fb_map(i32 noundef %unit, i32 noundef %newidx, i32 noundef %user) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %unit
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %unit
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv = sext i8 %3 to i32
  %arrayidx2 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %newidx
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ignore_console_lock_warning, i32 noundef 4) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ignore_console_lock_warning to i32))
  %6 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @is_console_locked() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.rhs, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %7 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !209

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 842, i32 noundef 9, ptr noundef null) #20
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %newidx)
  %cmp = icmp eq i32 %conv, %newidx
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end28

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %tobool29.not = icmp eq ptr %5, null
  br i1 %tobool29.not, label %if.end28.cleanup_crit_edge, label %if.end31

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end31:                                         ; preds = %if.end28
  %8 = load i32, ptr @first_fb_vc, align 4
  %9 = load i32, ptr @last_fb_vc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %9)
  %cmp.not6.i = icmp sgt i32 %8, %9
  br i1 %cmp.not6.i, label %if.end31.if.then36_crit_edge, label %if.end31.for.body.i_crit_edge

if.end31.for.body.i_crit_edge:                    ; preds = %if.end31
  br label %for.body.i

if.end31.if.then36_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then36

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end31.for.body.i_crit_edge
  %retval1.08.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end31.for.body.i_crit_edge ]
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %8, %if.end31.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %i.07.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp2.not.i = icmp eq i8 %11, -1
  %spec.select.i = select i1 %cmp2.not.i, i32 %retval1.08.i, i32 1
  %inc.i = add i32 %i.07.i, 1
  %cmp.not.i = icmp sgt i32 %inc.i, %9
  br i1 %cmp.not.i, label %search_for_mapped_con.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

search_for_mapped_con.exit:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool33.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool33.not, label %search_for_mapped_con.exit.if.then36_crit_edge, label %lor.lhs.false

search_for_mapped_con.exit.if.then36_crit_edge:   ; preds = %search_for_mapped_con.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then36

lor.lhs.false:                                    ; preds = %search_for_mapped_con.exit
  %call34 = tail call i32 @con_is_bound(ptr noundef nonnull @fb_con) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %lor.lhs.false.if.then36_crit_edge, label %if.end38

lor.lhs.false.if.then36_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false.if.then36_crit_edge, %search_for_mapped_con.exit.if.then36_crit_edge, %if.end31.if.then36_crit_edge
  store i32 %newidx, ptr @info_idx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @num_registered_fb to i32))
  %12 = load i32, ptr @num_registered_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.then36.cleanup_crit_edge, label %if.end.i

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end.i:                                         ; preds = %if.then36
  store i32 -3, ptr @logo_shown, align 4
  %13 = load i32, ptr @first_fb_vc, align 4
  %14 = load i32, ptr @last_fb_vc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %14)
  %cmp.not22.i = icmp sgt i32 %13, %14
  br i1 %cmp.not22.i, label %if.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %conv.i = trunc i32 %newidx to i8
  br label %for.body.i121

for.body.i121:                                    ; preds = %for.body.i121.for.body.i121_crit_edge, %for.body.lr.ph.i
  %i.023.i = phi i32 [ %13, %for.body.lr.ph.i ], [ %inc.i119, %for.body.i121.for.body.i121_crit_edge ]
  %arrayidx.i118 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %i.023.i
  %15 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %arrayidx.i118, align 1
  %inc.i119 = add i32 %i.023.i, 1
  %cmp.not.i120 = icmp sgt i32 %inc.i119, %14
  br i1 %cmp.not.i120, label %for.body.i121.for.end.i_crit_edge, label %for.body.i121.for.body.i121_crit_edge

for.body.i121.for.body.i121_crit_edge:            ; preds = %for.body.i121
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i121

for.body.i121.for.end.i_crit_edge:                ; preds = %for.body.i121
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i121.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %.b.i = load i1, ptr @fbcon_is_default, align 4
  %not..b.i = xor i1 %.b.i, true
  %16 = zext i1 %not..b.i to i32
  %call.i = tail call i32 @do_take_over_console(ptr noundef nonnull @fb_con, i32 noundef %13, i32 noundef %14, i32 noundef %16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %for.end.i
  %17 = load i32, ptr @first_fb_vc, align 4
  %18 = load i32, ptr @last_fb_vc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %18)
  %cmp7.not24.i = icmp sgt i32 %17, %18
  br i1 %cmp7.not24.i, label %if.then5.i.for.end13.i_crit_edge, label %if.then5.i.for.body9.i_crit_edge

if.then5.i.for.body9.i_crit_edge:                 ; preds = %if.then5.i
  br label %for.body9.i

if.then5.i.for.end13.i_crit_edge:                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end13.i

for.body9.i:                                      ; preds = %for.body9.i.for.body9.i_crit_edge, %if.then5.i.for.body9.i_crit_edge
  %i.125.i = phi i32 [ %inc12.i, %for.body9.i.for.body9.i_crit_edge ], [ %17, %if.then5.i.for.body9.i_crit_edge ]
  %arrayidx10.i = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %i.125.i
  %19 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %arrayidx10.i, align 1
  %inc12.i = add i32 %i.125.i, 1
  %cmp7.not.i = icmp sgt i32 %inc12.i, %18
  br i1 %cmp7.not.i, label %for.body9.i.for.end13.i_crit_edge, label %for.body9.i.for.body9.i_crit_edge

for.body9.i.for.body9.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body9.i

for.body9.i.for.end13.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end13.i

for.end13.i:                                      ; preds = %for.body9.i.for.end13.i_crit_edge, %if.then5.i.for.end13.i_crit_edge
  store i32 -1, ptr @info_idx, align 4
  br label %cleanup

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @fbcon_has_console_bind, align 4
  br label %cleanup

if.end38:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp39.not = icmp eq i8 %3, -1
  br i1 %cmp39.not, label %if.end38.if.end43_crit_edge, label %if.then41

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end43

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx42 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %conv
  %20 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx42, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end38.if.end43_crit_edge
  %oldinfo.0 = phi ptr [ %21, %if.then41 ], [ null, %if.end38.if.end43_crit_edge ]
  %22 = load i32, ptr @first_fb_vc, align 4
  %23 = load i32, ptr @last_fb_vc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %23)
  %cmp.not6.i122 = icmp sgt i32 %22, %23
  br i1 %cmp.not6.i122, label %search_fb_in_map.exit.thread, label %if.end43.for.body.i130_crit_edge

if.end43.for.body.i130_crit_edge:                 ; preds = %if.end43
  br label %for.body.i130

search_fb_in_map.exit.thread:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #22
  %conv45166 = trunc i32 %newidx to i8
  %24 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv45166, ptr %arrayidx1, align 1
  br label %if.end52

for.body.i130:                                    ; preds = %for.body.i130.for.body.i130_crit_edge, %if.end43.for.body.i130_crit_edge
  %retval1.08.i123 = phi i32 [ %spec.select.i127, %for.body.i130.for.body.i130_crit_edge ], [ 0, %if.end43.for.body.i130_crit_edge ]
  %i.07.i124 = phi i32 [ %inc.i128, %for.body.i130.for.body.i130_crit_edge ], [ %22, %if.end43.for.body.i130_crit_edge ]
  %arrayidx.i125 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %i.07.i124
  %25 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i125, align 1
  %conv.i126 = sext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i126, i32 %newidx)
  %cmp2.i = icmp eq i32 %conv.i126, %newidx
  %spec.select.i127 = select i1 %cmp2.i, i32 1, i32 %retval1.08.i123
  %inc.i128 = add i32 %i.07.i124, 1
  %cmp.not.i129 = icmp sgt i32 %inc.i128, %23
  br i1 %cmp.not.i129, label %search_fb_in_map.exit, label %for.body.i130.for.body.i130_crit_edge

for.body.i130.for.body.i130_crit_edge:            ; preds = %for.body.i130
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i130

search_fb_in_map.exit:                            ; preds = %for.body.i130
  %conv45 = trunc i32 %newidx to i8
  %27 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv45, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i127)
  %tobool49.not = icmp eq i32 %spec.select.i127, 0
  br i1 %tobool49.not, label %search_fb_in_map.exit.if.end52_crit_edge, label %search_fb_in_map.exit.land.lhs.true54_crit_edge

search_fb_in_map.exit.land.lhs.true54_crit_edge:  ; preds = %search_fb_in_map.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true54

search_fb_in_map.exit.if.end52_crit_edge:         ; preds = %search_fb_in_map.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end52

if.end52:                                         ; preds = %search_fb_in_map.exit.if.end52_crit_edge, %search_fb_in_map.exit.thread
  %conv45171 = phi i8 [ %conv45166, %search_fb_in_map.exit.thread ], [ %conv45, %search_fb_in_map.exit.if.end52_crit_edge ]
  %call51 = tail call fastcc i32 @con2fb_acquire_newinfo(ptr noundef %1, ptr noundef nonnull %5, i32 noundef %unit, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool53.not = icmp eq i32 %call51, 0
  br i1 %tobool53.not, label %if.end52.land.lhs.true54_crit_edge, label %if.end52.if.end77_crit_edge

if.end52.if.end77_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end77

if.end52.land.lhs.true54_crit_edge:               ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true54

land.lhs.true54:                                  ; preds = %if.end52.land.lhs.true54_crit_edge, %search_fb_in_map.exit.land.lhs.true54_crit_edge
  %retval1.0.lcssa.i131168183 = phi i32 [ 0, %if.end52.land.lhs.true54_crit_edge ], [ %spec.select.i127, %search_fb_in_map.exit.land.lhs.true54_crit_edge ]
  %conv45170182 = phi i8 [ %conv45171, %if.end52.land.lhs.true54_crit_edge ], [ %conv45, %search_fb_in_map.exit.land.lhs.true54_crit_edge ]
  %tobool49.not172180 = phi i1 [ true, %if.end52.land.lhs.true54_crit_edge ], [ false, %search_fb_in_map.exit.land.lhs.true54_crit_edge ]
  %tobool55.not = icmp eq ptr %oldinfo.0, null
  br i1 %tobool55.not, label %land.lhs.true54.if.then63_crit_edge, label %land.lhs.true56

land.lhs.true54.if.then63_crit_edge:              ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then63

land.lhs.true56:                                  ; preds = %land.lhs.true54
  %28 = load i32, ptr @first_fb_vc, align 4
  %29 = load i32, ptr @last_fb_vc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %29)
  %cmp.not6.i133 = icmp sgt i32 %28, %29
  br i1 %cmp.not6.i133, label %land.lhs.true56.if.end61_crit_edge, label %land.lhs.true56.for.body.i142_crit_edge

land.lhs.true56.for.body.i142_crit_edge:          ; preds = %land.lhs.true56
  br label %for.body.i142

land.lhs.true56.if.end61_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end61

for.body.i142:                                    ; preds = %for.body.i142.for.body.i142_crit_edge, %land.lhs.true56.for.body.i142_crit_edge
  %retval1.08.i134 = phi i32 [ %spec.select.i139, %for.body.i142.for.body.i142_crit_edge ], [ 0, %land.lhs.true56.for.body.i142_crit_edge ]
  %i.07.i135 = phi i32 [ %inc.i140, %for.body.i142.for.body.i142_crit_edge ], [ %28, %land.lhs.true56.for.body.i142_crit_edge ]
  %arrayidx.i136 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %i.07.i135
  %30 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i136, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %3)
  %cmp2.i138 = icmp eq i8 %31, %3
  %spec.select.i139 = select i1 %cmp2.i138, i32 1, i32 %retval1.08.i134
  %inc.i140 = add i32 %i.07.i135, 1
  %cmp.not.i141 = icmp sgt i32 %inc.i140, %29
  br i1 %cmp.not.i141, label %search_fb_in_map.exit145, label %for.body.i142.for.body.i142_crit_edge

for.body.i142.for.body.i142_crit_edge:            ; preds = %for.body.i142
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i142

search_fb_in_map.exit145:                         ; preds = %for.body.i142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i139)
  %tobool58.not = icmp eq i32 %spec.select.i139, 0
  br i1 %tobool58.not, label %search_fb_in_map.exit145.if.end61_crit_edge, label %search_fb_in_map.exit145.if.then63_crit_edge

search_fb_in_map.exit145.if.then63_crit_edge:     ; preds = %search_fb_in_map.exit145
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then63

search_fb_in_map.exit145.if.end61_crit_edge:      ; preds = %search_fb_in_map.exit145
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end61

if.end61:                                         ; preds = %search_fb_in_map.exit145.if.end61_crit_edge, %land.lhs.true56.if.end61_crit_edge
  %call60 = tail call fastcc i32 @con2fb_release_oldinfo(ptr noundef nonnull %oldinfo.0, ptr noundef nonnull %5, i32 noundef %unit, i32 noundef %conv, i32 noundef %retval1.0.lcssa.i131168183)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool62.not = icmp eq i32 %call60, 0
  br i1 %tobool62.not, label %if.end61.if.then63_crit_edge, label %if.end61.if.end77_crit_edge

if.end61.if.end77_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end77

if.end61.if.then63_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then63

if.then63:                                        ; preds = %if.end61.if.then63_crit_edge, %search_fb_in_map.exit145.if.then63_crit_edge, %land.lhs.true54.if.then63_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %32 = load i32, ptr @fg_console, align 4
  %33 = or i32 %32, %user
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %land.rhs68, label %if.then63.land.end71_crit_edge

if.then63.land.end71_crit_edge:                   ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.end71

land.rhs68:                                       ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #22
  %35 = load i32, ptr @logo_shown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %35)
  %cmp69 = icmp ne i32 %35, -3
  %phi.cast = zext i1 %cmp69 to i32
  br label %land.end71

land.end71:                                       ; preds = %land.rhs68, %if.then63.land.end71_crit_edge
  %36 = phi i32 [ 0, %if.then63.land.end71_crit_edge ], [ %phi.cast, %land.rhs68 ]
  br i1 %tobool49.not172180, label %if.then73, label %land.end71.if.end74_crit_edge

land.end71.if.end74_crit_edge:                    ; preds = %land.end71
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end74

if.then73:                                        ; preds = %land.end71
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @fbcon_add_cursor_timer(ptr noundef nonnull %5)
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %land.end71.if.end74_crit_edge
  %arrayidx76 = getelementptr [63 x i8], ptr @con2fb_map_boot, i32 0, i32 %unit
  %37 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv45170182, ptr %arrayidx76, align 1
  %fbcon_par.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 29
  %38 = ptrtoint ptr %fbcon_par.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fbcon_par.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %40 = load i32, ptr @fg_console, align 4
  %currcon.i = getelementptr inbounds %struct.fbcon_ops, ptr %39, i32 0, i32 12
  %41 = ptrtoint ptr %currcon.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %currcon.i, align 4
  %fbops.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 20
  %42 = ptrtoint ptr %fbops.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fbops.i, align 4
  %fb_set_par.i = getelementptr inbounds %struct.fb_ops, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %fb_set_par.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fb_set_par.i, align 4
  %tobool.not.i146 = icmp eq ptr %45, null
  br i1 %tobool.not.i146, label %if.end74.if.end7.i_crit_edge, label %land.lhs.true.i

if.end74.if.end7.i_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %if.end74
  %flags.i = getelementptr inbounds %struct.fbcon_ops, ptr %39, i32 0, i32 19
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true.i.if.end7.i_crit_edge

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %call.i147 = tail call i32 %45(ptr noundef nonnull %5) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %tobool4.not.i148 = icmp eq i32 %call.i147, 0
  br i1 %tobool4.not.i148, label %if.then.i.if.end7.i_crit_edge, label %do.end.i

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %call.i147) #23
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end.i, %if.then.i.if.end7.i_crit_edge, %land.lhs.true.i.if.end7.i_crit_edge, %if.end74.if.end7.i_crit_edge
  %flags8.i = getelementptr inbounds %struct.fbcon_ops, ptr %39, i32 0, i32 19
  %48 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags8.i, align 4
  %or.i = or i32 %49, 1
  store i32 %or.i, ptr %flags8.i, align 4
  %graphics.i = getelementptr inbounds %struct.fbcon_ops, ptr %39, i32 0, i32 17
  %50 = ptrtoint ptr %graphics.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %graphics.i, align 4
  %var.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6
  tail call fastcc void @fbcon_set_disp(ptr noundef nonnull %5, ptr noundef %var.i, i32 noundef %unit) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool9.not.i = icmp eq i32 %36, 0
  br i1 %tobool9.not.i, label %if.end7.i.con2fb_init_display.exit_crit_edge, label %if.then10.i

if.end7.i.con2fb_init_display.exit_crit_edge:     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %con2fb_init_display.exit

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %51 = load i32, ptr @fg_console, align 4
  %arrayidx.i149 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i149, align 4
  %arrayidx11.i = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %51
  %54 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx11.i, align 1
  %idxprom.i = sext i8 %55 to i32
  %arrayidx12.i = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom.i
  %56 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx12.i, align 4
  %vc_cols.i = getelementptr inbounds %struct.vc_data, ptr %53, i32 0, i32 4
  %58 = ptrtoint ptr %vc_cols.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %vc_cols.i, align 4
  %vc_rows.i = getelementptr inbounds %struct.vc_data, ptr %53, i32 0, i32 5
  %60 = ptrtoint ptr %vc_rows.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %vc_rows.i, align 4
  tail call fastcc void @fbcon_prepare_logo(ptr noundef %53, ptr noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %59, i32 noundef %61) #20
  br label %con2fb_init_display.exit

con2fb_init_display.exit:                         ; preds = %if.then10.i, %if.end7.i.con2fb_init_display.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %62 = load i32, ptr @fg_console, align 4
  %arrayidx16.i = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %62
  %63 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx16.i, align 4
  tail call void @redraw_screen(ptr noundef %64, i32 noundef 0) #20
  br label %if.end77

if.end77:                                         ; preds = %con2fb_init_display.exit, %if.end61.if.end77_crit_edge, %if.end52.if.end77_crit_edge
  %err.1192 = phi i32 [ 0, %con2fb_init_display.exit ], [ %call60, %if.end61.if.end77_crit_edge ], [ %call51, %if.end52.if.end77_crit_edge ]
  %65 = load i32, ptr @info_idx, align 4
  %66 = load i32, ptr @first_fb_vc, align 4
  %67 = load i32, ptr @last_fb_vc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %67)
  %cmp.not6.i150 = icmp sgt i32 %66, %67
  br i1 %cmp.not6.i150, label %if.end77.if.then80_crit_edge, label %if.end77.for.body.i159_crit_edge

if.end77.for.body.i159_crit_edge:                 ; preds = %if.end77
  br label %for.body.i159

if.end77.if.then80_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then80

for.body.i159:                                    ; preds = %for.body.i159.for.body.i159_crit_edge, %if.end77.for.body.i159_crit_edge
  %retval1.08.i151 = phi i32 [ %spec.select.i156, %for.body.i159.for.body.i159_crit_edge ], [ 0, %if.end77.for.body.i159_crit_edge ]
  %i.07.i152 = phi i32 [ %inc.i157, %for.body.i159.for.body.i159_crit_edge ], [ %66, %if.end77.for.body.i159_crit_edge ]
  %arrayidx.i153 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %i.07.i152
  %68 = ptrtoint ptr %arrayidx.i153 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i153, align 1
  %conv.i154 = sext i8 %69 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %conv.i154)
  %cmp2.i155 = icmp eq i32 %65, %conv.i154
  %spec.select.i156 = select i1 %cmp2.i155, i32 1, i32 %retval1.08.i151
  %inc.i157 = add i32 %i.07.i152, 1
  %cmp.not.i158 = icmp sgt i32 %inc.i157, %67
  br i1 %cmp.not.i158, label %search_fb_in_map.exit162, label %for.body.i159.for.body.i159_crit_edge

for.body.i159.for.body.i159_crit_edge:            ; preds = %for.body.i159
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i159

search_fb_in_map.exit162:                         ; preds = %for.body.i159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i156)
  %tobool79.not = icmp eq i32 %spec.select.i156, 0
  br i1 %tobool79.not, label %search_fb_in_map.exit162.if.then80_crit_edge, label %search_fb_in_map.exit162.cleanup_crit_edge

search_fb_in_map.exit162.cleanup_crit_edge:       ; preds = %search_fb_in_map.exit162
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

search_fb_in_map.exit162.if.then80_crit_edge:     ; preds = %search_fb_in_map.exit162
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then80

if.then80:                                        ; preds = %search_fb_in_map.exit162.if.then80_crit_edge, %if.end77.if.then80_crit_edge
  store i32 %newidx, ptr @info_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then80, %search_fb_in_map.exit162.cleanup_crit_edge, %if.else.i, %for.end13.i, %if.then36.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end28.cleanup_crit_edge ], [ %err.1192, %if.then80 ], [ %err.1192, %search_fb_in_map.exit162.cleanup_crit_edge ], [ -19, %if.then36.cleanup_crit_edge ], [ 0, %if.else.i ], [ %call.i, %for.end13.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @con2fb_release_oldinfo(ptr noundef %oldinfo, ptr noundef %newinfo, i32 noundef %unit, i32 noundef %oldidx, i32 noundef %found) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %oldinfo, i32 0, i32 29
  %0 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbcon_par, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %oldinfo, i32 0, i32 20
  %2 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fbops, align 4
  %fb_release = getelementptr inbounds %struct.fb_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %fb_release to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb_release, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.then19_crit_edge, label %land.lhs.true

entry.if.then19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then19

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 %5(ptr noundef %oldinfo, i32 noundef 0) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %land.lhs.true.if.then19_crit_edge, label %if.then

land.lhs.true.if.then19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then19

if.then:                                          ; preds = %land.lhs.true
  %conv = trunc i32 %oldidx to i8
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %unit
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found)
  %tobool4.not = icmp eq i32 %found, 0
  br i1 %tobool4.not, label %land.lhs.true5, label %if.then.if.end37_crit_edge

if.then.if.end37_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end37

land.lhs.true5:                                   ; preds = %if.then
  %fbops6 = getelementptr inbounds %struct.fb_info, ptr %newinfo, i32 0, i32 20
  %7 = ptrtoint ptr %fbops6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fbops6, align 4
  %fb_release7 = getelementptr inbounds %struct.fb_ops, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %fb_release7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fb_release7, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %land.lhs.true5.if.then14_crit_edge, label %if.then9

land.lhs.true5.if.then14_crit_edge:               ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then14

if.then9:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #22
  %call12 = tail call i32 %10(ptr noundef %newinfo, i32 noundef 0) #20
  br label %if.then14

if.then14:                                        ; preds = %if.then9, %land.lhs.true5.if.then14_crit_edge
  %11 = ptrtoint ptr %fbops6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fbops6, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void @module_put(ptr noundef %14) #20
  br label %if.end37

if.then19:                                        ; preds = %land.lhs.true.if.then19_crit_edge, %entry.if.then19_crit_edge
  %15 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fbcon_par, align 4
  %func.i = getelementptr inbounds %struct.fb_info, ptr %oldinfo, i32 0, i32 9, i32 2
  %17 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %func.i, align 4
  %cmp.i = icmp eq ptr %18, @fb_flashcursor
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then19.fbcon_del_cursor_timer.exit_crit_edge

if.then19.fbcon_del_cursor_timer.exit_crit_edge:  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #22
  br label %fbcon_del_cursor_timer.exit

land.lhs.true.i:                                  ; preds = %if.then19
  %flags.i = getelementptr inbounds %struct.fbcon_ops, ptr %16, i32 0, i32 19
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.fbcon_del_cursor_timer.exit_crit_edge, label %if.then.i

land.lhs.true.i.fbcon_del_cursor_timer.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %fbcon_del_cursor_timer.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  %cursor_timer.i = getelementptr inbounds %struct.fbcon_ops, ptr %16, i32 0, i32 8
  %call.i = tail call i32 @del_timer_sync(ptr noundef %cursor_timer.i) #20
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %and2.i = and i32 %22, -3
  store i32 %and2.i, ptr %flags.i, align 4
  br label %fbcon_del_cursor_timer.exit

fbcon_del_cursor_timer.exit:                      ; preds = %if.then.i, %land.lhs.true.i.fbcon_del_cursor_timer.exit_crit_edge, %if.then19.fbcon_del_cursor_timer.exit_crit_edge
  %mask = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 9, i32 3
  %23 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mask, align 4
  tail call void @kfree(ptr noundef %24) #20
  %cursor_data = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 22
  %25 = ptrtoint ptr %cursor_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cursor_data, align 4
  tail call void @kfree(ptr noundef %26) #20
  %cursor_src = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 25
  %27 = ptrtoint ptr %cursor_src to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cursor_src, align 4
  tail call void @kfree(ptr noundef %28) #20
  %fontbuffer = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 23
  %29 = ptrtoint ptr %fontbuffer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fontbuffer, align 4
  tail call void @kfree(ptr noundef %30) #20
  %31 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fbcon_par, align 4
  tail call void @kfree(ptr noundef %32) #20
  %33 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %fbcon_par, align 4
  %34 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fbops, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  tail call void @module_put(ptr noundef %37) #20
  %tobool24.not = icmp eq ptr %newinfo, null
  br i1 %tobool24.not, label %fbcon_del_cursor_timer.exit.if.end37_crit_edge, label %land.lhs.true25

fbcon_del_cursor_timer.exit.if.end37_crit_edge:   ; preds = %fbcon_del_cursor_timer.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end37

land.lhs.true25:                                  ; preds = %fbcon_del_cursor_timer.exit
  %fbops26 = getelementptr inbounds %struct.fb_info, ptr %newinfo, i32 0, i32 20
  %38 = ptrtoint ptr %fbops26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fbops26, align 4
  %fb_set_par = getelementptr inbounds %struct.fb_ops, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %fb_set_par to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fb_set_par, align 4
  %tobool27.not = icmp eq ptr %41, null
  br i1 %tobool27.not, label %land.lhs.true25.if.end37_crit_edge, label %if.then28

land.lhs.true25.if.end37_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end37

if.then28:                                        ; preds = %land.lhs.true25
  %call31 = tail call i32 %41(ptr noundef nonnull %newinfo) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then28.if.end37_crit_edge, label %do.end

if.then28.if.end37_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end37

do.end:                                           ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #22
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %call31) #23
  br label %if.end37

if.end37:                                         ; preds = %do.end, %if.then28.if.end37_crit_edge, %land.lhs.true25.if.end37_crit_edge, %fbcon_del_cursor_timer.exit.if.end37_crit_edge, %if.then14, %if.then.if.end37_crit_edge
  %err.04 = phi i32 [ 0, %fbcon_del_cursor_timer.exit.if.end37_crit_edge ], [ 0, %land.lhs.true25.if.end37_crit_edge ], [ 0, %do.end ], [ 0, %if.then28.if.end37_crit_edge ], [ -19, %if.then.if.end37_crit_edge ], [ -19, %if.then14 ]
  ret i32 %err.04
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fbcon_fb_unregistered(ptr nocapture noundef readonly %info) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ignore_console_lock_warning, i32 noundef 4) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ignore_console_lock_warning to i32))
  %0 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @is_console_locked() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.rhs, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %1 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3.not = icmp eq i32 %1, 0
  br i1 %tobool3.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !209

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2842, i32 noundef 9, ptr noundef null) #20
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %.b = load i1, ptr @deferred_takeover, align 1
  br i1 %.b, label %if.end26, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %node = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %node, align 4
  %4 = load i32, ptr @first_fb_vc, align 4
  %5 = load i32, ptr @last_fb_vc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %5)
  %cmp.not91 = icmp sgt i32 %4, %5
  br i1 %cmp.not91, label %if.end26.for.end_crit_edge, label %if.end26.for.body_crit_edge

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  br label %for.body

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end26.for.body_crit_edge
  %i.092 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %4, %if.end26.for.body_crit_edge ]
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %i.092
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp27 = icmp eq i32 %3, %conv
  br i1 %cmp27, label %if.then29, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.then29:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %for.body.for.inc_crit_edge
  %inc = add i32 %i.092, 1
  %cmp.not = icmp sgt i32 %inc, %5
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end26.for.end_crit_edge
  %9 = load i32, ptr @info_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %9)
  %cmp32 = icmp eq i32 %3, %9
  br i1 %cmp32, label %if.then34, label %for.end.if.end46_crit_edge

for.end.if.end46_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end46

if.then34:                                        ; preds = %for.end
  store i32 -1, ptr @info_idx, align 4
  br label %for.body38

for.body38:                                       ; preds = %for.inc43.for.body38_crit_edge, %if.then34
  %i.193 = phi i32 [ 0, %if.then34 ], [ %inc44, %for.inc43.for.body38_crit_edge ]
  %arrayidx39 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %i.193
  %10 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx39, align 4
  %tobool40.not = icmp eq ptr %11, null
  br i1 %tobool40.not, label %for.inc43, label %if.else

if.else:                                          ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #22
  store i32 %i.193, ptr @info_idx, align 4
  br label %if.end46

for.inc43:                                        ; preds = %for.body38
  %inc44 = add nuw nsw i32 %i.193, 1
  %exitcond.not = icmp eq i32 %inc44, 32
  br i1 %exitcond.not, label %if.end46thread-pre-split, label %for.inc43.for.body38_crit_edge

for.inc43.for.body38_crit_edge:                   ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body38

if.end46thread-pre-split:                         ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #22
  %.pr = load i32, ptr @info_idx, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.end46thread-pre-split, %if.else, %for.end.if.end46_crit_edge
  %12 = phi i32 [ %.pr, %if.end46thread-pre-split ], [ %i.193, %if.else ], [ %9, %for.end.if.end46_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp47.not = icmp eq i32 %12, -1
  %or.cond = select i1 %cmp47.not, i1 true, i1 %cmp.not91
  br i1 %or.cond, label %if.end46.if.end65_crit_edge, label %for.body53.lr.ph

if.end46.if.end65_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end65

for.body53.lr.ph:                                 ; preds = %if.end46
  %conv59 = trunc i32 %12 to i8
  br label %for.body53

for.body53:                                       ; preds = %for.inc62.for.body53_crit_edge, %for.body53.lr.ph
  %i.295 = phi i32 [ %4, %for.body53.lr.ph ], [ %inc63, %for.inc62.for.body53_crit_edge ]
  %arrayidx54 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %i.295
  %13 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp56 = icmp eq i8 %14, -1
  br i1 %cmp56, label %if.then58, label %for.body53.for.inc62_crit_edge

for.body53.for.inc62_crit_edge:                   ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc62

if.then58:                                        ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #22
  %15 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv59, ptr %arrayidx54, align 1
  br label %for.inc62

for.inc62:                                        ; preds = %if.then58, %for.body53.for.inc62_crit_edge
  %inc63 = add i32 %i.295, 1
  %cmp51.not = icmp sgt i32 %inc63, %5
  br i1 %cmp51.not, label %for.inc62.if.end65_crit_edge, label %for.inc62.for.body53_crit_edge

for.inc62.for.body53_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body53

for.inc62.if.end65_crit_edge:                     ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end65

if.end65:                                         ; preds = %for.inc62.if.end65_crit_edge, %if.end46.if.end65_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @num_registered_fb to i32))
  %16 = load i32, ptr @num_registered_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool70.not = icmp eq i32 %16, 0
  br i1 %tobool70.not, label %if.then71, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then71:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #22
  %call72 = tail call i32 @do_unregister_con_driver(ptr noundef nonnull @fb_con) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %if.end65.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_unregister_con_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fbcon_remap_all(ptr nocapture noundef readonly %info) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %node = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node, align 4
  tail call void @console_lock() #20
  %.b = load i1, ptr @deferred_takeover, align 1
  %2 = load i32, ptr @first_fb_vc, align 4
  %3 = load i32, ptr @last_fb_vc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %3)
  %cmp2.not25 = icmp sgt i32 %2, %3
  br i1 %.b, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp2.not25, label %if.then.cleanup_crit_edge, label %for.body.lr.ph

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.then
  %conv = trunc i32 %1 to i8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ %2, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map_boot, i32 0, i32 %i.024
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add i32 %i.024, 1
  %cmp.not = icmp sgt i32 %inc, %3
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %cmp2.not25, label %if.end.for.end7_crit_edge, label %if.end.for.body4_crit_edge

if.end.for.body4_crit_edge:                       ; preds = %if.end
  br label %for.body4

if.end.for.end7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end7

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %if.end.for.body4_crit_edge
  %i.126 = phi i32 [ %inc6, %for.body4.for.body4_crit_edge ], [ %2, %if.end.for.body4_crit_edge ]
  %call = tail call fastcc i32 @set_con2fb_map(i32 noundef %i.126, i32 noundef %1, i32 noundef 0)
  %inc6 = add i32 %i.126, 1
  %5 = load i32, ptr @last_fb_vc, align 4
  %cmp2.not = icmp sgt i32 %inc6, %5
  br i1 %cmp2.not, label %for.body4.for.end7_crit_edge, label %for.body4.for.body4_crit_edge

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body4

for.body4.for.end7_crit_edge:                     ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end7

for.end7:                                         ; preds = %for.body4.for.end7_crit_edge, %if.end.for.end7_crit_edge
  %call8 = tail call i32 @con_is_bound(ptr noundef nonnull @fb_con) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.end7.cleanup_crit_edge, label %do.end

for.end7.cleanup_crit_edge:                       ; preds = %for.end7
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.end:                                           ; preds = %for.end7
  call void @__sanitizer_cov_trace_pc() #22
  %6 = load i32, ptr @first_fb_vc, align 4
  %add = add i32 %6, 1
  %7 = load i32, ptr @last_fb_vc, align 4
  %add11 = add i32 %7, 1
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %1, i32 noundef %add, i32 noundef %add11) #23
  store i32 %1, ptr @info_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end7.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.then.cleanup_crit_edge
  tail call void @console_unlock() #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_is_bound(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fbcon_fb_registered(ptr nocapture noundef readonly %info) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ignore_console_lock_warning, i32 noundef 4) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ignore_console_lock_warning to i32))
  %0 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @is_console_locked() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.rhs, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %1 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3.not = icmp eq i32 %1, 0
  br i1 %tobool3.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !209

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2936, i32 noundef 9, ptr noundef null) #20
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %node = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %node, align 4
  %.b = load i1, ptr @deferred_takeover, align 1
  br i1 %.b, label %if.end31, label %do.end28

do.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #23
  br label %cleanup

if.end31:                                         ; preds = %if.end
  %4 = load i32, ptr @info_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp eq i32 %4, -1
  %5 = load i32, ptr @first_fb_vc, align 4
  %6 = load i32, ptr @last_fb_vc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %6)
  %cmp33.not76 = icmp sgt i32 %5, %6
  br i1 %cmp, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end31
  br i1 %cmp33.not76, label %if.then32.for.endthread-pre-split_crit_edge, label %if.then32.for.body_crit_edge

if.then32.for.body_crit_edge:                     ; preds = %if.then32
  br label %for.body

if.then32.for.endthread-pre-split_crit_edge:      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.endthread-pre-split

for.cond:                                         ; preds = %for.body
  %inc = add i32 %i.077, 1
  %cmp33.not = icmp sgt i32 %inc, %6
  br i1 %cmp33.not, label %for.cond.for.endthread-pre-split_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.cond.for.endthread-pre-split_crit_edge:       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.endthread-pre-split

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then32.for.body_crit_edge
  %i.077 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ %5, %if.then32.for.body_crit_edge ]
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map_boot, i32 0, i32 %i.077
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp34 = icmp eq i32 %3, %conv
  br i1 %cmp34, label %if.then36, label %for.cond

if.then36:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  store i32 %3, ptr @info_idx, align 4
  br label %for.end

for.endthread-pre-split:                          ; preds = %for.cond.for.endthread-pre-split_crit_edge, %if.then32.for.endthread-pre-split_crit_edge
  %.pr = load i32, ptr @info_idx, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %if.then36
  %9 = phi i32 [ %.pr, %for.endthread-pre-split ], [ %3, %if.then36 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp38.not = icmp eq i32 %9, -1
  br i1 %cmp38.not, label %for.end.cleanup_crit_edge, label %if.then40

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then40:                                        ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @num_registered_fb to i32))
  %10 = load i32, ptr @num_registered_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.then40.cleanup_crit_edge, label %if.end.i

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end.i:                                         ; preds = %if.then40
  br i1 %cmp33.not76, label %if.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %conv.i = trunc i32 %9 to i8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.023.i = phi i32 [ %5, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %i.023.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %inc.i = add i32 %i.023.i, 1
  %cmp.not.i = icmp sgt i32 %inc.i, %6
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %.b.i = load i1, ptr @fbcon_is_default, align 4
  %not..b.i = xor i1 %.b.i, true
  %12 = zext i1 %not..b.i to i32
  %call.i = tail call i32 @do_take_over_console(ptr noundef nonnull @fb_con, i32 noundef %5, i32 noundef %6, i32 noundef %12) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %for.end.i
  %13 = load i32, ptr @first_fb_vc, align 4
  %14 = load i32, ptr @last_fb_vc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %14)
  %cmp7.not24.i = icmp sgt i32 %13, %14
  br i1 %cmp7.not24.i, label %if.then5.i.for.end13.i_crit_edge, label %if.then5.i.for.body9.i_crit_edge

if.then5.i.for.body9.i_crit_edge:                 ; preds = %if.then5.i
  br label %for.body9.i

if.then5.i.for.end13.i_crit_edge:                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end13.i

for.body9.i:                                      ; preds = %for.body9.i.for.body9.i_crit_edge, %if.then5.i.for.body9.i_crit_edge
  %i.125.i = phi i32 [ %inc12.i, %for.body9.i.for.body9.i_crit_edge ], [ %13, %if.then5.i.for.body9.i_crit_edge ]
  %arrayidx10.i = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %i.125.i
  %15 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %arrayidx10.i, align 1
  %inc12.i = add i32 %i.125.i, 1
  %cmp7.not.i = icmp sgt i32 %inc12.i, %14
  br i1 %cmp7.not.i, label %for.body9.i.for.end13.i_crit_edge, label %for.body9.i.for.body9.i_crit_edge

for.body9.i.for.body9.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body9.i

for.body9.i.for.end13.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end13.i

for.end13.i:                                      ; preds = %for.body9.i.for.end13.i_crit_edge, %if.then5.i.for.end13.i_crit_edge
  store i32 -1, ptr @info_idx, align 4
  br label %cleanup

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @fbcon_has_console_bind, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end31
  br i1 %cmp33.not76, label %if.else.cleanup_crit_edge, label %if.else.for.body46_crit_edge

if.else.for.body46_crit_edge:                     ; preds = %if.else
  br label %for.body46

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body46:                                       ; preds = %for.inc54.for.body46_crit_edge, %if.else.for.body46_crit_edge
  %i.174 = phi i32 [ %inc55, %for.inc54.for.body46_crit_edge ], [ %5, %if.else.for.body46_crit_edge ]
  %arrayidx47 = getelementptr [63 x i8], ptr @con2fb_map_boot, i32 0, i32 %i.174
  %16 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx47, align 1
  %conv48 = sext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv48)
  %cmp49 = icmp eq i32 %3, %conv48
  br i1 %cmp49, label %if.then51, label %for.body46.for.inc54_crit_edge

for.body46.for.inc54_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc54

if.then51:                                        ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #22
  %call52 = tail call fastcc i32 @set_con2fb_map(i32 noundef %i.174, i32 noundef %3, i32 noundef 0)
  br label %for.inc54

for.inc54:                                        ; preds = %if.then51, %for.body46.for.inc54_crit_edge
  %inc55 = add i32 %i.174, 1
  %18 = load i32, ptr @last_fb_vc, align 4
  %cmp44.not = icmp sgt i32 %inc55, %18
  br i1 %cmp44.not, label %for.inc54.cleanup_crit_edge, label %for.inc54.for.body46_crit_edge

for.inc54.for.body46_crit_edge:                   ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body46

for.inc54.cleanup_crit_edge:                      ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

cleanup:                                          ; preds = %for.inc54.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.else.i, %for.end13.i, %if.then40.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end28
  %retval.0 = phi i32 [ 0, %do.end28 ], [ 0, %for.end.cleanup_crit_edge ], [ -19, %if.then40.cleanup_crit_edge ], [ 0, %if.else.i ], [ %call.i, %for.end13.i ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %for.inc54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fbcon_fb_blanked(ptr noundef readonly %info, i32 noundef %blank) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 29
  %0 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbcon_par, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %currcon = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %currcon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %currcon, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %vc_mode = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %vc_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp2.not = icmp eq i8 %7, 0
  br i1 %cmp2.not, label %lor.lhs.false4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.end
  %arrayidx6 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %3
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6, align 1
  %idxprom = sext i8 %9 to i32
  %arrayidx7 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx7, align 4
  %cmp8.not = icmp eq ptr %11, %info
  br i1 %cmp8.not, label %if.end11, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false4
  %call = tail call zeroext i1 @con_is_visible(ptr noundef %5) #20
  br i1 %call, label %if.then12, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blank)
  %tobool13.not = icmp eq i32 %blank, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @do_blank_screen(i32 noundef 0) #20
  br label %if.end16

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @do_unblank_screen(i32 noundef 0) #20
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then14, %if.end11.if.end16_crit_edge
  %blank_state = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %blank_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %blank, ptr %blank_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %lor.lhs.false4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @con_is_visible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_blank_screen(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_unblank_screen(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fbcon_new_modelist(ptr noundef %info) local_unnamed_addr #1 align 64 {
entry:
  %var = alloca %struct.fb_var_screeninfo, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %var) #20
  %0 = call ptr @memset(ptr %var, i32 255, i32 160)
  %1 = load i32, ptr @first_fb_vc, align 4
  %2 = load i32, ptr @last_fb_vc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp.not19 = icmp sgt i32 %1, %2
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %xres_virtual1.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %yres_virtual2.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %bits_per_pixel3.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %grayscale4.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 7
  %nonstd5.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 12
  %accel_flags6.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 16
  %height7.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 14
  %width8.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 15
  %red.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %green.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %blue.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %transp.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %rotate13.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 26
  %modelist = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ %1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %i.020
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %idxprom = sext i8 %4 to i32
  %arrayidx1 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx1, align 4
  %cmp2.not = icmp eq ptr %6, %info
  br i1 %cmp2.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.end:                                           ; preds = %for.body
  %mode4 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %i.020, i32 21
  %7 = ptrtoint ptr %mode4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode4, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.end6

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx7 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %i.020
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx7, align 4
  %11 = ptrtoint ptr %mode4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mode4, align 4
  call void @fb_videomode_to_var(ptr noundef nonnull %var, ptr noundef %12) #20
  %xres_virtual.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %i.020, i32 8
  %13 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xres_virtual.i, align 4
  %15 = ptrtoint ptr %xres_virtual1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %xres_virtual1.i, align 4
  %yres_virtual.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %i.020, i32 9
  %16 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %yres_virtual.i, align 4
  %18 = ptrtoint ptr %yres_virtual2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %yres_virtual2.i, align 4
  %bits_per_pixel.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %i.020, i32 12
  %19 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bits_per_pixel.i, align 4
  %21 = ptrtoint ptr %bits_per_pixel3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %bits_per_pixel3.i, align 4
  %grayscale.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %i.020, i32 13
  %22 = ptrtoint ptr %grayscale.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %grayscale.i, align 4
  %24 = ptrtoint ptr %grayscale4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %grayscale4.i, align 4
  %nonstd.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %i.020, i32 14
  %25 = ptrtoint ptr %nonstd.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nonstd.i, align 4
  %27 = ptrtoint ptr %nonstd5.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %nonstd5.i, align 4
  %accel_flags.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %i.020, i32 15
  %28 = ptrtoint ptr %accel_flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %accel_flags.i, align 4
  %30 = ptrtoint ptr %accel_flags6.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %accel_flags6.i, align 4
  %height.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %i.020, i32 10
  %31 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height.i, align 4
  %33 = ptrtoint ptr %height7.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %height7.i, align 4
  %width.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %i.020, i32 11
  %34 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %width.i, align 4
  %36 = ptrtoint ptr %width8.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %width8.i, align 4
  %red9.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %i.020, i32 17
  %37 = call ptr @memcpy(ptr %red.i, ptr %red9.i, i32 12)
  %green10.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %i.020, i32 18
  %38 = call ptr @memcpy(ptr %green.i, ptr %green10.i, i32 12)
  %blue11.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %i.020, i32 19
  %39 = call ptr @memcpy(ptr %blue.i, ptr %blue11.i, i32 12)
  %transp12.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %i.020, i32 20
  %40 = call ptr @memcpy(ptr %transp.i, ptr %transp12.i, i32 12)
  %rotate.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %i.020, i32 16
  %41 = ptrtoint ptr %rotate.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rotate.i, align 4
  %43 = ptrtoint ptr %rotate13.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %rotate13.i, align 4
  %44 = ptrtoint ptr %mode4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mode4, align 4
  %call = call ptr @fb_find_nearest_mode(ptr noundef %45, ptr noundef %modelist) #20
  call void @fb_videomode_to_var(ptr noundef nonnull %var, ptr noundef %call) #20
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %10, i32 0, i32 3
  %46 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vc_num, align 4
  %conv = zext i16 %47 to i32
  call fastcc void @fbcon_set_disp(ptr noundef %info, ptr noundef nonnull %var, i32 noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %i.020, 1
  %48 = load i32, ptr @last_fb_vc, align 4
  %cmp.not = icmp sgt i32 %inc, %48
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %var) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_find_nearest_mode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fbcon_set_disp(ptr noundef %info, ptr noundef %var, i32 noundef %unit) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 29
  %0 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbcon_par, align 4
  %arrayidx = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %unit
  %xres_virtual.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %2 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xres_virtual.i, align 4
  %xres_virtual1.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %unit, i32 8
  %4 = ptrtoint ptr %xres_virtual1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %xres_virtual1.i, align 4
  %yres_virtual.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %5 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %yres_virtual.i, align 4
  %yres_virtual2.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %unit, i32 9
  %7 = ptrtoint ptr %yres_virtual2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %yres_virtual2.i, align 4
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %8 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bits_per_pixel.i, align 4
  %bits_per_pixel3.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %unit, i32 12
  %10 = ptrtoint ptr %bits_per_pixel3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %bits_per_pixel3.i, align 4
  %grayscale.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 7
  %11 = ptrtoint ptr %grayscale.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %grayscale.i, align 4
  %grayscale4.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %unit, i32 13
  %13 = ptrtoint ptr %grayscale4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %grayscale4.i, align 4
  %nonstd.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 12
  %14 = ptrtoint ptr %nonstd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nonstd.i, align 4
  %nonstd5.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %unit, i32 14
  %16 = ptrtoint ptr %nonstd5.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %nonstd5.i, align 4
  %accel_flags.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 16
  %17 = ptrtoint ptr %accel_flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %accel_flags.i, align 4
  %accel_flags6.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %unit, i32 15
  %19 = ptrtoint ptr %accel_flags6.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %accel_flags6.i, align 4
  %height.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 14
  %20 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height.i, align 4
  %height7.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %unit, i32 10
  %22 = ptrtoint ptr %height7.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %height7.i, align 4
  %width.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 15
  %23 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %width.i, align 4
  %width8.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %unit, i32 11
  %25 = ptrtoint ptr %width8.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %width8.i, align 4
  %red.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %unit, i32 17
  %red9.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %26 = call ptr @memcpy(ptr %red.i, ptr %red9.i, i32 12)
  %green.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %unit, i32 18
  %green10.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %27 = call ptr @memcpy(ptr %green.i, ptr %green10.i, i32 12)
  %blue.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %unit, i32 19
  %blue11.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %28 = call ptr @memcpy(ptr %blue.i, ptr %blue11.i, i32 12)
  %transp.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %unit, i32 20
  %transp12.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %29 = call ptr @memcpy(ptr %transp.i, ptr %transp12.i, i32 12)
  %rotate.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 26
  %30 = ptrtoint ptr %rotate.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rotate.i, align 4
  %rotate13.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %unit, i32 16
  %32 = ptrtoint ptr %rotate13.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %rotate13.i, align 4
  %modelist.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 13
  %call.i = tail call ptr @fb_match_mode(ptr noundef %var, ptr noundef %modelist.i) #20
  %mode.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %unit, i32 21
  %33 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %mode.i, align 4
  %cmp.i.not = icmp eq ptr %call.i, null
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %unit
  %34 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %35, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %vc_display_fg = getelementptr inbounds %struct.vc_data, ptr %35, i32 0, i32 47
  %36 = ptrtoint ptr %vc_display_fg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vc_display_fg, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %vc_font = getelementptr inbounds %struct.vc_data, ptr %35, i32 0, i32 28
  %data = getelementptr inbounds %struct.vc_data, ptr %35, i32 0, i32 28, i32 3
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %tobool6.not = icmp eq ptr %41, null
  br i1 %tobool6.not, label %if.then7, label %if.end4.if.end27_crit_edge

if.end4.if.end27_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end27

if.then7:                                         ; preds = %if.end4
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %39, i32 0, i32 3
  %42 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %43 to i32
  %arrayidx5 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom
  %44 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx5, align 4
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %arrayidx, align 4
  %47 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %45, ptr %data, align 4
  %48 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %37, align 4
  %vc_font11 = getelementptr inbounds %struct.vc_data, ptr %49, i32 0, i32 28
  %50 = ptrtoint ptr %vc_font11 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vc_font11, align 4
  %52 = ptrtoint ptr %vc_font to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %vc_font, align 4
  %53 = load ptr, ptr %37, align 4
  %height = getelementptr inbounds %struct.vc_data, ptr %53, i32 0, i32 28, i32 1
  %54 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %height, align 4
  %height16 = getelementptr inbounds %struct.vc_data, ptr %35, i32 0, i32 28, i32 1
  %56 = ptrtoint ptr %height16 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %height16, align 4
  %57 = load ptr, ptr %37, align 4
  %charcount = getelementptr inbounds %struct.vc_data, ptr %57, i32 0, i32 28, i32 2
  %58 = ptrtoint ptr %charcount to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %charcount, align 4
  %charcount19 = getelementptr inbounds %struct.vc_data, ptr %35, i32 0, i32 28, i32 2
  %60 = ptrtoint ptr %charcount19 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %charcount19, align 4
  %userfont = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 1
  %61 = ptrtoint ptr %userfont to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %userfont, align 4
  %userfont20 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %unit, i32 1
  %63 = ptrtoint ptr %userfont20 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %userfont20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool22.not = icmp eq i32 %62, 0
  br i1 %tobool22.not, label %if.then7.if.end27_crit_edge, label %if.then23

if.then7.if.end27_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end27

if.then23:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #22
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx, align 4
  %arrayidx25 = getelementptr i32, ptr %65, i32 -1
  %66 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx25, align 4
  %inc = add i32 %67, 1
  store i32 %inc, ptr %arrayidx25, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.then7.if.end27_crit_edge, %if.end4.if.end27_crit_edge
  %activate = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %68 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %activate, align 4
  %var29 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %activate30 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 13
  %69 = ptrtoint ptr %activate30 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %activate30, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %70 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %yoffset, align 4
  %yoffset32 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %72 = ptrtoint ptr %yoffset32 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %yoffset32, align 4
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %73 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %xoffset, align 4
  %xoffset34 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %75 = ptrtoint ptr %xoffset34 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %xoffset34, align 4
  %call35 = tail call i32 @fb_set_var(ptr noundef %info, ptr noundef %var) #20
  %var36 = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 7
  %76 = call ptr @memcpy(ptr %var36, ptr %var29, i32 160)
  %fix = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %call39 = tail call i32 @fb_get_color_depth(ptr noundef %var29, ptr noundef %fix) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39)
  %cmp.not = icmp eq i32 %call39, 1
  %vc_can_do_color = getelementptr inbounds %struct.vc_data, ptr %35, i32 0, i32 37
  %77 = ptrtoint ptr %vc_can_do_color to i32
  call void @__asan_load2_noabort(i32 %77)
  %bf.load = load i16, ptr %vc_can_do_color, align 4
  %bf.shl = select i1 %cmp.not, i16 0, i16 16
  %bf.clear = and i16 %bf.load, -17
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %vc_can_do_color, align 4
  %conv44 = select i1 %cmp.not, i16 2048, i16 30464
  %vc_complement_mask = getelementptr inbounds %struct.vc_data, ptr %35, i32 0, i32 24
  %78 = ptrtoint ptr %vc_complement_mask to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv44, ptr %vc_complement_mask, align 4
  %charcount46 = getelementptr inbounds %struct.vc_data, ptr %35, i32 0, i32 28, i32 2
  %79 = ptrtoint ptr %charcount46 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %charcount46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %80)
  %cmp47 = icmp eq i32 %80, 256
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, ptr %35, i32 0, i32 27
  br i1 %cmp47, label %if.then49, label %if.else

if.then49:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #22
  %81 = ptrtoint ptr %vc_hi_font_mask to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 0, ptr %vc_hi_font_mask, align 4
  br label %if.end62

if.else:                                          ; preds = %if.end27
  %82 = ptrtoint ptr %vc_hi_font_mask to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 256, ptr %vc_hi_font_mask, align 4
  br i1 %cmp.not, label %if.else.if.end62_crit_edge, label %if.then57

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end62

if.then57:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %shl = shl nuw i16 %conv44, 1
  %83 = ptrtoint ptr %vc_complement_mask to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %shl, ptr %vc_complement_mask, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then57, %if.else.if.end62_crit_edge, %if.then49
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, ptr %39, i32 0, i32 49
  %84 = ptrtoint ptr %vc_uni_pagedir_loc to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %vc_uni_pagedir_loc, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %tobool63.not = icmp eq ptr %87, null
  br i1 %tobool63.not, label %if.then64, label %if.end62.if.end66_crit_edge

if.end62.if.end66_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end66

if.then64:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #22
  %call65 = tail call i32 @con_set_default_unimap(ptr noundef %39) #20
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end62.if.end66_crit_edge
  %vc_uni_pagedir_loc67 = getelementptr inbounds %struct.vc_data, ptr %35, i32 0, i32 49
  %88 = ptrtoint ptr %vc_uni_pagedir_loc67 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %vc_uni_pagedir_loc67, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %tobool68.not = icmp eq ptr %91, null
  br i1 %tobool68.not, label %if.then69, label %if.end66.if.end71_crit_edge

if.end66.if.end71_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end71

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #22
  %call70 = tail call i32 @con_copy_unimap(ptr noundef nonnull %35, ptr noundef %39) #20
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end66.if.end71_crit_edge
  %92 = ptrtoint ptr %var29 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %var29, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %94 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %yres, align 4
  %rotate = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 20
  %96 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rotate, align 4
  %98 = zext i32 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %97, label %cond.false [
    i32 0, label %if.end71.cond.end_crit_edge
    i32 2, label %if.end71.cond.end_crit_edge176
  ]

if.end71.cond.end_crit_edge176:                   ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

if.end71.cond.end_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

cond.false:                                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end71.cond.end_crit_edge, %if.end71.cond.end_crit_edge176
  %cond81 = phi i32 [ %95, %cond.false ], [ %93, %if.end71.cond.end_crit_edge ], [ %93, %if.end71.cond.end_crit_edge176 ]
  %99 = zext i32 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %97, label %cond.false99 [
    i32 0, label %cond.end.cond.end100_crit_edge
    i32 2, label %cond.end.cond.end100_crit_edge177
  ]

cond.end.cond.end100_crit_edge177:                ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end100

cond.end.cond.end100_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end100

cond.false99:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end100

cond.end100:                                      ; preds = %cond.false99, %cond.end.cond.end100_crit_edge, %cond.end.cond.end100_crit_edge177
  %cond101 = phi i32 [ %93, %cond.false99 ], [ %95, %cond.end.cond.end100_crit_edge ], [ %95, %cond.end.cond.end100_crit_edge177 ]
  %100 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %vc_font, align 4
  %div = udiv i32 %cond81, %101
  %height105 = getelementptr inbounds %struct.vc_data, ptr %35, i32 0, i32 28, i32 1
  %102 = ptrtoint ptr %height105 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %height105, align 4
  %div106 = udiv i32 %cond101, %103
  %call107 = tail call i32 @vc_resize(ptr noundef nonnull %35, i32 noundef %div, i32 noundef %div106) #20
  %call108 = tail call zeroext i1 @con_is_visible(ptr noundef nonnull %35) #20
  br i1 %call108, label %if.then109, label %cond.end100.cleanup_crit_edge

cond.end100.cleanup_crit_edge:                    ; preds = %cond.end100
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then109:                                       ; preds = %cond.end100
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @redraw_screen(ptr noundef nonnull %35, i32 noundef 0) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then109, %cond.end100.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fbcon_get_requirement(ptr nocapture noundef readonly %info, ptr nocapture noundef %caps) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.fb_blit_caps, ptr %caps, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, ptr @first_fb_vc, align 4
  %3 = load i32, ptr @last_fb_vc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %3)
  %cmp.not73 = icmp sgt i32 %2, %3
  br i1 %cmp.not73, label %if.then.if.end49_crit_edge, label %for.body.lr.ph

if.then.if.end49_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end49

for.body.lr.ph:                                   ; preds = %if.then
  %node = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %y = getelementptr inbounds %struct.fb_blit_caps, ptr %caps, i32 0, i32 1
  %len = getelementptr inbounds %struct.fb_blit_caps, ptr %caps, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.074 = phi i32 [ %2, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %i.074
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %vc_mode = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %vc_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp2 = icmp eq i8 %7, 0
  br i1 %cmp2, label %land.lhs.true4, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

land.lhs.true4:                                   ; preds = %land.lhs.true
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %node, align 4
  %arrayidx5 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %i.074
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv6)
  %cmp7 = icmp eq i32 %9, %conv6
  br i1 %cmp7, label %if.then9, label %land.lhs.true4.for.inc_crit_edge

land.lhs.true4.for.inc_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.then9:                                         ; preds = %land.lhs.true4
  %vc_font = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 28
  %12 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vc_font, align 4
  %sub = add i32 %13, -1
  %shl = shl nuw i32 1, %sub
  %14 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %caps, align 4
  %or = or i32 %shl, %15
  store i32 %or, ptr %caps, align 4
  %height = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 28, i32 1
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  %sub11 = add i32 %17, -1
  %shl12 = shl nuw i32 1, %sub11
  %18 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %y, align 4
  %or13 = or i32 %shl12, %19
  store i32 %or13, ptr %y, align 4
  %charcount = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 28, i32 2
  %20 = ptrtoint ptr %charcount to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %charcount, align 4
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %21)
  %cmp15 = icmp ult i32 %23, %21
  br i1 %cmp15, label %if.then17, label %if.then9.for.inc_crit_edge

if.then9.for.inc_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.then17:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #22
  %24 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %len, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %if.then9.for.inc_crit_edge, %land.lhs.true4.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %i.074, 1
  %cmp.not = icmp sgt i32 %inc, %3
  br i1 %cmp.not, label %for.inc.if.end49_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.inc.if.end49_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end49

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %25 = load i32, ptr @fg_console, align 4
  %arrayidx20 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx20, align 4
  %tobool22.not = icmp eq ptr %27, null
  br i1 %tobool22.not, label %if.else.if.end49_crit_edge, label %land.lhs.true23

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end49

land.lhs.true23:                                  ; preds = %if.else
  %vc_mode24 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 17
  %28 = ptrtoint ptr %vc_mode24 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %vc_mode24, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp26 = icmp eq i8 %29, 0
  br i1 %cmp26, label %land.lhs.true28, label %land.lhs.true23.if.end49_crit_edge

land.lhs.true23.if.end49_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end49

land.lhs.true28:                                  ; preds = %land.lhs.true23
  %node29 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %30 = ptrtoint ptr %node29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %node29, align 4
  %arrayidx30 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %25
  %32 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx30, align 1
  %conv31 = sext i8 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv31)
  %cmp32 = icmp eq i32 %31, %conv31
  br i1 %cmp32, label %if.then34, label %land.lhs.true28.if.end49_crit_edge

land.lhs.true28.if.end49_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end49

if.then34:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #22
  %vc_font35 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 28
  %34 = ptrtoint ptr %vc_font35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vc_font35, align 4
  %sub37 = add i32 %35, -1
  %shl38 = shl nuw i32 1, %sub37
  %36 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shl38, ptr %caps, align 4
  %height41 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 28, i32 1
  %37 = ptrtoint ptr %height41 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %height41, align 4
  %sub42 = add i32 %38, -1
  %shl43 = shl nuw i32 1, %sub42
  %y44 = getelementptr inbounds %struct.fb_blit_caps, ptr %caps, i32 0, i32 1
  %39 = ptrtoint ptr %y44 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %shl43, ptr %y44, align 4
  %charcount46 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 28, i32 2
  %40 = ptrtoint ptr %charcount46 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %charcount46, align 4
  %len47 = getelementptr inbounds %struct.fb_blit_caps, ptr %caps, i32 0, i32 2
  %42 = ptrtoint ptr %len47 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %len47, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then34, %land.lhs.true28.if.end49_crit_edge, %land.lhs.true23.if.end49_crit_edge, %if.else.if.end49_crit_edge, %for.inc.if.end49_crit_edge, %if.then.if.end49_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fbcon_set_con2fb_map_ioctl(ptr noundef %argp) local_unnamed_addr #1 align 64 {
entry:
  %con2fb = alloca %struct.fb_con2fbmap, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %con2fb) #20
  %0 = ptrtoint ptr %con2fb to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %con2fb, align 4, !annotation !210
  %1 = getelementptr inbounds %struct.fb_con2fbmap, ptr %con2fb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !210
  tail call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 156) #20
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #20
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %argp, i32 8, i32 -1226833920) #25, !srcloc !211
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !212

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %con2fb, i32 noundef 8) #20
  %4 = call i32 @llvm.read_register.i32(metadata !199) #20
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #12, !srcloc !213
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #20, !srcloc !214
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #20, !srcloc !215
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %con2fb, ptr noundef %argp, i32 noundef 8) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #20, !srcloc !214
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #20, !srcloc !215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !212

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %entry.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %con2fb, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %8 = ptrtoint ptr %con2fb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %con2fb, align 4
  %10 = add i32 %9, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -63, i32 %10)
  %11 = icmp ult i32 %10, -63
  br i1 %11, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %13)
  %cmp5 = icmp ugt i32 %13, 31
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %arrayidx = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %if.then10, label %if.end7.if.end13_crit_edge

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  %call12 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.5, i32 noundef %13) #20
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7.if.end13_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %arrayidx15 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq ptr %19, null
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  call void @console_lock() #20
  %20 = ptrtoint ptr %con2fb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %con2fb, align 4
  %sub = add i32 %21, -1
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %call21 = call fastcc i32 @set_con2fb_map(i32 noundef %sub, i32 noundef %23, i32 noundef 1)
  call void @console_unlock() #20
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end13.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %call21, %if.end18 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %con2fb) #20
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fbcon_get_con2fb_map_ioctl(ptr noundef %argp) local_unnamed_addr #1 align 64 {
entry:
  %con2fb = alloca %struct.fb_con2fbmap, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %con2fb) #20
  %0 = ptrtoint ptr %con2fb to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %con2fb, align 4, !annotation !210
  %1 = getelementptr inbounds %struct.fb_con2fbmap, ptr %con2fb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !210
  tail call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 156) #20
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #20
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %argp, i32 8, i32 -1226833920) #25
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !212

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %con2fb, i32 noundef 8) #20
  %4 = call i32 @llvm.read_register.i32(metadata !199) #20
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #12, !srcloc !213
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #20, !srcloc !214
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #20, !srcloc !215
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %con2fb, ptr noundef %argp, i32 noundef 8) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #20, !srcloc !214
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #20, !srcloc !215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !212

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %entry.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %con2fb, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %8 = ptrtoint ptr %con2fb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %con2fb, align 4
  %10 = add i32 %9, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -63, i32 %10)
  %11 = icmp ult i32 %10, -63
  br i1 %11, label %if.end.cleanup_crit_edge, label %if.then.i12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then.i12:                                      ; preds = %if.end
  call void @console_lock() #20
  %12 = ptrtoint ptr %con2fb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %con2fb, align 4
  %sub = add i32 %13, -1
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %sub
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %15 to i32
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %1, align 4
  call void @console_unlock() #20
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #20
  %call.i.i11 = call zeroext i1 @should_fail_usercopy() #20
  br i1 %call.i.i11, label %if.then.i12.cleanup_crit_edge, label %copy_to_user.exit

if.then.i12.cleanup_crit_edge:                    ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #22
  %call.i.i.i16 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %con2fb, i32 noundef 8) #20
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %argp, ptr noundef nonnull %con2fb, i32 noundef 8) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool7.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool7.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.then.i12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then.i12.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %con2fb) #20
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @fb_console_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @console_lock() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fb_class to i32))
  %0 = load ptr, ptr @fb_class, align 4
  %call = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %0, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.6) #20
  store ptr %call, ptr @fbcon_device, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %1 = ptrtoint ptr %call to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %1) #23
  store ptr null, ptr @fbcon_device, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %call.i = tail call i32 @device_create_file(ptr noundef %call, ptr noundef nonnull @device_attrs) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

for.inc.i:                                        ; preds = %if.else
  %2 = load ptr, ptr @fbcon_device, align 4
  %call.1.i = tail call i32 @device_create_file(ptr noundef %2, ptr noundef getelementptr inbounds ([3 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 1)) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.1.i, label %for.inc.i.while.body.i.preheader_crit_edge

for.inc.i.while.body.i.preheader_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i.preheader

for.inc.1.i:                                      ; preds = %for.inc.i
  %3 = load ptr, ptr @fbcon_device, align 4
  %call.2.i = tail call i32 @device_create_file(ptr noundef %3, ptr noundef getelementptr inbounds ([3 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 2)) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.if.end_crit_edge, label %for.inc.1.i.while.body.i.preheader_crit_edge

for.inc.1.i.while.body.i.preheader_crit_edge:     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i.preheader

for.inc.1.i.if.end_crit_edge:                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

while.body.i.preheader:                           ; preds = %for.inc.1.i.while.body.i.preheader_crit_edge, %for.inc.i.while.body.i.preheader_crit_edge
  %dec8.i.ph = phi i32 [ 0, %for.inc.i.while.body.i.preheader_crit_edge ], [ 1, %for.inc.1.i.while.body.i.preheader_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %dec8.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %dec8.i.ph, %while.body.i.preheader ]
  %4 = load ptr, ptr @fbcon_device, align 4
  %arrayidx4.i = getelementptr [3 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 %dec8.i
  tail call void @device_remove_file(ptr noundef %4, ptr noundef %arrayidx4.i) #20
  %dec.i = add nsw i32 %dec8.i, -1
  %cmp3.not.i = icmp eq i32 %dec8.i, 0
  br i1 %cmp3.not.i, label %while.body.i.if.end_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.end:                                           ; preds = %while.body.i.if.end_crit_edge, %for.inc.1.i.if.end_crit_edge, %if.else.if.end_crit_edge, %do.end
  %5 = call ptr @memset(ptr @con2fb_map, i32 255, i32 63)
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ignore_console_lock_warning, i32 noundef 4) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ignore_console_lock_warning to i32))
  %6 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i7 = icmp eq i32 %6, 0
  br i1 %tobool.not.i7, label %land.lhs.true.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @is_console_locked() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.rhs.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %7 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !209

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3297, i32 noundef 9, ptr noundef null) #20
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @conswitchp to i32))
  %8 = load ptr, ptr @conswitchp, align 4
  %cmp.not.i = icmp eq ptr %8, @dummy_con
  br i1 %cmp.not.i, label %if.end25.i, label %if.end25.thread.i

if.end25.thread.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @deferred_takeover, align 1
  br label %if.end28.i

if.end25.i:                                       ; preds = %if.end.i
  %.b.pr.i = load i1, ptr @deferred_takeover, align 1
  br i1 %.b.pr.i, label %if.end25.i.if.end28.i_crit_edge, label %if.then27.i

if.end25.i.if.end28.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end28.i

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #22
  store ptr @fbcon_output_notifier, ptr @fbcon_output_nb, align 4
  tail call void @dummycon_register_output_notifier(ptr noundef nonnull @fbcon_output_nb) #20
  br label %fbcon_start.exit

if.end28.i:                                       ; preds = %if.end25.i.if.end28.i_crit_edge, %if.end25.thread.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @num_registered_fb to i32))
  %9 = load i32, ptr @num_registered_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool29.not.i = icmp eq i32 %9, 0
  br i1 %tobool29.not.i, label %if.end28.i.fbcon_start.exit_crit_edge, label %if.end28.i.for.body.i_crit_edge

if.end28.i.for.body.i_crit_edge:                  ; preds = %if.end28.i
  br label %for.body.i

if.end28.i.fbcon_start.exit_crit_edge:            ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %fbcon_start.exit

for.body.i:                                       ; preds = %for.inc.i8.for.body.i_crit_edge, %if.end28.i.for.body.i_crit_edge
  %i.044.i = phi i32 [ %inc.i, %for.inc.i8.for.body.i_crit_edge ], [ 0, %if.end28.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %i.044.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool32.not.i = icmp eq ptr %11, null
  br i1 %tobool32.not.i, label %for.inc.i8, label %if.else.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  store i32 %i.044.i, ptr @info_idx, align 4
  br label %if.end.i.i

for.inc.i8:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.044.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i8.if.end.i.i_crit_edge, label %for.inc.i8.for.body.i_crit_edge

for.inc.i8.for.body.i_crit_edge:                  ; preds = %for.inc.i8
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.inc.i8.if.end.i.i_crit_edge:                  ; preds = %for.inc.i8
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %for.inc.i8.if.end.i.i_crit_edge, %if.else.i
  store i32 -3, ptr @logo_shown, align 4
  %12 = load i32, ptr @first_fb_vc, align 4
  %13 = load i32, ptr @last_fb_vc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %13)
  %cmp.not22.i.i = icmp sgt i32 %12, %13
  br i1 %cmp.not22.i.i, label %if.end.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %14 = load i32, ptr @info_idx, align 4
  %conv.i.i = trunc i32 %14 to i8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.023.i.i = phi i32 [ %12, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %i.023.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i.i, ptr %arrayidx.i.i, align 1
  %inc.i.i = add i32 %i.023.i.i, 1
  %cmp.not.i.i = icmp sgt i32 %inc.i.i, %13
  br i1 %cmp.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end.i.i.for.end.i.i_crit_edge
  %.b.i.i = load i1, ptr @fbcon_is_default, align 4
  %not..b.i.i = xor i1 %.b.i.i, true
  %16 = zext i1 %not..b.i.i to i32
  %call.i.i = tail call i32 @do_take_over_console(ptr noundef nonnull @fb_con, i32 noundef %12, i32 noundef %13, i32 noundef %16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.else.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %for.end.i.i
  %17 = load i32, ptr @first_fb_vc, align 4
  %18 = load i32, ptr @last_fb_vc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %18)
  %cmp7.not24.i.i = icmp sgt i32 %17, %18
  br i1 %cmp7.not24.i.i, label %if.then5.i.i.for.end13.i.i_crit_edge, label %if.then5.i.i.for.body9.i.i_crit_edge

if.then5.i.i.for.body9.i.i_crit_edge:             ; preds = %if.then5.i.i
  br label %for.body9.i.i

if.then5.i.i.for.end13.i.i_crit_edge:             ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end13.i.i

for.body9.i.i:                                    ; preds = %for.body9.i.i.for.body9.i.i_crit_edge, %if.then5.i.i.for.body9.i.i_crit_edge
  %i.125.i.i = phi i32 [ %inc12.i.i, %for.body9.i.i.for.body9.i.i_crit_edge ], [ %17, %if.then5.i.i.for.body9.i.i_crit_edge ]
  %arrayidx10.i.i = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %i.125.i.i
  %19 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %arrayidx10.i.i, align 1
  %inc12.i.i = add i32 %i.125.i.i, 1
  %cmp7.not.i.i = icmp sgt i32 %inc12.i.i, %18
  br i1 %cmp7.not.i.i, label %for.body9.i.i.for.end13.i.i_crit_edge, label %for.body9.i.i.for.body9.i.i_crit_edge

for.body9.i.i.for.body9.i.i_crit_edge:            ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body9.i.i

for.body9.i.i.for.end13.i.i_crit_edge:            ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end13.i.i

for.end13.i.i:                                    ; preds = %for.body9.i.i.for.end13.i.i_crit_edge, %if.then5.i.i.for.end13.i.i_crit_edge
  store i32 -1, ptr @info_idx, align 4
  br label %fbcon_start.exit

if.else.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @fbcon_has_console_bind, align 4
  br label %fbcon_start.exit

fbcon_start.exit:                                 ; preds = %if.else.i.i, %for.end13.i.i, %if.end28.i.fbcon_start.exit_crit_edge, %if.then27.i
  tail call void @console_unlock() #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fbcon_add_cursor_timer(ptr noundef %info) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 29
  %0 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbcon_par, align 4
  %queue = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 9
  %func = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func, align 4
  %tobool.not = icmp eq ptr %3, null
  %cmp = icmp eq ptr %3, @fb_flashcursor
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %land.lhs.true, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end22

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end22

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b = load i1, ptr @fbcon_cursor_noblink, align 4
  br i1 %.b, label %land.lhs.true4.if.end22_crit_edge, label %if.then

land.lhs.true4.if.end22_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end22

if.then:                                          ; preds = %land.lhs.true4
  br i1 %tobool.not, label %do.body, label %if.then.do.body17_crit_edge

if.then.do.body17_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body17

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @__init_work(ptr noundef %queue, i32 noundef 0) #20
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %queue, align 4
  %lockdep_map = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @fbcon_add_cursor_timer.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  %entry14 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry14, ptr %entry14, align 4
  %prev.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 9, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry14, ptr %prev.i, align 4
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @fb_flashcursor, ptr %func, align 4
  br label %do.body17

do.body17:                                        ; preds = %do.body, %if.then.do.body17_crit_edge
  %cursor_timer = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 8
  tail call void @init_timer_key(ptr noundef %cursor_timer, ptr noundef nonnull @cursor_timer_handler, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @fbcon_add_cursor_timer.__key.23) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %cur_blink_jiffies = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %cur_blink_jiffies to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cur_blink_jiffies, align 4
  %add = add i32 %12, %10
  %call = tail call i32 @mod_timer(ptr noundef %cursor_timer, i32 noundef %add) #20
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %or = or i32 %14, 2
  store i32 %or, ptr %flags, align 4
  br label %if.end22

if.end22:                                         ; preds = %do.body17, %land.lhs.true4.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %entry.if.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fb_flashcursor(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -568
  %fbcon_par = getelementptr i8, ptr %work, i32 532
  %0 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbcon_par, align 4
  %call = tail call i32 @console_trylock() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %land.lhs.true

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

land.lhs.true:                                    ; preds = %if.end
  %currcon = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %currcon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %currcon, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp1.not = icmp eq i32 %3, -1
  br i1 %cmp1.not, label %land.lhs.true.cleanup.sink.split_crit_edge, label %if.end4

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.end4:                                          ; preds = %land.lhs.true
  %arrayidx = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end4.cleanup.sink.split_crit_edge, label %lor.lhs.false

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end4
  %call6 = tail call zeroext i1 @con_is_visible(ptr noundef nonnull %5) #20
  br i1 %call6, label %lor.lhs.false7, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %7 to i32
  %arrayidx8 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  %idxprom9 = sext i8 %9 to i32
  %arrayidx10 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom9
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx10, align 4
  %cmp11.not = icmp eq ptr %11, %add.ptr
  br i1 %cmp11.not, label %lor.lhs.false12, label %lor.lhs.false7.cleanup.sink.split_crit_edge

lor.lhs.false7.cleanup.sink.split_crit_edge:      ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

lor.lhs.false12:                                  ; preds = %lor.lhs.false7
  %vc_deccm = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 37
  %12 = ptrtoint ptr %vc_deccm to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %vc_deccm, align 4
  %13 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp13.not.not = icmp eq i16 %13, 0
  br i1 %cmp13.not.not, label %lor.lhs.false12.cleanup.sink.split_crit_edge, label %if.end15

lor.lhs.false12.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.end15:                                         ; preds = %lor.lhs.false12
  %vc_pos = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 26
  %14 = ptrtoint ptr %vc_pos to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vc_pos, align 4
  %16 = inttoptr i32 %15 to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %16, align 2
  %cursor_flash = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 14
  %19 = ptrtoint ptr %cursor_flash to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cursor_flash, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool16.not = icmp eq i32 %20, 0
  br i1 %tobool16.not, label %if.end15.lor.end_crit_edge, label %lor.rhs

if.end15.lor.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.end

lor.rhs:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #22
  %enable = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %enable to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %enable, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool18.not = icmp eq i16 %22, 0
  %phi.sel = select i1 %tobool18.not, i32 1, i32 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end15.lor.end_crit_edge
  %23 = phi i32 [ 2, %if.end15.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ]
  %cursor = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cursor, align 4
  %var.i = getelementptr i8, ptr %work, i32 -368
  %fix.i = getelementptr i8, ptr %work, i32 -208
  %call.i = tail call i32 @fb_get_color_depth(ptr noundef %var.i, ptr noundef %fix.i) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @console_blanked to i32))
  %26 = load i32, ptr @console_blanked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %lor.end.if.end.i_crit_edge, label %if.then.i

lor.end.if.end.i_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

if.then.i:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #22
  %vc_hi_font_mask.i = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 27
  %27 = ptrtoint ptr %vc_hi_font_mask.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vc_hi_font_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool1.not.i = icmp eq i16 %28, 0
  %conv2.i = select i1 %tobool1.not.i, i16 255, i16 511
  %vc_video_erase_char.i = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 29
  %29 = ptrtoint ptr %vc_video_erase_char.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vc_video_erase_char.i, align 4
  %and.i = and i16 %conv2.i, %30
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.end.if.end.i_crit_edge
  %c.addr.0.i = phi i16 [ %and.i, %if.then.i ], [ %18, %lor.end.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %sw.bb.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  %conv15.i = zext i16 %c.addr.0.i to i32
  %vc_hi_font_mask16.i = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 27
  %31 = ptrtoint ptr %vc_hi_font_mask16.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vc_hi_font_mask16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool18.not.i = icmp eq i16 %32, 0
  %cond13.i = select i1 %tobool18.not.i, i32 8, i32 9
  %shr.i = lshr i32 %conv15.i, %cond13.i
  %and14.i = and i32 %shr.i, 15
  %33 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %call.i, label %if.then7.i.get_color.exit_crit_edge [
    i32 3, label %sw.bb52.i
    i32 2, label %sw.bb48.i
  ]

if.then7.i.get_color.exit_crit_edge:              ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %get_color.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %length.i.i = getelementptr i8, ptr %work, i32 -320
  %34 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length.i.i, align 4
  %length2.i.i = getelementptr i8, ptr %work, i32 -332
  %36 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %length2.i.i, align 4
  %38 = tail call i32 @llvm.umax.i32(i32 %35, i32 %37) #20
  %length4.i.i = getelementptr i8, ptr %work, i32 -308
  %39 = ptrtoint ptr %length4.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length4.i.i, align 4
  %41 = tail call i32 @llvm.umax.i32(i32 %40, i32 %38) #20
  %shl.i.i = shl i32 4095, %41
  %neg.i.i = and i32 %shl.i.i, 255
  %and.i.i = xor i32 %neg.i.i, 255
  %visual.i = getelementptr i8, ptr %work, i32 -176
  %42 = ptrtoint ptr %visual.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %visual.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp26.not.i = icmp eq i32 %43, 0
  %spec.select.i = select i1 %cmp26.not.i, i32 0, i32 %and.i.i
  %cond39.i = select i1 %cmp26.not.i, i32 %and.i.i, i32 0
  %fg.0.i = select i1 %tobool.not.i, i32 %spec.select.i, i32 %cond39.i
  br label %get_color.exit

sw.bb48.i:                                        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and14.i)
  %44 = icmp ult i32 %and14.i, 9
  br i1 %44, label %switch.lookup, label %sw.bb48.i.get_color.exit_crit_edge

sw.bb48.i.get_color.exit_crit_edge:               ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %get_color.exit

sw.bb52.i:                                        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #22
  %and53.i = and i32 %shr.i, 7
  br label %get_color.exit

switch.lookup:                                    ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #22
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.fb_flashcursor, i32 0, i32 %and14.i
  %45 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %45)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_color.exit

get_color.exit:                                   ; preds = %switch.lookup, %sw.bb52.i, %sw.bb48.i.get_color.exit_crit_edge, %sw.bb.i, %if.then7.i.get_color.exit_crit_edge
  %color.1.i = phi i32 [ %and14.i, %if.then7.i.get_color.exit_crit_edge ], [ %and53.i, %sw.bb52.i ], [ %fg.0.i, %sw.bb.i ], [ %switch.load, %switch.lookup ], [ 3, %sw.bb48.i.get_color.exit_crit_edge ]
  %call.i48 = tail call i32 @fb_get_color_depth(ptr noundef %var.i, ptr noundef %fix.i) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @console_blanked to i32))
  %46 = load i32, ptr @console_blanked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i49 = icmp eq i32 %46, 0
  br i1 %tobool.not.i49, label %get_color.exit.if.end.i58_crit_edge, label %if.then.i55

get_color.exit.if.end.i58_crit_edge:              ; preds = %get_color.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i58

if.then.i55:                                      ; preds = %get_color.exit
  call void @__sanitizer_cov_trace_pc() #22
  %vc_hi_font_mask.i50 = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 27
  %47 = ptrtoint ptr %vc_hi_font_mask.i50 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vc_hi_font_mask.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool1.not.i51 = icmp eq i16 %48, 0
  %conv2.i52 = select i1 %tobool1.not.i51, i16 255, i16 511
  %vc_video_erase_char.i53 = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 29
  %49 = ptrtoint ptr %vc_video_erase_char.i53 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %vc_video_erase_char.i53, align 4
  %and.i54 = and i16 %conv2.i52, %50
  br label %if.end.i58

if.end.i58:                                       ; preds = %if.then.i55, %get_color.exit.if.end.i58_crit_edge
  %c.addr.0.i56 = phi i16 [ %and.i54, %if.then.i55 ], [ %18, %get_color.exit.if.end.i58_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i48)
  %cmp.not.i57 = icmp eq i32 %call.i48, 1
  br i1 %cmp.not.i57, label %sw.bb.i74, label %if.then7.i62

if.then7.i62:                                     ; preds = %if.end.i58
  %conv15.i59 = zext i16 %c.addr.0.i56 to i32
  %vc_hi_font_mask16.i60 = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 27
  %51 = ptrtoint ptr %vc_hi_font_mask16.i60 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %vc_hi_font_mask16.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool18.not.i61 = icmp eq i16 %52, 0
  %cond19.i = select i1 %tobool18.not.i61, i32 12, i32 13
  %shr20.i = lshr i32 %conv15.i59, %cond19.i
  %53 = zext i32 %call.i48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %call.i48, label %if.then7.i62.get_color.exit82_crit_edge [
    i32 3, label %sw.bb52.i80
    i32 2, label %sw.bb48.i75
  ]

if.then7.i62.get_color.exit82_crit_edge:          ; preds = %if.then7.i62
  call void @__sanitizer_cov_trace_pc() #22
  br label %get_color.exit82

sw.bb.i74:                                        ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #22
  %length.i.i63 = getelementptr i8, ptr %work, i32 -320
  %54 = ptrtoint ptr %length.i.i63 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %length.i.i63, align 4
  %length2.i.i64 = getelementptr i8, ptr %work, i32 -332
  %56 = ptrtoint ptr %length2.i.i64 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %length2.i.i64, align 4
  %58 = tail call i32 @llvm.umax.i32(i32 %55, i32 %57) #20
  %length4.i.i65 = getelementptr i8, ptr %work, i32 -308
  %59 = ptrtoint ptr %length4.i.i65 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %length4.i.i65, align 4
  %61 = tail call i32 @llvm.umax.i32(i32 %60, i32 %58) #20
  %shl.i.i66 = shl i32 4095, %61
  %neg.i.i67 = and i32 %shl.i.i66, 255
  %and.i.i68 = xor i32 %neg.i.i67, 255
  %visual.i69 = getelementptr i8, ptr %work, i32 -176
  %62 = ptrtoint ptr %visual.i69 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %visual.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp26.not.i70 = icmp eq i32 %63, 0
  %cond39.i72 = select i1 %cmp26.not.i70, i32 %and.i.i68, i32 0
  br label %get_color.exit82

sw.bb48.i75:                                      ; preds = %if.then7.i62
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %shr20.i)
  %64 = icmp ult i32 %shr20.i, 9
  br i1 %64, label %switch.lookup85, label %sw.bb48.i75.get_color.exit82_crit_edge

sw.bb48.i75.get_color.exit82_crit_edge:           ; preds = %sw.bb48.i75
  call void @__sanitizer_cov_trace_pc() #22
  br label %get_color.exit82

sw.bb52.i80:                                      ; preds = %if.then7.i62
  call void @__sanitizer_cov_trace_pc() #22
  %and53.i79 = and i32 %shr20.i, 7
  br label %get_color.exit82

switch.lookup85:                                  ; preds = %sw.bb48.i75
  call void @__sanitizer_cov_trace_pc() #22
  %switch.gep86 = getelementptr inbounds [9 x i32], ptr @switch.table.fb_flashcursor.63, i32 0, i32 %shr20.i
  %65 = ptrtoint ptr %switch.gep86 to i32
  call void @__asan_load4_noabort(i32 %65)
  %switch.load87 = load i32, ptr %switch.gep86, align 4
  br label %get_color.exit82

get_color.exit82:                                 ; preds = %switch.lookup85, %sw.bb52.i80, %sw.bb48.i75.get_color.exit82_crit_edge, %sw.bb.i74, %if.then7.i62.get_color.exit82_crit_edge
  %color.1.i81 = phi i32 [ %shr20.i, %if.then7.i62.get_color.exit82_crit_edge ], [ %and53.i79, %sw.bb52.i80 ], [ %cond39.i72, %sw.bb.i74 ], [ %switch.load87, %switch.lookup85 ], [ 3, %sw.bb48.i75.get_color.exit82_crit_edge ]
  tail call void %25(ptr noundef nonnull %5, ptr noundef %add.ptr, i32 noundef %23, i32 noundef %color.1.i, i32 noundef %color.1.i81) #20
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %get_color.exit82, %lor.lhs.false12.cleanup.sink.split_crit_edge, %lor.lhs.false7.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end4.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  tail call void @console_unlock() #20
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @console_trylock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cursor_timer_handler(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr i8, ptr %t, i32 124
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %2 = load ptr, ptr @system_power_efficient_wq, align 4
  %queue = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 9
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %queue) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %cur_blink_jiffies = getelementptr i8, ptr %t, i32 132
  %4 = ptrtoint ptr %cur_blink_jiffies to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_blink_jiffies, align 4
  %add = add i32 %5, %3
  %call2 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_color_depth(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc_resize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_set_tileops(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_set_bitops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_match_mode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @updatescrollmode(ptr nocapture noundef %p, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %vc) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 29
  %0 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbcon_par, align 4
  %height = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %yres1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %rotate = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rotate, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %5, label %cond.false [
    i32 0, label %entry.cond.end_crit_edge
    i32 2, label %entry.cond.end_crit_edge65
  ]

entry.cond.end_crit_edge65:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge, %entry.cond.end_crit_edge65
  %cond.in = phi ptr [ %var, %cond.false ], [ %yres1, %entry.cond.end_crit_edge ], [ %yres1, %entry.cond.end_crit_edge65 ]
  %7 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %cond = load i32, ptr %cond.in, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %8 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %5, label %cond.false23 [
    i32 0, label %cond.end.cond.end24_crit_edge
    i32 2, label %cond.end.cond.end24_crit_edge66
  ]

cond.end.cond.end24_crit_edge66:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end24

cond.end.cond.end24_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end24

cond.false23:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false23, %cond.end.cond.end24_crit_edge, %cond.end.cond.end24_crit_edge66
  %cond25.in = phi ptr [ %xres_virtual, %cond.false23 ], [ %yres_virtual, %cond.end.cond.end24_crit_edge ], [ %yres_virtual, %cond.end.cond.end24_crit_edge66 ]
  %9 = ptrtoint ptr %cond25.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %cond25 = load i32, ptr %cond25.in, align 4
  %cond25.frozen = freeze i32 %cond25
  %.frozen = freeze i32 %3
  %div = sdiv i32 %cond25.frozen, %.frozen
  %vrows = getelementptr inbounds %struct.fbcon_display, ptr %p, i32 0, i32 5
  %10 = ptrtoint ptr %vrows to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div, ptr %vrows, align 4
  %vc_rows = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 5
  %11 = ptrtoint ptr %vc_rows to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vc_rows, align 4
  %add = add i32 %12, 1
  %mul = mul i32 %add, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %mul)
  %cmp26 = icmp ugt i32 %cond, %mul
  br i1 %cmp26, label %if.then, label %cond.end24.if.end_crit_edge

cond.end24.if.end_crit_edge:                      ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #22
  %mul29 = mul i32 %12, %3
  %sub = sub i32 %cond, %mul29
  %div30 = udiv i32 %sub, %3
  %sub32 = sub i32 %div, %div30
  %13 = ptrtoint ptr %vrows to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub32, ptr %vrows, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end24.if.end_crit_edge
  %rem = srem i32 %cond, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end.if.end39_crit_edge, label %land.lhs.true

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end
  %14 = mul i32 %div, %.frozen
  %rem33.decomposed = sub i32 %cond25.frozen, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %rem33.decomposed, i32 %rem)
  %cmp35 = icmp slt i32 %rem33.decomposed, %rem
  br i1 %cmp35, label %if.then37, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end39

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  %15 = ptrtoint ptr %vrows to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vrows, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %vrows, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %land.lhs.true.if.end39_crit_edge, %if.end.if.end39_crit_edge
  %17 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fbcon_par, align 4
  %flags.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %ypanstep.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 7
  %rotate.i = getelementptr inbounds %struct.fbcon_ops, ptr %18, i32 0, i32 20
  %21 = ptrtoint ptr %rotate.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rotate.i, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %22, label %cond.false.i [
    i32 0, label %if.end39.cond.end.i_crit_edge
    i32 2, label %if.end39.cond.end.i_crit_edge67
  ]

if.end39.cond.end.i_crit_edge67:                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end.i

if.end39.cond.end.i_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #22
  %xpanstep.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 6
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end39.cond.end.i_crit_edge, %if.end39.cond.end.i_crit_edge67
  %cond.in.in.i = phi ptr [ %xpanstep.i, %cond.false.i ], [ %ypanstep.i, %if.end39.cond.end.i_crit_edge ], [ %ypanstep.i, %if.end39.cond.end.i_crit_edge67 ]
  %24 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %cond.in.i = load i16, ptr %cond.in.in.i, align 2
  %cond.i = zext i16 %cond.in.i to i32
  %25 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %22, label %cond.end.i.cond.end26.i_crit_edge [
    i32 0, label %cond.end.i.cond.true22.i_crit_edge
    i32 2, label %cond.end.i.cond.true22.i_crit_edge68
  ]

cond.end.i.cond.true22.i_crit_edge68:             ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.true22.i

cond.end.i.cond.true22.i_crit_edge:               ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.true22.i

cond.end.i.cond.end26.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end26.i

cond.true22.i:                                    ; preds = %cond.end.i.cond.true22.i_crit_edge, %cond.end.i.cond.true22.i_crit_edge68
  %ywrapstep.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 8
  %26 = ptrtoint ptr %ywrapstep.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ywrapstep.i, align 4
  %conv23.i = zext i16 %27 to i32
  br label %cond.end26.i

cond.end26.i:                                     ; preds = %cond.true22.i, %cond.end.i.cond.end26.i_crit_edge
  %cond27.i = phi i32 [ %conv23.i, %cond.true22.i ], [ 0, %cond.end.i.cond.end26.i_crit_edge ]
  %28 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %22, label %cond.false43.i [
    i32 0, label %cond.end26.i.cond.end44.i_crit_edge
    i32 2, label %cond.end26.i.cond.end44.i_crit_edge69
  ]

cond.end26.i.cond.end44.i_crit_edge69:            ; preds = %cond.end26.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end44.i

cond.end26.i.cond.end44.i_crit_edge:              ; preds = %cond.end26.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end44.i

cond.false43.i:                                   ; preds = %cond.end26.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end44.i

cond.end44.i:                                     ; preds = %cond.false43.i, %cond.end26.i.cond.end44.i_crit_edge, %cond.end26.i.cond.end44.i_crit_edge69
  %cond45.in.i = phi ptr [ %var, %cond.false43.i ], [ %yres1, %cond.end26.i.cond.end44.i_crit_edge ], [ %yres1, %cond.end26.i.cond.end44.i_crit_edge69 ]
  %29 = ptrtoint ptr %cond45.in.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %cond45.i = load i32, ptr %cond45.in.i, align 4
  %30 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %22, label %cond.false61.i [
    i32 0, label %cond.end44.i.cond.end62.i_crit_edge
    i32 2, label %cond.end44.i.cond.end62.i_crit_edge70
  ]

cond.end44.i.cond.end62.i_crit_edge70:            ; preds = %cond.end44.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end62.i

cond.end44.i.cond.end62.i_crit_edge:              ; preds = %cond.end44.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end62.i

cond.false61.i:                                   ; preds = %cond.end44.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end62.i

cond.end62.i:                                     ; preds = %cond.false61.i, %cond.end44.i.cond.end62.i_crit_edge, %cond.end44.i.cond.end62.i_crit_edge70
  %cond63.in.i = phi ptr [ %xres_virtual, %cond.false61.i ], [ %yres_virtual, %cond.end44.i.cond.end62.i_crit_edge ], [ %yres_virtual, %cond.end44.i.cond.end62.i_crit_edge70 ]
  %31 = ptrtoint ptr %cond63.in.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %cond63.i = load i32, ptr %cond63.in.i, align 4
  %and.i = and i32 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cond.in.i)
  %tobool64.not.i = icmp eq i16 %cond.in.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool64.not.i
  br i1 %or.cond.i, label %cond.end62.i.land.end.i_crit_edge, label %lor.lhs.false65.i

cond.end62.i.land.end.i_crit_edge:                ; preds = %cond.end62.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.end.i

lor.lhs.false65.i:                                ; preds = %cond.end62.i
  call void @__sanitizer_cov_trace_pc() #22
  %32 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height, align 4
  %rem.i = urem i32 %33, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool66.not.i = icmp eq i32 %rem.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %cond63.i, i32 %cond45.i)
  %cmp69.i = icmp sgt i32 %cond63.i, %cond45.i
  %spec.select.i = select i1 %tobool66.not.i, i1 %cmp69.i, i1 false
  br label %land.end.i

land.end.i:                                       ; preds = %lor.lhs.false65.i, %cond.end62.i.land.end.i_crit_edge
  %34 = phi i1 [ false, %cond.end62.i.land.end.i_crit_edge ], [ %spec.select.i, %lor.lhs.false65.i ]
  %and71.i = and i32 %20, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i)
  %tobool72.not.i = icmp eq i32 %and71.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond27.i)
  %tobool74.not.i = icmp eq i32 %cond27.i, 0
  %or.cond188.i = select i1 %tobool72.not.i, i1 true, i1 %tobool74.not.i
  br i1 %or.cond188.i, label %land.end.i.land.end103.i_crit_edge, label %lor.lhs.false75.i

land.end.i.land.end103.i_crit_edge:               ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.end103.i

lor.lhs.false75.i:                                ; preds = %land.end.i
  %35 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height, align 4
  %rem78.i = urem i32 %36, %cond27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem78.i)
  %tobool79.not.i = icmp ne i32 %rem78.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool85.not.i = icmp eq i32 %36, 0
  %or.cond189.i = or i1 %tobool85.not.i, %tobool79.not.i
  br i1 %or.cond189.i, label %lor.lhs.false75.i.land.end103.i_crit_edge, label %lor.lhs.false86.i

lor.lhs.false75.i.land.end103.i_crit_edge:        ; preds = %lor.lhs.false75.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.end103.i

lor.lhs.false86.i:                                ; preds = %lor.lhs.false75.i
  %rem89.i = urem i32 %cond63.i, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem89.i)
  %tobool90.not.i = icmp eq i32 %rem89.i, 0
  br i1 %tobool90.not.i, label %lor.end.i, label %lor.lhs.false86.i.land.end103.i_crit_edge

lor.lhs.false86.i.land.end103.i_crit_edge:        ; preds = %lor.lhs.false86.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.end103.i

lor.end.i:                                        ; preds = %lor.lhs.false86.i
  call void @__sanitizer_cov_trace_pc() #22
  %rem99.i = urem i32 %cond45.i, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem99.i)
  %tobool100.not.i = icmp eq i32 %rem99.i, 0
  br label %land.end103.i

land.end103.i:                                    ; preds = %lor.end.i, %lor.lhs.false86.i.land.end103.i_crit_edge, %lor.lhs.false75.i.land.end103.i_crit_edge, %land.end.i.land.end103.i_crit_edge
  %37 = phi i1 [ false, %land.end.i.land.end103.i_crit_edge ], [ %tobool100.not.i, %lor.end.i ], [ false, %lor.lhs.false75.i.land.end103.i_crit_edge ], [ false, %lor.lhs.false86.i.land.end103.i_crit_edge ]
  %and105.i = and i32 %20, 128
  %38 = and i32 %20, 258
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %38)
  %39 = icmp eq i32 %38, 256
  %brmerge.i = select i1 %37, i1 true, i1 %34
  br i1 %brmerge.i, label %if.then.i, label %if.else135.i

if.then.i:                                        ; preds = %land.end103.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.i)
  %tobool124.not.i = icmp ne i32 %and105.i, 0
  %brmerge190.i = or i1 %tobool124.not.i, %39
  br i1 %brmerge190.i, label %if.then127.i, label %if.else.i

if.then127.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  %conv130.i = select i1 %37, i16 3, i16 2
  %scrollmode.i = getelementptr inbounds %struct.fbcon_display, ptr %p, i32 0, i32 2
  %40 = ptrtoint ptr %scrollmode.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv130.i, ptr %scrollmode.i, align 4
  br label %updatescrollmode_accel.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  %conv133.i = select i1 %37, i16 4, i16 5
  %scrollmode134.i = getelementptr inbounds %struct.fbcon_display, ptr %p, i32 0, i32 2
  %41 = ptrtoint ptr %scrollmode134.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv133.i, ptr %scrollmode134.i, align 4
  br label %updatescrollmode_accel.exit

if.else135.i:                                     ; preds = %land.end103.i
  %42 = and i32 %20, 1026
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %42)
  %43 = icmp eq i32 %42, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.i)
  %tobool136.not.i = icmp eq i32 %and105.i, 0
  %.not.i = xor i1 %39, true
  %brmerge191.i = select i1 %.not.i, i1 true, i1 %43
  %or.cond192.i = select i1 %tobool136.not.i, i1 %brmerge191.i, i1 false
  %scrollmode144.i = getelementptr inbounds %struct.fbcon_display, ptr %p, i32 0, i32 2
  br i1 %or.cond192.i, label %if.else143.i, label %if.then141.i

if.then141.i:                                     ; preds = %if.else135.i
  call void @__sanitizer_cov_trace_pc() #22
  %44 = ptrtoint ptr %scrollmode144.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 1, ptr %scrollmode144.i, align 4
  br label %updatescrollmode_accel.exit

if.else143.i:                                     ; preds = %if.else135.i
  call void @__sanitizer_cov_trace_pc() #22
  %45 = ptrtoint ptr %scrollmode144.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 4, ptr %scrollmode144.i, align 4
  br label %updatescrollmode_accel.exit

updatescrollmode_accel.exit:                      ; preds = %if.else143.i, %if.then141.i, %if.else.i, %if.then127.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fbcon_set_palette(ptr noundef %vc, ptr nocapture noundef readonly %table) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom1 = sext i8 %3 to i32
  %arrayidx2 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %fbcon_par.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %fbcon_par.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbcon_par.i, align 4
  %state.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 28
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %vc_mode.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 17
  %10 = ptrtoint ptr %vc_mode.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vc_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp1.not.i = icmp eq i8 %11, 0
  br i1 %cmp1.not.i, label %fbcon_is_inactive.exit, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

fbcon_is_inactive.exit:                           ; preds = %lor.lhs.false.i
  %graphics.i = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 17
  %12 = ptrtoint ptr %graphics.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %graphics.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not = icmp eq i32 %13, 0
  br i1 %tobool.i.not, label %if.end, label %fbcon_is_inactive.exit.cleanup_crit_edge

fbcon_is_inactive.exit.cleanup_crit_edge:         ; preds = %fbcon_is_inactive.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %fbcon_is_inactive.exit
  %call3 = tail call zeroext i1 @con_is_visible(ptr noundef %vc) #20
  br i1 %call3, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %var = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6
  %fix = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 7
  %call6 = tail call i32 @fb_get_color_depth(ptr noundef %var, ptr noundef %fix) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call6)
  %cmp = icmp sgt i32 %call6, 3
  br i1 %cmp, label %if.end5.for.body_crit_edge, label %if.else

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end5.for.body_crit_edge
  %j.066 = phi i32 [ %inc25, %for.body.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  %i.065 = phi i32 [ %inc33, %for.body.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  %arrayidx9 = getelementptr i8, ptr %table, i32 %i.065
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx9, align 1
  %conv = zext i8 %15 to i32
  %inc = add nuw nsw i32 %j.066, 1
  %arrayidx10 = getelementptr %struct.vc_data, ptr %vc, i32 0, i32 41, i32 %j.066
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %17 to i32
  %shl = shl nuw nsw i32 %conv11, 8
  %or = or i32 %shl, %conv11
  %conv13 = trunc i32 %or to i16
  %arrayidx14 = getelementptr [16 x i16], ptr @palette_red, i32 0, i32 %conv
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv13, ptr %arrayidx14, align 2
  %inc16 = add nuw nsw i32 %j.066, 2
  %arrayidx17 = getelementptr %struct.vc_data, ptr %vc, i32 0, i32 41, i32 %inc
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %20 to i32
  %shl19 = shl nuw nsw i32 %conv18, 8
  %or21 = or i32 %shl19, %conv18
  %conv22 = trunc i32 %or21 to i16
  %arrayidx23 = getelementptr [16 x i16], ptr @palette_green, i32 0, i32 %conv
  %21 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv22, ptr %arrayidx23, align 2
  %inc25 = add nuw nsw i32 %j.066, 3
  %arrayidx26 = getelementptr %struct.vc_data, ptr %vc, i32 0, i32 41, i32 %inc16
  %22 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %23 to i32
  %shl28 = shl nuw nsw i32 %conv27, 8
  %or30 = or i32 %shl28, %conv27
  %conv31 = trunc i32 %or30 to i16
  %arrayidx32 = getelementptr [16 x i16], ptr @palette_blue, i32 0, i32 %conv
  %24 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv31, ptr %arrayidx32, align 2
  %inc33 = add nuw nsw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc33, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  store i32 16, ptr getelementptr inbounds (%struct.fb_cmap, ptr @palette_cmap, i32 0, i32 1), align 4
  store i32 0, ptr @palette_cmap, align 4
  br label %if.end37

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #22
  %shl34 = shl nuw nsw i32 1, %call6
  %call35 = tail call ptr @fb_default_cmap(i32 noundef %shl34) #20
  %call36 = tail call i32 @fb_copy_cmap(ptr noundef %call35, ptr noundef nonnull @palette_cmap) #20
  br label %if.end37

if.end37:                                         ; preds = %if.else, %for.end
  %call38 = tail call i32 @fb_set_cmap(ptr noundef nonnull @palette_cmap, ptr noundef %5) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end.cleanup_crit_edge, %fbcon_is_inactive.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_copy_cmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_default_cmap(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_set_cmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @con2fb_acquire_newinfo(ptr noundef %vc, ptr noundef %info, i32 noundef %unit, i32 noundef %oldidx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %0 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call zeroext i1 @try_module_get(ptr noundef %3) #20
  br i1 %call, label %land.lhs.true, label %entry.if.then25.critedge_crit_edge

entry.if.then25.critedge_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then25.critedge

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fbops, align 4
  %fb_open = getelementptr inbounds %struct.fb_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %fb_open to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb_open, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.if.then11_crit_edge, label %land.lhs.true3

land.lhs.true.if.then11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call6 = tail call i32 %7(ptr noundef %info, i32 noundef 0) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true3.if.then11_crit_edge, label %land.lhs.true3.if.then25.critedge_crit_edge

land.lhs.true3.if.then25.critedge_crit_edge:      ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then25.critedge

land.lhs.true3.if.then11_crit_edge:               ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11

if.then11:                                        ; preds = %land.lhs.true3.if.then11_crit_edge, %land.lhs.true.if.then11_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 380) #26
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %if.then11.if.then25.critedge_crit_edge, label %if.then18

if.then11.if.then25.critedge_crit_edge:           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then25.critedge

if.then18:                                        ; preds = %if.then11
  %cur_blink_jiffies = getelementptr inbounds %struct.fbcon_ops, ptr %call7.i.i, i32 0, i32 13
  %9 = ptrtoint ptr %cur_blink_jiffies to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 20, ptr %cur_blink_jiffies, align 8
  %info19 = getelementptr inbounds %struct.fbcon_ops, ptr %call7.i.i, i32 0, i32 11
  %10 = ptrtoint ptr %info19 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %info, ptr %info19, align 8
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 29
  %11 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %fbcon_par, align 4
  %tobool20.not = icmp eq ptr %vc, null
  br i1 %tobool20.not, label %if.then18.if.end28_crit_edge, label %if.then21

if.then18.if.end28_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end28

if.then21:                                        ; preds = %if.then18
  %vc_num.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %12 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vc_num.i, align 4
  %idxprom.i = zext i16 %13 to i32
  %arrayidx.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom.i
  %p.i = getelementptr inbounds %struct.fbcon_ops, ptr %call7.i.i, i32 0, i32 10
  %14 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx.i, ptr %p.i, align 4
  %flags.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %16, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.i, label %if.then.i

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @fbcon_set_tileops(ptr noundef nonnull %vc, ptr noundef %info) #20
  br label %if.end28

land.lhs.true.i.i:                                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #22
  %17 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fbcon_par, align 4
  %p.i.i = getelementptr inbounds %struct.fbcon_ops, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %p.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %p.i.i, align 4
  %con_rotate.i.i = getelementptr inbounds %struct.fbcon_display, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %con_rotate.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %con_rotate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp.i.i = icmp slt i32 %22, 4
  %spec.select.i = select i1 %cmp.i.i, i32 %22, i32 0
  %rotate3.i.i = getelementptr inbounds %struct.fbcon_ops, ptr %18, i32 0, i32 20
  %23 = ptrtoint ptr %rotate3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.select.i, ptr %rotate3.i.i, align 4
  tail call void @fbcon_set_bitops(ptr noundef nonnull %call7.i.i) #20
  br label %if.end28

if.then25.critedge:                               ; preds = %if.then11.if.then25.critedge_crit_edge, %land.lhs.true3.if.then25.critedge_crit_edge, %entry.if.then25.critedge_crit_edge
  %err.258 = phi i32 [ -19, %land.lhs.true3.if.then25.critedge_crit_edge ], [ -12, %if.then11.if.then25.critedge_crit_edge ], [ -19, %entry.if.then25.critedge_crit_edge ]
  %conv = trunc i32 %oldidx to i8
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %unit
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv, ptr %arrayidx, align 1
  %25 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fbops, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  tail call void @module_put(ptr noundef %28) #20
  br label %if.end28

if.end28:                                         ; preds = %if.then25.critedge, %land.lhs.true.i.i, %if.then.i, %if.then18.if.end28_crit_edge
  %err.257 = phi i32 [ 0, %if.then18.if.end28_crit_edge ], [ %err.258, %if.then25.critedge ], [ 0, %if.then.i ], [ 0, %land.lhs.true.i.i ]
  ret i32 %err.257
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fbcon_prepare_logo(ptr noundef %vc, ptr noundef %info, i32 noundef %cols, i32 noundef %rows, i32 noundef %new_cols, i32 noundef %new_rows) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_video_erase_char = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 29
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %0 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  store i32 -3, ptr @logo_shown, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %vc_video_erase_char to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vc_video_erase_char, align 4
  %conv = zext i16 %5 to i32
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 29
  %6 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbcon_par, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %fix = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %call = tail call i32 @fb_get_color_depth(ptr noundef %var, ptr noundef %fix) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  %and = and i32 %conv, 64511
  %spec.select = select i1 %cmp, i32 %and, i32 %conv
  %rotate = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rotate, align 4
  %call4 = tail call i32 @fb_prepare_logo(ptr noundef %info, i32 noundef %9) #20
  %height = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %add = add i32 %call4, -1
  %sub = add i32 %add, %11
  %div = udiv i32 %sub, %11
  store i32 %div, ptr @logo_lines, align 4
  %vc_origin = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %12 = ptrtoint ptr %vc_origin to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vc_origin, align 4
  %vc_size_row = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 6
  %14 = ptrtoint ptr %vc_size_row to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vc_size_row, align 4
  %mul = mul i32 %15, %rows
  %add7 = add i32 %mul, %13
  %16 = inttoptr i32 %add7 to ptr
  %mul8 = mul i32 %div, %cols
  %idx.neg = sub i32 0, %mul8
  %add.ptr = getelementptr i16, ptr %16, i32 %idx.neg
  %cmp10224 = icmp ult ptr %add.ptr, %16
  br i1 %cmp10224, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %17 = ptrtoint ptr %vc_video_erase_char to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vc_video_erase_char, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %r.0225 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %19 = ptrtoint ptr %r.0225 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %r.0225, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %18)
  %cmp15.not = icmp eq i16 %20, %18
  br i1 %cmp15.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr i16, ptr %r.0225, i32 1
  %cmp10 = icmp ult ptr %incdec.ptr, %16
  br i1 %cmp10, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %r.0.lcssa = phi ptr [ %add.ptr, %if.end.for.end_crit_edge ], [ %r.0225, %for.body.for.end_crit_edge ], [ %incdec.ptr, %for.inc.for.end_crit_edge ]
  %cmp19.not = icmp eq ptr %r.0.lcssa, %16
  %add21 = add i32 %div, %rows
  call void @__sanitizer_cov_trace_cmp4(i32 %add21, i32 %new_rows)
  %cmp22.not = icmp sgt i32 %add21, %new_rows
  %or.cond = select i1 %cmp19.not, i1 true, i1 %cmp22.not
  br i1 %or.cond, label %for.end.if.end46_crit_edge, label %if.then24

for.end.if.end46_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end46

if.then24:                                        ; preds = %for.end
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div, i32 %new_cols) #20
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %if.then24.if.end8.i_crit_edge, label %if.end.i203

if.then24.if.end8.i_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8.i

if.end.i203:                                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #22
  %23 = extractvalue { i32, i1 } %21, 0
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 2) #20
  %25 = extractvalue { i32, i1 } %24, 1
  %26 = extractvalue { i32, i1 } %24, 0
  %spec.select.i = select i1 %25, i32 -1, i32 %26
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i203, %if.then24.if.end8.i_crit_edge
  %retval.0.i = phi i32 [ -1, %if.then24.if.end8.i_crit_edge ], [ %spec.select.i, %if.end.i203 ]
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3264) #27
  %tobool27.not = icmp eq ptr %call9.i, null
  br i1 %tobool27.not, label %if.end8.i.if.end46_crit_edge, label %if.then28

if.end8.i.if.end46_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end46

if.then28:                                        ; preds = %if.end8.i
  %27 = tail call i32 @llvm.smin.i32(i32 %cols, i32 %new_cols)
  %conv31 = trunc i32 %spec.select to i16
  %28 = load i32, ptr @logo_lines, align 4
  %29 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %28, i32 %new_cols) #20
  %30 = extractvalue { i32, i1 } %29, 1
  br i1 %30, label %if.then28.array3_size.exit207_crit_edge, label %if.end.i205

if.then28.array3_size.exit207_crit_edge:          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #22
  br label %array3_size.exit207

if.end.i205:                                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #22
  %31 = extractvalue { i32, i1 } %29, 0
  %32 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %31, i32 2) #20
  %33 = extractvalue { i32, i1 } %32, 1
  %34 = extractvalue { i32, i1 } %32, 0
  %.op = lshr exact i32 %34, 1
  %phi.bo = select i1 %33, i32 2147483647, i32 %.op
  br label %array3_size.exit207

array3_size.exit207:                              ; preds = %if.end.i205, %if.then28.array3_size.exit207_crit_edge
  %retval.0.i206 = phi i32 [ 2147483647, %if.then28.array3_size.exit207_crit_edge ], [ %phi.bo, %if.end.i205 ]
  %call.i = tail call ptr @memset16(ptr noundef nonnull %call9.i, i16 noundef zeroext %conv31, i32 noundef %retval.0.i206) #20
  %35 = load i32, ptr @logo_lines, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp36227 = icmp sgt i32 %35, 0
  br i1 %cmp36227, label %for.body38.lr.ph, label %array3_size.exit207.if.then49_crit_edge

array3_size.exit207.if.then49_crit_edge:          ; preds = %array3_size.exit207
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then49

for.body38.lr.ph:                                 ; preds = %array3_size.exit207
  %mul41 = shl i32 %27, 1
  %36 = load i32, ptr @logo_lines, align 4
  br label %for.body38

for.body38:                                       ; preds = %for.body38.for.body38_crit_edge, %for.body38.lr.ph
  %r.1229 = phi ptr [ %add.ptr, %for.body38.lr.ph ], [ %add.ptr43, %for.body38.for.body38_crit_edge ]
  %cnt.0228 = phi i32 [ 0, %for.body38.lr.ph ], [ %inc, %for.body38.for.body38_crit_edge ]
  %mul39 = mul i32 %cnt.0228, %new_cols
  %add.ptr40 = getelementptr i16, ptr %call9.i, i32 %mul39
  %37 = call ptr @memcpy(ptr %add.ptr40, ptr %r.1229, i32 %mul41)
  %inc = add nuw nsw i32 %cnt.0228, 1
  %add.ptr43 = getelementptr i16, ptr %r.1229, i32 %27
  %cmp36 = icmp slt i32 %inc, %36
  br i1 %cmp36, label %for.body38.for.body38_crit_edge, label %for.body38.if.then49_crit_edge

for.body38.if.then49_crit_edge:                   ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then49

for.body38.for.body38_crit_edge:                  ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body38

if.end46:                                         ; preds = %if.end8.i.if.end46_crit_edge, %for.end.if.end46_crit_edge
  br i1 %cmp19.not, label %if.end46.if.then49_crit_edge, label %if.end46.if.end83_crit_edge

if.end46.if.end83_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end83

if.end46.if.then49_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then49

if.then49:                                        ; preds = %if.end46.if.then49_crit_edge, %for.body38.if.then49_crit_edge, %array3_size.exit207.if.then49_crit_edge
  %save.0222 = phi ptr [ null, %if.end46.if.then49_crit_edge ], [ %call9.i, %array3_size.exit207.if.then49_crit_edge ], [ %call9.i, %for.body38.if.then49_crit_edge ]
  %idx.neg52 = sub i32 0, %cols
  %38 = load i32, ptr @logo_lines, align 4
  %sub54 = sub i32 %rows, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub54)
  %cmp56230 = icmp sgt i32 %sub54, 0
  br i1 %cmp56230, label %if.then49.for.body58_crit_edge, label %if.then49.for.end64_crit_edge

if.then49.for.end64_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end64

if.then49.for.body58_crit_edge:                   ; preds = %if.then49
  br label %for.body58

for.body58:                                       ; preds = %for.body58.for.body58_crit_edge, %if.then49.for.body58_crit_edge
  %add.ptr.pn232 = phi ptr [ %r.3, %for.body58.for.body58_crit_edge ], [ %add.ptr, %if.then49.for.body58_crit_edge ]
  %cnt.1231 = phi i32 [ %dec, %for.body58.for.body58_crit_edge ], [ %sub54, %if.then49.for.body58_crit_edge ]
  %r.3 = getelementptr i16, ptr %add.ptr.pn232, i32 %idx.neg52
  %add.ptr59 = getelementptr i16, ptr %r.3, i32 %mul8
  %39 = ptrtoint ptr %vc_size_row to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vc_size_row, align 4
  %41 = call ptr @memcpy(ptr %add.ptr59, ptr %r.3, i32 %40)
  %dec = add nsw i32 %cnt.1231, -1
  %cmp56 = icmp ugt i32 %cnt.1231, 1
  br i1 %cmp56, label %for.body58.for.body58_crit_edge, label %for.body58.for.end64_crit_edge

for.body58.for.end64_crit_edge:                   ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end64

for.body58.for.body58_crit_edge:                  ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body58

for.end64:                                        ; preds = %for.body58.for.end64_crit_edge, %if.then49.for.end64_crit_edge
  %tobool65.not = icmp eq ptr %save.0222, null
  br i1 %tobool65.not, label %if.then66, label %for.end64.if.end83_crit_edge

for.end64.if.end83_crit_edge:                     ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end83

if.then66:                                        ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #22
  %y = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %y, align 4
  %44 = load i32, ptr @logo_lines, align 4
  %add67 = add i32 %44, %43
  call void @__sanitizer_cov_trace_cmp4(i32 %add67, i32 %rows)
  %cmp68.not = icmp ult i32 %add67, %rows
  %45 = xor i32 %43, -1
  %sub74 = add i32 %45, %rows
  %lines.0 = select i1 %cmp68.not, i32 %44, i32 %sub74
  %add78 = add i32 %lines.0, %43
  %46 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add78, ptr %y, align 4
  %47 = ptrtoint ptr %vc_size_row to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vc_size_row, align 4
  %mul80 = mul i32 %lines.0, %48
  %vc_pos = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 26
  %49 = ptrtoint ptr %vc_pos to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vc_pos, align 4
  %add81 = add i32 %mul80, %50
  store i32 %add81, ptr %vc_pos, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then66, %for.end64.if.end83_crit_edge, %if.end46.if.end83_crit_edge
  %save.0223 = phi ptr [ %save.0222, %for.end64.if.end83_crit_edge ], [ null, %if.then66 ], [ null, %if.end46.if.end83_crit_edge ]
  %51 = ptrtoint ptr %vc_origin to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vc_origin, align 4
  %53 = inttoptr i32 %52 to ptr
  %conv85 = trunc i32 %spec.select to i16
  %54 = ptrtoint ptr %vc_size_row to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vc_size_row, align 4
  %56 = load i32, ptr @logo_lines, align 4
  %mul87 = mul i32 %56, %55
  %div1.i208 = lshr i32 %mul87, 1
  %call.i209 = tail call ptr @memset16(ptr noundef %53, i16 noundef zeroext %conv85, i32 noundef %div1.i208) #20
  %call88 = tail call zeroext i1 @con_is_visible(ptr noundef %vc) #20
  br i1 %call88, label %land.lhs.true90, label %if.end83.if.end95_crit_edge

if.end83.if.end95_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end95

land.lhs.true90:                                  ; preds = %if.end83
  %vc_mode = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 17
  %57 = ptrtoint ptr %vc_mode to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %vc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp92 = icmp eq i8 %58, 0
  br i1 %cmp92, label %if.then94, label %land.lhs.true90.if.end95_crit_edge

land.lhs.true90.if.end95_crit_edge:               ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end95

if.then94:                                        ; preds = %land.lhs.true90
  %vc_num.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %59 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %vc_num.i, align 4
  %idxprom.i = zext i16 %60 to i32
  %arrayidx.i = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom.i
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i, align 1
  %idxprom1.i = sext i8 %62 to i32
  %arrayidx2.i = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom1.i
  %63 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx2.i, align 4
  %fbcon_par.i = getelementptr inbounds %struct.fb_info, ptr %64, i32 0, i32 29
  %65 = ptrtoint ptr %fbcon_par.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fbcon_par.i, align 4
  %state.i.i = getelementptr inbounds %struct.fb_info, ptr %64, i32 0, i32 28
  %67 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp.not.i.i = icmp eq i32 %68, 0
  br i1 %cmp.not.i.i, label %fbcon_is_inactive.exit.i, label %if.then94.fbcon_clear_margins.exit_crit_edge

if.then94.fbcon_clear_margins.exit_crit_edge:     ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #22
  br label %fbcon_clear_margins.exit

fbcon_is_inactive.exit.i:                         ; preds = %if.then94
  %graphics.i.i = getelementptr inbounds %struct.fbcon_ops, ptr %66, i32 0, i32 17
  %69 = ptrtoint ptr %graphics.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %graphics.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.i.not.i = icmp eq i32 %70, 0
  br i1 %tobool.i.not.i, label %if.then.i210, label %fbcon_is_inactive.exit.i.fbcon_clear_margins.exit_crit_edge

fbcon_is_inactive.exit.i.fbcon_clear_margins.exit_crit_edge: ; preds = %fbcon_is_inactive.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %fbcon_clear_margins.exit

if.then.i210:                                     ; preds = %fbcon_is_inactive.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  %clear_margins.i = getelementptr inbounds %struct.fbcon_ops, ptr %66, i32 0, i32 3
  %71 = ptrtoint ptr %clear_margins.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %clear_margins.i, align 4
  %73 = load i32, ptr @margin_color, align 4
  tail call void %72(ptr noundef %vc, ptr noundef %64, i32 noundef %73, i32 noundef 0) #20
  br label %fbcon_clear_margins.exit

fbcon_clear_margins.exit:                         ; preds = %if.then.i210, %fbcon_is_inactive.exit.i.fbcon_clear_margins.exit_crit_edge, %if.then94.fbcon_clear_margins.exit_crit_edge
  tail call void @redraw_screen(ptr noundef %vc, i32 noundef 0) #20
  br label %if.end95

if.end95:                                         ; preds = %fbcon_clear_margins.exit, %land.lhs.true90.if.end95_crit_edge, %if.end83.if.end95_crit_edge
  %tobool96.not = icmp eq ptr %save.0223, null
  br i1 %tobool96.not, label %if.end95.if.end110_crit_edge, label %if.then97

if.end95.if.end110_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end110

if.then97:                                        ; preds = %if.end95
  %74 = ptrtoint ptr %vc_origin to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %vc_origin, align 4
  %76 = ptrtoint ptr %vc_size_row to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %vc_size_row, align 4
  %mul100 = mul i32 %77, %rows
  %add101 = add i32 %mul100, %75
  %78 = inttoptr i32 %add101 to ptr
  %79 = load i32, ptr @logo_lines, align 4
  %80 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %79, i32 %new_cols) #20
  %81 = extractvalue { i32, i1 } %80, 1
  br i1 %81, label %if.then97.array3_size.exit215_crit_edge, label %if.end.i213

if.then97.array3_size.exit215_crit_edge:          ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #22
  br label %array3_size.exit215

if.end.i213:                                      ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #22
  %82 = extractvalue { i32, i1 } %80, 0
  %83 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %82, i32 2) #20
  %84 = extractvalue { i32, i1 } %83, 1
  %85 = extractvalue { i32, i1 } %83, 0
  %spec.select.i212 = select i1 %84, i32 -1, i32 %85
  br label %array3_size.exit215

array3_size.exit215:                              ; preds = %if.end.i213, %if.then97.array3_size.exit215_crit_edge
  %retval.0.i214 = phi i32 [ -1, %if.then97.array3_size.exit215_crit_edge ], [ %spec.select.i212, %if.end.i213 ]
  %86 = call ptr @memcpy(ptr %78, ptr %save.0223, i32 %retval.0.i214)
  %87 = load i32, ptr @logo_lines, align 4
  %y104 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 1, i32 1
  %88 = ptrtoint ptr %y104 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %y104, align 4
  %add105 = add i32 %89, %87
  store i32 %add105, ptr %y104, align 4
  %90 = ptrtoint ptr %vc_size_row to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %vc_size_row, align 4
  %mul107 = mul i32 %91, %87
  %vc_pos108 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 26
  %92 = ptrtoint ptr %vc_pos108 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %vc_pos108, align 4
  %add109 = add i32 %93, %mul107
  store i32 %add109, ptr %vc_pos108, align 4
  tail call void @kfree(ptr noundef nonnull %save.0223) #20
  br label %if.end110

if.end110:                                        ; preds = %array3_size.exit215, %if.end95.if.end110_crit_edge
  %94 = load i32, ptr @logo_shown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %94)
  %cmp111 = icmp eq i32 %94, -3
  br i1 %cmp111, label %if.end110.cleanup_crit_edge, label %if.end114

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end114:                                        ; preds = %if.end110
  %95 = load i32, ptr @logo_lines, align 4
  %vc_bottom = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 13
  %96 = ptrtoint ptr %vc_bottom to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %vc_bottom, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %97)
  %cmp115 = icmp ugt i32 %95, %97
  br i1 %cmp115, label %if.then117, label %if.else119

if.then117:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #22
  store i32 -1, ptr @logo_shown, align 4
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #23
  br label %cleanup

if.else119:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #22
  store i32 -2, ptr @logo_shown, align 4
  %vc_top = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 12
  %98 = ptrtoint ptr %vc_top to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %95, ptr %vc_top, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else119, %if.then117, %if.end110.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_prepare_logo(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memset16(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_unbind_con_driver(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_take_over_console(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_set_var(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_set_default_unimap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_copy_unimap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fbcon_startup() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %0 = load i32, ptr @fg_console, align 4
  %arrayidx = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %0
  %arrayidx1 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @num_registered_fb to i32))
  %3 = load i32, ptr @num_registered_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, ptr @info_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx2 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %fbops = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 20
  %7 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fbops, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call = tail call zeroext i1 @try_module_get(ptr noundef %10) #20
  br i1 %call, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %11 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fbops, align 4
  %fb_open = getelementptr inbounds %struct.fb_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %fb_open to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fb_open, align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %if.end8.if.end16_crit_edge, label %land.lhs.true

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end8
  %call13 = tail call i32 %14(ptr noundef nonnull %6, i32 noundef 0) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end16_crit_edge, label %if.then15

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @module_put(ptr noundef %10) #20
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 380) #26
  %tobool18.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @module_put(ptr noundef %10) #20
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %currcon = getelementptr inbounds %struct.fbcon_ops, ptr %call7.i.i, i32 0, i32 12
  %16 = ptrtoint ptr %currcon to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %currcon, align 4
  %graphics = getelementptr inbounds %struct.fbcon_ops, ptr %call7.i.i, i32 0, i32 17
  %17 = ptrtoint ptr %graphics to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %graphics, align 8
  %cur_rotate = getelementptr inbounds %struct.fbcon_ops, ptr %call7.i.i, i32 0, i32 21
  %18 = ptrtoint ptr %cur_rotate to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %cur_rotate, align 8
  %cur_blink_jiffies = getelementptr inbounds %struct.fbcon_ops, ptr %call7.i.i, i32 0, i32 13
  %19 = ptrtoint ptr %cur_blink_jiffies to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 20, ptr %cur_blink_jiffies, align 8
  %info21 = getelementptr inbounds %struct.fbcon_ops, ptr %call7.i.i, i32 0, i32 11
  %20 = ptrtoint ptr %info21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %6, ptr %info21, align 8
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 29
  %21 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %fbcon_par, align 4
  %22 = load i32, ptr @initial_rotation, align 4
  %con_rotate = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %0, i32 7
  %23 = ptrtoint ptr %con_rotate to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %con_rotate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp23 = icmp eq i32 %22, -1
  br i1 %cmp23, label %if.end26, label %if.end20.if.end31_crit_edge

if.end20.if.end31_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end31

if.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #22
  %fbcon_rotate_hint = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 3
  %24 = ptrtoint ptr %fbcon_rotate_hint to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fbcon_rotate_hint, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp28 = icmp eq i32 %25, -1
  %spec.store.select = select i1 %cmp28, i32 0, i32 %25
  %26 = ptrtoint ptr %con_rotate to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.store.select, ptr %con_rotate, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end26, %if.end20.if.end31_crit_edge
  %27 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fbcon_par, align 4
  %vc_num.i = getelementptr inbounds %struct.vc_data, ptr %2, i32 0, i32 3
  %29 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vc_num.i, align 4
  %idxprom.i = zext i16 %30 to i32
  %arrayidx.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom.i
  %p.i = getelementptr inbounds %struct.fbcon_ops, ptr %28, i32 0, i32 10
  %31 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx.i, ptr %p.i, align 4
  %flags.i = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 2
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %33, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.i, label %if.then.i

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @fbcon_set_tileops(ptr noundef %2, ptr noundef nonnull %6) #20
  br label %set_blitting_type.exit

land.lhs.true.i.i:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #22
  %34 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fbcon_par, align 4
  %p.i.i = getelementptr inbounds %struct.fbcon_ops, ptr %35, i32 0, i32 10
  %36 = ptrtoint ptr %p.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %p.i.i, align 4
  %con_rotate.i.i = getelementptr inbounds %struct.fbcon_display, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %con_rotate.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %con_rotate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %cmp.i.i = icmp slt i32 %39, 4
  %spec.select.i = select i1 %cmp.i.i, i32 %39, i32 0
  %rotate3.i.i = getelementptr inbounds %struct.fbcon_ops, ptr %35, i32 0, i32 20
  %40 = ptrtoint ptr %rotate3.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %spec.select.i, ptr %rotate3.i.i, align 4
  tail call void @fbcon_set_bitops(ptr noundef %28) #20
  br label %set_blitting_type.exit

set_blitting_type.exit:                           ; preds = %land.lhs.true.i.i, %if.then.i
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %tobool32.not = icmp eq ptr %42, null
  br i1 %tobool32.not, label %land.lhs.true33, label %set_blitting_type.exit.if.else_crit_edge

set_blitting_type.exit.if.else_crit_edge:         ; preds = %set_blitting_type.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else

land.lhs.true33:                                  ; preds = %set_blitting_type.exit
  %vc_font = getelementptr inbounds %struct.vc_data, ptr %2, i32 0, i32 28
  %data = getelementptr inbounds %struct.vc_data, ptr %2, i32 0, i32 28, i32 3
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  %tobool34.not = icmp eq ptr %44, null
  br i1 %tobool34.not, label %if.then35, label %land.lhs.true33.if.else_crit_edge

land.lhs.true33.if.else_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else

if.then35:                                        ; preds = %land.lhs.true33
  %45 = load i8, ptr @fontname, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool36.not = icmp eq i8 %45, 0
  br i1 %tobool36.not, label %if.then35.if.then40_crit_edge, label %lor.lhs.false37

if.then35.if.then40_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then40

lor.lhs.false37:                                  ; preds = %if.then35
  %call38 = tail call ptr @find_font(ptr noundef nonnull @fontname) #20
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %lor.lhs.false37.if.then40_crit_edge, label %lor.lhs.false37.if.end44_crit_edge

lor.lhs.false37.if.end44_crit_edge:               ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end44

lor.lhs.false37.if.then40_crit_edge:              ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then40

if.then40:                                        ; preds = %lor.lhs.false37.if.then40_crit_edge, %if.then35.if.then40_crit_edge
  %var = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 6
  %46 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 6, i32 1
  %48 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %yres, align 4
  %blit_x = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 10, i32 7
  %50 = ptrtoint ptr %blit_x to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %blit_x, align 4
  %blit_y = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 10, i32 8
  %52 = ptrtoint ptr %blit_y to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %blit_y, align 4
  %call43 = tail call ptr @get_default_font(i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53) #20
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %lor.lhs.false37.if.end44_crit_edge
  %font.0 = phi ptr [ %call38, %lor.lhs.false37.if.end44_crit_edge ], [ %call43, %if.then40 ]
  %width = getelementptr inbounds %struct.font_desc, ptr %font.0, i32 0, i32 2
  %54 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %width, align 4
  %56 = ptrtoint ptr %vc_font to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %vc_font, align 4
  %height = getelementptr inbounds %struct.font_desc, ptr %font.0, i32 0, i32 3
  %57 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %height, align 4
  %height48 = getelementptr inbounds %struct.vc_data, ptr %2, i32 0, i32 28, i32 1
  %59 = ptrtoint ptr %height48 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %height48, align 4
  %data49 = getelementptr inbounds %struct.font_desc, ptr %font.0, i32 0, i32 5
  %60 = ptrtoint ptr %data49 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data49, align 4
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %arrayidx, align 4
  %63 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %61, ptr %data, align 4
  %charcount = getelementptr inbounds %struct.font_desc, ptr %font.0, i32 0, i32 4
  %64 = ptrtoint ptr %charcount to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %charcount, align 4
  %charcount54 = getelementptr inbounds %struct.vc_data, ptr %2, i32 0, i32 28, i32 2
  %66 = ptrtoint ptr %charcount54 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %charcount54, align 4
  br label %if.end58

if.else:                                          ; preds = %land.lhs.true33.if.else_crit_edge, %set_blitting_type.exit.if.else_crit_edge
  %data56 = getelementptr inbounds %struct.vc_data, ptr %2, i32 0, i32 28, i32 3
  %67 = ptrtoint ptr %data56 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data56, align 4
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %arrayidx, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.end44
  %var59 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 6
  %70 = ptrtoint ptr %var59 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %var59, align 4
  %yres62 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 6, i32 1
  %72 = ptrtoint ptr %yres62 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %yres62, align 4
  %rotate = getelementptr inbounds %struct.fbcon_ops, ptr %call7.i.i, i32 0, i32 20
  %74 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rotate, align 4
  %76 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %75, label %cond.false [
    i32 0, label %if.end58.cond.end_crit_edge
    i32 2, label %if.end58.cond.end_crit_edge219
  ]

if.end58.cond.end_crit_edge219:                   ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

if.end58.cond.end_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

cond.false:                                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end58.cond.end_crit_edge, %if.end58.cond.end_crit_edge219
  %cond = phi i32 [ %73, %cond.false ], [ %71, %if.end58.cond.end_crit_edge ], [ %71, %if.end58.cond.end_crit_edge219 ]
  %77 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %75, label %cond.false87 [
    i32 0, label %cond.end.cond.end88_crit_edge
    i32 2, label %cond.end.cond.end88_crit_edge220
  ]

cond.end.cond.end88_crit_edge220:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end88

cond.end.cond.end88_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end88

cond.false87:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end88

cond.end88:                                       ; preds = %cond.false87, %cond.end.cond.end88_crit_edge, %cond.end.cond.end88_crit_edge220
  %cond89 = phi i32 [ %71, %cond.false87 ], [ %73, %cond.end.cond.end88_crit_edge ], [ %73, %cond.end.cond.end88_crit_edge220 ]
  %vc_font90 = getelementptr inbounds %struct.vc_data, ptr %2, i32 0, i32 28
  %78 = ptrtoint ptr %vc_font90 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %vc_font90, align 4
  %div = udiv i32 %cond, %79
  %height93 = getelementptr inbounds %struct.vc_data, ptr %2, i32 0, i32 28, i32 1
  %80 = ptrtoint ptr %height93 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %height93, align 4
  %div94 = udiv i32 %cond89, %81
  %call95 = tail call i32 @vc_resize(ptr noundef %2, i32 noundef %div, i32 noundef %div94) #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fbcon_startup.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fbcon_startup, %if.then101)) #20
          to label %do.body103 [label %if.then101], !srcloc !216

if.then101:                                       ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #22
  %fix = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fbcon_startup.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.41, ptr noundef %fix) #20
  br label %do.body103

do.body103:                                       ; preds = %if.then101, %cond.end88
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fbcon_startup.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fbcon_startup, %if.then115)) #20
          to label %do.body120 [label %if.then115], !srcloc !216

if.then115:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #22
  %visual = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 7, i32 5
  %82 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %visual, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fbcon_startup.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.42, i32 noundef %83) #20
  br label %do.body120

do.body120:                                       ; preds = %if.then115, %do.body103
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fbcon_startup.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fbcon_startup, %if.then132)) #20
          to label %do.end140 [label %if.then132], !srcloc !216

if.then132:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #22
  %84 = ptrtoint ptr %var59 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %var59, align 4
  %86 = ptrtoint ptr %yres62 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %yres62, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 6, i32 6
  %88 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bits_per_pixel, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fbcon_startup.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.43, i32 noundef %85, i32 noundef %87, i32 noundef %89) #20
  br label %do.end140

do.end140:                                        ; preds = %if.then132, %do.body120
  tail call fastcc void @fbcon_add_cursor_timer(ptr noundef nonnull %6)
  br label %cleanup

cleanup:                                          ; preds = %do.end140, %if.then19, %if.then15, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then15 ], [ @.str.38, %do.end140 ], [ null, %if.then19 ], [ @.str.38, %lor.lhs.false.cleanup_crit_edge ], [ @.str.38, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end5.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fbcon_init(ptr noundef %vc, i32 noundef %init) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_display_fg = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 47
  %0 = ptrtoint ptr %vc_display_fg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vc_display_fg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %4 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %5 to i32
  %arrayidx = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom
  %6 = load i32, ptr @info_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp = icmp eq i32 %6, -1
  br i1 %cmp, label %do.end, label %if.end21, !prof !209

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1030, i32 noundef 9, ptr noundef null) #20
  br label %cleanup

if.end21:                                         ; preds = %entry
  %arrayidx24 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp25 = icmp eq i8 %8, -1
  br i1 %cmp25, label %if.then27, label %if.end21.if.end32_crit_edge

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end32

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #22
  %conv28 = trunc i32 %6 to i8
  %9 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv28, ptr %arrayidx24, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %if.end21.if.end32_crit_edge
  %10 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx24, align 1
  %idxprom36 = sext i8 %11 to i32
  %arrayidx37 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom36
  %12 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx37, align 4
  %14 = load i32, ptr @logo_shown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp38 = icmp slt i32 %14, 0
  br i1 %cmp38, label %land.lhs.true, label %if.end32.if.end43_crit_edge

if.end32.if.end43_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end43

land.lhs.true:                                    ; preds = %if.end32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @console_printk to i32))
  %15 = load i32, ptr @console_printk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp40 = icmp slt i32 %15, 5
  br i1 %cmp40, label %if.then42, label %land.lhs.true.if.end43_crit_edge

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end43

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  store i32 -3, ptr @logo_shown, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %land.lhs.true.if.end43_crit_edge, %if.end32.if.end43_crit_edge
  %cmp44.not = icmp eq ptr %3, %vc
  br i1 %cmp44.not, label %lor.lhs.false, label %if.end43.if.then51_crit_edge

if.end43.if.then51_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then51

lor.lhs.false:                                    ; preds = %if.end43
  %16 = load i32, ptr @logo_shown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %16)
  %cmp46 = icmp eq i32 %16, -3
  br i1 %cmp46, label %lor.lhs.false.if.then51_crit_edge, label %lor.lhs.false48

lor.lhs.false.if.then51_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then51

lor.lhs.false48:                                  ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 7, i32 3
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp49 = icmp eq i32 %18, 3
  br i1 %cmp49, label %lor.lhs.false48.if.then51_crit_edge, label %lor.lhs.false48.if.end52_crit_edge

lor.lhs.false48.if.end52_crit_edge:               ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end52

lor.lhs.false48.if.then51_crit_edge:              ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then51

if.then51:                                        ; preds = %lor.lhs.false48.if.then51_crit_edge, %lor.lhs.false.if.then51_crit_edge, %if.end43.if.then51_crit_edge
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %lor.lhs.false48.if.end52_crit_edge
  %tobool248.not = phi i1 [ true, %if.then51 ], [ false, %lor.lhs.false48.if.end52_crit_edge ]
  %var = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6
  %xres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 2
  %19 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %xres_virtual.i, align 4
  %xres_virtual1.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 8
  %21 = ptrtoint ptr %xres_virtual1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %xres_virtual1.i, align 4
  %yres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 3
  %22 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %yres_virtual.i, align 4
  %yres_virtual2.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 9
  %24 = ptrtoint ptr %yres_virtual2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %yres_virtual2.i, align 4
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 6
  %25 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bits_per_pixel.i, align 4
  %bits_per_pixel3.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 12
  %27 = ptrtoint ptr %bits_per_pixel3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %bits_per_pixel3.i, align 4
  %grayscale.i = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 7
  %28 = ptrtoint ptr %grayscale.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %grayscale.i, align 4
  %grayscale4.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 13
  %30 = ptrtoint ptr %grayscale4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %grayscale4.i, align 4
  %nonstd.i = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 12
  %31 = ptrtoint ptr %nonstd.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nonstd.i, align 4
  %nonstd5.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 14
  %33 = ptrtoint ptr %nonstd5.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %nonstd5.i, align 4
  %accel_flags.i = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 16
  %34 = ptrtoint ptr %accel_flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %accel_flags.i, align 4
  %accel_flags6.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 15
  %36 = ptrtoint ptr %accel_flags6.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %accel_flags6.i, align 4
  %height.i = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 14
  %37 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %height.i, align 4
  %height7.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 10
  %39 = ptrtoint ptr %height7.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %height7.i, align 4
  %width.i = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 15
  %40 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %width.i, align 4
  %width8.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 11
  %42 = ptrtoint ptr %width8.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %width8.i, align 4
  %red.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 17
  %red9.i = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 8
  %43 = call ptr @memcpy(ptr %red.i, ptr %red9.i, i32 12)
  %green.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 18
  %green10.i = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 9
  %44 = call ptr @memcpy(ptr %green.i, ptr %green10.i, i32 12)
  %blue.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 19
  %blue11.i = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 10
  %45 = call ptr @memcpy(ptr %blue.i, ptr %blue11.i, i32 12)
  %transp.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 20
  %transp12.i = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 11
  %46 = call ptr @memcpy(ptr %transp.i, ptr %transp12.i, i32 12)
  %rotate.i = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 26
  %47 = ptrtoint ptr %rotate.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rotate.i, align 4
  %rotate13.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 16
  %49 = ptrtoint ptr %rotate13.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %rotate13.i, align 4
  %modelist.i = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 13
  %call.i = tail call ptr @fb_match_mode(ptr noundef %var, ptr noundef %modelist.i) #20
  %mode.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 21
  %50 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i, ptr %mode.i, align 4
  %cmp.i.not = icmp eq ptr %call.i, null
  br i1 %cmp.i.not, label %if.end52.cleanup_crit_edge, label %if.end55

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end55:                                         ; preds = %if.end52
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 29
  %51 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fbcon_par, align 4
  %tobool56.not = icmp eq ptr %52, null
  br i1 %tobool56.not, label %if.then57, label %if.end55.if.end61_crit_edge

if.end55.if.end61_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end61

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #22
  %53 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %vc_num, align 4
  %conv59 = zext i16 %54 to i32
  %call60 = tail call fastcc i32 @con2fb_acquire_newinfo(ptr noundef %vc, ptr noundef %13, i32 noundef %conv59, i32 noundef -1)
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %if.end55.if.end61_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %55 = load i32, ptr @fg_console, align 4
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx, align 4
  %tobool63.not = icmp eq ptr %57, null
  br i1 %tobool63.not, label %if.then64, label %if.end61.if.end112_crit_edge

if.end61.if.end112_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end112

if.then64:                                        ; preds = %if.end61
  %arrayidx62 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %55
  %58 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx62, align 4
  %tobool66.not = icmp eq ptr %59, null
  br i1 %tobool66.not, label %if.else, label %if.then67

if.then67:                                        ; preds = %if.then64
  %arrayidx68 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %55
  %60 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx68, align 4
  %vc_font = getelementptr inbounds %struct.vc_data, ptr %61, i32 0, i32 28
  %data = getelementptr inbounds %struct.vc_data, ptr %61, i32 0, i32 28, i32 3
  %62 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data, align 4
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %arrayidx, align 4
  %vc_font70 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28
  %data71 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 3
  %65 = ptrtoint ptr %data71 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %63, ptr %data71, align 4
  %66 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %vc_font, align 4
  %68 = ptrtoint ptr %vc_font70 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %vc_font70, align 4
  %height = getelementptr inbounds %struct.vc_data, ptr %61, i32 0, i32 28, i32 1
  %69 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %height, align 4
  %height77 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %71 = ptrtoint ptr %height77 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %height77, align 4
  %charcount = getelementptr inbounds %struct.vc_data, ptr %61, i32 0, i32 28, i32 2
  %72 = ptrtoint ptr %charcount to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %charcount, align 4
  %charcount80 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 2
  %74 = ptrtoint ptr %charcount80 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %charcount80, align 4
  %userfont = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %55, i32 1
  %75 = ptrtoint ptr %userfont to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %userfont, align 4
  %userfont81 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 1
  %77 = ptrtoint ptr %userfont81 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %userfont81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool83.not = icmp eq i32 %76, 0
  br i1 %tobool83.not, label %if.then67.if.end112_crit_edge, label %if.then84

if.then67.if.end112_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end112

if.then84:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #22
  %78 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx, align 4
  %arrayidx86 = getelementptr i32, ptr %79, i32 -1
  %80 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx86, align 4
  %inc = add i32 %81, 1
  store i32 %inc, ptr %arrayidx86, align 4
  br label %if.end112

if.else:                                          ; preds = %if.then64
  %82 = load i8, ptr @fontname, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool88.not = icmp eq i8 %82, 0
  br i1 %tobool88.not, label %if.else.if.then92_crit_edge, label %lor.lhs.false89

if.else.if.then92_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then92

lor.lhs.false89:                                  ; preds = %if.else
  %call90 = tail call ptr @find_font(ptr noundef nonnull @fontname) #20
  %tobool91.not = icmp eq ptr %call90, null
  br i1 %tobool91.not, label %lor.lhs.false89.if.then92_crit_edge, label %lor.lhs.false89.if.end97_crit_edge

lor.lhs.false89.if.end97_crit_edge:               ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end97

lor.lhs.false89.if.then92_crit_edge:              ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then92

if.then92:                                        ; preds = %lor.lhs.false89.if.then92_crit_edge, %if.else.if.then92_crit_edge
  %83 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 1
  %85 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %yres, align 4
  %blit_x = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 10, i32 7
  %87 = ptrtoint ptr %blit_x to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %blit_x, align 4
  %blit_y = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 10, i32 8
  %89 = ptrtoint ptr %blit_y to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %blit_y, align 4
  %call96 = tail call ptr @get_default_font(i32 noundef %84, i32 noundef %86, i32 noundef %88, i32 noundef %90) #20
  br label %if.end97

if.end97:                                         ; preds = %if.then92, %lor.lhs.false89.if.end97_crit_edge
  %font.0 = phi ptr [ %call90, %lor.lhs.false89.if.end97_crit_edge ], [ %call96, %if.then92 ]
  %width98 = getelementptr inbounds %struct.font_desc, ptr %font.0, i32 0, i32 2
  %91 = ptrtoint ptr %width98 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %width98, align 4
  %vc_font99 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28
  %93 = ptrtoint ptr %vc_font99 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %vc_font99, align 4
  %height101 = getelementptr inbounds %struct.font_desc, ptr %font.0, i32 0, i32 3
  %94 = ptrtoint ptr %height101 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %height101, align 4
  %height103 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %96 = ptrtoint ptr %height103 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %height103, align 4
  %data104 = getelementptr inbounds %struct.font_desc, ptr %font.0, i32 0, i32 5
  %97 = ptrtoint ptr %data104 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data104, align 4
  %99 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %98, ptr %arrayidx, align 4
  %data107 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 3
  %100 = ptrtoint ptr %data107 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %98, ptr %data107, align 4
  %charcount108 = getelementptr inbounds %struct.font_desc, ptr %font.0, i32 0, i32 4
  %101 = ptrtoint ptr %charcount108 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %charcount108, align 4
  %charcount110 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 2
  %103 = ptrtoint ptr %charcount110 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %charcount110, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.end97, %if.then84, %if.then67.if.end112_crit_edge, %if.end61.if.end112_crit_edge
  %fix114 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 7
  %call115 = tail call i32 @fb_get_color_depth(ptr noundef %var, ptr noundef %fix114) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call115)
  %cmp116.not = icmp eq i32 %call115, 1
  %vc_can_do_color = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 37
  %104 = ptrtoint ptr %vc_can_do_color to i32
  call void @__asan_load2_noabort(i32 %104)
  %bf.load = load i16, ptr %vc_can_do_color, align 4
  %bf.shl = select i1 %cmp116.not, i16 0, i16 16
  %bf.clear = and i16 %bf.load, -17
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %vc_can_do_color, align 4
  %conv122 = select i1 %cmp116.not, i16 2048, i16 30464
  %vc_complement_mask = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 24
  %105 = ptrtoint ptr %vc_complement_mask to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv122, ptr %vc_complement_mask, align 4
  %vc_font123 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28
  %charcount124 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 2
  %106 = ptrtoint ptr %charcount124 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %charcount124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %107)
  %cmp125 = icmp eq i32 %107, 256
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  br i1 %cmp125, label %if.then127, label %if.else128

if.then127:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #22
  %108 = ptrtoint ptr %vc_hi_font_mask to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %vc_hi_font_mask, align 4
  br label %if.end141

if.else128:                                       ; preds = %if.end112
  %109 = ptrtoint ptr %vc_hi_font_mask to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 256, ptr %vc_hi_font_mask, align 4
  br i1 %cmp116.not, label %if.else128.if.end141_crit_edge, label %if.then136

if.else128.if.end141_crit_edge:                   ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end141

if.then136:                                       ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #22
  %shl = shl nuw i16 %conv122, 1
  %110 = ptrtoint ptr %vc_complement_mask to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %shl, ptr %vc_complement_mask, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then136, %if.else128.if.end141_crit_edge, %if.then127
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, ptr %3, i32 0, i32 49
  %111 = ptrtoint ptr %vc_uni_pagedir_loc to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %vc_uni_pagedir_loc, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %tobool142.not = icmp eq ptr %114, null
  br i1 %tobool142.not, label %if.then143, label %if.end141.if.end145_crit_edge

if.end141.if.end145_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end145

if.then143:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #22
  %call144 = tail call i32 @con_set_default_unimap(ptr noundef %3) #20
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %if.end141.if.end145_crit_edge
  %vc_uni_pagedir_loc146 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 49
  %115 = ptrtoint ptr %vc_uni_pagedir_loc146 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %vc_uni_pagedir_loc146, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %tobool147.not = icmp eq ptr %118, null
  br i1 %tobool147.not, label %if.then148, label %if.end145.if.end150_crit_edge

if.end145.if.end150_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end150

if.then148:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #22
  %call149 = tail call i32 @con_copy_unimap(ptr noundef %vc, ptr noundef %3) #20
  br label %if.end150

if.end150:                                        ; preds = %if.then148, %if.end145.if.end150_crit_edge
  %119 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %fbcon_par, align 4
  %vc_cur_blink_ms = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 46
  %121 = ptrtoint ptr %vc_cur_blink_ms to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %vc_cur_blink_ms, align 4
  %conv152 = zext i16 %122 to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv152) #20
  %cur_blink_jiffies = getelementptr inbounds %struct.fbcon_ops, ptr %120, i32 0, i32 13
  %123 = ptrtoint ptr %cur_blink_jiffies to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %call2.i, ptr %cur_blink_jiffies, align 4
  %124 = load i32, ptr @initial_rotation, align 4
  %con_rotate = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 7
  %125 = ptrtoint ptr %con_rotate to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %con_rotate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %124)
  %cmp155 = icmp eq i32 %124, -1
  br i1 %cmp155, label %if.end159, label %if.end150.if.end165_crit_edge

if.end150.if.end165_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end165

if.end159:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #22
  %fbcon_rotate_hint = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 3
  %126 = ptrtoint ptr %fbcon_rotate_hint to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %fbcon_rotate_hint, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %127)
  %cmp161 = icmp eq i32 %127, -1
  %spec.store.select = select i1 %cmp161, i32 0, i32 %127
  %128 = ptrtoint ptr %con_rotate to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %spec.store.select, ptr %con_rotate, align 4
  br label %if.end165

if.end165:                                        ; preds = %if.end159, %if.end150.if.end165_crit_edge
  %129 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %fbcon_par, align 4
  %131 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %vc_num, align 4
  %idxprom.i = zext i16 %132 to i32
  %arrayidx.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom.i
  %p.i = getelementptr inbounds %struct.fbcon_ops, ptr %130, i32 0, i32 10
  %133 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %arrayidx.i, ptr %p.i, align 4
  %flags.i = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 2
  %134 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %135, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.i, label %if.then.i

if.then.i:                                        ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @fbcon_set_tileops(ptr noundef %vc, ptr noundef %13) #20
  br label %set_blitting_type.exit

land.lhs.true.i.i:                                ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #22
  %136 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %fbcon_par, align 4
  %p.i.i = getelementptr inbounds %struct.fbcon_ops, ptr %137, i32 0, i32 10
  %138 = ptrtoint ptr %p.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %p.i.i, align 4
  %con_rotate.i.i = getelementptr inbounds %struct.fbcon_display, ptr %139, i32 0, i32 7
  %140 = ptrtoint ptr %con_rotate.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %con_rotate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %141)
  %cmp.i.i = icmp slt i32 %141, 4
  %spec.select.i = select i1 %cmp.i.i, i32 %141, i32 0
  %rotate3.i.i = getelementptr inbounds %struct.fbcon_ops, ptr %137, i32 0, i32 20
  %142 = ptrtoint ptr %rotate3.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %spec.select.i, ptr %rotate3.i.i, align 4
  tail call void @fbcon_set_bitops(ptr noundef %130) #20
  br label %set_blitting_type.exit

set_blitting_type.exit:                           ; preds = %land.lhs.true.i.i, %if.then.i
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %143 = ptrtoint ptr %vc_cols to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %vc_cols, align 4
  %vc_rows = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 5
  %145 = ptrtoint ptr %vc_rows to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %vc_rows, align 4
  %147 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %var, align 4
  %yres169 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 1
  %149 = ptrtoint ptr %yres169 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %yres169, align 4
  %rotate = getelementptr inbounds %struct.fbcon_ops, ptr %120, i32 0, i32 20
  %151 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %rotate, align 4
  %153 = zext i32 %152 to i64
  call void @__sanitizer_cov_trace_switch(i64 %153, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %152, label %cond.false [
    i32 0, label %set_blitting_type.exit.cond.end_crit_edge
    i32 2, label %set_blitting_type.exit.cond.end_crit_edge400
  ]

set_blitting_type.exit.cond.end_crit_edge400:     ; preds = %set_blitting_type.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

set_blitting_type.exit.cond.end_crit_edge:        ; preds = %set_blitting_type.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

cond.false:                                       ; preds = %set_blitting_type.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %set_blitting_type.exit.cond.end_crit_edge, %set_blitting_type.exit.cond.end_crit_edge400
  %cond179 = phi i32 [ %150, %cond.false ], [ %148, %set_blitting_type.exit.cond.end_crit_edge ], [ %148, %set_blitting_type.exit.cond.end_crit_edge400 ]
  %154 = zext i32 %152 to i64
  call void @__sanitizer_cov_trace_switch(i64 %154, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %152, label %cond.false197 [
    i32 0, label %cond.end.cond.end198_crit_edge
    i32 2, label %cond.end.cond.end198_crit_edge401
  ]

cond.end.cond.end198_crit_edge401:                ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end198

cond.end.cond.end198_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end198

cond.false197:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end198

cond.end198:                                      ; preds = %cond.false197, %cond.end.cond.end198_crit_edge, %cond.end.cond.end198_crit_edge401
  %cond199 = phi i32 [ %148, %cond.false197 ], [ %150, %cond.end.cond.end198_crit_edge ], [ %150, %cond.end.cond.end198_crit_edge401 ]
  %155 = ptrtoint ptr %vc_font123 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %vc_font123, align 4
  %div = udiv i32 %cond179, %156
  %height203 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %157 = ptrtoint ptr %height203 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %height203, align 4
  %div204 = udiv i32 %cond199, %158
  %call205 = tail call zeroext i1 @con_is_visible(ptr noundef %vc) #20
  br i1 %call205, label %land.lhs.true207, label %cond.end198.if.end229_crit_edge

cond.end198.if.end229_crit_edge:                  ; preds = %cond.end198
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end229

land.lhs.true207:                                 ; preds = %cond.end198
  %vc_mode = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 17
  %159 = ptrtoint ptr %vc_mode to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %vc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %cmp209 = icmp eq i8 %160, 0
  br i1 %cmp209, label %if.then211, label %land.lhs.true207.if.end229_crit_edge

land.lhs.true207.if.end229_crit_edge:             ; preds = %land.lhs.true207
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end229

if.then211:                                       ; preds = %land.lhs.true207
  %fbops = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 20
  %161 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %fbops, align 4
  %fb_set_par = getelementptr inbounds %struct.fb_ops, ptr %162, i32 0, i32 6
  %163 = ptrtoint ptr %fb_set_par to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %fb_set_par, align 4
  %tobool212.not = icmp eq ptr %164, null
  br i1 %tobool212.not, label %if.then211.if.end227_crit_edge, label %land.lhs.true213

if.then211.if.end227_crit_edge:                   ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end227

land.lhs.true213:                                 ; preds = %if.then211
  %flags = getelementptr inbounds %struct.fbcon_ops, ptr %120, i32 0, i32 19
  %165 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %flags, align 4
  %and = and i32 %166, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool214.not = icmp eq i32 %and, 0
  br i1 %tobool214.not, label %if.then215, label %land.lhs.true213.if.end227_crit_edge

land.lhs.true213.if.end227_crit_edge:             ; preds = %land.lhs.true213
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end227

if.then215:                                       ; preds = %land.lhs.true213
  %call218 = tail call i32 %164(ptr noundef %13) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %if.then215.if.end227_crit_edge, label %do.end223

if.then215.if.end227_crit_edge:                   ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end227

do.end223:                                        ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #22
  %call225 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %call218) #23
  br label %if.end227

if.end227:                                        ; preds = %do.end223, %if.then215.if.end227_crit_edge, %land.lhs.true213.if.end227_crit_edge, %if.then211.if.end227_crit_edge
  %flags228 = getelementptr inbounds %struct.fbcon_ops, ptr %120, i32 0, i32 19
  %167 = ptrtoint ptr %flags228 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %flags228, align 4
  %or = or i32 %168, 1
  store i32 %or, ptr %flags228, align 4
  br label %if.end229

if.end229:                                        ; preds = %if.end227, %land.lhs.true207.if.end229_crit_edge, %cond.end198.if.end229_crit_edge
  %graphics = getelementptr inbounds %struct.fbcon_ops, ptr %120, i32 0, i32 17
  %169 = ptrtoint ptr %graphics to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %graphics, align 4
  %170 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %flags.i, align 4
  %172 = and i32 %171, 258
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %172)
  %173 = icmp eq i32 %172, 256
  %spec.select = select i1 %173, i16 1, i16 4
  %174 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 2
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %spec.select, ptr %174, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %init)
  %tobool241.not = icmp eq i32 %init, 0
  br i1 %tobool241.not, label %if.else245, label %if.then242

if.then242:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #22
  %176 = ptrtoint ptr %vc_cols to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %div, ptr %vc_cols, align 4
  %177 = ptrtoint ptr %vc_rows to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %div204, ptr %vc_rows, align 4
  br label %if.end247

if.else245:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #22
  %call246 = tail call i32 @vc_resize(ptr noundef %vc, i32 noundef %div, i32 noundef %div204) #20
  br label %if.end247

if.end247:                                        ; preds = %if.else245, %if.then242
  br i1 %tobool248.not, label %if.end247.if.end250_crit_edge, label %if.then249

if.end247.if.end250_crit_edge:                    ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end250

if.then249:                                       ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @fbcon_prepare_logo(ptr noundef %vc, ptr noundef %13, i32 noundef %144, i32 noundef %146, i32 noundef %div, i32 noundef %div204)
  br label %if.end250

if.end250:                                        ; preds = %if.then249, %if.end247.if.end250_crit_edge
  %rotate_font = getelementptr inbounds %struct.fbcon_ops, ptr %120, i32 0, i32 6
  %178 = ptrtoint ptr %rotate_font to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %rotate_font, align 4
  %tobool251.not = icmp eq ptr %179, null
  br i1 %tobool251.not, label %if.end250.if.end258_crit_edge, label %land.lhs.true252

if.end250.if.end258_crit_edge:                    ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end258

land.lhs.true252:                                 ; preds = %if.end250
  %call254 = tail call i32 %179(ptr noundef %13, ptr noundef %vc) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call254)
  %tobool255.not = icmp eq i32 %call254, 0
  br i1 %tobool255.not, label %land.lhs.true252.if.end258_crit_edge, label %if.then256

land.lhs.true252.if.end258_crit_edge:             ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end258

if.then256:                                       ; preds = %land.lhs.true252
  %180 = ptrtoint ptr %rotate to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 0, ptr %rotate, align 4
  %181 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %fbcon_par, align 4
  %183 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %vc_num, align 4
  %idxprom.i384 = zext i16 %184 to i32
  %arrayidx.i385 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom.i384
  %p.i386 = getelementptr inbounds %struct.fbcon_ops, ptr %182, i32 0, i32 10
  %185 = ptrtoint ptr %p.i386 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %arrayidx.i385, ptr %p.i386, align 4
  %186 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %flags.i, align 4
  %and.i388 = and i32 %187, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i388)
  %tobool.not.i389 = icmp eq i32 %and.i388, 0
  br i1 %tobool.not.i389, label %land.lhs.true.i.i396, label %if.then.i390

if.then.i390:                                     ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @fbcon_set_tileops(ptr noundef %vc, ptr noundef %13) #20
  br label %if.end258

land.lhs.true.i.i396:                             ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #22
  %188 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %fbcon_par, align 4
  %p.i.i391 = getelementptr inbounds %struct.fbcon_ops, ptr %189, i32 0, i32 10
  %190 = ptrtoint ptr %p.i.i391 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %p.i.i391, align 4
  %con_rotate.i.i392 = getelementptr inbounds %struct.fbcon_display, ptr %191, i32 0, i32 7
  %192 = ptrtoint ptr %con_rotate.i.i392 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %con_rotate.i.i392, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %193)
  %cmp.i.i393 = icmp slt i32 %193, 4
  %spec.select.i394 = select i1 %cmp.i.i393, i32 %193, i32 0
  %rotate3.i.i395 = getelementptr inbounds %struct.fbcon_ops, ptr %189, i32 0, i32 20
  %194 = ptrtoint ptr %rotate3.i.i395 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %spec.select.i394, ptr %rotate3.i.i395, align 4
  tail call void @fbcon_set_bitops(ptr noundef %182) #20
  br label %if.end258

if.end258:                                        ; preds = %land.lhs.true.i.i396, %if.then.i390, %land.lhs.true252.if.end258_crit_edge, %if.end250.if.end258_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %195 = load i32, ptr @fg_console, align 4
  %arrayidx259 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %195
  %p260 = getelementptr inbounds %struct.fbcon_ops, ptr %120, i32 0, i32 10
  %196 = ptrtoint ptr %p260 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %arrayidx259, ptr %p260, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end258, %if.end52.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fbcon_deinit(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom
  %arrayidx3 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp = icmp eq i8 %3, -1
  br i1 %cmp, label %if.then20.critedge, label %if.end

if.end:                                           ; preds = %entry
  %conv = sext i8 %3 to i32
  %arrayidx5 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx5, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then20.critedge52, label %if.end7

if.end7:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 29
  %8 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fbcon_par, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %if.end7.finished_crit_edge, label %if.end13

if.end7.finished_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  br label %finished

if.end13:                                         ; preds = %if.end7
  %call = tail call zeroext i1 @con_is_visible(ptr noundef %vc) #20
  br i1 %call, label %if.then14, label %if.end13.if.end15_crit_edge

if.end13.if.end15_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end15

if.then14:                                        ; preds = %if.end13
  %10 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fbcon_par, align 4
  %func.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 9, i32 2
  %12 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %func.i, align 4
  %cmp.i = icmp eq ptr %13, @fb_flashcursor
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then14.if.end15_crit_edge

if.then14.if.end15_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end15

land.lhs.true.i:                                  ; preds = %if.then14
  %flags.i = getelementptr inbounds %struct.fbcon_ops, ptr %11, i32 0, i32 19
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end15_crit_edge, label %if.then.i

land.lhs.true.i.if.end15_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end15

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  %cursor_timer.i = getelementptr inbounds %struct.fbcon_ops, ptr %11, i32 0, i32 8
  %call.i = tail call i32 @del_timer_sync(ptr noundef %cursor_timer.i) #20
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %and2.i = and i32 %17, -3
  store i32 %and2.i, ptr %flags.i, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end15_crit_edge, %if.then14.if.end15_crit_edge, %if.end13.if.end15_crit_edge
  %flags16 = getelementptr inbounds %struct.fbcon_ops, ptr %9, i32 0, i32 19
  %18 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags16, align 4
  %and17 = and i32 %19, -2
  store i32 %and17, ptr %flags16, align 4
  br label %finished

finished:                                         ; preds = %if.end15, %if.end7.finished_crit_edge
  br i1 %tobool8.not, label %land.lhs.true.i53, label %fbcon_free_font.exit

land.lhs.true.i53:                                ; preds = %finished
  %userfont.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 1
  %20 = ptrtoint ptr %userfont.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %userfont.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool1.not.i = icmp eq i32 %21, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i53.if.then20_crit_edge, label %land.lhs.true2.i

land.lhs.true.i53.if.then20_crit_edge:            ; preds = %land.lhs.true.i53
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then20

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i53
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %tobool3.not.i = icmp eq ptr %23, null
  br i1 %tobool3.not.i, label %land.lhs.true2.i.if.then20_crit_edge, label %land.lhs.true4.i

land.lhs.true2.i.if.then20_crit_edge:             ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then20

land.lhs.true4.i:                                 ; preds = %land.lhs.true2.i
  %arrayidx.i = getelementptr i32, ptr %23, i32 -1
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %dec.i = add i32 %25, -1
  store i32 %dec.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i54 = icmp eq i32 %dec.i, 0
  br i1 %cmp.i54, label %land.lhs.true4.i.if.then20.sink.split_crit_edge, label %land.lhs.true4.i.if.then20_crit_edge

land.lhs.true4.i.if.then20_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then20

land.lhs.true4.i.if.then20.sink.split_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then20.sink.split

fbcon_free_font.exit:                             ; preds = %finished
  call void @__sanitizer_cov_trace_pc() #22
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx, align 4
  %userfont8.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 1
  %27 = ptrtoint ptr %userfont8.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %userfont8.i, align 4
  br label %if.end21

if.then20.critedge:                               ; preds = %entry
  %userfont.i56 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 1
  %28 = ptrtoint ptr %userfont.i56 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %userfont.i56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool1.not.i57 = icmp eq i32 %29, 0
  br i1 %tobool1.not.i57, label %if.then20.critedge.if.then20_crit_edge, label %land.lhs.true2.i60

if.then20.critedge.if.then20_crit_edge:           ; preds = %if.then20.critedge
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then20

land.lhs.true2.i60:                               ; preds = %if.then20.critedge
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %tobool3.not.i59 = icmp eq ptr %31, null
  br i1 %tobool3.not.i59, label %land.lhs.true2.i60.if.then20_crit_edge, label %land.lhs.true4.i64

land.lhs.true2.i60.if.then20_crit_edge:           ; preds = %land.lhs.true2.i60
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then20

land.lhs.true4.i64:                               ; preds = %land.lhs.true2.i60
  %arrayidx.i61 = getelementptr i32, ptr %31, i32 -1
  %32 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i61, align 4
  %dec.i62 = add i32 %33, -1
  store i32 %dec.i62, ptr %arrayidx.i61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i62)
  %cmp.i63 = icmp eq i32 %dec.i62, 0
  br i1 %cmp.i63, label %land.lhs.true4.i64.if.then20.sink.split_crit_edge, label %land.lhs.true4.i64.if.then20_crit_edge

land.lhs.true4.i64.if.then20_crit_edge:           ; preds = %land.lhs.true4.i64
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then20

land.lhs.true4.i64.if.then20.sink.split_crit_edge: ; preds = %land.lhs.true4.i64
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then20.sink.split

if.then20.critedge52:                             ; preds = %if.end
  %userfont.i69 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 1
  %34 = ptrtoint ptr %userfont.i69 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %userfont.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool1.not.i70 = icmp eq i32 %35, 0
  br i1 %tobool1.not.i70, label %if.then20.critedge52.if.then20_crit_edge, label %land.lhs.true2.i73

if.then20.critedge52.if.then20_crit_edge:         ; preds = %if.then20.critedge52
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then20

land.lhs.true2.i73:                               ; preds = %if.then20.critedge52
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %tobool3.not.i72 = icmp eq ptr %37, null
  br i1 %tobool3.not.i72, label %land.lhs.true2.i73.if.then20_crit_edge, label %land.lhs.true4.i77

land.lhs.true2.i73.if.then20_crit_edge:           ; preds = %land.lhs.true2.i73
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then20

land.lhs.true4.i77:                               ; preds = %land.lhs.true2.i73
  %arrayidx.i74 = getelementptr i32, ptr %37, i32 -1
  %38 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i74, align 4
  %dec.i75 = add i32 %39, -1
  store i32 %dec.i75, ptr %arrayidx.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i75)
  %cmp.i76 = icmp eq i32 %dec.i75, 0
  br i1 %cmp.i76, label %land.lhs.true4.i77.if.then20.sink.split_crit_edge, label %land.lhs.true4.i77.if.then20_crit_edge

land.lhs.true4.i77.if.then20_crit_edge:           ; preds = %land.lhs.true4.i77
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then20

land.lhs.true4.i77.if.then20.sink.split_crit_edge: ; preds = %land.lhs.true4.i77
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then20.sink.split

if.then20.sink.split:                             ; preds = %land.lhs.true4.i77.if.then20.sink.split_crit_edge, %land.lhs.true4.i64.if.then20.sink.split_crit_edge, %land.lhs.true4.i.if.then20.sink.split_crit_edge
  %userfont.i.sink.ph = phi ptr [ %userfont.i, %land.lhs.true4.i.if.then20.sink.split_crit_edge ], [ %userfont.i56, %land.lhs.true4.i64.if.then20.sink.split_crit_edge ], [ %userfont.i69, %land.lhs.true4.i77.if.then20.sink.split_crit_edge ]
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i78 = getelementptr i8, ptr %41, i32 -16
  tail call void @kfree(ptr noundef %add.ptr.i78) #20
  br label %if.then20

if.then20:                                        ; preds = %if.then20.sink.split, %land.lhs.true4.i77.if.then20_crit_edge, %land.lhs.true2.i73.if.then20_crit_edge, %if.then20.critedge52.if.then20_crit_edge, %land.lhs.true4.i64.if.then20_crit_edge, %land.lhs.true2.i60.if.then20_crit_edge, %if.then20.critedge.if.then20_crit_edge, %land.lhs.true4.i.if.then20_crit_edge, %land.lhs.true2.i.if.then20_crit_edge, %land.lhs.true.i53.if.then20_crit_edge
  %userfont.i.sink = phi ptr [ %userfont.i, %land.lhs.true.i53.if.then20_crit_edge ], [ %userfont.i, %land.lhs.true2.i.if.then20_crit_edge ], [ %userfont.i, %land.lhs.true4.i.if.then20_crit_edge ], [ %userfont.i56, %if.then20.critedge.if.then20_crit_edge ], [ %userfont.i56, %land.lhs.true2.i60.if.then20_crit_edge ], [ %userfont.i56, %land.lhs.true4.i64.if.then20_crit_edge ], [ %userfont.i69, %if.then20.critedge52.if.then20_crit_edge ], [ %userfont.i69, %land.lhs.true2.i73.if.then20_crit_edge ], [ %userfont.i69, %land.lhs.true4.i77.if.then20_crit_edge ], [ %userfont.i.sink.ph, %if.then20.sink.split ]
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx, align 4
  %43 = ptrtoint ptr %userfont.i.sink to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %userfont.i.sink, align 4
  %data = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 3
  %44 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %data, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %fbcon_free_font.exit
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %45 = ptrtoint ptr %vc_hi_font_mask to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vc_hi_font_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool23.not = icmp eq i16 %46, 0
  br i1 %tobool23.not, label %if.end21.if.end26_crit_edge, label %land.lhs.true

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end21
  %vc_screenbuf = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 15
  %47 = ptrtoint ptr %vc_screenbuf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vc_screenbuf, align 4
  %tobool24.not = icmp eq ptr %48, null
  br i1 %tobool24.not, label %land.lhs.true.if.end26_crit_edge, label %if.then25

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end26

if.then25:                                        ; preds = %land.lhs.true
  %49 = ptrtoint ptr %vc_hi_font_mask to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %vc_hi_font_mask, align 4
  %vc_can_do_color.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 37
  %50 = ptrtoint ptr %vc_can_do_color.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load.i = load i16, ptr %vc_can_do_color.i, align 4
  %51 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool1.not.i82 = icmp eq i16 %51, 0
  br i1 %tobool1.not.i82, label %if.then25.if.end26_crit_edge, label %if.then13.i

if.then25.if.end26_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end26

if.then13.i:                                      ; preds = %if.then25
  %vc_complement_mask.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 24
  %52 = ptrtoint ptr %vc_complement_mask.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vc_complement_mask.i, align 4
  %54 = lshr i16 %53, 1
  store i16 %54, ptr %vc_complement_mask.i, align 4
  %vc_s_complement_mask.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 25
  %55 = ptrtoint ptr %vc_s_complement_mask.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %vc_s_complement_mask.i, align 2
  %57 = lshr i16 %56, 1
  store i16 %57, ptr %vc_s_complement_mask.i, align 2
  %vc_screenbuf_size.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 16
  %58 = ptrtoint ptr %vc_screenbuf_size.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %vc_screenbuf_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp145.not.i = icmp ult i32 %59, 2
  br i1 %cmp145.not.i, label %if.then13.i.for.end.i_crit_edge, label %for.body.preheader.i

if.then13.i.for.end.i_crit_edge:                  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.then13.i
  %div143.i = lshr i32 %59, 1
  %vc_origin.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %60 = ptrtoint ptr %vc_origin.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %vc_origin.i, align 4
  %62 = inttoptr i32 %61 to ptr
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %count.0147.i = phi i32 [ %dec.i85, %for.body.i.for.body.i_crit_edge ], [ %div143.i, %for.body.preheader.i ]
  %cp.0146.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %62, %for.body.preheader.i ]
  %63 = ptrtoint ptr %cp.0146.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %cp.0146.i, align 2
  %and.i84 = lshr i16 %64, 1
  %65 = and i16 %and.i84, 32512
  %and18.i = and i16 %64, 255
  %or.i = or i16 %65, %and18.i
  store i16 %or.i, ptr %cp.0146.i, align 2
  %dec.i85 = add nsw i32 %count.0147.i, -1
  %incdec.ptr.i = getelementptr i16, ptr %cp.0146.i, i32 1
  %cmp.i86 = icmp ugt i32 %count.0147.i, 1
  br i1 %cmp.i86, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then13.i.for.end.i_crit_edge
  %vc_video_erase_char.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 29
  %66 = ptrtoint ptr %vc_video_erase_char.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %vc_video_erase_char.i, align 4
  %and21.i = lshr i16 %67, 1
  %68 = and i16 %and21.i, 32512
  %and24.i = and i16 %67, 255
  %or25.i = or i16 %68, %and24.i
  store i16 %or25.i, ptr %vc_video_erase_char.i, align 4
  %vc_attr.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 18
  %69 = ptrtoint ptr %vc_attr.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %vc_attr.i, align 1
  %71 = lshr i8 %70, 1
  store i8 %71, ptr %vc_attr.i, align 1
  br label %if.end26

if.end26:                                         ; preds = %for.end.i, %if.then25.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge, %if.end21.if.end26_crit_edge
  %call27 = tail call i32 @con_is_bound(ptr noundef nonnull @fb_con) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.end26.if.end30_crit_edge

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end30

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @fbcon_exit()
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end26.if.end30_crit_edge
  %72 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %vc_num, align 4
  %conv32 = zext i16 %73 to i32
  %74 = load i32, ptr @logo_shown, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %conv32)
  %cmp33 = icmp eq i32 %74, %conv32
  br i1 %cmp33, label %if.then35, label %if.end30.if.end36_crit_edge

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end36

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #22
  store i32 -1, ptr @logo_shown, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end30.if.end36_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fbcon_clear(ptr noundef %vc, i32 noundef %sy, i32 noundef %sx, i32 noundef %height, i32 noundef %width) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom1 = sext i8 %3 to i32
  %arrayidx2 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbcon_par, align 4
  %state.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 28
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %vc_mode.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 17
  %10 = ptrtoint ptr %vc_mode.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vc_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp1.not.i = icmp eq i8 %11, 0
  br i1 %cmp1.not.i, label %fbcon_is_inactive.exit, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

fbcon_is_inactive.exit:                           ; preds = %lor.lhs.false.i
  %graphics.i = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 17
  %12 = ptrtoint ptr %graphics.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %graphics.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not = icmp eq i32 %13, 0
  br i1 %tobool.i.not, label %if.end, label %fbcon_is_inactive.exit.cleanup_crit_edge

fbcon_is_inactive.exit.cleanup_crit_edge:         ; preds = %fbcon_is_inactive.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %fbcon_is_inactive.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %height)
  %tobool6.not = icmp eq i32 %height, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %width)
  %tobool7.not = icmp eq i32 %width, 0
  %or.cond = or i1 %tobool6.not, %tobool7.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %vc_top = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 12
  %14 = ptrtoint ptr %vc_top to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vc_top, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %sy)
  %cmp = icmp ugt i32 %15, %sy
  br i1 %cmp, label %land.lhs.true, label %if.end9.if.end14_crit_edge

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end9
  %16 = load i32, ptr @logo_lines, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %16)
  %cmp11 = icmp eq i32 %15, %16
  br i1 %cmp11, label %if.then12, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end14

if.then12:                                        ; preds = %land.lhs.true
  %17 = ptrtoint ptr %vc_top to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %vc_top, align 4
  %18 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx2, align 4
  %fbcon_par.i71 = getelementptr inbounds %struct.fb_info, ptr %19, i32 0, i32 29
  %20 = ptrtoint ptr %fbcon_par.i71 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fbcon_par.i71, align 4
  %state.i.i = getelementptr inbounds %struct.fb_info, ptr %19, i32 0, i32 28
  %22 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not.i.i = icmp eq i32 %23, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.then12.if.end14_crit_edge

if.then12.if.end14_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end14

lor.lhs.false.i.i:                                ; preds = %if.then12
  %24 = ptrtoint ptr %vc_mode.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %vc_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp1.not.i.i = icmp eq i8 %25, 0
  br i1 %cmp1.not.i.i, label %fbcon_is_inactive.exit.i, label %lor.lhs.false.i.i.if.end14_crit_edge

lor.lhs.false.i.i.if.end14_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end14

fbcon_is_inactive.exit.i:                         ; preds = %lor.lhs.false.i.i
  %graphics.i.i = getelementptr inbounds %struct.fbcon_ops, ptr %21, i32 0, i32 17
  %26 = ptrtoint ptr %graphics.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %graphics.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not.i = icmp eq i32 %27, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %fbcon_is_inactive.exit.i.if.end14_crit_edge

fbcon_is_inactive.exit.i.if.end14_crit_edge:      ; preds = %fbcon_is_inactive.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end14

if.then.i:                                        ; preds = %fbcon_is_inactive.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  %clear_margins.i = getelementptr inbounds %struct.fbcon_ops, ptr %21, i32 0, i32 3
  %28 = ptrtoint ptr %clear_margins.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clear_margins.i, align 4
  %30 = load i32, ptr @margin_color, align 4
  tail call void %29(ptr noundef %vc, ptr noundef %19, i32 noundef %30, i32 noundef 0) #20
  br label %if.end14

if.end14:                                         ; preds = %if.then.i, %fbcon_is_inactive.exit.i.if.end14_crit_edge, %lor.lhs.false.i.i.if.end14_crit_edge, %if.then12.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %if.end9.if.end14_crit_edge
  %vrows = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 5
  %31 = ptrtoint ptr %vrows to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vrows, align 4
  %yscroll = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 4
  %33 = ptrtoint ptr %yscroll to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %yscroll, align 4
  %conv = sext i16 %34 to i32
  %sub = sub i32 %32, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sy)
  %cmp15 = icmp ugt i32 %sub, %sy
  br i1 %cmp15, label %land.lhs.true17, label %if.end14.if.else_crit_edge

if.end14.if.else_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else

land.lhs.true17:                                  ; preds = %if.end14
  %add = add i32 %sy, -1
  %sub18 = add i32 %add, %height
  call void @__sanitizer_cov_trace_cmp4(i32 %sub18, i32 %sub)
  %cmp19.not = icmp ult i32 %sub18, %sub
  br i1 %cmp19.not, label %land.lhs.true17.if.else_crit_edge, label %if.then21

land.lhs.true17.if.else_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else

if.then21:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #22
  %sub22 = sub i32 %sub, %sy
  %clear = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 1
  %35 = ptrtoint ptr %clear to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clear, align 4
  %37 = ptrtoint ptr %vrows to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vrows, align 4
  %39 = ptrtoint ptr %yscroll to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %yscroll, align 4
  %conv.i = sext i16 %40 to i32
  %add.i = add i32 %conv.i, %sy
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %38)
  %cmp.i = icmp slt i32 %add.i, %38
  %sub.i = select i1 %cmp.i, i32 0, i32 %38
  %cond.i = sub i32 %add.i, %sub.i
  tail call void %36(ptr noundef %vc, ptr noundef %5, i32 noundef %cond.i, i32 noundef %sx, i32 noundef %sub22, i32 noundef %width) #20
  %41 = ptrtoint ptr %clear to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clear, align 4
  %43 = ptrtoint ptr %vrows to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vrows, align 4
  %45 = ptrtoint ptr %yscroll to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %yscroll, align 4
  %conv.i74 = sext i16 %46 to i32
  %add.i75 = add i32 %sub, %conv.i74
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i75, i32 %44)
  %cmp.i76 = icmp slt i32 %add.i75, %44
  %sub.i77 = select i1 %cmp.i76, i32 0, i32 %44
  %cond.i78 = sub i32 %add.i75, %sub.i77
  %sub27 = sub i32 %height, %sub22
  tail call void %42(ptr noundef %vc, ptr noundef %5, i32 noundef %cond.i78, i32 noundef %sx, i32 noundef %sub27, i32 noundef %width) #20
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true17.if.else_crit_edge, %if.end14.if.else_crit_edge
  %clear28 = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 1
  %47 = ptrtoint ptr %clear28 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clear28, align 4
  %49 = ptrtoint ptr %vrows to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vrows, align 4
  %51 = ptrtoint ptr %yscroll to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %yscroll, align 4
  %conv.i81 = sext i16 %52 to i32
  %add.i82 = add i32 %conv.i81, %sy
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i82, i32 %50)
  %cmp.i83 = icmp slt i32 %add.i82, %50
  %sub.i84 = select i1 %cmp.i83, i32 0, i32 %50
  %cond.i85 = sub i32 %add.i82, %sub.i84
  tail call void %48(ptr noundef %vc, ptr noundef %5, i32 noundef %cond.i85, i32 noundef %sx, i32 noundef %height, i32 noundef %width) #20
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then21, %if.end.cleanup_crit_edge, %fbcon_is_inactive.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fbcon_putc(ptr noundef %vc, i32 noundef %c, i32 noundef %ypos, i32 noundef %xpos) #1 align 64 {
entry:
  %chr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %chr) #20
  %conv = trunc i32 %c to i16
  %0 = ptrtoint ptr %chr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %chr, align 2
  call void @fbcon_putcs(ptr noundef %vc, ptr noundef nonnull %chr, i32 noundef 1, i32 noundef %ypos, i32 noundef %xpos)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %chr) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fbcon_putcs(ptr noundef %vc, ptr noundef %s, i32 noundef %count, i32 noundef %ypos, i32 noundef %xpos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom1 = sext i8 %3 to i32
  %arrayidx2 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbcon_par, align 4
  %state.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 28
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %vc_mode.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 17
  %10 = ptrtoint ptr %vc_mode.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vc_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp1.not.i = icmp eq i8 %11, 0
  br i1 %cmp1.not.i, label %fbcon_is_inactive.exit, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

fbcon_is_inactive.exit:                           ; preds = %lor.lhs.false.i
  %graphics.i = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 17
  %12 = ptrtoint ptr %graphics.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %graphics.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not = icmp eq i32 %13, 0
  br i1 %tobool.i.not, label %if.then, label %fbcon_is_inactive.exit.if.end_crit_edge

fbcon_is_inactive.exit.if.end_crit_edge:          ; preds = %fbcon_is_inactive.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %fbcon_is_inactive.exit
  %putcs = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %putcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %putcs, align 4
  %vrows.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 5
  %16 = ptrtoint ptr %vrows.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vrows.i, align 4
  %yscroll.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 4
  %18 = ptrtoint ptr %yscroll.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %yscroll.i, align 4
  %conv.i = sext i16 %19 to i32
  %add.i = add i32 %conv.i, %ypos
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %17)
  %cmp.i = icmp slt i32 %add.i, %17
  %sub.i = select i1 %cmp.i, i32 0, i32 %17
  %cond.i = sub i32 %add.i, %sub.i
  %20 = ptrtoint ptr %s to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %s, align 2
  %var.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6
  %fix.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 7
  %call.i = tail call i32 @fb_get_color_depth(ptr noundef %var.i, ptr noundef %fix.i) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @console_blanked to i32))
  %22 = load i32, ptr @console_blanked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %vc_hi_font_mask.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %23 = ptrtoint ptr %vc_hi_font_mask.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vc_hi_font_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool1.not.i = icmp eq i16 %24, 0
  %conv2.i = select i1 %tobool1.not.i, i16 255, i16 511
  %vc_video_erase_char.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 29
  %25 = ptrtoint ptr %vc_video_erase_char.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vc_video_erase_char.i, align 4
  %and.i = and i16 %conv2.i, %26
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %c.addr.0.i = phi i16 [ %and.i, %if.then.i ], [ %21, %if.then.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i20 = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i20, label %sw.bb.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  %conv15.i = zext i16 %c.addr.0.i to i32
  %vc_hi_font_mask16.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %27 = ptrtoint ptr %vc_hi_font_mask16.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vc_hi_font_mask16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool18.not.i = icmp eq i16 %28, 0
  %cond13.i = select i1 %tobool18.not.i, i32 8, i32 9
  %shr.i = lshr i32 %conv15.i, %cond13.i
  %and14.i = and i32 %shr.i, 15
  %29 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %call.i, label %if.then7.i.get_color.exit_crit_edge [
    i32 3, label %sw.bb52.i
    i32 2, label %sw.bb48.i
  ]

if.then7.i.get_color.exit_crit_edge:              ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %get_color.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %length.i.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 9, i32 1
  %30 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length.i.i, align 4
  %length2.i.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 8, i32 1
  %32 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %length2.i.i, align 4
  %34 = tail call i32 @llvm.umax.i32(i32 %31, i32 %33) #20
  %length4.i.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 10, i32 1
  %35 = ptrtoint ptr %length4.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %length4.i.i, align 4
  %37 = tail call i32 @llvm.umax.i32(i32 %36, i32 %34) #20
  %shl.i.i = shl i32 4095, %37
  %neg.i.i = and i32 %shl.i.i, 255
  %and.i.i = xor i32 %neg.i.i, 255
  %visual.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 7, i32 5
  %38 = ptrtoint ptr %visual.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %visual.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp26.not.i = icmp eq i32 %39, 0
  %spec.select.i = select i1 %cmp26.not.i, i32 0, i32 %and.i.i
  %cond39.i = select i1 %cmp26.not.i, i32 %and.i.i, i32 0
  %fg.0.i = select i1 %tobool.not.i, i32 %spec.select.i, i32 %cond39.i
  br label %get_color.exit

sw.bb48.i:                                        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and14.i)
  %40 = icmp ult i32 %and14.i, 9
  br i1 %40, label %switch.lookup, label %sw.bb48.i.get_color.exit_crit_edge

sw.bb48.i.get_color.exit_crit_edge:               ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %get_color.exit

sw.bb52.i:                                        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #22
  %and53.i = and i32 %shr.i, 7
  br label %get_color.exit

switch.lookup:                                    ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #22
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.fbcon_putcs, i32 0, i32 %and14.i
  %41 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %41)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_color.exit

get_color.exit:                                   ; preds = %switch.lookup, %sw.bb52.i, %sw.bb48.i.get_color.exit_crit_edge, %sw.bb.i, %if.then7.i.get_color.exit_crit_edge
  %color.1.i = phi i32 [ %and14.i, %if.then7.i.get_color.exit_crit_edge ], [ %and53.i, %sw.bb52.i ], [ %fg.0.i, %sw.bb.i ], [ %switch.load, %switch.lookup ], [ 3, %sw.bb48.i.get_color.exit_crit_edge ]
  %42 = ptrtoint ptr %s to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %s, align 2
  %call.i23 = tail call i32 @fb_get_color_depth(ptr noundef %var.i, ptr noundef %fix.i) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @console_blanked to i32))
  %44 = load i32, ptr @console_blanked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i24 = icmp eq i32 %44, 0
  br i1 %tobool.not.i24, label %get_color.exit.if.end.i33_crit_edge, label %if.then.i30

get_color.exit.if.end.i33_crit_edge:              ; preds = %get_color.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i33

if.then.i30:                                      ; preds = %get_color.exit
  call void @__sanitizer_cov_trace_pc() #22
  %vc_hi_font_mask.i25 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %45 = ptrtoint ptr %vc_hi_font_mask.i25 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vc_hi_font_mask.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool1.not.i26 = icmp eq i16 %46, 0
  %conv2.i27 = select i1 %tobool1.not.i26, i16 255, i16 511
  %vc_video_erase_char.i28 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 29
  %47 = ptrtoint ptr %vc_video_erase_char.i28 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vc_video_erase_char.i28, align 4
  %and.i29 = and i16 %conv2.i27, %48
  br label %if.end.i33

if.end.i33:                                       ; preds = %if.then.i30, %get_color.exit.if.end.i33_crit_edge
  %c.addr.0.i31 = phi i16 [ %and.i29, %if.then.i30 ], [ %43, %get_color.exit.if.end.i33_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i23)
  %cmp.not.i32 = icmp eq i32 %call.i23, 1
  br i1 %cmp.not.i32, label %sw.bb.i49, label %if.then7.i37

if.then7.i37:                                     ; preds = %if.end.i33
  %conv15.i34 = zext i16 %c.addr.0.i31 to i32
  %vc_hi_font_mask16.i35 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %49 = ptrtoint ptr %vc_hi_font_mask16.i35 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %vc_hi_font_mask16.i35, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool18.not.i36 = icmp eq i16 %50, 0
  %cond19.i = select i1 %tobool18.not.i36, i32 12, i32 13
  %shr20.i = lshr i32 %conv15.i34, %cond19.i
  %51 = zext i32 %call.i23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %call.i23, label %if.then7.i37.get_color.exit57_crit_edge [
    i32 3, label %sw.bb52.i55
    i32 2, label %sw.bb48.i50
  ]

if.then7.i37.get_color.exit57_crit_edge:          ; preds = %if.then7.i37
  call void @__sanitizer_cov_trace_pc() #22
  br label %get_color.exit57

sw.bb.i49:                                        ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #22
  %length.i.i38 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 9, i32 1
  %52 = ptrtoint ptr %length.i.i38 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %length.i.i38, align 4
  %length2.i.i39 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 8, i32 1
  %54 = ptrtoint ptr %length2.i.i39 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %length2.i.i39, align 4
  %56 = tail call i32 @llvm.umax.i32(i32 %53, i32 %55) #20
  %length4.i.i40 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 10, i32 1
  %57 = ptrtoint ptr %length4.i.i40 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %length4.i.i40, align 4
  %59 = tail call i32 @llvm.umax.i32(i32 %58, i32 %56) #20
  %shl.i.i41 = shl i32 4095, %59
  %neg.i.i42 = and i32 %shl.i.i41, 255
  %and.i.i43 = xor i32 %neg.i.i42, 255
  %visual.i44 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 7, i32 5
  %60 = ptrtoint ptr %visual.i44 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %visual.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp26.not.i45 = icmp eq i32 %61, 0
  %cond39.i47 = select i1 %cmp26.not.i45, i32 %and.i.i43, i32 0
  br label %get_color.exit57

sw.bb48.i50:                                      ; preds = %if.then7.i37
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %shr20.i)
  %62 = icmp ult i32 %shr20.i, 9
  br i1 %62, label %switch.lookup59, label %sw.bb48.i50.get_color.exit57_crit_edge

sw.bb48.i50.get_color.exit57_crit_edge:           ; preds = %sw.bb48.i50
  call void @__sanitizer_cov_trace_pc() #22
  br label %get_color.exit57

sw.bb52.i55:                                      ; preds = %if.then7.i37
  call void @__sanitizer_cov_trace_pc() #22
  %and53.i54 = and i32 %shr20.i, 7
  br label %get_color.exit57

switch.lookup59:                                  ; preds = %sw.bb48.i50
  call void @__sanitizer_cov_trace_pc() #22
  %switch.gep60 = getelementptr inbounds [9 x i32], ptr @switch.table.fbcon_putcs.64, i32 0, i32 %shr20.i
  %63 = ptrtoint ptr %switch.gep60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %switch.load61 = load i32, ptr %switch.gep60, align 4
  br label %get_color.exit57

get_color.exit57:                                 ; preds = %switch.lookup59, %sw.bb52.i55, %sw.bb48.i50.get_color.exit57_crit_edge, %sw.bb.i49, %if.then7.i37.get_color.exit57_crit_edge
  %color.1.i56 = phi i32 [ %shr20.i, %if.then7.i37.get_color.exit57_crit_edge ], [ %and53.i54, %sw.bb52.i55 ], [ %cond39.i47, %sw.bb.i49 ], [ %switch.load61, %switch.lookup59 ], [ 3, %sw.bb48.i50.get_color.exit57_crit_edge ]
  tail call void %15(ptr noundef %vc, ptr noundef %5, ptr noundef %s, i32 noundef %count, i32 noundef %cond.i, i32 noundef %xpos, i32 noundef %color.1.i, i32 noundef %color.1.i56) #20
  br label %if.end

if.end:                                           ; preds = %get_color.exit57, %fbcon_is_inactive.exit.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @fbcon_scroll(ptr noundef %vc, i32 noundef %t, i32 noundef %b, i32 noundef %dir, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom1 = sext i8 %3 to i32
  %arrayidx2 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 64
  %fbcon_par.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 29
  %8 = ptrtoint ptr %fbcon_par.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fbcon_par.i, align 4
  %state.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 28
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %vc_mode.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 17
  %12 = ptrtoint ptr %vc_mode.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %vc_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp1.not.i = icmp eq i8 %13, 0
  br i1 %cmp1.not.i, label %fbcon_is_inactive.exit, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

fbcon_is_inactive.exit:                           ; preds = %lor.lhs.false.i
  %graphics.i = getelementptr inbounds %struct.fbcon_ops, ptr %9, i32 0, i32 17
  %14 = ptrtoint ptr %graphics.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %graphics.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not = icmp eq i32 %15, 0
  br i1 %tobool.i.not, label %if.end, label %fbcon_is_inactive.exit.cleanup_crit_edge

fbcon_is_inactive.exit.cleanup_crit_edge:         ; preds = %fbcon_is_inactive.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %fbcon_is_inactive.exit
  tail call void @fbcon_cursor(ptr noundef %vc, i32 noundef 2)
  %16 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %dir, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb170
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %vc_rows = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 5
  %17 = ptrtoint ptr %vc_rows to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vc_rows, align 4
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 %count)
  %20 = load i32, ptr @logo_shown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp9 = icmp sgt i32 %20, -1
  br i1 %cmp9, label %sw.bb.redraw_up_crit_edge, label %if.end11

sw.bb.redraw_up_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  br label %redraw_up

if.end11:                                         ; preds = %sw.bb
  %scrollmode.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 2
  %21 = ptrtoint ptr %scrollmode.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %scrollmode.i, align 4
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.87)
  switch i16 %22, label %if.end11.cleanup_crit_edge [
    i16 1, label %sw.bb13
    i16 3, label %sw.bb19
    i16 5, label %sw.bb55
    i16 2, label %sw.bb98
    i16 4, label %if.end11.redraw_up_crit_edge
  ]

if.end11.redraw_up_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  br label %redraw_up

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

sw.bb13:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  %24 = add i32 %19, %t
  %sub14 = sub i32 %b, %24
  tail call fastcc void @fbcon_redraw_blit(ptr noundef %vc, ptr noundef %5, i32 noundef %t, i32 noundef %sub14, i32 noundef %19)
  %sub15 = sub i32 %b, %19
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %25 = ptrtoint ptr %vc_cols to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vc_cols, align 4
  tail call void @fbcon_clear(ptr noundef %vc, i32 noundef %sub15, i32 noundef 0, i32 noundef %19, i32 noundef %26)
  %vc_origin = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %27 = ptrtoint ptr %vc_origin to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vc_origin, align 4
  %vc_size_row = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 6
  %29 = ptrtoint ptr %vc_size_row to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vc_size_row, align 4
  %mul = mul i32 %30, %sub15
  %add = add i32 %mul, %28
  %31 = inttoptr i32 %add to ptr
  %vc_video_erase_char = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 29
  %32 = ptrtoint ptr %vc_video_erase_char to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vc_video_erase_char, align 4
  %mul18 = mul i32 %30, %19
  %div1.i = lshr i32 %mul18, 1
  %call.i = tail call ptr @memset16(ptr noundef %31, i16 noundef zeroext %33, i32 noundef %div1.i) #20
  br label %cleanup

sw.bb19:                                          ; preds = %if.end11
  %34 = add i32 %19, %t
  %sub21 = sub i32 %b, %34
  %mul23 = mul i32 %18, 3
  %shr = lshr i32 %mul23, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub21, i32 %shr)
  %cmp24 = icmp ugt i32 %sub21, %shr
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t)
  %cmp27.not = icmp eq i32 %t, 0
  br i1 %cmp27.not, label %if.then26.if.end31_crit_edge, label %if.then29

if.then26.if.end31_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end31

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #22
  %vc_cols30 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %35 = ptrtoint ptr %vc_cols30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vc_cols30, align 4
  tail call fastcc void @fbcon_bmove(ptr noundef %vc, i32 noundef 0, i32 noundef %19, i32 noundef %t, i32 noundef %36)
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.then26.if.end31_crit_edge
  tail call fastcc void @ywrap_up(ptr noundef %vc, i32 noundef %19)
  %37 = ptrtoint ptr %vc_rows to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vc_rows, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %b)
  %cmp34.not = icmp eq i32 %38, %b
  br i1 %cmp34.not, label %if.end31.if.end52_crit_edge, label %if.then36

if.end31.if.end52_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end52

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #22
  %sub33 = sub i32 %38, %b
  %sub37 = sub i32 %b, %19
  %vc_cols40 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %39 = ptrtoint ptr %vc_cols40 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vc_cols40, align 4
  tail call fastcc void @fbcon_bmove(ptr noundef %vc, i32 noundef %sub37, i32 noundef %b, i32 noundef %sub33, i32 noundef %40)
  br label %if.end52

if.else:                                          ; preds = %sw.bb19
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 4
  %and43 = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.else.redraw_up_crit_edge, label %if.then45

if.else.redraw_up_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %redraw_up

if.then45:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %vc_cols49 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %43 = ptrtoint ptr %vc_cols49 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vc_cols49, align 4
  tail call fastcc void @fbcon_bmove(ptr noundef %vc, i32 noundef %34, i32 noundef %t, i32 noundef %sub21, i32 noundef %44)
  br label %if.end52

if.end52:                                         ; preds = %if.then45, %if.then36, %if.end31.if.end52_crit_edge
  %sub53 = sub i32 %b, %19
  %vc_cols54 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %45 = ptrtoint ptr %vc_cols54 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vc_cols54, align 4
  tail call void @fbcon_clear(ptr noundef %vc, i32 noundef %sub53, i32 noundef 0, i32 noundef %19, i32 noundef %46)
  br label %cleanup

sw.bb55:                                          ; preds = %if.end11
  %yscroll = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 4
  %47 = ptrtoint ptr %yscroll to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %yscroll, align 4
  %conv56 = sext i16 %48 to i32
  %add57 = add i32 %19, %conv56
  %vrows = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 5
  %49 = ptrtoint ptr %vrows to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vrows, align 4
  %sub59 = sub i32 %50, %18
  %mul60 = shl i32 %sub59, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add57, i32 %mul60)
  %cmp61.not = icmp ugt i32 %add57, %mul60
  br i1 %cmp61.not, label %sw.bb55.if.else91_crit_edge, label %land.lhs.true

sw.bb55.if.else91_crit_edge:                      ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else91

land.lhs.true:                                    ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool63.not = icmp eq i32 %and, 0
  %sub65 = sub i32 %b, %t
  call void @__sanitizer_cov_trace_cmp4(i32 %sub65, i32 %18)
  %cmp67 = icmp eq i32 %sub65, %18
  %or.cond = select i1 %tobool63.not, i1 %cmp67, i1 false
  br i1 %or.cond, label %land.lhs.true.if.then78_crit_edge, label %lor.lhs.false

land.lhs.true.if.then78_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then78

lor.lhs.false:                                    ; preds = %land.lhs.true
  br i1 %tobool63.not, label %lor.lhs.false.if.else91_crit_edge, label %land.lhs.true70

lor.lhs.false.if.else91_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else91

land.lhs.true70:                                  ; preds = %lor.lhs.false
  %51 = add i32 %19, %t
  %sub72 = sub i32 %b, %51
  %mul74 = mul i32 %18, 3
  %shr75 = lshr i32 %mul74, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub72, i32 %shr75)
  %cmp76 = icmp ugt i32 %sub72, %shr75
  br i1 %cmp76, label %land.lhs.true70.if.then78_crit_edge, label %land.lhs.true70.if.else91_crit_edge

land.lhs.true70.if.else91_crit_edge:              ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else91

land.lhs.true70.if.then78_crit_edge:              ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then78

if.then78:                                        ; preds = %land.lhs.true70.if.then78_crit_edge, %land.lhs.true.if.then78_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t)
  %cmp79.not = icmp eq i32 %t, 0
  br i1 %cmp79.not, label %if.then78.if.end82_crit_edge, label %if.then81

if.then78.if.end82_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end82

if.then81:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @fbcon_redraw_move(ptr noundef %vc, i32 noundef 0, i32 noundef %t, i32 noundef %19)
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.then78.if.end82_crit_edge
  tail call fastcc void @ypan_up_redraw(ptr noundef %vc, i32 noundef %t, i32 noundef %19)
  %52 = ptrtoint ptr %vc_rows to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %vc_rows, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %b)
  %cmp85.not = icmp eq i32 %53, %b
  br i1 %cmp85.not, label %if.end82.if.end95_crit_edge, label %if.then87

if.end82.if.end95_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end95

if.then87:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #22
  %sub84 = sub i32 %53, %b
  tail call fastcc void @fbcon_redraw_move(ptr noundef %vc, i32 noundef %b, i32 noundef %sub84, i32 noundef %b)
  br label %if.end95

if.else91:                                        ; preds = %land.lhs.true70.if.else91_crit_edge, %lor.lhs.false.if.else91_crit_edge, %sw.bb55.if.else91_crit_edge
  %add92 = add i32 %19, %t
  %sub94 = sub i32 %b, %add92
  tail call fastcc void @fbcon_redraw_move(ptr noundef %vc, i32 noundef %add92, i32 noundef %sub94, i32 noundef %t)
  br label %if.end95

if.end95:                                         ; preds = %if.else91, %if.then87, %if.end82.if.end95_crit_edge
  %sub96 = sub i32 %b, %19
  %vc_cols97 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %54 = ptrtoint ptr %vc_cols97 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vc_cols97, align 4
  tail call void @fbcon_clear(ptr noundef %vc, i32 noundef %sub96, i32 noundef 0, i32 noundef %19, i32 noundef %55)
  br label %cleanup

sw.bb98:                                          ; preds = %if.end11
  %yscroll99 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 4
  %56 = ptrtoint ptr %yscroll99 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %yscroll99, align 4
  %conv100 = sext i16 %57 to i32
  %add101 = add i32 %19, %conv100
  %vrows102 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 5
  %58 = ptrtoint ptr %vrows102 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %vrows102, align 4
  %sub104 = sub i32 %59, %18
  %mul105 = shl i32 %sub104, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add101, i32 %mul105)
  %cmp106.not = icmp ugt i32 %add101, %mul105
  br i1 %cmp106.not, label %sw.bb98.if.else141_crit_edge, label %land.lhs.true108

sw.bb98.if.else141_crit_edge:                     ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else141

land.lhs.true108:                                 ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool109.not = icmp eq i32 %and, 0
  %sub111 = sub i32 %b, %t
  call void @__sanitizer_cov_trace_cmp4(i32 %sub111, i32 %18)
  %cmp113 = icmp eq i32 %sub111, %18
  %or.cond673 = select i1 %tobool109.not, i1 %cmp113, i1 false
  br i1 %or.cond673, label %land.lhs.true108.if.then125_crit_edge, label %lor.lhs.false115

land.lhs.true108.if.then125_crit_edge:            ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then125

lor.lhs.false115:                                 ; preds = %land.lhs.true108
  br i1 %tobool109.not, label %lor.lhs.false115.if.else141_crit_edge, label %land.lhs.true117

lor.lhs.false115.if.else141_crit_edge:            ; preds = %lor.lhs.false115
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else141

land.lhs.true117:                                 ; preds = %lor.lhs.false115
  %60 = add i32 %19, %t
  %sub119 = sub i32 %b, %60
  %mul121 = mul i32 %18, 3
  %shr122 = lshr i32 %mul121, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub119, i32 %shr122)
  %cmp123 = icmp ugt i32 %sub119, %shr122
  br i1 %cmp123, label %land.lhs.true117.if.then125_crit_edge, label %land.lhs.true117.if.else141_crit_edge

land.lhs.true117.if.else141_crit_edge:            ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else141

land.lhs.true117.if.then125_crit_edge:            ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then125

if.then125:                                       ; preds = %land.lhs.true117.if.then125_crit_edge, %land.lhs.true108.if.then125_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t)
  %cmp126.not = icmp eq i32 %t, 0
  br i1 %cmp126.not, label %if.then125.if.end130_crit_edge, label %if.then128

if.then125.if.end130_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end130

if.then128:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #22
  %vc_cols129 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %61 = ptrtoint ptr %vc_cols129 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %vc_cols129, align 4
  tail call fastcc void @fbcon_bmove(ptr noundef %vc, i32 noundef 0, i32 noundef %19, i32 noundef %t, i32 noundef %62)
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %if.then125.if.end130_crit_edge
  tail call fastcc void @ypan_up(ptr noundef %vc, i32 noundef %19)
  %63 = ptrtoint ptr %vc_rows to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %vc_rows, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %b)
  %cmp133.not = icmp eq i32 %64, %b
  br i1 %cmp133.not, label %if.end130.if.end152_crit_edge, label %if.then135

if.end130.if.end152_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end152

if.then135:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #22
  %sub132 = sub i32 %64, %b
  %sub136 = sub i32 %b, %19
  %vc_cols139 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %65 = ptrtoint ptr %vc_cols139 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %vc_cols139, align 4
  tail call fastcc void @fbcon_bmove(ptr noundef %vc, i32 noundef %sub136, i32 noundef %b, i32 noundef %sub132, i32 noundef %66)
  br label %if.end152

if.else141:                                       ; preds = %land.lhs.true117.if.else141_crit_edge, %lor.lhs.false115.if.else141_crit_edge, %sw.bb98.if.else141_crit_edge
  %67 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags, align 4
  %and143 = and i32 %68, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.else141.redraw_up_crit_edge, label %if.then145

if.else141.redraw_up_crit_edge:                   ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #22
  br label %redraw_up

if.then145:                                       ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #22
  %add146 = add i32 %19, %t
  %sub148 = sub i32 %b, %add146
  %vc_cols149 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %69 = ptrtoint ptr %vc_cols149 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %vc_cols149, align 4
  tail call fastcc void @fbcon_bmove(ptr noundef %vc, i32 noundef %add146, i32 noundef %t, i32 noundef %sub148, i32 noundef %70)
  br label %if.end152

if.end152:                                        ; preds = %if.then145, %if.then135, %if.end130.if.end152_crit_edge
  %sub153 = sub i32 %b, %19
  %vc_cols154 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %71 = ptrtoint ptr %vc_cols154 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %vc_cols154, align 4
  tail call void @fbcon_clear(ptr noundef %vc, i32 noundef %sub153, i32 noundef 0, i32 noundef %19, i32 noundef %72)
  br label %cleanup

redraw_up:                                        ; preds = %if.else141.redraw_up_crit_edge, %if.else.redraw_up_crit_edge, %if.end11.redraw_up_crit_edge, %sw.bb.redraw_up_crit_edge
  %73 = add i32 %19, %t
  %sub157 = sub i32 %b, %73
  %vc_cols158 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %74 = ptrtoint ptr %vc_cols158 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %vc_cols158, align 4
  %mul159 = mul i32 %75, %19
  tail call fastcc void @fbcon_redraw(ptr noundef %vc, i32 noundef %t, i32 noundef %sub157, i32 noundef %mul159)
  %sub160 = sub i32 %b, %19
  %76 = ptrtoint ptr %vc_cols158 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %vc_cols158, align 4
  tail call void @fbcon_clear(ptr noundef %vc, i32 noundef %sub160, i32 noundef 0, i32 noundef %19, i32 noundef %77)
  %vc_origin162 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %78 = ptrtoint ptr %vc_origin162 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %vc_origin162, align 4
  %vc_size_row163 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 6
  %80 = ptrtoint ptr %vc_size_row163 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %vc_size_row163, align 4
  %mul165 = mul i32 %81, %sub160
  %add166 = add i32 %mul165, %79
  %82 = inttoptr i32 %add166 to ptr
  %vc_video_erase_char167 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 29
  %83 = ptrtoint ptr %vc_video_erase_char167 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %vc_video_erase_char167, align 4
  %mul169 = mul i32 %81, %19
  %div1.i677 = lshr i32 %mul169, 1
  %call.i678 = tail call ptr @memset16(ptr noundef %82, i16 noundef zeroext %84, i32 noundef %div1.i677) #20
  br label %cleanup

sw.bb170:                                         ; preds = %if.end
  %vc_rows171 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 5
  %85 = ptrtoint ptr %vc_rows171 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %vc_rows171, align 4
  %87 = tail call i32 @llvm.umin.i32(i32 %86, i32 %count)
  %sub187 = sub i32 0, %87
  %88 = load i32, ptr @logo_shown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %88)
  %cmp177 = icmp sgt i32 %88, -1
  br i1 %cmp177, label %sw.bb170.redraw_down_crit_edge, label %if.end180

sw.bb170.redraw_down_crit_edge:                   ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #22
  br label %redraw_down

if.end180:                                        ; preds = %sw.bb170
  %scrollmode.i679 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 2
  %89 = ptrtoint ptr %scrollmode.i679 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %scrollmode.i679, align 4
  %91 = zext i16 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.88)
  switch i16 %90, label %if.end180.cleanup_crit_edge [
    i16 1, label %sw.bb183
    i16 3, label %sw.bb196
    i16 2, label %sw.bb233
    i16 5, label %sw.bb288
    i16 4, label %if.end180.redraw_down_crit_edge
  ]

if.end180.redraw_down_crit_edge:                  ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #22
  br label %redraw_down

if.end180.cleanup_crit_edge:                      ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

sw.bb183:                                         ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #22
  %sub184 = add i32 %b, -1
  %92 = add i32 %87, %t
  %sub186 = sub i32 %b, %92
  tail call fastcc void @fbcon_redraw_blit(ptr noundef %vc, ptr noundef %5, i32 noundef %sub184, i32 noundef %sub186, i32 noundef %sub187)
  %vc_cols188 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %93 = ptrtoint ptr %vc_cols188 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %vc_cols188, align 4
  tail call void @fbcon_clear(ptr noundef %vc, i32 noundef %t, i32 noundef 0, i32 noundef %87, i32 noundef %94)
  %vc_origin189 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %95 = ptrtoint ptr %vc_origin189 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %vc_origin189, align 4
  %vc_size_row190 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 6
  %97 = ptrtoint ptr %vc_size_row190 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %vc_size_row190, align 4
  %mul191 = mul i32 %98, %t
  %add192 = add i32 %mul191, %96
  %99 = inttoptr i32 %add192 to ptr
  %vc_video_erase_char193 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 29
  %100 = ptrtoint ptr %vc_video_erase_char193 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %vc_video_erase_char193, align 4
  %mul195 = mul i32 %98, %87
  %div1.i680 = lshr i32 %mul195, 1
  %call.i681 = tail call ptr @memset16(ptr noundef %99, i16 noundef zeroext %101, i32 noundef %div1.i680) #20
  br label %cleanup

sw.bb196:                                         ; preds = %if.end180
  %102 = add i32 %87, %t
  %sub198 = sub i32 %b, %102
  %mul200 = mul i32 %86, 3
  %shr201 = lshr i32 %mul200, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub198, i32 %shr201)
  %cmp202 = icmp ugt i32 %sub198, %shr201
  br i1 %cmp202, label %if.then204, label %if.else220

if.then204:                                       ; preds = %sw.bb196
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %b)
  %cmp207.not = icmp eq i32 %86, %b
  br i1 %cmp207.not, label %if.then204.if.end214_crit_edge, label %if.then209

if.then204.if.end214_crit_edge:                   ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end214

if.then209:                                       ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #22
  %sub206 = sub i32 %86, %b
  %sub210 = sub i32 %b, %87
  %vc_cols213 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %103 = ptrtoint ptr %vc_cols213 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %vc_cols213, align 4
  tail call fastcc void @fbcon_bmove(ptr noundef %vc, i32 noundef %b, i32 noundef %sub210, i32 noundef %sub206, i32 noundef %104)
  br label %if.end214

if.end214:                                        ; preds = %if.then209, %if.then204.if.end214_crit_edge
  tail call fastcc void @ywrap_down(ptr noundef %vc, i32 noundef %87)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t)
  %cmp215.not = icmp eq i32 %t, 0
  br i1 %cmp215.not, label %if.end214.if.end231_crit_edge, label %if.then217

if.end214.if.end231_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end231

if.then217:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #22
  %vc_cols218 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %105 = ptrtoint ptr %vc_cols218 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %vc_cols218, align 4
  tail call fastcc void @fbcon_bmove(ptr noundef %vc, i32 noundef %87, i32 noundef 0, i32 noundef %t, i32 noundef %106)
  br label %if.end231

if.else220:                                       ; preds = %sw.bb196
  %107 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %flags, align 4
  %and222 = and i32 %108, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and222)
  %tobool223.not = icmp eq i32 %and222, 0
  br i1 %tobool223.not, label %if.else220.redraw_down_crit_edge, label %if.then224

if.else220.redraw_down_crit_edge:                 ; preds = %if.else220
  call void @__sanitizer_cov_trace_pc() #22
  br label %redraw_down

if.then224:                                       ; preds = %if.else220
  call void @__sanitizer_cov_trace_pc() #22
  %vc_cols228 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %109 = ptrtoint ptr %vc_cols228 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %vc_cols228, align 4
  tail call fastcc void @fbcon_bmove(ptr noundef %vc, i32 noundef %t, i32 noundef %102, i32 noundef %sub198, i32 noundef %110)
  br label %if.end231

if.end231:                                        ; preds = %if.then224, %if.then217, %if.end214.if.end231_crit_edge
  %vc_cols232 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %111 = ptrtoint ptr %vc_cols232 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %vc_cols232, align 4
  tail call void @fbcon_clear(ptr noundef %vc, i32 noundef %t, i32 noundef 0, i32 noundef %87, i32 noundef %112)
  br label %cleanup

sw.bb233:                                         ; preds = %if.end180
  %yscroll234 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 4
  %113 = ptrtoint ptr %yscroll234 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %yscroll234, align 4
  %conv235 = sext i16 %114 to i32
  %sub236 = sub i32 %87, %conv235
  %vrows237 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 5
  %115 = ptrtoint ptr %vrows237 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %vrows237, align 4
  %sub239 = sub i32 %116, %86
  call void @__sanitizer_cov_trace_cmp4(i32 %sub236, i32 %sub239)
  %cmp240.not = icmp ugt i32 %sub236, %sub239
  br i1 %cmp240.not, label %sw.bb233.if.else275_crit_edge, label %land.lhs.true242

sw.bb233.if.else275_crit_edge:                    ; preds = %sw.bb233
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else275

land.lhs.true242:                                 ; preds = %sw.bb233
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool243.not = icmp eq i32 %and, 0
  %sub245 = sub i32 %b, %t
  call void @__sanitizer_cov_trace_cmp4(i32 %sub245, i32 %86)
  %cmp247 = icmp eq i32 %sub245, %86
  %or.cond675 = select i1 %tobool243.not, i1 %cmp247, i1 false
  br i1 %or.cond675, label %land.lhs.true242.if.then259_crit_edge, label %lor.lhs.false249

land.lhs.true242.if.then259_crit_edge:            ; preds = %land.lhs.true242
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then259

lor.lhs.false249:                                 ; preds = %land.lhs.true242
  br i1 %tobool243.not, label %lor.lhs.false249.if.else275_crit_edge, label %land.lhs.true251

lor.lhs.false249.if.else275_crit_edge:            ; preds = %lor.lhs.false249
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else275

land.lhs.true251:                                 ; preds = %lor.lhs.false249
  %117 = add i32 %87, %t
  %sub253 = sub i32 %b, %117
  %mul255 = mul i32 %86, 3
  %shr256 = lshr i32 %mul255, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub253, i32 %shr256)
  %cmp257 = icmp ugt i32 %sub253, %shr256
  br i1 %cmp257, label %land.lhs.true251.if.then259_crit_edge, label %land.lhs.true251.if.else275_crit_edge

land.lhs.true251.if.else275_crit_edge:            ; preds = %land.lhs.true251
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else275

land.lhs.true251.if.then259_crit_edge:            ; preds = %land.lhs.true251
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then259

if.then259:                                       ; preds = %land.lhs.true251.if.then259_crit_edge, %land.lhs.true242.if.then259_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %b)
  %cmp262.not = icmp eq i32 %86, %b
  br i1 %cmp262.not, label %if.then259.if.end269_crit_edge, label %if.then264

if.then259.if.end269_crit_edge:                   ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end269

if.then264:                                       ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #22
  %sub261 = sub i32 %86, %b
  %sub265 = sub i32 %b, %87
  %vc_cols268 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %118 = ptrtoint ptr %vc_cols268 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %vc_cols268, align 4
  tail call fastcc void @fbcon_bmove(ptr noundef %vc, i32 noundef %b, i32 noundef %sub265, i32 noundef %sub261, i32 noundef %119)
  br label %if.end269

if.end269:                                        ; preds = %if.then264, %if.then259.if.end269_crit_edge
  tail call fastcc void @ypan_down(ptr noundef %vc, i32 noundef %87)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t)
  %cmp270.not = icmp eq i32 %t, 0
  br i1 %cmp270.not, label %if.end269.if.end286_crit_edge, label %if.then272

if.end269.if.end286_crit_edge:                    ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end286

if.then272:                                       ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #22
  %vc_cols273 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %120 = ptrtoint ptr %vc_cols273 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %vc_cols273, align 4
  tail call fastcc void @fbcon_bmove(ptr noundef %vc, i32 noundef %87, i32 noundef 0, i32 noundef %t, i32 noundef %121)
  br label %if.end286

if.else275:                                       ; preds = %land.lhs.true251.if.else275_crit_edge, %lor.lhs.false249.if.else275_crit_edge, %sw.bb233.if.else275_crit_edge
  %122 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %flags, align 4
  %and277 = and i32 %123, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and277)
  %tobool278.not = icmp eq i32 %and277, 0
  br i1 %tobool278.not, label %if.else275.redraw_down_crit_edge, label %if.then279

if.else275.redraw_down_crit_edge:                 ; preds = %if.else275
  call void @__sanitizer_cov_trace_pc() #22
  br label %redraw_down

if.then279:                                       ; preds = %if.else275
  call void @__sanitizer_cov_trace_pc() #22
  %add280 = add i32 %87, %t
  %sub282 = sub i32 %b, %add280
  %vc_cols283 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %124 = ptrtoint ptr %vc_cols283 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %vc_cols283, align 4
  tail call fastcc void @fbcon_bmove(ptr noundef %vc, i32 noundef %t, i32 noundef %add280, i32 noundef %sub282, i32 noundef %125)
  br label %if.end286

if.end286:                                        ; preds = %if.then279, %if.then272, %if.end269.if.end286_crit_edge
  %vc_cols287 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %126 = ptrtoint ptr %vc_cols287 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %vc_cols287, align 4
  tail call void @fbcon_clear(ptr noundef %vc, i32 noundef %t, i32 noundef 0, i32 noundef %87, i32 noundef %127)
  br label %cleanup

sw.bb288:                                         ; preds = %if.end180
  %yscroll289 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 4
  %128 = ptrtoint ptr %yscroll289 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %yscroll289, align 4
  %conv290 = sext i16 %129 to i32
  %sub291 = sub i32 %87, %conv290
  %vrows292 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 5
  %130 = ptrtoint ptr %vrows292 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %vrows292, align 4
  %sub294 = sub i32 %131, %86
  call void @__sanitizer_cov_trace_cmp4(i32 %sub291, i32 %sub294)
  %cmp295.not = icmp ugt i32 %sub291, %sub294
  br i1 %cmp295.not, label %sw.bb288.if.else328_crit_edge, label %land.lhs.true297

sw.bb288.if.else328_crit_edge:                    ; preds = %sw.bb288
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else328

land.lhs.true297:                                 ; preds = %sw.bb288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool298.not = icmp eq i32 %and, 0
  %sub300 = sub i32 %b, %t
  call void @__sanitizer_cov_trace_cmp4(i32 %sub300, i32 %86)
  %cmp302 = icmp eq i32 %sub300, %86
  %or.cond676 = select i1 %tobool298.not, i1 %cmp302, i1 false
  br i1 %or.cond676, label %land.lhs.true297.if.then314_crit_edge, label %lor.lhs.false304

land.lhs.true297.if.then314_crit_edge:            ; preds = %land.lhs.true297
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then314

lor.lhs.false304:                                 ; preds = %land.lhs.true297
  br i1 %tobool298.not, label %lor.lhs.false304.if.else328_crit_edge, label %land.lhs.true306

lor.lhs.false304.if.else328_crit_edge:            ; preds = %lor.lhs.false304
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else328

land.lhs.true306:                                 ; preds = %lor.lhs.false304
  %132 = add i32 %87, %t
  %sub308 = sub i32 %b, %132
  %mul310 = mul i32 %86, 3
  %shr311 = lshr i32 %mul310, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub308, i32 %shr311)
  %cmp312 = icmp ugt i32 %sub308, %shr311
  br i1 %cmp312, label %land.lhs.true306.if.then314_crit_edge, label %land.lhs.true306.if.else328_crit_edge

land.lhs.true306.if.else328_crit_edge:            ; preds = %land.lhs.true306
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else328

land.lhs.true306.if.then314_crit_edge:            ; preds = %land.lhs.true306
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then314

if.then314:                                       ; preds = %land.lhs.true306.if.then314_crit_edge, %land.lhs.true297.if.then314_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %b)
  %cmp317.not = icmp eq i32 %86, %b
  br i1 %cmp317.not, label %if.then314.if.end323_crit_edge, label %if.then319

if.then314.if.end323_crit_edge:                   ; preds = %if.then314
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end323

if.then319:                                       ; preds = %if.then314
  call void @__sanitizer_cov_trace_pc() #22
  %sub316 = sub i32 %86, %b
  %sub322 = sub i32 %b, %87
  tail call fastcc void @fbcon_redraw_move(ptr noundef %vc, i32 noundef %b, i32 noundef %sub316, i32 noundef %sub322)
  br label %if.end323

if.end323:                                        ; preds = %if.then319, %if.then314.if.end323_crit_edge
  tail call fastcc void @ypan_down_redraw(ptr noundef %vc, i32 noundef %t, i32 noundef %87)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t)
  %cmp324.not = icmp eq i32 %t, 0
  br i1 %cmp324.not, label %if.end323.if.end332_crit_edge, label %if.then326

if.end323.if.end332_crit_edge:                    ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end332

if.then326:                                       ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @fbcon_redraw_move(ptr noundef %vc, i32 noundef %87, i32 noundef %t, i32 noundef 0)
  br label %if.end332

if.else328:                                       ; preds = %land.lhs.true306.if.else328_crit_edge, %lor.lhs.false304.if.else328_crit_edge, %sw.bb288.if.else328_crit_edge
  %133 = add i32 %87, %t
  %sub330 = sub i32 %b, %133
  tail call fastcc void @fbcon_redraw_move(ptr noundef %vc, i32 noundef %t, i32 noundef %sub330, i32 noundef %133)
  br label %if.end332

if.end332:                                        ; preds = %if.else328, %if.then326, %if.end323.if.end332_crit_edge
  %vc_cols333 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %134 = ptrtoint ptr %vc_cols333 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %vc_cols333, align 4
  tail call void @fbcon_clear(ptr noundef %vc, i32 noundef %t, i32 noundef 0, i32 noundef %87, i32 noundef %135)
  br label %cleanup

redraw_down:                                      ; preds = %if.else275.redraw_down_crit_edge, %if.else220.redraw_down_crit_edge, %if.end180.redraw_down_crit_edge, %sw.bb170.redraw_down_crit_edge
  %sub335 = add i32 %b, -1
  %136 = add i32 %87, %t
  %sub337 = sub i32 %b, %136
  %vc_cols339 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %137 = ptrtoint ptr %vc_cols339 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %vc_cols339, align 4
  %139 = mul i32 %87, %138
  %mul340 = sub i32 0, %139
  tail call fastcc void @fbcon_redraw(ptr noundef %vc, i32 noundef %sub335, i32 noundef %sub337, i32 noundef %mul340)
  %140 = ptrtoint ptr %vc_cols339 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %vc_cols339, align 4
  tail call void @fbcon_clear(ptr noundef %vc, i32 noundef %t, i32 noundef 0, i32 noundef %87, i32 noundef %141)
  %vc_origin342 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %142 = ptrtoint ptr %vc_origin342 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %vc_origin342, align 4
  %vc_size_row343 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 6
  %144 = ptrtoint ptr %vc_size_row343 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %vc_size_row343, align 4
  %mul344 = mul i32 %145, %t
  %add345 = add i32 %mul344, %143
  %146 = inttoptr i32 %add345 to ptr
  %vc_video_erase_char346 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 29
  %147 = ptrtoint ptr %vc_video_erase_char346 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %vc_video_erase_char346, align 4
  %mul348 = mul i32 %145, %87
  %div1.i682 = lshr i32 %mul348, 1
  %call.i683 = tail call ptr @memset16(ptr noundef %146, i16 noundef zeroext %148, i32 noundef %div1.i682) #20
  br label %cleanup

cleanup:                                          ; preds = %redraw_down, %if.end332, %if.end286, %if.end231, %sw.bb183, %if.end180.cleanup_crit_edge, %redraw_up, %if.end152, %if.end95, %if.end52, %sw.bb13, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %fbcon_is_inactive.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %redraw_down ], [ true, %sw.bb183 ], [ true, %redraw_up ], [ true, %sw.bb13 ], [ true, %fbcon_is_inactive.exit.cleanup_crit_edge ], [ false, %if.end231 ], [ false, %if.end286 ], [ false, %if.end332 ], [ false, %if.end180.cleanup_crit_edge ], [ false, %if.end52 ], [ false, %if.end95 ], [ false, %if.end152 ], [ false, %if.end11.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ true, %lor.lhs.false.i.cleanup_crit_edge ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbcon_switch(ptr noundef %vc) #1 align 64 {
entry:
  %var = alloca %struct.fb_var_screeninfo, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %var) #20
  %arrayidx3 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  %idxprom4 = sext i8 %3 to i32
  %arrayidx5 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom4
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx5, align 4
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbcon_par, align 4
  %8 = load i32, ptr @logo_shown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp = icmp sgt i32 %8, -1
  br i1 %cmp, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11

if.then:                                          ; preds = %entry
  %arrayidx6 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx6, align 4
  %vc_top = getelementptr inbounds %struct.vc_data, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %vc_top to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vc_top, align 4
  %13 = load i32, ptr @logo_lines, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %13)
  %cmp7 = icmp eq i32 %12, %13
  br i1 %cmp7, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %vc_bottom = getelementptr inbounds %struct.vc_data, ptr %10, i32 0, i32 13
  %14 = ptrtoint ptr %vc_bottom to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vc_bottom, align 4
  %vc_rows = getelementptr inbounds %struct.vc_data, ptr %10, i32 0, i32 5
  %16 = ptrtoint ptr %vc_rows to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vc_rows, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp8 = icmp eq i32 %15, %17
  br i1 %cmp8, label %if.then9, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  %18 = ptrtoint ptr %vc_top to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %vc_top, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  store i32 -1, ptr @logo_shown, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry.if.end11_crit_edge
  %currcon = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 12
  %19 = ptrtoint ptr %currcon to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %currcon, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp12.not = icmp eq i32 %20, -1
  br i1 %cmp12.not, label %if.end11.if.end17_crit_edge, label %if.then13

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx14 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx14, align 1
  %idxprom15 = sext i8 %22 to i32
  %arrayidx16 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom15
  %23 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end11.if.end17_crit_edge
  %old_info.0 = phi ptr [ %24, %if.then13 ], [ null, %if.end11.if.end17_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end17
  %i.0262 = phi i32 [ 0, %if.end17 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx19 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %i.0262
  %25 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx19, align 4
  %tobool.not = icmp eq ptr %26, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.else:                                          ; preds = %for.body
  %fbcon_par22 = getelementptr inbounds %struct.fb_info, ptr %26, i32 0, i32 29
  %27 = ptrtoint ptr %fbcon_par22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fbcon_par22, align 4
  %tobool23.not = icmp eq ptr %28, null
  br i1 %tobool23.not, label %if.else.for.inc_crit_edge, label %if.then24

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %29 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vc_num, align 4
  %conv = zext i16 %30 to i32
  %currcon28 = getelementptr inbounds %struct.fbcon_ops, ptr %28, i32 0, i32 12
  %31 = ptrtoint ptr %currcon28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv, ptr %currcon28, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %if.else.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0262, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %for.inc
  %32 = call ptr @memset(ptr %var, i32 0, i32 160)
  %mode.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 21
  %33 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mode.i, align 4
  call void @fb_videomode_to_var(ptr noundef nonnull %var, ptr noundef %34) #20
  %xres_virtual.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 8
  %35 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %xres_virtual.i, align 4
  %xres_virtual1.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %37 = ptrtoint ptr %xres_virtual1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %xres_virtual1.i, align 4
  %yres_virtual.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 9
  %38 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %yres_virtual.i, align 4
  %yres_virtual2.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %40 = ptrtoint ptr %yres_virtual2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %yres_virtual2.i, align 4
  %bits_per_pixel.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 12
  %41 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bits_per_pixel.i, align 4
  %bits_per_pixel3.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %43 = ptrtoint ptr %bits_per_pixel3.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %bits_per_pixel3.i, align 4
  %grayscale.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 13
  %44 = ptrtoint ptr %grayscale.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %grayscale.i, align 4
  %grayscale4.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 7
  %46 = ptrtoint ptr %grayscale4.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %grayscale4.i, align 4
  %nonstd.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 14
  %47 = ptrtoint ptr %nonstd.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nonstd.i, align 4
  %nonstd5.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 12
  %49 = ptrtoint ptr %nonstd5.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %nonstd5.i, align 4
  %accel_flags.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 15
  %50 = ptrtoint ptr %accel_flags.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %accel_flags.i, align 4
  %accel_flags6.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 16
  %52 = ptrtoint ptr %accel_flags6.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %accel_flags6.i, align 4
  %height.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 10
  %53 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %height.i, align 4
  %height7.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 14
  %55 = ptrtoint ptr %height7.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %height7.i, align 4
  %width.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 11
  %56 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %width.i, align 4
  %width8.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 15
  %58 = ptrtoint ptr %width8.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %width8.i, align 4
  %red.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %red9.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 17
  %59 = call ptr @memcpy(ptr %red.i, ptr %red9.i, i32 12)
  %green.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %green10.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 18
  %60 = call ptr @memcpy(ptr %green.i, ptr %green10.i, i32 12)
  %blue.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %blue11.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 19
  %61 = call ptr @memcpy(ptr %blue.i, ptr %blue11.i, i32 12)
  %transp.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %transp12.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 20
  %62 = call ptr @memcpy(ptr %transp.i, ptr %transp12.i, i32 12)
  %rotate.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 16
  %63 = ptrtoint ptr %rotate.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rotate.i, align 4
  %rotate13.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 26
  %65 = ptrtoint ptr %rotate13.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %rotate13.i, align 4
  %activate = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %66 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %activate, align 4
  %var32 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6
  %activate33 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 13
  %67 = ptrtoint ptr %activate33 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %activate33, align 4
  %vmode = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 25
  %68 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %vmode, align 4
  %and = and i32 %69, -256
  %vmode35 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %70 = ptrtoint ptr %vmode35 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %vmode35, align 4
  %or = or i32 %71, %and
  store i32 %or, ptr %vmode35, align 4
  %call = call i32 @fb_set_var(ptr noundef %5, ptr noundef nonnull %var) #20
  %var36 = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 7
  %72 = call ptr @memcpy(ptr %var36, ptr %var32, i32 160)
  %cmp38.not = icmp eq ptr %old_info.0, null
  br i1 %cmp38.not, label %for.end.if.end60_crit_edge, label %land.lhs.true40

for.end.if.end60_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end60

land.lhs.true40:                                  ; preds = %for.end
  %cmp41.not = icmp eq ptr %old_info.0, %5
  br i1 %cmp41.not, label %lor.lhs.false, label %land.lhs.true40.if.then45_crit_edge

land.lhs.true40.if.then45_crit_edge:              ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then45

lor.lhs.false:                                    ; preds = %land.lhs.true40
  %flags = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 2
  %73 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags, align 4
  %and43 = and i32 %74, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %lor.lhs.false.if.end60_crit_edge, label %lor.lhs.false.if.then45_crit_edge

lor.lhs.false.if.then45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then45

lor.lhs.false.if.end60_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end60

if.then45:                                        ; preds = %lor.lhs.false.if.then45_crit_edge, %land.lhs.true40.if.then45_crit_edge
  %fbops = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 20
  %75 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %fbops, align 4
  %fb_set_par = getelementptr inbounds %struct.fb_ops, ptr %76, i32 0, i32 6
  %77 = ptrtoint ptr %fb_set_par to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %fb_set_par, align 4
  %tobool46.not = icmp eq ptr %78, null
  br i1 %tobool46.not, label %if.then45.if.end55_crit_edge, label %if.then47

if.then45.if.end55_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end55

if.then47:                                        ; preds = %if.then45
  %call50 = call i32 %78(ptr noundef %5) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then47.if.end55_crit_edge, label %do.end

if.then47.if.end55_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end55

do.end:                                           ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #22
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %call50) #23
  br label %if.end55

if.end55:                                         ; preds = %do.end, %if.then47.if.end55_crit_edge, %if.then45.if.end55_crit_edge
  br i1 %cmp41.not, label %if.end55.if.end60_crit_edge, label %if.then58

if.end55.if.end60_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end60

if.then58:                                        ; preds = %if.end55
  %fbcon_par.i = getelementptr inbounds %struct.fb_info, ptr %old_info.0, i32 0, i32 29
  %79 = ptrtoint ptr %fbcon_par.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fbcon_par.i, align 4
  %func.i = getelementptr inbounds %struct.fb_info, ptr %old_info.0, i32 0, i32 9, i32 2
  %81 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %func.i, align 4
  %cmp.i = icmp eq ptr %82, @fb_flashcursor
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then58.if.end60_crit_edge

if.then58.if.end60_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end60

land.lhs.true.i:                                  ; preds = %if.then58
  %flags.i = getelementptr inbounds %struct.fbcon_ops, ptr %80, i32 0, i32 19
  %83 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %84, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end60_crit_edge, label %if.then.i

land.lhs.true.i.if.end60_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end60

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  %cursor_timer.i = getelementptr inbounds %struct.fbcon_ops, ptr %80, i32 0, i32 8
  %call.i = call i32 @del_timer_sync(ptr noundef %cursor_timer.i) #20
  %85 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags.i, align 4
  %and2.i = and i32 %86, -3
  store i32 %and2.i, ptr %flags.i, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end60_crit_edge, %if.then58.if.end60_crit_edge, %if.end55.if.end60_crit_edge, %lor.lhs.false.if.end60_crit_edge, %for.end.if.end60_crit_edge
  %87 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %fbcon_par, align 4
  %state.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 28
  %89 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.not.i = icmp eq i32 %90, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end60.if.then66_crit_edge

if.end60.if.then66_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then66

lor.lhs.false.i:                                  ; preds = %if.end60
  %vc_mode.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 17
  %91 = ptrtoint ptr %vc_mode.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %vc_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %cmp1.not.i = icmp eq i8 %92, 0
  br i1 %cmp1.not.i, label %fbcon_is_inactive.exit, label %lor.lhs.false.i.if.then66_crit_edge

lor.lhs.false.i.if.then66_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then66

fbcon_is_inactive.exit:                           ; preds = %lor.lhs.false.i
  %graphics.i = getelementptr inbounds %struct.fbcon_ops, ptr %88, i32 0, i32 17
  %93 = ptrtoint ptr %graphics.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %graphics.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.i.not = icmp eq i32 %94, 0
  br i1 %tobool.i.not, label %lor.lhs.false63, label %fbcon_is_inactive.exit.if.then66_crit_edge

fbcon_is_inactive.exit.if.then66_crit_edge:       ; preds = %fbcon_is_inactive.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then66

lor.lhs.false63:                                  ; preds = %fbcon_is_inactive.exit
  %blank_state = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 16
  %95 = ptrtoint ptr %blank_state to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %blank_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp64.not = icmp eq i32 %96, 0
  br i1 %cmp64.not, label %if.else67, label %lor.lhs.false63.if.then66_crit_edge

lor.lhs.false63.if.then66_crit_edge:              ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then66

if.then66:                                        ; preds = %lor.lhs.false63.if.then66_crit_edge, %fbcon_is_inactive.exit.if.then66_crit_edge, %lor.lhs.false.i.if.then66_crit_edge, %if.end60.if.then66_crit_edge
  %func.i212 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 9, i32 2
  %97 = ptrtoint ptr %func.i212 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %func.i212, align 4
  %cmp.i213 = icmp eq ptr %98, @fb_flashcursor
  br i1 %cmp.i213, label %land.lhs.true.i217, label %if.then66.if.end68_crit_edge

if.then66.if.end68_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end68

land.lhs.true.i217:                               ; preds = %if.then66
  %flags.i214 = getelementptr inbounds %struct.fbcon_ops, ptr %88, i32 0, i32 19
  %99 = ptrtoint ptr %flags.i214 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flags.i214, align 4
  %and.i215 = and i32 %100, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i215)
  %tobool.not.i216 = icmp eq i32 %and.i215, 0
  br i1 %tobool.not.i216, label %land.lhs.true.i217.if.end68_crit_edge, label %if.then.i221

land.lhs.true.i217.if.end68_crit_edge:            ; preds = %land.lhs.true.i217
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end68

if.then.i221:                                     ; preds = %land.lhs.true.i217
  call void @__sanitizer_cov_trace_pc() #22
  %cursor_timer.i218 = getelementptr inbounds %struct.fbcon_ops, ptr %88, i32 0, i32 8
  %call.i219 = call i32 @del_timer_sync(ptr noundef %cursor_timer.i218) #20
  %101 = ptrtoint ptr %flags.i214 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags.i214, align 4
  %and2.i220 = and i32 %102, -3
  store i32 %and2.i220, ptr %flags.i214, align 4
  br label %if.end68

if.else67:                                        ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #22
  call fastcc void @fbcon_add_cursor_timer(ptr noundef %5)
  br label %if.end68

if.end68:                                         ; preds = %if.else67, %if.then.i221, %land.lhs.true.i217.if.end68_crit_edge, %if.then66.if.end68_crit_edge
  %103 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %fbcon_par, align 4
  %105 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %vc_num, align 4
  %idxprom.i = zext i16 %106 to i32
  %arrayidx.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom.i
  %p.i = getelementptr inbounds %struct.fbcon_ops, ptr %104, i32 0, i32 10
  %107 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %arrayidx.i, ptr %p.i, align 4
  %flags.i224 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 2
  %108 = ptrtoint ptr %flags.i224 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %flags.i224, align 4
  %and.i225 = and i32 %109, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i225)
  %tobool.not.i226 = icmp eq i32 %and.i225, 0
  br i1 %tobool.not.i226, label %land.lhs.true.i.i, label %if.then.i227

if.then.i227:                                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #22
  call void @fbcon_set_tileops(ptr noundef %vc, ptr noundef %5) #20
  br label %set_blitting_type.exit

land.lhs.true.i.i:                                ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #22
  %110 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %fbcon_par, align 4
  %p.i.i = getelementptr inbounds %struct.fbcon_ops, ptr %111, i32 0, i32 10
  %112 = ptrtoint ptr %p.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %p.i.i, align 4
  %con_rotate.i.i = getelementptr inbounds %struct.fbcon_display, ptr %113, i32 0, i32 7
  %114 = ptrtoint ptr %con_rotate.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %con_rotate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %115)
  %cmp.i.i = icmp slt i32 %115, 4
  %spec.select.i = select i1 %cmp.i.i, i32 %115, i32 0
  %rotate3.i.i = getelementptr inbounds %struct.fbcon_ops, ptr %111, i32 0, i32 20
  %116 = ptrtoint ptr %rotate3.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %spec.select.i, ptr %rotate3.i.i, align 4
  call void @fbcon_set_bitops(ptr noundef %104) #20
  br label %set_blitting_type.exit

set_blitting_type.exit:                           ; preds = %land.lhs.true.i.i, %if.then.i227
  %cursor_reset = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 15
  %117 = ptrtoint ptr %cursor_reset to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 1, ptr %cursor_reset, align 4
  %rotate_font = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 6
  %118 = ptrtoint ptr %rotate_font to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rotate_font, align 4
  %tobool69.not = icmp eq ptr %119, null
  br i1 %tobool69.not, label %set_blitting_type.exit.if.end75_crit_edge, label %land.lhs.true70

set_blitting_type.exit.if.end75_crit_edge:        ; preds = %set_blitting_type.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end75

land.lhs.true70:                                  ; preds = %set_blitting_type.exit
  %call72 = call i32 %119(ptr noundef %5, ptr noundef %vc) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %land.lhs.true70.if.end75_crit_edge, label %if.then74

land.lhs.true70.if.end75_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end75

if.then74:                                        ; preds = %land.lhs.true70
  %rotate = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 20
  %120 = ptrtoint ptr %rotate to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %rotate, align 4
  %121 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %fbcon_par, align 4
  %123 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %vc_num, align 4
  %idxprom.i230 = zext i16 %124 to i32
  %arrayidx.i231 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom.i230
  %p.i232 = getelementptr inbounds %struct.fbcon_ops, ptr %122, i32 0, i32 10
  %125 = ptrtoint ptr %p.i232 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %arrayidx.i231, ptr %p.i232, align 4
  %126 = ptrtoint ptr %flags.i224 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %flags.i224, align 4
  %and.i234 = and i32 %127, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i234)
  %tobool.not.i235 = icmp eq i32 %and.i234, 0
  br i1 %tobool.not.i235, label %land.lhs.true.i.i242, label %if.then.i236

if.then.i236:                                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #22
  call void @fbcon_set_tileops(ptr noundef %vc, ptr noundef %5) #20
  br label %if.end75

land.lhs.true.i.i242:                             ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #22
  %128 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %fbcon_par, align 4
  %p.i.i237 = getelementptr inbounds %struct.fbcon_ops, ptr %129, i32 0, i32 10
  %130 = ptrtoint ptr %p.i.i237 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %p.i.i237, align 4
  %con_rotate.i.i238 = getelementptr inbounds %struct.fbcon_display, ptr %131, i32 0, i32 7
  %132 = ptrtoint ptr %con_rotate.i.i238 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %con_rotate.i.i238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %133)
  %cmp.i.i239 = icmp slt i32 %133, 4
  %spec.select.i240 = select i1 %cmp.i.i239, i32 %133, i32 0
  %rotate3.i.i241 = getelementptr inbounds %struct.fbcon_ops, ptr %129, i32 0, i32 20
  %134 = ptrtoint ptr %rotate3.i.i241 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %spec.select.i240, ptr %rotate3.i.i241, align 4
  call void @fbcon_set_bitops(ptr noundef %122) #20
  br label %if.end75

if.end75:                                         ; preds = %land.lhs.true.i.i242, %if.then.i236, %land.lhs.true70.if.end75_crit_edge, %set_blitting_type.exit.if.end75_crit_edge
  %fix = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 7
  %call77 = call i32 @fb_get_color_depth(ptr noundef %var32, ptr noundef %fix) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call77)
  %cmp78.not = icmp eq i32 %call77, 1
  %vc_can_do_color = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 37
  %135 = ptrtoint ptr %vc_can_do_color to i32
  call void @__asan_load2_noabort(i32 %135)
  %bf.load = load i16, ptr %vc_can_do_color, align 4
  %bf.shl = select i1 %cmp78.not, i16 0, i16 16
  %bf.clear = and i16 %bf.load, -17
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %vc_can_do_color, align 4
  %conv84 = select i1 %cmp78.not, i16 2048, i16 30464
  %vc_complement_mask = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 24
  %136 = ptrtoint ptr %vc_complement_mask to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %conv84, ptr %vc_complement_mask, align 4
  %charcount = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 2
  %137 = ptrtoint ptr %charcount to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %charcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %138)
  %cmp85 = icmp ugt i32 %138, 256
  br i1 %cmp85, label %if.then87, label %if.end75.if.end91_crit_edge

if.end75.if.end91_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end91

if.then87:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #22
  %139 = shl nuw i16 %conv84, 1
  %140 = ptrtoint ptr %vc_complement_mask to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %139, ptr %vc_complement_mask, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then87, %if.end75.if.end91_crit_edge
  call fastcc void @updatescrollmode(ptr noundef %arrayidx, ptr noundef %5, ptr noundef %vc)
  %scrollmode.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 2
  %141 = ptrtoint ptr %scrollmode.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %scrollmode.i, align 4
  %143 = zext i16 %142 to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values.89)
  switch i16 %142, label %if.end91.sw.epilog_crit_edge [
    i16 3, label %sw.bb
    i16 2, label %if.end91.sw.bb95_crit_edge
    i16 5, label %if.end91.sw.bb95_crit_edge263
  ]

if.end91.sw.bb95_crit_edge263:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb95

if.end91.sw.bb95_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb95

if.end91.sw.epilog_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #22
  %vrows = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 5
  %144 = ptrtoint ptr %vrows to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %vrows, align 4
  %vc_rows94 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 5
  %146 = ptrtoint ptr %vc_rows94 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %vc_rows94, align 4
  %sub = sub i32 %145, %147
  br label %sw.epilog

sw.bb95:                                          ; preds = %if.end91.sw.bb95_crit_edge, %if.end91.sw.bb95_crit_edge263
  %vrows96 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 5
  %148 = ptrtoint ptr %vrows96 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %vrows96, align 4
  %vc_rows97 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 5
  %150 = ptrtoint ptr %vc_rows97 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %vc_rows97, align 4
  %mul.neg = mul i32 %151, -2
  %sub98 = add i32 %mul.neg, %149
  %152 = call i32 @llvm.smax.i32(i32 %sub98, i32 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb95, %sw.bb, %if.end91.sw.epilog_crit_edge
  %.sink = phi i32 [ %152, %sw.bb95 ], [ %sub, %sw.bb ], [ 0, %if.end91.sw.epilog_crit_edge ]
  store i32 %.sink, ptr @scrollback_phys_max, align 4
  store i32 0, ptr @scrollback_max, align 4
  %153 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %fbcon_par, align 4
  %155 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %cmp.not.i246 = icmp eq i32 %156, 0
  br i1 %cmp.not.i246, label %lor.lhs.false.i249, label %sw.epilog.if.end109_crit_edge

sw.epilog.if.end109_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end109

lor.lhs.false.i249:                               ; preds = %sw.epilog
  %vc_mode.i247 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 17
  %157 = ptrtoint ptr %vc_mode.i247 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %vc_mode.i247, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %cmp1.not.i248 = icmp eq i8 %158, 0
  br i1 %cmp1.not.i248, label %fbcon_is_inactive.exit254, label %lor.lhs.false.i249.if.end109_crit_edge

lor.lhs.false.i249.if.end109_crit_edge:           ; preds = %lor.lhs.false.i249
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end109

fbcon_is_inactive.exit254:                        ; preds = %lor.lhs.false.i249
  %graphics.i250 = getelementptr inbounds %struct.fbcon_ops, ptr %154, i32 0, i32 17
  %159 = ptrtoint ptr %graphics.i250 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %graphics.i250, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool.i251.not = icmp eq i32 %160, 0
  br i1 %tobool.i251.not, label %if.then105, label %fbcon_is_inactive.exit254.if.end109_crit_edge

fbcon_is_inactive.exit254.if.end109_crit_edge:    ; preds = %fbcon_is_inactive.exit254
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end109

if.then105:                                       ; preds = %fbcon_is_inactive.exit254
  call void @__sanitizer_cov_trace_pc() #22
  %yscroll = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 4
  %161 = ptrtoint ptr %yscroll to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 0, ptr %yscroll, align 4
  %yoffset = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 7, i32 5
  %162 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %yoffset, align 4
  %xoffset = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 7, i32 4
  %163 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %xoffset, align 4
  %update_start = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 5
  %164 = ptrtoint ptr %update_start to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %update_start, align 4
  %call108 = call i32 %165(ptr noundef %5) #20
  br label %if.end109

if.end109:                                        ; preds = %if.then105, %fbcon_is_inactive.exit254.if.end109_crit_edge, %lor.lhs.false.i249.if.end109_crit_edge, %sw.epilog.if.end109_crit_edge
  call void @fbcon_set_palette(ptr noundef %vc, ptr noundef nonnull @color_table)
  %166 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %vc_num, align 4
  %idxprom.i256 = zext i16 %167 to i32
  %arrayidx.i257 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom.i256
  %168 = ptrtoint ptr %arrayidx.i257 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx.i257, align 1
  %idxprom1.i = sext i8 %169 to i32
  %arrayidx2.i = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom1.i
  %170 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx2.i, align 4
  %fbcon_par.i258 = getelementptr inbounds %struct.fb_info, ptr %171, i32 0, i32 29
  %172 = ptrtoint ptr %fbcon_par.i258 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %fbcon_par.i258, align 4
  %state.i.i = getelementptr inbounds %struct.fb_info, ptr %171, i32 0, i32 28
  %174 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %cmp.not.i.i = icmp eq i32 %175, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end109.fbcon_clear_margins.exit_crit_edge

if.end109.fbcon_clear_margins.exit_crit_edge:     ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #22
  br label %fbcon_clear_margins.exit

lor.lhs.false.i.i:                                ; preds = %if.end109
  %vc_mode.i.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 17
  %176 = ptrtoint ptr %vc_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %vc_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %cmp1.not.i.i = icmp eq i8 %177, 0
  br i1 %cmp1.not.i.i, label %fbcon_is_inactive.exit.i, label %lor.lhs.false.i.i.fbcon_clear_margins.exit_crit_edge

lor.lhs.false.i.i.fbcon_clear_margins.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %fbcon_clear_margins.exit

fbcon_is_inactive.exit.i:                         ; preds = %lor.lhs.false.i.i
  %graphics.i.i = getelementptr inbounds %struct.fbcon_ops, ptr %173, i32 0, i32 17
  %178 = ptrtoint ptr %graphics.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %graphics.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool.i.not.i = icmp eq i32 %179, 0
  br i1 %tobool.i.not.i, label %if.then.i259, label %fbcon_is_inactive.exit.i.fbcon_clear_margins.exit_crit_edge

fbcon_is_inactive.exit.i.fbcon_clear_margins.exit_crit_edge: ; preds = %fbcon_is_inactive.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %fbcon_clear_margins.exit

if.then.i259:                                     ; preds = %fbcon_is_inactive.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  %clear_margins.i = getelementptr inbounds %struct.fbcon_ops, ptr %173, i32 0, i32 3
  %180 = ptrtoint ptr %clear_margins.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %clear_margins.i, align 4
  %182 = load i32, ptr @margin_color, align 4
  call void %181(ptr noundef %vc, ptr noundef %171, i32 noundef %182, i32 noundef 0) #20
  br label %fbcon_clear_margins.exit

fbcon_clear_margins.exit:                         ; preds = %if.then.i259, %fbcon_is_inactive.exit.i.fbcon_clear_margins.exit_crit_edge, %lor.lhs.false.i.i.fbcon_clear_margins.exit_crit_edge, %if.end109.fbcon_clear_margins.exit_crit_edge
  %183 = load i32, ptr @logo_shown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %183)
  %cmp110 = icmp eq i32 %183, -2
  br i1 %cmp110, label %if.then112, label %fbcon_clear_margins.exit.cleanup_crit_edge

fbcon_clear_margins.exit.cleanup_crit_edge:       ; preds = %fbcon_clear_margins.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then112:                                       ; preds = %fbcon_clear_margins.exit
  call void @__sanitizer_cov_trace_pc() #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %184 = load i32, ptr @fg_console, align 4
  store i32 %184, ptr @logo_shown, align 4
  %rotate113 = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 20
  %185 = ptrtoint ptr %rotate113 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %rotate113, align 4
  %call114 = call i32 @fb_show_logo(ptr noundef %5, i32 noundef %186) #20
  %vc_origin = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %187 = ptrtoint ptr %vc_origin to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %vc_origin, align 4
  %vc_size_row = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 6
  %189 = ptrtoint ptr %vc_size_row to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %vc_size_row, align 4
  %vc_top115 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 12
  %191 = ptrtoint ptr %vc_top115 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %vc_top115, align 4
  %mul116 = mul i32 %192, %190
  %add = add i32 %mul116, %188
  %vc_bottom118 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 13
  %193 = ptrtoint ptr %vc_bottom118 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %vc_bottom118, align 4
  %sub120 = sub i32 %194, %192
  %mul121 = mul i32 %sub120, %190
  %div209 = lshr i32 %mul121, 1
  call void @update_region(ptr noundef %vc, i32 noundef %add, i32 noundef %div209) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then112, %fbcon_clear_margins.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then112 ], [ 1, %fbcon_clear_margins.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %var) #20
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbcon_blank(ptr noundef %vc, i32 noundef %blank, i32 noundef %mode_switch) #1 align 64 {
entry:
  %var = alloca %struct.fb_var_screeninfo, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom1 = sext i8 %3 to i32
  %arrayidx2 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbcon_par, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode_switch)
  %tobool.not = icmp eq i32 %mode_switch, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %var) #20
  %var3 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6
  %8 = call ptr @memcpy(ptr %var, ptr %var3, i32 160)
  %graphics = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 17
  %9 = ptrtoint ptr %graphics to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %graphics, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blank)
  %tobool4.not = icmp eq i32 %blank, 0
  br i1 %tobool4.not, label %if.then5, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %activate = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %10 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 640, ptr %activate, align 4
  %call = call i32 @fb_set_var(ptr noundef %5, ptr noundef nonnull %var) #20
  %11 = ptrtoint ptr %graphics to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %graphics, align 4
  %var7 = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 7
  %12 = call ptr @memcpy(ptr %var7, ptr %var3, i32 160)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %var) #20
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %13 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fbcon_par, align 4
  %state.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 28
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end9.if.end25_crit_edge

if.end9.if.end25_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end25

lor.lhs.false.i:                                  ; preds = %if.end9
  %vc_mode.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 17
  %17 = ptrtoint ptr %vc_mode.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %vc_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp1.not.i = icmp eq i8 %18, 0
  br i1 %cmp1.not.i, label %fbcon_is_inactive.exit, label %lor.lhs.false.i.if.end25_crit_edge

lor.lhs.false.i.if.end25_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end25

fbcon_is_inactive.exit:                           ; preds = %lor.lhs.false.i
  %graphics.i = getelementptr inbounds %struct.fbcon_ops, ptr %14, i32 0, i32 17
  %19 = ptrtoint ptr %graphics.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %graphics.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not = icmp eq i32 %20, 0
  br i1 %tobool.i.not, label %if.then12, label %fbcon_is_inactive.exit.if.end25_crit_edge

fbcon_is_inactive.exit.if.end25_crit_edge:        ; preds = %fbcon_is_inactive.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end25

if.then12:                                        ; preds = %fbcon_is_inactive.exit
  %blank_state = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 16
  %21 = ptrtoint ptr %blank_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %blank_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %blank)
  %cmp.not = icmp eq i32 %22, %blank
  br i1 %cmp.not, label %if.then12.if.end21_crit_edge, label %if.then13

if.then12.if.end21_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end21

if.then13:                                        ; preds = %if.then12
  %23 = ptrtoint ptr %blank_state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %blank, ptr %blank_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blank)
  %tobool15.not = icmp eq i32 %blank, 0
  %cond = select i1 %tobool15.not, i32 1, i32 2
  call void @fbcon_cursor(ptr noundef %vc, i32 noundef %cond)
  %lnot.ext = zext i1 %tobool15.not to i32
  %cursor_flash = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 14
  %24 = ptrtoint ptr %cursor_flash to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %lnot.ext, ptr %cursor_flash, align 4
  %call17 = call i32 @fb_blank(ptr noundef %5, i32 noundef %blank) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then13.if.end21_crit_edge, label %if.then19

if.then13.if.end21_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end21

if.then19:                                        ; preds = %if.then13
  br i1 %tobool15.not, label %if.then19.if.then23_crit_edge, label %if.end21.thread79

if.then19.if.then23_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then23

if.end21.thread79:                                ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #22
  %vc_hi_font_mask.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %25 = ptrtoint ptr %vc_hi_font_mask.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vc_hi_font_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool1.not.i = icmp eq i16 %26, 0
  %conv2.i = select i1 %tobool1.not.i, i16 255, i16 511
  %vc_video_erase_char.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 29
  %27 = ptrtoint ptr %vc_video_erase_char.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vc_video_erase_char.i, align 4
  %and.i = and i16 %conv2.i, %28
  store i16 %and.i, ptr %vc_video_erase_char.i, align 4
  %vc_rows.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 5
  %29 = ptrtoint ptr %vc_rows.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vc_rows.i, align 4
  %vc_cols.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %31 = ptrtoint ptr %vc_cols.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vc_cols.i, align 4
  call void @fbcon_clear(ptr noundef %vc, i32 noundef 0, i32 noundef 0, i32 noundef %30, i32 noundef %32) #20
  %33 = ptrtoint ptr %vc_video_erase_char.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %28, ptr %vc_video_erase_char.i, align 4
  br label %if.end25

if.end21:                                         ; preds = %if.then13.if.end21_crit_edge, %if.then12.if.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blank)
  %tobool22.not = icmp eq i32 %blank, 0
  br i1 %tobool22.not, label %if.end21.if.then23_crit_edge, label %if.end21.if.end25_crit_edge

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end25

if.end21.if.then23_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then23

if.then23:                                        ; preds = %if.end21.if.then23_crit_edge, %if.then19.if.then23_crit_edge
  call void @redraw_screen(ptr noundef %vc, i32 noundef 0) #20
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21.if.end25_crit_edge, %if.end21.thread79, %fbcon_is_inactive.exit.if.end25_crit_edge, %lor.lhs.false.i.if.end25_crit_edge, %if.end9.if.end25_crit_edge
  br i1 %tobool.not, label %lor.lhs.false, label %if.end25.if.then32_crit_edge

if.end25.if.then32_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then32

lor.lhs.false:                                    ; preds = %if.end25
  %34 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fbcon_par, align 4
  %36 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.not.i64 = icmp eq i32 %37, 0
  br i1 %cmp.not.i64, label %lor.lhs.false.i67, label %lor.lhs.false.if.then32_crit_edge

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then32

lor.lhs.false.i67:                                ; preds = %lor.lhs.false
  %vc_mode.i65 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 17
  %38 = ptrtoint ptr %vc_mode.i65 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %vc_mode.i65, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp1.not.i66 = icmp eq i8 %39, 0
  br i1 %cmp1.not.i66, label %fbcon_is_inactive.exit72, label %lor.lhs.false.i67.if.then32_crit_edge

lor.lhs.false.i67.if.then32_crit_edge:            ; preds = %lor.lhs.false.i67
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then32

fbcon_is_inactive.exit72:                         ; preds = %lor.lhs.false.i67
  %graphics.i68 = getelementptr inbounds %struct.fbcon_ops, ptr %35, i32 0, i32 17
  %40 = ptrtoint ptr %graphics.i68 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %graphics.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i69.not = icmp eq i32 %41, 0
  br i1 %tobool.i69.not, label %lor.lhs.false29, label %fbcon_is_inactive.exit72.if.then32_crit_edge

fbcon_is_inactive.exit72.if.then32_crit_edge:     ; preds = %fbcon_is_inactive.exit72
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then32

lor.lhs.false29:                                  ; preds = %fbcon_is_inactive.exit72
  %blank_state30 = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 16
  %42 = ptrtoint ptr %blank_state30 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %blank_state30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp31.not = icmp eq i32 %43, 0
  br i1 %cmp31.not, label %if.else, label %lor.lhs.false29.if.then32_crit_edge

lor.lhs.false29.if.then32_crit_edge:              ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false29.if.then32_crit_edge, %fbcon_is_inactive.exit72.if.then32_crit_edge, %lor.lhs.false.i67.if.then32_crit_edge, %lor.lhs.false.if.then32_crit_edge, %if.end25.if.then32_crit_edge
  %44 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fbcon_par, align 4
  %func.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 9, i32 2
  %46 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %func.i, align 4
  %cmp.i = icmp eq ptr %47, @fb_flashcursor
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then32.if.end33_crit_edge

if.then32.if.end33_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end33

land.lhs.true.i:                                  ; preds = %if.then32
  %flags.i = getelementptr inbounds %struct.fbcon_ops, ptr %45, i32 0, i32 19
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags.i, align 4
  %and.i74 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i74)
  %tobool.not.i75 = icmp eq i32 %and.i74, 0
  br i1 %tobool.not.i75, label %land.lhs.true.i.if.end33_crit_edge, label %if.then.i76

land.lhs.true.i.if.end33_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end33

if.then.i76:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  %cursor_timer.i = getelementptr inbounds %struct.fbcon_ops, ptr %45, i32 0, i32 8
  %call.i = call i32 @del_timer_sync(ptr noundef %cursor_timer.i) #20
  %50 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags.i, align 4
  %and2.i = and i32 %51, -3
  store i32 %and2.i, ptr %flags.i, align 4
  br label %if.end33

if.else:                                          ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #22
  call fastcc void @fbcon_add_cursor_timer(ptr noundef %5)
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then.i76, %land.lhs.true.i.if.end33_crit_edge, %if.then32.if.end33_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbcon_set_font(ptr noundef %vc, ptr nocapture noundef readonly %font, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom1 = sext i8 %3 to i32
  %arrayidx2 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %charcount3 = getelementptr inbounds %struct.console_font, ptr %font, i32 0, i32 2
  %6 = ptrtoint ptr %charcount3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %charcount3, align 4
  %8 = ptrtoint ptr %font to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %font, align 4
  %height = getelementptr inbounds %struct.console_font, ptr %font, i32 0, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %data4 = getelementptr inbounds %struct.console_font, ptr %font, i32 0, i32 3
  %12 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data4, align 4
  %add = add i32 %9, 7
  %shr = lshr i32 %add, 3
  %14 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %7, label %entry.cleanup75_crit_edge [
    i32 256, label %entry.if.end_crit_edge
    i32 512, label %entry.if.end_crit_edge154
  ]

entry.if.end_crit_edge154:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

entry.cleanup75_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup75

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge154
  %blit_x = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 10, i32 7
  %15 = ptrtoint ptr %blit_x to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %blit_x, align 4
  %sub = add i32 %9, -1
  %shl = shl nuw i32 1, %sub
  %and = and i32 %16, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup75_crit_edge, label %lor.lhs.false

if.end.cleanup75_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup75

lor.lhs.false:                                    ; preds = %if.end
  %blit_y = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 10, i32 8
  %17 = ptrtoint ptr %blit_y to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %blit_y, align 4
  %sub10 = add i32 %11, -1
  %shl11 = shl nuw i32 1, %sub10
  %and12 = and i32 %18, %shl11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %lor.lhs.false.cleanup75_crit_edge, label %if.end15

lor.lhs.false.cleanup75_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup75

if.end15:                                         ; preds = %lor.lhs.false
  %flags.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 2
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %20, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end15.if.end18_crit_edge, label %fbcon_invalid_charcount.exit

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end18

fbcon_invalid_charcount.exit:                     ; preds = %if.end15
  %tileops.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 24
  %21 = ptrtoint ptr %tileops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tileops.i, align 4
  %fb_get_tilemax.i = getelementptr inbounds %struct.fb_tile_ops, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %fb_get_tilemax.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fb_get_tilemax.i, align 4
  %call.i = tail call i32 %24(ptr noundef %5) #20
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %7)
  %cmp.i134.not = icmp ult i32 %call.i, %7
  br i1 %cmp.i134.not, label %fbcon_invalid_charcount.exit.cleanup75_crit_edge, label %fbcon_invalid_charcount.exit.if.end18_crit_edge

fbcon_invalid_charcount.exit.if.end18_crit_edge:  ; preds = %fbcon_invalid_charcount.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end18

fbcon_invalid_charcount.exit.cleanup75_crit_edge: ; preds = %fbcon_invalid_charcount.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup75

if.end18:                                         ; preds = %fbcon_invalid_charcount.exit.if.end18_crit_edge, %if.end15.if.end18_crit_edge
  %mul = mul i32 %shr, %11
  %mul19 = mul i32 %mul, %7
  %add20 = add i32 %mul19, 16
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add20, i32 noundef 1051840) #27
  %tobool22.not = icmp eq ptr %call9.i, null
  br i1 %tobool22.not, label %if.end18.cleanup75_crit_edge, label %for.body.lr.ph

if.end18.cleanup75_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup75

for.body.lr.ph:                                   ; preds = %if.end18
  %25 = ptrtoint ptr %call9.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %call9.i, align 128
  %add.ptr = getelementptr i8, ptr %call9.i, i32 16
  %arrayidx25 = getelementptr i8, ptr %call9.i, i32 8
  %26 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul19, ptr %arrayidx25, align 8
  %arrayidx26 = getelementptr i8, ptr %call9.i, i32 12
  %27 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx26, align 4
  %mul31 = shl i32 %shr, 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0146 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul29 = mul i32 %mul, %i.0146
  %add.ptr30 = getelementptr i8, ptr %add.ptr, i32 %mul29
  %mul32 = mul i32 %mul31, %i.0146
  %add.ptr33 = getelementptr i8, ptr %13, i32 %mul32
  %28 = call ptr @memcpy(ptr %add.ptr30, ptr %add.ptr33, i32 %mul)
  %inc = add nuw i32 %i.0146, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %for.body
  %call35 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %add.ptr, i32 noundef %mul19) #28
  %29 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call35, ptr %call9.i, align 128
  %30 = load i32, ptr @first_fb_vc, align 4
  %31 = load i32, ptr @last_fb_vc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %31)
  %cmp38.not147 = icmp sgt i32 %30, %31
  br i1 %cmp38.not147, label %for.end.for.end71_crit_edge, label %for.end.for.body39_crit_edge

for.end.for.body39_crit_edge:                     ; preds = %for.end
  br label %for.body39

for.end.for.end71_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end71

for.body39:                                       ; preds = %for.inc69.for.body39_crit_edge, %for.end.for.body39_crit_edge
  %i.1148 = phi i32 [ %inc70, %for.inc69.for.body39_crit_edge ], [ %30, %for.end.for.body39_crit_edge ]
  %arrayidx40 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %i.1148
  %32 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx40, align 4
  %arrayidx41 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %i.1148
  %userfont = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %i.1148, i32 1
  %34 = ptrtoint ptr %userfont to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %userfont, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool42.not = icmp eq i32 %35, 0
  br i1 %tobool42.not, label %for.body39.for.inc69_crit_edge, label %land.lhs.true43

for.body39.for.inc69_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc69

land.lhs.true43:                                  ; preds = %for.body39
  %36 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx41, align 4
  %tobool45.not = icmp eq ptr %37, null
  br i1 %tobool45.not, label %land.lhs.true43.for.inc69_crit_edge, label %land.lhs.true46

land.lhs.true43.for.inc69_crit_edge:              ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc69

land.lhs.true46:                                  ; preds = %land.lhs.true43
  %arrayidx49 = getelementptr i32, ptr %37, i32 -4
  %38 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx49, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %call35)
  %cmp50 = icmp eq i32 %39, %call35
  br i1 %cmp50, label %land.lhs.true51, label %land.lhs.true46.for.inc69_crit_edge

land.lhs.true46.for.inc69_crit_edge:              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc69

land.lhs.true51:                                  ; preds = %land.lhs.true46
  %arrayidx54 = getelementptr i32, ptr %37, i32 -2
  %40 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx54, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %mul19)
  %cmp55 = icmp eq i32 %41, %mul19
  br i1 %cmp55, label %land.lhs.true56, label %land.lhs.true51.for.inc69_crit_edge

land.lhs.true51.for.inc69_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc69

land.lhs.true56:                                  ; preds = %land.lhs.true51
  %vc_font = getelementptr inbounds %struct.vc_data, ptr %33, i32 0, i32 28
  %42 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vc_font, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %9)
  %cmp58 = icmp eq i32 %43, %9
  br i1 %cmp58, label %land.lhs.true59, label %land.lhs.true56.for.inc69_crit_edge

land.lhs.true56.for.inc69_crit_edge:              ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc69

land.lhs.true59:                                  ; preds = %land.lhs.true56
  %bcmp = tail call i32 @bcmp(ptr nonnull %37, ptr %add.ptr, i32 %mul19) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool63.not = icmp eq i32 %bcmp, 0
  br i1 %tobool63.not, label %cleanup, label %land.lhs.true59.for.inc69_crit_edge

land.lhs.true59.for.inc69_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc69

cleanup:                                          ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @kfree(ptr noundef nonnull %call9.i) #20
  %44 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx41, align 4
  br label %for.end71

for.inc69:                                        ; preds = %land.lhs.true59.for.inc69_crit_edge, %land.lhs.true56.for.inc69_crit_edge, %land.lhs.true51.for.inc69_crit_edge, %land.lhs.true46.for.inc69_crit_edge, %land.lhs.true43.for.inc69_crit_edge, %for.body39.for.inc69_crit_edge
  %inc70 = add i32 %i.1148, 1
  %cmp38.not = icmp sgt i32 %inc70, %31
  br i1 %cmp38.not, label %for.inc69.for.end71_crit_edge, label %for.inc69.for.body39_crit_edge

for.inc69.for.body39_crit_edge:                   ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body39

for.inc69.for.end71_crit_edge:                    ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end71

for.end71:                                        ; preds = %for.inc69.for.end71_crit_edge, %cleanup, %for.end.for.end71_crit_edge
  %new_data.2 = phi ptr [ %45, %cleanup ], [ %add.ptr, %for.end.for.end71_crit_edge ], [ %add.ptr, %for.inc69.for.end71_crit_edge ]
  %46 = ptrtoint ptr %font to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %font, align 4
  %48 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %height, align 4
  tail call fastcc void @fbcon_do_set_font(ptr noundef %vc, i32 noundef %47, i32 noundef %49, i32 noundef %7, ptr noundef %new_data.2, i32 noundef 1)
  br label %cleanup75

cleanup75:                                        ; preds = %for.end71, %if.end18.cleanup75_crit_edge, %fbcon_invalid_charcount.exit.cleanup75_crit_edge, %lor.lhs.false.cleanup75_crit_edge, %if.end.cleanup75_crit_edge, %entry.cleanup75_crit_edge
  %retval.0 = phi i32 [ 0, %for.end71 ], [ -22, %entry.cleanup75_crit_edge ], [ -22, %lor.lhs.false.cleanup75_crit_edge ], [ -22, %if.end.cleanup75_crit_edge ], [ -22, %fbcon_invalid_charcount.exit.cleanup75_crit_edge ], [ -12, %if.end18.cleanup75_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbcon_get_font(ptr nocapture noundef readonly %vc, ptr nocapture noundef %font) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_font = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28
  %data = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %data2 = getelementptr inbounds %struct.console_font, ptr %font, i32 0, i32 3
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %4 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vc_font, align 4
  %6 = ptrtoint ptr %font to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %font, align 4
  %height = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  %height6 = getelementptr inbounds %struct.console_font, ptr %font, i32 0, i32 1
  %9 = ptrtoint ptr %height6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %height6, align 4
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %10 = ptrtoint ptr %vc_hi_font_mask to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vc_hi_font_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  %cond = select i1 %tobool.not, i32 256, i32 512
  %charcount = getelementptr inbounds %struct.console_font, ptr %font, i32 0, i32 2
  %12 = ptrtoint ptr %charcount to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond, ptr %charcount, align 4
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cmp = icmp ult i32 %5, 9
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 4
  %mul = mul i32 %14, %cond
  %arrayidx = getelementptr i32, ptr %1, i32 -2
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %16)
  %cmp15 = icmp ugt i32 %mul, %16
  br i1 %cmp15, label %if.then11.cleanup_crit_edge, label %for.cond.preheader

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.cond.preheader:                               ; preds = %if.then11
  %17 = ptrtoint ptr %charcount to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %charcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp20217.not = icmp eq i32 %18, 0
  br i1 %cmp20217.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub = sub i32 32, %14
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0220 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %data1.0219 = phi ptr [ %3, %for.body.lr.ph ], [ %add.ptr22, %for.body.for.body_crit_edge ]
  %fontdata.0218 = phi ptr [ %1, %for.body.lr.ph ], [ %add.ptr23, %for.body.for.body_crit_edge ]
  %19 = call ptr @memcpy(ptr %data1.0219, ptr %fontdata.0218, i32 %14)
  %add.ptr = getelementptr i8, ptr %data1.0219, i32 %14
  %20 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  %add.ptr22 = getelementptr i8, ptr %data1.0219, i32 32
  %add.ptr23 = getelementptr i8, ptr %fontdata.0218, i32 %14
  %inc = add nuw i32 %i.0220, 1
  %21 = ptrtoint ptr %charcount to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %charcount, align 4
  %cmp20 = icmp ult i32 %inc, %22
  br i1 %cmp20, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %5)
  %cmp25 = icmp ult i32 %5, 17
  br i1 %cmp25, label %if.then27, label %if.else50

if.then27:                                        ; preds = %if.else
  %23 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height, align 4
  %mul30 = shl i32 %24, 1
  %mul32 = mul i32 %mul30, %cond
  %arrayidx33 = getelementptr i32, ptr %1, i32 -2
  %25 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul32, i32 %26)
  %cmp34 = icmp ugt i32 %mul32, %26
  br i1 %cmp34, label %if.then27.cleanup_crit_edge, label %for.cond38.preheader

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.cond38.preheader:                             ; preds = %if.then27
  %27 = ptrtoint ptr %charcount to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %charcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp40213.not = icmp eq i32 %28, 0
  br i1 %cmp40213.not, label %for.cond38.preheader.cleanup_crit_edge, label %for.body42.lr.ph

for.cond38.preheader.cleanup_crit_edge:           ; preds = %for.cond38.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body42.lr.ph:                                 ; preds = %for.cond38.preheader
  %sub44 = sub i32 64, %mul30
  br label %for.body42

for.body42:                                       ; preds = %for.body42.for.body42_crit_edge, %for.body42.lr.ph
  %i.1216 = phi i32 [ 0, %for.body42.lr.ph ], [ %inc48, %for.body42.for.body42_crit_edge ]
  %data1.1215 = phi ptr [ %3, %for.body42.lr.ph ], [ %add.ptr45, %for.body42.for.body42_crit_edge ]
  %fontdata.1214 = phi ptr [ %1, %for.body42.lr.ph ], [ %add.ptr46, %for.body42.for.body42_crit_edge ]
  %29 = call ptr @memcpy(ptr %data1.1215, ptr %fontdata.1214, i32 %mul30)
  %add.ptr43 = getelementptr i8, ptr %data1.1215, i32 %mul30
  %30 = call ptr @memset(ptr %add.ptr43, i32 0, i32 %sub44)
  %add.ptr45 = getelementptr i8, ptr %data1.1215, i32 64
  %add.ptr46 = getelementptr i8, ptr %fontdata.1214, i32 %mul30
  %inc48 = add nuw i32 %i.1216, 1
  %31 = ptrtoint ptr %charcount to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %charcount, align 4
  %cmp40 = icmp ult i32 %inc48, %32
  br i1 %cmp40, label %for.body42.for.body42_crit_edge, label %for.body42.cleanup_crit_edge

for.body42.cleanup_crit_edge:                     ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body42.for.body42_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body42

if.else50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %5)
  %cmp52 = icmp ult i32 %5, 25
  %33 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height, align 4
  br i1 %cmp52, label %if.then54, label %if.else93

if.then54:                                        ; preds = %if.else50
  %mul58 = shl nuw nsw i32 %cond, 2
  %mul59 = mul i32 %mul58, %34
  %arrayidx60 = getelementptr i32, ptr %1, i32 -2
  %35 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul59, i32 %36)
  %cmp61 = icmp ugt i32 %mul59, %36
  br i1 %cmp61, label %if.then54.cleanup_crit_edge, label %for.cond65.preheader

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.cond65.preheader:                             ; preds = %if.then54
  %37 = ptrtoint ptr %charcount to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %charcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp67209.not = icmp eq i32 %38, 0
  br i1 %cmp67209.not, label %for.cond65.preheader.cleanup_crit_edge, label %for.cond65.preheader.for.cond70.preheader_crit_edge

for.cond65.preheader.for.cond70.preheader_crit_edge: ; preds = %for.cond65.preheader
  br label %for.cond70.preheader

for.cond65.preheader.cleanup_crit_edge:           ; preds = %for.cond65.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.cond70.preheader:                             ; preds = %for.end84.for.cond70.preheader_crit_edge, %for.cond65.preheader.for.cond70.preheader_crit_edge
  %i.2212 = phi i32 [ %inc91, %for.end84.for.cond70.preheader_crit_edge ], [ 0, %for.cond65.preheader.for.cond70.preheader_crit_edge ]
  %data1.2211 = phi ptr [ %add.ptr89, %for.end84.for.cond70.preheader_crit_edge ], [ %3, %for.cond65.preheader.for.cond70.preheader_crit_edge ]
  %fontdata.2210 = phi ptr [ %fontdata.3.lcssa, %for.end84.for.cond70.preheader_crit_edge ], [ %1, %for.cond65.preheader.for.cond70.preheader_crit_edge ]
  %39 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp73203.not = icmp eq i32 %40, 0
  br i1 %cmp73203.not, label %for.cond70.preheader.for.end84_crit_edge, label %for.cond70.preheader.for.body75_crit_edge

for.cond70.preheader.for.body75_crit_edge:        ; preds = %for.cond70.preheader
  br label %for.body75

for.cond70.preheader.for.end84_crit_edge:         ; preds = %for.cond70.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end84

for.body75:                                       ; preds = %for.body75.for.body75_crit_edge, %for.cond70.preheader.for.body75_crit_edge
  %j.0206 = phi i32 [ %inc83, %for.body75.for.body75_crit_edge ], [ 0, %for.cond70.preheader.for.body75_crit_edge ]
  %data1.3205 = phi ptr [ %incdec.ptr80, %for.body75.for.body75_crit_edge ], [ %data1.2211, %for.cond70.preheader.for.body75_crit_edge ]
  %fontdata.3204 = phi ptr [ %add.ptr81, %for.body75.for.body75_crit_edge ], [ %fontdata.2210, %for.cond70.preheader.for.body75_crit_edge ]
  %41 = ptrtoint ptr %fontdata.3204 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %fontdata.3204, align 1
  %incdec.ptr = getelementptr i8, ptr %data1.3205, i32 1
  %43 = ptrtoint ptr %data1.3205 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %data1.3205, align 1
  %arrayidx77 = getelementptr i8, ptr %fontdata.3204, i32 1
  %44 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx77, align 1
  %incdec.ptr78 = getelementptr i8, ptr %data1.3205, i32 2
  %46 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %incdec.ptr, align 1
  %arrayidx79 = getelementptr i8, ptr %fontdata.3204, i32 2
  %47 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx79, align 1
  %incdec.ptr80 = getelementptr i8, ptr %data1.3205, i32 3
  %49 = ptrtoint ptr %incdec.ptr78 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %incdec.ptr78, align 1
  %add.ptr81 = getelementptr i8, ptr %fontdata.3204, i32 4
  %inc83 = add nuw i32 %j.0206, 1
  %50 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %height, align 4
  %cmp73 = icmp ult i32 %inc83, %51
  br i1 %cmp73, label %for.body75.for.body75_crit_edge, label %for.body75.for.end84_crit_edge

for.body75.for.end84_crit_edge:                   ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end84

for.body75.for.body75_crit_edge:                  ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body75

for.end84:                                        ; preds = %for.body75.for.end84_crit_edge, %for.cond70.preheader.for.end84_crit_edge
  %fontdata.3.lcssa = phi ptr [ %fontdata.2210, %for.cond70.preheader.for.end84_crit_edge ], [ %add.ptr81, %for.body75.for.end84_crit_edge ]
  %data1.3.lcssa = phi ptr [ %data1.2211, %for.cond70.preheader.for.end84_crit_edge ], [ %incdec.ptr80, %for.body75.for.end84_crit_edge ]
  %j.0.lcssa = phi i32 [ 0, %for.cond70.preheader.for.end84_crit_edge ], [ %inc83, %for.body75.for.end84_crit_edge ]
  %sub85 = sub i32 32, %j.0.lcssa
  %mul86 = mul i32 %sub85, 3
  %52 = call ptr @memset(ptr %data1.3.lcssa, i32 0, i32 %mul86)
  %add.ptr89 = getelementptr i8, ptr %data1.3.lcssa, i32 %mul86
  %inc91 = add nuw i32 %i.2212, 1
  %53 = ptrtoint ptr %charcount to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %charcount, align 4
  %cmp67 = icmp ult i32 %inc91, %54
  br i1 %cmp67, label %for.end84.for.cond70.preheader_crit_edge, label %for.end84.cleanup_crit_edge

for.end84.cleanup_crit_edge:                      ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.end84.for.cond70.preheader_crit_edge:         ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond70.preheader

if.else93:                                        ; preds = %if.else50
  %mul96 = shl i32 %34, 2
  %mul98 = mul i32 %mul96, %cond
  %arrayidx99 = getelementptr i32, ptr %1, i32 -2
  %55 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx99, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul98, i32 %56)
  %cmp100 = icmp ugt i32 %mul98, %56
  br i1 %cmp100, label %if.else93.cleanup_crit_edge, label %for.cond104.preheader

if.else93.cleanup_crit_edge:                      ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.cond104.preheader:                            ; preds = %if.else93
  %57 = ptrtoint ptr %charcount to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %charcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp106199.not = icmp eq i32 %58, 0
  br i1 %cmp106199.not, label %for.cond104.preheader.cleanup_crit_edge, label %for.body108.lr.ph

for.cond104.preheader.cleanup_crit_edge:          ; preds = %for.cond104.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body108.lr.ph:                                ; preds = %for.cond104.preheader
  %sub110 = sub i32 128, %mul96
  br label %for.body108

for.body108:                                      ; preds = %for.body108.for.body108_crit_edge, %for.body108.lr.ph
  %i.3202 = phi i32 [ 0, %for.body108.lr.ph ], [ %inc114, %for.body108.for.body108_crit_edge ]
  %data1.4201 = phi ptr [ %3, %for.body108.lr.ph ], [ %add.ptr111, %for.body108.for.body108_crit_edge ]
  %fontdata.4200 = phi ptr [ %1, %for.body108.lr.ph ], [ %add.ptr112, %for.body108.for.body108_crit_edge ]
  %59 = call ptr @memcpy(ptr %data1.4201, ptr %fontdata.4200, i32 %mul96)
  %add.ptr109 = getelementptr i8, ptr %data1.4201, i32 %mul96
  %60 = call ptr @memset(ptr %add.ptr109, i32 0, i32 %sub110)
  %add.ptr111 = getelementptr i8, ptr %data1.4201, i32 128
  %add.ptr112 = getelementptr i8, ptr %fontdata.4200, i32 %mul96
  %inc114 = add nuw i32 %i.3202, 1
  %61 = ptrtoint ptr %charcount to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %charcount, align 4
  %cmp106 = icmp ult i32 %inc114, %62
  br i1 %cmp106, label %for.body108.for.body108_crit_edge, label %for.body108.cleanup_crit_edge

for.body108.cleanup_crit_edge:                    ; preds = %for.body108
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body108.for.body108_crit_edge:                ; preds = %for.body108
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body108

cleanup:                                          ; preds = %for.body108.cleanup_crit_edge, %for.cond104.preheader.cleanup_crit_edge, %if.else93.cleanup_crit_edge, %for.end84.cleanup_crit_edge, %for.cond65.preheader.cleanup_crit_edge, %if.then54.cleanup_crit_edge, %for.body42.cleanup_crit_edge, %for.cond38.preheader.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.then11.cleanup_crit_edge ], [ -22, %if.then27.cleanup_crit_edge ], [ -22, %if.then54.cleanup_crit_edge ], [ -22, %if.else93.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.cond38.preheader.cleanup_crit_edge ], [ 0, %for.cond65.preheader.cleanup_crit_edge ], [ 0, %for.cond104.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ], [ 0, %for.body42.cleanup_crit_edge ], [ 0, %for.end84.cleanup_crit_edge ], [ 0, %for.body108.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbcon_set_def_font(ptr noundef %vc, ptr nocapture noundef writeonly %font, ptr noundef %name) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom1 = sext i8 %3 to i32
  %arrayidx2 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yres, align 4
  %blit_x = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 10, i32 7
  %10 = ptrtoint ptr %blit_x to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %blit_x, align 4
  %blit_y = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 10, i32 8
  %12 = ptrtoint ptr %blit_y to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blit_y, align 4
  %call = tail call ptr @get_default_font(i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13) #20
  br label %if.end8

if.else:                                          ; preds = %entry
  %call5 = tail call ptr @find_font(ptr noundef nonnull %name) #20
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.else.cleanup_crit_edge, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end8:                                          ; preds = %if.else.if.end8_crit_edge, %if.then
  %f.0 = phi ptr [ %call5, %if.else.if.end8_crit_edge ], [ %call, %if.then ]
  %width = getelementptr inbounds %struct.font_desc, ptr %f.0, i32 0, i32 2
  %14 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width, align 4
  %16 = ptrtoint ptr %font to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %font, align 4
  %height = getelementptr inbounds %struct.font_desc, ptr %f.0, i32 0, i32 3
  %17 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height, align 4
  %height10 = getelementptr inbounds %struct.console_font, ptr %font, i32 0, i32 1
  %19 = ptrtoint ptr %height10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %height10, align 4
  %20 = load i32, ptr %width, align 4
  %21 = load i32, ptr %height, align 4
  %charcount = getelementptr inbounds %struct.font_desc, ptr %f.0, i32 0, i32 4
  %22 = ptrtoint ptr %charcount to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %charcount, align 4
  %data = getelementptr inbounds %struct.font_desc, ptr %f.0, i32 0, i32 5
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  tail call fastcc void @fbcon_do_set_font(ptr noundef %vc, i32 noundef %20, i32 noundef %21, i32 noundef %23, ptr noundef %25, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -2, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbcon_resize(ptr noundef %vc, i32 noundef %width, i32 noundef %height, i32 noundef %user) #1 align 64 {
entry:
  %var = alloca %struct.fb_var_screeninfo, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom1 = sext i8 %3 to i32
  %arrayidx2 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbcon_par, align 4
  %arrayidx5 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %var) #20
  %var6 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6
  %8 = call ptr @memcpy(ptr %var, ptr %var6, i32 160)
  %userfont = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 1
  %9 = ptrtoint ptr %userfont to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %userfont, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.if.end23_crit_edge, label %land.lhs.true

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end23

land.lhs.true:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 3
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %arrayidx7 = getelementptr i32, ptr %12, i32 -2
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end23_crit_edge, label %if.then

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end23

if.then:                                          ; preds = %land.lhs.true
  %vc_font = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28
  %15 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vc_font, align 4
  %add = add i32 %16, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add)
  %cmp = icmp ult i32 %add, 8
  br i1 %cmp, label %if.then.cleanup165_crit_edge, label %if.end

if.then.cleanup165_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup165

if.end:                                           ; preds = %if.then
  %shr = lshr i32 %add, 3
  %height13 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %17 = ptrtoint ptr %height13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height13, align 4
  %mul = mul i32 %18, %shr
  %charcount = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 2
  %19 = ptrtoint ptr %charcount to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %charcount, align 4
  %mul15 = mul i32 %mul, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %mul15, i32 %14)
  %cmp19.not = icmp sgt i32 %mul15, %14
  br i1 %cmp19.not, label %if.end.cleanup165_crit_edge, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end23

if.end.cleanup165_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup165

if.end23:                                         ; preds = %if.end.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %entry.if.end23_crit_edge
  %rotate = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 20
  %21 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rotate, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %22, label %cond.false [
    i32 0, label %if.end23.cond.end_crit_edge
    i32 2, label %if.end23.cond.end_crit_edge261
  ]

if.end23.cond.end_crit_edge261:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

if.end23.cond.end_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

cond.false:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end23.cond.end_crit_edge, %if.end23.cond.end_crit_edge261
  %cond = phi i32 [ %height, %cond.false ], [ %width, %if.end23.cond.end_crit_edge ], [ %width, %if.end23.cond.end_crit_edge261 ]
  %24 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %22, label %cond.false43 [
    i32 0, label %cond.end.cond.end44_crit_edge
    i32 2, label %cond.end.cond.end44_crit_edge262
  ]

cond.end.cond.end44_crit_edge262:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end44

cond.end.cond.end44_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end44

cond.false43:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end44

cond.end44:                                       ; preds = %cond.false43, %cond.end.cond.end44_crit_edge, %cond.end.cond.end44_crit_edge262
  %cond45 = phi i32 [ %width, %cond.false43 ], [ %height, %cond.end.cond.end44_crit_edge ], [ %height, %cond.end.cond.end44_crit_edge262 ]
  %vc_font47 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28
  %25 = ptrtoint ptr %vc_font47 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vc_font47, align 4
  %height51 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %27 = ptrtoint ptr %height51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height51, align 4
  %29 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %22, label %cond.false63 [
    i32 0, label %cond.end44.cond.end64_crit_edge
    i32 2, label %cond.end44.cond.end64_crit_edge263
  ]

cond.end44.cond.end64_crit_edge263:               ; preds = %cond.end44
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end64

cond.end44.cond.end64_crit_edge:                  ; preds = %cond.end44
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end64

cond.false63:                                     ; preds = %cond.end44
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end64

cond.end64:                                       ; preds = %cond.false63, %cond.end44.cond.end64_crit_edge, %cond.end44.cond.end64_crit_edge263
  %cond65 = phi i32 [ %28, %cond.false63 ], [ %26, %cond.end44.cond.end64_crit_edge ], [ %26, %cond.end44.cond.end64_crit_edge263 ]
  %30 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %22, label %cond.false83 [
    i32 0, label %cond.end64.cond.end84_crit_edge
    i32 2, label %cond.end64.cond.end84_crit_edge264
  ]

cond.end64.cond.end84_crit_edge264:               ; preds = %cond.end64
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end84

cond.end64.cond.end84_crit_edge:                  ; preds = %cond.end64
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end84

cond.false83:                                     ; preds = %cond.end64
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end84

cond.end84:                                       ; preds = %cond.false83, %cond.end64.cond.end84_crit_edge, %cond.end64.cond.end84_crit_edge264
  %cond85 = phi i32 [ %26, %cond.false83 ], [ %28, %cond.end64.cond.end84_crit_edge ], [ %28, %cond.end64.cond.end84_crit_edge264 ]
  %mul86 = mul i32 %cond65, %cond
  %31 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul86, ptr %var, align 4
  %mul87 = mul i32 %cond85, %cond45
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %32 = ptrtoint ptr %yres to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul87, ptr %yres, align 4
  %33 = ptrtoint ptr %var6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %var6, align 4
  %sub = sub i32 %34, %mul86
  %yres92 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 1
  %35 = ptrtoint ptr %yres92 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %yres92, align 4
  %sub94 = sub i32 %36, %mul87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp95 = icmp slt i32 %sub, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %cond65)
  %cmp98 = icmp sgt i32 %sub, %cond65
  %or.cond = select i1 %cmp95, i1 true, i1 %cmp98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub94)
  %cmp101 = icmp slt i32 %sub94, 0
  %or.cond227 = select i1 %or.cond, i1 true, i1 %cmp101
  call void @__sanitizer_cov_trace_cmp4(i32 %sub94, i32 %cond85)
  %cmp104 = icmp sgt i32 %sub94, %cond85
  %or.cond228 = select i1 %or.cond227, i1 true, i1 %cmp104
  br i1 %or.cond228, label %if.then106, label %cond.end84.if.end164_crit_edge

cond.end84.if.end164_crit_edge:                   ; preds = %cond.end84
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end164

if.then106:                                       ; preds = %cond.end84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fbcon_resize.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fbcon_resize, %if.then111)) #20
          to label %do.end [label %if.then111], !srcloc !216

if.then111:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #22
  %37 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %var, align 4
  %39 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %yres, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fbcon_resize.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.53, i32 noundef %38, i32 noundef %40) #20
  br label %do.end

do.end:                                           ; preds = %if.then111, %if.then106
  %modelist = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 13
  %call115 = call ptr @fb_find_best_mode(ptr noundef nonnull %var, ptr noundef %modelist) #20
  %cmp116 = icmp eq ptr %call115, null
  br i1 %cmp116, label %do.end.cleanup165_crit_edge, label %if.end119

do.end.cleanup165_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup165

if.end119:                                        ; preds = %do.end
  %mode.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 21
  %41 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mode.i, align 4
  call void @fb_videomode_to_var(ptr noundef nonnull %var, ptr noundef %42) #20
  %xres_virtual.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 8
  %43 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %xres_virtual.i, align 4
  %xres_virtual1.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %45 = ptrtoint ptr %xres_virtual1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %xres_virtual1.i, align 4
  %yres_virtual.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 9
  %46 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %yres_virtual.i, align 4
  %yres_virtual2.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %48 = ptrtoint ptr %yres_virtual2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %yres_virtual2.i, align 4
  %bits_per_pixel.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 12
  %49 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bits_per_pixel.i, align 4
  %bits_per_pixel3.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %51 = ptrtoint ptr %bits_per_pixel3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %bits_per_pixel3.i, align 4
  %grayscale.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 13
  %52 = ptrtoint ptr %grayscale.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %grayscale.i, align 4
  %grayscale4.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 7
  %54 = ptrtoint ptr %grayscale4.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %grayscale4.i, align 4
  %nonstd.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 14
  %55 = ptrtoint ptr %nonstd.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nonstd.i, align 4
  %nonstd5.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 12
  %57 = ptrtoint ptr %nonstd5.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %nonstd5.i, align 4
  %accel_flags.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 15
  %58 = ptrtoint ptr %accel_flags.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %accel_flags.i, align 4
  %accel_flags6.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 16
  %60 = ptrtoint ptr %accel_flags6.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %accel_flags6.i, align 4
  %height.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 10
  %61 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %height.i, align 4
  %height7.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 14
  %63 = ptrtoint ptr %height7.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %height7.i, align 4
  %width.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 11
  %64 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %width.i, align 4
  %width8.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 15
  %66 = ptrtoint ptr %width8.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %width8.i, align 4
  %red.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %red9.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 17
  %67 = call ptr @memcpy(ptr %red.i, ptr %red9.i, i32 12)
  %green.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %green10.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 18
  %68 = call ptr @memcpy(ptr %green.i, ptr %green10.i, i32 12)
  %blue.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %blue11.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 19
  %69 = call ptr @memcpy(ptr %blue.i, ptr %blue11.i, i32 12)
  %transp.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %transp12.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 20
  %70 = call ptr @memcpy(ptr %transp.i, ptr %transp12.i, i32 12)
  %rotate.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 16
  %71 = ptrtoint ptr %rotate.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rotate.i, align 4
  %rotate13.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 26
  %73 = ptrtoint ptr %rotate13.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %rotate13.i, align 4
  call void @fb_videomode_to_var(ptr noundef nonnull %var, ptr noundef nonnull %call115) #20
  %74 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %var, align 4
  %div = udiv i32 %75, %cond65
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %div)
  %cmp121 = icmp ugt i32 %cond, %div
  br i1 %cmp121, label %if.end119.cleanup165_crit_edge, label %lor.lhs.false123

if.end119.cleanup165_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup165

lor.lhs.false123:                                 ; preds = %if.end119
  %76 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %yres, align 4
  %div125 = udiv i32 %77, %cond85
  call void @__sanitizer_cov_trace_cmp4(i32 %cond45, i32 %div125)
  %cmp126 = icmp ugt i32 %cond45, %div125
  br i1 %cmp126, label %lor.lhs.false123.cleanup165_crit_edge, label %do.body130

lor.lhs.false123.cleanup165_crit_edge:            ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup165

do.body130:                                       ; preds = %lor.lhs.false123
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fbcon_resize.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fbcon_resize, %if.then142)) #20
          to label %do.end147 [label %if.then142], !srcloc !216

if.then142:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #22
  %78 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %var, align 4
  %80 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %yres, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fbcon_resize.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.54, i32 noundef %79, i32 noundef %81) #20
  br label %do.end147

do.end147:                                        ; preds = %if.then142, %do.body130
  %call148 = call zeroext i1 @con_is_visible(ptr noundef %vc) #20
  br i1 %call148, label %land.lhs.true150, label %do.end147.if.end156_crit_edge

do.end147.if.end156_crit_edge:                    ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end156

land.lhs.true150:                                 ; preds = %do.end147
  %vc_mode = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 17
  %82 = ptrtoint ptr %vc_mode to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %vc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %cmp152 = icmp eq i8 %83, 0
  br i1 %cmp152, label %if.then154, label %land.lhs.true150.if.end156_crit_edge

land.lhs.true150.if.end156_crit_edge:             ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end156

if.then154:                                       ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #22
  %activate = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %84 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 128, ptr %activate, align 4
  %call155 = call i32 @fb_set_var(ptr noundef %5, ptr noundef nonnull %var) #20
  br label %if.end156

if.end156:                                        ; preds = %if.then154, %land.lhs.true150.if.end156_crit_edge, %do.end147.if.end156_crit_edge
  %xres_virtual.i232 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 2
  %85 = ptrtoint ptr %xres_virtual.i232 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %xres_virtual.i232, align 4
  %87 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %xres_virtual.i, align 4
  %yres_virtual.i234 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 3
  %88 = ptrtoint ptr %yres_virtual.i234 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %yres_virtual.i234, align 4
  %90 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %yres_virtual.i, align 4
  %bits_per_pixel.i236 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 6
  %91 = ptrtoint ptr %bits_per_pixel.i236 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bits_per_pixel.i236, align 4
  %93 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %bits_per_pixel.i, align 4
  %grayscale.i238 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 7
  %94 = ptrtoint ptr %grayscale.i238 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %grayscale.i238, align 4
  %96 = ptrtoint ptr %grayscale.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %grayscale.i, align 4
  %nonstd.i240 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 12
  %97 = ptrtoint ptr %nonstd.i240 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %nonstd.i240, align 4
  %99 = ptrtoint ptr %nonstd.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %nonstd.i, align 4
  %accel_flags.i242 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 16
  %100 = ptrtoint ptr %accel_flags.i242 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %accel_flags.i242, align 4
  %102 = ptrtoint ptr %accel_flags.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %accel_flags.i, align 4
  %height.i244 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 14
  %103 = ptrtoint ptr %height.i244 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %height.i244, align 4
  %105 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %height.i, align 4
  %width.i246 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 15
  %106 = ptrtoint ptr %width.i246 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %width.i246, align 4
  %108 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %width.i, align 4
  %red9.i249 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 8
  %109 = call ptr @memcpy(ptr %red9.i, ptr %red9.i249, i32 12)
  %green10.i251 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 9
  %110 = call ptr @memcpy(ptr %green10.i, ptr %green10.i251, i32 12)
  %blue11.i253 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 10
  %111 = call ptr @memcpy(ptr %blue11.i, ptr %blue11.i253, i32 12)
  %transp12.i255 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 11
  %112 = call ptr @memcpy(ptr %transp12.i, ptr %transp12.i255, i32 12)
  %rotate.i256 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 26
  %113 = ptrtoint ptr %rotate.i256 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rotate.i256, align 4
  %115 = ptrtoint ptr %rotate.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %rotate.i, align 4
  %call.i = call ptr @fb_match_mode(ptr noundef %var6, ptr noundef %modelist) #20
  %116 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call.i, ptr %mode.i, align 4
  %var159 = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 7
  %117 = call ptr @memcpy(ptr %var159, ptr %var6, i32 160)
  br label %if.end164

if.end164:                                        ; preds = %if.end156, %cond.end84.if.end164_crit_edge
  call fastcc void @updatescrollmode(ptr noundef %arrayidx5, ptr noundef %5, ptr noundef %vc)
  br label %cleanup165

cleanup165:                                       ; preds = %if.end164, %lor.lhs.false123.cleanup165_crit_edge, %if.end119.cleanup165_crit_edge, %do.end.cleanup165_crit_edge, %if.end.cleanup165_crit_edge, %if.then.cleanup165_crit_edge
  %retval.3 = phi i32 [ 0, %if.end164 ], [ -22, %if.end.cleanup165_crit_edge ], [ -22, %if.end119.cleanup165_crit_edge ], [ -22, %lor.lhs.false123.cleanup165_crit_edge ], [ -22, %do.end.cleanup165_crit_edge ], [ -22, %if.then.cleanup165_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %var) #20
  ret i32 %retval.3
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fbcon_invert_region(ptr nocapture noundef readonly %vc, ptr nocapture noundef %p, i32 noundef %cnt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %tobool.not36 = icmp eq i32 %cnt, 0
  br i1 %tobool.not36, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %vc_can_do_color = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 37
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  br label %while.body

while.body:                                       ; preds = %if.end25.while.body_crit_edge, %while.body.lr.ph
  %dec38.in = phi i32 [ %cnt, %while.body.lr.ph ], [ %dec38, %if.end25.while.body_crit_edge ]
  %p.addr.037 = phi ptr [ %p, %while.body.lr.ph ], [ %incdec.ptr, %if.end25.while.body_crit_edge ]
  %dec38 = add i32 %dec38.in, -1
  %0 = ptrtoint ptr %p.addr.037 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %p.addr.037, align 2
  %2 = ptrtoint ptr %vc_can_do_color to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %vc_can_do_color, align 4
  %3 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool1.not = icmp eq i16 %3, 0
  br i1 %tobool1.not, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  %4 = xor i16 %1, 2048
  br label %if.end25

if.else:                                          ; preds = %while.body
  %5 = ptrtoint ptr %vc_hi_font_mask to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vc_hi_font_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %6)
  %cmp = icmp eq i16 %6, 256
  br i1 %cmp, label %if.then5, label %if.else13

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %and = and i16 %1, 4607
  %and8 = lshr i16 %1, 4
  %7 = and i16 %and8, 3584
  %or = or i16 %7, %and
  %and10 = shl i16 %1, 4
  %shl = and i16 %and10, -8192
  %or11 = or i16 %or, %shl
  br label %if.end25

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %and15 = and i16 %1, -30465
  %and17 = lshr i16 %1, 4
  %8 = and i16 %and17, 1792
  %or19 = or i16 %8, %and15
  %and21 = shl i16 %1, 4
  %shl22 = and i16 %and21, 28672
  %or23 = or i16 %or19, %shl22
  br label %if.end25

if.end25:                                         ; preds = %if.else13, %if.then5, %if.then
  %a.0 = phi i16 [ %or11, %if.then5 ], [ %or23, %if.else13 ], [ %4, %if.then ]
  %incdec.ptr = getelementptr i16, ptr %p.addr.037, i32 1
  %9 = ptrtoint ptr %p.addr.037 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %a.0, ptr %p.addr.037, align 2
  %tobool.not = icmp eq i32 %dec38, 0
  br i1 %tobool.not, label %if.end25.while.end_crit_edge, label %if.end25.while.body_crit_edge

if.end25.while.body_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.end:                                        ; preds = %if.end25.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @fbcon_screen_pos(ptr nocapture noundef readonly %vc, i32 noundef %offset) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_origin = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %0 = ptrtoint ptr %vc_origin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vc_origin, align 4
  %add = add i32 %1, %offset
  %2 = inttoptr i32 %add to ptr
  ret ptr %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fbcon_getxy(ptr nocapture noundef readonly %vc, i32 noundef %pos, ptr noundef writeonly %px, ptr noundef writeonly %py) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_origin = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %0 = ptrtoint ptr %vc_origin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vc_origin, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %pos)
  %cmp.not = icmp ugt i32 %1, %pos
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %vc_scr_end = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 10
  %2 = ptrtoint ptr %vc_scr_end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vc_scr_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %pos)
  %cmp1 = icmp ugt i32 %3, %pos
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  %sub = sub i32 %pos, %1
  %div26 = lshr i32 %sub, 1
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %4 = ptrtoint ptr %vc_cols to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vc_cols, align 4
  %div26.frozen = freeze i32 %div26
  %.frozen = freeze i32 %5
  %div4 = udiv i32 %div26.frozen, %.frozen
  %6 = mul i32 %div4, %.frozen
  %rem.decomposed = sub i32 %div26.frozen, %6
  %sub6 = sub i32 %5, %rem.decomposed
  %mul = shl i32 %sub6, 1
  %add = add i32 %mul, %pos
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %x.0 = phi i32 [ %rem.decomposed, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %y.0 = phi i32 [ %div4, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %ret.0 = phi i32 [ %add, %if.then ], [ %1, %land.lhs.true.if.end_crit_edge ], [ %1, %entry.if.end_crit_edge ]
  %tobool.not = icmp eq ptr %px, null
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %7 = ptrtoint ptr %px to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %x.0, ptr %px, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %tobool10.not = icmp eq ptr %py, null
  br i1 %tobool10.not, label %if.end9.if.end12_crit_edge, label %if.then11

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #22
  %8 = ptrtoint ptr %py to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %y.0, ptr %py, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbcon_debug_enter(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom1 = sext i8 %3 to i32
  %arrayidx2 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbcon_par, align 4
  %graphics = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %graphics to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %graphics, align 4
  %save_graphics = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 18
  %10 = ptrtoint ptr %save_graphics to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %save_graphics, align 4
  store i32 0, ptr %graphics, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 20
  %11 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fbops, align 4
  %fb_debug_enter = getelementptr inbounds %struct.fb_ops, ptr %12, i32 0, i32 21
  %13 = ptrtoint ptr %fb_debug_enter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fb_debug_enter, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call = tail call i32 %14(ptr noundef %5) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @fbcon_set_palette(ptr noundef %vc, ptr noundef nonnull @color_table)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbcon_debug_leave(ptr nocapture noundef readonly %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom1 = sext i8 %3 to i32
  %arrayidx2 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbcon_par, align 4
  %save_graphics = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %save_graphics to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %save_graphics, align 4
  %graphics = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 17
  %10 = ptrtoint ptr %graphics to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %graphics, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 20
  %11 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fbops, align 4
  %fb_debug_leave = getelementptr inbounds %struct.fb_ops, ptr %12, i32 0, i32 22
  %13 = ptrtoint ptr %fb_debug_leave to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fb_debug_leave, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call = tail call i32 %14(ptr noundef %5) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_font(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_default_font(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fbcon_exit() unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @deferred_takeover, align 1
  br i1 %.b, label %entry.for.body.preheader_crit_edge, label %if.then

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @dummycon_unregister_output_notifier(ptr noundef nonnull @fbcon_output_nb) #20
  store i1 true, ptr @deferred_takeover, align 1
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc51.for.body_crit_edge, %for.body.preheader
  %i.080 = phi i32 [ %inc52, %for.inc51.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %i.080
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %for.body.for.inc51_crit_edge, label %if.else

for.body.for.inc51_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc51

if.else:                                          ; preds = %for.body
  %func = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.else.do.body_crit_edge, label %if.then5

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %queue = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 9
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %queue) #20
  %conv = zext i1 %call to i32
  br label %do.body

do.body:                                          ; preds = %if.then5, %if.else.do.body_crit_edge
  %pending.0 = phi i32 [ %conv, %if.then5 ], [ 0, %if.else.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fbcon_exit.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fbcon_exit, %if.then12)) #20
          to label %do.end [label %if.then12], !srcloc !216

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pending.0)
  %tobool13.not = icmp eq i32 %pending.0, 0
  %cond = select i1 %tobool13.not, ptr @.str.49, ptr @.str.48
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fbcon_exit.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.47, ptr noundef nonnull %cond) #20
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %4 = load i32, ptr @first_fb_vc, align 4
  %5 = load i32, ptr @last_fb_vc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %5)
  %cmp16.not77 = icmp sgt i32 %4, %5
  br i1 %cmp16.not77, label %do.end.for.inc51_crit_edge, label %do.end.for.body18_crit_edge

do.end.for.body18_crit_edge:                      ; preds = %do.end
  br label %for.body18

do.end.for.inc51_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc51

for.body18:                                       ; preds = %for.inc.for.body18_crit_edge, %do.end.for.body18_crit_edge
  %j.079 = phi i32 [ %inc, %for.inc.for.body18_crit_edge ], [ %4, %do.end.for.body18_crit_edge ]
  %mapped.078 = phi i32 [ %mapped.1, %for.inc.for.body18_crit_edge ], [ 0, %do.end.for.body18_crit_edge ]
  %arrayidx19 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %j.079
  %6 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx19, align 1
  %conv20 = sext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.080, i32 %conv20)
  %cmp21 = icmp eq i32 %i.080, %conv20
  br i1 %cmp21, label %if.then23, label %for.body18.for.inc_crit_edge

for.body18.for.inc_crit_edge:                     ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.then23:                                        ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #22
  %8 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %arrayidx19, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then23, %for.body18.for.inc_crit_edge
  %mapped.1 = phi i32 [ 1, %if.then23 ], [ %mapped.078, %for.body18.for.inc_crit_edge ]
  %inc = add i32 %j.079, 1
  %cmp16.not = icmp sgt i32 %inc, %5
  br i1 %cmp16.not, label %for.end, label %for.inc.for.body18_crit_edge

for.inc.for.body18_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body18

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapped.1)
  %tobool26.not = icmp eq i32 %mapped.1, 0
  br i1 %tobool26.not, label %for.end.for.inc51_crit_edge, label %if.then27

for.end.for.inc51_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc51

if.then27:                                        ; preds = %for.end
  %fbops = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fbops, align 4
  %fb_release = getelementptr inbounds %struct.fb_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %fb_release to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fb_release, align 4
  %tobool28.not = icmp eq ptr %12, null
  br i1 %tobool28.not, label %if.then27.if.end33_crit_edge, label %if.then29

if.then27.if.end33_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end33

if.then29:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #22
  %call32 = tail call i32 %12(ptr noundef nonnull %1, i32 noundef 0) #20
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.then27.if.end33_crit_edge
  %13 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fbops, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  tail call void @module_put(ptr noundef %16) #20
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 29
  %17 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fbcon_par, align 4
  %tobool35.not = icmp eq ptr %18, null
  br i1 %tobool35.not, label %if.end33.if.end40_crit_edge, label %if.then36

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end40

if.then36:                                        ; preds = %if.end33
  %19 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %func, align 4
  %cmp.i = icmp eq ptr %20, @fb_flashcursor
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then36.fbcon_del_cursor_timer.exit_crit_edge

if.then36.fbcon_del_cursor_timer.exit_crit_edge:  ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #22
  br label %fbcon_del_cursor_timer.exit

land.lhs.true.i:                                  ; preds = %if.then36
  %flags.i = getelementptr inbounds %struct.fbcon_ops, ptr %18, i32 0, i32 19
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.fbcon_del_cursor_timer.exit_crit_edge, label %if.then.i

land.lhs.true.i.fbcon_del_cursor_timer.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %fbcon_del_cursor_timer.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  %cursor_timer.i = getelementptr inbounds %struct.fbcon_ops, ptr %18, i32 0, i32 8
  %call.i = tail call i32 @del_timer_sync(ptr noundef %cursor_timer.i) #20
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 4
  %and2.i = and i32 %24, -3
  store i32 %and2.i, ptr %flags.i, align 4
  br label %fbcon_del_cursor_timer.exit

fbcon_del_cursor_timer.exit:                      ; preds = %if.then.i, %land.lhs.true.i.fbcon_del_cursor_timer.exit_crit_edge, %if.then36.fbcon_del_cursor_timer.exit_crit_edge
  %cursor_src = getelementptr inbounds %struct.fbcon_ops, ptr %18, i32 0, i32 25
  %25 = ptrtoint ptr %cursor_src to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cursor_src, align 4
  tail call void @kfree(ptr noundef %26) #20
  %mask = getelementptr inbounds %struct.fbcon_ops, ptr %18, i32 0, i32 9, i32 3
  %27 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mask, align 4
  tail call void @kfree(ptr noundef %28) #20
  %29 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fbcon_par, align 4
  tail call void @kfree(ptr noundef %30) #20
  %31 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %fbcon_par, align 4
  br label %if.end40

if.end40:                                         ; preds = %fbcon_del_cursor_timer.exit, %if.end33.if.end40_crit_edge
  %32 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %func, align 4
  %cmp43 = icmp eq ptr %33, @fb_flashcursor
  br i1 %cmp43, label %if.then45, label %if.end40.for.inc51_crit_edge

if.end40.for.inc51_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc51

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #22
  %34 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %func, align 4
  br label %for.inc51

for.inc51:                                        ; preds = %if.then45, %if.end40.for.inc51_crit_edge, %for.end.for.inc51_crit_edge, %do.end.for.inc51_crit_edge, %for.body.for.inc51_crit_edge
  %inc52 = add nuw nsw i32 %i.080, 1
  %exitcond.not = icmp eq i32 %inc52, 32
  br i1 %exitcond.not, label %for.end53, label %for.inc51.for.body_crit_edge

for.inc51.for.body_crit_edge:                     ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end53:                                        ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dummycon_unregister_output_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fbcon_redraw_blit(ptr noundef %vc, ptr noundef %info, i32 noundef %line, i32 noundef %count, i32 noundef %ycount) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_size_row = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 6
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 29
  %0 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbcon_par, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not2 = icmp eq i32 %count, 0
  br i1 %tobool.not2, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %2 = ptrtoint ptr %vc_size_row to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vc_size_row, align 4
  %mul1 = mul i32 %3, %line
  %vc_origin = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %4 = ptrtoint ptr %vc_origin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vc_origin, align 4
  %add = add i32 %mul1, %5
  %6 = inttoptr i32 %add to ptr
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %7 = ptrtoint ptr %vc_cols to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vc_cols, align 4
  %mul = mul i32 %8, %ycount
  %add.ptr = getelementptr i16, ptr %6, i32 %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ycount)
  %cmp33 = icmp sgt i32 %ycount, 0
  br label %while.body

while.body:                                       ; preds = %if.end44.while.body_crit_edge, %while.body.lr.ph
  %dec6.in = phi i32 [ %count, %while.body.lr.ph ], [ %dec6, %if.end44.while.body_crit_edge ]
  %s.05 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %s.2, %if.end44.while.body_crit_edge ]
  %d.04 = phi ptr [ %6, %while.body.lr.ph ], [ %d.2, %if.end44.while.body_crit_edge ]
  %line.addr.03 = phi i32 [ %line, %while.body.lr.ph ], [ %line.addr.1, %if.end44.while.body_crit_edge ]
  %9 = ptrtoint ptr %s.05 to i32
  %10 = ptrtoint ptr %vc_size_row to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vc_size_row, align 4
  %add4 = add i32 %11, %9
  %12 = inttoptr i32 %add4 to ptr
  %add10 = add i32 %line.addr.03, %ycount
  br label %do.body

do.body:                                          ; preds = %if.end18.do.body_crit_edge, %while.body
  %d.1 = phi ptr [ %d.04, %while.body ], [ %incdec.ptr20, %if.end18.do.body_crit_edge ]
  %s.1 = phi ptr [ %s.05, %while.body ], [ %incdec.ptr19, %if.end18.do.body_crit_edge ]
  %start.0 = phi ptr [ %s.05, %while.body ], [ %start.1, %if.end18.do.body_crit_edge ]
  %x.0 = phi i32 [ 0, %while.body ], [ %x.1, %if.end18.do.body_crit_edge ]
  %13 = ptrtoint ptr %s.1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %s.1, align 2
  %15 = ptrtoint ptr %d.1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %d.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %16)
  %cmp = icmp eq i16 %14, %16
  br i1 %cmp, label %if.then, label %do.body.if.end18_crit_edge

do.body.if.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end18

if.then:                                          ; preds = %do.body
  %cmp7 = icmp ugt ptr %s.1, %start.0
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %s.1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %start.0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 1
  tail call void %18(ptr noundef %vc, ptr noundef %info, i32 noundef %add10, i32 noundef %x.0, i32 noundef %line.addr.03, i32 noundef %x.0, i32 noundef 1, i32 noundef %sub.ptr.div) #20
  %add15 = add i32 %x.0, 1
  %add16 = add i32 %add15, %sub.ptr.div
  %add.ptr17 = getelementptr i16, ptr %s.1, i32 1
  br label %if.end18

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %inc = add i32 %x.0, 1
  %incdec.ptr = getelementptr i16, ptr %start.0, i32 1
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then9, %do.body.if.end18_crit_edge
  %start.1 = phi ptr [ %add.ptr17, %if.then9 ], [ %incdec.ptr, %if.else ], [ %start.0, %do.body.if.end18_crit_edge ]
  %x.1 = phi i32 [ %add16, %if.then9 ], [ %inc, %if.else ], [ %x.0, %do.body.if.end18_crit_edge ]
  %19 = ptrtoint ptr %d.1 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %14, ptr %d.1, align 2
  tail call void @console_conditional_schedule() #20
  %incdec.ptr19 = getelementptr i16, ptr %s.1, i32 1
  %incdec.ptr20 = getelementptr i16, ptr %d.1, i32 1
  %cmp21 = icmp ult ptr %incdec.ptr19, %12
  br i1 %cmp21, label %if.end18.do.body_crit_edge, label %do.end

if.end18.do.body_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body

do.end:                                           ; preds = %if.end18
  %dec6 = add i32 %dec6.in, -1
  %cmp23 = icmp ugt ptr %incdec.ptr19, %start.1
  br i1 %cmp23, label %if.then25, label %do.end.if.end32_crit_edge

do.end.if.end32_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end32

if.then25:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %sub.ptr.lhs.cast28 = ptrtoint ptr %incdec.ptr19 to i32
  %sub.ptr.rhs.cast29 = ptrtoint ptr %start.1 to i32
  %sub.ptr.sub30 = sub i32 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  %sub.ptr.div31 = ashr exact i32 %sub.ptr.sub30, 1
  tail call void %21(ptr noundef %vc, ptr noundef %info, i32 noundef %add10, i32 noundef %x.1, i32 noundef %line.addr.03, i32 noundef %x.1, i32 noundef 1, i32 noundef %sub.ptr.div31) #20
  br label %if.end32

if.end32:                                         ; preds = %if.then25, %do.end.if.end32_crit_edge
  tail call void @console_conditional_schedule() #20
  br i1 %cmp33, label %if.then35, label %if.else37

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #22
  %inc36 = add i32 %line.addr.03, 1
  br label %if.end44

if.else37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #22
  %dec38 = add i32 %line.addr.03, -1
  %22 = ptrtoint ptr %vc_size_row to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vc_size_row, align 4
  %idx.neg = sub i32 0, %23
  %add.ptr40 = getelementptr i16, ptr %incdec.ptr19, i32 %idx.neg
  %add.ptr43 = getelementptr i16, ptr %incdec.ptr20, i32 %idx.neg
  br label %if.end44

if.end44:                                         ; preds = %if.else37, %if.then35
  %line.addr.1 = phi i32 [ %inc36, %if.then35 ], [ %dec38, %if.else37 ]
  %d.2 = phi ptr [ %incdec.ptr20, %if.then35 ], [ %add.ptr43, %if.else37 ]
  %s.2 = phi ptr [ %incdec.ptr19, %if.then35 ], [ %add.ptr40, %if.else37 ]
  %tobool.not = icmp eq i32 %dec6, 0
  br i1 %tobool.not, label %if.end44.while.end_crit_edge, label %if.end44.while.body_crit_edge

if.end44.while.body_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

if.end44.while.end_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.end:                                        ; preds = %if.end44.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fbcon_bmove(ptr noundef %vc, i32 noundef %sy, i32 noundef %dy, i32 noundef %height, i32 noundef %width) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom1 = sext i8 %3 to i32
  %arrayidx2 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %arrayidx5 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom
  %fbcon_par.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %fbcon_par.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbcon_par.i, align 4
  %state.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 28
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %vc_mode.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 17
  %10 = ptrtoint ptr %vc_mode.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vc_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp1.not.i = icmp eq i8 %11, 0
  br i1 %cmp1.not.i, label %fbcon_is_inactive.exit, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

fbcon_is_inactive.exit:                           ; preds = %lor.lhs.false.i
  %graphics.i = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 17
  %12 = ptrtoint ptr %graphics.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %graphics.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not = icmp eq i32 %13, 0
  br i1 %tobool.i.not, label %if.end, label %fbcon_is_inactive.exit.cleanup_crit_edge

fbcon_is_inactive.exit.cleanup_crit_edge:         ; preds = %fbcon_is_inactive.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %fbcon_is_inactive.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %width)
  %tobool6.not = icmp eq i32 %width, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %height)
  %tobool7.not = icmp eq i32 %height, 0
  %or.cond = or i1 %tobool7.not, %tobool6.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %vrows = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 5
  %14 = ptrtoint ptr %vrows to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vrows, align 4
  %yscroll = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 4
  %16 = ptrtoint ptr %yscroll to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %yscroll, align 4
  %conv = sext i16 %17 to i32
  %sub = sub i32 %15, %conv
  tail call fastcc void @fbcon_bmove_rec(ptr noundef %vc, ptr noundef %arrayidx5, i32 noundef %sy, i32 noundef %dy, i32 noundef %height, i32 noundef %width, i32 noundef %sub)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %fbcon_is_inactive.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ywrap_up(ptr nocapture noundef readonly %vc, i32 noundef %count) unnamed_addr #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom1 = sext i8 %3 to i32
  %arrayidx2 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbcon_par, align 4
  %yscroll = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 4
  %8 = ptrtoint ptr %yscroll to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %yscroll, align 4
  %10 = trunc i32 %count to i16
  %conv6 = add i16 %9, %10
  store i16 %conv6, ptr %yscroll, align 4
  %conv8 = sext i16 %conv6 to i32
  %vrows = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 5
  %11 = ptrtoint ptr %vrows to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vrows, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv8)
  %cmp.not = icmp sgt i32 %12, %conv8
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %13 = trunc i32 %12 to i16
  %conv13 = sub i16 %conv6, %13
  %14 = ptrtoint ptr %yscroll to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv13, ptr %yscroll, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %xoffset = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 7, i32 4
  %15 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %xoffset, align 4
  %16 = ptrtoint ptr %yscroll to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %yscroll, align 4
  %conv15 = sext i16 %17 to i32
  %height = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  %mul = mul i32 %19, %conv15
  %yoffset = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 7, i32 5
  %20 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul, ptr %yoffset, align 4
  %vmode = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 7, i32 25
  %21 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vmode, align 4
  %or = or i32 %22, 256
  store i32 %or, ptr %vmode, align 4
  %update_start = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 5
  %23 = ptrtoint ptr %update_start to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %update_start, align 4
  %call = tail call i32 %24(ptr noundef %5) #20
  %25 = load i32, ptr @scrollback_max, align 4
  %add18 = add i32 %25, %count
  %26 = load i32, ptr @scrollback_phys_max, align 4
  %27 = tail call i32 @llvm.smin.i32(i32 %add18, i32 %26)
  store i32 %27, ptr @scrollback_max, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fbcon_redraw_move(ptr noundef %vc, i32 noundef %line, i32 noundef %count, i32 noundef %dy) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_size_row = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not2 = icmp eq i32 %count, 0
  br i1 %tobool.not2, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %0 = ptrtoint ptr %vc_size_row to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vc_size_row, align 4
  %mul = mul i32 %1, %line
  %vc_origin = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %2 = ptrtoint ptr %vc_origin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vc_origin, align 4
  %add = add i32 %mul, %3
  %4 = inttoptr i32 %add to ptr
  br label %while.body

while.body:                                       ; preds = %if.end27.while.body_crit_edge, %while.body.preheader
  %dec5.in = phi i32 [ %dec5, %if.end27.while.body_crit_edge ], [ %count, %while.body.preheader ]
  %s.04 = phi ptr [ %incdec.ptr, %if.end27.while.body_crit_edge ], [ %4, %while.body.preheader ]
  %dy.addr.03 = phi i32 [ %inc, %if.end27.while.body_crit_edge ], [ %dy, %while.body.preheader ]
  %5 = ptrtoint ptr %s.04 to i32
  %6 = ptrtoint ptr %vc_size_row to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vc_size_row, align 4
  %add3 = add i32 %7, %5
  %8 = inttoptr i32 %add3 to ptr
  br label %do.body

do.body:                                          ; preds = %if.end17.do.body_crit_edge, %while.body
  %s.1 = phi ptr [ %s.04, %while.body ], [ %incdec.ptr, %if.end17.do.body_crit_edge ]
  %start.0 = phi ptr [ %s.04, %while.body ], [ %start.1, %if.end17.do.body_crit_edge ]
  %x.0 = phi i32 [ 0, %while.body ], [ %x.1, %if.end17.do.body_crit_edge ]
  %attr.0 = phi i16 [ 1, %while.body ], [ %attr.1, %if.end17.do.body_crit_edge ]
  %9 = ptrtoint ptr %s.1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %s.1, align 2
  %11 = and i16 %10, -256
  call void @__sanitizer_cov_trace_cmp2(i16 %attr.0, i16 %11)
  %cmp.not = icmp eq i16 %attr.0, %11
  br i1 %cmp.not, label %do.body.if.end17_crit_edge, label %if.then

do.body.if.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

if.then:                                          ; preds = %do.body
  %cmp9 = icmp ugt ptr %s.1, %start.0
  br i1 %cmp9, label %if.then11, label %if.then.if.end17_crit_edge

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %sub.ptr.lhs.cast = ptrtoint ptr %s.1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %start.0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 1
  tail call void @fbcon_putcs(ptr noundef %vc, ptr noundef %start.0, i32 noundef %sub.ptr.div, i32 noundef %dy.addr.03, i32 noundef %x.0)
  %add16 = add i32 %sub.ptr.div, %x.0
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %if.then.if.end17_crit_edge, %do.body.if.end17_crit_edge
  %start.1 = phi ptr [ %s.1, %if.then11 ], [ %start.0, %if.then.if.end17_crit_edge ], [ %start.0, %do.body.if.end17_crit_edge ]
  %x.1 = phi i32 [ %add16, %if.then11 ], [ %x.0, %if.then.if.end17_crit_edge ], [ %x.0, %do.body.if.end17_crit_edge ]
  %attr.1 = phi i16 [ %11, %if.then11 ], [ %11, %if.then.if.end17_crit_edge ], [ %attr.0, %do.body.if.end17_crit_edge ]
  tail call void @console_conditional_schedule() #20
  %incdec.ptr = getelementptr i16, ptr %s.1, i32 1
  %cmp18 = icmp ult ptr %incdec.ptr, %8
  br i1 %cmp18, label %if.end17.do.body_crit_edge, label %do.end

if.end17.do.body_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body

do.end:                                           ; preds = %if.end17
  %dec5 = add i32 %dec5.in, -1
  %cmp20 = icmp ugt ptr %incdec.ptr, %start.1
  br i1 %cmp20, label %if.then22, label %do.end.if.end27_crit_edge

do.end.if.end27_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end27

if.then22:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  %sub.ptr.lhs.cast23 = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.rhs.cast24 = ptrtoint ptr %start.1 to i32
  %sub.ptr.sub25 = sub i32 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24
  %sub.ptr.div26 = ashr exact i32 %sub.ptr.sub25, 1
  tail call void @fbcon_putcs(ptr noundef %vc, ptr noundef %start.1, i32 noundef %sub.ptr.div26, i32 noundef %dy.addr.03, i32 noundef %x.1)
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %do.end.if.end27_crit_edge
  tail call void @console_conditional_schedule() #20
  %inc = add i32 %dy.addr.03, 1
  %tobool.not = icmp eq i32 %dec5, 0
  br i1 %tobool.not, label %if.end27.while.end_crit_edge, label %if.end27.while.body_crit_edge

if.end27.while.body_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

if.end27.while.end_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.end:                                        ; preds = %if.end27.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ypan_up_redraw(ptr noundef %vc, i32 noundef %t, i32 noundef %count) unnamed_addr #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom1 = sext i8 %3 to i32
  %arrayidx2 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbcon_par, align 4
  %yscroll = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 4
  %8 = ptrtoint ptr %yscroll to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %yscroll, align 4
  %10 = trunc i32 %count to i16
  %conv6 = add i16 %9, %10
  store i16 %conv6, ptr %yscroll, align 4
  %conv8 = sext i16 %conv6 to i32
  %vrows = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 5
  %11 = ptrtoint ptr %vrows to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vrows, align 4
  %vc_rows = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 5
  %13 = ptrtoint ptr %vc_rows to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vc_rows, align 4
  %sub = sub i32 %12, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv8)
  %cmp = icmp ult i32 %sub, %conv8
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %15 = trunc i32 %sub to i16
  %conv16 = sub i16 %conv6, %15
  %16 = ptrtoint ptr %yscroll to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv16, ptr %yscroll, align 4
  %add17 = add i32 %count, %t
  %17 = ptrtoint ptr %vc_rows to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vc_rows, align 4
  %sub19 = sub i32 %18, %count
  tail call fastcc void @fbcon_redraw_move(ptr noundef %vc, i32 noundef %add17, i32 noundef %sub19, i32 noundef %t)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %xoffset = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 7, i32 4
  %19 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %xoffset, align 4
  %20 = ptrtoint ptr %yscroll to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %yscroll, align 4
  %conv21 = sext i16 %21 to i32
  %height = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %22 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height, align 4
  %mul = mul i32 %23, %conv21
  %yoffset = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 7, i32 5
  %24 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul, ptr %yoffset, align 4
  %vmode = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 7, i32 25
  %25 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vmode, align 4
  %and = and i32 %26, -257
  store i32 %and, ptr %vmode, align 4
  %update_start = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 5
  %27 = ptrtoint ptr %update_start to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %update_start, align 4
  %call = tail call i32 %28(ptr noundef %5) #20
  %29 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vc_num, align 4
  %idxprom.i = zext i16 %30 to i32
  %arrayidx.i = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i, align 1
  %idxprom1.i = sext i8 %32 to i32
  %arrayidx2.i = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom1.i
  %33 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx2.i, align 4
  %fbcon_par.i = getelementptr inbounds %struct.fb_info, ptr %34, i32 0, i32 29
  %35 = ptrtoint ptr %fbcon_par.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fbcon_par.i, align 4
  %state.i.i = getelementptr inbounds %struct.fb_info, ptr %34, i32 0, i32 28
  %37 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.not.i.i = icmp eq i32 %38, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end.fbcon_clear_margins.exit_crit_edge

if.end.fbcon_clear_margins.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %fbcon_clear_margins.exit

lor.lhs.false.i.i:                                ; preds = %if.end
  %vc_mode.i.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 17
  %39 = ptrtoint ptr %vc_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %vc_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp1.not.i.i = icmp eq i8 %40, 0
  br i1 %cmp1.not.i.i, label %fbcon_is_inactive.exit.i, label %lor.lhs.false.i.i.fbcon_clear_margins.exit_crit_edge

lor.lhs.false.i.i.fbcon_clear_margins.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %fbcon_clear_margins.exit

fbcon_is_inactive.exit.i:                         ; preds = %lor.lhs.false.i.i
  %graphics.i.i = getelementptr inbounds %struct.fbcon_ops, ptr %36, i32 0, i32 17
  %41 = ptrtoint ptr %graphics.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %graphics.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.i.not.i = icmp eq i32 %42, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %fbcon_is_inactive.exit.i.fbcon_clear_margins.exit_crit_edge

fbcon_is_inactive.exit.i.fbcon_clear_margins.exit_crit_edge: ; preds = %fbcon_is_inactive.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %fbcon_clear_margins.exit

if.then.i:                                        ; preds = %fbcon_is_inactive.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  %clear_margins.i = getelementptr inbounds %struct.fbcon_ops, ptr %36, i32 0, i32 3
  %43 = ptrtoint ptr %clear_margins.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clear_margins.i, align 4
  %45 = load i32, ptr @margin_color, align 4
  tail call void %44(ptr noundef %vc, ptr noundef %34, i32 noundef %45, i32 noundef 1) #20
  br label %fbcon_clear_margins.exit

fbcon_clear_margins.exit:                         ; preds = %if.then.i, %fbcon_is_inactive.exit.i.fbcon_clear_margins.exit_crit_edge, %lor.lhs.false.i.i.fbcon_clear_margins.exit_crit_edge, %if.end.fbcon_clear_margins.exit_crit_edge
  %46 = load i32, ptr @scrollback_max, align 4
  %add24 = add i32 %46, %count
  %47 = load i32, ptr @scrollback_phys_max, align 4
  %48 = tail call i32 @llvm.smin.i32(i32 %add24, i32 %47)
  store i32 %48, ptr @scrollback_max, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ypan_up(ptr noundef %vc, i32 noundef %count) unnamed_addr #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom1 = sext i8 %3 to i32
  %arrayidx2 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbcon_par, align 4
  %yscroll = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 4
  %8 = ptrtoint ptr %yscroll to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %yscroll, align 4
  %10 = trunc i32 %count to i16
  %conv6 = add i16 %9, %10
  store i16 %conv6, ptr %yscroll, align 4
  %conv8 = sext i16 %conv6 to i32
  %vrows = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 5
  %11 = ptrtoint ptr %vrows to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vrows, align 4
  %vc_rows = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 5
  %13 = ptrtoint ptr %vc_rows to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vc_rows, align 4
  %sub = sub i32 %12, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv8)
  %cmp = icmp ult i32 %sub, %conv8
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %7, align 4
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %17 = ptrtoint ptr %vc_cols to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vc_cols, align 4
  tail call void %16(ptr noundef %vc, ptr noundef %5, i32 noundef %sub, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %14, i32 noundef %18) #20
  %19 = ptrtoint ptr %vrows to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vrows, align 4
  %21 = ptrtoint ptr %vc_rows to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vc_rows, align 4
  %sub16.neg = sub i32 %22, %20
  %23 = ptrtoint ptr %yscroll to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %yscroll, align 4
  %25 = trunc i32 %sub16.neg to i16
  %conv20 = add i16 %24, %25
  store i16 %conv20, ptr %yscroll, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %xoffset = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 7, i32 4
  %26 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %xoffset, align 4
  %27 = ptrtoint ptr %yscroll to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %yscroll, align 4
  %conv22 = sext i16 %28 to i32
  %height = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %29 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height, align 4
  %mul = mul i32 %30, %conv22
  %yoffset = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 7, i32 5
  %31 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul, ptr %yoffset, align 4
  %vmode = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 7, i32 25
  %32 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vmode, align 4
  %and = and i32 %33, -257
  store i32 %and, ptr %vmode, align 4
  %update_start = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 5
  %34 = ptrtoint ptr %update_start to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %update_start, align 4
  %call = tail call i32 %35(ptr noundef %5) #20
  %36 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vc_num, align 4
  %idxprom.i = zext i16 %37 to i32
  %arrayidx.i = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i, align 1
  %idxprom1.i = sext i8 %39 to i32
  %arrayidx2.i = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom1.i
  %40 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx2.i, align 4
  %fbcon_par.i = getelementptr inbounds %struct.fb_info, ptr %41, i32 0, i32 29
  %42 = ptrtoint ptr %fbcon_par.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fbcon_par.i, align 4
  %state.i.i = getelementptr inbounds %struct.fb_info, ptr %41, i32 0, i32 28
  %44 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.not.i.i = icmp eq i32 %45, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end.fbcon_clear_margins.exit_crit_edge

if.end.fbcon_clear_margins.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %fbcon_clear_margins.exit

lor.lhs.false.i.i:                                ; preds = %if.end
  %vc_mode.i.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 17
  %46 = ptrtoint ptr %vc_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %vc_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp1.not.i.i = icmp eq i8 %47, 0
  br i1 %cmp1.not.i.i, label %fbcon_is_inactive.exit.i, label %lor.lhs.false.i.i.fbcon_clear_margins.exit_crit_edge

lor.lhs.false.i.i.fbcon_clear_margins.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %fbcon_clear_margins.exit

fbcon_is_inactive.exit.i:                         ; preds = %lor.lhs.false.i.i
  %graphics.i.i = getelementptr inbounds %struct.fbcon_ops, ptr %43, i32 0, i32 17
  %48 = ptrtoint ptr %graphics.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %graphics.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.i.not.i = icmp eq i32 %49, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %fbcon_is_inactive.exit.i.fbcon_clear_margins.exit_crit_edge

fbcon_is_inactive.exit.i.fbcon_clear_margins.exit_crit_edge: ; preds = %fbcon_is_inactive.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %fbcon_clear_margins.exit

if.then.i:                                        ; preds = %fbcon_is_inactive.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  %clear_margins.i = getelementptr inbounds %struct.fbcon_ops, ptr %43, i32 0, i32 3
  %50 = ptrtoint ptr %clear_margins.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clear_margins.i, align 4
  %52 = load i32, ptr @margin_color, align 4
  tail call void %51(ptr noundef %vc, ptr noundef %41, i32 noundef %52, i32 noundef 1) #20
  br label %fbcon_clear_margins.exit

fbcon_clear_margins.exit:                         ; preds = %if.then.i, %fbcon_is_inactive.exit.i.fbcon_clear_margins.exit_crit_edge, %lor.lhs.false.i.i.fbcon_clear_margins.exit_crit_edge, %if.end.fbcon_clear_margins.exit_crit_edge
  %53 = load i32, ptr @scrollback_max, align 4
  %add25 = add i32 %53, %count
  %54 = load i32, ptr @scrollback_phys_max, align 4
  %55 = tail call i32 @llvm.smin.i32(i32 %add25, i32 %54)
  store i32 %55, ptr @scrollback_max, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fbcon_redraw(ptr noundef %vc, i32 noundef %line, i32 noundef %count, i32 noundef %offset) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_size_row = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not2 = icmp eq i32 %count, 0
  br i1 %tobool.not2, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = ptrtoint ptr %vc_size_row to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vc_size_row, align 4
  %mul = mul i32 %1, %line
  %vc_origin = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %2 = ptrtoint ptr %vc_origin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vc_origin, align 4
  %add = add i32 %mul, %3
  %4 = inttoptr i32 %add to ptr
  %add.ptr = getelementptr i16, ptr %4, i32 %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp51 = icmp sgt i32 %offset, 0
  br label %while.body

while.body:                                       ; preds = %if.end62.while.body_crit_edge, %while.body.lr.ph
  %dec6.in = phi i32 [ %count, %while.body.lr.ph ], [ %dec6, %if.end62.while.body_crit_edge ]
  %s.05 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %s.2, %if.end62.while.body_crit_edge ]
  %d.04 = phi ptr [ %4, %while.body.lr.ph ], [ %d.2, %if.end62.while.body_crit_edge ]
  %line.addr.03 = phi i32 [ %line, %while.body.lr.ph ], [ %line.addr.1, %if.end62.while.body_crit_edge ]
  %5 = ptrtoint ptr %s.05 to i32
  %6 = ptrtoint ptr %vc_size_row to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vc_size_row, align 4
  %add3 = add i32 %7, %5
  %8 = inttoptr i32 %add3 to ptr
  br label %do.body

do.body:                                          ; preds = %if.end38.do.body_crit_edge, %while.body
  %d.1 = phi ptr [ %d.04, %while.body ], [ %incdec.ptr40, %if.end38.do.body_crit_edge ]
  %s.1 = phi ptr [ %s.05, %while.body ], [ %incdec.ptr39, %if.end38.do.body_crit_edge ]
  %start.0 = phi ptr [ %s.05, %while.body ], [ %start.2, %if.end38.do.body_crit_edge ]
  %x.0 = phi i32 [ 0, %while.body ], [ %x.2, %if.end38.do.body_crit_edge ]
  %attr.0 = phi i16 [ 1, %while.body ], [ %attr.1, %if.end38.do.body_crit_edge ]
  %9 = ptrtoint ptr %s.1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %s.1, align 2
  %11 = and i16 %10, -256
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %attr.0)
  %cmp.not = icmp eq i16 %11, %attr.0
  br i1 %cmp.not, label %do.body.if.end17_crit_edge, label %if.then

do.body.if.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

if.then:                                          ; preds = %do.body
  %cmp9 = icmp ugt ptr %s.1, %start.0
  br i1 %cmp9, label %if.then11, label %if.then.if.end17_crit_edge

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %sub.ptr.lhs.cast = ptrtoint ptr %s.1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %start.0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 1
  tail call void @fbcon_putcs(ptr noundef %vc, ptr noundef %start.0, i32 noundef %sub.ptr.div, i32 noundef %line.addr.03, i32 noundef %x.0)
  %add16 = add i32 %sub.ptr.div, %x.0
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %if.then.if.end17_crit_edge, %do.body.if.end17_crit_edge
  %start.1 = phi ptr [ %s.1, %if.then11 ], [ %start.0, %if.then.if.end17_crit_edge ], [ %start.0, %do.body.if.end17_crit_edge ]
  %x.1 = phi i32 [ %add16, %if.then11 ], [ %x.0, %if.then.if.end17_crit_edge ], [ %x.0, %do.body.if.end17_crit_edge ]
  %attr.1 = phi i16 [ %11, %if.then11 ], [ %11, %if.then.if.end17_crit_edge ], [ %attr.0, %do.body.if.end17_crit_edge ]
  %12 = ptrtoint ptr %d.1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %d.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %13)
  %cmp20 = icmp eq i16 %10, %13
  br i1 %cmp20, label %if.then22, label %if.end17.if.end38_crit_edge

if.end17.if.end38_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end38

if.then22:                                        ; preds = %if.end17
  %cmp23 = icmp ugt ptr %s.1, %start.1
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #22
  %sub.ptr.lhs.cast26 = ptrtoint ptr %s.1 to i32
  %sub.ptr.rhs.cast27 = ptrtoint ptr %start.1 to i32
  %sub.ptr.sub28 = sub i32 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  %sub.ptr.div29 = ashr exact i32 %sub.ptr.sub28, 1
  tail call void @fbcon_putcs(ptr noundef %vc, ptr noundef %start.1, i32 noundef %sub.ptr.div29, i32 noundef %line.addr.03, i32 noundef %x.1)
  %add34 = add i32 %x.1, 1
  %add35 = add i32 %add34, %sub.ptr.div29
  %add.ptr36 = getelementptr i16, ptr %s.1, i32 1
  br label %if.end38

if.else:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #22
  %inc = add i32 %x.1, 1
  %incdec.ptr = getelementptr i16, ptr %start.1, i32 1
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then25, %if.end17.if.end38_crit_edge
  %start.2 = phi ptr [ %add.ptr36, %if.then25 ], [ %incdec.ptr, %if.else ], [ %start.1, %if.end17.if.end38_crit_edge ]
  %x.2 = phi i32 [ %add35, %if.then25 ], [ %inc, %if.else ], [ %x.1, %if.end17.if.end38_crit_edge ]
  %14 = ptrtoint ptr %d.1 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %10, ptr %d.1, align 2
  tail call void @console_conditional_schedule() #20
  %incdec.ptr39 = getelementptr i16, ptr %s.1, i32 1
  %incdec.ptr40 = getelementptr i16, ptr %d.1, i32 1
  %cmp41 = icmp ult ptr %incdec.ptr39, %8
  br i1 %cmp41, label %if.end38.do.body_crit_edge, label %do.end

if.end38.do.body_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body

do.end:                                           ; preds = %if.end38
  %dec6 = add i32 %dec6.in, -1
  %cmp43 = icmp ugt ptr %incdec.ptr39, %start.2
  br i1 %cmp43, label %if.then45, label %do.end.if.end50_crit_edge

do.end.if.end50_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end50

if.then45:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  %sub.ptr.lhs.cast46 = ptrtoint ptr %incdec.ptr39 to i32
  %sub.ptr.rhs.cast47 = ptrtoint ptr %start.2 to i32
  %sub.ptr.sub48 = sub i32 %sub.ptr.lhs.cast46, %sub.ptr.rhs.cast47
  %sub.ptr.div49 = ashr exact i32 %sub.ptr.sub48, 1
  tail call void @fbcon_putcs(ptr noundef %vc, ptr noundef %start.2, i32 noundef %sub.ptr.div49, i32 noundef %line.addr.03, i32 noundef %x.2)
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %do.end.if.end50_crit_edge
  tail call void @console_conditional_schedule() #20
  br i1 %cmp51, label %if.then53, label %if.else55

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #22
  %inc54 = add i32 %line.addr.03, 1
  br label %if.end62

if.else55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #22
  %dec56 = add i32 %line.addr.03, -1
  %15 = ptrtoint ptr %vc_size_row to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vc_size_row, align 4
  %idx.neg = sub i32 0, %16
  %add.ptr58 = getelementptr i16, ptr %incdec.ptr39, i32 %idx.neg
  %add.ptr61 = getelementptr i16, ptr %incdec.ptr40, i32 %idx.neg
  br label %if.end62

if.end62:                                         ; preds = %if.else55, %if.then53
  %line.addr.1 = phi i32 [ %inc54, %if.then53 ], [ %dec56, %if.else55 ]
  %d.2 = phi ptr [ %incdec.ptr40, %if.then53 ], [ %add.ptr61, %if.else55 ]
  %s.2 = phi ptr [ %incdec.ptr39, %if.then53 ], [ %add.ptr58, %if.else55 ]
  %tobool.not = icmp eq i32 %dec6, 0
  br i1 %tobool.not, label %if.end62.while.end_crit_edge, label %if.end62.while.body_crit_edge

if.end62.while.body_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

if.end62.while.end_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.end:                                        ; preds = %if.end62.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ywrap_down(ptr nocapture noundef readonly %vc, i32 noundef %count) unnamed_addr #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom1 = sext i8 %3 to i32
  %arrayidx2 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbcon_par, align 4
  %yscroll = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 4
  %8 = ptrtoint ptr %yscroll to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %yscroll, align 4
  %10 = trunc i32 %count to i16
  %conv6 = sub i16 %9, %10
  store i16 %conv6, ptr %yscroll, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv6)
  %cmp = icmp slt i16 %conv6, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %vrows = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 5
  %11 = ptrtoint ptr %vrows to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vrows, align 4
  %13 = trunc i32 %12 to i16
  %conv12 = add i16 %conv6, %13
  %14 = ptrtoint ptr %yscroll to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv12, ptr %yscroll, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %xoffset = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 7, i32 4
  %15 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %xoffset, align 4
  %16 = ptrtoint ptr %yscroll to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %yscroll, align 4
  %conv14 = sext i16 %17 to i32
  %height = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  %mul = mul i32 %19, %conv14
  %yoffset = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 7, i32 5
  %20 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul, ptr %yoffset, align 4
  %vmode = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 7, i32 25
  %21 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vmode, align 4
  %or = or i32 %22, 256
  store i32 %or, ptr %vmode, align 4
  %update_start = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 5
  %23 = ptrtoint ptr %update_start to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %update_start, align 4
  %call = tail call i32 %24(ptr noundef %5) #20
  %25 = load i32, ptr @scrollback_max, align 4
  %sub17 = sub i32 %25, %count
  %26 = tail call i32 @llvm.smax.i32(i32 %sub17, i32 0)
  store i32 %26, ptr @scrollback_max, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ypan_down(ptr noundef %vc, i32 noundef %count) unnamed_addr #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom1 = sext i8 %3 to i32
  %arrayidx2 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbcon_par, align 4
  %yscroll = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 4
  %8 = ptrtoint ptr %yscroll to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %yscroll, align 4
  %10 = trunc i32 %count to i16
  %conv6 = sub i16 %9, %10
  store i16 %conv6, ptr %yscroll, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv6)
  %cmp = icmp slt i16 %conv6, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %7, align 4
  %vrows = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 5
  %13 = ptrtoint ptr %vrows to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vrows, align 4
  %vc_rows = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 5
  %15 = ptrtoint ptr %vc_rows to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vc_rows, align 4
  %sub10 = sub i32 %14, %16
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %17 = ptrtoint ptr %vc_cols to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vc_cols, align 4
  tail call void %12(ptr noundef %vc, ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef %sub10, i32 noundef 0, i32 noundef %16, i32 noundef %18) #20
  %19 = ptrtoint ptr %vrows to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vrows, align 4
  %21 = ptrtoint ptr %vc_rows to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vc_rows, align 4
  %sub14 = sub i32 %20, %22
  %23 = ptrtoint ptr %yscroll to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %yscroll, align 4
  %25 = trunc i32 %sub14 to i16
  %conv17 = add i16 %24, %25
  store i16 %conv17, ptr %yscroll, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %xoffset = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 7, i32 4
  %26 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %xoffset, align 4
  %27 = ptrtoint ptr %yscroll to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %yscroll, align 4
  %conv19 = sext i16 %28 to i32
  %height = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %29 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height, align 4
  %mul = mul i32 %30, %conv19
  %yoffset = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 7, i32 5
  %31 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul, ptr %yoffset, align 4
  %vmode = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 7, i32 25
  %32 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vmode, align 4
  %and = and i32 %33, -257
  store i32 %and, ptr %vmode, align 4
  %update_start = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 5
  %34 = ptrtoint ptr %update_start to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %update_start, align 4
  %call = tail call i32 %35(ptr noundef %5) #20
  %36 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vc_num, align 4
  %idxprom.i = zext i16 %37 to i32
  %arrayidx.i = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i, align 1
  %idxprom1.i = sext i8 %39 to i32
  %arrayidx2.i = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom1.i
  %40 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx2.i, align 4
  %fbcon_par.i = getelementptr inbounds %struct.fb_info, ptr %41, i32 0, i32 29
  %42 = ptrtoint ptr %fbcon_par.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fbcon_par.i, align 4
  %state.i.i = getelementptr inbounds %struct.fb_info, ptr %41, i32 0, i32 28
  %44 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.not.i.i = icmp eq i32 %45, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end.fbcon_clear_margins.exit_crit_edge

if.end.fbcon_clear_margins.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %fbcon_clear_margins.exit

lor.lhs.false.i.i:                                ; preds = %if.end
  %vc_mode.i.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 17
  %46 = ptrtoint ptr %vc_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %vc_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp1.not.i.i = icmp eq i8 %47, 0
  br i1 %cmp1.not.i.i, label %fbcon_is_inactive.exit.i, label %lor.lhs.false.i.i.fbcon_clear_margins.exit_crit_edge

lor.lhs.false.i.i.fbcon_clear_margins.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %fbcon_clear_margins.exit

fbcon_is_inactive.exit.i:                         ; preds = %lor.lhs.false.i.i
  %graphics.i.i = getelementptr inbounds %struct.fbcon_ops, ptr %43, i32 0, i32 17
  %48 = ptrtoint ptr %graphics.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %graphics.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.i.not.i = icmp eq i32 %49, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %fbcon_is_inactive.exit.i.fbcon_clear_margins.exit_crit_edge

fbcon_is_inactive.exit.i.fbcon_clear_margins.exit_crit_edge: ; preds = %fbcon_is_inactive.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %fbcon_clear_margins.exit

if.then.i:                                        ; preds = %fbcon_is_inactive.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  %clear_margins.i = getelementptr inbounds %struct.fbcon_ops, ptr %43, i32 0, i32 3
  %50 = ptrtoint ptr %clear_margins.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clear_margins.i, align 4
  %52 = load i32, ptr @margin_color, align 4
  tail call void %51(ptr noundef %vc, ptr noundef %41, i32 noundef %52, i32 noundef 1) #20
  br label %fbcon_clear_margins.exit

fbcon_clear_margins.exit:                         ; preds = %if.then.i, %fbcon_is_inactive.exit.i.fbcon_clear_margins.exit_crit_edge, %lor.lhs.false.i.i.fbcon_clear_margins.exit_crit_edge, %if.end.fbcon_clear_margins.exit_crit_edge
  %53 = load i32, ptr @scrollback_max, align 4
  %sub22 = sub i32 %53, %count
  %54 = tail call i32 @llvm.smax.i32(i32 %sub22, i32 0)
  store i32 %54, ptr @scrollback_max, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ypan_down_redraw(ptr noundef %vc, i32 noundef %t, i32 noundef %count) unnamed_addr #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom1 = sext i8 %3 to i32
  %arrayidx2 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbcon_par, align 4
  %yscroll = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 4
  %8 = ptrtoint ptr %yscroll to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %yscroll, align 4
  %10 = trunc i32 %count to i16
  %conv6 = sub i16 %9, %10
  store i16 %conv6, ptr %yscroll, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv6)
  %cmp = icmp slt i16 %conv6, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %vrows = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 5
  %11 = ptrtoint ptr %vrows to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vrows, align 4
  %vc_rows = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 5
  %13 = ptrtoint ptr %vc_rows to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vc_rows, align 4
  %sub10 = sub i32 %12, %14
  %15 = trunc i32 %sub10 to i16
  %conv13 = add i16 %conv6, %15
  %16 = ptrtoint ptr %yscroll to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv13, ptr %yscroll, align 4
  %17 = load i32, ptr %vc_rows, align 4
  %sub15 = sub i32 %17, %count
  %add16 = add i32 %count, %t
  tail call fastcc void @fbcon_redraw_move(ptr noundef %vc, i32 noundef %t, i32 noundef %sub15, i32 noundef %add16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %xoffset = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 7, i32 4
  %18 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %xoffset, align 4
  %19 = ptrtoint ptr %yscroll to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %yscroll, align 4
  %conv18 = sext i16 %20 to i32
  %height = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %21 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height, align 4
  %mul = mul i32 %22, %conv18
  %yoffset = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 7, i32 5
  %23 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul, ptr %yoffset, align 4
  %vmode = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 7, i32 25
  %24 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vmode, align 4
  %and = and i32 %25, -257
  store i32 %and, ptr %vmode, align 4
  %update_start = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 5
  %26 = ptrtoint ptr %update_start to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %update_start, align 4
  %call = tail call i32 %27(ptr noundef %5) #20
  %28 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vc_num, align 4
  %idxprom.i = zext i16 %29 to i32
  %arrayidx.i = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i, align 1
  %idxprom1.i = sext i8 %31 to i32
  %arrayidx2.i = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom1.i
  %32 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx2.i, align 4
  %fbcon_par.i = getelementptr inbounds %struct.fb_info, ptr %33, i32 0, i32 29
  %34 = ptrtoint ptr %fbcon_par.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fbcon_par.i, align 4
  %state.i.i = getelementptr inbounds %struct.fb_info, ptr %33, i32 0, i32 28
  %36 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.not.i.i = icmp eq i32 %37, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end.fbcon_clear_margins.exit_crit_edge

if.end.fbcon_clear_margins.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %fbcon_clear_margins.exit

lor.lhs.false.i.i:                                ; preds = %if.end
  %vc_mode.i.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 17
  %38 = ptrtoint ptr %vc_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %vc_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp1.not.i.i = icmp eq i8 %39, 0
  br i1 %cmp1.not.i.i, label %fbcon_is_inactive.exit.i, label %lor.lhs.false.i.i.fbcon_clear_margins.exit_crit_edge

lor.lhs.false.i.i.fbcon_clear_margins.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %fbcon_clear_margins.exit

fbcon_is_inactive.exit.i:                         ; preds = %lor.lhs.false.i.i
  %graphics.i.i = getelementptr inbounds %struct.fbcon_ops, ptr %35, i32 0, i32 17
  %40 = ptrtoint ptr %graphics.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %graphics.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.not.i = icmp eq i32 %41, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %fbcon_is_inactive.exit.i.fbcon_clear_margins.exit_crit_edge

fbcon_is_inactive.exit.i.fbcon_clear_margins.exit_crit_edge: ; preds = %fbcon_is_inactive.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %fbcon_clear_margins.exit

if.then.i:                                        ; preds = %fbcon_is_inactive.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  %clear_margins.i = getelementptr inbounds %struct.fbcon_ops, ptr %35, i32 0, i32 3
  %42 = ptrtoint ptr %clear_margins.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clear_margins.i, align 4
  %44 = load i32, ptr @margin_color, align 4
  tail call void %43(ptr noundef %vc, ptr noundef %33, i32 noundef %44, i32 noundef 1) #20
  br label %fbcon_clear_margins.exit

fbcon_clear_margins.exit:                         ; preds = %if.then.i, %fbcon_is_inactive.exit.i.fbcon_clear_margins.exit_crit_edge, %lor.lhs.false.i.i.fbcon_clear_margins.exit_crit_edge, %if.end.fbcon_clear_margins.exit_crit_edge
  %45 = load i32, ptr @scrollback_max, align 4
  %sub21 = sub i32 %45, %count
  %46 = tail call i32 @llvm.smax.i32(i32 %sub21, i32 0)
  store i32 %46, ptr @scrollback_max, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_conditional_schedule() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fbcon_bmove_rec(ptr noundef %vc, ptr noundef %p, i32 noundef %sy, i32 noundef %dy, i32 noundef %height, i32 noundef %width, i32 noundef %y_break) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  br label %tailrecurse.outer

tailrecurse.outer:                                ; preds = %tailrecurse.outer.backedge, %entry
  %sy.tr.ph = phi i32 [ %sy, %entry ], [ %sy.tr.ph.be, %tailrecurse.outer.backedge ]
  %dy.tr.ph = phi i32 [ %dy, %entry ], [ %dy.tr.ph.be, %tailrecurse.outer.backedge ]
  %height.tr.ph = phi i32 [ %height, %entry ], [ %height.tr.ph.be, %tailrecurse.outer.backedge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sy.tr.ph, i32 %y_break)
  %cmp = icmp ult i32 %sy.tr.ph, %y_break
  call void @__sanitizer_cov_trace_cmp4(i32 %dy.tr.ph, i32 %y_break)
  %cmp13 = icmp ult i32 %dy.tr.ph, %y_break
  %sub18 = sub i32 %y_break, %dy.tr.ph
  call void @__sanitizer_cov_trace_cmp4(i32 %dy.tr.ph, i32 %sy.tr.ph)
  %cmp19 = icmp slt i32 %dy.tr.ph, %sy.tr.ph
  %add25 = add i32 %sub18, %sy.tr.ph
  %sub = sub i32 %y_break, %sy.tr.ph
  %add10 = add i32 %sub, %dy.tr.ph
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %tailrecurse.outer
  %height.tr = phi i32 [ %height.tr.ph, %tailrecurse.outer ], [ %height.tr.be, %tailrecurse.backedge ]
  %add = add i32 %height.tr, %sy.tr.ph
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %y_break)
  %cmp3 = icmp ugt i32 %add, %y_break
  %or.cond = and i1 %cmp, %cmp3
  br i1 %or.cond, label %if.then, label %if.end12

if.then:                                          ; preds = %tailrecurse
  br i1 %cmp19, label %if.then.tailrecurse.outer.backedge_crit_edge, label %if.else

if.then.tailrecurse.outer.backedge_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %tailrecurse.outer.backedge

tailrecurse.outer.backedge:                       ; preds = %if.then17.tailrecurse.outer.backedge_crit_edge, %if.then.tailrecurse.outer.backedge_crit_edge
  %sub.sink = phi i32 [ %sub18, %if.then17.tailrecurse.outer.backedge_crit_edge ], [ %sub, %if.then.tailrecurse.outer.backedge_crit_edge ]
  %sy.tr.ph.be = phi i32 [ %add25, %if.then17.tailrecurse.outer.backedge_crit_edge ], [ %y_break, %if.then.tailrecurse.outer.backedge_crit_edge ]
  %dy.tr.ph.be = phi i32 [ %y_break, %if.then17.tailrecurse.outer.backedge_crit_edge ], [ %add10, %if.then.tailrecurse.outer.backedge_crit_edge ]
  tail call fastcc void @fbcon_bmove_rec(ptr noundef %vc, ptr noundef %p, i32 noundef %sy.tr.ph, i32 noundef %dy.tr.ph, i32 noundef %sub.sink, i32 noundef %width, i32 noundef %y_break)
  %height.tr.ph.be = sub i32 %height.tr, %sub.sink
  br label %tailrecurse.outer

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %sub11 = sub i32 %height.tr, %sub
  tail call fastcc void @fbcon_bmove_rec(ptr noundef %vc, ptr noundef %p, i32 noundef %y_break, i32 noundef %add10, i32 noundef %sub11, i32 noundef %width, i32 noundef %y_break)
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %if.else24, %if.else
  %height.tr.be = phi i32 [ %sub, %if.else ], [ %sub18, %if.else24 ]
  br label %tailrecurse

if.end12:                                         ; preds = %tailrecurse
  %add15 = add i32 %height.tr, %dy.tr.ph
  call void @__sanitizer_cov_trace_cmp4(i32 %add15, i32 %y_break)
  %cmp16 = icmp ugt i32 %add15, %y_break
  %or.cond1 = and i1 %cmp13, %cmp16
  br i1 %or.cond1, label %if.then17, label %if.end29

if.then17:                                        ; preds = %if.end12
  br i1 %cmp19, label %if.then17.tailrecurse.outer.backedge_crit_edge, label %if.else24

if.then17.tailrecurse.outer.backedge_crit_edge:   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #22
  br label %tailrecurse.outer.backedge

if.else24:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #22
  %sub27 = sub i32 %height.tr, %sub18
  tail call fastcc void @fbcon_bmove_rec(ptr noundef %vc, ptr noundef %p, i32 noundef %add25, i32 noundef %y_break, i32 noundef %sub27, i32 noundef %width, i32 noundef %y_break)
  br label %tailrecurse.backedge

if.end29:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom1 = sext i8 %3 to i32
  %arrayidx2 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbcon_par, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %vrows.i = getelementptr inbounds %struct.fbcon_display, ptr %p, i32 0, i32 5
  %10 = ptrtoint ptr %vrows.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vrows.i, align 4
  %yscroll.i = getelementptr inbounds %struct.fbcon_display, ptr %p, i32 0, i32 4
  %12 = ptrtoint ptr %yscroll.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %yscroll.i, align 4
  %conv.i = sext i16 %13 to i32
  %add.i = add i32 %sy.tr.ph, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %11)
  %cmp.i = icmp slt i32 %add.i, %11
  %sub.i = select i1 %cmp.i, i32 0, i32 %11
  %cond.i = sub i32 %add.i, %sub.i
  %add.i5 = add i32 %dy.tr.ph, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i5, i32 %11)
  %cmp.i6 = icmp slt i32 %add.i5, %11
  %sub.i7 = select i1 %cmp.i6, i32 0, i32 %11
  %cond.i8 = sub i32 %add.i5, %sub.i7
  tail call void %9(ptr noundef %vc, ptr noundef %5, i32 noundef %cond.i, i32 noundef 0, i32 noundef %cond.i8, i32 noundef 0, i32 noundef %height.tr, i32 noundef %width) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_show_logo(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_blank(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fbcon_do_set_font(ptr noundef %vc, i32 noundef %w, i32 noundef %h, i32 noundef %charcount, ptr noundef %data, i32 noundef %userfont) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom1 = sext i8 %3 to i32
  %arrayidx2 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbcon_par, align 4
  %arrayidx5 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom
  %vc_font = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28
  %8 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vc_font, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %w)
  %cmp.not = icmp eq i32 %9, %w
  br i1 %cmp.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %height = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %h)
  %cmp7 = icmp ne i32 %11, %h
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %12 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %cmp7, %lor.rhs ]
  %userfont8 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom, i32 1
  %13 = ptrtoint ptr %userfont8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %userfont8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %lor.end.if.end_crit_edge, label %if.then

lor.end.if.end_crit_edge:                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #22
  %data10 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 3
  %15 = ptrtoint ptr %data10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.end.if.end_crit_edge
  %old_data.0 = phi ptr [ %16, %if.then ], [ null, %lor.end.if.end_crit_edge ]
  %17 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %data, ptr %arrayidx5, align 4
  %data12 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 3
  %18 = ptrtoint ptr %data12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %data, ptr %data12, align 4
  %19 = ptrtoint ptr %userfont8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %userfont, ptr %userfont8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %userfont)
  %tobool14.not = icmp eq i32 %userfont, 0
  br i1 %tobool14.not, label %if.end.if.end17_crit_edge, label %if.then15

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx16 = getelementptr i32, ptr %data, i32 -1
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx16, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %arrayidx16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end.if.end17_crit_edge
  %22 = ptrtoint ptr %vc_font to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %w, ptr %vc_font, align 4
  %height21 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %23 = ptrtoint ptr %height21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %h, ptr %height21, align 4
  %charcount23 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 2
  %24 = ptrtoint ptr %charcount23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %charcount, ptr %charcount23, align 4
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %25 = ptrtoint ptr %vc_hi_font_mask to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vc_hi_font_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool24.not = icmp ne i16 %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %charcount)
  %cmp25 = icmp eq i32 %charcount, 256
  %or.cond = and i1 %cmp25, %tobool24.not
  br i1 %or.cond, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end17
  %27 = ptrtoint ptr %vc_hi_font_mask to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %vc_hi_font_mask, align 4
  %vc_can_do_color.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 37
  %28 = ptrtoint ptr %vc_can_do_color.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load.i = load i16, ptr %vc_can_do_color.i, align 4
  %29 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool1.not.i = icmp eq i16 %29, 0
  br i1 %tobool1.not.i, label %if.then27.if.end35_crit_edge, label %if.then13.i

if.then27.if.end35_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end35

if.then13.i:                                      ; preds = %if.then27
  %vc_complement_mask.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 24
  %30 = ptrtoint ptr %vc_complement_mask.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vc_complement_mask.i, align 4
  %32 = lshr i16 %31, 1
  store i16 %32, ptr %vc_complement_mask.i, align 4
  %vc_s_complement_mask.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 25
  %33 = ptrtoint ptr %vc_s_complement_mask.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vc_s_complement_mask.i, align 2
  %35 = lshr i16 %34, 1
  store i16 %35, ptr %vc_s_complement_mask.i, align 2
  %vc_screenbuf_size.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 16
  %36 = ptrtoint ptr %vc_screenbuf_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vc_screenbuf_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp145.not.i = icmp ult i32 %37, 2
  br i1 %cmp145.not.i, label %if.then13.i.for.end.i_crit_edge, label %for.body.preheader.i

if.then13.i.for.end.i_crit_edge:                  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.then13.i
  %div143.i = lshr i32 %37, 1
  %vc_origin.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %38 = ptrtoint ptr %vc_origin.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vc_origin.i, align 4
  %40 = inttoptr i32 %39 to ptr
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %count.0147.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %div143.i, %for.body.preheader.i ]
  %cp.0146.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %40, %for.body.preheader.i ]
  %41 = ptrtoint ptr %cp.0146.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %cp.0146.i, align 2
  %and.i = lshr i16 %42, 1
  %43 = and i16 %and.i, 32512
  %and18.i = and i16 %42, 255
  %or.i = or i16 %43, %and18.i
  store i16 %or.i, ptr %cp.0146.i, align 2
  %dec.i = add nsw i32 %count.0147.i, -1
  %incdec.ptr.i = getelementptr i16, ptr %cp.0146.i, i32 1
  %cmp.i = icmp ugt i32 %count.0147.i, 1
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then13.i.for.end.i_crit_edge
  %vc_video_erase_char.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 29
  %44 = ptrtoint ptr %vc_video_erase_char.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vc_video_erase_char.i, align 4
  %and21.i = lshr i16 %45, 1
  %46 = and i16 %and21.i, 32512
  %and24.i = and i16 %45, 255
  %or25.i = or i16 %46, %and24.i
  store i16 %or25.i, ptr %vc_video_erase_char.i, align 4
  %vc_attr.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 18
  %47 = ptrtoint ptr %vc_attr.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %vc_attr.i, align 1
  %49 = lshr i8 %48, 1
  store i8 %49, ptr %vc_attr.i, align 1
  br label %if.end35

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool29.not = icmp eq i16 %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %charcount)
  %cmp31 = icmp eq i32 %charcount, 512
  %or.cond1 = and i1 %cmp31, %tobool29.not
  br i1 %or.cond1, label %if.then33, label %if.else.if.end35_crit_edge

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end35

if.then33:                                        ; preds = %if.else
  %50 = ptrtoint ptr %vc_hi_font_mask to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 256, ptr %vc_hi_font_mask, align 4
  %vc_can_do_color33.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 37
  %51 = ptrtoint ptr %vc_can_do_color33.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load34.i = load i16, ptr %vc_can_do_color33.i, align 4
  %52 = and i16 %bf.load34.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool38.not.i = icmp eq i16 %52, 0
  br i1 %tobool38.not.i, label %if.then33.if.end47.i_crit_edge, label %if.then39.i

if.then33.if.end47.i_crit_edge:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end47.i

if.then39.i:                                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #22
  %vc_complement_mask40.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 24
  %53 = ptrtoint ptr %vc_complement_mask40.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %vc_complement_mask40.i, align 4
  %shl.i = shl i16 %54, 1
  store i16 %shl.i, ptr %vc_complement_mask40.i, align 4
  %vc_s_complement_mask43.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 25
  %55 = ptrtoint ptr %vc_s_complement_mask43.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %vc_s_complement_mask43.i, align 2
  %shl45.i = shl i16 %56, 1
  store i16 %shl45.i, ptr %vc_s_complement_mask43.i, align 2
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then39.i, %if.then33.if.end47.i_crit_edge
  %vc_screenbuf_size51.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 16
  %57 = ptrtoint ptr %vc_screenbuf_size51.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %vc_screenbuf_size51.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %cmp55148.not.i = icmp ult i32 %58, 2
  br i1 %cmp55148.not.i, label %if.end47.i.for.end80.i_crit_edge, label %for.body57.preheader.i

if.end47.i.for.end80.i_crit_edge:                 ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end80.i

for.body57.preheader.i:                           ; preds = %if.end47.i
  %div52144.i = lshr i32 %58, 1
  %vc_origin49.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %59 = ptrtoint ptr %vc_origin49.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %vc_origin49.i, align 4
  %61 = inttoptr i32 %60 to ptr
  br label %for.body57.i

for.body57.i:                                     ; preds = %for.body57.i.for.body57.i_crit_edge, %for.body57.preheader.i
  %count50.0150.i = phi i32 [ %dec78.i, %for.body57.i.for.body57.i_crit_edge ], [ %div52144.i, %for.body57.preheader.i ]
  %cp48.0149.i = phi ptr [ %incdec.ptr79.i, %for.body57.i.for.body57.i_crit_edge ], [ %61, %for.body57.preheader.i ]
  %62 = ptrtoint ptr %cp48.0149.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %cp48.0149.i, align 2
  %64 = ptrtoint ptr %vc_can_do_color33.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %bf.load59.i = load i16, ptr %vc_can_do_color33.i, align 4
  %65 = and i16 %bf.load59.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool63.not.i = icmp eq i16 %65, 0
  %and66.i = shl i16 %63, 1
  %shl67.i = and i16 %and66.i, -512
  %and69.i = and i16 %63, 255
  %or70.i = or i16 %shl67.i, %and69.i
  %66 = and i16 %63, -257
  %newc.0.i = select i1 %tobool63.not.i, i16 %66, i16 %or70.i
  %67 = ptrtoint ptr %cp48.0149.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %newc.0.i, ptr %cp48.0149.i, align 2
  %dec78.i = add nsw i32 %count50.0150.i, -1
  %incdec.ptr79.i = getelementptr i16, ptr %cp48.0149.i, i32 1
  %cmp55.i = icmp ugt i32 %count50.0150.i, 1
  br i1 %cmp55.i, label %for.body57.i.for.body57.i_crit_edge, label %for.body57.i.for.end80.i_crit_edge

for.body57.i.for.end80.i_crit_edge:               ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end80.i

for.body57.i.for.body57.i_crit_edge:              ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body57.i

for.end80.i:                                      ; preds = %for.body57.i.for.end80.i_crit_edge, %if.end47.i.for.end80.i_crit_edge
  %vc_video_erase_char81.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 29
  %68 = ptrtoint ptr %vc_video_erase_char81.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %vc_video_erase_char81.i, align 4
  %70 = ptrtoint ptr %vc_can_do_color33.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %bf.load83.i = load i16, ptr %vc_can_do_color33.i, align 4
  %71 = and i16 %bf.load83.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool87.not.i = icmp eq i16 %71, 0
  br i1 %tobool87.not.i, label %if.else101.i, label %if.then88.i

if.then88.i:                                      ; preds = %for.end80.i
  call void @__sanitizer_cov_trace_pc() #22
  %and90.i = shl i16 %69, 1
  %shl91.i = and i16 %and90.i, -512
  %and93.i = and i16 %69, 255
  %or94.i = or i16 %shl91.i, %and93.i
  %72 = ptrtoint ptr %vc_video_erase_char81.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %or94.i, ptr %vc_video_erase_char81.i, align 4
  %vc_attr97.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 18
  %73 = ptrtoint ptr %vc_attr97.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %vc_attr97.i, align 1
  %shl99.i = shl i8 %74, 1
  store i8 %shl99.i, ptr %vc_attr97.i, align 1
  br label %if.end35

if.else101.i:                                     ; preds = %for.end80.i
  call void @__sanitizer_cov_trace_pc() #22
  %75 = and i16 %69, -257
  %76 = ptrtoint ptr %vc_video_erase_char81.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %vc_video_erase_char81.i, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else101.i, %if.then88.i, %if.else.if.end35_crit_edge, %for.end.i, %if.then27.if.end35_crit_edge
  br i1 %12, label %if.then37, label %if.else67

if.then37:                                        ; preds = %if.end35
  %var = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6
  %77 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 1
  %79 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %yres, align 4
  %rotate = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 20
  %81 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rotate, align 4
  %83 = zext i32 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %82, label %cond.false [
    i32 0, label %if.then37.cond.end_crit_edge
    i32 2, label %if.then37.cond.end_crit_edge4
  ]

if.then37.cond.end_crit_edge4:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

if.then37.cond.end_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

cond.false:                                       ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then37.cond.end_crit_edge, %if.then37.cond.end_crit_edge4
  %cond = phi i32 [ %80, %cond.false ], [ %78, %if.then37.cond.end_crit_edge ], [ %78, %if.then37.cond.end_crit_edge4 ]
  %84 = zext i32 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %82, label %cond.false63 [
    i32 0, label %cond.end.cond.end64_crit_edge
    i32 2, label %cond.end.cond.end64_crit_edge5
  ]

cond.end.cond.end64_crit_edge5:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end64

cond.end.cond.end64_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end64

cond.false63:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end64

cond.end64:                                       ; preds = %cond.false63, %cond.end.cond.end64_crit_edge, %cond.end.cond.end64_crit_edge5
  %cond65 = phi i32 [ %78, %cond.false63 ], [ %80, %cond.end.cond.end64_crit_edge ], [ %80, %cond.end.cond.end64_crit_edge5 ]
  %div = sdiv i32 %cond, %w
  %div66 = sdiv i32 %cond65, %h
  %call = tail call i32 @vc_resize(ptr noundef %vc, i32 noundef %div, i32 noundef %div66) #20
  br label %if.end76

if.else67:                                        ; preds = %if.end35
  %call68 = tail call zeroext i1 @con_is_visible(ptr noundef %vc) #20
  br i1 %call68, label %land.lhs.true70, label %if.else67.if.end76_crit_edge

if.else67.if.end76_crit_edge:                     ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end76

land.lhs.true70:                                  ; preds = %if.else67
  %vc_mode = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 17
  %85 = ptrtoint ptr %vc_mode to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %vc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp72 = icmp eq i8 %86, 0
  br i1 %cmp72, label %if.then74, label %land.lhs.true70.if.end76_crit_edge

land.lhs.true70.if.end76_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end76

if.then74:                                        ; preds = %land.lhs.true70
  %87 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %vc_num, align 4
  %idxprom.i = zext i16 %88 to i32
  %arrayidx.i = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %idxprom.i
  %89 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.i, align 1
  %idxprom1.i = sext i8 %90 to i32
  %arrayidx2.i = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom1.i
  %91 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx2.i, align 4
  %fbcon_par.i = getelementptr inbounds %struct.fb_info, ptr %92, i32 0, i32 29
  %93 = ptrtoint ptr %fbcon_par.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %fbcon_par.i, align 4
  %state.i.i = getelementptr inbounds %struct.fb_info, ptr %92, i32 0, i32 28
  %95 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp.not.i.i = icmp eq i32 %96, 0
  br i1 %cmp.not.i.i, label %fbcon_is_inactive.exit.i, label %if.then74.fbcon_clear_margins.exit_crit_edge

if.then74.fbcon_clear_margins.exit_crit_edge:     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #22
  br label %fbcon_clear_margins.exit

fbcon_is_inactive.exit.i:                         ; preds = %if.then74
  %graphics.i.i = getelementptr inbounds %struct.fbcon_ops, ptr %94, i32 0, i32 17
  %97 = ptrtoint ptr %graphics.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %graphics.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.i.not.i = icmp eq i32 %98, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %fbcon_is_inactive.exit.i.fbcon_clear_margins.exit_crit_edge

fbcon_is_inactive.exit.i.fbcon_clear_margins.exit_crit_edge: ; preds = %fbcon_is_inactive.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %fbcon_clear_margins.exit

if.then.i:                                        ; preds = %fbcon_is_inactive.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  %clear_margins.i = getelementptr inbounds %struct.fbcon_ops, ptr %94, i32 0, i32 3
  %99 = ptrtoint ptr %clear_margins.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %clear_margins.i, align 4
  %101 = load i32, ptr @margin_color, align 4
  tail call void %100(ptr noundef %vc, ptr noundef %92, i32 noundef %101, i32 noundef 0) #20
  br label %fbcon_clear_margins.exit

fbcon_clear_margins.exit:                         ; preds = %if.then.i, %fbcon_is_inactive.exit.i.fbcon_clear_margins.exit_crit_edge, %if.then74.fbcon_clear_margins.exit_crit_edge
  tail call void @redraw_screen(ptr noundef %vc, i32 noundef 0) #20
  br label %if.end76

if.end76:                                         ; preds = %fbcon_clear_margins.exit, %land.lhs.true70.if.end76_crit_edge, %if.else67.if.end76_crit_edge, %cond.end64
  %tobool77.not = icmp eq ptr %old_data.0, null
  br i1 %tobool77.not, label %if.end76.if.end83_crit_edge, label %land.lhs.true78

if.end76.if.end83_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end83

land.lhs.true78:                                  ; preds = %if.end76
  %arrayidx79 = getelementptr i32, ptr %old_data.0, i32 -1
  %102 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx79, align 4
  %dec = add i32 %103, -1
  store i32 %dec, ptr %arrayidx79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp80 = icmp eq i32 %dec, 0
  br i1 %cmp80, label %if.then82, label %land.lhs.true78.if.end83_crit_edge

land.lhs.true78.if.end83_crit_edge:               ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end83

if.then82:                                        ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr = getelementptr i8, ptr %old_data.0, i32 -16
  tail call void @kfree(ptr noundef %add.ptr) #20
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %land.lhs.true78.if.end83_crit_edge, %if.end76.if.end83_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_find_best_mode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_rotate(ptr nocapture noundef readnone %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @console_lock() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %0 = load i32, ptr @fg_console, align 4
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %cmp = icmp eq i8 %2, -1
  br i1 %cmp, label %entry.err_crit_edge, label %lor.lhs.false

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %err

lor.lhs.false:                                    ; preds = %entry
  %conv = sext i8 %2 to i32
  %arrayidx2 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx2, align 4
  %cmp3 = icmp eq ptr %4, null
  br i1 %cmp3, label %lor.lhs.false.err_crit_edge, label %if.end

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %err

if.end:                                           ; preds = %lor.lhs.false
  %fbcon_par.i = getelementptr inbounds %struct.fb_info, ptr %4, i32 0, i32 29
  %5 = ptrtoint ptr %fbcon_par.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fbcon_par.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.err_crit_edge, label %cond.true.i

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %err

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %rotate.i = getelementptr inbounds %struct.fbcon_ops, ptr %6, i32 0, i32 20
  %7 = ptrtoint ptr %rotate.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rotate.i, align 4
  br label %err

err:                                              ; preds = %cond.true.i, %if.end.err_crit_edge, %lor.lhs.false.err_crit_edge, %entry.err_crit_edge
  %rotate.0 = phi i32 [ 0, %entry.err_crit_edge ], [ 0, %lor.lhs.false.err_crit_edge ], [ %8, %cond.true.i ], [ 0, %if.end.err_crit_edge ]
  tail call void @console_unlock() #20
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.58, i32 noundef %rotate.0)
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_rotate(ptr nocapture noundef readnone %device, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @console_lock() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %0 = load i32, ptr @fg_console, align 4
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %cmp = icmp eq i8 %2, -1
  br i1 %cmp, label %entry.err_crit_edge, label %lor.lhs.false

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %err

lor.lhs.false:                                    ; preds = %entry
  %conv = sext i8 %2 to i32
  %arrayidx2 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx2, align 4
  %cmp3 = icmp eq ptr %4, null
  br i1 %cmp3, label %lor.lhs.false.err_crit_edge, label %if.end

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %err

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 0) #20
  %fbcon_par.i = getelementptr inbounds %struct.fb_info, ptr %4, i32 0, i32 29
  %5 = ptrtoint ptr %fbcon_par.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fbcon_par.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.err_crit_edge, label %lor.lhs.false.i

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %err

lor.lhs.false.i:                                  ; preds = %if.end
  %currcon.i = getelementptr inbounds %struct.fbcon_ops, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %currcon.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %currcon.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i = icmp eq i32 %8, -1
  br i1 %cmp.i, label %lor.lhs.false.i.err_crit_edge, label %if.end.i

lor.lhs.false.i.err_crit_edge:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %err

if.end.i:                                         ; preds = %lor.lhs.false.i
  %arrayidx.i = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = sext i8 %10 to i32
  %arrayidx2.i = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx2.i, align 4
  %cmp3.i = icmp eq ptr %12, %4
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.err_crit_edge

if.end.i.err_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %err

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp7.i = icmp ult i32 %call, 4
  %spec.select.i = select i1 %cmp7.i, i32 %call, i32 0
  %13 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 7
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select.i, ptr %13, align 4
  tail call fastcc void @fbcon_modechanged(ptr noundef nonnull %4) #20
  br label %err

err:                                              ; preds = %if.then4.i, %if.end.i.err_crit_edge, %lor.lhs.false.i.err_crit_edge, %if.end.err_crit_edge, %lor.lhs.false.err_crit_edge, %entry.err_crit_edge
  tail call void @console_unlock() #20
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_rotate_all(ptr nocapture noundef readnone %device, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @console_lock() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %0 = load i32, ptr @fg_console, align 4
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %cmp = icmp eq i8 %2, -1
  br i1 %cmp, label %entry.err_crit_edge, label %lor.lhs.false

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %err

lor.lhs.false:                                    ; preds = %entry
  %conv = sext i8 %2 to i32
  %arrayidx2 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx2, align 4
  %cmp3 = icmp eq ptr %4, null
  br i1 %cmp3, label %lor.lhs.false.err_crit_edge, label %if.end

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %err

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 0) #20
  %fbcon_par.i = getelementptr inbounds %struct.fb_info, ptr %4, i32 0, i32 29
  %5 = ptrtoint ptr %fbcon_par.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fbcon_par.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.err_crit_edge, label %lor.lhs.false.i

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %err

lor.lhs.false.i:                                  ; preds = %if.end
  %currcon.i = getelementptr inbounds %struct.fbcon_ops, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %currcon.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %currcon.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp slt i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp2.i = icmp ugt i32 %call, 3
  %or.cond.i = or i1 %cmp2.i, %cmp.i
  br i1 %or.cond.i, label %lor.lhs.false.i.err_crit_edge, label %if.end.i

lor.lhs.false.i.err_crit_edge:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %err

if.end.i:                                         ; preds = %lor.lhs.false.i
  %9 = load i32, ptr @first_fb_vc, align 4
  %10 = load i32, ptr @last_fb_vc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %10)
  %cmp3.not30.i = icmp sgt i32 %9, %10
  br i1 %cmp3.not30.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.031.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %9, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %i.031.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not.i = icmp eq ptr %12, null
  br i1 %tobool4.not.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false5.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

lor.lhs.false5.i:                                 ; preds = %for.body.i
  %vc_mode.i = getelementptr inbounds %struct.vc_data, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %vc_mode.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %vc_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp6.not.i = icmp eq i8 %14, 0
  br i1 %cmp6.not.i, label %lor.lhs.false8.i, label %lor.lhs.false5.i.for.inc.i_crit_edge

lor.lhs.false5.i.for.inc.i_crit_edge:             ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false5.i
  %arrayidx9.i = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %i.031.i
  %15 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx9.i, align 1
  %idxprom.i = sext i8 %16 to i32
  %arrayidx10.i = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %idxprom.i
  %17 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx10.i, align 4
  %cmp11.not.i = icmp eq ptr %18, %4
  br i1 %cmp11.not.i, label %if.end14.i, label %lor.lhs.false8.i.for.inc.i_crit_edge

lor.lhs.false8.i.for.inc.i_crit_edge:             ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

if.end14.i:                                       ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #22
  %vc_num.i = getelementptr inbounds %struct.vc_data, ptr %12, i32 0, i32 3
  %19 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vc_num.i, align 4
  %idxprom15.i = zext i16 %20 to i32
  %con_rotate.i = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %idxprom15.i, i32 7
  %21 = ptrtoint ptr %con_rotate.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call, ptr %con_rotate.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end14.i, %lor.lhs.false8.i.for.inc.i_crit_edge, %lor.lhs.false5.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.031.i, 1
  %cmp3.not.i = icmp sgt i32 %inc.i, %10
  br i1 %cmp3.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  tail call fastcc void @fbcon_set_all_vcs(ptr noundef nonnull %4) #20
  br label %err

err:                                              ; preds = %for.end.i, %lor.lhs.false.i.err_crit_edge, %if.end.err_crit_edge, %lor.lhs.false.err_crit_edge, %entry.err_crit_edge
  tail call void @console_unlock() #20
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_cursor_blink(ptr nocapture noundef readnone %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @console_lock() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %0 = load i32, ptr @fg_console, align 4
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %cmp = icmp eq i8 %2, -1
  br i1 %cmp, label %entry.err_crit_edge, label %lor.lhs.false

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %err

lor.lhs.false:                                    ; preds = %entry
  %conv = sext i8 %2 to i32
  %arrayidx2 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx2, align 4
  %cmp3 = icmp eq ptr %4, null
  br i1 %cmp3, label %lor.lhs.false.err_crit_edge, label %if.end

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %err

if.end:                                           ; preds = %lor.lhs.false
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %4, i32 0, i32 29
  %5 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fbcon_par, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.err_crit_edge, label %if.end7

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %err

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %flags = getelementptr inbounds %struct.fbcon_ops, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = lshr i32 %8, 1
  %and.lobit = and i32 %and, 1
  br label %err

err:                                              ; preds = %if.end7, %if.end.err_crit_edge, %lor.lhs.false.err_crit_edge, %entry.err_crit_edge
  %blink.0 = phi i32 [ -1, %entry.err_crit_edge ], [ -1, %lor.lhs.false.err_crit_edge ], [ %and.lobit, %if.end7 ], [ -1, %if.end.err_crit_edge ]
  tail call void @console_unlock() #20
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.58, i32 noundef %blink.0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_cursor_blink(ptr nocapture noundef readnone %device, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @console_lock() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %0 = load i32, ptr @fg_console, align 4
  %arrayidx = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %cmp = icmp eq i8 %2, -1
  br i1 %cmp, label %entry.err_crit_edge, label %lor.lhs.false

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %err

lor.lhs.false:                                    ; preds = %entry
  %conv = sext i8 %2 to i32
  %arrayidx2 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx2, align 4
  %cmp3 = icmp eq ptr %4, null
  br i1 %cmp3, label %lor.lhs.false.err_crit_edge, label %if.end

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %err

if.end:                                           ; preds = %lor.lhs.false
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %4, i32 0, i32 29
  %5 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fbcon_par, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.err_crit_edge, label %if.end7

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %err

if.end7:                                          ; preds = %if.end
  %call = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 0) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  store i1 false, ptr @fbcon_cursor_noblink, align 4
  tail call fastcc void @fbcon_add_cursor_timer(ptr noundef nonnull %4)
  br label %err

if.else:                                          ; preds = %if.end7
  store i1 true, ptr @fbcon_cursor_noblink, align 4
  %7 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fbcon_par, align 4
  %func.i = getelementptr inbounds %struct.fb_info, ptr %4, i32 0, i32 9, i32 2
  %9 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %func.i, align 4
  %cmp.i = icmp eq ptr %10, @fb_flashcursor
  br i1 %cmp.i, label %land.lhs.true.i, label %if.else.err_crit_edge

if.else.err_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %err

land.lhs.true.i:                                  ; preds = %if.else
  %flags.i = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 19
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.err_crit_edge, label %if.then.i

land.lhs.true.i.err_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %err

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  %cursor_timer.i = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 8
  %call.i = tail call i32 @del_timer_sync(ptr noundef %cursor_timer.i) #20
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %and2.i = and i32 %14, -3
  store i32 %and2.i, ptr %flags.i, align 4
  br label %err

err:                                              ; preds = %if.then.i, %land.lhs.true.i.err_crit_edge, %if.else.err_crit_edge, %if.then9, %if.end.err_crit_edge, %lor.lhs.false.err_crit_edge, %entry.err_crit_edge
  tail call void @console_unlock() #20
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #18

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbcon_output_notifier(ptr nocapture noundef readnone %nb, i32 noundef %action, ptr nocapture noundef readnone %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ignore_console_lock_warning, i32 noundef 4) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ignore_console_lock_warning to i32))
  %0 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @is_console_locked() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.rhs, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %1 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3.not = icmp eq i32 %1, 0
  br i1 %tobool3.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !209

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3280, i32 noundef 9, ptr noundef null) #20
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #23
  tail call void @dummycon_unregister_output_notifier(ptr noundef nonnull @fbcon_output_nb) #20
  store i1 true, ptr @deferred_takeover, align 1
  store i32 -3, ptr @logo_shown, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i32 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef nonnull @fbcon_deferred_takeover_work) #20
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dummycon_register_output_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fbcon_register_existing_fbs(ptr nocapture noundef readnone %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @console_lock() #20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %i.05
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %call = tail call i32 @fbcon_fb_registered(ptr noundef nonnull %1)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @console_unlock() #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #20

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #21 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #21 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { nounwind }
attributes #21 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #22 = { nomerge }
attributes #23 = { cold nounwind }
attributes #24 = { nobuiltin }
attributes #25 = { nounwind readnone }
attributes #26 = { nounwind allocsize(2) }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !20, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !38, !40, !42, !44, !46, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !111, !112, !113, !114, !116, !118, !120, !122, !124, !125, !126, !127, !129, !130, !132, !133, !135, !137, !139, !141, !143, !144, !145, !146, !148, !149, !151, !152, !154, !155, !156, !157, !159, !160, !161, !162, !163, !165, !167, !169, !170, !171, !172, !174, !175, !176, !178, !179, !181, !183, !185, !187, !189, !191, !193, !194, !195, !196, !198}
!llvm.named.register.sp = !{!199}
!llvm.module.flags = !{!200, !201, !202, !203, !204, !205, !206, !207}
!llvm.ident = !{!208}

!0 = !{ptr @__setup_fb_console_setup, !1, !"__setup_fb_console_setup", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 514, i32 1}
!2 = !{ptr @__ksymtab_fbcon_update_vcs, !3, !"__ksymtab_fbcon_update_vcs", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 2743, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 2792, i32 2}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 2893, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @fbcon_remap_all._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @fbcon_remap_all._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 2942, i32 3}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @fbcon_fb_registered._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @fbcon_fb_registered._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 3052, i32 3}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 3378, i32 10}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 3381, i32 3}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @fb_console_init._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @fb_console_init._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @fb_display, !26, !"fb_display", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 108, i32 29}
!27 = !{ptr @con2fb_map, !28, !"con2fb_map", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 110, i32 20}
!29 = !{ptr @con2fb_map_boot, !30, !"con2fb_map_boot", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 111, i32 20}
!31 = !{ptr @first_fb_vc, !32, !"first_fb_vc", i1 false, i1 false}
!32 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 118, i32 12}
!33 = distinct !{null, !34, !"fbcon_has_console_bind", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 122, i32 12}
!35 = !{ptr @fbcon_device, !36, !"fbcon_device", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 199, i32 23}
!37 = !{ptr @__setup_str_fb_console_setup, !1, !"__setup_str_fb_console_setup", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 437, i32 38}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 438, i32 25}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 443, i32 25}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 444, i32 4}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @fb_console_setup._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @fb_console_setup._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 448, i32 25}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 463, i32 25}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 475, i32 25}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 484, i32 25}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 491, i32 24}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 497, i32 25}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 499, i32 25}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 504, i32 25}
!65 = !{ptr @fontname, !66, !"fontname", i1 false, i1 false}
!66 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 144, i32 13}
!67 = distinct !{null, !68, !"fbcon_is_default", i1 false, i1 false}
!68 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 120, i32 12}
!69 = !{ptr @initial_rotation, !70, !"initial_rotation", i1 false, i1 false}
!70 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 150, i32 12}
!71 = !{ptr @margin_color, !72, !"margin_color", i1 false, i1 false}
!72 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 152, i32 12}
!73 = !{ptr @fbcon_add_cursor_timer.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 409, i32 4}
!75 = !{ptr @.str.22, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @fbcon_add_cursor_timer.__key.23, !77, !"__key", i1 false, i1 false}
!77 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 411, i32 3}
!78 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!79 = distinct !{null, !80, !"fbcon_cursor_noblink", i1 false, i1 false}
!80 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 158, i32 12}
!81 = !{ptr @scrollback_max, !82, !"scrollback_max", i1 false, i1 false}
!82 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 1344, i32 12}
!83 = distinct !{null, !84, !"scrollback_current", i1 false, i1 false}
!84 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 1345, i32 12}
!85 = !{ptr @palette_red, !86, !"palette_red", i1 false, i1 false}
!86 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 2547, i32 12}
!87 = !{ptr @palette_green, !88, !"palette_green", i1 false, i1 false}
!88 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 2548, i32 12}
!89 = !{ptr @palette_blue, !90, !"palette_blue", i1 false, i1 false}
!90 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 2549, i32 12}
!91 = !{ptr @palette_cmap, !92, !"palette_cmap", i1 false, i1 false}
!92 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 2551, i32 23}
!93 = !{ptr @last_fb_vc, !94, !"last_fb_vc", i1 false, i1 false}
!94 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 119, i32 12}
!95 = !{ptr @logo_shown, !96, !"logo_shown", i1 false, i1 false}
!96 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 116, i32 12}
!97 = !{ptr @.str.25, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 801, i32 4}
!99 = !{ptr @.str.26, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @con2fb_init_display._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @con2fb_init_display._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.27, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 654, i32 3}
!104 = !{ptr @.str.28, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @fbcon_prepare_logo._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @fbcon_prepare_logo._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @logo_lines, !108, !"logo_lines", i1 false, i1 false}
!108 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 113, i32 12}
!109 = !{ptr @.str.29, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 780, i32 5}
!111 = !{ptr @.str.30, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @con2fb_release_oldinfo._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @con2fb_release_oldinfo._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = distinct !{null, !115, !"deferred_takeover", i1 false, i1 false}
!115 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 138, i32 13}
!116 = !{ptr @info_idx, !117, !"info_idx", i1 false, i1 false}
!117 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 147, i32 12}
!118 = distinct !{null, !119, !"primary_device", i1 false, i1 false}
!119 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 121, i32 12}
!120 = distinct !{null, !121, !"map_override", i1 false, i1 false}
!121 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 125, i32 12}
!122 = !{ptr @.str.31, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 2908, i32 3}
!124 = !{ptr @.str.32, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @fbcon_select_primary._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @fbcon_select_primary._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @fbcon_select_primary._entry.33, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 2916, i32 4}
!129 = !{ptr @fbcon_select_primary._entry_ptr.34, !128, !"_entry_ptr", i1 false, i1 false}
!130 = distinct !{null, !131, !"__already_done", i1 false, i1 false}
!131 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!132 = distinct !{null, !131, !"<string literal>", i1 false, i1 false}
!133 = distinct !{null, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!135 = !{ptr @.str.37, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!137 = !{ptr @fb_con, !138, !"fb_con", i1 false, i1 false}
!138 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 3085, i32 27}
!139 = !{ptr @.str.38, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 937, i32 29}
!141 = !{ptr @.str.39, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 1010, i32 2}
!143 = !{ptr @.str.40, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.41, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @fbcon_startup.__UNIQUE_ID_ddebug305, !142, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!146 = !{ptr @.str.42, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 1011, i32 2}
!148 = !{ptr @fbcon_startup.__UNIQUE_ID_ddebug306, !147, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!149 = !{ptr @.str.43, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 1012, i32 2}
!151 = !{ptr @fbcon_startup.__UNIQUE_ID_ddebug307, !150, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!152 = !{ptr @.str.44, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 1128, i32 5}
!154 = !{ptr @.str.45, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @fbcon_init._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @fbcon_init._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.46, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 3342, i32 3}
!159 = !{ptr @.str.47, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @fbcon_exit.__UNIQUE_ID_ddebug310, !158, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!161 = !{ptr @.str.48, !158, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.49, !158, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @fbcon_output_nb, !164, !"fbcon_output_nb", i1 false, i1 false}
!164 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 3274, i32 30}
!165 = !{ptr @scrollback_phys_max, !166, !"scrollback_phys_max", i1 false, i1 false}
!166 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 1343, i32 12}
!167 = !{ptr @.str.50, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 2136, i32 5}
!169 = !{ptr @.str.51, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @fbcon_switch._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @fbcon_switch._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.52, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 2056, i32 3}
!174 = !{ptr @.str.53, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @fbcon_resize.__UNIQUE_ID_ddebug308, !173, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!176 = !{ptr @.str.54, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 2066, i32 3}
!178 = !{ptr @fbcon_resize.__UNIQUE_ID_ddebug309, !177, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!179 = distinct !{null, !180, !"fbcon_has_sysfs", i1 false, i1 false}
!180 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 151, i32 12}
!181 = !{ptr @.str.55, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 3232, i32 2}
!183 = !{ptr @.str.56, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 3233, i32 2}
!185 = !{ptr @.str.57, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 3234, i32 2}
!187 = !{ptr @device_attrs, !188, !"device_attrs", i1 false, i1 false}
!188 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 3231, i32 32}
!189 = !{ptr @.str.58, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 3169, i32 34}
!191 = !{ptr @.str.59, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 3282, i32 2}
!193 = !{ptr @.str.60, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @fbcon_output_notifier._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @fbcon_output_notifier._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.61, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/video/fbdev/core/fbcon.c", i32 3275, i32 8}
!198 = !{ptr @fbcon_deferred_takeover_work, !197, !"fbcon_deferred_takeover_work", i1 false, i1 false}
!199 = !{!"sp"}
!200 = !{i32 1, !"wchar_size", i32 2}
!201 = !{i32 1, !"min_enum_size", i32 4}
!202 = !{i32 8, !"branch-target-enforcement", i32 0}
!203 = !{i32 8, !"sign-return-address", i32 0}
!204 = !{i32 8, !"sign-return-address-all", i32 0}
!205 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!206 = !{i32 7, !"uwtable", i32 1}
!207 = !{i32 7, !"frame-pointer", i32 2}
!208 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!209 = !{!"branch_weights", i32 1, i32 2000}
!210 = !{!"auto-init"}
!211 = !{i64 2152488597, i64 2152488622}
!212 = !{!"branch_weights", i32 2000, i32 1}
!213 = !{i64 4984152}
!214 = !{i64 4984349}
!215 = !{i64 2152469582}
!216 = !{i64 2149037357, i64 2149037362, i64 2149037375, i64 2149037419, i64 2149037453, i64 2149037474}
