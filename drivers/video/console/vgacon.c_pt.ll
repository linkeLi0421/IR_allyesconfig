; ModuleID = '/llk/IR_all_yes/drivers/video/console/vgacon.c_pt.bc'
source_filename = "../drivers/video/console/vgacon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+vga_con\22, \22a\22\09"
module asm "\09.weak\09__crc_vga_con\09\09\09\09"
module asm "\09.long\09__crc_vga_con\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vga_con:\09\09\09\09\09"
module asm "\09.asciz \09\22vga_con\22\09\09\09\09\09"
module asm "__kstrtabns_vga_con:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.consw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vc = type { ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, ptr, i32, %struct.wait_queue_head, i16, i8, i32, [8 x i32], [48 x i8], ptr, i32, i32, i32, i16, ptr, ptr, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.console_font = type { i32, i32, i32, ptr }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@__setup_str_no_scroll = internal constant [10 x i8] c"no-scroll\00", section ".init.rodata", align 1
@__setup_no_scroll = internal global %struct.obs_kernel_param { ptr @__setup_str_no_scroll, ptr @no_scroll, i32 0 }, section ".init.setup", align 4
@vga_con = dso_local constant { %struct.consw, [56 x i8] } { %struct.consw { ptr null, ptr @vgacon_startup, ptr @vgacon_init, ptr @vgacon_deinit, ptr @vgacon_clear, ptr @vgacon_putc, ptr @vgacon_putcs, ptr @vgacon_cursor, ptr @vgacon_scroll, ptr @vgacon_switch, ptr @vgacon_blank, ptr @vgacon_font_set, ptr @vgacon_font_get, ptr null, ptr @vgacon_resize, ptr @vgacon_set_palette, ptr @vgacon_scrolldelta, ptr @vgacon_set_origin, ptr @vgacon_save_screen, ptr @vgacon_build_attr, ptr @vgacon_invert_region, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_vga_con = external dso_local constant [0 x i8], align 1
@__kstrtabns_vga_con = external dso_local constant [0 x i8], align 1
@__ksymtab_vga_con = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vga_con to i32), ptr @__kstrtab_vga_con, ptr @__kstrtabns_vga_con }, section "___ksymtab+vga_con", align 4
@__UNIQUE_ID_file228 = internal constant [41 x i8] c"vgacon.file=drivers/video/console/vgacon\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [19 x i8] c"vgacon.license=GPL\00", section ".modinfo", align 1
@vga_hardscroll_enabled = internal global { i8, [31 x i8] } zeroinitializer, align 32
@vga_hardscroll_user_enable = internal global { i1, [31 x i8] } zeroinitializer, align 32
@screen_info = external dso_local local_unnamed_addr global %struct.screen_info, align 1
@dummy_con = external dso_local constant %struct.consw, align 4
@conswitchp = external dso_local local_unnamed_addr global ptr, align 4
@vga_video_num_lines = internal global { i32, [28 x i8] } zeroinitializer, align 32
@vga_video_num_columns = internal global { i32, [28 x i8] } zeroinitializer, align 32
@vga_vram_base = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@vga_video_port_reg = internal unnamed_addr global i16 0, section ".data..read_mostly", align 2
@vga_video_port_val = internal unnamed_addr global i16 0, section ".data..read_mostly", align 2
@vgacon_startup.ega_console_resource = internal global { %struct.resource, [32 x i8] } { %struct.resource { i32 944, i32 959, ptr @.str, i32 256, i32 0, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ega\00", [28 x i8] zeroinitializer }, align 32
@vga_video_type = internal unnamed_addr global i8 0, section ".data..read_mostly", align 1
@vga_vram_size = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EGA+\00", [27 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@vgacon_startup.mda1_console_resource = internal global { %struct.resource, [32 x i8] } { %struct.resource { i32 944, i32 955, ptr @.str.2, i32 256, i32 0, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mda\00", [28 x i8] zeroinitializer }, align 32
@vgacon_startup.mda2_console_resource = internal global { %struct.resource, [32 x i8] } { %struct.resource { i32 959, i32 959, ptr @.str.2, i32 256, i32 0, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"*MDA\00", [27 x i8] zeroinitializer }, align 32
@vga_video_font_height = internal global { i32, [28 x i8] } zeroinitializer, align 32
@vga_can_do_color = internal global { i1, [31 x i8] } zeroinitializer, align 32
@vgacon_startup.ega_console_resource.4 = internal global { %struct.resource, [32 x i8] } { %struct.resource { i32 960, i32 991, ptr @.str, i32 256, i32 0, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EGA\00", [28 x i8] zeroinitializer }, align 32
@vgacon_startup.vga_console_resource = internal global { %struct.resource, [32 x i8] } { %struct.resource { i32 960, i32 991, ptr @.str.6, i32 256, i32 0, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vga+\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VGA+\00", [27 x i8] zeroinitializer }, align 32
@color_table = external dso_local constant [0 x i8], align 1
@default_red = external dso_local local_unnamed_addr global [0 x i8], align 1
@default_grn = external dso_local local_unnamed_addr global [0 x i8], align 1
@default_blu = external dso_local local_unnamed_addr global [0 x i8], align 1
@vgacon_startup.cga_console_resource = internal global { %struct.resource, [32 x i8] } { %struct.resource { i32 980, i32 981, ptr @.str.8, i32 256, i32 0, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cga\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"*CGA\00", [27 x i8] zeroinitializer }, align 32
@vga_base = external dso_local local_unnamed_addr global i32, align 4
@vga_vram_end = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@vga_default_font_height = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@vga_scan_lines = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@vgacon_xres = internal global { i32, [28 x i8] } zeroinitializer, align 32
@vgacon_yres = internal global { i32, [28 x i8] } zeroinitializer, align 32
@vga_512_chars = internal global { i8, [31 x i8] } zeroinitializer, align 32
@vgacon_uni_pagedir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@vgacon_refcount = internal global { i32, [28 x i8] } zeroinitializer, align 32
@global_cursor_default = external dso_local local_unnamed_addr global i32, align 4
@vga_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vga_lock\00", [23 x i8] zeroinitializer }, align 32
@cursor_size_lastfrom = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cursor_size_lastto = internal global { i32, [28 x i8] } zeroinitializer, align 32
@vga_is_gfx = internal global { i1, [31 x i8] } zeroinitializer, align 32
@vga_rolled_over = internal global { i32, [28 x i8] } zeroinitializer, align 32
@vga_vesa_blanked = internal global { i32, [28 x i8] } zeroinitializer, align 32
@vga_palette_blanked = internal global { i1, [31 x i8] } zeroinitializer, align 32
@vga_state.0 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@vga_state.1 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@vga_state.2 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@vga_state.3 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@vga_state.4 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@vga_state.5 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@vga_state.6 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@vga_state.7 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@vga_state.8 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@vga_state.9 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@vga_state.10 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@vga_state.11 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/video/console/vgacon.c\00", [33 x i8] zeroinitializer }, align 32
@vc_cons = external dso_local local_unnamed_addr global [63 x %struct.vc], align 4
@console_blanked = external dso_local local_unnamed_addr global i32, align 4
@vgacon_save_screen.vga_bootup_console = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 35, i64 112]
@__sancov_gen_cov_switch_values.12 = internal global [7 x i64] [i64 5, i64 8, i64 13, i64 14, i64 16, i64 18, i64 106]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 512]
@___asan_gen_.17 = private unnamed_addr constant [8 x i8] c"vga_con\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1183, i32 20 }
@___asan_gen_.20 = private unnamed_addr constant [23 x i8] c"vga_hardscroll_enabled\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 100, i32 13 }
@___asan_gen_.23 = private unnamed_addr constant [27 x i8] c"vga_hardscroll_user_enable\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"vga_video_num_lines\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 88, i32 21 }
@___asan_gen_.27 = private unnamed_addr constant [22 x i8] c"vga_video_num_columns\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 87, i32 21 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 198, i32 27 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 199, i32 18 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 205, i32 19 }
@___asan_gen_.39 = private unnamed_addr constant [22 x i8] c"mda1_console_resource\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 209, i32 27 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 210, i32 18 }
@___asan_gen_.45 = private unnamed_addr constant [22 x i8] c"mda2_console_resource\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 214, i32 27 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 221, i32 19 }
@___asan_gen_.51 = private unnamed_addr constant [22 x i8] c"vga_video_font_height\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 96, i32 14 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"vga_can_do_color\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [21 x i8] c"ega_console_resource\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 240, i32 28 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 246, i32 20 }
@___asan_gen_.61 = private unnamed_addr constant [21 x i8] c"vga_console_resource\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 250, i32 28 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 251, i32 19 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 256, i32 20 }
@___asan_gen_.70 = private unnamed_addr constant [21 x i8] c"cga_console_resource\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 285, i32 27 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 286, i32 18 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 292, i32 19 }
@___asan_gen_.79 = private unnamed_addr constant [12 x i8] c"vgacon_xres\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 57, i32 12 }
@___asan_gen_.82 = private unnamed_addr constant [12 x i8] c"vgacon_yres\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 58, i32 12 }
@___asan_gen_.85 = private unnamed_addr constant [14 x i8] c"vga_512_chars\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 95, i32 15 }
@___asan_gen_.88 = private unnamed_addr constant [19 x i8] c"vgacon_uni_pagedir\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 78, i32 28 }
@___asan_gen_.91 = private unnamed_addr constant [16 x i8] c"vgacon_refcount\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 79, i32 12 }
@___asan_gen_.94 = private unnamed_addr constant [9 x i8] c"vga_lock\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 54, i32 8 }
@___asan_gen_.100 = private unnamed_addr constant [21 x i8] c"cursor_size_lastfrom\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 55, i32 12 }
@___asan_gen_.103 = private unnamed_addr constant [19 x i8] c"cursor_size_lastto\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 56, i32 12 }
@___asan_gen_.106 = private unnamed_addr constant [11 x i8] c"vga_is_gfx\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [16 x i8] c"vga_rolled_over\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 98, i32 22 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"vga_vesa_blanked\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 92, i32 13 }
@___asan_gen_.113 = private unnamed_addr constant [20 x i8] c"vga_palette_blanked\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [12 x i8] c"vga_state.0\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [12 x i8] c"vga_state.1\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [12 x i8] c"vga_state.2\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [12 x i8] c"vga_state.3\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [12 x i8] c"vga_state.4\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [12 x i8] c"vga_state.5\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [12 x i8] c"vga_state.6\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [12 x i8] c"vga_state.7\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [12 x i8] c"vga_state.8\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [12 x i8] c"vga_state.9\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [13 x i8] c"vga_state.10\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [13 x i8] c"vga_state.11\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [34 x i8] c"../drivers/video/console/vgacon.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 891, i32 5 }
@___asan_gen_.129 = private unnamed_addr constant [38 x i8] c"vgacon_save_screen.vga_bootup_console\00", align 1
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__ksymtab_vga_con, ptr @__setup_no_scroll, ptr @vga_con, ptr @vga_hardscroll_enabled, ptr @vga_hardscroll_user_enable, ptr @vga_video_num_lines, ptr @vga_video_num_columns, ptr @vgacon_startup.ega_console_resource, ptr @.str, ptr @.str.1, ptr @vgacon_startup.mda1_console_resource, ptr @.str.2, ptr @vgacon_startup.mda2_console_resource, ptr @.str.3, ptr @vga_video_font_height, ptr @vga_can_do_color, ptr @vgacon_startup.ega_console_resource.4, ptr @.str.5, ptr @vgacon_startup.vga_console_resource, ptr @.str.6, ptr @.str.7, ptr @vgacon_startup.cga_console_resource, ptr @.str.8, ptr @.str.9, ptr @vgacon_xres, ptr @vgacon_yres, ptr @vga_512_chars, ptr @vgacon_uni_pagedir, ptr @vgacon_refcount, ptr @vga_lock, ptr @.str.10, ptr @cursor_size_lastfrom, ptr @cursor_size_lastto, ptr @vga_is_gfx, ptr @vga_rolled_over, ptr @vga_vesa_blanked, ptr @vga_palette_blanked, ptr @vga_state.0, ptr @vga_state.1, ptr @vga_state.2, ptr @vga_state.3, ptr @vga_state.4, ptr @vga_state.5, ptr @vga_state.6, ptr @vga_state.7, ptr @vga_state.8, ptr @vga_state.9, ptr @vga_state.10, ptr @vga_state.11, ptr @.str.11, ptr @vgacon_save_screen.vga_bootup_console], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_con to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_hardscroll_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_hardscroll_user_enable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_video_num_lines to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_video_num_columns to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgacon_startup.ega_console_resource to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgacon_startup.mda1_console_resource to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgacon_startup.mda2_console_resource to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_video_font_height to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_can_do_color to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgacon_startup.ega_console_resource.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgacon_startup.vga_console_resource to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgacon_startup.cga_console_resource to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgacon_xres to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgacon_yres to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_512_chars to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgacon_uni_pagedir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgacon_refcount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cursor_size_lastfrom to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cursor_size_lastto to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_is_gfx to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_rolled_over to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_vesa_blanked to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_palette_blanked to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_state.0 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_state.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_state.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_state.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_state.4 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_state.5 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_state.6 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_state.7 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_state.8 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_state.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_state.10 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_state.11 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgacon_save_screen.vga_bootup_console to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @no_scroll(ptr nocapture noundef readnone %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  store i8 0, ptr @vga_hardscroll_enabled, align 1
  store i1 true, ptr @vga_hardscroll_user_enable, align 1
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vgacon_startup() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 11) to i32))
  %0 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 11), align 1
  %1 = zext i8 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i8 %0, label %if.end [
    i8 35, label %entry.no_vga_crit_edge
    i8 112, label %entry.no_vga_crit_edge157
  ]

entry.no_vga_crit_edge157:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_vga

entry.no_vga_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_vga

no_vga.sink.split:                                ; preds = %lor.lhs.false96.no_vga.sink.split_crit_edge, %if.end91.no_vga.sink.split_crit_edge, %lor.lhs.false84.no_vga.sink.split_crit_edge, %if.end78.no_vga.sink.split_crit_edge
  %2 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %2)
  store volatile i16 %27, ptr %25, align 2
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %3)
  store volatile i16 %29, ptr %add.ptr, align 2
  br label %no_vga

no_vga:                                           ; preds = %if.end13.no_vga_crit_edge, %if.end13.no_vga_crit_edge158, %if.end13.no_vga_crit_edge159, %if.end13.no_vga_crit_edge160, %if.end13.no_vga_crit_edge161, %lor.lhs.false8.no_vga_crit_edge, %if.end.no_vga_crit_edge, %no_vga.sink.split, %entry.no_vga_crit_edge, %entry.no_vga_crit_edge157
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @conswitchp to i32))
  store ptr @dummy_con, ptr @conswitchp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.consw, ptr @dummy_con, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.consw, ptr @dummy_con, i32 0, i32 1), align 4
  %call = tail call ptr %4() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 10) to i32))
  %5 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 10), align 1
  %conv5 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp6 = icmp eq i8 %5, 0
  br i1 %cmp6, label %if.end.no_vga_crit_edge, label %lor.lhs.false8

if.end.no_vga_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_vga

lor.lhs.false8:                                   ; preds = %if.end
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 5) to i32))
  %6 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 5), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp10 = icmp eq i8 %6, 0
  br i1 %cmp10, label %lor.lhs.false8.no_vga_crit_edge, label %if.end13

lor.lhs.false8.no_vga_crit_edge:                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_vga

if.end13:                                         ; preds = %lor.lhs.false8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 4) to i32))
  %7 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 4), align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %7, label %if.end34 [
    i8 13, label %if.end13.no_vga_crit_edge
    i8 14, label %if.end13.no_vga_crit_edge158
    i8 16, label %if.end13.no_vga_crit_edge159
    i8 18, label %if.end13.no_vga_crit_edge160
    i8 106, label %if.end13.no_vga_crit_edge161
  ]

if.end13.no_vga_crit_edge161:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_vga

if.end13.no_vga_crit_edge160:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_vga

if.end13.no_vga_crit_edge159:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_vga

if.end13.no_vga_crit_edge158:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_vga

if.end13.no_vga_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_vga

if.end34:                                         ; preds = %if.end13
  store i32 %conv5, ptr @vga_video_num_lines, align 4
  %conv36 = zext i8 %6 to i32
  store i32 %conv36, ptr @vga_video_num_columns, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %7)
  %cmp38 = icmp eq i8 %7, 7
  br i1 %cmp38, label %if.then40, label %if.else49

if.then40:                                        ; preds = %if.end34
  store i32 720896, ptr @vga_vram_base, align 4
  store i16 948, ptr @vga_video_port_reg, align 2
  store i16 949, ptr @vga_video_port_val, align 2
  call void @__asan_loadN_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 8) to i32), i32 2)
  %9 = load i16, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 8), align 1
  %10 = and i16 %9, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %10)
  %cmp42.not = icmp eq i16 %10, 16
  br i1 %cmp42.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  store i8 32, ptr @vga_video_type, align 1
  store i32 32768, ptr @vga_vram_size, align 4
  %call45 = tail call i32 @request_resource(ptr noundef nonnull @ioport_resource, ptr noundef nonnull @vgacon_startup.ega_console_resource) #9
  br label %if.end78

if.else:                                          ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  store i8 16, ptr @vga_video_type, align 1
  store i32 8192, ptr @vga_vram_size, align 4
  %call46 = tail call i32 @request_resource(ptr noundef nonnull @ioport_resource, ptr noundef nonnull @vgacon_startup.mda1_console_resource) #9
  %call47 = tail call i32 @request_resource(ptr noundef nonnull @ioport_resource, ptr noundef nonnull @vgacon_startup.mda2_console_resource) #9
  store i32 14, ptr @vga_video_font_height, align 4
  br label %if.end78

if.else49:                                        ; preds = %if.end34
  store i1 true, ptr @vga_can_do_color, align 1
  store i32 753664, ptr @vga_vram_base, align 4
  store i16 980, ptr @vga_video_port_reg, align 2
  store i16 981, ptr @vga_video_port_val, align 2
  call void @__asan_loadN_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 8) to i32), i32 2)
  %11 = load i16, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 8), align 1
  %12 = and i16 %11, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %12)
  %cmp52.not = icmp eq i16 %12, 16
  br i1 %cmp52.not, label %if.else75, label %if.then54

if.then54:                                        ; preds = %if.else49
  store i32 32768, ptr @vga_vram_size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then55, label %if.else57

if.then55:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  store i8 33, ptr @vga_video_type, align 1
  %call56 = tail call i32 @request_resource(ptr noundef nonnull @ioport_resource, ptr noundef nonnull @vgacon_startup.ega_console_resource.4) #9
  br label %if.end78

if.else57:                                        ; preds = %if.then54
  store i8 34, ptr @vga_video_type, align 1
  %call58 = tail call i32 @request_resource(ptr noundef nonnull @ioport_resource, ptr noundef nonnull @vgacon_startup.vga_console_resource) #9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.else57
  %i.0154 = phi i32 [ 0, %if.else57 ], [ %inc, %for.body.for.body_crit_edge ]
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873382 to ptr)) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  %conv62 = trunc i32 %i.0154 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 %conv62) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 %conv62) #9, !srcloc !113
  %inc = add nuw nsw i32 %i.0154, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 32) #9, !srcloc !113
  br label %for.body67

for.body67:                                       ; preds = %for.body67.for.body67_crit_edge, %for.end
  %i.1155 = phi i32 [ 0, %for.end ], [ %inc72, %for.body67.for.body67_crit_edge ]
  %arrayidx = getelementptr [0 x i8], ptr @color_table, i32 0, i32 %i.1155
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873400 to ptr), i8 %15) #9, !srcloc !113
  %arrayidx68 = getelementptr [0 x i8], ptr @default_red, i32 0, i32 %i.1155
  %16 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx68, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %17) #9, !srcloc !113
  %arrayidx69 = getelementptr [0 x i8], ptr @default_grn, i32 0, i32 %i.1155
  %18 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx69, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %19) #9, !srcloc !113
  %arrayidx70 = getelementptr [0 x i8], ptr @default_blu, i32 0, i32 %i.1155
  %20 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx70, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %21) #9, !srcloc !113
  %inc72 = add nuw nsw i32 %i.1155, 1
  %exitcond156.not = icmp eq i32 %inc72, 16
  br i1 %exitcond156.not, label %for.body67.if.end78_crit_edge, label %for.body67.for.body67_crit_edge

for.body67.for.body67_crit_edge:                  ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body67

for.body67.if.end78_crit_edge:                    ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.else75:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #11
  store i8 17, ptr @vga_video_type, align 1
  store i32 8192, ptr @vga_vram_size, align 4
  %call76 = tail call i32 @request_resource(ptr noundef nonnull @ioport_resource, ptr noundef nonnull @vgacon_startup.cga_console_resource) #9
  store i32 8, ptr @vga_video_font_height, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.else75, %for.body67.if.end78_crit_edge, %if.then55, %if.else, %if.then44
  %display_desc.1 = phi ptr [ @.str.1, %if.then44 ], [ @.str.3, %if.else ], [ @.str.9, %if.else75 ], [ @.str.5, %if.then55 ], [ @.str.7, %for.body67.if.end78_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vga_base to i32))
  %22 = load i32, ptr @vga_base, align 4
  %23 = load i32, ptr @vga_vram_base, align 4
  %add = add i32 %23, %22
  store i32 %add, ptr @vga_vram_base, align 4
  %24 = load i32, ptr @vga_vram_size, align 4
  %add79 = add i32 %24, %add
  store i32 %add79, ptr @vga_vram_end, align 4
  %25 = inttoptr i32 %add to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load volatile i16, ptr %25, align 2
  %add.ptr = getelementptr i16, ptr %25, i32 1
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load volatile i16, ptr %add.ptr, align 2
  store volatile i16 -21931, ptr %25, align 2
  store volatile i16 21930, ptr %add.ptr, align 2
  %30 = load volatile i16, ptr %25, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -21931, i16 %30)
  %cmp82.not = icmp eq i16 %30, -21931
  br i1 %cmp82.not, label %lor.lhs.false84, label %if.end78.no_vga.sink.split_crit_edge

if.end78.no_vga.sink.split_crit_edge:             ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_vga.sink.split

lor.lhs.false84:                                  ; preds = %if.end78
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load volatile i16, ptr %add.ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21930, i16 %32)
  %cmp87.not = icmp eq i16 %32, 21930
  br i1 %cmp87.not, label %if.end91, label %lor.lhs.false84.no_vga.sink.split_crit_edge

lor.lhs.false84.no_vga.sink.split_crit_edge:      ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_vga.sink.split

if.end91:                                         ; preds = %lor.lhs.false84
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %33)
  store volatile i16 21930, ptr %25, align 2
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %34)
  store volatile i16 -21931, ptr %add.ptr, align 2
  %35 = load volatile i16, ptr %25, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21930, i16 %35)
  %cmp94.not = icmp eq i16 %35, 21930
  br i1 %cmp94.not, label %lor.lhs.false96, label %if.end91.no_vga.sink.split_crit_edge

if.end91.no_vga.sink.split_crit_edge:             ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_vga.sink.split

lor.lhs.false96:                                  ; preds = %if.end91
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load volatile i16, ptr %add.ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -21931, i16 %37)
  %cmp99.not = icmp eq i16 %37, -21931
  br i1 %cmp99.not, label %if.end103, label %lor.lhs.false96.no_vga.sink.split_crit_edge

lor.lhs.false96.no_vga.sink.split_crit_edge:      ; preds = %lor.lhs.false96
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_vga.sink.split

if.end103:                                        ; preds = %lor.lhs.false96
  %38 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %38)
  store volatile i16 %27, ptr %25, align 2
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %39)
  store volatile i16 %29, ptr %add.ptr, align 2
  %40 = load i8, ptr @vga_video_type, align 1
  %.off = add i8 %40, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %if.then116, label %if.end103.if.end120_crit_edge

if.end103.if.end120_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.then116:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  %.b = load i1, ptr @vga_hardscroll_user_enable, align 1
  %not..b = xor i1 %.b, true
  %frombool = zext i1 %not..b to i8
  store i8 %frombool, ptr @vga_hardscroll_enabled, align 1
  call void @__asan_loadN_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 12) to i32), i32 2)
  %41 = load i16, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 12), align 1
  %conv118 = zext i16 %41 to i32
  store i32 %conv118, ptr @vga_default_font_height, align 4
  store i32 %conv118, ptr @vga_video_font_height, align 4
  %42 = load i32, ptr @vga_video_num_lines, align 4
  %mul = mul i32 %42, %conv118
  store i32 %mul, ptr @vga_scan_lines, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then116, %if.end103.if.end120_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 5) to i32))
  %43 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 5), align 1
  %conv121 = zext i8 %43 to i32
  %mul122 = shl nuw nsw i32 %conv121, 3
  store i32 %mul122, ptr @vgacon_xres, align 4
  %44 = load i32, ptr @vga_scan_lines, align 4
  store i32 %44, ptr @vgacon_yres, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end120, %no_vga
  %retval.0 = phi ptr [ %call, %no_vga ], [ %display_desc.1, %if.end120 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vgacon_init(ptr noundef %c, i32 noundef %init) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.b34 = load i1, ptr @vga_can_do_color, align 1
  %vc_can_do_color = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 37
  %0 = ptrtoint ptr %vc_can_do_color to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %vc_can_do_color, align 4
  %bf.shl = select i1 %.b34, i16 16, i16 0
  %bf.clear = and i16 %bf.load, -17
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %vc_can_do_color, align 4
  %1 = load i32, ptr @vga_scan_lines, align 4
  %vc_scan_lines = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 7
  %2 = ptrtoint ptr %vc_scan_lines to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %vc_scan_lines, align 4
  %3 = load i32, ptr @vga_video_font_height, align 4
  %vc_cell_height = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 8
  %4 = ptrtoint ptr %vc_cell_height to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %vc_cell_height, align 4
  %height = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 28, i32 1
  %5 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %3, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %init)
  %tobool1.not = icmp eq i32 %init, 0
  %6 = load i32, ptr @vga_video_num_columns, align 4
  br i1 %tobool1.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 4
  %7 = ptrtoint ptr %vc_cols to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %vc_cols, align 4
  %8 = load i32, ptr @vga_video_num_lines, align 4
  %vc_rows = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 5
  %9 = ptrtoint ptr %vc_rows to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %vc_rows, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = load i32, ptr @vga_video_num_lines, align 4
  %call = tail call i32 @vc_resize(ptr noundef %c, i32 noundef %6, i32 noundef %10) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %vc_complement_mask = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 24
  %11 = ptrtoint ptr %vc_complement_mask to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 30464, ptr %vc_complement_mask, align 4
  %12 = load i8, ptr @vga_512_chars, align 1, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not = icmp eq i8 %12, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 27
  %13 = ptrtoint ptr %vc_hi_font_mask to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2048, ptr %vc_hi_font_mask, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 49
  %14 = ptrtoint ptr %vc_uni_pagedir_loc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vc_uni_pagedir_loc, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %cmp.not = icmp eq ptr %15, @vgacon_uni_pagedir
  br i1 %cmp.not, label %if.end4.if.end9_crit_edge, label %if.then7

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @con_free_unimap(ptr noundef %c) #9
  %18 = ptrtoint ptr %vc_uni_pagedir_loc to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @vgacon_uni_pagedir, ptr %vc_uni_pagedir_loc, align 4
  %19 = load i32, ptr @vgacon_refcount, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr @vgacon_refcount, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end4.if.end9_crit_edge
  %20 = load ptr, ptr @vgacon_uni_pagedir, align 4
  %tobool10.not = icmp ne ptr %20, null
  %tobool11.not = icmp eq ptr %17, null
  %or.cond = select i1 %tobool10.not, i1 true, i1 %tobool11.not
  br i1 %or.cond, label %if.end9.if.end14_crit_edge, label %if.then12

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 @con_set_default_unimap(ptr noundef %c) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end9.if.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @global_cursor_default to i32))
  %21 = load i32, ptr @global_cursor_default, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp15 = icmp eq i32 %21, -1
  br i1 %cmp15, label %if.then17, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 6) to i32))
  %22 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 6), align 1
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = zext i8 %24 to i32
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @global_cursor_default to i32))
  store i32 %25, ptr @global_cursor_default, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end14.if.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vgacon_deinit(ptr noundef %c) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @con_is_visible(ptr noundef %c) #9
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load i32, ptr @vga_vram_base, align 4
  %vc_visible_origin = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 11
  %1 = ptrtoint ptr %vc_visible_origin to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %vc_visible_origin, align 4
  %call.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  tail call void @arm_heavy_mb() #9
  %2 = load i16, ptr @vga_video_port_reg, align 2
  %conv10.i.i = zext i16 %2 to i32
  %add12.i.i = or i32 %conv10.i.i, -18874368
  %3 = inttoptr i32 %add12.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %3, i16 3072) #9, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  tail call void @arm_heavy_mb() #9
  %4 = load i16, ptr @vga_video_port_reg, align 2
  %conv18.i.i = zext i16 %4 to i32
  %add20.i.i = or i32 %conv18.i.i, -18874368
  %5 = inttoptr i32 %add20.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %5, i16 3328) #9, !srcloc !116
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call.i.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = load i32, ptr @vgacon_refcount, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr @vgacon_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then1, label %if.end.if.end2_crit_edge

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @con_free_unimap(ptr noundef %c) #9
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  %vc_uni_pagedir = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 48
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 49
  %7 = ptrtoint ptr %vc_uni_pagedir_loc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vc_uni_pagedir, ptr %vc_uni_pagedir_loc, align 4
  %call3 = tail call i32 @con_set_default_unimap(ptr noundef %c) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vgacon_clear(ptr nocapture noundef %vc, i32 noundef %sy, i32 noundef %sx, i32 noundef %height, i32 noundef %width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vgacon_putc(ptr nocapture noundef %vc, i32 noundef %c, i32 noundef %ypos, i32 noundef %xpos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vgacon_putcs(ptr nocapture noundef %vc, ptr nocapture noundef %s, i32 noundef %count, i32 noundef %ypos, i32 noundef %xpos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vgacon_cursor(ptr noundef %c, i32 noundef %mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_mode = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 17
  %0 = ptrtoint ptr %vc_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.sw.epilog73_crit_edge

entry.sw.epilog73_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog73

if.end:                                           ; preds = %entry
  tail call fastcc void @vgacon_restore_screen(ptr noundef %c)
  %2 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %mode, label %if.end.sw.epilog73_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %if.end.sw.bb9_crit_edge
    i32 1, label %if.end.sw.bb9_crit_edge115
  ]

if.end.sw.bb9_crit_edge115:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

if.end.sw.bb9_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

if.end.sw.epilog73_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog73

sw.bb:                                            ; preds = %if.end
  %vc_pos = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 26
  %3 = ptrtoint ptr %vc_pos to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vc_pos, align 4
  %5 = load i32, ptr @vga_vram_base, align 4
  %sub = sub i32 %4, %5
  %div103 = lshr i32 %sub, 1
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #9
  %shl.i = shl i32 %div103, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  tail call void @arm_heavy_mb() #9
  %6 = trunc i32 %div103 to i16
  %7 = and i16 %6, -256
  %conv9.i = or i16 %7, 14
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv9.i) #9
  %9 = load i16, ptr @vga_video_port_reg, align 2
  %conv10.i = zext i16 %9 to i32
  %add12.i = or i32 %conv10.i, -18874368
  %10 = inttoptr i32 %add12.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %10, i16 %8) #9, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  tail call void @arm_heavy_mb() #9
  %11 = trunc i32 %shl.i to i16
  %conv17.i = or i16 %11, 15
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv17.i) #9
  %13 = load i16, ptr @vga_video_port_reg, align 2
  %conv18.i = zext i16 %13 to i32
  %add20.i = or i32 %conv18.i, -18874368
  %14 = inttoptr i32 %add20.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %14, i16 %12) #9, !srcloc !116
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call.i) #9
  %15 = load i8, ptr @vga_video_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %15)
  %cmp3 = icmp ugt i8 %15, 33
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @vgacon_set_cursor_size(i32 noundef 31, i32 noundef 30)
  br label %sw.epilog73

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @vgacon_set_cursor_size(i32 noundef 31, i32 noundef 31)
  br label %sw.epilog73

sw.bb9:                                           ; preds = %if.end.sw.bb9_crit_edge, %if.end.sw.bb9_crit_edge115
  %vc_pos10 = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 26
  %16 = ptrtoint ptr %vc_pos10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vc_pos10, align 4
  %18 = load i32, ptr @vga_vram_base, align 4
  %sub11 = sub i32 %17, %18
  %div12101 = lshr i32 %sub11, 1
  %call.i104 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #9
  %shl.i107 = shl i32 %div12101, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  tail call void @arm_heavy_mb() #9
  %19 = trunc i32 %div12101 to i16
  %20 = and i16 %19, -256
  %conv9.i109 = or i16 %20, 14
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv9.i109) #9
  %22 = load i16, ptr @vga_video_port_reg, align 2
  %conv10.i110 = zext i16 %22 to i32
  %add12.i111 = or i32 %conv10.i110, -18874368
  %23 = inttoptr i32 %add12.i111 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %23, i16 %21) #9, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  tail call void @arm_heavy_mb() #9
  %24 = trunc i32 %shl.i107 to i16
  %conv17.i112 = or i16 %24, 15
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv17.i112) #9
  %26 = load i16, ptr @vga_video_port_reg, align 2
  %conv18.i113 = zext i16 %26 to i32
  %add20.i114 = or i32 %conv18.i113, -18874368
  %27 = inttoptr i32 %add20.i114 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %27, i16 %25) #9, !srcloc !116
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call.i104) #9
  %vc_cursor_type = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 23
  %28 = ptrtoint ptr %vc_cursor_type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vc_cursor_type, align 4
  %and = and i32 %29, 15
  %30 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %and, label %sw.default [
    i32 2, label %sw.bb13
    i32 5, label %sw.bb26
    i32 3, label %sw.bb37
    i32 4, label %sw.bb48
    i32 1, label %sw.bb59
  ]

sw.bb13:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  %vc_cell_height = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 8
  %31 = ptrtoint ptr %vc_cell_height to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vc_cell_height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %32)
  %cmp17 = icmp ult i32 %32, 10
  %cond.neg = select i1 %cmp17, i32 -2, i32 -3
  %sub19 = add i32 %cond.neg, %32
  %cond24.neg = select i1 %cmp17, i32 -1, i32 -2
  %sub25 = add i32 %cond24.neg, %32
  tail call fastcc void @vgacon_set_cursor_size(i32 noundef %sub19, i32 noundef %sub25)
  br label %sw.epilog73

sw.bb26:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  %vc_cell_height29 = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 8
  %33 = ptrtoint ptr %vc_cell_height29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vc_cell_height29, align 4
  %div30 = udiv i32 %34, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %34)
  %cmp33 = icmp ult i32 %34, 10
  %cond35.neg = select i1 %cmp33, i32 -1, i32 -2
  %sub36 = add i32 %cond35.neg, %34
  tail call fastcc void @vgacon_set_cursor_size(i32 noundef %div30, i32 noundef %sub36)
  br label %sw.epilog73

sw.bb37:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  %vc_cell_height40 = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 8
  %35 = ptrtoint ptr %vc_cell_height40 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vc_cell_height40, align 4
  %mul = shl i32 %36, 1
  %div41 = udiv i32 %mul, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %36)
  %cmp44 = icmp ult i32 %36, 10
  %cond46.neg = select i1 %cmp44, i32 -1, i32 -2
  %sub47 = add i32 %cond46.neg, %36
  tail call fastcc void @vgacon_set_cursor_size(i32 noundef %div41, i32 noundef %sub47)
  br label %sw.epilog73

sw.bb48:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  %vc_cell_height51 = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 8
  %37 = ptrtoint ptr %vc_cell_height51 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vc_cell_height51, align 4
  %div52102 = lshr i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %38)
  %cmp55 = icmp ult i32 %38, 10
  %cond57.neg = select i1 %cmp55, i32 -1, i32 -2
  %sub58 = add i32 %cond57.neg, %38
  tail call fastcc void @vgacon_set_cursor_size(i32 noundef %div52102, i32 noundef %sub58)
  br label %sw.epilog73

sw.bb59:                                          ; preds = %sw.bb9
  %39 = load i8, ptr @vga_video_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %39)
  %cmp61 = icmp ugt i8 %39, 33
  br i1 %cmp61, label %if.then63, label %if.else66

if.then63:                                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @vgacon_set_cursor_size(i32 noundef 31, i32 noundef 30)
  br label %sw.epilog73

if.else66:                                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @vgacon_set_cursor_size(i32 noundef 31, i32 noundef 31)
  br label %sw.epilog73

sw.default:                                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  %vc_cell_height72 = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 8
  %40 = ptrtoint ptr %vc_cell_height72 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vc_cell_height72, align 4
  tail call fastcc void @vgacon_set_cursor_size(i32 noundef 1, i32 noundef %41)
  br label %sw.epilog73

sw.epilog73:                                      ; preds = %sw.default, %if.else66, %if.then63, %sw.bb48, %sw.bb37, %sw.bb26, %sw.bb13, %if.else, %if.then5, %if.end.sw.epilog73_crit_edge, %entry.sw.epilog73_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @vgacon_scroll(ptr noundef %c, i32 noundef %t, i32 noundef %b, i32 noundef %dir, i32 noundef %lines) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t)
  %tobool.not = icmp eq i32 %t, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %vc_rows = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 5
  %0 = ptrtoint ptr %vc_rows to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vc_rows, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %b)
  %cmp.not = icmp eq i32 %1, %b
  br i1 %cmp.not, label %lor.lhs.false1, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %.b109 = load i1, ptr @vga_is_gfx, align 1
  br i1 %.b109, label %lor.lhs.false1.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false1.cleanup_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false1
  %vc_mode = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 17
  %2 = ptrtoint ptr %vc_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp4.not = icmp eq i8 %3, 0
  br i1 %cmp4.not, label %if.end, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %4 = load i8, ptr @vga_hardscroll_enabled, align 1, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool6.not = icmp ne i8 %4, 0
  %div110 = lshr i32 %b, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div110, i32 %lines)
  %cmp9.not = icmp ugt i32 %div110, %lines
  %or.cond = and i1 %tobool6.not, %cmp9.not
  br i1 %or.cond, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end
  tail call fastcc void @vgacon_restore_screen(ptr noundef %c)
  %vc_origin = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 9
  %5 = ptrtoint ptr %vc_origin to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vc_origin, align 4
  %vc_size_row = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 6
  %7 = ptrtoint ptr %vc_size_row to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vc_size_row, align 4
  %mul = mul i32 %8, %lines
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp13 = icmp eq i32 %dir, 0
  br i1 %cmp13, label %if.then15, label %if.else29

if.then15:                                        ; preds = %if.end12
  %vc_scr_end = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 10
  %9 = ptrtoint ptr %vc_scr_end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vc_scr_end, align 4
  %add = add i32 %10, %mul
  %11 = load i32, ptr @vga_vram_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %11)
  %cmp16.not = icmp ult i32 %add, %11
  br i1 %cmp16.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %12 = load i32, ptr @vga_vram_base, align 4
  %13 = inttoptr i32 %12 to ptr
  %add19 = add i32 %mul, %6
  %14 = inttoptr i32 %add19 to ptr
  %vc_screenbuf_size = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 16
  %15 = ptrtoint ptr %vc_screenbuf_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vc_screenbuf_size, align 4
  %sub = sub i32 %16, %mul
  %17 = call ptr @memcpy(ptr %13, ptr %14, i32 %sub)
  %18 = load i32, ptr @vga_vram_base, align 4
  %19 = ptrtoint ptr %vc_origin to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %vc_origin, align 4
  %sub21 = sub i32 %6, %18
  store i32 %sub21, ptr @vga_rolled_over, align 4
  br label %if.end24

if.else:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %add23 = add i32 %mul, %6
  %20 = ptrtoint ptr %vc_origin to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add23, ptr %vc_origin, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then18
  %21 = ptrtoint ptr %vc_origin to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vc_origin, align 4
  %vc_screenbuf_size26 = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 16
  %23 = ptrtoint ptr %vc_screenbuf_size26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vc_screenbuf_size26, align 4
  %add27 = sub i32 %22, %mul
  %sub28 = add i32 %add27, %24
  br label %if.end52

if.else29:                                        ; preds = %if.end12
  %sub30 = sub i32 %6, %mul
  %25 = load i32, ptr @vga_vram_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub30, i32 %25)
  %cmp31 = icmp ult i32 %sub30, %25
  br i1 %cmp31, label %if.then33, label %if.else42

if.then33:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #11
  %26 = load i32, ptr @vga_vram_end, align 4
  %vc_screenbuf_size34 = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 16
  %27 = ptrtoint ptr %vc_screenbuf_size34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vc_screenbuf_size34, align 4
  %sub35 = add i32 %26, %mul
  %add36 = sub i32 %sub35, %28
  %29 = inttoptr i32 %add36 to ptr
  %30 = inttoptr i32 %6 to ptr
  %sub38 = sub i32 %28, %mul
  %31 = call ptr @memmove(ptr %29, ptr %30, i32 %sub38)
  %32 = load i32, ptr @vga_vram_end, align 4
  %33 = load i32, ptr %vc_screenbuf_size34, align 4
  %sub40 = sub i32 %32, %33
  %34 = ptrtoint ptr %vc_origin to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub40, ptr %vc_origin, align 4
  store i32 0, ptr @vga_rolled_over, align 4
  br label %if.end45

if.else42:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %vc_origin to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub30, ptr %vc_origin, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else42, %if.then33
  %36 = ptrtoint ptr %vc_origin to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vc_origin, align 4
  %vc_screenbuf_size47 = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 16
  %38 = ptrtoint ptr %vc_screenbuf_size47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vc_screenbuf_size47, align 4
  %add48 = add i32 %39, %37
  %vc_scr_end49 = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 10
  %40 = ptrtoint ptr %vc_scr_end49 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add48, ptr %vc_scr_end49, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end45, %if.end24
  %.sink115 = phi i32 [ %37, %if.end45 ], [ %sub28, %if.end24 ]
  %41 = inttoptr i32 %.sink115 to ptr
  %vc_video_erase_char51 = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 29
  %42 = ptrtoint ptr %vc_video_erase_char51 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vc_video_erase_char51, align 4
  %div1.i111 = lshr i32 %mul, 1
  %call.i112 = tail call ptr @memset16(ptr noundef %41, i16 noundef zeroext %43, i32 noundef %div1.i111) #9
  %44 = ptrtoint ptr %vc_origin to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vc_origin, align 4
  %vc_screenbuf_size54 = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 16
  %46 = ptrtoint ptr %vc_screenbuf_size54 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vc_screenbuf_size54, align 4
  %add55 = add i32 %47, %45
  %vc_scr_end56 = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 10
  %48 = ptrtoint ptr %vc_scr_end56 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add55, ptr %vc_scr_end56, align 4
  %vc_visible_origin = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 11
  %49 = ptrtoint ptr %vc_visible_origin to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %45, ptr %vc_visible_origin, align 4
  tail call fastcc void @vga_set_mem_top(ptr noundef %c)
  %vc_pos = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 26
  %50 = ptrtoint ptr %vc_pos to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vc_pos, align 4
  %sub58 = sub i32 %51, %6
  %52 = ptrtoint ptr %vc_origin to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %vc_origin, align 4
  %add60 = add i32 %sub58, %53
  store i32 %add60, ptr %vc_pos, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false1.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end52 ], [ false, %lor.lhs.false3.cleanup_crit_edge ], [ false, %lor.lhs.false1.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vgacon_switch(ptr nocapture noundef readonly %c) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 4
  %0 = ptrtoint ptr %vc_cols to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vc_cols, align 4
  %vc_rows = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 5
  %2 = ptrtoint ptr %vc_rows to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vc_rows, align 4
  %vc_cell_height = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 8
  %4 = ptrtoint ptr %vc_cell_height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vc_cell_height, align 4
  %mul1 = mul i32 %5, %3
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 10) to i32))
  %6 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 10), align 1
  %conv = zext i8 %6 to i32
  %7 = load i32, ptr @vga_default_font_height, align 4
  %mul2 = mul i32 %7, %conv
  %div = udiv i32 %mul2, %5
  store i32 %1, ptr @vga_video_num_columns, align 4
  store i32 %3, ptr @vga_video_num_lines, align 4
  %.b37 = load i1, ptr @vga_is_gfx, align 1
  br i1 %.b37, label %entry.if.end23_crit_edge, label %if.then

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then:                                          ; preds = %entry
  %mul = shl i32 %1, 3
  %vc_origin = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 9
  %8 = ptrtoint ptr %vc_origin to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vc_origin, align 4
  %10 = inttoptr i32 %9 to ptr
  %vc_screenbuf = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 15
  %11 = ptrtoint ptr %vc_screenbuf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vc_screenbuf, align 4
  %vc_screenbuf_size = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 16
  %13 = ptrtoint ptr %vc_screenbuf_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vc_screenbuf_size, align 4
  %15 = load i32, ptr @vga_vram_size, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %14, i32 %15)
  %17 = call ptr @memcpy(ptr %10, ptr %12, i32 %16)
  %18 = load i32, ptr @vgacon_xres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %mul)
  %cmp8.not = icmp eq i32 %18, %mul
  br i1 %cmp8.not, label %lor.lhs.false, label %if.then.land.lhs.true_crit_edge

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.then
  %19 = load i32, ptr @vgacon_yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %mul1)
  %cmp10.not = icmp eq i32 %19, %mul1
  br i1 %cmp10.not, label %lor.lhs.false.if.end23_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %if.then.land.lhs.true_crit_edge
  %20 = load i32, ptr @vga_video_num_columns, align 4
  %rem = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool12.not = icmp eq i32 %rem, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true13:                                  ; preds = %land.lhs.true
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 5) to i32))
  %21 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 5), align 1
  %conv14 = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv14)
  %cmp15.not = icmp ugt i32 %20, %conv14
  br i1 %cmp15.not, label %land.lhs.true13.if.end23_crit_edge, label %land.lhs.true17

land.lhs.true13.if.end23_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true17:                                  ; preds = %land.lhs.true13
  %22 = load i32, ptr @vga_video_num_lines, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %div)
  %cmp18.not = icmp ugt i32 %22, %div
  br i1 %cmp18.not, label %land.lhs.true17.if.end23_crit_edge, label %if.then20

land.lhs.true17.if.end23_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then20:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %vc_cols to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vc_cols, align 4
  %25 = ptrtoint ptr %vc_rows to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vc_rows, align 4
  tail call fastcc void @vgacon_doresize(ptr noundef %c, i32 noundef %24, i32 noundef %26)
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %land.lhs.true17.if.end23_crit_edge, %land.lhs.true13.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %lor.lhs.false.if.end23_crit_edge, %entry.if.end23_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vgacon_blank(ptr nocapture noundef %c, i32 noundef %blank, i32 noundef %mode_switch) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %blank to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %blank, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb4_crit_edge
    i32 -1, label %entry.sw.bb4_crit_edge69
  ]

entry.sw.bb4_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr @vga_vesa_blanked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @vga_lock) #9
  %2 = load i8, ptr @vga_state.2, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873406 to ptr), i8 %2) #9, !srcloc !113
  %3 = load i16, ptr @vga_video_port_reg, align 2
  %conv.i = zext i16 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i.i = or i32 %conv.i, -18874368
  %4 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 0) #9, !srcloc !113
  %5 = load i8, ptr @vga_state.3, align 1
  %6 = load i16, ptr @vga_video_port_val, align 2
  %conv1.i = zext i16 %6 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i2.i = or i32 %conv1.i, -18874368
  %7 = inttoptr i32 %add.i2.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %5) #9, !srcloc !113
  %8 = load i16, ptr @vga_video_port_reg, align 2
  %conv2.i = zext i16 %8 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i4.i = or i32 %conv2.i, -18874368
  %9 = inttoptr i32 %add.i4.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 1) #9, !srcloc !113
  %10 = load i8, ptr @vga_state.4, align 1
  %11 = load i16, ptr @vga_video_port_val, align 2
  %conv3.i = zext i16 %11 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i6.i = or i32 %conv3.i, -18874368
  %12 = inttoptr i32 %add.i6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %10) #9, !srcloc !113
  %13 = load i16, ptr @vga_video_port_reg, align 2
  %conv4.i = zext i16 %13 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i8.i = or i32 %conv4.i, -18874368
  %14 = inttoptr i32 %add.i8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 4) #9, !srcloc !113
  %15 = load i8, ptr @vga_state.5, align 1
  %16 = load i16, ptr @vga_video_port_val, align 2
  %conv5.i = zext i16 %16 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i10.i = or i32 %conv5.i, -18874368
  %17 = inttoptr i32 %add.i10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %15) #9, !srcloc !113
  %18 = load i16, ptr @vga_video_port_reg, align 2
  %conv6.i = zext i16 %18 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i12.i = or i32 %conv6.i, -18874368
  %19 = inttoptr i32 %add.i12.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 5) #9, !srcloc !113
  %20 = load i8, ptr @vga_state.6, align 1
  %21 = load i16, ptr @vga_video_port_val, align 2
  %conv7.i = zext i16 %21 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i14.i = or i32 %conv7.i, -18874368
  %22 = inttoptr i32 %add.i14.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %20) #9, !srcloc !113
  %23 = load i16, ptr @vga_video_port_reg, align 2
  %conv8.i = zext i16 %23 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i16.i = or i32 %conv8.i, -18874368
  %24 = inttoptr i32 %add.i16.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 7) #9, !srcloc !113
  %25 = load i8, ptr @vga_state.7, align 1
  %26 = load i16, ptr @vga_video_port_val, align 2
  %conv9.i = zext i16 %26 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i18.i = or i32 %conv9.i, -18874368
  %27 = inttoptr i32 %add.i18.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %25) #9, !srcloc !113
  %28 = load i16, ptr @vga_video_port_reg, align 2
  %conv10.i = zext i16 %28 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i20.i = or i32 %conv10.i, -18874368
  %29 = inttoptr i32 %add.i20.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 16) #9, !srcloc !113
  %30 = load i8, ptr @vga_state.8, align 1
  %31 = load i16, ptr @vga_video_port_val, align 2
  %conv11.i = zext i16 %31 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i22.i = or i32 %conv11.i, -18874368
  %32 = inttoptr i32 %add.i22.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %30) #9, !srcloc !113
  %33 = load i16, ptr @vga_video_port_reg, align 2
  %conv12.i = zext i16 %33 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i24.i = or i32 %conv12.i, -18874368
  %34 = inttoptr i32 %add.i24.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 17) #9, !srcloc !113
  %35 = load i8, ptr @vga_state.9, align 1
  %36 = load i16, ptr @vga_video_port_val, align 2
  %conv13.i = zext i16 %36 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i26.i = or i32 %conv13.i, -18874368
  %37 = inttoptr i32 %add.i26.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %35) #9, !srcloc !113
  %38 = load i16, ptr @vga_video_port_reg, align 2
  %conv14.i = zext i16 %38 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i28.i = or i32 %conv14.i, -18874368
  %39 = inttoptr i32 %add.i28.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 23) #9, !srcloc !113
  %40 = load i8, ptr @vga_state.10, align 1
  %41 = load i16, ptr @vga_video_port_val, align 2
  %conv15.i = zext i16 %41 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i30.i = or i32 %conv15.i, -18874368
  %42 = inttoptr i32 %add.i30.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %40) #9, !srcloc !113
  %43 = load i8, ptr @vga_state.11, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %43) #9, !srcloc !113
  %44 = load i8, ptr @vga_state.0, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 %44) #9, !srcloc !113
  %45 = load i8, ptr @vga_state.1, align 1
  %46 = load i16, ptr @vga_video_port_reg, align 2
  %conv18.i = zext i16 %46 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i37.i = or i32 %conv18.i, -18874368
  %47 = inttoptr i32 %add.i37.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 %45) #9, !srcloc !113
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @vga_lock) #9
  store i32 0, ptr @vga_vesa_blanked, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %.b22 = load i1, ptr @vga_palette_blanked, align 1
  br i1 %.b22, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @vga_set_palette(ptr noundef %c, ptr noundef nonnull @color_table)
  store i1 false, ptr @vga_palette_blanked, align 1
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 false, ptr @vga_is_gfx, align 1
  br label %return

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode_switch)
  %tobool5.not = icmp eq i32 %mode_switch, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.then10.critedge

land.lhs.true:                                    ; preds = %sw.bb4
  %48 = load i8, ptr @vga_video_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %48)
  %cmp = icmp eq i8 %48, 34
  br i1 %cmp, label %if.then7, label %if.end11.critedge

if.then7:                                         ; preds = %land.lhs.true
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873402 to ptr), i8 -1) #9, !srcloc !113
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then7
  %i.021.i = phi i32 [ 0, %if.then7 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %conv.i30 = trunc i32 %i.021.i to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873400 to ptr), i8 %conv.i30) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 0) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 0) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 0) #9, !srcloc !113
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %vga_pal_blank.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

vga_pal_blank.exit:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @vga_palette_blanked, align 1
  br label %return

if.then10.critedge:                               ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %call.c23 = tail call i32 @vgacon_set_origin(ptr noundef %c)
  %49 = load i32, ptr @vga_vram_base, align 4
  %50 = inttoptr i32 %49 to ptr
  %vc_screenbuf_size.c24 = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 16
  %51 = ptrtoint ptr %vc_screenbuf_size.c24 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vc_screenbuf_size.c24, align 4
  %div1.i = lshr i32 %52, 1
  %call.i = tail call ptr @memset16(ptr noundef %50, i16 noundef zeroext 32, i32 noundef %div1.i) #9
  store i1 true, ptr @vga_is_gfx, align 1
  br label %return

if.end11.critedge:                                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call.c = tail call i32 @vgacon_set_origin(ptr noundef %c)
  %53 = load i32, ptr @vga_vram_base, align 4
  %54 = inttoptr i32 %53 to ptr
  %vc_screenbuf_size.c = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 16
  %55 = ptrtoint ptr %vc_screenbuf_size.c to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %vc_screenbuf_size.c, align 4
  %div1.i31 = lshr i32 %56, 1
  %call.i32 = tail call ptr @memset16(ptr noundef %54, i16 noundef zeroext 32, i32 noundef %div1.i31) #9
  br label %return

sw.default:                                       ; preds = %entry
  %57 = load i8, ptr @vga_video_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %57)
  %cmp13 = icmp eq i8 %57, 34
  br i1 %cmp13, label %if.then15, label %sw.default.return_crit_edge

sw.default.return_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then15:                                        ; preds = %sw.default
  %sub = add i32 %blank, -1
  %58 = load i32, ptr @vga_vesa_blanked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then15.if.end.i_crit_edge

if.then15.if.end.i_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @vga_lock) #9
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr)) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  store i8 %59, ptr @vga_state.0, align 1
  %60 = load i16, ptr @vga_video_port_reg, align 2
  %conv.i37 = zext i16 %60 to i32
  %add.i.i38 = or i32 %conv.i37, -18874368
  %61 = inttoptr i32 %add.i.i38 to ptr
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %61) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  store i8 %62, ptr @vga_state.1, align 1
  %63 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873396 to ptr)) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  store i8 %63, ptr @vga_state.2, align 1
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @vga_lock) #9
  %64 = load i16, ptr @vga_video_port_reg, align 2
  %conv4.i43 = zext i16 %64 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i8.i44 = or i32 %conv4.i43, -18874368
  %65 = inttoptr i32 %add.i8.i44 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 0) #9, !srcloc !113
  %66 = load i16, ptr @vga_video_port_val, align 2
  %conv5.i45 = zext i16 %66 to i32
  %add.i10.i46 = or i32 %conv5.i45, -18874368
  %67 = inttoptr i32 %add.i10.i46 to ptr
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %67) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  store i8 %68, ptr @vga_state.3, align 1
  %69 = load i16, ptr @vga_video_port_reg, align 2
  %conv7.i47 = zext i16 %69 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i12.i48 = or i32 %conv7.i47, -18874368
  %70 = inttoptr i32 %add.i12.i48 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 1) #9, !srcloc !113
  %71 = load i16, ptr @vga_video_port_val, align 2
  %conv8.i49 = zext i16 %71 to i32
  %add.i14.i50 = or i32 %conv8.i49, -18874368
  %72 = inttoptr i32 %add.i14.i50 to ptr
  %73 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %72) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  store i8 %73, ptr @vga_state.4, align 1
  %74 = load i16, ptr @vga_video_port_reg, align 2
  %conv10.i51 = zext i16 %74 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i16.i52 = or i32 %conv10.i51, -18874368
  %75 = inttoptr i32 %add.i16.i52 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %75, i8 4) #9, !srcloc !113
  %76 = load i16, ptr @vga_video_port_val, align 2
  %conv11.i53 = zext i16 %76 to i32
  %add.i18.i54 = or i32 %conv11.i53, -18874368
  %77 = inttoptr i32 %add.i18.i54 to ptr
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %77) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  store i8 %78, ptr @vga_state.5, align 1
  %79 = load i16, ptr @vga_video_port_reg, align 2
  %conv13.i55 = zext i16 %79 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i20.i56 = or i32 %conv13.i55, -18874368
  %80 = inttoptr i32 %add.i20.i56 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %80, i8 5) #9, !srcloc !113
  %81 = load i16, ptr @vga_video_port_val, align 2
  %conv14.i57 = zext i16 %81 to i32
  %add.i22.i58 = or i32 %conv14.i57, -18874368
  %82 = inttoptr i32 %add.i22.i58 to ptr
  %83 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %82) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  store i8 %83, ptr @vga_state.6, align 1
  %84 = load i16, ptr @vga_video_port_reg, align 2
  %conv16.i = zext i16 %84 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i24.i59 = or i32 %conv16.i, -18874368
  %85 = inttoptr i32 %add.i24.i59 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %85, i8 7) #9, !srcloc !113
  %86 = load i16, ptr @vga_video_port_val, align 2
  %conv17.i = zext i16 %86 to i32
  %add.i26.i60 = or i32 %conv17.i, -18874368
  %87 = inttoptr i32 %add.i26.i60 to ptr
  %88 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %87) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  store i8 %88, ptr @vga_state.7, align 1
  %89 = load i16, ptr @vga_video_port_reg, align 2
  %conv19.i = zext i16 %89 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i28.i61 = or i32 %conv19.i, -18874368
  %90 = inttoptr i32 %add.i28.i61 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %90, i8 16) #9, !srcloc !113
  %91 = load i16, ptr @vga_video_port_val, align 2
  %conv20.i = zext i16 %91 to i32
  %add.i30.i62 = or i32 %conv20.i, -18874368
  %92 = inttoptr i32 %add.i30.i62 to ptr
  %93 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %92) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  store i8 %93, ptr @vga_state.8, align 1
  %94 = load i16, ptr @vga_video_port_reg, align 2
  %conv22.i = zext i16 %94 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i32.i = or i32 %conv22.i, -18874368
  %95 = inttoptr i32 %add.i32.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %95, i8 17) #9, !srcloc !113
  %96 = load i16, ptr @vga_video_port_val, align 2
  %conv23.i = zext i16 %96 to i32
  %add.i34.i = or i32 %conv23.i, -18874368
  %97 = inttoptr i32 %add.i34.i to ptr
  %98 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %97) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  store i8 %98, ptr @vga_state.9, align 1
  %99 = load i16, ptr @vga_video_port_reg, align 2
  %conv25.i = zext i16 %99 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i36.i = or i32 %conv25.i, -18874368
  %100 = inttoptr i32 %add.i36.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %100, i8 23) #9, !srcloc !113
  %101 = load i16, ptr @vga_video_port_val, align 2
  %conv26.i = zext i16 %101 to i32
  %add.i38.i = or i32 %conv26.i, -18874368
  %102 = inttoptr i32 %add.i38.i to ptr
  %103 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %102) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  store i8 %103, ptr @vga_state.10, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #9, !srcloc !113
  %104 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  store i8 %104, ptr @vga_state.11, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then15.if.end.i_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @vga_lock) #9
  %105 = load i8, ptr @vga_state.11, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %106 = or i8 %105, 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %106) #9, !srcloc !113
  %107 = load i8, ptr @vga_state.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %107)
  %cmp.not.i = icmp sgt i8 %107, -1
  br i1 %cmp.not.i, label %if.end.i.if.end40.i_crit_edge, label %if.then35.i

if.end.i.if.end40.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.then35.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %and38.i = and i8 %107, -17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873406 to ptr), i8 %and38.i) #9, !srcloc !113
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then35.i, %if.end.i.if.end40.i_crit_edge
  %and41.i = and i32 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.end40.i.if.end53.i_crit_edge, label %if.then43.i

if.end40.i.if.end53.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i

if.then43.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  %108 = load i16, ptr @vga_video_port_reg, align 2
  %conv44.i = zext i16 %108 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i46.i = or i32 %conv44.i, -18874368
  %109 = inttoptr i32 %add.i46.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %109, i8 16) #9, !srcloc !113
  %110 = load i16, ptr @vga_video_port_val, align 2
  %conv45.i = zext i16 %110 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i48.i = or i32 %conv45.i, -18874368
  %111 = inttoptr i32 %add.i48.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %111, i8 -1) #9, !srcloc !113
  %112 = load i16, ptr @vga_video_port_reg, align 2
  %conv46.i = zext i16 %112 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i50.i = or i32 %conv46.i, -18874368
  %113 = inttoptr i32 %add.i50.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %113, i8 17) #9, !srcloc !113
  %114 = load i16, ptr @vga_video_port_val, align 2
  %conv47.i = zext i16 %114 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i52.i = or i32 %conv47.i, -18874368
  %115 = inttoptr i32 %add.i52.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %115, i8 64) #9, !srcloc !113
  %116 = load i16, ptr @vga_video_port_reg, align 2
  %conv48.i = zext i16 %116 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i54.i = or i32 %conv48.i, -18874368
  %117 = inttoptr i32 %add.i54.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %117, i8 7) #9, !srcloc !113
  %118 = load i8, ptr @vga_state.7, align 1
  %119 = or i8 %118, -124
  %120 = load i16, ptr @vga_video_port_val, align 2
  %conv52.i = zext i16 %120 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i56.i = or i32 %conv52.i, -18874368
  %121 = inttoptr i32 %add.i56.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %121, i8 %119) #9, !srcloc !113
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then43.i, %if.end40.i.if.end53.i_crit_edge
  %and54.i = and i32 %sub, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %if.end53.i.if.end61.i_crit_edge, label %if.then56.i

if.end53.i.if.end61.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61.i

if.then56.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  %122 = load i16, ptr @vga_video_port_reg, align 2
  %conv57.i = zext i16 %122 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i58.i = or i32 %conv57.i, -18874368
  %123 = inttoptr i32 %add.i58.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %123, i8 4) #9, !srcloc !113
  %124 = load i16, ptr @vga_video_port_val, align 2
  %conv58.i = zext i16 %124 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i60.i = or i32 %conv58.i, -18874368
  %125 = inttoptr i32 %add.i60.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %125, i8 -1) #9, !srcloc !113
  %126 = load i16, ptr @vga_video_port_reg, align 2
  %conv59.i = zext i16 %126 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i62.i = or i32 %conv59.i, -18874368
  %127 = inttoptr i32 %add.i62.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %127, i8 5) #9, !srcloc !113
  %128 = load i16, ptr @vga_video_port_val, align 2
  %conv60.i = zext i16 %128 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i64.i = or i32 %conv60.i, -18874368
  %129 = inttoptr i32 %add.i64.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %129, i8 0) #9, !srcloc !113
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then56.i, %if.end53.i.if.end61.i_crit_edge
  %130 = load i8, ptr @vga_state.0, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 %130) #9, !srcloc !113
  %131 = load i8, ptr @vga_state.1, align 1
  %132 = load i16, ptr @vga_video_port_reg, align 2
  %conv63.i = zext i16 %132 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i71.i = or i32 %conv63.i, -18874368
  %133 = inttoptr i32 %add.i71.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %133, i8 %131) #9, !srcloc !113
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @vga_lock) #9
  store i32 %blank, ptr @vga_vesa_blanked, align 4
  br label %return

return:                                           ; preds = %if.end61.i, %sw.default.return_crit_edge, %if.end11.critedge, %if.then10.critedge, %vga_pal_blank.exit, %if.end3, %if.then2
  %retval.0 = phi i32 [ 0, %vga_pal_blank.exit ], [ 0, %if.then2 ], [ 1, %if.end3 ], [ 1, %if.end11.critedge ], [ 1, %if.then10.critedge ], [ 0, %if.end61.i ], [ 0, %sw.default.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vgacon_font_set(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %font, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %charcount1 = getelementptr inbounds %struct.console_font, ptr %font, i32 0, i32 2
  %0 = ptrtoint ptr %charcount1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %charcount1, align 4
  %2 = load i8, ptr @vga_video_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %2)
  %cmp = icmp ult i8 %2, 32
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %font to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %font, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cmp3.not = icmp eq i32 %4, 8
  br i1 %cmp3.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %5 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %1, label %lor.lhs.false.cleanup_crit_edge [
    i32 256, label %lor.lhs.false.if.end10_crit_edge
    i32 512, label %lor.lhs.false.if.end10_crit_edge27
  ]

lor.lhs.false.if.end10_crit_edge27:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false.if.end10_crit_edge, %lor.lhs.false.if.end10_crit_edge27
  %data = getelementptr inbounds %struct.console_font, ptr %font, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %1)
  %cmp11 = icmp eq i32 %1, 512
  %call = tail call fastcc i32 @vgacon_do_font_op(ptr noundef %7, i32 noundef 1, i1 noundef zeroext %cmp11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.then16, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %if.end14
  %height = getelementptr inbounds %struct.console_font, ptr %font, i32 0, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %vc_scan_lines.i = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 7
  %10 = ptrtoint ptr %vc_scan_lines.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vc_scan_lines.i, align 4
  %div.i = udiv i32 %11, %9
  %mul.i = mul i32 %div.i, %9
  %sub.i = add i32 %mul.i, -1
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @vga_lock) #9
  %12 = load i16, ptr @vga_video_port_reg, align 2
  %conv.i = zext i16 %12 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i.i = or i32 %conv.i, -18874368
  %13 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 7) #9, !srcloc !113
  %14 = load i16, ptr @vga_video_port_val, align 2
  %conv1.i = zext i16 %14 to i32
  %add.i2.i = or i32 %conv1.i, -18874368
  %15 = inttoptr i32 %add.i2.i to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  %17 = load i16, ptr @vga_video_port_reg, align 2
  %conv2.i = zext i16 %17 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i4.i = or i32 %conv2.i, -18874368
  %18 = inttoptr i32 %add.i4.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 9) #9, !srcloc !113
  %19 = load i16, ptr @vga_video_port_val, align 2
  %conv3.i = zext i16 %19 to i32
  %add.i6.i = or i32 %conv3.i, -18874368
  %20 = inttoptr i32 %add.i6.i to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @vga_lock) #9
  %conv5.i = trunc i32 %sub.i to i8
  %22 = and i8 %16, -67
  %and8.i = lshr i32 %sub.i, 7
  %23 = and i32 %and8.i, 2
  %and9.i = lshr i32 %sub.i, 3
  %24 = and i32 %and9.i, 64
  %add.i = or i32 %24, %23
  %25 = trunc i32 %add.i to i8
  %conv12.i = or i8 %22, %25
  %26 = and i8 %21, -32
  %27 = trunc i32 %9 to i8
  %28 = add i8 %27, -1
  %conv17.i = add i8 %28, %26
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @vga_lock) #9
  %29 = load i16, ptr @vga_video_port_reg, align 2
  %conv18.i = zext i16 %29 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i8.i = or i32 %conv18.i, -18874368
  %30 = inttoptr i32 %add.i8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 7) #9, !srcloc !113
  %31 = load i16, ptr @vga_video_port_val, align 2
  %conv19.i = zext i16 %31 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i10.i = or i32 %conv19.i, -18874368
  %32 = inttoptr i32 %add.i10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %conv12.i) #9, !srcloc !113
  %33 = load i16, ptr @vga_video_port_reg, align 2
  %conv20.i = zext i16 %33 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i12.i = or i32 %conv20.i, -18874368
  %34 = inttoptr i32 %add.i12.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 9) #9, !srcloc !113
  %35 = load i16, ptr @vga_video_port_val, align 2
  %conv21.i = zext i16 %35 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i14.i = or i32 %conv21.i, -18874368
  %36 = inttoptr i32 %add.i14.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %conv17.i) #9, !srcloc !113
  %37 = load i16, ptr @vga_video_port_reg, align 2
  %conv22.i = zext i16 %37 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i16.i = or i32 %conv22.i, -18874368
  %38 = inttoptr i32 %add.i16.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 18) #9, !srcloc !113
  %39 = load i16, ptr @vga_video_port_val, align 2
  %conv23.i = zext i16 %39 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i18.i = or i32 %conv23.i, -18874368
  %40 = inttoptr i32 %add.i18.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 %conv5.i) #9, !srcloc !113
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @vga_lock) #9
  store i32 %9, ptr @vga_video_font_height, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end31.i.for.body.i_crit_edge, %if.then16
  %i.019.i = phi i32 [ 0, %if.then16 ], [ %inc.i, %if.end31.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %i.019.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %42, null
  br i1 %tobool.not.i, label %for.body.i.if.end31.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end31.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %vc_sw.i = getelementptr inbounds %struct.vc_data, ptr %42, i32 0, i32 14
  %43 = ptrtoint ptr %vc_sw.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vc_sw.i, align 4
  %cmp25.i = icmp eq ptr %44, @vga_con
  br i1 %cmp25.i, label %if.then.i, label %land.lhs.true.i.if.end31.i_crit_edge

land.lhs.true.i.if.end31.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %call27.i = tail call zeroext i1 @con_is_visible(ptr noundef nonnull %42) #9
  br i1 %call27.i, label %if.then28.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then28.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  store i32 0, ptr @cursor_size_lastfrom, align 4
  store i32 0, ptr @cursor_size_lastto, align 4
  %45 = ptrtoint ptr %vc_sw.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vc_sw.i, align 4
  %con_cursor.i = getelementptr inbounds %struct.consw, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %con_cursor.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %con_cursor.i, align 4
  tail call void %48(ptr noundef nonnull %42, i32 noundef 1) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then28.i, %if.then.i.if.end.i_crit_edge
  %vc_cell_height.i = getelementptr inbounds %struct.vc_data, ptr %42, i32 0, i32 8
  %49 = ptrtoint ptr %vc_cell_height.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %9, ptr %vc_cell_height.i, align 4
  %height.i = getelementptr inbounds %struct.vc_data, ptr %42, i32 0, i32 28, i32 1
  %50 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %9, ptr %height.i, align 4
  %call30.i = tail call i32 @vc_resize(ptr noundef nonnull %42, i32 noundef 0, i32 noundef %div.i) #9
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.end.i, %land.lhs.true.i.if.end31.i_crit_edge, %for.body.i.if.end31.i_crit_edge
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 63
  br i1 %exitcond.not.i, label %if.end31.i.cleanup_crit_edge, label %if.end31.i.for.body.i_crit_edge

if.end31.i.for.body.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end31.i.cleanup_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end31.i.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call, %if.end10.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.end31.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vgacon_font_get(ptr nocapture noundef readonly %c, ptr nocapture noundef %font) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @vga_video_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %0)
  %cmp = icmp ult i8 %0, 32
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %font to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %font, align 4
  %height = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 28, i32 1
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  %height2 = getelementptr inbounds %struct.console_font, ptr %font, i32 0, i32 1
  %4 = ptrtoint ptr %height2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %height2, align 4
  %5 = load i8, ptr @vga_512_chars, align 1, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %cond = select i1 %tobool.not, i32 256, i32 512
  %charcount = getelementptr inbounds %struct.console_font, ptr %font, i32 0, i32 2
  %6 = ptrtoint ptr %charcount to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %charcount, align 4
  %data = getelementptr inbounds %struct.console_font, ptr %font, i32 0, i32 3
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %if.end.return_crit_edge, label %if.end6

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool8 = icmp ne i8 %5, 0
  %call = tail call fastcc i32 @vgacon_do_font_op(ptr noundef nonnull %8, i32 noundef 0, i1 noundef zeroext %tobool8)
  br label %return

return:                                           ; preds = %if.end6, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end6 ], [ -22, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vgacon_resize(ptr noundef %c, i32 noundef %width, i32 noundef %height, i32 noundef %user) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %width, 1
  %mul = mul i32 %shl, %height
  %0 = load i32, ptr @vga_vram_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %0)
  %cmp = icmp ugt i32 %mul, %0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %user)
  %tobool.not = icmp eq i32 %user, 0
  br i1 %tobool.not, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %width to i8
  call void @__asan_store1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 5) to i32))
  store i8 %conv, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 5), align 1
  %conv2 = trunc i32 %height to i8
  call void @__asan_store1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 10) to i32))
  store i8 %conv2, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 10), align 1
  %vc_cell_height = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 8
  %1 = ptrtoint ptr %vc_cell_height to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vc_cell_height, align 4
  store i32 %2, ptr @vga_default_font_height, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %rem = and i32 %width, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool4.not = icmp eq i32 %rem, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.end3.return_crit_edge

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %if.end3
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 5) to i32))
  %3 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 5), align 1
  %conv5 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5, i32 %width)
  %cmp6 = icmp ult i32 %conv5, %width
  br i1 %cmp6, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false8

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 10) to i32))
  %4 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 10), align 1
  %conv9 = zext i8 %4 to i32
  %5 = load i32, ptr @vga_default_font_height, align 4
  %mul10 = mul i32 %5, %conv9
  %vc_cell_height11 = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 8
  %6 = ptrtoint ptr %vc_cell_height11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vc_cell_height11, align 4
  %div = udiv i32 %mul10, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %height)
  %cmp12 = icmp ult i32 %div, %height
  br i1 %cmp12, label %lor.lhs.false8.return_crit_edge, label %if.end15

lor.lhs.false8.return_crit_edge:                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end15:                                         ; preds = %lor.lhs.false8
  %call = tail call zeroext i1 @con_is_visible(ptr noundef %c) #9
  br i1 %call, label %land.lhs.true, label %if.end15.return_crit_edge

if.end15.return_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true:                                    ; preds = %if.end15
  %.b31 = load i1, ptr @vga_is_gfx, align 1
  br i1 %.b31, label %land.lhs.true.return_crit_edge, label %if.then18

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @vgacon_doresize(ptr noundef %c, i32 noundef %width, i32 noundef %height)
  br label %return

return:                                           ; preds = %if.then18, %land.lhs.true.return_crit_edge, %if.end15.return_crit_edge, %lor.lhs.false8.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.end3.return_crit_edge, %if.then1, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then1 ], [ -22, %entry.return_crit_edge ], [ -22, %lor.lhs.false8.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %if.end3.return_crit_edge ], [ 0, %if.then18 ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %if.end15.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vgacon_set_palette(ptr noundef %vc, ptr nocapture noundef readonly %table) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @vga_video_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %0)
  %cmp.not = icmp eq i8 %0, 34
  br i1 %cmp.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %.b5 = load i1, ptr @vga_palette_blanked, align 1
  br i1 %.b5, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false3

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call = tail call zeroext i1 @con_is_visible(ptr noundef %vc) #9
  br i1 %call, label %if.end, label %lor.lhs.false3.return_crit_edge

lor.lhs.false3.return_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @vga_set_palette(ptr noundef %vc, ptr noundef %table)
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false3.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vgacon_scrolldelta(ptr noundef %c, i32 noundef %lines) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @vga_rolled_over, align 4
  %1 = load i32, ptr @vga_vram_base, align 4
  %2 = inttoptr i32 %1 to ptr
  %3 = load i32, ptr @vga_vram_size, align 4
  tail call void @vc_scrolldelta_helper(ptr noundef %c, i32 noundef %lines, i32 noundef %0, ptr noundef %2, i32 noundef %3) #9
  %vc_visible_origin.i = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 11
  %4 = ptrtoint ptr %vc_visible_origin.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vc_visible_origin.i, align 4
  %6 = load i32, ptr @vga_vram_base, align 4
  %sub.i = sub i32 %5, %6
  %div1.i = lshr i32 %sub.i, 1
  %call.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #9
  %shl.i.i = shl i32 %div1.i, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  tail call void @arm_heavy_mb() #9
  %7 = trunc i32 %div1.i to i16
  %8 = and i16 %7, -256
  %conv9.i.i = or i16 %8, 12
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv9.i.i) #9
  %10 = load i16, ptr @vga_video_port_reg, align 2
  %conv10.i.i = zext i16 %10 to i32
  %add12.i.i = or i32 %conv10.i.i, -18874368
  %11 = inttoptr i32 %add12.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %11, i16 %9) #9, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  tail call void @arm_heavy_mb() #9
  %12 = trunc i32 %shl.i.i to i16
  %conv17.i.i = or i16 %12, 13
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv17.i.i) #9
  %14 = load i16, ptr @vga_video_port_reg, align 2
  %conv18.i.i = zext i16 %14 to i32
  %add20.i.i = or i32 %conv18.i.i, -18874368
  %15 = inttoptr i32 %add20.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %15, i16 %13) #9, !srcloc !116
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call.i.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vgacon_set_origin(ptr nocapture noundef %c) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.b6 = load i1, ptr @vga_is_gfx, align 1
  br i1 %.b6, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @console_blanked to i32))
  %0 = load i32, ptr @console_blanked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.end_crit_edge, label %land.lhs.true

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %.b57 = load i1, ptr @vga_palette_blanked, align 1
  br i1 %.b57, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %1 = load i32, ptr @vga_vram_base, align 4
  %vc_visible_origin = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 11
  %2 = ptrtoint ptr %vc_visible_origin to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %vc_visible_origin, align 4
  %vc_origin = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 9
  %3 = ptrtoint ptr %vc_origin to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %1, ptr %vc_origin, align 4
  %call.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  tail call void @arm_heavy_mb() #9
  %4 = load i16, ptr @vga_video_port_reg, align 2
  %conv10.i.i = zext i16 %4 to i32
  %add12.i.i = or i32 %conv10.i.i, -18874368
  %5 = inttoptr i32 %add12.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %5, i16 3072) #9, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  tail call void @arm_heavy_mb() #9
  %6 = load i16, ptr @vga_video_port_reg, align 2
  %conv18.i.i = zext i16 %6 to i32
  %add20.i.i = or i32 %conv18.i.i, -18874368
  %7 = inttoptr i32 %add20.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %7, i16 3328) #9, !srcloc !116
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call.i.i) #9
  store i32 0, ptr @vga_rolled_over, align 4
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vgacon_save_screen(ptr nocapture noundef %c) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.b14 = load i1, ptr @vgacon_save_screen.vga_bootup_console, align 4
  br i1 %.b14, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @vgacon_save_screen.vga_bootup_console, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @screen_info to i32))
  %0 = load i8, ptr @screen_info, align 1
  %conv = zext i8 %0 to i32
  %state = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 1
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %conv, ptr %state, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 1) to i32))
  %2 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 1), align 1
  %conv1 = zext i8 %2 to i32
  %y = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv1, ptr %y, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.b15 = load i1, ptr @vga_is_gfx, align 1
  br i1 %.b15, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %vc_screenbuf = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 15
  %4 = ptrtoint ptr %vc_screenbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vc_screenbuf, align 4
  %vc_origin = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 9
  %6 = ptrtoint ptr %vc_origin to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vc_origin, align 4
  %8 = inttoptr i32 %7 to ptr
  %vc_screenbuf_size = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 16
  %9 = ptrtoint ptr %vc_screenbuf_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vc_screenbuf_size, align 4
  %11 = load i32, ptr @vga_vram_size, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %10, i32 %11)
  %13 = call ptr @memcpy(ptr %5, ptr %8, i32 %12)
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @vgacon_build_attr(ptr nocapture noundef readonly %c, i8 noundef zeroext %color, i32 noundef %intensity, i1 noundef zeroext %blink, i1 noundef zeroext %underline, i1 noundef zeroext %reverse, i1 noundef zeroext %italic) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.b9394 = load i1, ptr @vga_can_do_color, align 1
  br i1 %.b9394, label %if.then, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then:                                          ; preds = %entry
  br i1 %italic, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %0 = and i8 %color, -16
  %vc_itcolor = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 21
  %1 = ptrtoint ptr %vc_itcolor to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %vc_itcolor, align 4
  %or98 = or i8 %2, %0
  br label %if.end25

if.else:                                          ; preds = %if.then
  br i1 %underline, label %if.then9, label %if.else15

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %3 = and i8 %color, -16
  %vc_ulcolor = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 20
  %4 = ptrtoint ptr %vc_ulcolor to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vc_ulcolor, align 1
  %or1397 = or i8 %5, %3
  br label %if.end25

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %intensity)
  %cmp = icmp eq i32 %intensity, 0
  br i1 %cmp, label %if.then17, label %if.else15.if.end25_crit_edge

if.else15.if.end25_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then17:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #11
  %6 = and i8 %color, -16
  %vc_halfcolor = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 22
  %7 = ptrtoint ptr %vc_halfcolor to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %vc_halfcolor, align 1
  %or2196 = or i8 %8, %6
  br label %if.end25

if.end25:                                         ; preds = %if.then17, %if.else15.if.end25_crit_edge, %if.then9, %if.then5, %entry.if.end25_crit_edge
  %attr.0 = phi i8 [ %or98, %if.then5 ], [ %or1397, %if.then9 ], [ %or2196, %if.then17 ], [ %color, %if.else15.if.end25_crit_edge ], [ %color, %entry.if.end25_crit_edge ]
  br i1 %reverse, label %if.then27, label %if.end25.if.end36_crit_edge

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %and29 = and i8 %attr.0, -120
  %or32 = tail call i8 @llvm.fshl.i8(i8 %attr.0, i8 %attr.0, i8 4)
  %and33 = and i8 %or32, 119
  %or34 = or i8 %and33, %and29
  br label %if.end36

if.end36:                                         ; preds = %if.then27, %if.end25.if.end36_crit_edge
  %attr.1 = phi i8 [ %or34, %if.then27 ], [ %attr.0, %if.end25.if.end36_crit_edge ]
  %9 = xor i8 %attr.1, -128
  %spec.select = select i1 %blink, i8 %9, i8 %attr.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %intensity)
  %cmp42 = icmp eq i32 %intensity, 2
  %10 = xor i8 %spec.select, 8
  %attr.3 = select i1 %cmp42, i8 %10, i8 %spec.select
  br i1 %.b9394, label %if.end36.if.end75_crit_edge, label %if.then50

if.end36.if.end75_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then50:                                        ; preds = %if.end36
  br i1 %italic, label %if.then52, label %if.else57

if.then52:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  %11 = and i8 %attr.3, -8
  %12 = or i8 %11, 2
  br label %if.end75

if.else57:                                        ; preds = %if.then50
  br i1 %underline, label %if.then59, label %if.else64

if.then59:                                        ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #11
  %13 = and i8 %attr.3, -8
  %14 = or i8 %13, 1
  br label %if.end75

if.else64:                                        ; preds = %if.else57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %intensity)
  %cmp65 = icmp eq i32 %intensity, 0
  br i1 %cmp65, label %if.then67, label %if.else64.if.end75_crit_edge

if.else64.if.end75_crit_edge:                     ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then67:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #11
  %15 = and i8 %attr.3, -16
  %16 = or i8 %15, 8
  br label %if.end75

if.end75:                                         ; preds = %if.then67, %if.else64.if.end75_crit_edge, %if.then59, %if.then52, %if.end36.if.end75_crit_edge
  %attr.4 = phi i8 [ %attr.3, %if.end36.if.end75_crit_edge ], [ %12, %if.then52 ], [ %14, %if.then59 ], [ %16, %if.then67 ], [ %attr.3, %if.else64.if.end75_crit_edge ]
  ret i8 %attr.4
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vgacon_invert_region(ptr nocapture noundef readnone %c, ptr nocapture noundef %p, i32 noundef %count) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.b20 = load i1, ptr @vga_can_do_color, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool1.not22 = icmp eq i32 %count, 0
  br i1 %tobool1.not22, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %dec24.in = phi i32 [ %dec24, %if.end.while.body_crit_edge ], [ %count, %entry.while.body_crit_edge ]
  %p.addr.023 = phi ptr [ %incdec.ptr, %if.end.while.body_crit_edge ], [ %p, %entry.while.body_crit_edge ]
  %dec24 = add i32 %dec24.in, -1
  %0 = ptrtoint ptr %p.addr.023 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %p.addr.023, align 2
  br i1 %.b20, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i16 %1, -30465
  %and4 = lshr i16 %1, 4
  %2 = and i16 %and4, 1792
  %or = or i16 %2, %and
  %and6 = shl i16 %1, 4
  %shl = and i16 %and6, 28672
  %or7 = or i16 %or, %shl
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = and i16 %1, 1792
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %3)
  %cmp = icmp eq i16 %3, 256
  %cond = select i1 %cmp, i16 28672, i16 30464
  %xor = xor i16 %cond, %1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %a.0 = phi i16 [ %or7, %if.then ], [ %xor, %if.else ]
  %incdec.ptr = getelementptr i16, ptr %p.addr.023, i32 1
  %4 = ptrtoint ptr %p.addr.023 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %a.0, ptr %p.addr.023, align 2
  %tobool1.not = icmp eq i32 %dec24, 0
  br i1 %tobool1.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_resource(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc_resize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @con_free_unimap(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_set_default_unimap(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @con_is_visible(ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vga_set_mem_top(ptr nocapture noundef readonly %c) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %vc_visible_origin = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 11
  %0 = ptrtoint ptr %vc_visible_origin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vc_visible_origin, align 4
  %2 = load i32, ptr @vga_vram_base, align 4
  %sub = sub i32 %1, %2
  %div1 = lshr i32 %sub, 1
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #9
  %shl.i = shl i32 %div1, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  tail call void @arm_heavy_mb() #9
  %3 = trunc i32 %div1 to i16
  %4 = and i16 %3, -256
  %conv9.i = or i16 %4, 12
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv9.i) #9
  %6 = load i16, ptr @vga_video_port_reg, align 2
  %conv10.i = zext i16 %6 to i32
  %add12.i = or i32 %conv10.i, -18874368
  %7 = inttoptr i32 %add12.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %7, i16 %5) #9, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  tail call void @arm_heavy_mb() #9
  %8 = trunc i32 %shl.i to i16
  %conv17.i = or i16 %8, 13
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv17.i) #9
  %10 = load i16, ptr @vga_video_port_reg, align 2
  %conv18.i = zext i16 %10 to i32
  %add20.i = or i32 %conv18.i, -18874368
  %11 = inttoptr i32 %add20.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %11, i16 %9) #9, !srcloc !116
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vgacon_restore_screen(ptr noundef %c) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_origin = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %vc_origin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vc_origin, align 4
  %vc_visible_origin = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 11
  %2 = ptrtoint ptr %vc_visible_origin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vc_visible_origin, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = load i32, ptr @vga_rolled_over, align 4
  %5 = load i32, ptr @vga_vram_base, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = load i32, ptr @vga_vram_size, align 4
  tail call void @vc_scrolldelta_helper(ptr noundef %c, i32 noundef 0, i32 noundef %4, ptr noundef %6, i32 noundef %7) #9
  %8 = ptrtoint ptr %vc_visible_origin to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vc_visible_origin, align 4
  %10 = load i32, ptr @vga_vram_base, align 4
  %sub.i.i = sub i32 %9, %10
  %div1.i.i = lshr i32 %sub.i.i, 1
  %call.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #9
  %shl.i.i.i = shl i32 %div1.i.i, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  tail call void @arm_heavy_mb() #9
  %11 = trunc i32 %div1.i.i to i16
  %12 = and i16 %11, -256
  %conv9.i.i.i = or i16 %12, 12
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv9.i.i.i) #9
  %14 = load i16, ptr @vga_video_port_reg, align 2
  %conv10.i.i.i = zext i16 %14 to i32
  %add12.i.i.i = or i32 %conv10.i.i.i, -18874368
  %15 = inttoptr i32 %add12.i.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %15, i16 %13) #9, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  tail call void @arm_heavy_mb() #9
  %16 = trunc i32 %shl.i.i.i to i16
  %conv17.i.i.i = or i16 %16, 13
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv17.i.i.i) #9
  %18 = load i16, ptr @vga_video_port_reg, align 2
  %conv18.i.i.i = zext i16 %18 to i32
  %add20.i.i.i = or i32 %conv18.i.i.i, -18874368
  %19 = inttoptr i32 %add20.i.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %19, i16 %17) #9, !srcloc !116
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call.i.i.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vgacon_set_cursor_size(i32 noundef %from, i32 noundef %to) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @cursor_size_lastfrom, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %from)
  %cmp = icmp eq i32 %0, %from
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @cursor_size_lastto, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %to)
  %cmp1 = icmp eq i32 %1, %to
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  store i32 %from, ptr @cursor_size_lastfrom, align 4
  store i32 %to, ptr @cursor_size_lastto, align 4
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #9
  %2 = load i8, ptr @vga_video_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %2)
  %cmp4 = icmp ugt i8 %2, 33
  br i1 %cmp4, label %if.then6, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = load i16, ptr @vga_video_port_reg, align 2
  %conv7 = zext i16 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i = or i32 %conv7, -18874368
  %4 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 10) #9, !srcloc !113
  %5 = load i16, ptr @vga_video_port_val, align 2
  %conv8 = zext i16 %5 to i32
  %add.i3 = or i32 %conv8, -18874368
  %6 = inttoptr i32 %add.i3 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  %8 = load i16, ptr @vga_video_port_reg, align 2
  %conv11 = zext i16 %8 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i5 = or i32 %conv11, -18874368
  %9 = inttoptr i32 %add.i5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 11) #9, !srcloc !113
  %10 = load i16, ptr @vga_video_port_val, align 2
  %conv12 = zext i16 %10 to i32
  %add.i7 = or i32 %conv12, -18874368
  %11 = inttoptr i32 %add.i7 to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  %13 = and i8 %7, -64
  %phi.bo = zext i8 %13 to i32
  %14 = and i8 %12, -32
  %phi.bo1 = zext i8 %14 to i32
  br label %if.end15

if.end15:                                         ; preds = %if.then6, %if.end.if.end15_crit_edge
  %cure.0 = phi i32 [ %phi.bo1, %if.then6 ], [ 0, %if.end.if.end15_crit_edge ]
  %curs.0 = phi i32 [ %phi.bo, %if.then6 ], [ 0, %if.end.if.end15_crit_edge ]
  %or = or i32 %curs.0, %from
  %or17 = or i32 %cure.0, %to
  %15 = load i16, ptr @vga_video_port_reg, align 2
  %conv18 = zext i16 %15 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i9 = or i32 %conv18, -18874368
  %16 = inttoptr i32 %add.i9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 10) #9, !srcloc !113
  %conv19 = trunc i32 %or to i8
  %17 = load i16, ptr @vga_video_port_val, align 2
  %conv20 = zext i16 %17 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i11 = or i32 %conv20, -18874368
  %18 = inttoptr i32 %add.i11 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %conv19) #9, !srcloc !113
  %19 = load i16, ptr @vga_video_port_reg, align 2
  %conv21 = zext i16 %19 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i13 = or i32 %conv21, -18874368
  %20 = inttoptr i32 %add.i13 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 11) #9, !srcloc !113
  %conv22 = trunc i32 %or17 to i8
  %21 = load i16, ptr @vga_video_port_val, align 2
  %conv23 = zext i16 %21 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i15 = or i32 %conv23, -18874368
  %22 = inttoptr i32 %add.i15 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %conv22) #9, !srcloc !113
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memset16(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vgacon_doresize(ptr nocapture noundef readonly %c, i32 noundef %width, i32 noundef %height) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_cell_height = getelementptr inbounds %struct.vc_data, ptr %c, i32 0, i32 8
  %0 = ptrtoint ptr %vc_cell_height to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vc_cell_height, align 4
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #9
  %mul1 = shl i32 %width, 3
  store i32 %mul1, ptr @vgacon_xres, align 4
  %2 = ptrtoint ptr %vc_cell_height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vc_cell_height, align 4
  %mul3 = mul i32 %3, %height
  store i32 %mul3, ptr @vgacon_yres, align 4
  %4 = load i8, ptr @vga_video_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %4)
  %cmp5 = icmp ugt i8 %4, 33
  br i1 %cmp5, label %if.then, label %entry.if.end49_crit_edge

entry.if.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul i32 %1, %height
  %5 = load i16, ptr @vga_video_port_reg, align 2
  %conv7 = zext i16 %5 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i = or i32 %conv7, -18874368
  %6 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 9) #9, !srcloc !113
  %7 = load i16, ptr @vga_video_port_val, align 2
  %conv8 = zext i16 %7 to i32
  %add.i2 = or i32 %conv8, -18874368
  %8 = inttoptr i32 %add.i2 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  %.lobit = lshr i8 %9, 7
  %10 = zext i8 %.lobit to i32
  %spec.select = shl i32 %mul, %10
  %11 = load i16, ptr @vga_video_port_reg, align 2
  %conv12 = zext i16 %11 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i4 = or i32 %conv12, -18874368
  %12 = inttoptr i32 %add.i4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 23) #9, !srcloc !113
  %13 = load i16, ptr @vga_video_port_val, align 2
  %conv13 = zext i16 %13 to i32
  %add.i6 = or i32 %conv13, -18874368
  %14 = inttoptr i32 %add.i6 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  %16 = lshr i8 %15, 2
  %.lobit40 = and i8 %16, 1
  %17 = zext i8 %.lobit40 to i32
  %scanlines.1 = lshr i32 %spec.select, %17
  %sub = add i32 %scanlines.1, -1
  %conv21 = trunc i32 %sub to i8
  %18 = load i16, ptr @vga_video_port_reg, align 2
  %conv22 = zext i16 %18 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i8 = or i32 %conv22, -18874368
  %19 = inttoptr i32 %add.i8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 7) #9, !srcloc !113
  %20 = load i16, ptr @vga_video_port_val, align 2
  %conv23 = zext i16 %20 to i32
  %add.i10 = or i32 %conv23, -18874368
  %21 = inttoptr i32 %add.i10 to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  %23 = and i8 %22, -67
  %and28 = lshr i32 %sub, 7
  %24 = trunc i32 %and28 to i8
  %25 = and i8 %24, 2
  %26 = or i8 %25, %23
  %and34 = lshr i32 %sub, 3
  %27 = trunc i32 %and34 to i8
  %28 = and i8 %27, 64
  %29 = or i8 %26, %28
  %30 = load i16, ptr @vga_video_port_reg, align 2
  %conv41 = zext i16 %30 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i12 = or i32 %conv41, -18874368
  %31 = inttoptr i32 %add.i12 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 17) #9, !srcloc !113
  %32 = load i16, ptr @vga_video_port_val, align 2
  %conv42 = zext i16 %32 to i32
  %add.i14 = or i32 %conv42, -18874368
  %33 = inttoptr i32 %add.i14 to ptr
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %33) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  %35 = load i16, ptr @vga_video_port_reg, align 2
  %conv44 = zext i16 %35 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i16 = or i32 %conv44, -18874368
  %36 = inttoptr i32 %add.i16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 17) #9, !srcloc !113
  %37 = and i8 %34, 127
  %38 = load i16, ptr @vga_video_port_val, align 2
  %conv48 = zext i16 %38 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i18 = or i32 %conv48, -18874368
  %39 = inttoptr i32 %add.i18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 %37) #9, !srcloc !113
  br label %if.end49

if.end49:                                         ; preds = %if.then, %entry.if.end49_crit_edge
  %scanlines_lo.0 = phi i8 [ %conv21, %if.then ], [ 0, %entry.if.end49_crit_edge ]
  %r7.2 = phi i8 [ %29, %if.then ], [ 0, %entry.if.end49_crit_edge ]
  %vsync_end.0 = phi i8 [ %34, %if.then ], [ 0, %entry.if.end49_crit_edge ]
  %40 = load i16, ptr @vga_video_port_reg, align 2
  %conv50 = zext i16 %40 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i20 = or i32 %conv50, -18874368
  %41 = inttoptr i32 %add.i20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 1) #9, !srcloc !113
  %42 = trunc i32 %width to i8
  %conv52 = add i8 %42, -1
  %43 = load i16, ptr @vga_video_port_val, align 2
  %conv53 = zext i16 %43 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i22 = or i32 %conv53, -18874368
  %44 = inttoptr i32 %add.i22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 %conv52) #9, !srcloc !113
  %45 = load i16, ptr @vga_video_port_reg, align 2
  %conv54 = zext i16 %45 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i24 = or i32 %conv54, -18874368
  %46 = inttoptr i32 %add.i24 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 19) #9, !srcloc !113
  %shr55 = lshr i32 %width, 1
  %conv56 = trunc i32 %shr55 to i8
  %47 = load i16, ptr @vga_video_port_val, align 2
  %conv57 = zext i16 %47 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i26 = or i32 %conv57, -18874368
  %48 = inttoptr i32 %add.i26 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 %conv56) #9, !srcloc !113
  %49 = load i8, ptr @vga_video_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %49)
  %cmp59 = icmp ugt i8 %49, 33
  br i1 %cmp59, label %if.then61, label %if.end49.do.body69_crit_edge

if.end49.do.body69_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body69

if.then61:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %50 = load i16, ptr @vga_video_port_reg, align 2
  %conv62 = zext i16 %50 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i28 = or i32 %conv62, -18874368
  %51 = inttoptr i32 %add.i28 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 18) #9, !srcloc !113
  %52 = load i16, ptr @vga_video_port_val, align 2
  %conv63 = zext i16 %52 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i30 = or i32 %conv63, -18874368
  %53 = inttoptr i32 %add.i30 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 %scanlines_lo.0) #9, !srcloc !113
  %54 = load i16, ptr @vga_video_port_reg, align 2
  %conv64 = zext i16 %54 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i32 = or i32 %conv64, -18874368
  %55 = inttoptr i32 %add.i32 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 7) #9, !srcloc !113
  %56 = load i16, ptr @vga_video_port_val, align 2
  %conv65 = zext i16 %56 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i34 = or i32 %conv65, -18874368
  %57 = inttoptr i32 %add.i34 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 %r7.2) #9, !srcloc !113
  %58 = load i16, ptr @vga_video_port_reg, align 2
  %conv66 = zext i16 %58 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i36 = or i32 %conv66, -18874368
  %59 = inttoptr i32 %add.i36 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 17) #9, !srcloc !113
  %60 = load i16, ptr @vga_video_port_val, align 2
  %conv67 = zext i16 %60 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %add.i38 = or i32 %conv67, -18874368
  %61 = inttoptr i32 %add.i38 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 %vsync_end.0) #9, !srcloc !113
  br label %do.body69

do.body69:                                        ; preds = %if.then61, %if.end49.do.body69_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vga_set_palette(ptr nocapture noundef readonly %vc, ptr nocapture noundef readonly %table) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873402 to ptr), i8 -1) #9, !srcloc !113
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %j.043 = phi i32 [ 0, %entry ], [ %inc10, %for.body.for.body_crit_edge ]
  %i.042 = phi i32 [ 0, %entry ], [ %inc15, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %table, i32 %i.042
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873400 to ptr), i8 %1) #9, !srcloc !113
  %inc = add nuw nsw i32 %j.043, 1
  %arrayidx1 = getelementptr %struct.vc_data, ptr %vc, i32 0, i32 41, i32 %j.043
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %4 = lshr i8 %3, 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %4) #9, !srcloc !113
  %inc4 = add nuw nsw i32 %j.043, 2
  %arrayidx5 = getelementptr %struct.vc_data, ptr %vc, i32 0, i32 41, i32 %inc
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx5, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %7 = lshr i8 %6, 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %7) #9, !srcloc !113
  %inc10 = add nuw nsw i32 %j.043, 3
  %arrayidx11 = getelementptr %struct.vc_data, ptr %vc, i32 0, i32 41, i32 %inc4
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx11, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %10 = lshr i8 %9, 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %10) #9, !srcloc !113
  %inc15 = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc15, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vgacon_do_font_op(ptr noundef %arg, i32 noundef %set, i1 noundef zeroext %ch512) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %ch512 to i8
  %0 = load i16, ptr @vga_video_port_reg, align 2
  %add = add i16 %0, 6
  %1 = load i8, ptr @vga_video_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %1)
  %cmp.not = icmp eq i8 %1, 32
  %. = select i1 %cmp.not, i8 10, i8 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vga_base to i32))
  %charmap.0.in.in = load i32, ptr @vga_base, align 4
  %charmap.0.in = add i32 %charmap.0.in.in, 655360
  %charmap.0 = inttoptr i32 %charmap.0.in to ptr
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %entry
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @vga_lock) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 0) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 1) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 2) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 4) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 4) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 7) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 0) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 3) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 4) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 2) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 5) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 6) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #9, !srcloc !113
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @vga_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool18.not = icmp eq i32 %set, 0
  br i1 %tobool18.not, label %if.end7.for.body26_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.for.body26_crit_edge:                     ; preds = %if.end7
  br label %for.body26

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end7.for.body_crit_edge
  %i.0124 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %arg, i32 %i.0124
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %add.ptr = getelementptr i8, ptr %charmap.0, i32 %i.0124
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %4)
  store volatile i8 %3, ptr %add.ptr, align 1
  tail call void @__might_resched(ptr noundef nonnull @.str.11, i32 noundef 891, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  %inc = add nuw nsw i32 %i.0124, 1
  %exitcond.not = icmp eq i32 %inc, 8192
  br i1 %exitcond.not, label %for.body.if.end34_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.if.end34_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %if.end7.for.body26_crit_edge
  %i.1125 = phi i32 [ %inc32, %for.body26.for.body26_crit_edge ], [ 0, %if.end7.for.body26_crit_edge ]
  %add.ptr27 = getelementptr i8, ptr %charmap.0, i32 %i.1125
  %5 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %add.ptr27, align 1
  %arrayidx28 = getelementptr i8, ptr %arg, i32 %i.1125
  %7 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %arrayidx28, align 1
  tail call void @__might_resched(ptr noundef nonnull @.str.11, i32 noundef 896, i32 noundef 0) #9
  %call.i36 = tail call i32 @__cond_resched() #9
  %inc32 = add nuw nsw i32 %i.1125, 1
  %exitcond131.not = icmp eq i32 %inc32, 8192
  br i1 %exitcond131.not, label %for.body26.if.end34_crit_edge, label %for.body26.for.body26_crit_edge

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body26

for.body26.if.end34_crit_edge:                    ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.end34:                                         ; preds = %for.body26.if.end34_crit_edge, %for.body.if.end34_crit_edge
  br i1 %ch512, label %if.then36, label %if.end34.if.end66_crit_edge

if.end34.if.end66_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then36:                                        ; preds = %if.end34
  %add.ptr37 = getelementptr i8, ptr %charmap.0, i32 16384
  %add.ptr38 = getelementptr i8, ptr %arg, i32 8192
  br i1 %tobool18.not, label %if.then36.for.body56_crit_edge, label %if.then36.for.body44_crit_edge

if.then36.for.body44_crit_edge:                   ; preds = %if.then36
  br label %for.body44

if.then36.for.body56_crit_edge:                   ; preds = %if.then36
  br label %for.body56

for.body44:                                       ; preds = %for.body44.for.body44_crit_edge, %if.then36.for.body44_crit_edge
  %i.2126 = phi i32 [ %inc50, %for.body44.for.body44_crit_edge ], [ 0, %if.then36.for.body44_crit_edge ]
  %arrayidx45 = getelementptr i8, ptr %add.ptr38, i32 %i.2126
  %8 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx45, align 1
  %add.ptr46 = getelementptr i8, ptr %add.ptr37, i32 %i.2126
  %10 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_store1_noabort(i32 %10)
  store volatile i8 %9, ptr %add.ptr46, align 1
  tail call void @__might_resched(ptr noundef nonnull @.str.11, i32 noundef 910, i32 noundef 0) #9
  %call.i37 = tail call i32 @__cond_resched() #9
  %inc50 = add nuw nsw i32 %i.2126, 1
  %exitcond132.not = icmp eq i32 %inc50, 8192
  br i1 %exitcond132.not, label %for.body44.if.end66_crit_edge, label %for.body44.for.body44_crit_edge

for.body44.for.body44_crit_edge:                  ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body44

for.body44.if.end66_crit_edge:                    ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

for.body56:                                       ; preds = %for.body56.for.body56_crit_edge, %if.then36.for.body56_crit_edge
  %i.3127 = phi i32 [ %inc62, %for.body56.for.body56_crit_edge ], [ 0, %if.then36.for.body56_crit_edge ]
  %add.ptr57 = getelementptr i8, ptr %add.ptr37, i32 %i.3127
  %11 = ptrtoint ptr %add.ptr57 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %add.ptr57, align 1
  %arrayidx58 = getelementptr i8, ptr %add.ptr38, i32 %i.3127
  %13 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx58, align 1
  tail call void @__might_resched(ptr noundef nonnull @.str.11, i32 noundef 915, i32 noundef 0) #9
  %call.i38 = tail call i32 @__cond_resched() #9
  %inc62 = add nuw nsw i32 %i.3127, 1
  %exitcond133.not = icmp eq i32 %inc62, 8192
  br i1 %exitcond133.not, label %for.body56.if.end66_crit_edge, label %for.body56.for.body56_crit_edge

for.body56.for.body56_crit_edge:                  ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body56

for.body56.if.end66_crit_edge:                    ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.end66:                                         ; preds = %for.body56.if.end66_crit_edge, %for.body44.if.end66_crit_edge, %if.end34.if.end66_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @vga_lock) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 0) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 1) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 2) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 3) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 4) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 3) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool18.not, label %if.end100.critedge, label %if.then71

if.then71:                                        ; preds = %if.end66
  %conv73 = select i1 %ch512, i8 4, i8 0
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 3) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %conv73) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 0) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 3) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 4) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 5) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 16) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 6) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %.) #9, !srcloc !113
  %14 = load i8, ptr @vga_512_chars, align 1, !range !114
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %frombool)
  %cmp85.not = icmp eq i8 %14, %frombool
  br i1 %cmp85.not, label %if.then71.if.end100_crit_edge, label %if.then87

if.then71.if.end100_crit_edge:                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.then87:                                        ; preds = %if.then71
  store i8 %frombool, ptr @vga_512_chars, align 1
  %conv90 = zext i16 %add to i32
  %add.i = or i32 %conv90, -18874368
  %15 = inttoptr i32 %add.i to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %conv96 = select i1 %ch512, i8 7, i8 15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 18) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 %conv96) #9, !srcloc !113
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 32) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 0) #9, !srcloc !113
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @vga_lock) #9
  %conv116 = select i1 %ch512, i16 2048, i16 0
  br label %for.body106

if.end100.critedge:                               ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 0) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 3) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 4) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 5) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 16) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 6) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %.) #9, !srcloc !113
  br label %if.end100

if.end100:                                        ; preds = %if.end100.critedge, %if.then71.if.end100_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @vga_lock) #9
  br label %cleanup

for.body106:                                      ; preds = %if.end118.for.body106_crit_edge, %if.then87
  %i.4128 = phi i32 [ 0, %if.then87 ], [ %inc120, %if.end118.for.body106_crit_edge ]
  %arrayidx107 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %i.4128
  %18 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx107, align 4
  %tobool108.not = icmp eq ptr %19, null
  br i1 %tobool108.not, label %for.body106.if.end118_crit_edge, label %land.lhs.true109

for.body106.if.end118_crit_edge:                  ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

land.lhs.true109:                                 ; preds = %for.body106
  %vc_sw = getelementptr inbounds %struct.vc_data, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %vc_sw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vc_sw, align 4
  %cmp110 = icmp eq ptr %21, @vga_con
  br i1 %cmp110, label %if.then112, label %land.lhs.true109.if.end118_crit_edge

land.lhs.true109.if.end118_crit_edge:             ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

if.then112:                                       ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #11
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, ptr %19, i32 0, i32 27
  %22 = ptrtoint ptr %vc_hi_font_mask to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %vc_hi_font_mask, align 4
  tail call void @clear_buffer_attributes(ptr noundef nonnull %19) #9
  %23 = ptrtoint ptr %vc_hi_font_mask to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv116, ptr %vc_hi_font_mask, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then112, %land.lhs.true109.if.end118_crit_edge, %for.body106.if.end118_crit_edge
  %inc120 = add nuw nsw i32 %i.4128, 1
  %exitcond134.not = icmp eq i32 %inc120, 63
  br i1 %exitcond134.not, label %if.end118.cleanup_crit_edge, label %if.end118.for.body106_crit_edge

if.end118.for.body106_crit_edge:                  ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body106

if.end118.cleanup_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end118.cleanup_crit_edge, %if.end100, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end100 ], [ 0, %if.end118.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_buffer_attributes(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc_scrolldelta_helper(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !85, !87, !89, !91, !93, !95, !97, !99}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__setup_no_scroll, !1, !"__setup_no_scroll", i1 false, i1 false}
!1 = !{!"../drivers/video/console/vgacon.c", i32 114, i32 1}
!2 = !{ptr @vga_con, !3, !"vga_con", i1 false, i1 false}
!3 = !{!"../drivers/video/console/vgacon.c", i32 1183, i32 20}
!4 = !{ptr @__ksymtab_vga_con, !5, !"__ksymtab_vga_con", i1 false, i1 false}
!5 = !{!"../drivers/video/console/vgacon.c", i32 1205, i32 1}
!6 = !{ptr @__UNIQUE_ID_file228, !7, !"__UNIQUE_ID_file228", i1 false, i1 false}
!7 = !{!"../drivers/video/console/vgacon.c", i32 1207, i32 1}
!8 = !{ptr @__UNIQUE_ID_license229, !7, !"__UNIQUE_ID_license229", i1 false, i1 false}
!9 = !{ptr @__setup_str_no_scroll, !1, !"__setup_str_no_scroll", i1 false, i1 false}
!10 = !{ptr @vga_hardscroll_enabled, !11, !"vga_hardscroll_enabled", i1 false, i1 false}
!11 = !{!"../drivers/video/console/vgacon.c", i32 100, i32 13}
!12 = distinct !{null, !13, !"vga_hardscroll_user_enable", i1 false, i1 false}
!13 = !{!"../drivers/video/console/vgacon.c", i32 101, i32 13}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/console/vgacon.c", i32 199, i32 18}
!16 = !{ptr @vgacon_startup.ega_console_resource, !17, !"ega_console_resource", i1 false, i1 false}
!17 = !{!"../drivers/video/console/vgacon.c", i32 198, i32 27}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/video/console/vgacon.c", i32 205, i32 19}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/video/console/vgacon.c", i32 210, i32 18}
!22 = !{ptr @vgacon_startup.mda1_console_resource, !23, !"mda1_console_resource", i1 false, i1 false}
!23 = !{!"../drivers/video/console/vgacon.c", i32 209, i32 27}
!24 = !{ptr @vgacon_startup.mda2_console_resource, !25, !"mda2_console_resource", i1 false, i1 false}
!25 = !{!"../drivers/video/console/vgacon.c", i32 214, i32 27}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/video/console/vgacon.c", i32 221, i32 19}
!28 = !{ptr @vgacon_startup.ega_console_resource.4, !29, !"ega_console_resource", i1 false, i1 false}
!29 = !{!"../drivers/video/console/vgacon.c", i32 240, i32 28}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/video/console/vgacon.c", i32 246, i32 20}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/video/console/vgacon.c", i32 251, i32 19}
!34 = !{ptr @vgacon_startup.vga_console_resource, !35, !"vga_console_resource", i1 false, i1 false}
!35 = !{!"../drivers/video/console/vgacon.c", i32 250, i32 28}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/video/console/vgacon.c", i32 256, i32 20}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/video/console/vgacon.c", i32 286, i32 18}
!40 = !{ptr @vgacon_startup.cga_console_resource, !41, !"cga_console_resource", i1 false, i1 false}
!41 = !{!"../drivers/video/console/vgacon.c", i32 285, i32 27}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/video/console/vgacon.c", i32 292, i32 19}
!44 = !{ptr @vga_video_num_lines, !45, !"vga_video_num_lines", i1 false, i1 false}
!45 = !{!"../drivers/video/console/vgacon.c", i32 88, i32 21}
!46 = !{ptr @vga_video_num_columns, !47, !"vga_video_num_columns", i1 false, i1 false}
!47 = !{!"../drivers/video/console/vgacon.c", i32 87, i32 21}
!48 = distinct !{null, !49, !"vgastate", i1 false, i1 false}
!49 = !{!"../drivers/video/console/vgacon.c", i32 59, i32 24}
!50 = !{ptr @vga_vram_base, !51, !"vga_vram_base", i1 false, i1 false}
!51 = !{!"../drivers/video/console/vgacon.c", i32 82, i32 22}
!52 = !{ptr @vga_video_port_reg, !53, !"vga_video_port_reg", i1 false, i1 false}
!53 = !{!"../drivers/video/console/vgacon.c", i32 85, i32 13}
!54 = !{ptr @vga_video_port_val, !55, !"vga_video_port_val", i1 false, i1 false}
!55 = !{!"../drivers/video/console/vgacon.c", i32 86, i32 13}
!56 = !{ptr @vga_video_type, !57, !"vga_video_type", i1 false, i1 false}
!57 = !{!"../drivers/video/console/vgacon.c", i32 91, i32 22}
!58 = !{ptr @vga_vram_size, !59, !"vga_vram_size", i1 false, i1 false}
!59 = !{!"../drivers/video/console/vgacon.c", i32 84, i32 21}
!60 = !{ptr @vga_video_font_height, !61, !"vga_video_font_height", i1 false, i1 false}
!61 = !{!"../drivers/video/console/vgacon.c", i32 96, i32 14}
!62 = distinct !{null, !63, !"vga_can_do_color", i1 false, i1 false}
!63 = !{!"../drivers/video/console/vgacon.c", i32 89, i32 14}
!64 = !{ptr @vga_vram_end, !65, !"vga_vram_end", i1 false, i1 false}
!65 = !{!"../drivers/video/console/vgacon.c", i32 83, i32 22}
!66 = !{ptr @vga_default_font_height, !67, !"vga_default_font_height", i1 false, i1 false}
!67 = !{!"../drivers/video/console/vgacon.c", i32 90, i32 21}
!68 = !{ptr @vga_scan_lines, !69, !"vga_scan_lines", i1 false, i1 false}
!69 = !{!"../drivers/video/console/vgacon.c", i32 97, i32 14}
!70 = !{ptr @vgacon_xres, !71, !"vgacon_xres", i1 false, i1 false}
!71 = !{!"../drivers/video/console/vgacon.c", i32 57, i32 12}
!72 = !{ptr @vgacon_yres, !73, !"vgacon_yres", i1 false, i1 false}
!73 = !{!"../drivers/video/console/vgacon.c", i32 58, i32 12}
!74 = !{ptr @vga_512_chars, !75, !"vga_512_chars", i1 false, i1 false}
!75 = !{!"../drivers/video/console/vgacon.c", i32 95, i32 15}
!76 = !{ptr @vgacon_uni_pagedir, !77, !"vgacon_uni_pagedir", i1 false, i1 false}
!77 = !{!"../drivers/video/console/vgacon.c", i32 78, i32 28}
!78 = !{ptr @vgacon_refcount, !79, !"vgacon_refcount", i1 false, i1 false}
!79 = !{!"../drivers/video/console/vgacon.c", i32 79, i32 12}
!80 = !{ptr @.str.10, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/video/console/vgacon.c", i32 54, i32 8}
!82 = !{ptr @vga_lock, !81, !"vga_lock", i1 false, i1 false}
!83 = !{ptr @cursor_size_lastfrom, !84, !"cursor_size_lastfrom", i1 false, i1 false}
!84 = !{!"../drivers/video/console/vgacon.c", i32 55, i32 12}
!85 = !{ptr @cursor_size_lastto, !86, !"cursor_size_lastto", i1 false, i1 false}
!86 = !{!"../drivers/video/console/vgacon.c", i32 56, i32 12}
!87 = distinct !{null, !88, !"vga_is_gfx", i1 false, i1 false}
!88 = !{!"../drivers/video/console/vgacon.c", i32 94, i32 15}
!89 = !{ptr @vga_rolled_over, !90, !"vga_rolled_over", i1 false, i1 false}
!90 = !{!"../drivers/video/console/vgacon.c", i32 98, i32 22}
!91 = !{ptr @vga_vesa_blanked, !92, !"vga_vesa_blanked", i1 false, i1 false}
!92 = !{!"../drivers/video/console/vgacon.c", i32 92, i32 13}
!93 = distinct !{null, !94, !"vga_state", i1 false, i1 false}
!94 = !{!"../drivers/video/console/vgacon.c", i32 673, i32 3}
!95 = distinct !{null, !96, !"vga_palette_blanked", i1 false, i1 false}
!96 = !{!"../drivers/video/console/vgacon.c", i32 93, i32 15}
!97 = !{ptr @.str.11, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/video/console/vgacon.c", i32 891, i32 5}
!99 = distinct !{null, !100, !"vga_bootup_console", i1 false, i1 false}
!100 = !{!"../drivers/video/console/vgacon.c", i32 1105, i32 13}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{i64 6520073}
!111 = !{i64 2154053749}
!112 = !{i64 2154055734}
!113 = !{i64 6519678}
!114 = !{i8 0, i8 2}
!115 = !{i64 2154105279}
!116 = !{i64 6519255}
!117 = !{i64 2154105753}
