; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/uvesafb.c_pt.bc'
source_filename = "../drivers/video/fbdev/uvesafb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.kparam_string = type { i32, ptr }
%struct.cb_id = type { i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.driver_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.uvesafb_ktask = type { %struct.uvesafb_task, ptr, ptr, i32 }
%struct.uvesafb_task = type { i8, i32, %struct.v86_regs }
%struct.v86_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.cn_msg = type { %struct.cb_id, i32, i32, i16, i16, [0 x i8] }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.147, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.147 = type { ptr }
%struct.vbe_ib = type <{ [4 x i8], i16, i32, i32, i32, i16, i16, i32, i32, i32, [222 x i8], [256 x i8], [512 x i8] }>
%struct.uvesafb_par = type { %struct.vbe_ib, ptr, i32, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, i32, %struct.vbe_crtc_ib, i32 }
%struct.vbe_crtc_ib = type <{ i16, i16, i16, i16, i16, i16, i8, i32, i16, [40 x i8] }>
%struct.vbe_mode_ib = type <{ i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [6 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i8 }>
%struct.fb_modelist = type { %struct.list_head, %struct.fb_videomode }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.uvesafb_pal_entry = type { i8, i8, i8, i8 }

@__initcall__kmod_uvesafb__472_1922_uvesafb_init6 = internal global ptr @uvesafb_init, section ".initcall6.init", align 4
@__exitcall_uvesafb_exit = internal global ptr @uvesafb_exit, section ".exitcall.exit", align 4
@__param_str_scroll = internal constant [15 x i8] c"uvesafb.scroll\00", align 1
@param_ops_scroll = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @param_set_scroll, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@ypan = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_scroll = internal constant %struct.kernel_param { ptr @__param_str_scroll, ptr null, ptr @param_ops_scroll, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @ypan } }, section "__param", align 4
@__UNIQUE_ID_scrolltype473 = internal constant [31 x i8] c"uvesafb.parmtype=scroll:scroll\00", section ".modinfo", align 1
@__UNIQUE_ID_scroll474 = internal constant [72 x i8] c"uvesafb.parm=scroll:Scrolling mode, set to 'redraw', 'ypan', or 'ywrap'\00", section ".modinfo", align 1
@__param_str_vgapal = internal constant [15 x i8] c"uvesafb.vgapal\00", align 1
@param_ops_invbool = external dso_local constant %struct.kernel_param_ops, align 4
@pmi_setpal = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_vgapal = internal constant %struct.kernel_param { ptr @__param_str_vgapal, ptr null, ptr @param_ops_invbool, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @pmi_setpal } }, section "__param", align 4
@__UNIQUE_ID_vgapaltype475 = internal constant [32 x i8] c"uvesafb.parmtype=vgapal:invbool\00", section ".modinfo", align 1
@__UNIQUE_ID_vgapal476 = internal constant [52 x i8] c"uvesafb.parm=vgapal:Set palette using VGA registers\00", section ".modinfo", align 1
@__param_str_pmipal = internal constant [15 x i8] c"uvesafb.pmipal\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_pmipal = internal constant %struct.kernel_param { ptr @__param_str_pmipal, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @pmi_setpal } }, section "__param", align 4
@__UNIQUE_ID_pmipaltype477 = internal constant [29 x i8] c"uvesafb.parmtype=pmipal:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_pmipal478 = internal constant [48 x i8] c"uvesafb.parm=pmipal:Set palette using PMI calls\00", section ".modinfo", align 1
@__param_str_mtrr = internal constant [13 x i8] c"uvesafb.mtrr\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@mtrr = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@__param_mtrr = internal constant %struct.kernel_param { ptr @__param_str_mtrr, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @mtrr } }, section "__param", align 4
@__UNIQUE_ID_mtrrtype479 = internal constant [27 x i8] c"uvesafb.parmtype=mtrr:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_mtrr480 = internal constant [73 x i8] c"uvesafb.parm=mtrr:Memory Type Range Registers setting. Use 0 to disable.\00", section ".modinfo", align 1
@__param_str_blank = internal constant [14 x i8] c"uvesafb.blank\00", align 1
@blank = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_blank = internal constant %struct.kernel_param { ptr @__param_str_blank, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @blank } }, section "__param", align 4
@__UNIQUE_ID_blanktype481 = internal constant [28 x i8] c"uvesafb.parmtype=blank:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_blank482 = internal constant [44 x i8] c"uvesafb.parm=blank:Enable hardware blanking\00", section ".modinfo", align 1
@__param_str_nocrtc = internal constant [15 x i8] c"uvesafb.nocrtc\00", align 1
@nocrtc = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_nocrtc = internal constant %struct.kernel_param { ptr @__param_str_nocrtc, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @nocrtc } }, section "__param", align 4
@__UNIQUE_ID_nocrtctype483 = internal constant [29 x i8] c"uvesafb.parmtype=nocrtc:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nocrtc484 = internal constant [59 x i8] c"uvesafb.parm=nocrtc:Ignore CRTC timings when setting modes\00", section ".modinfo", align 1
@__param_str_noedid = internal constant [15 x i8] c"uvesafb.noedid\00", align 1
@noedid = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_noedid = internal constant %struct.kernel_param { ptr @__param_str_noedid, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @noedid } }, section "__param", align 4
@__UNIQUE_ID_noedidtype485 = internal constant [29 x i8] c"uvesafb.parmtype=noedid:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_noedid486 = internal constant [75 x i8] c"uvesafb.parm=noedid:Ignore EDID-provided monitor limits when setting modes\00", section ".modinfo", align 1
@__param_str_vram_remap = internal constant [19 x i8] c"uvesafb.vram_remap\00", align 1
@vram_remap = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_vram_remap = internal constant %struct.kernel_param { ptr @__param_str_vram_remap, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @vram_remap } }, section "__param", align 4
@__UNIQUE_ID_vram_remaptype487 = internal constant [33 x i8] c"uvesafb.parmtype=vram_remap:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_vram_remap488 = internal constant [68 x i8] c"uvesafb.parm=vram_remap:Set amount of video memory to be used [MiB]\00", section ".modinfo", align 1
@__param_str_vram_total = internal constant [19 x i8] c"uvesafb.vram_total\00", align 1
@vram_total = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_vram_total = internal constant %struct.kernel_param { ptr @__param_str_vram_total, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @vram_total } }, section "__param", align 4
@__UNIQUE_ID_vram_totaltype489 = internal constant [33 x i8] c"uvesafb.parmtype=vram_total:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_vram_total490 = internal constant [63 x i8] c"uvesafb.parm=vram_total:Set total amount of video memory [MiB]\00", section ".modinfo", align 1
@__param_str_maxclk = internal constant [15 x i8] c"uvesafb.maxclk\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@maxclk = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_maxclk = internal constant %struct.kernel_param { ptr @__param_str_maxclk, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @maxclk } }, section "__param", align 4
@__UNIQUE_ID_maxclktype491 = internal constant [31 x i8] c"uvesafb.parmtype=maxclk:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_maxclk492 = internal constant [66 x i8] c"uvesafb.parm=maxclk:Maximum pixelclock [MHz], overrides EDID data\00", section ".modinfo", align 1
@__param_str_maxhf = internal constant [14 x i8] c"uvesafb.maxhf\00", align 1
@maxhf = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_maxhf = internal constant %struct.kernel_param { ptr @__param_str_maxhf, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @maxhf } }, section "__param", align 4
@__UNIQUE_ID_maxhftype493 = internal constant [30 x i8] c"uvesafb.parmtype=maxhf:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_maxhf494 = internal constant [75 x i8] c"uvesafb.parm=maxhf:Maximum horizontal frequency [kHz], overrides EDID data\00", section ".modinfo", align 1
@__param_str_maxvf = internal constant [14 x i8] c"uvesafb.maxvf\00", align 1
@maxvf = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_maxvf = internal constant %struct.kernel_param { ptr @__param_str_maxvf, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @maxvf } }, section "__param", align 4
@__UNIQUE_ID_maxvftype495 = internal constant [30 x i8] c"uvesafb.parmtype=maxvf:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_maxvf496 = internal constant [72 x i8] c"uvesafb.parm=maxvf:Maximum vertical frequency [Hz], overrides EDID data\00", section ".modinfo", align 1
@__param_str_mode_option = internal constant [20 x i8] c"uvesafb.mode_option\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@mode_option = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_mode_option = internal constant %struct.kernel_param { ptr @__param_str_mode_option, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @mode_option } }, section "__param", align 4
@__UNIQUE_ID_mode_optiontype497 = internal constant [35 x i8] c"uvesafb.parmtype=mode_option:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mode_option498 = internal constant [91 x i8] c"uvesafb.parm=mode_option:Specify initial video mode as \22<xres>x<yres>[-<bpp>][@<refresh>]\22\00", section ".modinfo", align 1
@__param_str_vbemode = internal constant [16 x i8] c"uvesafb.vbemode\00", align 1
@vbemode = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_vbemode = internal constant %struct.kernel_param { ptr @__param_str_vbemode, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @vbemode } }, section "__param", align 4
@__UNIQUE_ID_vbemodetype499 = internal constant [32 x i8] c"uvesafb.parmtype=vbemode:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_vbemode500 = internal constant [73 x i8] c"uvesafb.parm=vbemode:VBE mode number to set, overrides the 'mode' option\00", section ".modinfo", align 1
@__param_str_v86d = internal constant [13 x i8] c"uvesafb.v86d\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_v86d = internal constant %struct.kparam_string { i32 4096, ptr @v86d_path }, align 4
@__param_v86d = internal constant %struct.kernel_param { ptr @__param_str_v86d, ptr null, ptr @param_ops_string, i16 432, i8 -1, i8 0, %union.anon.124 { ptr @__param_string_v86d } }, section "__param", align 4
@__UNIQUE_ID_v86dtype501 = internal constant [29 x i8] c"uvesafb.parmtype=v86d:string\00", section ".modinfo", align 1
@__UNIQUE_ID_v86d502 = internal constant [53 x i8] c"uvesafb.parm=v86d:Path to the v86d userspace helper.\00", section ".modinfo", align 1
@__UNIQUE_ID_file503 = internal constant [41 x i8] c"uvesafb.file=drivers/video/fbdev/uvesafb\00", section ".modinfo", align 1
@__UNIQUE_ID_license504 = internal constant [20 x i8] c"uvesafb.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author505 = internal constant [53 x i8] c"uvesafb.author=Michal Januszewski <spock@gentoo.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description506 = internal constant [77 x i8] c"uvesafb.description=Framebuffer driver for VBE2.0+ compliant graphics boards\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uvesafb\00", [24 x i8] zeroinitializer }, align 32
@uvesafb_cn_id = internal global { %struct.cb_id, [24 x i8] } { %struct.cb_id { i32 4, i32 1 }, [24 x i8] zeroinitializer }, align 32
@uvesafb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @uvesafb_probe, ptr @uvesafb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@uvesafb_device = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@driver_attr_v86d = internal global { %struct.driver_attribute, [36 x i8] } { %struct.driver_attribute { %struct.attribute { ptr @.str.136, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @v86d_show, ptr @v86d_store }, [36 x i8] zeroinitializer }, align 32
@uvesafb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014uvesafb: failed to register attributes\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uvesafb_init\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/video/fbdev/uvesafb.c\00", [34 x i8] zeroinitializer }, align 32
@uvesafb_init._entry_ptr = internal global ptr @uvesafb_init._entry, section ".printk_index", align 4
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"redraw\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ypan\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ywrap\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vgapal\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pmipal\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mtrr:\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nomtrr\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nocrtc\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"noedid\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"noblank\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vtotal:\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vremap:\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"maxhf:\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"maxvf:\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"maxclk:\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vbemode:\00", [23 x i8] zeroinitializer }, align 32
@uvesafb_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 1857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014uvesafb: unrecognized option %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uvesafb_setup\00", [18 x i8] zeroinitializer }, align 32
@uvesafb_setup._entry_ptr = internal global ptr @uvesafb_setup._entry, section ".printk_index", align 4
@uvesafb_setup._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 1862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014uvesafb: uvesafb: mtrr should be set to 0 or 3; %d is unsupported\00", [60 x i8] zeroinitializer }, align 32
@uvesafb_setup._entry_ptr.25 = internal global ptr @uvesafb_setup._entry.23, section ".printk_index", align 4
@uvfb_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @uvfb_lock, i64 52), ptr getelementptr (i8, ptr @uvfb_lock, i64 52) }, ptr @uvfb_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@uvfb_tasks = internal global { [16 x ptr], [32 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uvfb_lock.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uvfb_lock\00", [22 x i8] zeroinitializer }, align 32
@uvesafb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 1694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013uvesafb: vbe_init() failed with %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uvesafb_probe\00", [18 x i8] zeroinitializer }, align 32
@uvesafb_probe._entry_ptr = internal global ptr @uvesafb_probe._entry, section ".printk_index", align 4
@uvesafb_ops = internal global { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr @uvesafb_open, ptr @uvesafb_release, ptr null, ptr null, ptr @uvesafb_check_var, ptr @uvesafb_set_par, ptr @uvesafb_setcolreg, ptr @uvesafb_setcmap, ptr @uvesafb_blank, ptr @uvesafb_pan_display, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@uvesafb_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.3, i32 1716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013uvesafb: request region 0x3c0-0x3e0 failed\0A\00", [50 x i8] zeroinitializer }, align 32
@uvesafb_probe._entry_ptr.32 = internal global ptr @uvesafb_probe._entry.30, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@uvesafb_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.3, i32 1724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013uvesafb: cannot reserve video memory at 0x%lx\0A\00", [47 x i8] zeroinitializer }, align 32
@uvesafb_probe._entry_ptr.35 = internal global ptr @uvesafb_probe._entry.33, section ".printk_index", align 4
@uvesafb_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.3, i32 1734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013uvesafb: abort, cannot ioremap 0x%x bytes of video memory at 0x%lx\0A\00", [58 x i8] zeroinitializer }, align 32
@uvesafb_probe._entry_ptr.38 = internal global ptr @uvesafb_probe._entry.36, section ".printk_index", align 4
@uvesafb_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.29, ptr @.str.3, i32 1742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013uvesafb: failed to register framebuffer device\0A\00", [46 x i8] zeroinitializer }, align 32
@uvesafb_probe._entry_ptr.41 = internal global ptr @uvesafb_probe._entry.39, section ".printk_index", align 4
@uvesafb_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.29, ptr @.str.3, i32 1749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016uvesafb: framebuffer at 0x%lx, mapped to 0x%p, using %dk, total %dk\0A\00", [57 x i8] zeroinitializer }, align 32
@uvesafb_probe._entry_ptr.44 = internal global ptr @uvesafb_probe._entry.42, section ".printk_index", align 4
@uvesafb_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.29, ptr @.str.3, i32 1750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016uvesafb: fb%d: %s frame buffer device\0A\00", [55 x i8] zeroinitializer }, align 32
@uvesafb_probe._entry_ptr.47 = internal global ptr @uvesafb_probe._entry.45, section ".printk_index", align 4
@uvesafb_dev_attgrp = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @uvesafb_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvesafb_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.29, ptr @.str.3, i32 1754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014uvesafb: fb%d: failed to register attributes\0A\00", [48 x i8] zeroinitializer }, align 32
@uvesafb_probe._entry_ptr.50 = internal global ptr @uvesafb_probe._entry.48, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@uvesafb_vbe_getinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013uvesafb: Getting VBE info block failed (eax=0x%x, err=%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uvesafb_vbe_getinfo\00", [44 x i8] zeroinitializer }, align 32
@uvesafb_vbe_getinfo._entry_ptr = internal global ptr @uvesafb_vbe_getinfo._entry, section ".printk_index", align 4
@uvesafb_vbe_getinfo._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.3, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013uvesafb: Sorry, pre-VBE 2.0 cards are not supported\0A\00", [41 x i8] zeroinitializer }, align 32
@uvesafb_vbe_getinfo._entry_ptr.56 = internal global ptr @uvesafb_vbe_getinfo._entry.54, section ".printk_index", align 4
@uvesafb_vbe_getinfo._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.3, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013uvesafb: Missing mode list!\0A\00", [33 x i8] zeroinitializer }, align 32
@uvesafb_vbe_getinfo._entry_ptr.59 = internal global ptr @uvesafb_vbe_getinfo._entry.57, section ".printk_index", align 4
@uvesafb_vbe_getinfo._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.53, ptr @.str.3, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\016uvesafb: \00", [20 x i8] zeroinitializer }, align 32
@uvesafb_vbe_getinfo._entry_ptr.62 = internal global ptr @uvesafb_vbe_getinfo._entry.60, section ".printk_index", align 4
@uvesafb_vbe_getinfo._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.53, ptr @.str.3, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c%s, \00", [25 x i8] zeroinitializer }, align 32
@uvesafb_vbe_getinfo._entry_ptr.65 = internal global ptr @uvesafb_vbe_getinfo._entry.63, section ".printk_index", align 4
@uvesafb_vbe_getinfo._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.53, ptr @.str.3, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@uvesafb_vbe_getinfo._entry_ptr.67 = internal global ptr @uvesafb_vbe_getinfo._entry.66, section ".printk_index", align 4
@uvesafb_vbe_getinfo._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.53, ptr @.str.3, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@uvesafb_vbe_getinfo._entry_ptr.69 = internal global ptr @uvesafb_vbe_getinfo._entry.68, section ".printk_index", align 4
@uvesafb_vbe_getinfo._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.53, ptr @.str.3, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01cOEM: %s, \00", [20 x i8] zeroinitializer }, align 32
@uvesafb_vbe_getinfo._entry_ptr.72 = internal global ptr @uvesafb_vbe_getinfo._entry.70, section ".printk_index", align 4
@uvesafb_vbe_getinfo._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.53, ptr @.str.3, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\01cVBE v%d.%d\0A\00", [18 x i8] zeroinitializer }, align 32
@uvesafb_vbe_getinfo._entry_ptr.75 = internal global ptr @uvesafb_vbe_getinfo._entry.73, section ".printk_index", align 4
@uvesafb_exec.seq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@uvesafb_exec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.3, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014uvesafb: message too long (%d), can't execute task\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uvesafb_exec\00", [19 x i8] zeroinitializer }, align 32
@uvesafb_exec._entry_ptr = internal global ptr @uvesafb_exec._entry, section ".printk_index", align 4
@uvesafb_exec._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.3, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013uvesafb: failed to execute %s\0A\00", [63 x i8] zeroinitializer }, align 32
@uvesafb_exec._entry_ptr.80 = internal global ptr @uvesafb_exec._entry.78, section ".printk_index", align 4
@v86d_path = internal global { [4096 x i8], [1024 x i8] } { [4096 x i8] c"/sbin/v86d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [1024 x i8] zeroinitializer }, align 32
@uvesafb_exec._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.77, ptr @.str.3, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013uvesafb: make sure that the v86d helper is installed and executable\0A\00", [57 x i8] zeroinitializer }, align 32
@uvesafb_exec._entry_ptr.83 = internal global ptr @uvesafb_exec._entry.81, section ".printk_index", align 4
@v86d_started = internal global { i1, [31 x i8] } zeroinitializer, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HOME=/\00", [25 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PATH=/sbin:/bin\00", [16 x i8] zeroinitializer }, align 32
@__const.uvesafb_helper_start.envp = private unnamed_addr constant [3 x ptr] [ptr @.str.85, ptr @.str.86, ptr null], align 4
@__const.uvesafb_helper_start.argv = private unnamed_addr constant [2 x ptr] [ptr @v86d_path, ptr null], align 8
@uvesafb_vbe_getmodes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.3, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014uvesafb: Getting mode info block for mode 0x%x failed (eax=0x%x, err=%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"uvesafb_vbe_getmodes\00", [43 x i8] zeroinitializer }, align 32
@uvesafb_vbe_getmodes._entry_ptr = internal global ptr @uvesafb_vbe_getmodes._entry, section ".printk_index", align 4
@uvesafb_vbe_getmonspecs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.3, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016uvesafb: monitor limits: vf = %d Hz, hf = %d kHz, clk = %d MHz\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"uvesafb_vbe_getmonspecs\00", [40 x i8] zeroinitializer }, align 32
@uvesafb_vbe_getmonspecs._entry_ptr = internal global ptr @uvesafb_vbe_getmonspecs._entry, section ".printk_index", align 4
@uvesafb_vbe_getmonspecs._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.3, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016uvesafb: no monitor limits have been set, default refresh rate will be used\0A\00", [49 x i8] zeroinitializer }, align 32
@uvesafb_vbe_getmonspecs._entry_ptr.93 = internal global ptr @uvesafb_vbe_getmonspecs._entry.91, section ".printk_index", align 4
@vesa_modes = external dso_local constant [0 x %struct.fb_videomode], align 4
@uvesafb_vbe_getedid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016uvesafb: VBIOS/hardware supports both DDC1 and DDC2 transfers\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uvesafb_vbe_getedid\00", [44 x i8] zeroinitializer }, align 32
@uvesafb_vbe_getedid._entry_ptr = internal global ptr @uvesafb_vbe_getedid._entry, section ".printk_index", align 4
@uvesafb_vbe_getedid._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.3, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016uvesafb: VBIOS/hardware supports DDC2 transfers\0A\00", [45 x i8] zeroinitializer }, align 32
@uvesafb_vbe_getedid._entry_ptr.98 = internal global ptr @uvesafb_vbe_getedid._entry.96, section ".printk_index", align 4
@uvesafb_vbe_getedid._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.95, ptr @.str.3, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016uvesafb: VBIOS/hardware supports DDC1 transfers\0A\00", [45 x i8] zeroinitializer }, align 32
@uvesafb_vbe_getedid._entry_ptr.101 = internal global ptr @uvesafb_vbe_getedid._entry.99, section ".printk_index", align 4
@uvesafb_vbe_getedid._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.95, ptr @.str.3, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016uvesafb: VBIOS/hardware doesn't support DDC transfers\0A\00", [39 x i8] zeroinitializer }, align 32
@uvesafb_vbe_getedid._entry_ptr.104 = internal global ptr @uvesafb_vbe_getedid._entry.102, section ".printk_index", align 4
@uvesafb_vbe_getstatesize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.3, i32 775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014uvesafb: VBE state buffer size cannot be determined (eax=0x%x, err=%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"uvesafb_vbe_getstatesize\00", [39 x i8] zeroinitializer }, align 32
@uvesafb_vbe_getstatesize._entry_ptr = internal global ptr @uvesafb_vbe_getstatesize._entry, section ".printk_index", align 4
@uvesafb_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.3, i32 1175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014uvesafb: save hardware state failed, error code is %ld!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uvesafb_open\00", [19 x i8] zeroinitializer }, align 32
@uvesafb_open._entry_ptr = internal global ptr @uvesafb_open._entry, section ".printk_index", align 4
@uvesafb_vbe_state_save._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.3, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014uvesafb: VBE get state call failed (eax=0x%x, err=%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"uvesafb_vbe_state_save\00", [41 x i8] zeroinitializer }, align 32
@uvesafb_vbe_state_save._entry_ptr = internal global ptr @uvesafb_vbe_state_save._entry, section ".printk_index", align 4
@uvesafb_vbe_state_restore._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.3, i32 412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014uvesafb: VBE state restore call failed (eax=0x%x, err=%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"uvesafb_vbe_state_restore\00", [38 x i8] zeroinitializer }, align 32
@uvesafb_vbe_state_restore._entry_ptr = internal global ptr @uvesafb_vbe_state_restore._entry, section ".printk_index", align 4
@uvesafb_set_par._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.3, i32 1287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\014uvesafb: mode switch failed (eax=0x%x, err=%d) - trying again with default timings\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uvesafb_set_par\00", [16 x i8] zeroinitializer }, align 32
@uvesafb_set_par._entry_ptr = internal global ptr @uvesafb_set_par._entry, section ".printk_index", align 4
@uvesafb_set_par._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.3, i32 1295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013uvesafb: mode switch failed (eax=0x%x, err=%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@uvesafb_set_par._entry_ptr.117 = internal global ptr @uvesafb_set_par._entry.115, section ".printk_index", align 4
@dac_width = internal global { i1, [31 x i8] } zeroinitializer, align 32
@uvesafb_vbe_init_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.3, i32 852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016uvesafb: requested VBE mode 0x%x is unavailable\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"uvesafb_vbe_init_mode\00", [42 x i8] zeroinitializer }, align 32
@uvesafb_vbe_init_mode._entry_ptr = internal global ptr @uvesafb_vbe_init_mode._entry, section ".printk_index", align 4
@.str.120 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"640x480-16\00", [21 x i8] zeroinitializer }, align 32
@uvesafb_fix = internal constant { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] c"VESA VGA\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 2, i16 0, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@uvesafb_init_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.3, i32 1504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016uvesafb: scrolling: %s using protected mode interface, yres_virtual=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uvesafb_init_info\00", [46 x i8] zeroinitializer }, align 32
@uvesafb_init_info._entry_ptr = internal global ptr @uvesafb_init_info._entry, section ".printk_index", align 4
@uvesafb_init_info._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.3, i32 1506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016uvesafb: scrolling: redraw\0A\00", [34 x i8] zeroinitializer }, align 32
@uvesafb_init_info._entry_ptr.125 = internal global ptr @uvesafb_init_info._entry.123, section ".printk_index", align 4
@uvesafb_dev_attrs = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @dev_attr_vbe_version, ptr @dev_attr_vbe_modes, ptr @dev_attr_oem_vendor, ptr @dev_attr_oem_product_name, ptr @dev_attr_oem_product_rev, ptr @dev_attr_oem_string, ptr @dev_attr_nocrtc, ptr null], [32 x i8] zeroinitializer }, align 32
@dev_attr_vbe_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @uvesafb_show_vbe_ver, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_vbe_modes = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.128, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @uvesafb_show_vbe_modes, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_oem_vendor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.130, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @uvesafb_show_vendor, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_oem_product_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.132, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @uvesafb_show_product_name, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_oem_product_rev = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.133, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @uvesafb_show_product_rev, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_oem_string = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.134, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @uvesafb_show_oem_string, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_nocrtc = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @uvesafb_show_nocrtc, ptr @uvesafb_store_nocrtc }, [36 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vbe_version\00", [20 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%.4x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vbe_modes\00", [22 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%dx%d-%d, 0x%.4x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"oem_vendor\00", [21 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"oem_product_name\00", [47 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"oem_product_rev\00", [16 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"oem_string\00", [21 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"v86d\00", [27 x i8] zeroinitializer }, align 32
@switch.table.uvesafb_probe = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.100, ptr @.str.97, ptr @.str.94], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 24]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 4294967191, i64 4294967293]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.140 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.141 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"param_ops_scroll\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1960, i32 38 }
@___asan_gen_.145 = private unnamed_addr constant [5 x i8] c"ypan\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 49, i32 12 }
@___asan_gen_.148 = private unnamed_addr constant [11 x i8] c"pmi_setpal\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 50, i32 13 }
@___asan_gen_.151 = private unnamed_addr constant [5 x i8] c"mtrr\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 47, i32 12 }
@___asan_gen_.154 = private unnamed_addr constant [6 x i8] c"blank\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 48, i32 13 }
@___asan_gen_.157 = private unnamed_addr constant [7 x i8] c"nocrtc\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 51, i32 13 }
@___asan_gen_.160 = private unnamed_addr constant [7 x i8] c"noedid\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 52, i32 13 }
@___asan_gen_.163 = private unnamed_addr constant [11 x i8] c"vram_remap\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 53, i32 12 }
@___asan_gen_.166 = private unnamed_addr constant [11 x i8] c"vram_total\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 54, i32 12 }
@___asan_gen_.169 = private unnamed_addr constant [7 x i8] c"maxclk\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 55, i32 12 }
@___asan_gen_.172 = private unnamed_addr constant [6 x i8] c"maxhf\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 57, i32 12 }
@___asan_gen_.175 = private unnamed_addr constant [6 x i8] c"maxvf\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 56, i32 12 }
@___asan_gen_.178 = private unnamed_addr constant [12 x i8] c"mode_option\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 59, i32 14 }
@___asan_gen_.181 = private unnamed_addr constant [8 x i8] c"vbemode\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 58, i32 12 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1888, i32 21 }
@___asan_gen_.187 = private unnamed_addr constant [14 x i8] c"uvesafb_cn_id\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 33, i32 21 }
@___asan_gen_.190 = private unnamed_addr constant [15 x i8] c"uvesafb_driver\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1801, i32 31 }
@___asan_gen_.193 = private unnamed_addr constant [15 x i8] c"uvesafb_device\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1809, i32 32 }
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"driver_attr_v86d\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1915, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1819, i32 38 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1822, i32 25 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1824, i32 30 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1826, i32 30 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1828, i32 30 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1830, i32 30 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1832, i32 31 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1834, i32 30 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1836, i32 30 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1838, i32 30 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1840, i32 30 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1842, i32 31 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1844, i32 31 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1846, i32 31 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1848, i32 31 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1850, i32 31 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1852, i32 31 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1857, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1862, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant [10 x i8] c"uvfb_lock\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [11 x i8] c"uvfb_tasks\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 62, i32 30 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 63, i32 8 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1694, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant [12 x i8] c"uvesafb_ops\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1415, i32 22 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1716, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1723, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1733, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1742, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1747, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1750, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant [19 x i8] c"uvesafb_dev_attgrp\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1674, i32 37 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1754, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 430, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 436, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 441, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 445, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 453, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 457, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 461, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 465, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 468, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 146, i32 13 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 156, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 205, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant [10 x i8] c"v86d_path\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 37, i32 13 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 206, i32 4 }
@___asan_gen_.424 = private unnamed_addr constant [13 x i8] c"v86d_started\00", align 1
@___asan_gen_.425 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.429 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 87, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 115, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 116, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 510, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 715, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 720, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 635, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 637, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 639, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 641, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 774, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1174, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 380, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 411, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1286, i32 4 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1294, i32 4 }
@___asan_gen_.539 = private unnamed_addr constant [10 x i8] c"dac_width\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 852, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 875, i32 18 }
@___asan_gen_.552 = private unnamed_addr constant [12 x i8] c"uvesafb_fix\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 40, i32 39 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1502, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1506, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant [18 x i8] c"uvesafb_dev_attrs\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1663, i32 26 }
@___asan_gen_.573 = private unnamed_addr constant [21 x i8] c"dev_attr_vbe_version\00", align 1
@___asan_gen_.576 = private unnamed_addr constant [19 x i8] c"dev_attr_vbe_modes\00", align 1
@___asan_gen_.579 = private unnamed_addr constant [20 x i8] c"dev_attr_oem_vendor\00", align 1
@___asan_gen_.582 = private unnamed_addr constant [26 x i8] c"dev_attr_oem_product_name\00", align 1
@___asan_gen_.585 = private unnamed_addr constant [25 x i8] c"dev_attr_oem_product_rev\00", align 1
@___asan_gen_.588 = private unnamed_addr constant [20 x i8] c"dev_attr_oem_string\00", align 1
@___asan_gen_.591 = private unnamed_addr constant [16 x i8] c"dev_attr_nocrtc\00", align 1
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1660, i32 8 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1555, i32 8 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1552, i32 34 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1574, i32 8 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1566, i32 4 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1589, i32 8 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1583, i32 35 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1604, i32 8 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1619, i32 8 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1634, i32 8 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1642, i32 34 }
@___asan_gen_.624 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.625 = private constant [33 x i8] c"../drivers/video/fbdev/uvesafb.c\00", align 1
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1879, i32 8 }
@___asan_gen_.627 = private unnamed_addr constant [27 x i8] c"switch.table.uvesafb_probe\00", align 1
@llvm.compiler.used = appending global [254 x ptr] [ptr @__UNIQUE_ID_author505, ptr @__UNIQUE_ID_blank482, ptr @__UNIQUE_ID_blanktype481, ptr @__UNIQUE_ID_description506, ptr @__UNIQUE_ID_file503, ptr @__UNIQUE_ID_license504, ptr @__UNIQUE_ID_maxclk492, ptr @__UNIQUE_ID_maxclktype491, ptr @__UNIQUE_ID_maxhf494, ptr @__UNIQUE_ID_maxhftype493, ptr @__UNIQUE_ID_maxvf496, ptr @__UNIQUE_ID_maxvftype495, ptr @__UNIQUE_ID_mode_option498, ptr @__UNIQUE_ID_mode_optiontype497, ptr @__UNIQUE_ID_mtrr480, ptr @__UNIQUE_ID_mtrrtype479, ptr @__UNIQUE_ID_nocrtc484, ptr @__UNIQUE_ID_nocrtctype483, ptr @__UNIQUE_ID_noedid486, ptr @__UNIQUE_ID_noedidtype485, ptr @__UNIQUE_ID_pmipal478, ptr @__UNIQUE_ID_pmipaltype477, ptr @__UNIQUE_ID_scroll474, ptr @__UNIQUE_ID_scrolltype473, ptr @__UNIQUE_ID_v86d502, ptr @__UNIQUE_ID_v86dtype501, ptr @__UNIQUE_ID_vbemode500, ptr @__UNIQUE_ID_vbemodetype499, ptr @__UNIQUE_ID_vgapal476, ptr @__UNIQUE_ID_vgapaltype475, ptr @__UNIQUE_ID_vram_remap488, ptr @__UNIQUE_ID_vram_remaptype487, ptr @__UNIQUE_ID_vram_total490, ptr @__UNIQUE_ID_vram_totaltype489, ptr @__exitcall_uvesafb_exit, ptr @__initcall__kmod_uvesafb__472_1922_uvesafb_init6, ptr @__param_blank, ptr @__param_maxclk, ptr @__param_maxhf, ptr @__param_maxvf, ptr @__param_mode_option, ptr @__param_mtrr, ptr @__param_nocrtc, ptr @__param_noedid, ptr @__param_pmipal, ptr @__param_scroll, ptr @__param_v86d, ptr @__param_vbemode, ptr @__param_vgapal, ptr @__param_vram_remap, ptr @__param_vram_total, ptr @uvesafb_exec._entry, ptr @uvesafb_exec._entry.78, ptr @uvesafb_exec._entry.81, ptr @uvesafb_exec._entry_ptr, ptr @uvesafb_exec._entry_ptr.80, ptr @uvesafb_exec._entry_ptr.83, ptr @uvesafb_init._entry, ptr @uvesafb_init._entry_ptr, ptr @uvesafb_init_info._entry, ptr @uvesafb_init_info._entry.123, ptr @uvesafb_init_info._entry_ptr, ptr @uvesafb_init_info._entry_ptr.125, ptr @uvesafb_open._entry, ptr @uvesafb_open._entry_ptr, ptr @uvesafb_probe._entry, ptr @uvesafb_probe._entry.30, ptr @uvesafb_probe._entry.33, ptr @uvesafb_probe._entry.36, ptr @uvesafb_probe._entry.39, ptr @uvesafb_probe._entry.42, ptr @uvesafb_probe._entry.45, ptr @uvesafb_probe._entry.48, ptr @uvesafb_probe._entry_ptr, ptr @uvesafb_probe._entry_ptr.32, ptr @uvesafb_probe._entry_ptr.35, ptr @uvesafb_probe._entry_ptr.38, ptr @uvesafb_probe._entry_ptr.41, ptr @uvesafb_probe._entry_ptr.44, ptr @uvesafb_probe._entry_ptr.47, ptr @uvesafb_probe._entry_ptr.50, ptr @uvesafb_set_par._entry, ptr @uvesafb_set_par._entry.115, ptr @uvesafb_set_par._entry_ptr, ptr @uvesafb_set_par._entry_ptr.117, ptr @uvesafb_setup._entry, ptr @uvesafb_setup._entry.23, ptr @uvesafb_setup._entry_ptr, ptr @uvesafb_setup._entry_ptr.25, ptr @uvesafb_vbe_getedid._entry, ptr @uvesafb_vbe_getedid._entry.102, ptr @uvesafb_vbe_getedid._entry.96, ptr @uvesafb_vbe_getedid._entry.99, ptr @uvesafb_vbe_getedid._entry_ptr, ptr @uvesafb_vbe_getedid._entry_ptr.101, ptr @uvesafb_vbe_getedid._entry_ptr.104, ptr @uvesafb_vbe_getedid._entry_ptr.98, ptr @uvesafb_vbe_getinfo._entry, ptr @uvesafb_vbe_getinfo._entry.54, ptr @uvesafb_vbe_getinfo._entry.57, ptr @uvesafb_vbe_getinfo._entry.60, ptr @uvesafb_vbe_getinfo._entry.63, ptr @uvesafb_vbe_getinfo._entry.66, ptr @uvesafb_vbe_getinfo._entry.68, ptr @uvesafb_vbe_getinfo._entry.70, ptr @uvesafb_vbe_getinfo._entry.73, ptr @uvesafb_vbe_getinfo._entry_ptr, ptr @uvesafb_vbe_getinfo._entry_ptr.56, ptr @uvesafb_vbe_getinfo._entry_ptr.59, ptr @uvesafb_vbe_getinfo._entry_ptr.62, ptr @uvesafb_vbe_getinfo._entry_ptr.65, ptr @uvesafb_vbe_getinfo._entry_ptr.67, ptr @uvesafb_vbe_getinfo._entry_ptr.69, ptr @uvesafb_vbe_getinfo._entry_ptr.72, ptr @uvesafb_vbe_getinfo._entry_ptr.75, ptr @uvesafb_vbe_getmodes._entry, ptr @uvesafb_vbe_getmodes._entry_ptr, ptr @uvesafb_vbe_getmonspecs._entry, ptr @uvesafb_vbe_getmonspecs._entry.91, ptr @uvesafb_vbe_getmonspecs._entry_ptr, ptr @uvesafb_vbe_getmonspecs._entry_ptr.93, ptr @uvesafb_vbe_getstatesize._entry, ptr @uvesafb_vbe_getstatesize._entry_ptr, ptr @uvesafb_vbe_init_mode._entry, ptr @uvesafb_vbe_init_mode._entry_ptr, ptr @uvesafb_vbe_state_restore._entry, ptr @uvesafb_vbe_state_restore._entry_ptr, ptr @uvesafb_vbe_state_save._entry, ptr @uvesafb_vbe_state_save._entry_ptr, ptr @param_ops_scroll, ptr @ypan, ptr @pmi_setpal, ptr @mtrr, ptr @blank, ptr @nocrtc, ptr @noedid, ptr @vram_remap, ptr @vram_total, ptr @maxclk, ptr @maxhf, ptr @maxvf, ptr @mode_option, ptr @vbemode, ptr @.str, ptr @uvesafb_cn_id, ptr @uvesafb_driver, ptr @uvesafb_device, ptr @driver_attr_v86d, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @uvfb_lock, ptr @uvfb_tasks, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @uvesafb_ops, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @uvesafb_dev_attgrp, ptr @.str.49, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.71, ptr @.str.74, ptr @uvesafb_exec.seq, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @v86d_path, ptr @.str.82, ptr @v86d_started, ptr @init_completion.__key, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @dac_width, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @uvesafb_fix, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @uvesafb_dev_attrs, ptr @dev_attr_vbe_version, ptr @dev_attr_vbe_modes, ptr @dev_attr_oem_vendor, ptr @dev_attr_oem_product_name, ptr @dev_attr_oem_product_rev, ptr @dev_attr_oem_string, ptr @dev_attr_nocrtc, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @switch.table.uvesafb_probe], section "llvm.metadata"
@0 = internal global [164 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_scroll to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ypan to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmi_setpal to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtrr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blank to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nocrtc to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noedid to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vram_remap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vram_total to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxclk to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxhf to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxvf to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_option to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbemode to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_cn_id to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_device to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_attr_v86d to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_setup._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvfb_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvfb_tasks to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_dev_attgrp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_vbe_getinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_vbe_getinfo._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_vbe_getinfo._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_vbe_getinfo._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_vbe_getinfo._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_vbe_getinfo._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_vbe_getinfo._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_vbe_getinfo._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_vbe_getinfo._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_exec.seq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_exec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_exec._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v86d_path to i32), i32 4096, i32 5120, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_exec._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v86d_started to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_vbe_getmodes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_vbe_getmonspecs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_vbe_getmonspecs._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_vbe_getedid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_vbe_getedid._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_vbe_getedid._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_vbe_getedid._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_vbe_getstatesize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_vbe_state_save._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_vbe_state_restore._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_set_par._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_set_par._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_width to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_vbe_init_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_init_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_init_info._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvesafb_dev_attrs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vbe_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vbe_modes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_oem_vendor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_oem_product_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_oem_product_rev to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_oem_string to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_nocrtc to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.uvesafb_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvesafb_init() #0 align 64 {
entry:
  %options.addr.i = alloca ptr, align 4
  %option = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #16
  %0 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %option, align 4
  %call = call i32 @fb_get_options(ptr noundef nonnull @.str, ptr noundef nonnull %option) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %option, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options.addr.i)
  %3 = ptrtoint ptr %options.addr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %options.addr.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.uvesafb_setup.exit_crit_edge, label %lor.lhs.false.i

if.end.uvesafb_setup.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %uvesafb_setup.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.uvesafb_setup.exit_crit_edge, label %while.cond.preheader.i

lor.lhs.false.i.uvesafb_setup.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %uvesafb_setup.exit

while.cond.preheader.i:                           ; preds = %lor.lhs.false.i
  %call1.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.4) #16
  %cmp.not2.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not2.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %call3.i = phi ptr [ %call.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ %call1.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %6 = ptrtoint ptr %call3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %call3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not.i = icmp eq i8 %7, 0
  br i1 %tobool2.not.i, label %while.body.i.while.cond.backedge.i_crit_edge, label %if.end4.i

while.body.i.while.cond.backedge.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge.i

if.end4.i:                                        ; preds = %while.body.i
  %call5.i = call i32 @strcmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(7) @.str.5) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  store i32 0, ptr @ypan, align 4
  br label %while.cond.backedge.i

if.else.i:                                        ; preds = %if.end4.i
  %call8.i = call i32 @strcmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(5) @.str.6) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.else11.i

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  store i32 1, ptr @ypan, align 4
  br label %while.cond.backedge.i

if.else11.i:                                      ; preds = %if.else.i
  %call12.i = call i32 @strcmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(6) @.str.7) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %if.else15.i

if.then14.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #18
  store i32 2, ptr @ypan, align 4
  br label %while.cond.backedge.i

if.else15.i:                                      ; preds = %if.else11.i
  %call16.i = call i32 @strcmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(7) @.str.8) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %if.else19.i

if.then18.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #18
  store i8 0, ptr @pmi_setpal, align 1
  br label %while.cond.backedge.i

if.else19.i:                                      ; preds = %if.else15.i
  %call20.i = call i32 @strcmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(7) @.str.9) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.else23.i

if.then22.i:                                      ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #18
  store i8 1, ptr @pmi_setpal, align 1
  br label %while.cond.backedge.i

if.else23.i:                                      ; preds = %if.else19.i
  %call24.i = call i32 @strncmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(6) @.str.10, i32 noundef 5) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %if.else28.i

if.then26.i:                                      ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 5
  %call27.i = call i32 @simple_strtoul(ptr noundef %add.ptr.i, ptr noundef null, i32 noundef 0) #16
  store i32 %call27.i, ptr @mtrr, align 4
  br label %while.cond.backedge.i

if.else28.i:                                      ; preds = %if.else23.i
  %call29.i = call i32 @strcmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(7) @.str.11) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %if.else32.i

if.then31.i:                                      ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #18
  store i32 0, ptr @mtrr, align 4
  br label %while.cond.backedge.i

if.else32.i:                                      ; preds = %if.else28.i
  %call33.i = call i32 @strcmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(7) @.str.12) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.then35.i, label %if.else36.i

if.then35.i:                                      ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #18
  store i8 1, ptr @nocrtc, align 1
  br label %while.cond.backedge.i

if.else36.i:                                      ; preds = %if.else32.i
  %call37.i = call i32 @strcmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(7) @.str.13) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.then39.i, label %if.else40.i

if.then39.i:                                      ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #18
  store i8 1, ptr @noedid, align 1
  br label %while.cond.backedge.i

if.else40.i:                                      ; preds = %if.else36.i
  %call41.i = call i32 @strcmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(8) @.str.14) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.then43.i, label %if.else44.i

if.then43.i:                                      ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #18
  store i8 0, ptr @blank, align 1
  br label %while.cond.backedge.i

if.else44.i:                                      ; preds = %if.else40.i
  %call45.i = call i32 @strncmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(8) @.str.15, i32 noundef 7) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.then47.i, label %if.else50.i

if.then47.i:                                      ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr48.i = getelementptr i8, ptr %call3.i, i32 7
  %call49.i = call i32 @simple_strtoul(ptr noundef %add.ptr48.i, ptr noundef null, i32 noundef 0) #16
  store i32 %call49.i, ptr @vram_total, align 4
  br label %while.cond.backedge.i

if.else50.i:                                      ; preds = %if.else44.i
  %call51.i = call i32 @strncmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(8) @.str.16, i32 noundef 7) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %if.then53.i, label %if.else56.i

if.then53.i:                                      ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr54.i = getelementptr i8, ptr %call3.i, i32 7
  %call55.i = call i32 @simple_strtoul(ptr noundef %add.ptr54.i, ptr noundef null, i32 noundef 0) #16
  store i32 %call55.i, ptr @vram_remap, align 4
  br label %while.cond.backedge.i

if.else56.i:                                      ; preds = %if.else50.i
  %call57.i = call i32 @strncmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(7) @.str.17, i32 noundef 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.then59.i, label %if.else62.i

if.then59.i:                                      ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr60.i = getelementptr i8, ptr %call3.i, i32 6
  %call61.i = call i32 @simple_strtoul(ptr noundef %add.ptr60.i, ptr noundef null, i32 noundef 0) #16
  %conv.i = trunc i32 %call61.i to i16
  store i16 %conv.i, ptr @maxhf, align 2
  br label %while.cond.backedge.i

if.else62.i:                                      ; preds = %if.else56.i
  %call63.i = call i32 @strncmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(7) @.str.18, i32 noundef 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %if.then65.i, label %if.else69.i

if.then65.i:                                      ; preds = %if.else62.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr66.i = getelementptr i8, ptr %call3.i, i32 6
  %call67.i = call i32 @simple_strtoul(ptr noundef %add.ptr66.i, ptr noundef null, i32 noundef 0) #16
  %conv68.i = trunc i32 %call67.i to i16
  store i16 %conv68.i, ptr @maxvf, align 2
  br label %while.cond.backedge.i

if.else69.i:                                      ; preds = %if.else62.i
  %call70.i = call i32 @strncmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(8) @.str.19, i32 noundef 7) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool71.not.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.not.i, label %if.then72.i, label %if.else76.i

if.then72.i:                                      ; preds = %if.else69.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr73.i = getelementptr i8, ptr %call3.i, i32 7
  %call74.i = call i32 @simple_strtoul(ptr noundef %add.ptr73.i, ptr noundef null, i32 noundef 0) #16
  %conv75.i = trunc i32 %call74.i to i16
  store i16 %conv75.i, ptr @maxclk, align 2
  br label %while.cond.backedge.i

if.else76.i:                                      ; preds = %if.else69.i
  %call77.i = call i32 @strncmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(9) @.str.20, i32 noundef 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool78.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool78.not.i, label %if.then79.i, label %if.else83.i

if.then79.i:                                      ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr80.i = getelementptr i8, ptr %call3.i, i32 8
  %call81.i = call i32 @simple_strtoul(ptr noundef %add.ptr80.i, ptr noundef null, i32 noundef 0) #16
  %conv82.i = trunc i32 %call81.i to i16
  store i16 %conv82.i, ptr @vbemode, align 2
  br label %while.cond.backedge.i

if.else83.i:                                      ; preds = %if.else76.i
  %8 = add i8 %7, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %8)
  %9 = icmp ult i8 %8, 10
  br i1 %9, label %if.then91.i, label %do.end.i

if.then91.i:                                      ; preds = %if.else83.i
  call void @__sanitizer_cov_trace_pc() #18
  store ptr %call3.i, ptr @mode_option, align 4
  br label %while.cond.backedge.i

do.end.i:                                         ; preds = %if.else83.i
  call void @__sanitizer_cov_trace_pc() #18
  %call93.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull %call3.i) #20
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %do.end.i, %if.then91.i, %if.then79.i, %if.then72.i, %if.then65.i, %if.then59.i, %if.then53.i, %if.then47.i, %if.then43.i, %if.then39.i, %if.then35.i, %if.then31.i, %if.then26.i, %if.then22.i, %if.then18.i, %if.then14.i, %if.then10.i, %if.then7.i, %while.body.i.while.cond.backedge.i_crit_edge
  %call.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.4) #16
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %while.cond.backedge.i.while.end.i_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.cond.backedge.i.while.end.i_crit_edge:      ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.backedge.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %10 = load i32, ptr @mtrr, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %do.end119.i [
    i32 3, label %while.end.i.uvesafb_setup.exit_crit_edge
    i32 0, label %while.end.i.uvesafb_setup.exit_crit_edge33
  ]

while.end.i.uvesafb_setup.exit_crit_edge33:       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %uvesafb_setup.exit

while.end.i.uvesafb_setup.exit_crit_edge:         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %uvesafb_setup.exit

do.end119.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %call121.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %10) #20
  br label %uvesafb_setup.exit

uvesafb_setup.exit:                               ; preds = %do.end119.i, %while.end.i.uvesafb_setup.exit_crit_edge, %while.end.i.uvesafb_setup.exit_crit_edge33, %lor.lhs.false.i.uvesafb_setup.exit_crit_edge, %if.end.uvesafb_setup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.addr.i)
  %call2 = call i32 @cn_add_callback(ptr noundef nonnull @uvesafb_cn_id, ptr noundef nonnull @.str, ptr noundef nonnull @uvesafb_cn_callback) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %uvesafb_setup.exit.cleanup_crit_edge

uvesafb_setup.exit.cleanup_crit_edge:             ; preds = %uvesafb_setup.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %uvesafb_setup.exit
  %call6 = call i32 @__platform_driver_register(ptr noundef nonnull @uvesafb_driver, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  %call9 = call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef 0) #16
  store ptr %call9, ptr @uvesafb_device, align 4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then8.if.then15_crit_edge, label %if.end13

if.then8.if.then15_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15

if.end13:                                         ; preds = %if.then8
  %call12 = call i32 @platform_device_add(ptr noundef nonnull %call9) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool14.not = icmp eq i32 %call12, 0
  br i1 %tobool14.not, label %if.end16, label %if.end13.if.then15_crit_edge

if.end13.if.then15_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15

if.then15:                                        ; preds = %if.end13.if.then15_crit_edge, %if.then8.if.then15_crit_edge
  %err.032 = phi i32 [ %call12, %if.end13.if.then15_crit_edge ], [ -12, %if.then8.if.then15_crit_edge ]
  %12 = load ptr, ptr @uvesafb_device, align 4
  call void @platform_device_put(ptr noundef %12) #16
  call void @platform_driver_unregister(ptr noundef nonnull @uvesafb_driver) #16
  call void @cn_del_callback(ptr noundef nonnull @uvesafb_cn_id) #16
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %call17 = call i32 @driver_create_file(ptr noundef getelementptr inbounds (%struct.platform_driver, ptr @uvesafb_driver, i32 0, i32 5), ptr noundef nonnull @driver_attr_v86d) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %do.end

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end16.cleanup_crit_edge, %if.then15, %if.end5.cleanup_crit_edge, %uvesafb_setup.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.032, %if.then15 ], [ -19, %entry.cleanup_crit_edge ], [ %call2, %uvesafb_setup.exit.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvesafb_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @v86d_started, align 1
  br i1 %.b, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #21
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.if.end4_crit_edge, label %if.then.i

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then.i:                                        ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i10.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 56) #21
  %done.i = getelementptr inbounds %struct.uvesafb_ktask, ptr %call7.i.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i10.i, ptr %done.i, align 8
  %tobool3.not.i = icmp eq ptr %call7.i.i10.i, null
  br i1 %tobool3.not.i, label %if.then.i.if.end4.sink.split_crit_edge, label %uvesafb_free.exit

if.then.i.if.end4.sink.split_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.sink.split

uvesafb_free.exit:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 16, ptr %call7.i.i.i, align 8
  %call3 = tail call fastcc i32 @uvesafb_exec(ptr noundef nonnull %call7.i.i.i)
  %4 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %done.i, align 8
  tail call void @kfree(ptr noundef %5) #16
  br label %if.end4.sink.split

if.end4.sink.split:                               ; preds = %uvesafb_free.exit, %if.then.i.if.end4.sink.split_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #16
  br label %if.end4

if.end4:                                          ; preds = %if.end4.sink.split, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  tail call void @cn_del_callback(ptr noundef nonnull @uvesafb_cn_id) #16
  tail call void @driver_remove_file(ptr noundef getelementptr inbounds (%struct.platform_driver, ptr @uvesafb_driver, i32 0, i32 5), ptr noundef nonnull @driver_attr_v86d) #16
  %6 = load ptr, ptr @uvesafb_device, align 4
  tail call void @platform_device_unregister(ptr noundef %6) #16
  tail call void @platform_driver_unregister(ptr noundef nonnull @uvesafb_driver) #16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cn_add_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvesafb_cn_callback(ptr nocapture noundef readonly %msg, ptr nocapture noundef readnone %nsp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 21) #16
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %seq = getelementptr inbounds %struct.cn_msg, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %1)
  %cmp = icmp ugt i32 %1, 15
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end2:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @uvfb_lock, i32 noundef 0) #16
  %2 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seq, align 4
  %arrayidx = getelementptr [16 x ptr], ptr @uvfb_tasks, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end2.if.then6_crit_edge, label %lor.lhs.false

if.end2.if.then6_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end2
  %ack = getelementptr inbounds %struct.cn_msg, ptr %msg, i32 0, i32 2
  %6 = ptrtoint ptr %ack to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ack, align 4
  %ack4 = getelementptr inbounds %struct.uvesafb_ktask, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %ack4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ack4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp5.not = icmp eq i32 %7, %9
  br i1 %cmp5.not, label %if.end7, label %lor.lhs.false.if.then6_crit_edge

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end2.if.then6_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @uvfb_lock) #16
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.cn_msg, ptr %msg, i32 0, i32 5
  %buf_len = getelementptr inbounds %struct.uvesafb_task, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_len, align 4
  %buf_len8 = getelementptr inbounds %struct.cn_msg, ptr %msg, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %buf_len8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_len8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp9 = icmp slt i32 %11, %13
  br i1 %cmp9, label %if.end7.if.then14_crit_edge, label %lor.lhs.false10

if.end7.if.then14_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then14

lor.lhs.false10:                                  ; preds = %if.end7
  %len = getelementptr inbounds %struct.cn_msg, ptr %msg, i32 0, i32 3
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len, align 4
  %conv = zext i16 %15 to i32
  %sub = add nsw i32 %conv, -60
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %sub)
  %cmp12 = icmp ugt i32 %13, %sub
  br i1 %cmp12, label %lor.lhs.false10.if.then14_crit_edge, label %if.end15

lor.lhs.false10.if.then14_crit_edge:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false10.if.then14_crit_edge, %if.end7.if.then14_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @uvfb_lock) #16
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false10
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @uvfb_lock) #16
  %17 = call ptr @memcpy(ptr %5, ptr %data, i32 60)
  %18 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool21.not = icmp eq i32 %19, 0
  br i1 %tobool21.not, label %if.end15.if.end27_crit_edge, label %land.lhs.true

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end15
  %buf = getelementptr inbounds %struct.uvesafb_ktask, ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf, align 4
  %tobool22.not = icmp eq ptr %21, null
  br i1 %tobool22.not, label %land.lhs.true.if.end27_crit_edge, label %if.then23

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr %struct.cn_msg, ptr %msg, i32 4
  %22 = call ptr @memcpy(ptr %21, ptr %add.ptr, i32 %19)
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %land.lhs.true.if.end27_crit_edge, %if.end15.if.end27_crit_edge
  %done = getelementptr inbounds %struct.uvesafb_ktask, ptr %5, i32 0, i32 2
  %23 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %done, align 4
  tail call void @complete(ptr noundef %24) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then14, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cn_del_callback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvesafb_probe(ptr noundef %dev) #0 align 64 {
entry:
  %var.i.i = alloca %struct.fb_var_screeninfo, align 4
  %vmode.i.i = alloca %struct.fb_videomode, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %call = tail call ptr @framebuffer_alloc(i32 noundef 2156, ptr noundef %dev1) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %par2 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 30
  %0 = ptrtoint ptr %par2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 72) #21
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.do.end_crit_edge, label %if.then.i.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then.i.i:                                      ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i10.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 56) #21
  %done.i.i = getelementptr inbounds %struct.uvesafb_ktask, ptr %call7.i.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i10.i.i, ptr %done.i.i, align 8
  %tobool3.not.i.i = icmp eq ptr %call7.i.i10.i.i, null
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %if.end.i

if.then4.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #16
  br label %do.end

if.end.i:                                         ; preds = %if.then.i.i
  %eax.i.i = getelementptr inbounds %struct.uvesafb_task, ptr %call7.i.i.i.i, i32 0, i32 2, i32 6
  %5 = ptrtoint ptr %eax.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 20224, ptr %eax.i.i, align 8
  %6 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %call7.i.i.i.i, align 8
  %buf_len.i.i = getelementptr inbounds %struct.uvesafb_task, ptr %call7.i.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %buf_len.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1024, ptr %buf_len.i.i, align 4
  %buf.i.i = getelementptr inbounds %struct.uvesafb_ktask, ptr %call7.i.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %buf.i.i, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1447183666, ptr %1, align 4
  %call.i.i = tail call fastcc i32 @uvesafb_exec(ptr noundef nonnull %call7.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i27.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i27.i, label %lor.lhs.false.i.i, label %if.end.i.do.end.i.i_crit_edge

if.end.i.do.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %10 = ptrtoint ptr %eax.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eax.i.i, align 8
  %and.i.i = and i32 %11, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 79
  br i1 %cmp.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.do.end.i.i_crit_edge

lor.lhs.false.i.i.do.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i.do.end.i.i_crit_edge, %if.end.i.do.end.i.i_crit_edge
  %12 = ptrtoint ptr %eax.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %eax.i.i, align 8
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %13, i32 noundef %call.i.i) #20
  br label %uvesafb_vbe_init.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %vbe_version.i.i = getelementptr inbounds %struct.vbe_ib, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %vbe_version.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vbe_version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %15)
  %cmp12.i.i = icmp ult i16 %15, 512
  br i1 %cmp12.i.i, label %do.end17.i.i, label %if.end20.i.i

do.end17.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call19.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #20
  br label %uvesafb_vbe_init.exit

if.end20.i.i:                                     ; preds = %if.end.i.i
  %mode_list_ptr.i.i = getelementptr inbounds %struct.vbe_ib, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %mode_list_ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %mode_list_ptr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool22.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool22.not.i.i, label %do.end26.i.i, label %do.end32.i.i

do.end26.i.i:                                     ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call28.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #20
  br label %uvesafb_vbe_init.exit

do.end32.i.i:                                     ; preds = %if.end20.i.i
  %call34.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #20
  %oem_vendor_name_ptr.i.i = getelementptr inbounds %struct.vbe_ib, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %oem_vendor_name_ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %oem_vendor_name_ptr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool36.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool36.not.i.i, label %do.end32.i.i.if.end46.i.i_crit_edge, label %do.end40.i.i

do.end32.i.i.if.end46.i.i_crit_edge:              ; preds = %do.end32.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46.i.i

do.end40.i.i:                                     ; preds = %do.end32.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %19
  %call45.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %add.ptr.i.i) #20
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %do.end40.i.i, %do.end32.i.i.if.end46.i.i_crit_edge
  %oem_product_name_ptr.i.i = getelementptr inbounds %struct.vbe_ib, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %oem_product_name_ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %oem_product_name_ptr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool48.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool48.not.i.i, label %if.end46.i.i.if.end59.i.i_crit_edge, label %do.end52.i.i

if.end46.i.i.if.end59.i.i_crit_edge:              ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59.i.i

do.end52.i.i:                                     ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buf.i.i, align 4
  %add.ptr57.i.i = getelementptr i8, ptr %25, i32 %23
  %call58.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %add.ptr57.i.i) #20
  br label %if.end59.i.i

if.end59.i.i:                                     ; preds = %do.end52.i.i, %if.end46.i.i.if.end59.i.i_crit_edge
  %oem_product_rev_ptr.i.i = getelementptr inbounds %struct.vbe_ib, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %oem_product_rev_ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %oem_product_rev_ptr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool61.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool61.not.i.i, label %if.end59.i.i.if.end72.i.i_crit_edge, label %do.end65.i.i

if.end59.i.i.if.end72.i.i_crit_edge:              ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end72.i.i

do.end65.i.i:                                     ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buf.i.i, align 4
  %add.ptr70.i.i = getelementptr i8, ptr %29, i32 %27
  %call71.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %add.ptr70.i.i) #20
  br label %if.end72.i.i

if.end72.i.i:                                     ; preds = %do.end65.i.i, %if.end59.i.i.if.end72.i.i_crit_edge
  %oem_string_ptr.i.i = getelementptr inbounds %struct.vbe_ib, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %oem_string_ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %oem_string_ptr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool74.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool74.not.i.i, label %if.end72.i.i.if.end5.i_crit_edge, label %do.end78.i.i

if.end72.i.i.if.end5.i_crit_edge:                 ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5.i

do.end78.i.i:                                     ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %32 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buf.i.i, align 4
  %add.ptr83.i.i = getelementptr i8, ptr %33, i32 %31
  %call84.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %add.ptr83.i.i) #20
  br label %if.end5.i

if.end5.i:                                        ; preds = %do.end78.i.i, %if.end72.i.i.if.end5.i_crit_edge
  %34 = ptrtoint ptr %vbe_version.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vbe_version.i.i, align 4
  %conv92.i.i = zext i16 %35 to i32
  %36 = lshr i32 %conv92.i.i, 8
  %and97.i.i = and i32 %conv92.i.i, 255
  %call98.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %36, i32 noundef %and97.i.i) #20
  %vbe_modes_cnt.i.i = getelementptr inbounds %struct.uvesafb_par, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %vbe_modes_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %vbe_modes_cnt.i.i, align 4
  %38 = ptrtoint ptr %mode_list_ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %mode_list_ptr.i.i, align 2
  %add.ptr.i29.i = getelementptr i8, ptr %1, i32 %39
  %40 = ptrtoint ptr %add.ptr.i29.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %add.ptr.i29.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %41)
  %cmp.not133.i.i = icmp eq i16 %41, -1
  br i1 %cmp.not133.i.i, label %if.end5.i.while.end.i.i_crit_edge, label %if.end5.i.while.body.i.i_crit_edge

if.end5.i.while.body.i.i_crit_edge:               ; preds = %if.end5.i
  br label %while.body.i.i

if.end5.i.while.end.i.i_crit_edge:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end5.i.while.body.i.i_crit_edge
  %mode.0134.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.ptr.i29.i, %if.end5.i.while.body.i.i_crit_edge ]
  %42 = ptrtoint ptr %vbe_modes_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vbe_modes_cnt.i.i, align 4
  %inc.i.i = add i32 %43, 1
  store i32 %inc.i.i, ptr %vbe_modes_cnt.i.i, align 4
  %incdec.ptr.i.i = getelementptr i16, ptr %mode.0134.i.i, i32 1
  %44 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %incdec.ptr.i.i, align 2
  %cmp.not.i30.i = icmp eq i16 %45, -1
  br i1 %cmp.not.i30.i, label %while.body.i.i.while.end.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %if.end5.i.while.end.i.i_crit_edge
  %46 = ptrtoint ptr %vbe_modes_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vbe_modes_cnt.i.i, align 4
  %48 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %47, i32 69) #16
  %49 = extractvalue { i32, i1 } %48, 1
  br i1 %49, label %kcalloc.exit.thread.i.i, label %if.end7.i.i.i.i, !prof !416

kcalloc.exit.thread.i.i:                          ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %vbe_modes126.i.i = getelementptr inbounds %struct.uvesafb_par, ptr %1, i32 0, i32 1
  %50 = ptrtoint ptr %vbe_modes126.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %vbe_modes126.i.i, align 4
  br label %uvesafb_vbe_init.exit

if.end7.i.i.i.i:                                  ; preds = %while.end.i.i
  %51 = extractvalue { i32, i1 } %48, 0
  %call8.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %51, i32 noundef 3520) #22
  %vbe_modes.i.i = getelementptr inbounds %struct.uvesafb_par, ptr %1, i32 0, i32 1
  %52 = ptrtoint ptr %vbe_modes.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call8.i.i.i.i, ptr %vbe_modes.i.i, align 4
  %tobool.not.i31.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool.not.i31.i, label %if.end7.i.i.i.i.uvesafb_vbe_init.exit_crit_edge, label %if.end.i32.i

if.end7.i.i.i.i.uvesafb_vbe_init.exit_crit_edge:  ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %uvesafb_vbe_init.exit

if.end.i32.i:                                     ; preds = %if.end7.i.i.i.i
  %53 = ptrtoint ptr %mode_list_ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %mode_list_ptr.i.i, align 2
  %add.ptr9.i.i = getelementptr i8, ptr %1, i32 %54
  %55 = ptrtoint ptr %add.ptr9.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %add.ptr9.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %56)
  %cmp12.not135.i.i = icmp eq i16 %56, -1
  br i1 %cmp12.not135.i.i, label %if.end.i32.i.while.end75.i.i_crit_edge, label %while.body14.lr.ph.i.i

if.end.i32.i.while.end75.i.i_crit_edge:           ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end75.i.i

while.body14.lr.ph.i.i:                           ; preds = %if.end.i32.i
  %ecx.i.i = getelementptr inbounds %struct.uvesafb_task, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  br label %while.body14.i.i

while.body14.i.i:                                 ; preds = %cleanup.i.i.while.body14.i.i_crit_edge, %while.body14.lr.ph.i.i
  %mode.1137.i.i = phi ptr [ %add.ptr9.i.i, %while.body14.lr.ph.i.i ], [ %mode.2.i.i, %cleanup.i.i.while.body14.i.i_crit_edge ]
  %off.0136.i.i = phi i32 [ 0, %while.body14.lr.ph.i.i ], [ %off.2.i.i, %cleanup.i.i.while.body14.i.i_crit_edge ]
  %57 = ptrtoint ptr %done.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %done.i.i, align 8
  %59 = call ptr @memset(ptr %call7.i.i.i.i, i32 0, i32 72)
  store ptr %58, ptr %done.i.i, align 8
  %60 = ptrtoint ptr %eax.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 20225, ptr %eax.i.i, align 8
  %61 = ptrtoint ptr %mode.1137.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %mode.1137.i.i, align 2
  %conv15.i.i = zext i16 %62 to i32
  %63 = ptrtoint ptr %ecx.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv15.i.i, ptr %ecx.i.i, align 4
  %64 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 10, ptr %call7.i.i.i.i, align 8
  %65 = ptrtoint ptr %buf_len.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 69, ptr %buf_len.i.i, align 4
  %66 = ptrtoint ptr %vbe_modes.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vbe_modes.i.i, align 4
  %add.ptr21.i.i = getelementptr %struct.vbe_mode_ib, ptr %67, i32 %off.0136.i.i
  %68 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr21.i.i, ptr %buf.i.i, align 4
  %call22.i.i = tail call fastcc i32 @uvesafb_exec(ptr noundef %call7.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %lor.lhs.false.i37.i, label %while.body14.i.i.do.end.i39.i_crit_edge

while.body14.i.i.do.end.i39.i_crit_edge:          ; preds = %while.body14.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i39.i

lor.lhs.false.i37.i:                              ; preds = %while.body14.i.i
  %69 = ptrtoint ptr %eax.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %eax.i.i, align 8
  %and.i36.i = and i32 %70, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %and.i36.i)
  %cmp27.not.i.i = icmp eq i32 %and.i36.i, 79
  br i1 %cmp27.not.i.i, label %if.end37.i.i, label %lor.lhs.false.i37.i.do.end.i39.i_crit_edge

lor.lhs.false.i37.i.do.end.i39.i_crit_edge:       ; preds = %lor.lhs.false.i37.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i39.i

do.end.i39.i:                                     ; preds = %lor.lhs.false.i37.i.do.end.i39.i_crit_edge, %while.body14.i.i.do.end.i39.i_crit_edge
  %71 = ptrtoint ptr %mode.1137.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %mode.1137.i.i, align 2
  %conv30.i.i = zext i16 %72 to i32
  %73 = ptrtoint ptr %eax.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %eax.i.i, align 8
  %call34.i38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %conv30.i.i, i32 noundef %74, i32 noundef %call22.i.i) #20
  %75 = ptrtoint ptr %vbe_modes_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %vbe_modes_cnt.i.i, align 4
  %dec.i.i = add i32 %76, -1
  store i32 %dec.i.i, ptr %vbe_modes_cnt.i.i, align 4
  br label %cleanup.i.i

if.end37.i.i:                                     ; preds = %lor.lhs.false.i37.i
  %77 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %buf.i.i, align 4
  %79 = ptrtoint ptr %mode.1137.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %mode.1137.i.i, align 2
  %mode_id.i.i = getelementptr inbounds %struct.vbe_mode_ib, ptr %78, i32 0, i32 43
  %81 = ptrtoint ptr %mode_id.i.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 2)
  store i16 %80, ptr %mode_id.i.i, align 1
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %83 = load i16, ptr %78, align 1
  %84 = and i16 %83, 153
  call void @__sanitizer_cov_trace_const_cmp2(i16 153, i16 %84)
  %cmp41.i.i = icmp eq i16 %84, 153
  br i1 %cmp41.i.i, label %land.lhs.true.i.i, label %if.end37.i.i.if.else.i.i_crit_edge

if.end37.i.i.if.else.i.i_crit_edge:               ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.end37.i.i
  %bits_per_pixel.i.i = getelementptr inbounds %struct.vbe_mode_ib, ptr %78, i32 0, i32 14
  %85 = ptrtoint ptr %bits_per_pixel.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %bits_per_pixel.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %86)
  %cmp44.i.i = icmp ugt i8 %86, 7
  br i1 %cmp44.i.i, label %if.then46.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i.i

if.then46.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %inc47.i.i = add i32 %off.0136.i.i, 1
  br label %if.end50.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.end37.i.i.if.else.i.i_crit_edge
  %87 = ptrtoint ptr %vbe_modes_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %vbe_modes_cnt.i.i, align 4
  %dec49.i.i = add i32 %88, -1
  store i32 %dec49.i.i, ptr %vbe_modes_cnt.i.i, align 4
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %if.else.i.i, %if.then46.i.i
  %off.1.i.i = phi i32 [ %inc47.i.i, %if.then46.i.i ], [ %off.0136.i.i, %if.else.i.i ]
  %red_len.i.i = getelementptr inbounds %struct.vbe_mode_ib, ptr %78, i32 0, i32 20
  %89 = ptrtoint ptr %red_len.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %red_len.i.i, align 1
  %green_len.i.i = getelementptr inbounds %struct.vbe_mode_ib, ptr %78, i32 0, i32 22
  %91 = ptrtoint ptr %green_len.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %green_len.i.i, align 1
  %add.i.i = add i8 %92, %90
  %blue_len.i.i = getelementptr inbounds %struct.vbe_mode_ib, ptr %78, i32 0, i32 24
  %93 = ptrtoint ptr %blue_len.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %blue_len.i.i, align 1
  %add55.i.i = add i8 %add.i.i, %94
  %depth.i.i = getelementptr inbounds %struct.vbe_mode_ib, ptr %78, i32 0, i32 44
  %95 = ptrtoint ptr %depth.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %add55.i.i, ptr %depth.i.i, align 1
  %96 = zext i8 %add55.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.137)
  switch i8 %add55.i.i, label %if.end50.i.i.cleanup.i.i_crit_edge [
    i8 0, label %if.end50.i.i.if.then71.i.i_crit_edge
    i8 24, label %land.lhs.true66.i.i
  ]

if.end50.i.i.if.then71.i.i_crit_edge:             ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then71.i.i

if.end50.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i

land.lhs.true66.i.i:                              ; preds = %if.end50.i.i
  %bits_per_pixel67.i.i = getelementptr inbounds %struct.vbe_mode_ib, ptr %78, i32 0, i32 14
  %97 = ptrtoint ptr %bits_per_pixel67.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %bits_per_pixel67.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %98)
  %cmp69.i.i = icmp eq i8 %98, 32
  br i1 %cmp69.i.i, label %land.lhs.true66.i.i.if.then71.i.i_crit_edge, label %land.lhs.true66.i.i.cleanup.i.i_crit_edge

land.lhs.true66.i.i.cleanup.i.i_crit_edge:        ; preds = %land.lhs.true66.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i

land.lhs.true66.i.i.if.then71.i.i_crit_edge:      ; preds = %land.lhs.true66.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then71.i.i

if.then71.i.i:                                    ; preds = %land.lhs.true66.i.i.if.then71.i.i_crit_edge, %if.end50.i.i.if.then71.i.i_crit_edge
  %bits_per_pixel72.i.i = getelementptr inbounds %struct.vbe_mode_ib, ptr %78, i32 0, i32 14
  %99 = ptrtoint ptr %bits_per_pixel72.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %bits_per_pixel72.i.i, align 1
  %101 = ptrtoint ptr %depth.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %depth.i.i, align 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then71.i.i, %land.lhs.true66.i.i.cleanup.i.i_crit_edge, %if.end50.i.i.cleanup.i.i_crit_edge, %do.end.i39.i
  %off.2.i.i = phi i32 [ %off.0136.i.i, %do.end.i39.i ], [ %off.1.i.i, %if.end50.i.i.cleanup.i.i_crit_edge ], [ %off.1.i.i, %if.then71.i.i ], [ %off.1.i.i, %land.lhs.true66.i.i.cleanup.i.i_crit_edge ]
  %mode.2.i.i = getelementptr i16, ptr %mode.1137.i.i, i32 1
  %102 = ptrtoint ptr %mode.2.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %mode.2.i.i, align 2
  %cmp12.not.i.i = icmp eq i16 %103, -1
  br i1 %cmp12.not.i.i, label %cleanup.i.i.while.end75.i.i_crit_edge, label %cleanup.i.i.while.body14.i.i_crit_edge

cleanup.i.i.while.body14.i.i_crit_edge:           ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body14.i.i

cleanup.i.i.while.end75.i.i_crit_edge:            ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end75.i.i

while.end75.i.i:                                  ; preds = %cleanup.i.i.while.end75.i.i_crit_edge, %if.end.i32.i.while.end75.i.i_crit_edge
  %104 = ptrtoint ptr %vbe_modes_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %vbe_modes_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp77.i.i = icmp sgt i32 %105, 0
  br i1 %cmp77.i.i, label %if.end9.i, label %while.end75.i.i.uvesafb_vbe_init.exit_crit_edge

while.end75.i.i.uvesafb_vbe_init.exit_crit_edge:  ; preds = %while.end75.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %uvesafb_vbe_init.exit

if.end9.i:                                        ; preds = %while.end75.i.i
  %106 = load i8, ptr @nocrtc, align 1, !range !417
  %nocrtc.i = getelementptr inbounds %struct.uvesafb_par, ptr %1, i32 0, i32 3
  %107 = ptrtoint ptr %nocrtc.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %nocrtc.i, align 4
  %ypan.i = getelementptr inbounds %struct.uvesafb_par, ptr %1, i32 0, i32 4
  %108 = ptrtoint ptr %ypan.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %ypan.i, align 1
  %pmi_setpal.i = getelementptr inbounds %struct.uvesafb_par, ptr %1, i32 0, i32 5
  %109 = ptrtoint ptr %pmi_setpal.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %pmi_setpal.i, align 2
  %modelist.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 13
  %110 = ptrtoint ptr %modelist.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %modelist.i, ptr %modelist.i, align 4
  %prev.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 13, i32 1
  %111 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %modelist.i, ptr %prev.i.i, align 4
  %112 = ptrtoint ptr %par2 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %par2, align 4
  %monspecs.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8
  %114 = call ptr @memset(ptr %monspecs.i.i, i32 0, i32 140)
  %115 = load i8, ptr @noedid, align 1, !range !417
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.not.i.i.i = icmp eq i8 %115, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end9.i.if.then.i42.i_crit_edge

if.end9.i.if.then.i42.i_crit_edge:                ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i42.i

lor.lhs.false.i.i.i:                              ; preds = %if.end9.i
  %vbe_version.i.i.i = getelementptr inbounds %struct.vbe_ib, ptr %113, i32 0, i32 1
  %116 = ptrtoint ptr %vbe_version.i.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %vbe_version.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %117)
  %cmp.i.i.i = icmp ult i16 %117, 768
  br i1 %cmp.i.i.i, label %lor.lhs.false.i.i.i.if.then.i42.i_crit_edge, label %if.end.i.i.i

lor.lhs.false.i.i.i.if.then.i42.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i42.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  %regs.i.i.i = getelementptr inbounds %struct.uvesafb_task, ptr %call7.i.i.i.i, i32 0, i32 2
  %118 = ptrtoint ptr %eax.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 20245, ptr %eax.i.i, align 8
  %119 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %regs.i.i.i, align 8
  %ecx.i.i.i = getelementptr inbounds %struct.uvesafb_task, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  %120 = ptrtoint ptr %ecx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %ecx.i.i.i, align 4
  %121 = ptrtoint ptr %buf_len.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %buf_len.i.i, align 4
  %122 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %call7.i.i.i.i, align 8
  %call.i.i.i = tail call fastcc i32 @uvesafb_exec(ptr noundef %call7.i.i.i.i) #16
  %123 = ptrtoint ptr %eax.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %eax.i.i, align 8
  %and.i.i.i = and i32 %124, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %and.i.i.i)
  %cmp12.not.i.i.i = icmp eq i32 %and.i.i.i, 79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool15.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  %or.cond.i.i.i = select i1 %cmp12.not.i.i.i, i1 %tobool15.not.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.end17.i.i.i, label %if.end.i.i.i.if.then.i42.i_crit_edge

if.end.i.i.i.if.then.i42.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i42.i

if.end17.i.i.i:                                   ; preds = %if.end.i.i.i
  %125 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %regs.i.i.i, align 8
  %and21.i.i.i = and i32 %126, 3
  %switch.tableidx = add nsw i32 %and21.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %127 = icmp ult i32 %switch.tableidx, 3
  br i1 %127, label %switch.lookup, label %do.end54.i.i.i

do.end54.i.i.i:                                   ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call56.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #20
  br label %if.then.i42.i

switch.lookup:                                    ; preds = %if.end17.i.i.i
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.uvesafb_probe, i32 0, i32 %switch.tableidx
  %128 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %128)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %call37.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %switch.load) #20
  %129 = ptrtoint ptr %eax.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 20245, ptr %eax.i.i, align 8
  %130 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 1, ptr %regs.i.i.i, align 8
  %edx.i.i.i = getelementptr inbounds %struct.uvesafb_task, ptr %call7.i.i.i.i, i32 0, i32 2, i32 2
  %131 = ptrtoint ptr %edx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %edx.i.i.i, align 8
  %132 = ptrtoint ptr %ecx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %ecx.i.i.i, align 4
  %133 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 10, ptr %call7.i.i.i.i, align 8
  %134 = ptrtoint ptr %buf_len.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 128, ptr %buf_len.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %135 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i41.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %135, i32 noundef 3520, i32 noundef 128) #21
  %136 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call7.i.i.i.i41.i, ptr %buf.i.i, align 4
  %tobool77.not.i.i.i = icmp eq ptr %call7.i.i.i.i41.i, null
  br i1 %tobool77.not.i.i.i, label %switch.lookup.if.then.i42.i_crit_edge, label %if.end79.i.i.i

switch.lookup.if.then.i42.i_crit_edge:            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i42.i

if.end79.i.i.i:                                   ; preds = %switch.lookup
  %call80.i.i.i = tail call fastcc i32 @uvesafb_exec(ptr noundef %call7.i.i.i.i) #16
  %137 = ptrtoint ptr %eax.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %eax.i.i, align 8
  %and84.i.i.i = and i32 %138, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %and84.i.i.i)
  %cmp85.i.i.i = icmp eq i32 %and84.i.i.i, 79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i.i.i)
  %tobool87.not.i.i.i = icmp eq i32 %call80.i.i.i, 0
  %or.cond139.i.i.i = select i1 %cmp85.i.i.i, i1 %tobool87.not.i.i.i, i1 false
  %139 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %buf.i.i, align 4
  br i1 %or.cond139.i.i.i, label %if.then88.i.i.i, label %uvesafb_vbe_getedid.exit.i.i

if.then88.i.i.i:                                  ; preds = %if.end79.i.i.i
  tail call void @fb_edid_to_monspecs(ptr noundef %140, ptr noundef %monspecs.i.i) #16
  %vfmax.i.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8, i32 19
  %141 = ptrtoint ptr %vfmax.i.i.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %vfmax.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %142)
  %tobool92.not.i.i.i = icmp eq i16 %142, 0
  br i1 %tobool92.not.i.i.i, label %if.then88.i.i.i.uvesafb_vbe_getedid.exit.thread146.i.i_crit_edge, label %land.lhs.true93.i.i.i

if.then88.i.i.i.uvesafb_vbe_getedid.exit.thread146.i.i_crit_edge: ; preds = %if.then88.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %uvesafb_vbe_getedid.exit.thread146.i.i

land.lhs.true93.i.i.i:                            ; preds = %if.then88.i.i.i
  %hfmax.i.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8, i32 12
  %143 = ptrtoint ptr %hfmax.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %hfmax.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool95.not.i.i.i = icmp eq i32 %144, 0
  br i1 %tobool95.not.i.i.i, label %land.lhs.true93.i.i.i.uvesafb_vbe_getedid.exit.thread146.i.i_crit_edge, label %if.then96.i.i.i

land.lhs.true93.i.i.i.uvesafb_vbe_getedid.exit.thread146.i.i_crit_edge: ; preds = %land.lhs.true93.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %uvesafb_vbe_getedid.exit.thread146.i.i

if.then96.i.i.i:                                  ; preds = %land.lhs.true93.i.i.i
  %dclkmax.i.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8, i32 14
  %145 = ptrtoint ptr %dclkmax.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %dclkmax.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp98.i.i.i = icmp eq i32 %146, 0
  br i1 %cmp98.i.i.i, label %if.then100.i.i.i, label %if.then96.i.i.i.if.end103.i.i.i_crit_edge

if.then96.i.i.i.if.end103.i.i.i_crit_edge:        ; preds = %if.then96.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end103.i.i.i

if.then100.i.i.i:                                 ; preds = %if.then96.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %147 = ptrtoint ptr %dclkmax.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 300000000, ptr %dclkmax.i.i.i, align 4
  br label %if.end103.i.i.i

if.end103.i.i.i:                                  ; preds = %if.then100.i.i.i, %if.then96.i.i.i.if.end103.i.i.i_crit_edge
  %gtf.i.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8, i32 21
  %148 = ptrtoint ptr %gtf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %bf.load.i.i.i = load i8, ptr %gtf.i.i.i, align 4
  %bf.set.i.i.i = or i8 %bf.load.i.i.i, -128
  store i8 %bf.set.i.i.i, ptr %gtf.i.i.i, align 4
  br label %uvesafb_vbe_getedid.exit.thread146.i.i

uvesafb_vbe_getedid.exit.thread146.i.i:           ; preds = %if.end103.i.i.i, %land.lhs.true93.i.i.i.uvesafb_vbe_getedid.exit.thread146.i.i_crit_edge, %if.then88.i.i.i.uvesafb_vbe_getedid.exit.thread146.i.i_crit_edge
  %149 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %buf.i.i, align 4
  tail call void @kfree(ptr noundef %150) #16
  br label %if.end.i44.i

uvesafb_vbe_getedid.exit.i.i:                     ; preds = %if.end79.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef %140) #16
  br label %if.then.i42.i

if.then.i42.i:                                    ; preds = %uvesafb_vbe_getedid.exit.i.i, %switch.lookup.if.then.i42.i_crit_edge, %do.end54.i.i.i, %if.end.i.i.i.if.then.i42.i_crit_edge, %lor.lhs.false.i.i.i.if.then.i42.i_crit_edge, %if.end9.i.if.then.i42.i_crit_edge
  %gtf.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8, i32 21
  %151 = ptrtoint ptr %gtf.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %bf.load.i.i = load i8, ptr %gtf.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 127
  store i8 %bf.clear.i.i, ptr %gtf.i.i, align 4
  %nocrtc.i.i = getelementptr inbounds %struct.uvesafb_par, ptr %113, i32 0, i32 3
  %152 = ptrtoint ptr %nocrtc.i.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 1, ptr %nocrtc.i.i, align 4
  br label %if.end.i44.i

if.end.i44.i:                                     ; preds = %if.then.i42.i, %uvesafb_vbe_getedid.exit.thread146.i.i
  %153 = load i16, ptr @maxclk, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %153)
  %tobool3.not.i43.i = icmp eq i16 %153, 0
  br i1 %tobool3.not.i43.i, label %if.end.i44.i.if.end6.i.i_crit_edge, label %if.then4.i45.i

if.end.i44.i.if.end6.i.i_crit_edge:               ; preds = %if.end.i44.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6.i.i

if.then4.i45.i:                                   ; preds = %if.end.i44.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i = zext i16 %153 to i32
  %mul.i.i = mul i32 %conv.i.i, 1000000
  %dclkmax.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8, i32 14
  %154 = ptrtoint ptr %dclkmax.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %mul.i.i, ptr %dclkmax.i.i, align 4
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then4.i45.i, %if.end.i44.i.if.end6.i.i_crit_edge
  %155 = load i16, ptr @maxvf, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %155)
  %tobool7.not.i.i = icmp eq i16 %155, 0
  br i1 %tobool7.not.i.i, label %if.end6.i.i.if.end10.i.i_crit_edge, label %if.then8.i.i

if.end6.i.i.if.end10.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10.i.i

if.then8.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %vfmax.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8, i32 19
  %156 = ptrtoint ptr %vfmax.i.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %155, ptr %vfmax.i.i, align 4
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then8.i.i, %if.end6.i.i.if.end10.i.i_crit_edge
  %157 = load i16, ptr @maxhf, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %157)
  %tobool11.not.i.i = icmp eq i16 %157, 0
  br i1 %tobool11.not.i.i, label %if.end10.i.i.if.end16.i.i_crit_edge, label %if.then12.i.i

if.end10.i.i.if.end16.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i.i

if.then12.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv13.i.i = zext i16 %157 to i32
  %mul14.i.i = mul nuw nsw i32 %conv13.i.i, 1000
  %hfmax.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8, i32 12
  %158 = ptrtoint ptr %hfmax.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %mul14.i.i, ptr %hfmax.i.i, align 4
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then12.i.i, %if.end10.i.i.if.end16.i.i_crit_edge
  %gtf18.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8, i32 21
  %159 = ptrtoint ptr %gtf18.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %bf.load19.i.i = load i8, ptr %gtf18.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load19.i.i)
  %cmp.i.i = icmp sgt i8 %bf.load19.i.i, -1
  br i1 %cmp.i.i, label %land.lhs.true.i46.i, label %if.end16.i.i.do.end.i47.i_crit_edge

if.end16.i.i.do.end.i47.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i47.i

land.lhs.true.i46.i:                              ; preds = %if.end16.i.i
  %brmerge.i.i = select i1 %tobool3.not.i43.i, i1 true, i1 %tobool7.not.i.i
  %brmerge154.i.i = select i1 %brmerge.i.i, i1 true, i1 %tobool11.not.i.i
  br i1 %brmerge154.i.i, label %land.lhs.true.i46.i.do.end59.i.i_crit_edge, label %if.end40.i.i

land.lhs.true.i46.i.do.end59.i.i_crit_edge:       ; preds = %land.lhs.true.i46.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end59.i.i

if.end40.i.i:                                     ; preds = %land.lhs.true.i46.i
  %dclkmin.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8, i32 13
  %160 = ptrtoint ptr %dclkmin.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %dclkmin.i.i, align 4
  %vfmin.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8, i32 18
  %161 = ptrtoint ptr %vfmin.i.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 60, ptr %vfmin.i.i, align 2
  %hfmin.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8, i32 11
  %162 = ptrtoint ptr %hfmin.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 29000, ptr %hfmin.i.i, align 4
  %bf.set38.i.i = or i8 %bf.load19.i.i, -128
  %163 = ptrtoint ptr %gtf18.i.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %bf.set38.i.i, ptr %gtf18.i.i, align 4
  %nocrtc39.i.i = getelementptr inbounds %struct.uvesafb_par, ptr %113, i32 0, i32 3
  %164 = ptrtoint ptr %nocrtc39.i.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %nocrtc39.i.i, align 4
  %bf.load43.pr.i.i = load i8, ptr %gtf18.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load43.pr.i.i)
  %tobool46.not.i.i = icmp sgt i8 %bf.load43.pr.i.i, -1
  br i1 %tobool46.not.i.i, label %if.end40.i.i.do.end59.i.i_crit_edge, label %if.end40.i.i.do.end.i47.i_crit_edge

if.end40.i.i.do.end.i47.i_crit_edge:              ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i47.i

if.end40.i.i.do.end59.i.i_crit_edge:              ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end59.i.i

do.end.i47.i:                                     ; preds = %if.end40.i.i.do.end.i47.i_crit_edge, %if.end16.i.i.do.end.i47.i_crit_edge
  %vfmax49.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8, i32 19
  %165 = ptrtoint ptr %vfmax49.i.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %vfmax49.i.i, align 4
  %conv50.i.i = zext i16 %166 to i32
  %hfmax52.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8, i32 12
  %167 = ptrtoint ptr %hfmax52.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %hfmax52.i.i, align 4
  %div.i.i = udiv i32 %168, 1000
  %dclkmax54.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8, i32 14
  %169 = ptrtoint ptr %dclkmax54.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %dclkmax54.i.i, align 4
  %div55.i.i = udiv i32 %170, 1000000
  %call56.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %conv50.i.i, i32 noundef %div.i.i, i32 noundef %div55.i.i) #20
  br label %if.end62.i.i

do.end59.i.i:                                     ; preds = %if.end40.i.i.do.end59.i.i_crit_edge, %land.lhs.true.i46.i.do.end59.i.i_crit_edge
  %call61.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #20
  br label %if.end62.i.i

if.end62.i.i:                                     ; preds = %do.end59.i.i, %do.end.i47.i
  %vbe_modes_cnt.i48.i = getelementptr inbounds %struct.uvesafb_par, ptr %113, i32 0, i32 2
  %171 = ptrtoint ptr %vbe_modes_cnt.i48.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %vbe_modes_cnt.i48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %cmp63155.i.i = icmp sgt i32 %172, 0
  br i1 %cmp63155.i.i, label %for.body.lr.ph.i.i, label %if.end62.i.i.for.body72.i.i.preheader_crit_edge

if.end62.i.i.for.body72.i.i.preheader_crit_edge:  ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body72.i.i.preheader

for.body72.i.i.preheader:                         ; preds = %for.body.i.i.for.body72.i.i.preheader_crit_edge, %if.end62.i.i.for.body72.i.i.preheader_crit_edge
  br label %for.body72.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end62.i.i
  %vbe_modes.i49.i = getelementptr inbounds %struct.uvesafb_par, ptr %113, i32 0, i32 1
  %yres.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var.i.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0156.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i50.i, %for.body.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %var.i.i) #16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %vmode.i.i) #16
  %173 = call ptr @memset(ptr %vmode.i.i, i32 255, i32 56)
  %174 = ptrtoint ptr %vbe_modes.i49.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %vbe_modes.i49.i, align 4
  %176 = call ptr @memset(ptr %var.i.i, i32 0, i32 160)
  %x_res.i.i = getelementptr %struct.vbe_mode_ib, ptr %175, i32 %i.0156.i.i, i32 9
  %177 = ptrtoint ptr %x_res.i.i to i32
  call void @__asan_loadN_noabort(i32 %177, i32 2)
  %178 = load i16, ptr %x_res.i.i, align 1
  %conv65.i.i = zext i16 %178 to i32
  %179 = ptrtoint ptr %var.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %conv65.i.i, ptr %var.i.i, align 4
  %y_res.i.i = getelementptr %struct.vbe_mode_ib, ptr %175, i32 %i.0156.i.i, i32 10
  %180 = ptrtoint ptr %y_res.i.i to i32
  call void @__asan_loadN_noabort(i32 %180, i32 2)
  %181 = load i16, ptr %y_res.i.i, align 1
  %conv66.i.i = zext i16 %181 to i32
  %182 = ptrtoint ptr %yres.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %conv66.i.i, ptr %yres.i.i, align 4
  %call67.i.i = call i32 @fb_get_mode(i32 noundef 257, i32 noundef 60, ptr noundef nonnull %var.i.i, ptr noundef %call) #16
  call void @fb_var_to_videomode(ptr noundef nonnull %vmode.i.i, ptr noundef nonnull %var.i.i) #16
  %call68.i.i = call i32 @fb_add_videomode(ptr noundef nonnull %vmode.i.i, ptr noundef %modelist.i) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %vmode.i.i) #16
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %var.i.i) #16
  %inc.i50.i = add nuw nsw i32 %i.0156.i.i, 1
  %183 = ptrtoint ptr %vbe_modes_cnt.i48.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %vbe_modes_cnt.i48.i, align 4
  %cmp63.i.i = icmp slt i32 %inc.i50.i, %184
  br i1 %cmp63.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.body72.i.i.preheader_crit_edge

for.body.i.i.for.body72.i.i.preheader_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body72.i.i.preheader

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.cond84.preheader.i.i:                         ; preds = %for.inc81.i.i
  %modedb_len.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8, i32 6
  %185 = ptrtoint ptr %modedb_len.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %modedb_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp86158.not.i.i = icmp eq i32 %186, 0
  br i1 %cmp86158.not.i.i, label %for.cond84.preheader.i.i.uvesafb_vbe_getmonspecs.exit.i_crit_edge, label %for.body88.lr.ph.i.i

for.cond84.preheader.i.i.uvesafb_vbe_getmonspecs.exit.i_crit_edge: ; preds = %for.cond84.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %uvesafb_vbe_getmonspecs.exit.i

for.body88.lr.ph.i.i:                             ; preds = %for.cond84.preheader.i.i
  %modedb.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8, i32 1
  br label %for.body88.i.i

for.body72.i.i:                                   ; preds = %for.inc81.i.i.for.body72.i.i_crit_edge, %for.body72.i.i.preheader
  %i.1157.i.i = phi i32 [ %inc82.i.i, %for.inc81.i.i.for.body72.i.i_crit_edge ], [ 0, %for.body72.i.i.preheader ]
  %arrayidx73.i.i = getelementptr [0 x %struct.fb_videomode], ptr @vesa_modes, i32 0, i32 %i.1157.i.i
  %call74.i.i = call fastcc i32 @uvesafb_is_valid_mode(ptr noundef %arrayidx73.i.i, ptr noundef %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i.i)
  %tobool75.not.i.i = icmp eq i32 %call74.i.i, 0
  br i1 %tobool75.not.i.i, label %for.body72.i.i.for.inc81.i.i_crit_edge, label %if.then76.i.i

for.body72.i.i.for.inc81.i.i_crit_edge:           ; preds = %for.body72.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc81.i.i

if.then76.i.i:                                    ; preds = %for.body72.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call79.i.i = call i32 @fb_add_videomode(ptr noundef %arrayidx73.i.i, ptr noundef %modelist.i) #16
  br label %for.inc81.i.i

for.inc81.i.i:                                    ; preds = %if.then76.i.i, %for.body72.i.i.for.inc81.i.i_crit_edge
  %inc82.i.i = add nuw nsw i32 %i.1157.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc82.i.i, 43
  br i1 %exitcond.not.i.i, label %for.cond84.preheader.i.i, label %for.inc81.i.i.for.body72.i.i_crit_edge

for.inc81.i.i.for.body72.i.i_crit_edge:           ; preds = %for.inc81.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body72.i.i

for.body88.i.i:                                   ; preds = %for.inc100.i.i.for.body88.i.i_crit_edge, %for.body88.lr.ph.i.i
  %i.2159.i.i = phi i32 [ 0, %for.body88.lr.ph.i.i ], [ %inc101.i.i, %for.inc100.i.i.for.body88.i.i_crit_edge ]
  %187 = ptrtoint ptr %modedb.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %modedb.i.i, align 4
  %arrayidx90.i.i = getelementptr %struct.fb_videomode, ptr %188, i32 %i.2159.i.i
  %call91.i.i = call fastcc i32 @uvesafb_is_valid_mode(ptr noundef %arrayidx90.i.i, ptr noundef %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.i.i)
  %tobool92.not.i.i = icmp eq i32 %call91.i.i, 0
  br i1 %tobool92.not.i.i, label %for.body88.i.i.for.inc100.i.i_crit_edge, label %if.then93.i.i

for.body88.i.i.for.inc100.i.i_crit_edge:          ; preds = %for.body88.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc100.i.i

if.then93.i.i:                                    ; preds = %for.body88.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %189 = ptrtoint ptr %modedb.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %modedb.i.i, align 4
  %arrayidx96.i.i = getelementptr %struct.fb_videomode, ptr %190, i32 %i.2159.i.i
  %call98.i51.i = call i32 @fb_add_videomode(ptr noundef %arrayidx96.i.i, ptr noundef %modelist.i) #16
  br label %for.inc100.i.i

for.inc100.i.i:                                   ; preds = %if.then93.i.i, %for.body88.i.i.for.inc100.i.i_crit_edge
  %inc101.i.i = add nuw i32 %i.2159.i.i, 1
  %191 = ptrtoint ptr %modedb_len.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %modedb_len.i.i, align 4
  %cmp86.i.i = icmp ult i32 %inc101.i.i, %192
  br i1 %cmp86.i.i, label %for.inc100.i.i.for.body88.i.i_crit_edge, label %for.inc100.i.i.uvesafb_vbe_getmonspecs.exit.i_crit_edge

for.inc100.i.i.uvesafb_vbe_getmonspecs.exit.i_crit_edge: ; preds = %for.inc100.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %uvesafb_vbe_getmonspecs.exit.i

for.inc100.i.i.for.body88.i.i_crit_edge:          ; preds = %for.inc100.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body88.i.i

uvesafb_vbe_getmonspecs.exit.i:                   ; preds = %for.inc100.i.i.uvesafb_vbe_getmonspecs.exit.i_crit_edge, %for.cond84.preheader.i.i.uvesafb_vbe_getmonspecs.exit.i_crit_edge
  %193 = ptrtoint ptr %done.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %done.i.i, align 8
  %195 = call ptr @memset(ptr %call7.i.i.i.i, i32 0, i32 72)
  store ptr %194, ptr %done.i.i, align 8
  %regs.i.i = getelementptr inbounds %struct.uvesafb_task, ptr %call7.i.i.i.i, i32 0, i32 2
  %196 = ptrtoint ptr %eax.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 20228, ptr %eax.i.i, align 8
  %ecx.i54.i = getelementptr inbounds %struct.uvesafb_task, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  %197 = ptrtoint ptr %ecx.i54.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 15, ptr %ecx.i54.i, align 4
  %call.i55.i = call fastcc i32 @uvesafb_exec(ptr noundef %call7.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55.i)
  %tobool.not.i56.i = icmp eq i32 %call.i55.i, 0
  br i1 %tobool.not.i56.i, label %lor.lhs.false.i59.i, label %uvesafb_vbe_getmonspecs.exit.i.do.end.i60.i_crit_edge

uvesafb_vbe_getmonspecs.exit.i.do.end.i60.i_crit_edge: ; preds = %uvesafb_vbe_getmonspecs.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i60.i

lor.lhs.false.i59.i:                              ; preds = %uvesafb_vbe_getmonspecs.exit.i
  %198 = ptrtoint ptr %eax.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %eax.i.i, align 8
  %and.i57.i = and i32 %199, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %and.i57.i)
  %cmp.not.i58.i = icmp eq i32 %and.i57.i, 79
  br i1 %cmp.not.i58.i, label %if.end.i62.i, label %lor.lhs.false.i59.i.do.end.i60.i_crit_edge

lor.lhs.false.i59.i.do.end.i60.i_crit_edge:       ; preds = %lor.lhs.false.i59.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i60.i

do.end.i60.i:                                     ; preds = %lor.lhs.false.i59.i.do.end.i60.i_crit_edge, %uvesafb_vbe_getmonspecs.exit.i.do.end.i60.i_crit_edge
  %200 = ptrtoint ptr %eax.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %eax.i.i, align 8
  %call12.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %201, i32 noundef %call.i55.i) #20
  br label %uvesafb_vbe_getstatesize.exit.i

if.end.i62.i:                                     ; preds = %lor.lhs.false.i59.i
  call void @__sanitizer_cov_trace_pc() #18
  %202 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %regs.i.i, align 8
  %and15.i.i = shl i32 %203, 6
  %mul.i61.i = and i32 %and15.i.i, 4194240
  br label %uvesafb_vbe_getstatesize.exit.i

uvesafb_vbe_getstatesize.exit.i:                  ; preds = %if.end.i62.i, %do.end.i60.i
  %mul.sink.i.i = phi i32 [ %mul.i61.i, %if.end.i62.i ], [ 0, %do.end.i60.i ]
  %vbe_state_size16.i.i = getelementptr inbounds %struct.uvesafb_par, ptr %1, i32 0, i32 11
  %204 = ptrtoint ptr %vbe_state_size16.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %mul.sink.i.i, ptr %vbe_state_size16.i.i, align 4
  br label %uvesafb_vbe_init.exit

uvesafb_vbe_init.exit:                            ; preds = %uvesafb_vbe_getstatesize.exit.i, %while.end75.i.i.uvesafb_vbe_init.exit_crit_edge, %if.end7.i.i.i.i.uvesafb_vbe_init.exit_crit_edge, %kcalloc.exit.thread.i.i, %do.end26.i.i, %do.end17.i.i, %do.end.i.i
  %tobool4.not = phi i1 [ false, %do.end.i.i ], [ false, %do.end17.i.i ], [ false, %do.end26.i.i ], [ false, %kcalloc.exit.thread.i.i ], [ false, %if.end7.i.i.i.i.uvesafb_vbe_init.exit_crit_edge ], [ false, %while.end75.i.i.uvesafb_vbe_init.exit_crit_edge ], [ true, %uvesafb_vbe_getstatesize.exit.i ]
  %err.0.i = phi i32 [ -22, %do.end.i.i ], [ -22, %do.end17.i.i ], [ -22, %do.end26.i.i ], [ -12, %kcalloc.exit.thread.i.i ], [ -12, %if.end7.i.i.i.i.uvesafb_vbe_init.exit_crit_edge ], [ -22, %while.end75.i.i.uvesafb_vbe_init.exit_crit_edge ], [ 0, %uvesafb_vbe_getstatesize.exit.i ]
  %205 = ptrtoint ptr %done.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %done.i.i, align 8
  call void @kfree(ptr noundef %206) #16
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #16
  br i1 %tobool4.not, label %if.end7, label %uvesafb_vbe_init.exit.do.end_crit_edge

uvesafb_vbe_init.exit.do.end_crit_edge:           ; preds = %uvesafb_vbe_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %uvesafb_vbe_init.exit.do.end_crit_edge, %if.then4.i.i, %if.end.do.end_crit_edge
  %retval.0.i192 = phi i32 [ %err.0.i, %uvesafb_vbe_init.exit.do.end_crit_edge ], [ -12, %if.then4.i.i ], [ -12, %if.end.do.end_crit_edge ]
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %retval.0.i192) #20
  br label %out

if.end7:                                          ; preds = %uvesafb_vbe_init.exit
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 20
  %207 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr @uvesafb_ops, ptr %fbops, align 4
  %208 = ptrtoint ptr %par2 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %par2, align 4
  %210 = load i16, ptr @vbemode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %210)
  %tobool.not.i = icmp eq i16 %210, 0
  br i1 %tobool.not.i, label %if.end7.if.end12.i_crit_edge, label %for.cond.preheader.i

if.end7.if.end12.i_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i

for.cond.preheader.i:                             ; preds = %if.end7
  %vbe_modes_cnt.i = getelementptr inbounds %struct.uvesafb_par, ptr %209, i32 0, i32 2
  %211 = ptrtoint ptr %vbe_modes_cnt.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %vbe_modes_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %cmp305.i = icmp sgt i32 %212, 0
  br i1 %cmp305.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.do.end.i_crit_edge

for.cond.preheader.i.do.end.i_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %vbe_modes.i = getelementptr inbounds %struct.uvesafb_par, ptr %209, i32 0, i32 1
  %213 = ptrtoint ptr %vbe_modes.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %vbe_modes.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0306.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %mode_id.i = getelementptr %struct.vbe_mode_ib, ptr %214, i32 %i.0306.i, i32 43
  %215 = ptrtoint ptr %mode_id.i to i32
  call void @__asan_loadN_noabort(i32 %215, i32 2)
  %216 = load i16, ptr %mode_id.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %216, i16 %210)
  %cmp3.i = icmp eq i16 %216, %210
  br i1 %cmp3.i, label %if.then5.i, label %for.inc.i

if.then5.i:                                       ; preds = %for.body.i
  %var.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6
  %vmode.i.i139 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 25
  %217 = ptrtoint ptr %vmode.i.i139 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 0, ptr %vmode.i.i139, align 4
  %sync.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 24
  %218 = ptrtoint ptr %sync.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 2, ptr %sync.i.i, align 4
  %x_res.i.i140 = getelementptr %struct.vbe_mode_ib, ptr %214, i32 %i.0306.i, i32 9
  %219 = ptrtoint ptr %x_res.i.i140 to i32
  call void @__asan_loadN_noabort(i32 %219, i32 2)
  %220 = load i16, ptr %x_res.i.i140, align 1
  %conv.i.i141 = zext i16 %220 to i32
  %221 = ptrtoint ptr %var.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %conv.i.i141, ptr %var.i, align 4
  %y_res.i.i142 = getelementptr %struct.vbe_mode_ib, ptr %214, i32 %i.0306.i, i32 10
  %222 = ptrtoint ptr %y_res.i.i142 to i32
  call void @__asan_loadN_noabort(i32 %222, i32 2)
  %223 = load i16, ptr %y_res.i.i142, align 1
  %conv2.i.i = zext i16 %223 to i32
  %yres.i.i143 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 1
  %224 = ptrtoint ptr %yres.i.i143 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %conv2.i.i, ptr %yres.i.i143, align 4
  %225 = load i16, ptr %x_res.i.i140, align 1
  %conv4.i.i = zext i16 %225 to i32
  %xres_virtual.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 2
  %226 = ptrtoint ptr %xres_virtual.i.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %conv4.i.i, ptr %xres_virtual.i.i, align 4
  %ypan.i.i = getelementptr inbounds %struct.uvesafb_par, ptr %209, i32 0, i32 4
  %227 = ptrtoint ptr %ypan.i.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %ypan.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %228)
  %tobool.not.i.i144 = icmp eq i8 %228, 0
  br i1 %tobool.not.i.i144, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #18
  %smem_len.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 2
  %229 = ptrtoint ptr %smem_len.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %smem_len.i.i, align 4
  %bytes_per_scan_line.i.i = getelementptr %struct.vbe_mode_ib, ptr %214, i32 %i.0306.i, i32 8
  %231 = ptrtoint ptr %bytes_per_scan_line.i.i to i32
  call void @__asan_loadN_noabort(i32 %231, i32 2)
  %232 = load i16, ptr %bytes_per_scan_line.i.i, align 1
  %conv6.i.i = zext i16 %232 to i32
  %div.i.i145 = udiv i32 %230, %conv6.i.i
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #18
  %233 = ptrtoint ptr %y_res.i.i142 to i32
  call void @__asan_loadN_noabort(i32 %233, i32 2)
  %234 = load i16, ptr %y_res.i.i142, align 1
  %conv8.i.i = zext i16 %234 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %div.i.i145, %cond.true.i.i ], [ %conv8.i.i, %cond.false.i.i ]
  %yres_virtual.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 3
  %235 = ptrtoint ptr %yres_virtual.i.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %cond.i.i, ptr %yres_virtual.i.i, align 4
  %xoffset.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 4
  %236 = ptrtoint ptr %xoffset.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 0, ptr %xoffset.i.i, align 4
  %yoffset.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 5
  %237 = ptrtoint ptr %yoffset.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 0, ptr %yoffset.i.i, align 4
  %bits_per_pixel.i.i146 = getelementptr %struct.vbe_mode_ib, ptr %214, i32 %i.0306.i, i32 14
  %238 = ptrtoint ptr %bits_per_pixel.i.i146 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %bits_per_pixel.i.i146, align 1
  %bits_per_pixel10.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %239)
  %cmp.i.i147 = icmp eq i8 %239, 15
  %narrow.i.i = select i1 %cmp.i.i147, i8 16, i8 %239
  %spec.select.i.i = zext i8 %narrow.i.i to i32
  %240 = ptrtoint ptr %bits_per_pixel10.i.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %spec.select.i.i, ptr %bits_per_pixel10.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %narrow.i.i)
  %cmp15.i.i = icmp ugt i8 %narrow.i.i, 8
  br i1 %cmp15.i.i, label %if.then17.i.i, label %if.else.i.i151

if.then17.i.i:                                    ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %red_off.i.i = getelementptr %struct.vbe_mode_ib, ptr %214, i32 %i.0306.i, i32 21
  %241 = ptrtoint ptr %red_off.i.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %red_off.i.i, align 1
  %conv18.i.i = zext i8 %242 to i32
  %red.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 8
  %243 = ptrtoint ptr %red.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %conv18.i.i, ptr %red.i.i, align 4
  %red_len.i.i148 = getelementptr %struct.vbe_mode_ib, ptr %214, i32 %i.0306.i, i32 20
  %244 = ptrtoint ptr %red_len.i.i148 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %red_len.i.i148, align 1
  %conv19.i.i = zext i8 %245 to i32
  %length.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 8, i32 1
  %246 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %conv19.i.i, ptr %length.i.i, align 4
  %green_off.i.i = getelementptr %struct.vbe_mode_ib, ptr %214, i32 %i.0306.i, i32 23
  %247 = ptrtoint ptr %green_off.i.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %green_off.i.i, align 1
  %conv21.i.i = zext i8 %248 to i32
  %green.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 9
  %249 = ptrtoint ptr %green.i.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %conv21.i.i, ptr %green.i.i, align 4
  %green_len.i.i149 = getelementptr %struct.vbe_mode_ib, ptr %214, i32 %i.0306.i, i32 22
  %250 = ptrtoint ptr %green_len.i.i149 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %green_len.i.i149, align 1
  %conv23.i.i = zext i8 %251 to i32
  %length25.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 9, i32 1
  %252 = ptrtoint ptr %length25.i.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %conv23.i.i, ptr %length25.i.i, align 4
  %blue_off.i.i = getelementptr %struct.vbe_mode_ib, ptr %214, i32 %i.0306.i, i32 25
  %253 = ptrtoint ptr %blue_off.i.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %blue_off.i.i, align 1
  %conv26.i.i = zext i8 %254 to i32
  %blue.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 10
  %255 = ptrtoint ptr %blue.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %conv26.i.i, ptr %blue.i.i, align 4
  %blue_len.i.i150 = getelementptr %struct.vbe_mode_ib, ptr %214, i32 %i.0306.i, i32 24
  %256 = ptrtoint ptr %blue_len.i.i150 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %blue_len.i.i150, align 1
  %conv28.i.i = zext i8 %257 to i32
  %length30.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 10, i32 1
  %258 = ptrtoint ptr %length30.i.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %conv28.i.i, ptr %length30.i.i, align 4
  %rsvd_off.i.i = getelementptr %struct.vbe_mode_ib, ptr %214, i32 %i.0306.i, i32 27
  %259 = ptrtoint ptr %rsvd_off.i.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %rsvd_off.i.i, align 1
  %conv31.i.i = zext i8 %260 to i32
  %transp.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 11
  %261 = ptrtoint ptr %transp.i.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %conv31.i.i, ptr %transp.i.i, align 4
  %rsvd_len.i.i = getelementptr %struct.vbe_mode_ib, ptr %214, i32 %i.0306.i, i32 26
  %262 = ptrtoint ptr %rsvd_len.i.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %rsvd_len.i.i, align 1
  %conv33.i.i = zext i8 %263 to i32
  br label %uvesafb_setup_var.exit.i

if.else.i.i151:                                   ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %red36.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 8
  %264 = ptrtoint ptr %red36.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 0, ptr %red36.i.i, align 4
  %green38.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 9
  %265 = ptrtoint ptr %green38.i.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 0, ptr %green38.i.i, align 4
  %blue40.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 10
  %266 = ptrtoint ptr %blue40.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 0, ptr %blue40.i.i, align 4
  %transp42.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 11
  %267 = ptrtoint ptr %transp42.i.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 0, ptr %transp42.i.i, align 4
  %length45.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 8, i32 1
  %268 = ptrtoint ptr %length45.i.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 8, ptr %length45.i.i, align 4
  %length47.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 9, i32 1
  %269 = ptrtoint ptr %length47.i.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 8, ptr %length47.i.i, align 4
  %length49.i.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 10, i32 1
  %270 = ptrtoint ptr %length49.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 8, ptr %length49.i.i, align 4
  br label %uvesafb_setup_var.exit.i

uvesafb_setup_var.exit.i:                         ; preds = %if.else.i.i151, %if.then17.i.i
  %.sink.i.i = phi i32 [ %conv33.i.i, %if.then17.i.i ], [ 0, %if.else.i.i151 ]
  %271 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 11, i32 1
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %.sink.i.i, ptr %271, align 4
  %call.i = call i32 @fb_get_mode(i32 noundef 257, i32 noundef 60, ptr noundef %var.i, ptr noundef %call) #16
  %pixclock.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 17
  %273 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 0, ptr %pixclock.i, align 4
  br label %gotmode.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.0306.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %212
  br i1 %exitcond.not.i, label %for.inc.i.do.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %for.cond.preheader.i.do.end.i_crit_edge
  %conv10.i = zext i16 %210 to i32
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef %conv10.i) #20
  store i16 0, ptr @vbemode, align 2
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end.i, %if.end7.if.end12.i_crit_edge
  %modelist13.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 13
  br label %for.cond14.i

for.cond14.i:                                     ; preds = %for.cond14.i.for.cond14.i_crit_edge, %if.end12.i
  %i.1.i = phi i32 [ 0, %if.end12.i ], [ %inc19.i, %for.cond14.i.for.cond14.i_crit_edge ]
  %pos.0.in.i = phi ptr [ %modelist13.i, %if.end12.i ], [ %pos.0.i, %for.cond14.i.for.cond14.i_crit_edge ]
  %274 = ptrtoint ptr %pos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %pos.0.i = load ptr, ptr %pos.0.in.i, align 4
  %cmp.i153.not.i = icmp eq ptr %pos.0.i, %modelist13.i
  %inc19.i = add i32 %i.1.i, 1
  br i1 %cmp.i153.not.i, label %for.end22.i, label %for.cond14.i.for.cond14.i_crit_edge

for.cond14.i.for.cond14.i_crit_edge:              ; preds = %for.cond14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond14.i

for.end22.i:                                      ; preds = %for.cond14.i
  %275 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.1.i, i32 56) #16
  %276 = extractvalue { i32, i1 } %275, 1
  br i1 %276, label %for.end22.i.if.end68.i_crit_edge, label %if.end7.i.i.i, !prof !416

for.end22.i.if.end68.i_crit_edge:                 ; preds = %for.end22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end68.i

if.end7.i.i.i:                                    ; preds = %for.end22.i
  %277 = extractvalue { i32, i1 } %275, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %277, i32 noundef 3520) #22
  %tobool24.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool24.not.i, label %if.end7.i.i.i.if.end46.i_crit_edge, label %for.cond28.preheader.i

if.end7.i.i.i.if.end46.i_crit_edge:               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46.i

for.cond28.preheader.i:                           ; preds = %if.end7.i.i.i
  %278 = ptrtoint ptr %modelist13.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %pos.1307.i = load ptr, ptr %modelist13.i, align 4
  %cmp.i155.not308.i = icmp eq ptr %pos.1307.i, %modelist13.i
  br i1 %cmp.i155.not308.i, label %for.cond28.preheader.i.for.end40.i_crit_edge, label %for.cond28.preheader.i.for.body33.i_crit_edge

for.cond28.preheader.i.for.body33.i_crit_edge:    ; preds = %for.cond28.preheader.i
  br label %for.body33.i

for.cond28.preheader.i.for.end40.i_crit_edge:     ; preds = %for.cond28.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end40.i

for.body33.i:                                     ; preds = %for.body33.i.for.body33.i_crit_edge, %for.cond28.preheader.i.for.body33.i_crit_edge
  %pos.1310.i = phi ptr [ %pos.1.i, %for.body33.i.for.body33.i_crit_edge ], [ %pos.1307.i, %for.cond28.preheader.i.for.body33.i_crit_edge ]
  %i.2309.i = phi i32 [ %inc37.i, %for.body33.i.for.body33.i_crit_edge ], [ 0, %for.cond28.preheader.i.for.body33.i_crit_edge ]
  %arrayidx35.i = getelementptr %struct.fb_videomode, ptr %call8.i.i.i, i32 %i.2309.i
  %mode36.i = getelementptr inbounds %struct.fb_modelist, ptr %pos.1310.i, i32 0, i32 1
  %279 = call ptr @memcpy(ptr %arrayidx35.i, ptr %mode36.i, i32 56)
  %inc37.i = add i32 %i.2309.i, 1
  %280 = ptrtoint ptr %pos.1310.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %pos.1.i = load ptr, ptr %pos.1310.i, align 4
  %cmp.i155.not.i = icmp eq ptr %pos.1.i, %modelist13.i
  br i1 %cmp.i155.not.i, label %for.body33.i.for.end40.i_crit_edge, label %for.body33.i.for.body33.i_crit_edge

for.body33.i.for.body33.i_crit_edge:              ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body33.i

for.body33.i.for.end40.i_crit_edge:               ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end40.i

for.end40.i:                                      ; preds = %for.body33.i.for.end40.i_crit_edge, %for.cond28.preheader.i.for.end40.i_crit_edge
  %i.2.lcssa.i = phi i32 [ 0, %for.cond28.preheader.i.for.end40.i_crit_edge ], [ %inc37.i, %for.body33.i.for.end40.i_crit_edge ]
  %281 = load ptr, ptr @mode_option, align 4
  %tobool41.not.i = icmp eq ptr %281, null
  br i1 %tobool41.not.i, label %if.then42.i, label %for.end40.i.if.end43.i_crit_edge

for.end40.i.if.end43.i_crit_edge:                 ; preds = %for.end40.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43.i

if.then42.i:                                      ; preds = %for.end40.i
  call void @__sanitizer_cov_trace_pc() #18
  store ptr @.str.120, ptr @mode_option, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then42.i, %for.end40.i.if.end43.i_crit_edge
  %var44.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6
  %282 = load ptr, ptr @mode_option, align 4
  %call45.i = call i32 @fb_find_mode(ptr noundef %var44.i, ptr noundef %call, ptr noundef %282, ptr noundef nonnull %call8.i.i.i, i32 noundef %i.2.lcssa.i, ptr noundef null, i32 noundef 8) #16
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #16
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.end43.i, %if.end7.i.i.i.if.end46.i_crit_edge
  %i.3.i = phi i32 [ %call45.i, %if.end43.i ], [ %i.1.i, %if.end7.i.i.i.if.end46.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.3.i)
  %cmp47.i = icmp eq i32 %i.3.i, 0
  br i1 %cmp47.i, label %if.then49.i, label %if.end46.i.if.end68.i_crit_edge

if.end46.i.if.end68.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end68.i

if.then49.i:                                      ; preds = %if.end46.i
  %var50.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6
  %283 = ptrtoint ptr %var50.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 640, ptr %var50.i, align 4
  %yres.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 1
  %284 = ptrtoint ptr %yres.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 480, ptr %yres.i, align 4
  %call54.i = call ptr @fb_find_best_mode(ptr noundef %var50.i, ptr noundef %modelist13.i) #16
  %tobool55.not.i = icmp eq ptr %call54.i, null
  br i1 %tobool55.not.i, label %if.else.i, label %if.then56.i

if.then56.i:                                      ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @fb_videomode_to_var(ptr noundef %var50.i, ptr noundef nonnull %call54.i) #16
  br label %if.end68.i

if.else.i:                                        ; preds = %if.then49.i
  %vbe_modes58.i = getelementptr inbounds %struct.uvesafb_par, ptr %209, i32 0, i32 1
  %285 = ptrtoint ptr %vbe_modes58.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %vbe_modes58.i, align 4
  %mode_id60.i = getelementptr inbounds %struct.vbe_mode_ib, ptr %286, i32 0, i32 43
  %287 = ptrtoint ptr %mode_id60.i to i32
  call void @__asan_loadN_noabort(i32 %287, i32 2)
  %288 = load i16, ptr %mode_id60.i, align 1
  %conv61.i = zext i16 %288 to i32
  %289 = ptrtoint ptr %par2 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %par2, align 4
  %vmode.i158.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 25
  %291 = ptrtoint ptr %vmode.i158.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 0, ptr %vmode.i158.i, align 4
  %sync.i159.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 24
  %292 = ptrtoint ptr %sync.i159.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 2, ptr %sync.i159.i, align 4
  %x_res.i160.i = getelementptr %struct.vbe_mode_ib, ptr %286, i32 %conv61.i, i32 9
  %293 = ptrtoint ptr %x_res.i160.i to i32
  call void @__asan_loadN_noabort(i32 %293, i32 2)
  %294 = load i16, ptr %x_res.i160.i, align 1
  %conv.i161.i = zext i16 %294 to i32
  %295 = ptrtoint ptr %var50.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %conv.i161.i, ptr %var50.i, align 4
  %y_res.i162.i = getelementptr %struct.vbe_mode_ib, ptr %286, i32 %conv61.i, i32 10
  %296 = ptrtoint ptr %y_res.i162.i to i32
  call void @__asan_loadN_noabort(i32 %296, i32 2)
  %297 = load i16, ptr %y_res.i162.i, align 1
  %conv2.i163.i = zext i16 %297 to i32
  %298 = ptrtoint ptr %yres.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 %conv2.i163.i, ptr %yres.i, align 4
  %299 = load i16, ptr %x_res.i160.i, align 1
  %conv4.i165.i = zext i16 %299 to i32
  %xres_virtual.i166.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 2
  %300 = ptrtoint ptr %xres_virtual.i166.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %conv4.i165.i, ptr %xres_virtual.i166.i, align 4
  %ypan.i167.i = getelementptr inbounds %struct.uvesafb_par, ptr %290, i32 0, i32 4
  %301 = ptrtoint ptr %ypan.i167.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %ypan.i167.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %302)
  %tobool.not.i168.i = icmp eq i8 %302, 0
  br i1 %tobool.not.i168.i, label %cond.false.i175.i, label %cond.true.i173.i

cond.true.i173.i:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %smem_len.i169.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 2
  %303 = ptrtoint ptr %smem_len.i169.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %smem_len.i169.i, align 4
  %bytes_per_scan_line.i170.i = getelementptr %struct.vbe_mode_ib, ptr %286, i32 %conv61.i, i32 8
  %305 = ptrtoint ptr %bytes_per_scan_line.i170.i to i32
  call void @__asan_loadN_noabort(i32 %305, i32 2)
  %306 = load i16, ptr %bytes_per_scan_line.i170.i, align 1
  %conv6.i171.i = zext i16 %306 to i32
  %div.i172.i = udiv i32 %304, %conv6.i171.i
  br label %cond.end.i186.i

cond.false.i175.i:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %307 = ptrtoint ptr %y_res.i162.i to i32
  call void @__asan_loadN_noabort(i32 %307, i32 2)
  %308 = load i16, ptr %y_res.i162.i, align 1
  %conv8.i174.i = zext i16 %308 to i32
  br label %cond.end.i186.i

cond.end.i186.i:                                  ; preds = %cond.false.i175.i, %cond.true.i173.i
  %cond.i176.i = phi i32 [ %div.i172.i, %cond.true.i173.i ], [ %conv8.i174.i, %cond.false.i175.i ]
  %yres_virtual.i177.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 3
  %309 = ptrtoint ptr %yres_virtual.i177.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %cond.i176.i, ptr %yres_virtual.i177.i, align 4
  %xoffset.i178.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 4
  %310 = ptrtoint ptr %xoffset.i178.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 0, ptr %xoffset.i178.i, align 4
  %yoffset.i179.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 5
  %311 = ptrtoint ptr %yoffset.i179.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 0, ptr %yoffset.i179.i, align 4
  %bits_per_pixel.i180.i = getelementptr %struct.vbe_mode_ib, ptr %286, i32 %conv61.i, i32 14
  %312 = ptrtoint ptr %bits_per_pixel.i180.i to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %bits_per_pixel.i180.i, align 1
  %bits_per_pixel10.i181.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %313)
  %cmp.i182.i = icmp eq i8 %313, 15
  %narrow.i183.i = select i1 %cmp.i182.i, i8 16, i8 %313
  %spec.select.i184.i = zext i8 %narrow.i183.i to i32
  %314 = ptrtoint ptr %bits_per_pixel10.i181.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %spec.select.i184.i, ptr %bits_per_pixel10.i181.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %narrow.i183.i)
  %cmp15.i185.i = icmp ugt i8 %narrow.i183.i, 8
  br i1 %cmp15.i185.i, label %if.then17.i210.i, label %if.else.i218.i

if.then17.i210.i:                                 ; preds = %cond.end.i186.i
  call void @__sanitizer_cov_trace_pc() #18
  %red_off.i187.i = getelementptr %struct.vbe_mode_ib, ptr %286, i32 %conv61.i, i32 21
  %315 = ptrtoint ptr %red_off.i187.i to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %red_off.i187.i, align 1
  %conv18.i188.i = zext i8 %316 to i32
  %red.i189.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 8
  %317 = ptrtoint ptr %red.i189.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %conv18.i188.i, ptr %red.i189.i, align 4
  %red_len.i190.i = getelementptr %struct.vbe_mode_ib, ptr %286, i32 %conv61.i, i32 20
  %318 = ptrtoint ptr %red_len.i190.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %red_len.i190.i, align 1
  %conv19.i191.i = zext i8 %319 to i32
  %length.i192.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 8, i32 1
  %320 = ptrtoint ptr %length.i192.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 %conv19.i191.i, ptr %length.i192.i, align 4
  %green_off.i193.i = getelementptr %struct.vbe_mode_ib, ptr %286, i32 %conv61.i, i32 23
  %321 = ptrtoint ptr %green_off.i193.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %green_off.i193.i, align 1
  %conv21.i194.i = zext i8 %322 to i32
  %green.i195.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 9
  %323 = ptrtoint ptr %green.i195.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %conv21.i194.i, ptr %green.i195.i, align 4
  %green_len.i196.i = getelementptr %struct.vbe_mode_ib, ptr %286, i32 %conv61.i, i32 22
  %324 = ptrtoint ptr %green_len.i196.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %green_len.i196.i, align 1
  %conv23.i197.i = zext i8 %325 to i32
  %length25.i198.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 9, i32 1
  %326 = ptrtoint ptr %length25.i198.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %conv23.i197.i, ptr %length25.i198.i, align 4
  %blue_off.i199.i = getelementptr %struct.vbe_mode_ib, ptr %286, i32 %conv61.i, i32 25
  %327 = ptrtoint ptr %blue_off.i199.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %blue_off.i199.i, align 1
  %conv26.i200.i = zext i8 %328 to i32
  %blue.i201.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 10
  %329 = ptrtoint ptr %blue.i201.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %conv26.i200.i, ptr %blue.i201.i, align 4
  %blue_len.i202.i = getelementptr %struct.vbe_mode_ib, ptr %286, i32 %conv61.i, i32 24
  %330 = ptrtoint ptr %blue_len.i202.i to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %blue_len.i202.i, align 1
  %conv28.i203.i = zext i8 %331 to i32
  %length30.i204.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 10, i32 1
  %332 = ptrtoint ptr %length30.i204.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %conv28.i203.i, ptr %length30.i204.i, align 4
  %rsvd_off.i205.i = getelementptr %struct.vbe_mode_ib, ptr %286, i32 %conv61.i, i32 27
  %333 = ptrtoint ptr %rsvd_off.i205.i to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %rsvd_off.i205.i, align 1
  %conv31.i206.i = zext i8 %334 to i32
  %transp.i207.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 11
  %335 = ptrtoint ptr %transp.i207.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %conv31.i206.i, ptr %transp.i207.i, align 4
  %rsvd_len.i208.i = getelementptr %struct.vbe_mode_ib, ptr %286, i32 %conv61.i, i32 26
  %336 = ptrtoint ptr %rsvd_len.i208.i to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %rsvd_len.i208.i, align 1
  %conv33.i209.i = zext i8 %337 to i32
  br label %uvesafb_setup_var.exit220.i

if.else.i218.i:                                   ; preds = %cond.end.i186.i
  call void @__sanitizer_cov_trace_pc() #18
  %red36.i211.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 8
  %338 = ptrtoint ptr %red36.i211.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 0, ptr %red36.i211.i, align 4
  %green38.i212.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 9
  %339 = ptrtoint ptr %green38.i212.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 0, ptr %green38.i212.i, align 4
  %blue40.i213.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 10
  %340 = ptrtoint ptr %blue40.i213.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 0, ptr %blue40.i213.i, align 4
  %transp42.i214.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 11
  %341 = ptrtoint ptr %transp42.i214.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 0, ptr %transp42.i214.i, align 4
  %length45.i215.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 8, i32 1
  %342 = ptrtoint ptr %length45.i215.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 8, ptr %length45.i215.i, align 4
  %length47.i216.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 9, i32 1
  %343 = ptrtoint ptr %length47.i216.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 8, ptr %length47.i216.i, align 4
  %length49.i217.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 10, i32 1
  %344 = ptrtoint ptr %length49.i217.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 8, ptr %length49.i217.i, align 4
  br label %uvesafb_setup_var.exit220.i

uvesafb_setup_var.exit220.i:                      ; preds = %if.else.i218.i, %if.then17.i210.i
  %.sink.i219.i = phi i32 [ %conv33.i209.i, %if.then17.i210.i ], [ 0, %if.else.i218.i ]
  %345 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 11, i32 1
  %346 = ptrtoint ptr %345 to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 %.sink.i219.i, ptr %345, align 4
  %call66.i = call i32 @fb_get_mode(i32 noundef 257, i32 noundef 60, ptr noundef %var50.i, ptr noundef %call) #16
  br label %gotmode.i

if.end68.i:                                       ; preds = %if.then56.i, %if.end46.i.if.end68.i_crit_edge, %for.end22.i.if.end68.i_crit_edge
  %var69.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6
  %347 = ptrtoint ptr %var69.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %var69.i, align 4
  %yres72.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 1
  %349 = ptrtoint ptr %yres72.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %yres72.i, align 4
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 6
  %351 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %bits_per_pixel.i, align 4
  %vbe_modes_cnt.i.i157 = getelementptr inbounds %struct.uvesafb_par, ptr %209, i32 0, i32 2
  %353 = ptrtoint ptr %vbe_modes_cnt.i.i157 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %vbe_modes_cnt.i.i157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %354)
  %cmp104.i.i = icmp sgt i32 %354, 0
  br i1 %cmp104.i.i, label %for.body.lr.ph.i.i159, label %if.end68.i.out_crit_edge

if.end68.i.out_crit_edge:                         ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

for.body.lr.ph.i.i159:                            ; preds = %if.end68.i
  %vbe_modes.i.i158 = getelementptr inbounds %struct.uvesafb_par, ptr %209, i32 0, i32 1
  %355 = ptrtoint ptr %vbe_modes.i.i158 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %vbe_modes.i.i158, align 4
  br label %for.body.i.i161

for.body.i.i161:                                  ; preds = %for.inc.i.i.for.body.i.i161_crit_edge, %for.body.lr.ph.i.i159
  %i.0107.i.i = phi i32 [ 0, %for.body.lr.ph.i.i159 ], [ %inc.i.i164, %for.inc.i.i.for.body.i.i161_crit_edge ]
  %match.0106.i.i = phi i32 [ -1, %for.body.lr.ph.i.i159 ], [ %match.1.i.i, %for.inc.i.i.for.body.i.i161_crit_edge ]
  %d.0105.i.i = phi i32 [ 2147483647, %for.body.lr.ph.i.i159 ], [ %d.1.i.i, %for.inc.i.i.for.body.i.i161_crit_edge ]
  %x_res.i221.i = getelementptr %struct.vbe_mode_ib, ptr %356, i32 %i.0107.i.i, i32 9
  %357 = ptrtoint ptr %x_res.i221.i to i32
  call void @__asan_loadN_noabort(i32 %357, i32 2)
  %358 = load i16, ptr %x_res.i221.i, align 1
  %conv.i222.i = zext i16 %358 to i32
  %sub.i.i = sub i32 %conv.i222.i, %348
  %359 = call i32 @llvm.abs.i32(i32 %sub.i.i, i1 false) #16
  %y_res.i223.i = getelementptr %struct.vbe_mode_ib, ptr %356, i32 %i.0107.i.i, i32 10
  %360 = ptrtoint ptr %y_res.i223.i to i32
  call void @__asan_loadN_noabort(i32 %360, i32 2)
  %361 = load i16, ptr %y_res.i223.i, align 1
  %conv7.i.i = zext i16 %361 to i32
  %sub8.i.i = sub i32 %conv7.i.i, %350
  %362 = call i32 @llvm.abs.i32(i32 %sub8.i.i, i1 false) #16
  %add.i.i160 = add i32 %362, %359
  %depth20.i.i = getelementptr %struct.vbe_mode_ib, ptr %356, i32 %i.0107.i.i, i32 44
  %363 = ptrtoint ptr %depth20.i.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %depth20.i.i, align 1
  %conv21.i224.i = zext i8 %364 to i32
  %sub22.i.i = sub i32 %352, %conv21.i224.i
  %365 = call i32 @llvm.abs.i32(i32 %sub22.i.i, i1 false) #16
  %add31.i.i = add i32 %add.i.i160, %365
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add31.i.i)
  %cmp32.i.i = icmp eq i32 %add31.i.i, 0
  br i1 %cmp32.i.i, label %for.body.i.i161.if.end78.i_crit_edge, label %if.end.i.i162

for.body.i.i161.if.end78.i_crit_edge:             ; preds = %for.body.i.i161
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end78.i

if.end.i.i162:                                    ; preds = %for.body.i.i161
  call void @__sanitizer_cov_trace_cmp4(i32 %add31.i.i, i32 %d.0105.i.i)
  %cmp34.i.i = icmp slt i32 %add31.i.i, %d.0105.i.i
  br i1 %cmp34.i.i, label %if.end.i.i162.if.then44.i.i_crit_edge, label %lor.lhs.false.i.i163

if.end.i.i162.if.then44.i.i_crit_edge:            ; preds = %if.end.i.i162
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then44.i.i

lor.lhs.false.i.i163:                             ; preds = %if.end.i.i162
  call void @__sanitizer_cov_trace_cmp4(i32 %add31.i.i, i32 %d.0105.i.i)
  %cmp36.i.i = icmp eq i32 %add31.i.i, %d.0105.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %352, i32 %conv21.i224.i)
  %cmp42.i.i = icmp slt i32 %352, %conv21.i224.i
  %or.cond99.i.i = select i1 %cmp36.i.i, i1 %cmp42.i.i, i1 false
  br i1 %or.cond99.i.i, label %lor.lhs.false.i.i163.if.then44.i.i_crit_edge, label %lor.lhs.false.i.i163.for.inc.i.i_crit_edge

lor.lhs.false.i.i163.for.inc.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i163
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

lor.lhs.false.i.i163.if.then44.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i163
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then44.i.i

if.then44.i.i:                                    ; preds = %lor.lhs.false.i.i163.if.then44.i.i_crit_edge, %if.end.i.i162.if.then44.i.i_crit_edge
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then44.i.i, %lor.lhs.false.i.i163.for.inc.i.i_crit_edge
  %d.1.i.i = phi i32 [ %add31.i.i, %if.then44.i.i ], [ %d.0105.i.i, %lor.lhs.false.i.i163.for.inc.i.i_crit_edge ]
  %match.1.i.i = phi i32 [ %i.0107.i.i, %if.then44.i.i ], [ %match.0106.i.i, %lor.lhs.false.i.i163.for.inc.i.i_crit_edge ]
  %inc.i.i164 = add nuw nsw i32 %i.0107.i.i, 1
  %exitcond.not.i.i165 = icmp eq i32 %inc.i.i164, %354
  br i1 %exitcond.not.i.i165, label %for.end.i.i, label %for.inc.i.i.for.body.i.i161_crit_edge

for.inc.i.i.for.body.i.i161_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i161

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %d.1.i.i)
  %cmp60.i.i = icmp sgt i32 %d.1.i.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %match.1.i.i)
  %cmp75.i = icmp eq i32 %match.1.i.i, -1
  %or.cond.i = select i1 %cmp60.i.i, i1 true, i1 %cmp75.i
  br i1 %or.cond.i, label %for.end.i.i.out_crit_edge, label %for.end.i.i.if.end78.i_crit_edge

for.end.i.i.if.end78.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end78.i

for.end.i.i.out_crit_edge:                        ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end78.i:                                       ; preds = %for.end.i.i.if.end78.i_crit_edge, %for.body.i.i161.if.end78.i_crit_edge
  %retval.0.i301.i = phi i32 [ %match.1.i.i, %for.end.i.i.if.end78.i_crit_edge ], [ %i.0107.i.i, %for.body.i.i161.if.end78.i_crit_edge ]
  %366 = ptrtoint ptr %par2 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %par2, align 4
  %vmode.i226.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 25
  %368 = ptrtoint ptr %vmode.i226.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 0, ptr %vmode.i226.i, align 4
  %sync.i227.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 24
  %369 = ptrtoint ptr %sync.i227.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 2, ptr %sync.i227.i, align 4
  %x_res.i228.i = getelementptr %struct.vbe_mode_ib, ptr %356, i32 %retval.0.i301.i, i32 9
  %370 = ptrtoint ptr %x_res.i228.i to i32
  call void @__asan_loadN_noabort(i32 %370, i32 2)
  %371 = load i16, ptr %x_res.i228.i, align 1
  %conv.i229.i = zext i16 %371 to i32
  %372 = ptrtoint ptr %var69.i to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 %conv.i229.i, ptr %var69.i, align 4
  %y_res.i230.i = getelementptr %struct.vbe_mode_ib, ptr %356, i32 %retval.0.i301.i, i32 10
  %373 = ptrtoint ptr %y_res.i230.i to i32
  call void @__asan_loadN_noabort(i32 %373, i32 2)
  %374 = load i16, ptr %y_res.i230.i, align 1
  %conv2.i231.i = zext i16 %374 to i32
  %375 = ptrtoint ptr %yres72.i to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 %conv2.i231.i, ptr %yres72.i, align 4
  %376 = load i16, ptr %x_res.i228.i, align 1
  %conv4.i233.i = zext i16 %376 to i32
  %xres_virtual.i234.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 2
  %377 = ptrtoint ptr %xres_virtual.i234.i to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 %conv4.i233.i, ptr %xres_virtual.i234.i, align 4
  %ypan.i235.i = getelementptr inbounds %struct.uvesafb_par, ptr %367, i32 0, i32 4
  %378 = ptrtoint ptr %ypan.i235.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %ypan.i235.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %379)
  %tobool.not.i236.i = icmp eq i8 %379, 0
  br i1 %tobool.not.i236.i, label %cond.false.i243.i, label %cond.true.i241.i

cond.true.i241.i:                                 ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #18
  %smem_len.i237.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 2
  %380 = ptrtoint ptr %smem_len.i237.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %smem_len.i237.i, align 4
  %bytes_per_scan_line.i238.i = getelementptr %struct.vbe_mode_ib, ptr %356, i32 %retval.0.i301.i, i32 8
  %382 = ptrtoint ptr %bytes_per_scan_line.i238.i to i32
  call void @__asan_loadN_noabort(i32 %382, i32 2)
  %383 = load i16, ptr %bytes_per_scan_line.i238.i, align 1
  %conv6.i239.i = zext i16 %383 to i32
  %div.i240.i = udiv i32 %381, %conv6.i239.i
  br label %cond.end.i254.i

cond.false.i243.i:                                ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #18
  %384 = ptrtoint ptr %y_res.i230.i to i32
  call void @__asan_loadN_noabort(i32 %384, i32 2)
  %385 = load i16, ptr %y_res.i230.i, align 1
  %conv8.i242.i = zext i16 %385 to i32
  br label %cond.end.i254.i

cond.end.i254.i:                                  ; preds = %cond.false.i243.i, %cond.true.i241.i
  %cond.i244.i = phi i32 [ %div.i240.i, %cond.true.i241.i ], [ %conv8.i242.i, %cond.false.i243.i ]
  %yres_virtual.i245.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 3
  %386 = ptrtoint ptr %yres_virtual.i245.i to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 %cond.i244.i, ptr %yres_virtual.i245.i, align 4
  %xoffset.i246.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 4
  %387 = ptrtoint ptr %xoffset.i246.i to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 0, ptr %xoffset.i246.i, align 4
  %yoffset.i247.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 5
  %388 = ptrtoint ptr %yoffset.i247.i to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 0, ptr %yoffset.i247.i, align 4
  %bits_per_pixel.i248.i = getelementptr %struct.vbe_mode_ib, ptr %356, i32 %retval.0.i301.i, i32 14
  %389 = ptrtoint ptr %bits_per_pixel.i248.i to i32
  call void @__asan_load1_noabort(i32 %389)
  %390 = load i8, ptr %bits_per_pixel.i248.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %390)
  %cmp.i250.i = icmp eq i8 %390, 15
  %narrow.i251.i = select i1 %cmp.i250.i, i8 16, i8 %390
  %spec.select.i252.i = zext i8 %narrow.i251.i to i32
  %391 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %spec.select.i252.i, ptr %bits_per_pixel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %narrow.i251.i)
  %cmp15.i253.i = icmp ugt i8 %narrow.i251.i, 8
  br i1 %cmp15.i253.i, label %if.then17.i278.i, label %if.else.i286.i

if.then17.i278.i:                                 ; preds = %cond.end.i254.i
  call void @__sanitizer_cov_trace_pc() #18
  %red_off.i255.i = getelementptr %struct.vbe_mode_ib, ptr %356, i32 %retval.0.i301.i, i32 21
  %392 = ptrtoint ptr %red_off.i255.i to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %red_off.i255.i, align 1
  %conv18.i256.i = zext i8 %393 to i32
  %red.i257.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 8
  %394 = ptrtoint ptr %red.i257.i to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 %conv18.i256.i, ptr %red.i257.i, align 4
  %red_len.i258.i = getelementptr %struct.vbe_mode_ib, ptr %356, i32 %retval.0.i301.i, i32 20
  %395 = ptrtoint ptr %red_len.i258.i to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %red_len.i258.i, align 1
  %conv19.i259.i = zext i8 %396 to i32
  %length.i260.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 8, i32 1
  %397 = ptrtoint ptr %length.i260.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 %conv19.i259.i, ptr %length.i260.i, align 4
  %green_off.i261.i = getelementptr %struct.vbe_mode_ib, ptr %356, i32 %retval.0.i301.i, i32 23
  %398 = ptrtoint ptr %green_off.i261.i to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %green_off.i261.i, align 1
  %conv21.i262.i = zext i8 %399 to i32
  %green.i263.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 9
  %400 = ptrtoint ptr %green.i263.i to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 %conv21.i262.i, ptr %green.i263.i, align 4
  %green_len.i264.i = getelementptr %struct.vbe_mode_ib, ptr %356, i32 %retval.0.i301.i, i32 22
  %401 = ptrtoint ptr %green_len.i264.i to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %green_len.i264.i, align 1
  %conv23.i265.i = zext i8 %402 to i32
  %length25.i266.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 9, i32 1
  %403 = ptrtoint ptr %length25.i266.i to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 %conv23.i265.i, ptr %length25.i266.i, align 4
  %blue_off.i267.i = getelementptr %struct.vbe_mode_ib, ptr %356, i32 %retval.0.i301.i, i32 25
  %404 = ptrtoint ptr %blue_off.i267.i to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %blue_off.i267.i, align 1
  %conv26.i268.i = zext i8 %405 to i32
  %blue.i269.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 10
  %406 = ptrtoint ptr %blue.i269.i to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 %conv26.i268.i, ptr %blue.i269.i, align 4
  %blue_len.i270.i = getelementptr %struct.vbe_mode_ib, ptr %356, i32 %retval.0.i301.i, i32 24
  %407 = ptrtoint ptr %blue_len.i270.i to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %blue_len.i270.i, align 1
  %conv28.i271.i = zext i8 %408 to i32
  %length30.i272.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 10, i32 1
  %409 = ptrtoint ptr %length30.i272.i to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 %conv28.i271.i, ptr %length30.i272.i, align 4
  %rsvd_off.i273.i = getelementptr %struct.vbe_mode_ib, ptr %356, i32 %retval.0.i301.i, i32 27
  %410 = ptrtoint ptr %rsvd_off.i273.i to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %rsvd_off.i273.i, align 1
  %conv31.i274.i = zext i8 %411 to i32
  %transp.i275.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 11
  %412 = ptrtoint ptr %transp.i275.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 %conv31.i274.i, ptr %transp.i275.i, align 4
  %rsvd_len.i276.i = getelementptr %struct.vbe_mode_ib, ptr %356, i32 %retval.0.i301.i, i32 26
  %413 = ptrtoint ptr %rsvd_len.i276.i to i32
  call void @__asan_load1_noabort(i32 %413)
  %414 = load i8, ptr %rsvd_len.i276.i, align 1
  %conv33.i277.i = zext i8 %414 to i32
  br label %uvesafb_setup_var.exit288.i

if.else.i286.i:                                   ; preds = %cond.end.i254.i
  call void @__sanitizer_cov_trace_pc() #18
  %red36.i279.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 8
  %415 = ptrtoint ptr %red36.i279.i to i32
  call void @__asan_store4_noabort(i32 %415)
  store i32 0, ptr %red36.i279.i, align 4
  %green38.i280.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 9
  %416 = ptrtoint ptr %green38.i280.i to i32
  call void @__asan_store4_noabort(i32 %416)
  store i32 0, ptr %green38.i280.i, align 4
  %blue40.i281.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 10
  %417 = ptrtoint ptr %blue40.i281.i to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 0, ptr %blue40.i281.i, align 4
  %transp42.i282.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 11
  %418 = ptrtoint ptr %transp42.i282.i to i32
  call void @__asan_store4_noabort(i32 %418)
  store i32 0, ptr %transp42.i282.i, align 4
  %length45.i283.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 8, i32 1
  %419 = ptrtoint ptr %length45.i283.i to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 8, ptr %length45.i283.i, align 4
  %length47.i284.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 9, i32 1
  %420 = ptrtoint ptr %length47.i284.i to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 8, ptr %length47.i284.i, align 4
  %length49.i285.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 10, i32 1
  %421 = ptrtoint ptr %length49.i285.i to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 8, ptr %length49.i285.i, align 4
  br label %uvesafb_setup_var.exit288.i

uvesafb_setup_var.exit288.i:                      ; preds = %if.else.i286.i, %if.then17.i278.i
  %.sink.i287.i = phi i32 [ %conv33.i277.i, %if.then17.i278.i ], [ 0, %if.else.i286.i ]
  %422 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 11, i32 1
  %423 = ptrtoint ptr %422 to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 %.sink.i287.i, ptr %422, align 4
  br label %gotmode.i

gotmode.i:                                        ; preds = %uvesafb_setup_var.exit288.i, %uvesafb_setup_var.exit220.i, %uvesafb_setup_var.exit.i
  %modeid.0.i = phi i32 [ %i.0306.i, %uvesafb_setup_var.exit.i ], [ %retval.0.i301.i, %uvesafb_setup_var.exit288.i ], [ %conv61.i, %uvesafb_setup_var.exit220.i ]
  %vbe_version.i = getelementptr inbounds %struct.vbe_ib, ptr %209, i32 0, i32 1
  %424 = ptrtoint ptr %vbe_version.i to i32
  call void @__asan_load2_noabort(i32 %424)
  %425 = load i16, ptr %vbe_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %425)
  %cmp83.i = icmp ult i16 %425, 768
  br i1 %cmp83.i, label %gotmode.i.if.then87.i_crit_edge, label %lor.lhs.false.i

gotmode.i.if.then87.i_crit_edge:                  ; preds = %gotmode.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then87.i

lor.lhs.false.i:                                  ; preds = %gotmode.i
  %nocrtc.i166 = getelementptr inbounds %struct.uvesafb_par, ptr %209, i32 0, i32 3
  %426 = ptrtoint ptr %nocrtc.i166 to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %nocrtc.i166, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %427)
  %tobool86.not.i = icmp eq i8 %427, 0
  br i1 %tobool86.not.i, label %lor.lhs.false.i.uvesafb_vbe_init_mode.exit_crit_edge, label %lor.lhs.false.i.if.then87.i_crit_edge

lor.lhs.false.i.if.then87.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then87.i

lor.lhs.false.i.uvesafb_vbe_init_mode.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %uvesafb_vbe_init_mode.exit

if.then87.i:                                      ; preds = %lor.lhs.false.i.if.then87.i_crit_edge, %gotmode.i.if.then87.i_crit_edge
  %var88.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6
  %call89.i = call i32 @fb_get_mode(i32 noundef 257, i32 noundef 60, ptr noundef %var88.i, ptr noundef %call) #16
  br label %uvesafb_vbe_init_mode.exit

uvesafb_vbe_init_mode.exit:                       ; preds = %if.then87.i, %lor.lhs.false.i.uvesafb_vbe_init_mode.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %modeid.0.i)
  %cmp = icmp slt i32 %modeid.0.i, 0
  br i1 %cmp, label %uvesafb_vbe_init_mode.exit.out_crit_edge, label %if.else

uvesafb_vbe_init_mode.exit.out_crit_edge:         ; preds = %uvesafb_vbe_init_mode.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.else:                                          ; preds = %uvesafb_vbe_init_mode.exit
  %vbe_modes = getelementptr inbounds %struct.uvesafb_par, ptr %1, i32 0, i32 1
  %428 = ptrtoint ptr %vbe_modes to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %vbe_modes, align 4
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 12
  %call11 = call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.else.out_crit_edge, label %if.end14

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end14:                                         ; preds = %if.else
  %430 = ptrtoint ptr %par2 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %par2, align 4
  %add.ptr.i = getelementptr i8, ptr %431, i32 1132
  %pseudo_palette.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 27
  %432 = ptrtoint ptr %pseudo_palette.i to i32
  call void @__asan_store4_noabort(i32 %432)
  store ptr %add.ptr.i, ptr %pseudo_palette.i, align 4
  %fix.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7
  %433 = call ptr @memcpy(ptr %fix.i, ptr @uvesafb_fix, i32 68)
  %ypan.i169 = getelementptr inbounds %struct.uvesafb_par, ptr %431, i32 0, i32 4
  %434 = ptrtoint ptr %ypan.i169 to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %ypan.i169, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %435)
  %tobool.not.i170 = icmp ne i8 %435, 0
  %conv3.i = zext i1 %tobool.not.i170 to i16
  %ypanstep.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 7
  %436 = ptrtoint ptr %ypanstep.i to i32
  call void @__asan_store2_noabort(i32 %436)
  store i16 %conv3.i, ptr %ypanstep.i, align 2
  %437 = ptrtoint ptr %ypan.i169 to i32
  call void @__asan_load1_noabort(i32 %437)
  %438 = load i8, ptr %ypan.i169, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %438)
  %cmp.i = icmp ugt i8 %438, 1
  %conv9.i = zext i1 %cmp.i to i16
  %ywrapstep.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 8
  %439 = ptrtoint ptr %ywrapstep.i to i32
  call void @__asan_store2_noabort(i32 %439)
  store i16 %conv9.i, ptr %ywrapstep.i, align 4
  %440 = load i8, ptr @blank, align 1, !range !417
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %440)
  %tobool11.not.i = icmp eq i8 %440, 0
  br i1 %tobool11.not.i, label %if.then.i, label %if.end14.if.end.i172_crit_edge

if.end14.if.end.i172_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i172

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  store ptr null, ptr getelementptr inbounds (%struct.fb_ops, ptr @uvesafb_ops, i32 0, i32 9), align 4
  br label %if.end.i172

if.end.i172:                                      ; preds = %if.then.i, %if.end14.if.end.i172_crit_edge
  %vbe_modes_cnt.i171 = getelementptr inbounds %struct.uvesafb_par, ptr %431, i32 0, i32 2
  %441 = ptrtoint ptr %vbe_modes_cnt.i171 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %vbe_modes_cnt.i171, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %442)
  %cmp12136.i = icmp sgt i32 %442, 0
  br i1 %cmp12136.i, label %for.body.lr.ph.i174, label %if.end.i172.for.end.i_crit_edge

if.end.i172.for.end.i_crit_edge:                  ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.lr.ph.i174:                              ; preds = %if.end.i172
  %vbe_modes.i173 = getelementptr inbounds %struct.uvesafb_par, ptr %431, i32 0, i32 1
  %443 = ptrtoint ptr %vbe_modes.i173 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %vbe_modes.i173, align 4
  br label %for.body.i177

for.body.i177:                                    ; preds = %for.body.i177.for.body.i177_crit_edge, %for.body.lr.ph.i174
  %size_remap.0138.i = phi i32 [ 0, %for.body.lr.ph.i174 ], [ %449, %for.body.i177.for.body.i177_crit_edge ]
  %i.0137.i = phi i32 [ 0, %for.body.lr.ph.i174 ], [ %inc.i175, %for.body.i177.for.body.i177_crit_edge ]
  %bytes_per_scan_line.i = getelementptr %struct.vbe_mode_ib, ptr %444, i32 %i.0137.i, i32 8
  %445 = ptrtoint ptr %bytes_per_scan_line.i to i32
  call void @__asan_loadN_noabort(i32 %445, i32 2)
  %446 = load i16, ptr %bytes_per_scan_line.i, align 1
  %conv14.i = zext i16 %446 to i32
  %y_res.i = getelementptr %struct.vbe_mode_ib, ptr %444, i32 %i.0137.i, i32 10
  %447 = ptrtoint ptr %y_res.i to i32
  call void @__asan_loadN_noabort(i32 %447, i32 2)
  %448 = load i16, ptr %y_res.i, align 1
  %conv17.i = zext i16 %448 to i32
  %mul.i = mul nuw i32 %conv17.i, %conv14.i
  %449 = call i32 @llvm.umax.i32(i32 %mul.i, i32 %size_remap.0138.i) #16
  %inc.i175 = add nuw nsw i32 %i.0137.i, 1
  %exitcond.not.i176 = icmp eq i32 %inc.i175, %442
  br i1 %exitcond.not.i176, label %for.end.loopexit.i, label %for.body.i177.for.body.i177_crit_edge

for.body.i177.for.body.i177_crit_edge:            ; preds = %for.body.i177
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i177

for.end.loopexit.i:                               ; preds = %for.body.i177
  call void @__sanitizer_cov_trace_pc() #18
  %phi.bo.i = shl i32 %449, 1
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %if.end.i172.for.end.i_crit_edge
  %size_remap.0.lcssa.i = phi i32 [ 0, %if.end.i172.for.end.i_crit_edge ], [ %phi.bo.i, %for.end.loopexit.i ]
  %yres.i178 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 1
  %450 = ptrtoint ptr %yres.i178 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %yres.i178, align 4
  %bytes_per_scan_line23.i = getelementptr %struct.vbe_mode_ib, ptr %429, i32 %modeid.0.i, i32 8
  %452 = ptrtoint ptr %bytes_per_scan_line23.i to i32
  call void @__asan_loadN_noabort(i32 %452, i32 2)
  %453 = load i16, ptr %bytes_per_scan_line23.i, align 1
  %conv24.i = zext i16 %453 to i32
  %mul25.i = mul i32 %451, %conv24.i
  %total_memory.i = getelementptr inbounds %struct.vbe_ib, ptr %431, i32 0, i32 5
  %454 = ptrtoint ptr %total_memory.i to i32
  call void @__asan_load2_noabort(i32 %454)
  %455 = load i16, ptr %total_memory.i, align 2
  %conv26.i = zext i16 %455 to i32
  %mul27.i = shl nuw i32 %conv26.i, 16
  %456 = load i32, ptr @vram_total, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %456)
  %tobool28.not.i = icmp eq i32 %456, 0
  %mul31.i = shl i32 %456, 20
  %spec.select135.i = select i1 %tobool28.not.i, i32 %mul27.i, i32 %mul31.i
  %457 = call i32 @llvm.umax.i32(i32 %spec.select135.i, i32 %mul25.i) #16
  %458 = load i32, ptr @vram_remap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %458)
  %tobool37.not.i = icmp eq i32 %458, 0
  %mul40.i = shl i32 %458, 20
  %size_remap.2.i = select i1 %tobool37.not.i, i32 %size_remap.0.lcssa.i, i32 %mul40.i
  %459 = call i32 @llvm.umax.i32(i32 %size_remap.2.i, i32 %mul25.i) #16
  %460 = call i32 @llvm.umin.i32(i32 %459, i32 %457) #16
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 2
  %461 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_store4_noabort(i32 %461)
  store i32 %460, ptr %smem_len.i, align 4
  %phys_base_ptr.i = getelementptr %struct.vbe_mode_ib, ptr %429, i32 %modeid.0.i, i32 29
  %462 = ptrtoint ptr %phys_base_ptr.i to i32
  call void @__asan_loadN_noabort(i32 %462, i32 4)
  %463 = load i32, ptr %phys_base_ptr.i, align 1
  %smem_start.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 1
  %464 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_store4_noabort(i32 %464)
  store i32 %463, ptr %smem_start.i, align 4
  %465 = ptrtoint ptr %bytes_per_scan_line23.i to i32
  call void @__asan_loadN_noabort(i32 %465, i32 2)
  %466 = load i16, ptr %bytes_per_scan_line23.i, align 1
  %conv55.i = zext i16 %466 to i32
  %div.i = udiv i32 %460, %conv55.i
  %yres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 3
  %467 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %467)
  store i32 %div.i, ptr %yres_virtual.i, align 4
  %468 = ptrtoint ptr %ypan.i169 to i32
  call void @__asan_load1_noabort(i32 %468)
  %469 = load i8, ptr %ypan.i169, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %469)
  %tobool59.not.i = icmp ne i8 %469, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %451)
  %cmp64.i = icmp ugt i32 %div.i, %451
  %or.cond.i179 = select i1 %tobool59.not.i, i1 %cmp64.i, i1 false
  br i1 %or.cond.i179, label %do.end.i181, label %do.end76.i

do.end.i181:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %469)
  %cmp69.i = icmp ugt i8 %469, 1
  %cond71.i = select i1 %cmp69.i, ptr @.str.7, ptr @.str.6
  %call.i180 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef nonnull %cond71.i, i32 noundef %div.i) #20
  br label %if.end84.i

do.end76.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %call78.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124) #20
  %470 = ptrtoint ptr %yres.i178 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %yres.i178, align 4
  %472 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %472)
  store i32 %471, ptr %yres_virtual.i, align 4
  %473 = ptrtoint ptr %ypan.i169 to i32
  call void @__asan_store1_noabort(i32 %473)
  store i8 0, ptr %ypan.i169, align 1
  br label %if.end84.i

if.end84.i:                                       ; preds = %do.end76.i, %do.end.i181
  %474 = ptrtoint ptr %ypan.i169 to i32
  call void @__asan_load1_noabort(i32 %474)
  %475 = load i8, ptr %ypan.i169, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %475)
  %tobool87.not.i = icmp eq i8 %475, 0
  %cond88.i = select i1 %tobool87.not.i, i32 0, i32 8192
  %flags.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 2
  %476 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %476)
  store i32 %cond88.i, ptr %flags.i, align 4
  %477 = ptrtoint ptr %ypan.i169 to i32
  call void @__asan_load1_noabort(i32 %477)
  %478 = load i8, ptr %ypan.i169, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %478)
  %tobool90.not.i = icmp eq i8 %478, 0
  br i1 %tobool90.not.i, label %if.then91.i, label %if.end84.i.uvesafb_init_info.exit_crit_edge

if.end84.i.uvesafb_init_info.exit_crit_edge:      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %uvesafb_init_info.exit

if.then91.i:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #18
  store ptr null, ptr getelementptr inbounds (%struct.fb_ops, ptr @uvesafb_ops, i32 0, i32 10), align 4
  br label %uvesafb_init_info.exit

uvesafb_init_info.exit:                           ; preds = %if.then91.i, %if.end84.i.uvesafb_init_info.exit_crit_edge
  %call15 = call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef 960, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef 0) #16
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.end20, label %if.end23

do.end20:                                         ; preds = %uvesafb_init_info.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #20
  br label %out_mode

if.end23:                                         ; preds = %uvesafb_init_info.exit
  %479 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %smem_start.i, align 4
  %481 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %smem_len.i, align 4
  %call25 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %480, i32 noundef %482, ptr noundef nonnull @.str, i32 noundef 0) #16
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %do.end30, label %if.end35

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  %483 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %smem_start.i, align 4
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %484) #20
  br label %out_reg

if.end35:                                         ; preds = %if.end23
  %485 = ptrtoint ptr %par2 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %par2, align 4
  %487 = load i32, ptr @mtrr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %487)
  %tobool.not.i183 = icmp eq i32 %487, 0
  br i1 %tobool.not.i183, label %if.end35.uvesafb_init_mtrr.exit_crit_edge, label %land.lhs.true.i

if.end35.uvesafb_init_mtrr.exit_crit_edge:        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %uvesafb_init_mtrr.exit

land.lhs.true.i:                                  ; preds = %if.end35
  %488 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %smem_start.i, align 4
  %and.i = and i32 %489, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.then.i185, label %land.lhs.true.i.uvesafb_init_mtrr.exit_crit_edge

land.lhs.true.i.uvesafb_init_mtrr.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %uvesafb_init_mtrr.exit

if.then.i185:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %mtrr_handle.i = getelementptr inbounds %struct.uvesafb_par, ptr %486, i32 0, i32 15
  %490 = ptrtoint ptr %mtrr_handle.i to i32
  call void @__asan_store4_noabort(i32 %490)
  store i32 0, ptr %mtrr_handle.i, align 4
  br label %uvesafb_init_mtrr.exit

uvesafb_init_mtrr.exit:                           ; preds = %if.then.i185, %land.lhs.true.i.uvesafb_init_mtrr.exit_crit_edge, %if.end35.uvesafb_init_mtrr.exit_crit_edge
  %491 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load i32, ptr %smem_start.i, align 4
  %493 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %smem_len.i, align 4
  %call.i188 = call ptr @ioremap_wc(i32 noundef %492, i32 noundef %494) #16
  %495 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 25
  %496 = ptrtoint ptr %495 to i32
  call void @__asan_store4_noabort(i32 %496)
  store ptr %call.i188, ptr %495, align 4
  %tobool36.not = icmp eq ptr %call.i188, null
  br i1 %tobool36.not, label %do.end40, label %if.end47

do.end40:                                         ; preds = %uvesafb_init_mtrr.exit
  call void @__sanitizer_cov_trace_pc() #18
  %497 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %smem_len.i, align 4
  %499 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %smem_start.i, align 4
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %498, i32 noundef %500) #20
  br label %out_mem

if.end47:                                         ; preds = %uvesafb_init_mtrr.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %501 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %501)
  store ptr %call, ptr %driver_data.i.i, align 4
  %call48 = call i32 @register_framebuffer(ptr noundef nonnull %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %do.end53, label %do.end59

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #20
  %502 = ptrtoint ptr %495 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %495, align 4
  call void @iounmap(ptr noundef %503) #16
  br label %out_mem

do.end59:                                         ; preds = %if.end47
  %504 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %smem_start.i, align 4
  %506 = ptrtoint ptr %495 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %495, align 4
  %508 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %smem_len.i, align 4
  %div137 = lshr i32 %509, 10
  %total_memory = getelementptr inbounds %struct.vbe_ib, ptr %1, i32 0, i32 5
  %510 = ptrtoint ptr %total_memory to i32
  call void @__asan_load2_noabort(i32 %510)
  %511 = load i16, ptr %total_memory, align 2
  %conv = zext i16 %511 to i32
  %mul = shl nuw nsw i32 %conv, 6
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %505, ptr noundef %507, i32 noundef %div137, i32 noundef %mul) #20
  %node = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 1
  %512 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %node, align 4
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %513, ptr noundef %fix.i) #20
  %call73 = call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @uvesafb_dev_attgrp) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74.not = icmp eq i32 %call73, 0
  br i1 %cmp74.not, label %do.end59.cleanup_crit_edge, label %do.end79

do.end59.cleanup_crit_edge:                       ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end79:                                         ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #18
  %514 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %node, align 4
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %515) #20
  br label %cleanup

out_mem:                                          ; preds = %do.end53, %do.end40
  %err.0 = phi i32 [ -22, %do.end53 ], [ -5, %do.end40 ]
  %516 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %smem_start.i, align 4
  %518 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %smem_len.i, align 4
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %517, i32 noundef %519) #16
  br label %out_reg

out_reg:                                          ; preds = %out_mem, %do.end30
  %err.1 = phi i32 [ %err.0, %out_mem ], [ -5, %do.end30 ]
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef 960, i32 noundef 32) #16
  br label %out_mode

out_mode:                                         ; preds = %out_reg, %do.end20
  %err.2 = phi i32 [ %err.1, %out_reg ], [ -5, %do.end20 ]
  %modelist = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 13
  %520 = ptrtoint ptr %modelist to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load volatile ptr, ptr %modelist, align 4
  %cmp.i189.not = icmp eq ptr %521, %modelist
  br i1 %cmp.i189.not, label %out_mode.if.end92_crit_edge, label %if.then90

out_mode.if.end92_crit_edge:                      ; preds = %out_mode
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end92

if.then90:                                        ; preds = %out_mode
  call void @__sanitizer_cov_trace_pc() #18
  call void @fb_destroy_modelist(ptr noundef %modelist) #16
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %out_mode.if.end92_crit_edge
  %modedb = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8, i32 1
  %522 = ptrtoint ptr %modedb to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %modedb, align 4
  call void @fb_destroy_modedb(ptr noundef %523) #16
  call void @fb_dealloc_cmap(ptr noundef %cmap) #16
  br label %out

out:                                              ; preds = %if.end92, %if.else.out_crit_edge, %uvesafb_vbe_init_mode.exit.out_crit_edge, %for.end.i.i.out_crit_edge, %if.end68.i.out_crit_edge, %do.end
  %err.3 = phi i32 [ %retval.0.i192, %do.end ], [ %err.2, %if.end92 ], [ -22, %uvesafb_vbe_init_mode.exit.out_crit_edge ], [ -6, %if.else.out_crit_edge ], [ -22, %for.end.i.i.out_crit_edge ], [ -22, %if.end68.i.out_crit_edge ]
  %vbe_modes94 = getelementptr inbounds %struct.uvesafb_par, ptr %1, i32 0, i32 1
  %524 = ptrtoint ptr %vbe_modes94 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %vbe_modes94, align 4
  call void @kfree(ptr noundef %525) #16
  call void @framebuffer_release(ptr noundef nonnull %call) #16
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end79, %do.end59.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %out ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end79 ], [ 0, %do.end59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvesafb_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  tail call void @sysfs_remove_group(ptr noundef %dev2, ptr noundef nonnull @uvesafb_dev_attgrp) #16
  tail call void @unregister_framebuffer(ptr noundef nonnull %1) #16
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef 960, i32 noundef 32) #16
  %4 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  tail call void @iounmap(ptr noundef %6) #16
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %smem_start, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %smem_len, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %8, i32 noundef %10) #16
  %modedb = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %modedb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %modedb, align 4
  tail call void @fb_destroy_modedb(ptr noundef %12) #16
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #16
  %vbe_modes = getelementptr inbounds %struct.uvesafb_par, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %vbe_modes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vbe_modes, align 4
  tail call void @kfree(ptr noundef %14) #16
  %vbe_state_orig = getelementptr inbounds %struct.uvesafb_par, ptr %3, i32 0, i32 9
  %15 = ptrtoint ptr %vbe_state_orig to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vbe_state_orig, align 4
  tail call void @kfree(ptr noundef %16) #16
  %vbe_state_saved = getelementptr inbounds %struct.uvesafb_par, ptr %3, i32 0, i32 10
  %17 = ptrtoint ptr %vbe_state_saved to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vbe_state_saved, align 4
  tail call void @kfree(ptr noundef %18) #16
  tail call void @framebuffer_release(ptr noundef nonnull %1) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_destroy_modelist(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_destroy_modedb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uvesafb_exec(ptr noundef %task) unnamed_addr #0 align 64 {
entry:
  %envp.i = alloca [3 x ptr], align 4
  %argv.i = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_len = getelementptr inbounds %struct.uvesafb_task, ptr %task, i32 0, i32 1
  %0 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf_len, align 4
  %add1 = add i32 %1, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add1)
  %cmp = icmp ugt i32 %add1, 16384
  br i1 %cmp, label %do.end, label %if.end8.i.i

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %add1) #20
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add1, i32 noundef 3520) #22
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end6

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %if.end8.i.i
  %done = getelementptr inbounds %struct.uvesafb_ktask, ptr %task, i32 0, i32 2
  %2 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %done, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %3, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %3, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @init_completion.__key) #16
  %5 = load i64, ptr @uvesafb_cn_id, align 8
  %6 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %call9.i.i, align 128
  %7 = load i32, ptr @uvesafb_exec.seq, align 4
  %seq = getelementptr inbounds %struct.cn_msg, ptr %call9.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %seq, align 8
  %9 = trunc i32 %1 to i16
  %conv = add nsw i16 %9, 60
  %len7 = getelementptr inbounds %struct.cn_msg, ptr %call9.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %len7, align 16
  %call8 = tail call i32 @prandom_u32() #16
  %ack = getelementptr inbounds %struct.cn_msg, ptr %call9.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %ack to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call8, ptr %ack, align 4
  %add.ptr = getelementptr %struct.cn_msg, ptr %call9.i.i, i32 1
  %12 = call ptr @memcpy(ptr %add.ptr, ptr %task, i32 60)
  %add.ptr11 = getelementptr %struct.cn_msg, ptr %call9.i.i, i32 4
  %buf = getelementptr inbounds %struct.uvesafb_ktask, ptr %task, i32 0, i32 1
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf, align 4
  %15 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buf_len, align 4
  %17 = call ptr @memcpy(ptr %add.ptr11, ptr %14, i32 %16)
  %ack15 = getelementptr inbounds %struct.uvesafb_ktask, ptr %task, i32 0, i32 3
  %18 = ptrtoint ptr %ack15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call8, ptr %ack15, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @uvfb_lock, i32 noundef 0) #16
  %19 = load i32, ptr @uvesafb_exec.seq, align 4
  %arrayidx = getelementptr [16 x ptr], ptr @uvfb_tasks, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %tobool16.not = icmp eq ptr %21, null
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mutex_unlock(ptr noundef nonnull @uvfb_lock) #16
  br label %out

if.end18:                                         ; preds = %if.end6
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %task, ptr %arrayidx, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @uvfb_lock) #16
  %call20 = tail call i32 @cn_netlink_send(ptr noundef nonnull %call9.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 3264) #16
  %23 = zext i32 %call20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %call20, label %if.end18.if.end49_crit_edge [
    i32 -3, label %if.then23
    i32 -105, label %if.end18.land.lhs.true_crit_edge
  ]

if.end18.land.lhs.true_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

if.end18.if.end49_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49

if.then23:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %envp.i) #16
  %24 = call ptr @memcpy(ptr %envp.i, ptr @__const.uvesafb_helper_start.envp, i32 12)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %argv.i) #16
  %25 = load i64, ptr @__const.uvesafb_helper_start.argv, align 8
  %26 = ptrtoint ptr %argv.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %argv.i, align 8
  %call.i = call i32 @call_usermodehelper(ptr noundef nonnull @v86d_path, ptr noundef nonnull %argv.i, ptr noundef nonnull %envp.i, i32 noundef 2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %argv.i) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %envp.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  br i1 %tobool25.not, label %if.else, label %if.end49.thread106

if.end49.thread106:                               ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @v86d_path) #20
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #20
  br label %if.end59

if.else:                                          ; preds = %if.then23
  store i1 true, ptr @v86d_started, align 1
  %27 = call i32 @llvm.read_register.i32(metadata !406) #16
  %and.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %30, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 3264, i32 2592
  %call38 = call i32 @cn_netlink_send(ptr noundef nonnull %call9.i.i, i32 noundef 0, i32 noundef 0, i32 noundef %cond.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -105, i32 %call38)
  %cmp39 = icmp eq i32 %call38, -105
  br i1 %cmp39, label %if.else.land.lhs.true_crit_edge, label %if.else.if.end49_crit_edge

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49

if.else.land.lhs.true_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

if.end49:                                         ; preds = %if.else.if.end49_crit_edge, %if.end18.if.end49_crit_edge
  %err.0 = phi i32 [ %call38, %if.else.if.end49_crit_edge ], [ %call20, %if.end18.if.end49_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool50.not = icmp eq i32 %err.0, 0
  br i1 %tobool50.not, label %if.end49.land.lhs.true_crit_edge, label %if.end49.if.end59_crit_edge

if.end49.if.end59_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59

if.end49.land.lhs.true_crit_edge:                 ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end49.land.lhs.true_crit_edge, %if.else.land.lhs.true_crit_edge, %if.end18.land.lhs.true_crit_edge
  %31 = ptrtoint ptr %task to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %task, align 4
  %33 = and i8 %32, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool53.not = icmp eq i8 %33, 0
  br i1 %tobool53.not, label %if.then54, label %land.lhs.true.if.end59_crit_edge

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59

if.then54:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %done, align 4
  %call57 = call i32 @wait_for_completion_timeout(ptr noundef %35, i32 noundef 500) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  %lnot.ext = zext i1 %tobool58.not to i32
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %land.lhs.true.if.end59_crit_edge, %if.end49.if.end59_crit_edge, %if.end49.thread106
  %err.1 = phi i32 [ %err.0, %if.end49.if.end59_crit_edge ], [ 0, %land.lhs.true.if.end59_crit_edge ], [ %lnot.ext, %if.then54 ], [ %call.i, %if.end49.thread106 ]
  call void @mutex_lock_nested(ptr noundef nonnull @uvfb_lock, i32 noundef 0) #16
  %36 = load i32, ptr @uvesafb_exec.seq, align 4
  %arrayidx60 = getelementptr [16 x ptr], ptr @uvfb_tasks, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %arrayidx60, align 4
  call void @mutex_unlock(ptr noundef nonnull @uvfb_lock) #16
  %38 = load i32, ptr @uvesafb_exec.seq, align 4
  %inc = add i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc)
  %cmp61 = icmp sgt i32 %inc, 15
  %spec.store.select68 = select i1 %cmp61, i32 0, i32 %inc
  store i32 %spec.store.select68, ptr @uvesafb_exec.seq, align 4
  br label %out

out:                                              ; preds = %if.end59, %if.then17
  %err.2 = phi i32 [ -16, %if.then17 ], [ %err.1, %if.end59 ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8.i.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -7, %do.end ], [ %err.2, %out ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cn_netlink_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_usermodehelper(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_mode(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_var_to_videomode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_add_videomode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uvesafb_is_valid_mode(ptr noundef %mode, ptr noundef %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %gtf = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 21
  %0 = ptrtoint ptr %gtf to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %gtf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then:                                          ; preds = %entry
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  tail call void @fb_videomode_to_var(ptr noundef %var, ptr noundef %mode) #16
  %call = tail call i32 @fb_validate_mode(ptr noundef %var, ptr noundef %info) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %1 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %par, align 4
  %xres = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 2
  %3 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %xres, align 4
  %yres = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 3
  %5 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %yres, align 4
  %vbe_modes_cnt.i = getelementptr inbounds %struct.uvesafb_par, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %vbe_modes_cnt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vbe_modes_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp104.i = icmp sgt i32 %8, 0
  br i1 %cmp104.i, label %for.body.lr.ph.i, label %if.end4.uvesafb_vbe_find_mode.exit.thread_crit_edge

if.end4.uvesafb_vbe_find_mode.exit.thread_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %uvesafb_vbe_find_mode.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end4
  %vbe_modes.i = getelementptr inbounds %struct.uvesafb_par, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %vbe_modes.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vbe_modes.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0107.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %match.0106.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %match.1.i, %for.inc.i.for.body.i_crit_edge ]
  %d.0105.i = phi i32 [ 2147483647, %for.body.lr.ph.i ], [ %d.1.i, %for.inc.i.for.body.i_crit_edge ]
  %x_res.i = getelementptr %struct.vbe_mode_ib, ptr %10, i32 %i.0107.i, i32 9
  %11 = ptrtoint ptr %x_res.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %x_res.i, align 1
  %conv.i = zext i16 %12 to i32
  %sub.i = sub i32 %conv.i, %4
  %13 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #16
  %y_res.i = getelementptr %struct.vbe_mode_ib, ptr %10, i32 %i.0107.i, i32 10
  %14 = ptrtoint ptr %y_res.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %y_res.i, align 1
  %conv7.i = zext i16 %15 to i32
  %sub8.i = sub i32 %conv7.i, %6
  %16 = tail call i32 @llvm.abs.i32(i32 %sub8.i, i1 false) #16
  %add.i = add i32 %16, %13
  %depth20.i = getelementptr %struct.vbe_mode_ib, ptr %10, i32 %i.0107.i, i32 44
  %17 = ptrtoint ptr %depth20.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %depth20.i, align 1
  %conv21.i = zext i8 %18 to i32
  %sub22.i = sub nsw i32 8, %conv21.i
  %19 = tail call i32 @llvm.abs.i32(i32 %sub22.i, i1 true) #16
  %add31.i = add i32 %add.i, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add31.i)
  %cmp32.i = icmp eq i32 %add31.i, 0
  br i1 %cmp32.i, label %for.body.i.return_crit_edge, label %if.end.i

for.body.i.return_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add31.i, i32 %d.0105.i)
  %cmp34.i = icmp slt i32 %add31.i, %d.0105.i
  br i1 %cmp34.i, label %if.end.i.if.then44.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then44.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then44.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add31.i, i32 %d.0105.i)
  %cmp36.i = icmp eq i32 %add31.i, %d.0105.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %18)
  %cmp42.i = icmp ugt i8 %18, 8
  %or.cond99.i = select i1 %cmp36.i, i1 %cmp42.i, i1 false
  br i1 %or.cond99.i, label %lor.lhs.false.i.if.then44.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

lor.lhs.false.i.if.then44.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then44.i

if.then44.i:                                      ; preds = %lor.lhs.false.i.if.then44.i_crit_edge, %if.end.i.if.then44.i_crit_edge
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then44.i, %lor.lhs.false.i.for.inc.i_crit_edge
  %d.1.i = phi i32 [ %add31.i, %if.then44.i ], [ %d.0105.i, %lor.lhs.false.i.for.inc.i_crit_edge ]
  %match.1.i = phi i32 [ %i.0107.i, %if.then44.i ], [ %match.0106.i, %lor.lhs.false.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0107.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %8
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %d.1.i)
  %cmp60.i = icmp sgt i32 %d.1.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %match.1.i)
  %cmp = icmp eq i32 %match.1.i, -1
  %or.cond = select i1 %cmp60.i, i1 true, i1 %cmp
  br i1 %or.cond, label %for.end.i.uvesafb_vbe_find_mode.exit.thread_crit_edge, label %for.end.i.return_crit_edge

for.end.i.return_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

for.end.i.uvesafb_vbe_find_mode.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %uvesafb_vbe_find_mode.exit.thread

uvesafb_vbe_find_mode.exit.thread:                ; preds = %for.end.i.uvesafb_vbe_find_mode.exit.thread_crit_edge, %if.end4.uvesafb_vbe_find_mode.exit.thread_crit_edge
  br label %return

return:                                           ; preds = %uvesafb_vbe_find_mode.exit.thread, %for.end.i.return_crit_edge, %for.body.i.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.return_crit_edge ], [ 0, %uvesafb_vbe_find_mode.exit.thread ], [ 1, %for.end.i.return_crit_edge ], [ 1, %for.body.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_edid_to_monspecs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_validate_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvesafb_open(ptr nocapture noundef readonly %info, i32 noundef %user) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %ref_count = getelementptr inbounds %struct.uvesafb_par, ptr %1, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref_count, i32 noundef 4) #16
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %vbe_state_size = getelementptr inbounds %struct.uvesafb_par, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %vbe_state_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vbe_state_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end8_crit_edge, label %if.end8.i.i

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.end8.i.i:                                      ; preds = %land.lhs.true
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #22
  %tobool2.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not.i, label %if.end8.i.i.do.end_crit_edge, label %if.end5.i

if.end8.i.i.do.end_crit_edge:                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.end5.i:                                        ; preds = %if.end8.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 72) #21
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end5.i.uvesafb_vbe_state_save.exit.thread20_crit_edge, label %if.then.i47.i

if.end5.i.uvesafb_vbe_state_save.exit.thread20_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %uvesafb_vbe_state_save.exit.thread20

if.then.i47.i:                                    ; preds = %if.end5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i10.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 56) #21
  %done.i.i = getelementptr inbounds %struct.uvesafb_ktask, ptr %call7.i.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i10.i.i, ptr %done.i.i, align 8
  %tobool3.not.i.i = icmp eq ptr %call7.i.i10.i.i, null
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %if.end9.i

if.then4.i.i:                                     ; preds = %if.then.i47.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #16
  br label %uvesafb_vbe_state_save.exit.thread20

if.end9.i:                                        ; preds = %if.then.i47.i
  %eax.i = getelementptr inbounds %struct.uvesafb_task, ptr %call7.i.i.i.i, i32 0, i32 2, i32 6
  %9 = ptrtoint ptr %eax.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 20228, ptr %eax.i, align 8
  %ecx.i = getelementptr inbounds %struct.uvesafb_task, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %ecx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 15, ptr %ecx.i, align 4
  %edx.i = getelementptr inbounds %struct.uvesafb_task, ptr %call7.i.i.i.i, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %edx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %edx.i, align 8
  %12 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 12, ptr %call7.i.i.i.i, align 8
  %13 = ptrtoint ptr %vbe_state_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vbe_state_size, align 4
  %buf_len.i = getelementptr inbounds %struct.uvesafb_task, ptr %call7.i.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %buf_len.i, align 4
  %buf.i = getelementptr inbounds %struct.uvesafb_ktask, ptr %call7.i.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9.i.i, ptr %buf.i, align 4
  %call17.i = tail call fastcc i32 @uvesafb_exec(ptr noundef nonnull %call7.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %lor.lhs.false.i, label %if.end9.i.do.end.i_crit_edge

if.end9.i.do.end.i_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end9.i
  %17 = ptrtoint ptr %eax.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %eax.i, align 8
  %and.i = and i32 %18, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 79
  br i1 %cmp.not.i, label %lor.lhs.false.i.uvesafb_vbe_state_save.exit_crit_edge, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

lor.lhs.false.i.uvesafb_vbe_state_save.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %uvesafb_vbe_state_save.exit

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end9.i.do.end.i_crit_edge
  %19 = ptrtoint ptr %eax.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %eax.i, align 8
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, i32 noundef %20, i32 noundef %call17.i) #20
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #16
  br label %uvesafb_vbe_state_save.exit

uvesafb_vbe_state_save.exit.thread20:             ; preds = %if.then4.i.i, %if.end5.i.uvesafb_vbe_state_save.exit.thread20_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #16
  br label %if.else

uvesafb_vbe_state_save.exit:                      ; preds = %do.end.i, %lor.lhs.false.i.uvesafb_vbe_state_save.exit_crit_edge
  %state.0.i = phi ptr [ null, %do.end.i ], [ %call9.i.i, %lor.lhs.false.i.uvesafb_vbe_state_save.exit_crit_edge ]
  %21 = ptrtoint ptr %done.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %done.i.i, align 8
  tail call void @kfree(ptr noundef %22) #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #16
  %cmp.i = icmp ugt ptr %state.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %uvesafb_vbe_state_save.exit.do.end_crit_edge, label %uvesafb_vbe_state_save.exit.if.else_crit_edge

uvesafb_vbe_state_save.exit.if.else_crit_edge:    ; preds = %uvesafb_vbe_state_save.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

uvesafb_vbe_state_save.exit.do.end_crit_edge:     ; preds = %uvesafb_vbe_state_save.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %uvesafb_vbe_state_save.exit.do.end_crit_edge, %if.end8.i.i.do.end_crit_edge
  %retval.0.i19 = phi ptr [ %state.0.i, %uvesafb_vbe_state_save.exit.do.end_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.do.end_crit_edge ]
  %23 = ptrtoint ptr %retval.0.i19 to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %23) #20
  br label %if.end8

if.else:                                          ; preds = %uvesafb_vbe_state_save.exit.if.else_crit_edge, %uvesafb_vbe_state_save.exit.thread20
  %retval.0.ph.i24 = phi ptr [ null, %uvesafb_vbe_state_save.exit.thread20 ], [ %state.0.i, %uvesafb_vbe_state_save.exit.if.else_crit_edge ]
  %vbe_state_orig = getelementptr inbounds %struct.uvesafb_par, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %vbe_state_orig to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.0.ph.i24, ptr %vbe_state_orig, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %do.end, %land.lhs.true.if.end8_crit_edge, %entry.if.end8_crit_edge
  %call.i.i16 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #16
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #16, !srcloc !418
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvesafb_release(ptr nocapture noundef readonly %info, i32 noundef %user) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %ref_count = getelementptr inbounds %struct.uvesafb_par, ptr %1, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref_count, i32 noundef 4) #16
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %ref_count, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %3, label %entry.out_crit_edge [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %if.end3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end3:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 72) #21
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end3.out_crit_edge, label %if.then.i

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then.i:                                        ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i10.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 56) #21
  %done.i = getelementptr inbounds %struct.uvesafb_ktask, ptr %call7.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i10.i, ptr %done.i, align 8
  %tobool3.not.i = icmp eq ptr %call7.i.i10.i, null
  br i1 %tobool3.not.i, label %if.then.i.out.sink.split_crit_edge, label %if.end7

if.then.i.out.sink.split_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.sink.split

if.end7:                                          ; preds = %if.then.i
  %eax = getelementptr inbounds %struct.uvesafb_task, ptr %call7.i.i.i, i32 0, i32 2, i32 6
  %8 = ptrtoint ptr %eax to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %eax, align 8
  %call8 = tail call fastcc i32 @uvesafb_exec(ptr noundef nonnull %call7.i.i.i)
  %vbe_state_orig = getelementptr inbounds %struct.uvesafb_par, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %vbe_state_orig to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vbe_state_orig, align 4
  %tobool.not.i20 = icmp eq ptr %10, null
  br i1 %tobool.not.i20, label %if.end7.out_crit_edge, label %if.end.i

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end.i:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 72) #21
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.out_crit_edge, label %if.then.i.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then.i.i:                                      ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i10.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 56) #21
  %done.i.i = getelementptr inbounds %struct.uvesafb_ktask, ptr %call7.i.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i10.i.i, ptr %done.i.i, align 8
  %tobool3.not.i.i = icmp eq ptr %call7.i.i10.i.i, null
  br i1 %tobool3.not.i.i, label %if.then.i.i.out.sink.split_crit_edge, label %if.end3.i

if.then.i.i.out.sink.split_crit_edge:             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.sink.split

if.end3.i:                                        ; preds = %if.then.i.i
  %eax.i = getelementptr inbounds %struct.uvesafb_task, ptr %call7.i.i.i.i, i32 0, i32 2, i32 6
  %14 = ptrtoint ptr %eax.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 20228, ptr %eax.i, align 8
  %ecx.i = getelementptr inbounds %struct.uvesafb_task, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %ecx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 15, ptr %ecx.i, align 4
  %edx.i = getelementptr inbounds %struct.uvesafb_task, ptr %call7.i.i.i.i, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %edx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %edx.i, align 8
  %vbe_state_size.i = getelementptr inbounds %struct.uvesafb_par, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %vbe_state_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vbe_state_size.i, align 4
  %buf_len.i = getelementptr inbounds %struct.uvesafb_task, ptr %call7.i.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %buf_len.i, align 4
  %20 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 4, ptr %call7.i.i.i.i, align 8
  %buf.i = getelementptr inbounds %struct.uvesafb_ktask, ptr %call7.i.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %10, ptr %buf.i, align 4
  %call10.i = tail call fastcc i32 @uvesafb_exec(ptr noundef nonnull %call7.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %lor.lhs.false.i, label %if.end3.i.do.end.i_crit_edge

if.end3.i.do.end.i_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end3.i
  %22 = ptrtoint ptr %eax.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %eax.i, align 8
  %and.i = and i32 %23, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 79
  br i1 %cmp.not.i, label %lor.lhs.false.i.uvesafb_free.exit.i_crit_edge, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

lor.lhs.false.i.uvesafb_free.exit.i_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %uvesafb_free.exit.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end3.i.do.end.i_crit_edge
  %24 = ptrtoint ptr %eax.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %eax.i, align 8
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, i32 noundef %25, i32 noundef %call10.i) #20
  br label %uvesafb_free.exit.i

uvesafb_free.exit.i:                              ; preds = %do.end.i, %lor.lhs.false.i.uvesafb_free.exit.i_crit_edge
  %26 = ptrtoint ptr %done.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %done.i.i, align 8
  tail call void @kfree(ptr noundef %27) #16
  br label %out.sink.split

out.sink.split:                                   ; preds = %uvesafb_free.exit.i, %if.then.i.i.out.sink.split_crit_edge, %if.then.i.out.sink.split_crit_edge
  %call7.i.i.i.sink = phi ptr [ %call7.i.i.i, %if.then.i.out.sink.split_crit_edge ], [ %call7.i.i.i.i, %uvesafb_free.exit.i ], [ %call7.i.i.i.i, %if.then.i.i.out.sink.split_crit_edge ]
  %task.0.ph = phi ptr [ null, %if.then.i.out.sink.split_crit_edge ], [ %call7.i.i.i, %uvesafb_free.exit.i ], [ %call7.i.i.i, %if.then.i.i.out.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.sink) #16
  br label %out

out:                                              ; preds = %out.sink.split, %if.end.i.out_crit_edge, %if.end7.out_crit_edge, %if.end3.out_crit_edge, %entry.out_crit_edge
  %task.0 = phi ptr [ null, %entry.out_crit_edge ], [ %call7.i.i.i, %if.end7.out_crit_edge ], [ %call7.i.i.i, %if.end.i.out_crit_edge ], [ null, %if.end3.out_crit_edge ], [ %task.0.ph, %out.sink.split ]
  %call.i.i19 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #16
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #16, !srcloc !419
  %tobool.not.i21 = icmp eq ptr %task.0, null
  br i1 %tobool.not.i21, label %out.cleanup_crit_edge, label %if.then.i23

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i23:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  %done.i22 = getelementptr inbounds %struct.uvesafb_ktask, ptr %task.0, i32 0, i32 2
  %29 = ptrtoint ptr %done.i22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %done.i22, align 8
  tail call void @kfree(ptr noundef %30) #16
  tail call void @kfree(ptr noundef nonnull %task.0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i23, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %out.cleanup_crit_edge ], [ 0, %if.then.i23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvesafb_check_var(ptr noundef %var, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %length2 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %length2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length2, align 4
  %add = add i32 %5, %3
  %length3 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %length3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length3, align 4
  %add4 = add i32 %add, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add4)
  %cmp = icmp eq i32 %add4, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %8 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bits_per_pixel, align 4
  %sub = sub i32 %add4, %9
  %10 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %10)
  %cmp7 = icmp sgt i32 %10, 7
  br i1 %cmp7, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %bits_per_pixel8 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %11 = ptrtoint ptr %bits_per_pixel8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bits_per_pixel8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %depth.0 = phi i32 [ %12, %if.then ], [ %add4, %lor.lhs.false.if.end_crit_edge ]
  %13 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %15 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %yres, align 4
  %vbe_modes_cnt.i = getelementptr inbounds %struct.uvesafb_par, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %vbe_modes_cnt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vbe_modes_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp104.i = icmp sgt i32 %18, 0
  br i1 %cmp104.i, label %for.body.lr.ph.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end
  %vbe_modes.i = getelementptr inbounds %struct.uvesafb_par, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %vbe_modes.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vbe_modes.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0107.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %match.0106.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %match.1.i, %for.inc.i.for.body.i_crit_edge ]
  %d.0105.i = phi i32 [ 2147483647, %for.body.lr.ph.i ], [ %d.1.i, %for.inc.i.for.body.i_crit_edge ]
  %x_res.i = getelementptr %struct.vbe_mode_ib, ptr %20, i32 %i.0107.i, i32 9
  %21 = ptrtoint ptr %x_res.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %x_res.i, align 1
  %conv.i = zext i16 %22 to i32
  %sub.i = sub i32 %conv.i, %14
  %23 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #16
  %y_res.i = getelementptr %struct.vbe_mode_ib, ptr %20, i32 %i.0107.i, i32 10
  %24 = ptrtoint ptr %y_res.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %y_res.i, align 1
  %conv7.i = zext i16 %25 to i32
  %sub8.i = sub i32 %conv7.i, %16
  %26 = tail call i32 @llvm.abs.i32(i32 %sub8.i, i1 false) #16
  %add.i = add i32 %26, %23
  %depth20.i = getelementptr %struct.vbe_mode_ib, ptr %20, i32 %i.0107.i, i32 44
  %27 = ptrtoint ptr %depth20.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %depth20.i, align 1
  %conv21.i = zext i8 %28 to i32
  %sub22.i = sub i32 %depth.0, %conv21.i
  %29 = tail call i32 @llvm.abs.i32(i32 %sub22.i, i1 false) #16
  %add31.i = add i32 %add.i, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add31.i)
  %cmp32.i = icmp eq i32 %add31.i, 0
  br i1 %cmp32.i, label %for.body.i.if.end11_crit_edge, label %if.end.i

for.body.i.if.end11_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add31.i, i32 %d.0105.i)
  %cmp34.i = icmp slt i32 %add31.i, %d.0105.i
  br i1 %cmp34.i, label %if.end.i.if.then44.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then44.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then44.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add31.i, i32 %d.0105.i)
  %cmp36.i = icmp eq i32 %add31.i, %d.0105.i
  call void @__sanitizer_cov_trace_cmp4(i32 %depth.0, i32 %conv21.i)
  %cmp42.i = icmp slt i32 %depth.0, %conv21.i
  %or.cond99.i = select i1 %cmp36.i, i1 %cmp42.i, i1 false
  br i1 %or.cond99.i, label %lor.lhs.false.i.if.then44.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

lor.lhs.false.i.if.then44.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then44.i

if.then44.i:                                      ; preds = %lor.lhs.false.i.if.then44.i_crit_edge, %if.end.i.if.then44.i_crit_edge
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then44.i, %lor.lhs.false.i.for.inc.i_crit_edge
  %d.1.i = phi i32 [ %add31.i, %if.then44.i ], [ %d.0105.i, %lor.lhs.false.i.for.inc.i_crit_edge ]
  %match.1.i = phi i32 [ %i.0107.i, %if.then44.i ], [ %match.0106.i, %lor.lhs.false.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0107.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %18
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %d.1.i)
  %cmp60.i = icmp sgt i32 %d.1.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %match.1.i)
  %cmp9 = icmp eq i32 %match.1.i, -1
  %or.cond114 = select i1 %cmp60.i, i1 true, i1 %cmp9
  br i1 %or.cond114, label %for.end.i.cleanup_crit_edge, label %for.end.i.if.end11_crit_edge

for.end.i.if.end11_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end11:                                         ; preds = %for.end.i.if.end11_crit_edge, %for.body.i.if.end11_crit_edge
  %retval.0.i113 = phi i32 [ %match.1.i, %for.end.i.if.end11_crit_edge ], [ %i.0107.i, %for.body.i.if.end11_crit_edge ]
  %30 = ptrtoint ptr %vbe_modes.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vbe_modes.i, align 4
  %vmode.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %32 = ptrtoint ptr %vmode.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %vmode.i, align 4
  %sync.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %33 = ptrtoint ptr %sync.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %sync.i, align 4
  %x_res.i94 = getelementptr %struct.vbe_mode_ib, ptr %31, i32 %retval.0.i113, i32 9
  %34 = ptrtoint ptr %x_res.i94 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %x_res.i94, align 1
  %conv.i95 = zext i16 %35 to i32
  %36 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv.i95, ptr %var, align 4
  %y_res.i96 = getelementptr %struct.vbe_mode_ib, ptr %31, i32 %retval.0.i113, i32 10
  %37 = ptrtoint ptr %y_res.i96 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %y_res.i96, align 1
  %conv2.i = zext i16 %38 to i32
  %39 = ptrtoint ptr %yres to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv2.i, ptr %yres, align 4
  %40 = load i16, ptr %x_res.i94, align 1
  %conv4.i = zext i16 %40 to i32
  %xres_virtual.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %41 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv4.i, ptr %xres_virtual.i, align 4
  %ypan.i = getelementptr inbounds %struct.uvesafb_par, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %ypan.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ypan.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %44 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %smem_len.i, align 4
  %bytes_per_scan_line.i = getelementptr %struct.vbe_mode_ib, ptr %31, i32 %retval.0.i113, i32 8
  %46 = ptrtoint ptr %bytes_per_scan_line.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %bytes_per_scan_line.i, align 1
  %conv6.i = zext i16 %47 to i32
  %div.i = udiv i32 %45, %conv6.i
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %48 = ptrtoint ptr %y_res.i96 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %y_res.i96, align 1
  %conv8.i = zext i16 %49 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %div.i, %cond.true.i ], [ %conv8.i, %cond.false.i ]
  %yres_virtual.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %50 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %cond.i, ptr %yres_virtual.i, align 4
  %xoffset.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %51 = ptrtoint ptr %xoffset.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %xoffset.i, align 4
  %yoffset.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %52 = ptrtoint ptr %yoffset.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %yoffset.i, align 4
  %bits_per_pixel.i = getelementptr %struct.vbe_mode_ib, ptr %31, i32 %retval.0.i113, i32 14
  %53 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bits_per_pixel.i, align 1
  %bits_per_pixel10.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %54)
  %cmp.i = icmp eq i8 %54, 15
  %narrow.i = select i1 %cmp.i, i8 16, i8 %54
  %spec.select.i = zext i8 %narrow.i to i32
  %55 = ptrtoint ptr %bits_per_pixel10.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %spec.select.i, ptr %bits_per_pixel10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %narrow.i)
  %cmp15.i = icmp ugt i8 %narrow.i, 8
  br i1 %cmp15.i, label %if.then17.i, label %if.else.i

if.then17.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %red_off.i = getelementptr %struct.vbe_mode_ib, ptr %31, i32 %retval.0.i113, i32 21
  %56 = ptrtoint ptr %red_off.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %red_off.i, align 1
  %conv18.i = zext i8 %57 to i32
  %red.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %58 = ptrtoint ptr %red.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv18.i, ptr %red.i, align 4
  %red_len.i = getelementptr %struct.vbe_mode_ib, ptr %31, i32 %retval.0.i113, i32 20
  %59 = ptrtoint ptr %red_len.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %red_len.i, align 1
  %conv19.i = zext i8 %60 to i32
  %61 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv19.i, ptr %length, align 4
  %green_off.i = getelementptr %struct.vbe_mode_ib, ptr %31, i32 %retval.0.i113, i32 23
  %62 = ptrtoint ptr %green_off.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %green_off.i, align 1
  %conv21.i97 = zext i8 %63 to i32
  %green.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %64 = ptrtoint ptr %green.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv21.i97, ptr %green.i, align 4
  %green_len.i = getelementptr %struct.vbe_mode_ib, ptr %31, i32 %retval.0.i113, i32 22
  %65 = ptrtoint ptr %green_len.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %green_len.i, align 1
  %conv23.i = zext i8 %66 to i32
  %67 = ptrtoint ptr %length2 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv23.i, ptr %length2, align 4
  %blue_off.i = getelementptr %struct.vbe_mode_ib, ptr %31, i32 %retval.0.i113, i32 25
  %68 = ptrtoint ptr %blue_off.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %blue_off.i, align 1
  %conv26.i = zext i8 %69 to i32
  %blue.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %70 = ptrtoint ptr %blue.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv26.i, ptr %blue.i, align 4
  %blue_len.i = getelementptr %struct.vbe_mode_ib, ptr %31, i32 %retval.0.i113, i32 24
  %71 = ptrtoint ptr %blue_len.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %blue_len.i, align 1
  %conv28.i = zext i8 %72 to i32
  %73 = ptrtoint ptr %length3 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv28.i, ptr %length3, align 4
  %rsvd_off.i = getelementptr %struct.vbe_mode_ib, ptr %31, i32 %retval.0.i113, i32 27
  %74 = ptrtoint ptr %rsvd_off.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %rsvd_off.i, align 1
  %conv31.i = zext i8 %75 to i32
  %transp.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %76 = ptrtoint ptr %transp.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv31.i, ptr %transp.i, align 4
  %rsvd_len.i = getelementptr %struct.vbe_mode_ib, ptr %31, i32 %retval.0.i113, i32 26
  %77 = ptrtoint ptr %rsvd_len.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %rsvd_len.i, align 1
  %conv33.i = zext i8 %78 to i32
  br label %uvesafb_setup_var.exit

if.else.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %red36.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %79 = ptrtoint ptr %red36.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %red36.i, align 4
  %green38.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %80 = ptrtoint ptr %green38.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %green38.i, align 4
  %blue40.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %81 = ptrtoint ptr %blue40.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %blue40.i, align 4
  %transp42.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %82 = ptrtoint ptr %transp42.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %transp42.i, align 4
  %83 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 8, ptr %length, align 4
  %84 = ptrtoint ptr %length2 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 8, ptr %length2, align 4
  %85 = ptrtoint ptr %length3 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 8, ptr %length3, align 4
  br label %uvesafb_setup_var.exit

uvesafb_setup_var.exit:                           ; preds = %if.else.i, %if.then17.i
  %.sink.i = phi i32 [ %conv33.i, %if.then17.i ], [ 0, %if.else.i ]
  %86 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %.sink.i, ptr %86, align 4
  %bytes_per_scan_line = getelementptr %struct.vbe_mode_ib, ptr %31, i32 %retval.0.i113, i32 8
  %88 = ptrtoint ptr %bytes_per_scan_line to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %bytes_per_scan_line, align 1
  %conv = zext i16 %89 to i32
  %mul = mul nuw i32 %conv, %conv2.i
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %90 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %91)
  %cmp13 = icmp ule i32 %mul, %91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not = icmp eq i32 %91, 0
  %or.cond = or i1 %tobool.not, %cmp13
  br i1 %or.cond, label %if.end29, label %uvesafb_setup_var.exit.cleanup_crit_edge

uvesafb_setup_var.exit.cleanup_crit_edge:         ; preds = %uvesafb_setup_var.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end29:                                         ; preds = %uvesafb_setup_var.exit
  %92 = ptrtoint ptr %vmode.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %vmode.i, align 4
  %and31 = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end29.if.end43_crit_edge, label %land.lhs.true33

if.end29.if.end43_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

land.lhs.true33:                                  ; preds = %if.end29
  %94 = ptrtoint ptr %vbe_modes.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %vbe_modes.i, align 4
  %arrayidx35 = getelementptr %struct.vbe_mode_ib, ptr %95, i32 %retval.0.i113
  %96 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_loadN_noabort(i32 %96, i32 2)
  %97 = load i16, ptr %arrayidx35, align 1
  %98 = and i16 %97, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %tobool39.not = icmp eq i16 %98, 0
  br i1 %tobool39.not, label %if.then40, label %land.lhs.true33.if.end43_crit_edge

land.lhs.true33.if.end43_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

if.then40:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #18
  %and42 = and i32 %93, -2
  %99 = ptrtoint ptr %vmode.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %and42, ptr %vmode.i, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %land.lhs.true33.if.end43_crit_edge, %if.end29.if.end43_crit_edge
  %pixclock.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %100 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pixclock.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.not.i98 = icmp eq i32 %101, 0
  br i1 %tobool.not.i98, label %if.end43.uvesafb_check_limits.exit_crit_edge, label %if.end.i101

if.end43.uvesafb_check_limits.exit_crit_edge:     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %uvesafb_check_limits.exit

if.end.i101:                                      ; preds = %if.end43
  %102 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %par1, align 4
  %vbe_version.i = getelementptr inbounds %struct.vbe_ib, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %vbe_version.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %vbe_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %105)
  %cmp.i100 = icmp ult i16 %105, 768
  br i1 %cmp.i100, label %if.then3.i, label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call i32 @fb_get_mode(i32 noundef 257, i32 noundef 60, ptr noundef %var, ptr noundef %info) #16
  br label %uvesafb_check_limits.exit

if.end4.i:                                        ; preds = %if.end.i101
  %call5.i = tail call i32 @fb_validate_mode(ptr noundef %var, ptr noundef %info) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end4.i.uvesafb_check_limits.exit_crit_edge, label %if.end8.i

if.end4.i.uvesafb_check_limits.exit_crit_edge:    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %uvesafb_check_limits.exit

if.end8.i:                                        ; preds = %if.end4.i
  %modelist.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 13
  %call9.i = tail call ptr @fb_find_best_mode(ptr noundef %var, ptr noundef %modelist.i) #16
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.end8.i.if.end22.i_crit_edge, label %if.then11.i

if.end8.i.if.end22.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22.i

if.then11.i:                                      ; preds = %if.end8.i
  %xres.i = getelementptr inbounds %struct.fb_videomode, ptr %call9.i, i32 0, i32 2
  %106 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %xres.i, align 4
  %108 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %109)
  %cmp13.i = icmp eq i32 %107, %109
  br i1 %cmp13.i, label %land.lhs.true.i, label %if.then11.i.if.end22.i_crit_edge

if.then11.i.if.end22.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22.i

land.lhs.true.i:                                  ; preds = %if.then11.i
  %yres.i102 = getelementptr inbounds %struct.fb_videomode, ptr %call9.i, i32 0, i32 3
  %110 = ptrtoint ptr %yres.i102 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %yres.i102, align 4
  %112 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %113)
  %cmp16.i = icmp eq i32 %111, %113
  br i1 %cmp16.i, label %land.lhs.true18.i, label %land.lhs.true.i.if.end22.i_crit_edge

land.lhs.true.i.if.end22.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22.i

land.lhs.true18.i:                                ; preds = %land.lhs.true.i
  %vmode.i103 = getelementptr inbounds %struct.fb_videomode, ptr %call9.i, i32 0, i32 12
  %114 = ptrtoint ptr %vmode.i103 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %vmode.i103, align 4
  %and.i = and i32 %115, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool19.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %land.lhs.true18.i.if.end22.i_crit_edge

land.lhs.true18.i.if.end22.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22.i

if.then20.i:                                      ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @fb_videomode_to_var(ptr noundef %var, ptr noundef nonnull %call9.i) #16
  br label %uvesafb_check_limits.exit

if.end22.i:                                       ; preds = %land.lhs.true18.i.if.end22.i_crit_edge, %land.lhs.true.i.if.end22.i_crit_edge, %if.then11.i.if.end22.i_crit_edge, %if.end8.i.if.end22.i_crit_edge
  %gtf.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 21
  %116 = ptrtoint ptr %gtf.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %bf.load.i = load i8, ptr %gtf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool24.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool24.not.i, label %if.end22.i.if.end29.i_crit_edge, label %land.lhs.true25.i

if.end22.i.if.end29.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i

land.lhs.true25.i:                                ; preds = %if.end22.i
  %call26.i = tail call i32 @fb_get_mode(i32 noundef 0, i32 noundef 0, ptr noundef %var, ptr noundef %info) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.uvesafb_check_limits.exit_crit_edge, label %land.lhs.true25.i.if.end29.i_crit_edge

land.lhs.true25.i.if.end29.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i

land.lhs.true25.i.uvesafb_check_limits.exit_crit_edge: ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %uvesafb_check_limits.exit

if.end29.i:                                       ; preds = %land.lhs.true25.i.if.end29.i_crit_edge, %if.end22.i.if.end29.i_crit_edge
  %117 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %pixclock.i, align 4
  br label %uvesafb_check_limits.exit

uvesafb_check_limits.exit:                        ; preds = %if.end29.i, %land.lhs.true25.i.uvesafb_check_limits.exit_crit_edge, %if.then20.i, %if.end4.i.uvesafb_check_limits.exit_crit_edge, %if.then3.i, %if.end43.uvesafb_check_limits.exit_crit_edge
  %118 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %var, align 4
  %120 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %xres_virtual.i, align 4
  %121 = ptrtoint ptr %ypan.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %ypan.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool46.not = icmp eq i8 %122, 0
  br i1 %tobool46.not, label %cond.false52, label %cond.true47

cond.true47:                                      ; preds = %uvesafb_check_limits.exit
  call void @__sanitizer_cov_trace_pc() #18
  %123 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %smem_len, align 4
  %125 = ptrtoint ptr %bytes_per_scan_line to i32
  call void @__asan_loadN_noabort(i32 %125, i32 2)
  %126 = load i16, ptr %bytes_per_scan_line, align 1
  %conv51 = zext i16 %126 to i32
  %div = udiv i32 %124, %conv51
  br label %cond.end54

cond.false52:                                     ; preds = %uvesafb_check_limits.exit
  call void @__sanitizer_cov_trace_pc() #18
  %127 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %yres, align 4
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false52, %cond.true47
  %cond55 = phi i32 [ %div, %cond.true47 ], [ %128, %cond.false52 ]
  %129 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %cond55, ptr %yres_virtual.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end54, %uvesafb_setup_var.exit.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end54 ], [ -22, %uvesafb_setup_var.exit.cleanup_crit_edge ], [ -22, %for.end.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvesafb_set_par(ptr nocapture noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp sgt i32 %3, 8
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp2.not = icmp eq i32 %3, 32
  br i1 %cmp2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 4
  %length5 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %6 = ptrtoint ptr %length5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length5, align 4
  %add = add i32 %7, %5
  %length7 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %8 = ptrtoint ptr %length7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length7, align 4
  %add8 = add i32 %add, %9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %depth.0 = phi i32 [ %add8, %if.then ], [ 32, %land.lhs.true.if.end_crit_edge ], [ %3, %entry.if.end_crit_edge ]
  %10 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yres, align 4
  %vbe_modes_cnt.i = getelementptr inbounds %struct.uvesafb_par, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %vbe_modes_cnt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vbe_modes_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp104.i = icmp sgt i32 %15, 0
  br i1 %cmp104.i, label %for.body.lr.ph.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end
  %vbe_modes.i = getelementptr inbounds %struct.uvesafb_par, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %vbe_modes.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vbe_modes.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0107.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %match.0106.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %match.1.i, %for.inc.i.for.body.i_crit_edge ]
  %d.0105.i = phi i32 [ 2147483647, %for.body.lr.ph.i ], [ %d.1.i, %for.inc.i.for.body.i_crit_edge ]
  %x_res.i = getelementptr %struct.vbe_mode_ib, ptr %17, i32 %i.0107.i, i32 9
  %18 = ptrtoint ptr %x_res.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %x_res.i, align 1
  %conv.i = zext i16 %19 to i32
  %sub.i = sub i32 %conv.i, %11
  %20 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #16
  %y_res.i = getelementptr %struct.vbe_mode_ib, ptr %17, i32 %i.0107.i, i32 10
  %21 = ptrtoint ptr %y_res.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %y_res.i, align 1
  %conv7.i = zext i16 %22 to i32
  %sub8.i = sub i32 %conv7.i, %13
  %23 = tail call i32 @llvm.abs.i32(i32 %sub8.i, i1 false) #16
  %add.i = add i32 %23, %20
  %depth20.i = getelementptr %struct.vbe_mode_ib, ptr %17, i32 %i.0107.i, i32 44
  %24 = ptrtoint ptr %depth20.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %depth20.i, align 1
  %conv21.i = zext i8 %25 to i32
  %sub22.i = sub i32 %depth.0, %conv21.i
  %26 = tail call i32 @llvm.abs.i32(i32 %sub22.i, i1 false) #16
  %add31.i = add i32 %add.i, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add31.i)
  %cmp32.i = icmp eq i32 %add31.i, 0
  br i1 %cmp32.i, label %for.body.i.uvesafb_vbe_find_mode.exit_crit_edge, label %if.end.i

for.body.i.uvesafb_vbe_find_mode.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %uvesafb_vbe_find_mode.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add31.i, i32 %d.0105.i)
  %cmp34.i = icmp slt i32 %add31.i, %d.0105.i
  br i1 %cmp34.i, label %if.end.i.if.then44.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then44.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then44.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add31.i, i32 %d.0105.i)
  %cmp36.i = icmp eq i32 %add31.i, %d.0105.i
  call void @__sanitizer_cov_trace_cmp4(i32 %depth.0, i32 %conv21.i)
  %cmp42.i = icmp slt i32 %depth.0, %conv21.i
  %or.cond99.i = select i1 %cmp36.i, i1 %cmp42.i, i1 false
  br i1 %or.cond99.i, label %lor.lhs.false.i.if.then44.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

lor.lhs.false.i.if.then44.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then44.i

if.then44.i:                                      ; preds = %lor.lhs.false.i.if.then44.i_crit_edge, %if.end.i.if.then44.i_crit_edge
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then44.i, %lor.lhs.false.i.for.inc.i_crit_edge
  %d.1.i = phi i32 [ %add31.i, %if.then44.i ], [ %d.0105.i, %lor.lhs.false.i.for.inc.i_crit_edge ]
  %match.1.i = phi i32 [ %i.0107.i, %if.then44.i ], [ %match.0106.i, %lor.lhs.false.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0107.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %15
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %27 = ptrtoint ptr %vbe_modes.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vbe_modes.i, align 4
  %depth50.i = getelementptr %struct.vbe_mode_ib, ptr %28, i32 %match.1.i, i32 44
  %29 = ptrtoint ptr %depth50.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %depth50.i, align 1
  %conv51.i = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %depth.0, i32 %conv51.i)
  %cmp52.not.i = icmp ne i32 %depth.0, %conv51.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %d.1.i)
  %cmp60.i = icmp sgt i32 %d.1.i, 24
  %cmp64.not.i = select i1 %cmp60.i, i1 true, i1 %cmp52.not.i
  br i1 %cmp64.not.i, label %for.end.i.cleanup_crit_edge, label %for.end.i.uvesafb_vbe_find_mode.exit_crit_edge

for.end.i.uvesafb_vbe_find_mode.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %uvesafb_vbe_find_mode.exit

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

uvesafb_vbe_find_mode.exit:                       ; preds = %for.end.i.uvesafb_vbe_find_mode.exit_crit_edge, %for.body.i.uvesafb_vbe_find_mode.exit_crit_edge
  %retval.0.i = phi i32 [ %match.1.i, %for.end.i.uvesafb_vbe_find_mode.exit_crit_edge ], [ %i.0107.i, %for.body.i.uvesafb_vbe_find_mode.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp11 = icmp sgt i32 %retval.0.i, -1
  br i1 %cmp11, label %if.then12, label %uvesafb_vbe_find_mode.exit.cleanup_crit_edge

uvesafb_vbe_find_mode.exit.cleanup_crit_edge:     ; preds = %uvesafb_vbe_find_mode.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then12:                                        ; preds = %uvesafb_vbe_find_mode.exit
  %31 = ptrtoint ptr %vbe_modes.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vbe_modes.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 72) #21
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then12.cleanup_crit_edge, label %if.then.i

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i:                                        ; preds = %if.then12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i10.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 56) #21
  %done.i = getelementptr inbounds %struct.uvesafb_ktask, ptr %call7.i.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i10.i, ptr %done.i, align 8
  %tobool3.not.i = icmp eq ptr %call7.i.i10.i, null
  br i1 %tobool3.not.i, label %if.then.i.cleanup.sink.split_crit_edge, label %setmode.preheader

if.then.i.cleanup.sink.split_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

setmode.preheader:                                ; preds = %if.then.i
  %regs = getelementptr inbounds %struct.uvesafb_task, ptr %call7.i.i.i, i32 0, i32 2
  %eax = getelementptr inbounds %struct.uvesafb_task, ptr %call7.i.i.i, i32 0, i32 2, i32 6
  %mode_id = getelementptr %struct.vbe_mode_ib, ptr %32, i32 %retval.0.i, i32 43
  %vbe_version = getelementptr inbounds %struct.vbe_ib, ptr %1, i32 0, i32 1
  %nocrtc = getelementptr inbounds %struct.uvesafb_par, ptr %1, i32 0, i32 3
  %pixclock = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %right_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 19
  %hsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 22
  %left_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 18
  %lower_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 21
  %vsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 23
  %upper_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 20
  %vmode = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 25
  %sync = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 24
  %crtc116 = getelementptr inbounds %struct.uvesafb_par, ptr %1, i32 0, i32 14
  %buf_len = getelementptr inbounds %struct.uvesafb_task, ptr %call7.i.i.i, i32 0, i32 1
  %buf = getelementptr inbounds %struct.uvesafb_ktask, ptr %call7.i.i.i, i32 0, i32 1
  br label %setmode

setmode:                                          ; preds = %do.end, %setmode.preheader
  %36 = ptrtoint ptr %eax to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 20226, ptr %eax, align 8
  %37 = ptrtoint ptr %mode_id to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %mode_id, align 1
  %39 = or i16 %38, 16384
  %or = zext i16 %39 to i32
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or, ptr %regs, align 8
  %41 = ptrtoint ptr %vbe_version to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vbe_version, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %42)
  %cmp20 = icmp ugt i16 %42, 767
  br i1 %cmp20, label %land.lhs.true22, label %setmode.if.else117_crit_edge

setmode.if.else117_crit_edge:                     ; preds = %setmode
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else117

land.lhs.true22:                                  ; preds = %setmode
  %43 = ptrtoint ptr %nocrtc to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %nocrtc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool23.not = icmp eq i8 %44, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %land.lhs.true22.if.else117_crit_edge

land.lhs.true22.if.else117_crit_edge:             ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else117

land.lhs.true24:                                  ; preds = %land.lhs.true22
  %45 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pixclock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp26.not = icmp eq i32 %46, 0
  br i1 %cmp26.not, label %land.lhs.true24.if.else117_crit_edge, label %if.then28

land.lhs.true24.if.else117_crit_edge:             ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else117

if.then28:                                        ; preds = %land.lhs.true24
  %or32 = or i32 %or, 2048
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or32, ptr %regs, align 8
  %48 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 2, ptr %call7.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3520, i32 noundef 59) #21
  %tobool35.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool35.not, label %if.then28.uvesafb_free.exit_crit_edge, label %if.end37

if.then28.uvesafb_free.exit_crit_edge:            ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #18
  br label %uvesafb_free.exit

if.end37:                                         ; preds = %if.then28
  %50 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %var, align 4
  %52 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %right_margin, align 4
  %add41 = add i32 %53, %51
  %conv42 = trunc i32 %add41 to i16
  %horiz_start = getelementptr inbounds %struct.vbe_crtc_ib, ptr %call7.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %horiz_start to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv42, ptr %horiz_start, align 2
  %55 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hsync_len, align 4
  %add46 = add i32 %56, %add41
  %conv47 = trunc i32 %add46 to i16
  %horiz_end = getelementptr inbounds %struct.vbe_crtc_ib, ptr %call7.i.i, i32 0, i32 2
  %57 = ptrtoint ptr %horiz_end to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv47, ptr %horiz_end, align 4
  %58 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %left_margin, align 4
  %add51 = add i32 %59, %add46
  %conv52 = trunc i32 %add51 to i16
  %60 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv52, ptr %call7.i.i, align 8
  %61 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %yres, align 4
  %63 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %lower_margin, align 4
  %add56 = add i32 %64, %62
  %conv57 = trunc i32 %add56 to i16
  %vert_start = getelementptr inbounds %struct.vbe_crtc_ib, ptr %call7.i.i, i32 0, i32 4
  %65 = ptrtoint ptr %vert_start to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv57, ptr %vert_start, align 8
  %66 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %vsync_len, align 4
  %add61 = add i32 %67, %add56
  %conv62 = trunc i32 %add61 to i16
  %vert_end = getelementptr inbounds %struct.vbe_crtc_ib, ptr %call7.i.i, i32 0, i32 5
  %68 = ptrtoint ptr %vert_end to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv62, ptr %vert_end, align 2
  %69 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %upper_margin, align 4
  %add66 = add i32 %70, %add61
  %conv67 = trunc i32 %add66 to i16
  %vert_total = getelementptr inbounds %struct.vbe_crtc_ib, ptr %call7.i.i, i32 0, i32 3
  %71 = ptrtoint ptr %vert_total to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv67, ptr %vert_total, align 2
  %72 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pixclock, align 4
  %div = udiv i32 1000000000, %73
  %mul = mul i32 %div, 1000
  %pixel_clock = getelementptr inbounds %struct.vbe_crtc_ib, ptr %call7.i.i, i32 0, i32 7
  %74 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 %mul, ptr %pixel_clock, align 1
  %conv72 = and i32 %add66, 65535
  %conv74 = and i32 %add51, 65535
  %mul75 = mul nuw i32 %conv72, %conv74
  %div76 = udiv i32 %mul, %mul75
  %75 = trunc i32 %div76 to i16
  %conv78 = mul i16 %75, 100
  %refresh_rate = getelementptr inbounds %struct.vbe_crtc_ib, ptr %call7.i.i, i32 0, i32 8
  %76 = ptrtoint ptr %refresh_rate to i32
  call void @__asan_storeN_noabort(i32 %76, i32 2)
  store i16 %conv78, ptr %refresh_rate, align 1
  %77 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %vmode, align 4
  %and = and i32 %78, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool80.not = icmp eq i32 %and, 0
  br i1 %tobool80.not, label %if.end37.if.end86_crit_edge, label %if.then81

if.end37.if.end86_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

if.then81:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  %flags82 = getelementptr inbounds %struct.vbe_crtc_ib, ptr %call7.i.i, i32 0, i32 6
  %79 = ptrtoint ptr %flags82 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %flags82, align 4
  %81 = or i8 %80, 1
  store i8 %81, ptr %flags82, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then81, %if.end37.if.end86_crit_edge
  %and89 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end86.if.end96_crit_edge, label %if.then91

if.end86.if.end96_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end96

if.then91:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #18
  %flags92 = getelementptr inbounds %struct.vbe_crtc_ib, ptr %call7.i.i, i32 0, i32 6
  %82 = ptrtoint ptr %flags92 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %flags92, align 4
  %84 = or i8 %83, 2
  store i8 %84, ptr %flags92, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then91, %if.end86.if.end96_crit_edge
  %85 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sync, align 4
  %and98 = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.then100, label %if.end96.if.end105_crit_edge

if.end96.if.end105_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end105

if.then100:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #18
  %flags101 = getelementptr inbounds %struct.vbe_crtc_ib, ptr %call7.i.i, i32 0, i32 6
  %87 = ptrtoint ptr %flags101 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %flags101, align 4
  %89 = or i8 %88, 4
  store i8 %89, ptr %flags101, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then100, %if.end96.if.end105_crit_edge
  %and108 = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.then110, label %if.end105.if.end115_crit_edge

if.end105.if.end115_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end115

if.then110:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #18
  %flags111 = getelementptr inbounds %struct.vbe_crtc_ib, ptr %call7.i.i, i32 0, i32 6
  %90 = ptrtoint ptr %flags111 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %flags111, align 4
  %92 = or i8 %91, 8
  store i8 %92, ptr %flags111, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then110, %if.end105.if.end115_crit_edge
  %93 = call ptr @memcpy(ptr %crtc116, ptr %call7.i.i, i32 59)
  br label %if.end119

if.else117:                                       ; preds = %land.lhs.true24.if.else117_crit_edge, %land.lhs.true22.if.else117_crit_edge, %setmode.if.else117_crit_edge
  %94 = call ptr @memset(ptr %crtc116, i32 0, i32 59)
  br label %if.end119

if.end119:                                        ; preds = %if.else117, %if.end115
  %crtc.1 = phi ptr [ null, %if.else117 ], [ %call7.i.i, %if.end115 ]
  %95 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 59, ptr %buf_len, align 4
  %96 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %crtc116, ptr %buf, align 4
  %call122 = tail call fastcc i32 @uvesafb_exec(ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %lor.lhs.false, label %if.end119.if.then130_crit_edge

if.end119.if.then130_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then130

lor.lhs.false:                                    ; preds = %if.end119
  %97 = ptrtoint ptr %eax to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %eax, align 8
  %and127 = and i32 %98, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %and127)
  %cmp128.not = icmp eq i32 %and127, 79
  br i1 %cmp128.not, label %if.end149, label %lor.lhs.false.if.then130_crit_edge

lor.lhs.false.if.then130_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then130

if.then130:                                       ; preds = %lor.lhs.false.if.then130_crit_edge, %if.end119.if.then130_crit_edge
  %cmp131.not = icmp eq ptr %crtc.1, null
  %99 = ptrtoint ptr %eax to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %eax, align 8
  br i1 %cmp131.not, label %do.end143, label %do.end

do.end:                                           ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #18
  %call137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, i32 noundef %100, i32 noundef %call122) #20
  %101 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %done.i, align 8
  %103 = call ptr @memset(ptr %call7.i.i.i, i32 0, i32 72)
  store ptr %102, ptr %done.i, align 8
  tail call void @kfree(ptr noundef nonnull %crtc.1) #16
  %104 = ptrtoint ptr %pixclock to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %pixclock, align 4
  br label %setmode

do.end143:                                        ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #18
  %call148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %100, i32 noundef %call122) #20
  br label %uvesafb_free.exit

if.end149:                                        ; preds = %lor.lhs.false
  %mode_idx = getelementptr inbounds %struct.uvesafb_par, ptr %1, i32 0, i32 13
  %105 = ptrtoint ptr %mode_idx to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %retval.0.i, ptr %mode_idx, align 4
  %capabilities = getelementptr inbounds %struct.vbe_ib, ptr %1, i32 0, i32 3
  %106 = ptrtoint ptr %capabilities to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %capabilities, align 2
  %and151 = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.end149.if.end184_crit_edge, label %land.lhs.true153

if.end149.if.end184_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end184

land.lhs.true153:                                 ; preds = %if.end149
  %bits_per_pixel154 = getelementptr %struct.vbe_mode_ib, ptr %32, i32 %retval.0.i, i32 14
  %108 = ptrtoint ptr %bits_per_pixel154 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %bits_per_pixel154, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %109)
  %cmp156 = icmp ult i8 %109, 9
  br i1 %cmp156, label %if.then158, label %land.lhs.true153.if.end184_crit_edge

land.lhs.true153.if.end184_crit_edge:             ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end184

if.then158:                                       ; preds = %land.lhs.true153
  %110 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %done.i, align 8
  %112 = call ptr @memset(ptr %call7.i.i.i, i32 0, i32 72)
  store ptr %111, ptr %done.i, align 8
  %113 = ptrtoint ptr %eax to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 20232, ptr %eax, align 8
  %114 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 2048, ptr %regs, align 8
  %call165 = tail call fastcc i32 @uvesafb_exec(ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %lor.lhs.false167, label %if.then158.if.end184.sink.split_crit_edge

if.then158.if.end184.sink.split_crit_edge:        ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end184.sink.split

lor.lhs.false167:                                 ; preds = %if.then158
  %115 = ptrtoint ptr %eax to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %eax, align 8
  %and171 = and i32 %116, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %and171)
  %cmp172.not = icmp eq i32 %and171, 79
  br i1 %cmp172.not, label %lor.lhs.false174, label %lor.lhs.false167.if.end184.sink.split_crit_edge

lor.lhs.false167.if.end184.sink.split_crit_edge:  ; preds = %lor.lhs.false167
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end184.sink.split

lor.lhs.false174:                                 ; preds = %lor.lhs.false167
  call void @__sanitizer_cov_trace_pc() #18
  %117 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %regs, align 8
  %119 = and i32 %118, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %119)
  %cmp179.not = icmp eq i32 %119, 2048
  %spec.select314 = select i1 %cmp179.not, i32 0, i32 %call165
  br label %if.end184.sink.split

if.end184.sink.split:                             ; preds = %lor.lhs.false174, %lor.lhs.false167.if.end184.sink.split_crit_edge, %if.then158.if.end184.sink.split_crit_edge
  %.sink = phi i1 [ false, %lor.lhs.false167.if.end184.sink.split_crit_edge ], [ false, %if.then158.if.end184.sink.split_crit_edge ], [ %cmp179.not, %lor.lhs.false174 ]
  %err.0.ph = phi i32 [ %call165, %lor.lhs.false167.if.end184.sink.split_crit_edge ], [ %call165, %if.then158.if.end184.sink.split_crit_edge ], [ %spec.select314, %lor.lhs.false174 ]
  store i1 %.sink, ptr @dac_width, align 1
  br label %if.end184

if.end184:                                        ; preds = %if.end184.sink.split, %land.lhs.true153.if.end184_crit_edge, %if.end149.if.end184_crit_edge
  %err.0 = phi i32 [ 0, %land.lhs.true153.if.end184_crit_edge ], [ 0, %if.end149.if.end184_crit_edge ], [ %err.0.ph, %if.end184.sink.split ]
  %120 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %121)
  %cmp187 = icmp eq i32 %121, 8
  %cond = select i1 %cmp187, i32 3, i32 2
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %122 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %cond, ptr %visual, align 4
  %bytes_per_scan_line = getelementptr %struct.vbe_mode_ib, ptr %32, i32 %retval.0.i, i32 8
  %123 = ptrtoint ptr %bytes_per_scan_line to i32
  call void @__asan_loadN_noabort(i32 %123, i32 2)
  %124 = load i16, ptr %bytes_per_scan_line, align 1
  %conv189 = zext i16 %124 to i32
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %125 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %conv189, ptr %line_length, align 4
  br label %uvesafb_free.exit

uvesafb_free.exit:                                ; preds = %if.end184, %do.end143, %if.then28.uvesafb_free.exit_crit_edge
  %crtc.2 = phi ptr [ null, %do.end143 ], [ %crtc.1, %if.end184 ], [ null, %if.then28.uvesafb_free.exit_crit_edge ]
  %err.1 = phi i32 [ -22, %do.end143 ], [ %err.0, %if.end184 ], [ -12, %if.then28.uvesafb_free.exit_crit_edge ]
  tail call void @kfree(ptr noundef %crtc.2) #16
  %126 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %done.i, align 8
  tail call void @kfree(ptr noundef %127) #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %uvesafb_free.exit, %if.then.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %err.1, %uvesafb_free.exit ], [ -12, %if.then.i.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then12.cleanup_crit_edge, %uvesafb_vbe_find_mode.exit.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %uvesafb_vbe_find_mode.exit.cleanup_crit_edge ], [ -22, %for.end.i.cleanup_crit_edge ], [ -12, %if.then12.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvesafb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %entry1 = alloca %struct.uvesafb_pal_entry, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entry1) #16
  %0 = getelementptr inbounds %struct.uvesafb_pal_entry, ptr %entry1, i32 0, i32 1
  %1 = getelementptr inbounds %struct.uvesafb_pal_entry, ptr %entry1, i32 0, i32 2
  %2 = getelementptr inbounds %struct.uvesafb_pal_entry, ptr %entry1, i32 0, i32 3
  %.b = load i1, ptr @dac_width, align 1
  %sub = select i1 %.b, i32 8, i32 10
  %len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 1
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %regno)
  %cmp.not = icmp ugt i32 %4, %regno
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %5 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp3 = icmp eq i32 %6, 8
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %shr = lshr i32 %red, %sub
  %conv6 = trunc i32 %shr to i8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv6, ptr %1, align 1
  %shr8 = lshr i32 %green, %sub
  %conv9 = trunc i32 %shr8 to i8
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv9, ptr %0, align 1
  %shr11 = lshr i32 %blue, %sub
  %conv12 = trunc i32 %shr11 to i8
  %9 = ptrtoint ptr %entry1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv12, ptr %entry1, align 1
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %2, align 1
  %call = call fastcc i32 @uvesafb_setpalette(ptr noundef nonnull %entry1, i32 noundef 1, i32 noundef %regno)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp14 = icmp ult i32 %regno, 16
  br i1 %cmp14, label %if.then16, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then16:                                        ; preds = %if.else
  %11 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %6, label %if.then16.cleanup_crit_edge [
    i32 16, label %sw.bb
    i32 24, label %if.then16.sw.bb41_crit_edge
    i32 32, label %if.then16.sw.bb41_crit_edge93
  ]

if.then16.sw.bb41_crit_edge93:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb41

if.then16.sw.bb41_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb41

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %if.then16
  %red20 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %12 = ptrtoint ptr %red20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %red20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %13)
  %cmp21 = icmp eq i32 %13, 10
  br i1 %cmp21, label %if.then23, label %if.else30

if.then23:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  %and = lshr i32 %red, 1
  %shr24 = and i32 %and, 31744
  %and25 = lshr i32 %green, 6
  %shr26 = and i32 %and25, 992
  %or = or i32 %shr26, %shr24
  %and27 = lshr i32 %blue, 11
  %shr28 = and i32 %and27, 31
  %or29 = or i32 %or, %shr28
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %14 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pseudo_palette, align 4
  %arrayidx = getelementptr i32, ptr %15, i32 %regno
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or29, ptr %arrayidx, align 4
  br label %cleanup

if.else30:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  %and31 = and i32 %red, 63488
  %and32 = lshr i32 %green, 5
  %shr33 = and i32 %and32, 2016
  %or34 = or i32 %shr33, %and31
  %and35 = lshr i32 %blue, 11
  %shr36 = and i32 %and35, 31
  %or37 = or i32 %or34, %shr36
  %pseudo_palette38 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %17 = ptrtoint ptr %pseudo_palette38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pseudo_palette38, align 4
  %arrayidx39 = getelementptr i32, ptr %18, i32 %regno
  %19 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or37, ptr %arrayidx39, align 4
  br label %cleanup

sw.bb41:                                          ; preds = %if.then16.sw.bb41_crit_edge, %if.then16.sw.bb41_crit_edge93
  %shr42 = lshr i32 %red, 8
  %shr43 = lshr i32 %green, 8
  %shr44 = lshr i32 %blue, 8
  %red46 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %20 = ptrtoint ptr %red46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %red46, align 4
  %shl = shl i32 %shr42, %21
  %green49 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %22 = ptrtoint ptr %green49 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %green49, align 4
  %shl51 = shl i32 %shr43, %23
  %or52 = or i32 %shl51, %shl
  %blue54 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %24 = ptrtoint ptr %blue54 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %blue54, align 4
  %shl56 = shl i32 %shr44, %25
  %or57 = or i32 %or52, %shl56
  %pseudo_palette58 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %26 = ptrtoint ptr %pseudo_palette58 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pseudo_palette58, align 4
  %arrayidx59 = getelementptr i32, ptr %27, i32 %regno
  %28 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or57, ptr %arrayidx59, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb41, %if.else30, %if.then23, %if.then16.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.then5 ], [ 0, %if.then16.cleanup_crit_edge ], [ 0, %sw.bb41 ], [ 0, %if.then23 ], [ 0, %if.else30 ], [ 0, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entry1) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvesafb_setcmap(ptr nocapture noundef readonly %cmap, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @dac_width, align 1
  %sub = select i1 %.b, i32 8, i32 10
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp = icmp eq i32 %1, 8
  br i1 %cmp, label %if.then, label %for.cond41.preheader

for.cond41.preheader:                             ; preds = %entry
  %len42 = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 1
  %2 = ptrtoint ptr %len42 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp43109.not = icmp eq i32 %3, 0
  br i1 %cmp43109.not, label %for.cond41.preheader.cleanup_crit_edge, label %for.body45.lr.ph

for.cond41.preheader.cleanup_crit_edge:           ; preds = %for.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body45.lr.ph:                                 ; preds = %for.cond41.preheader
  %red48 = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 2
  %green51 = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 3
  %blue54 = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 4
  br label %for.body45

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %cmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmap, align 4
  %len = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 1
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %add = add i32 %7, %5
  %cmap2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12
  %8 = ptrtoint ptr %cmap2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmap2, align 4
  %len5 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len5, align 4
  %add6 = add i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add6)
  %cmp7 = icmp ugt i32 %add, %add6
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp12 = icmp ult i32 %5, %9
  %or.cond = or i1 %cmp12, %cmp7
  br i1 %or.cond, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %if.then
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 4) #16
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %if.end.cleanup_crit_edge, label %if.end7.i, !prof !416

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7.i:                                        ; preds = %if.end
  %14 = extractvalue { i32, i1 } %12, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3264) #22
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp19112.not = icmp eq i32 %16, 0
  br i1 %cmp19112.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %red = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 2
  %green = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 3
  %blue = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 4
  %17 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %red, align 4
  %19 = ptrtoint ptr %green to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %green, align 4
  %21 = ptrtoint ptr %blue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %blue, align 4
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0113 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %18, i32 %i.0113
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx, align 2
  %conv21 = zext i16 %26 to i32
  %shr = lshr i32 %conv21, %sub
  %conv22 = trunc i32 %shr to i8
  %arrayidx23 = getelementptr %struct.uvesafb_pal_entry, ptr %call8.i, i32 %i.0113
  %red24 = getelementptr %struct.uvesafb_pal_entry, ptr %call8.i, i32 %i.0113, i32 2
  %27 = ptrtoint ptr %red24 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv22, ptr %red24, align 2
  %arrayidx25 = getelementptr i16, ptr %20, i32 %i.0113
  %28 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx25, align 2
  %conv26 = zext i16 %29 to i32
  %shr27 = lshr i32 %conv26, %sub
  %conv28 = trunc i32 %shr27 to i8
  %green30 = getelementptr %struct.uvesafb_pal_entry, ptr %call8.i, i32 %i.0113, i32 1
  %30 = ptrtoint ptr %green30 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv28, ptr %green30, align 1
  %arrayidx31 = getelementptr i16, ptr %22, i32 %i.0113
  %31 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx31, align 2
  %conv32 = zext i16 %32 to i32
  %shr33 = lshr i32 %conv32, %sub
  %conv34 = trunc i32 %shr33 to i8
  %33 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv34, ptr %arrayidx23, align 4
  %pad = getelementptr %struct.uvesafb_pal_entry, ptr %call8.i, i32 %i.0113, i32 3
  %34 = ptrtoint ptr %pad to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %pad, align 1
  %inc = add nuw i32 %i.0113, 1
  %cmp19 = icmp ult i32 %inc, %24
  br i1 %cmp19, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %24, %for.body.for.end_crit_edge ]
  %35 = ptrtoint ptr %cmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cmap, align 4
  %call40 = tail call fastcc i32 @uvesafb_setpalette(ptr noundef nonnull %call8.i, i32 noundef %.lcssa, i32 noundef %36)
  tail call void @kfree(ptr noundef nonnull %call8.i) #16
  br label %cleanup

for.body45:                                       ; preds = %for.body45.for.body45_crit_edge, %for.body45.lr.ph
  %err.0111 = phi i32 [ 0, %for.body45.lr.ph ], [ %or, %for.body45.for.body45_crit_edge ]
  %i.1110 = phi i32 [ 0, %for.body45.lr.ph ], [ %inc59, %for.body45.for.body45_crit_edge ]
  %37 = ptrtoint ptr %cmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cmap, align 4
  %add47 = add i32 %38, %i.1110
  %39 = ptrtoint ptr %red48 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %red48, align 4
  %arrayidx49 = getelementptr i16, ptr %40, i32 %i.1110
  %41 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx49, align 2
  %conv50 = zext i16 %42 to i32
  %43 = ptrtoint ptr %green51 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %green51, align 4
  %arrayidx52 = getelementptr i16, ptr %44, i32 %i.1110
  %45 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx52, align 2
  %conv53 = zext i16 %46 to i32
  %47 = ptrtoint ptr %blue54 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %blue54, align 4
  %arrayidx55 = getelementptr i16, ptr %48, i32 %i.1110
  %49 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx55, align 2
  %conv56 = zext i16 %50 to i32
  %call57 = tail call i32 @uvesafb_setcolreg(i32 noundef %add47, i32 noundef %conv50, i32 noundef %conv53, i32 noundef %conv56, i32 noundef 0, ptr noundef %info)
  %or = or i32 %call57, %err.0111
  %inc59 = add nuw i32 %i.1110, 1
  %51 = ptrtoint ptr %len42 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len42, align 4
  %cmp43 = icmp ult i32 %inc59, %52
  br i1 %cmp43, label %for.body45.for.body45_crit_edge, label %for.body45.cleanup_crit_edge

for.body45.cleanup_crit_edge:                     ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body45.for.body45_crit_edge:                  ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body45

cleanup:                                          ; preds = %for.body45.cleanup_crit_edge, %for.end, %if.end7.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge, %for.cond41.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ %call40, %for.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %for.cond41.preheader.cleanup_crit_edge ], [ %or, %for.body45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvesafb_blank(i32 noundef %blank, ptr nocapture noundef readnone %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #21
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i10.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 56) #21
  %done.i = getelementptr inbounds %struct.uvesafb_ktask, ptr %call7.i.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i10.i, ptr %done.i, align 8
  %tobool3.not.i = icmp eq ptr %call7.i.i10.i, null
  br i1 %tobool3.not.i, label %if.then.i.cleanup.sink.split_crit_edge, label %if.end

if.then.i.cleanup.sink.split_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.then.i
  %regs = getelementptr inbounds %struct.uvesafb_task, ptr %call7.i.i.i, i32 0, i32 2
  %eax = getelementptr inbounds %struct.uvesafb_task, ptr %call7.i.i.i, i32 0, i32 2, i32 6
  %3 = ptrtoint ptr %eax to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 20240, ptr %eax, align 8
  %4 = zext i32 %blank to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %blank, label %if.end.uvesafb_free.exit_crit_edge [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb3
    i32 4, label %sw.bb7
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end.uvesafb_free.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %uvesafb_free.exit

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb3, %if.end.sw.epilog_crit_edge
  %.sink = phi i32 [ 1025, %sw.bb7 ], [ 257, %sw.bb3 ], [ 1, %if.end.sw.epilog_crit_edge ]
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %regs, align 8
  %call11 = tail call fastcc i32 @uvesafb_exec(ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %sw.epilog.if.then16_crit_edge

sw.epilog.if.then16_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then16

lor.lhs.false:                                    ; preds = %sw.epilog
  %6 = ptrtoint ptr %eax to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eax, align 8
  %and = and i32 %7, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %and)
  %cmp.not = icmp eq i32 %and, 79
  br i1 %cmp.not, label %lor.lhs.false.uvesafb_free.exit_crit_edge, label %lor.lhs.false.if.then16_crit_edge

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then16

lor.lhs.false.uvesafb_free.exit_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %uvesafb_free.exit

if.then16:                                        ; preds = %lor.lhs.false.if.then16_crit_edge, %sw.epilog.if.then16_crit_edge
  br label %uvesafb_free.exit

uvesafb_free.exit:                                ; preds = %if.then16, %lor.lhs.false.uvesafb_free.exit_crit_edge, %if.end.uvesafb_free.exit_crit_edge
  %err.0 = phi i32 [ 1, %if.end.uvesafb_free.exit_crit_edge ], [ 1, %if.then16 ], [ 0, %lor.lhs.false.uvesafb_free.exit_crit_edge ]
  %8 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %done.i, align 8
  tail call void @kfree(ptr noundef %9) #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %uvesafb_free.exit, %if.then.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %err.0, %uvesafb_free.exit ], [ -12, %if.then.i.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uvesafb_pan_display(ptr nocapture noundef readnone %var, ptr nocapture noundef readnone %info) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_find_best_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uvesafb_setpalette(ptr noundef %entries, i32 noundef %count, i32 noundef %start) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %start, %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %cmp = icmp sgt i32 %add, 256
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #21
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i10.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 56) #21
  %done.i = getelementptr inbounds %struct.uvesafb_ktask, ptr %call7.i.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i10.i, ptr %done.i, align 8
  %tobool3.not.i = icmp eq ptr %call7.i.i10.i, null
  br i1 %tobool3.not.i, label %if.then.i.cleanup.sink.split_crit_edge, label %uvesafb_free.exit

if.then.i.cleanup.sink.split_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

uvesafb_free.exit:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %regs = getelementptr inbounds %struct.uvesafb_task, ptr %call7.i.i.i, i32 0, i32 2
  %eax = getelementptr inbounds %struct.uvesafb_task, ptr %call7.i.i.i, i32 0, i32 2, i32 6
  %3 = ptrtoint ptr %eax to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 20233, ptr %eax, align 8
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %regs, align 8
  %ecx = getelementptr inbounds %struct.uvesafb_task, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %ecx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %count, ptr %ecx, align 4
  %edx = getelementptr inbounds %struct.uvesafb_task, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %edx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %start, ptr %edx, align 8
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %call7.i.i.i, align 8
  %mul = shl i32 %count, 2
  %buf_len = getelementptr inbounds %struct.uvesafb_task, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %buf_len, align 4
  %buf = getelementptr inbounds %struct.uvesafb_ktask, ptr %call7.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entries, ptr %buf, align 4
  %call11 = tail call fastcc i32 @uvesafb_exec(ptr noundef nonnull %call7.i.i.i)
  %10 = ptrtoint ptr %eax to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eax, align 8
  %and = and i32 %11, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %and)
  %cmp15.not = icmp eq i32 %and, 79
  %spec.store.select = select i1 %cmp15.not, i32 %call11, i32 1
  %12 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %done.i, align 8
  tail call void @kfree(ptr noundef %13) #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %uvesafb_free.exit, %if.then.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %spec.store.select, %uvesafb_free.exit ], [ -12, %if.then.i.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvesafb_show_vbe_ver(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %vbe_version = getelementptr inbounds %struct.vbe_ib, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %vbe_version to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vbe_version, align 4
  %conv = zext i16 %5 to i32
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.127, i32 noundef %conv)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvesafb_show_vbe_modes(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %vbe_modes_cnt = getelementptr inbounds %struct.uvesafb_par, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %vbe_modes_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vbe_modes_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp26 = icmp sgt i32 %5, 0
  br i1 %cmp26, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vbe_modes = getelementptr inbounds %struct.uvesafb_par, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %ret.027 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %ret.027
  %sub = sub nuw nsw i32 4096, %ret.027
  %6 = ptrtoint ptr %vbe_modes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vbe_modes, align 4
  %x_res = getelementptr %struct.vbe_mode_ib, ptr %7, i32 %i.028, i32 9
  %8 = ptrtoint ptr %x_res to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %x_res, align 1
  %conv = zext i16 %9 to i32
  %y_res = getelementptr %struct.vbe_mode_ib, ptr %7, i32 %i.028, i32 10
  %10 = ptrtoint ptr %y_res to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %y_res, align 1
  %conv5 = zext i16 %11 to i32
  %depth = getelementptr %struct.vbe_mode_ib, ptr %7, i32 %i.028, i32 44
  %12 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %depth, align 1
  %conv8 = zext i8 %13 to i32
  %mode_id = getelementptr %struct.vbe_mode_ib, ptr %7, i32 %i.028, i32 43
  %14 = ptrtoint ptr %mode_id to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %mode_id, align 1
  %conv11 = zext i16 %15 to i32
  %call12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.129, i32 noundef %conv, i32 noundef %conv5, i32 noundef %conv8, i32 noundef %conv11) #16
  %add = add i32 %call12, %ret.027
  %inc = add nuw nsw i32 %i.028, 1
  %16 = ptrtoint ptr %vbe_modes_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vbe_modes_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %17)
  %cmp = icmp slt i32 %inc, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp2 = icmp ult i32 %add, 4096
  %or.cond = select i1 %cmp, i1 %cmp2, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvesafb_show_vendor(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %oem_vendor_name_ptr = getelementptr inbounds %struct.vbe_ib, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %oem_vendor_name_ptr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %oem_vendor_name_ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.131, ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvesafb_show_product_name(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %oem_product_name_ptr = getelementptr inbounds %struct.vbe_ib, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %oem_product_name_ptr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %oem_product_name_ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.131, ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvesafb_show_product_rev(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %oem_product_rev_ptr = getelementptr inbounds %struct.vbe_ib, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %oem_product_rev_ptr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %oem_product_rev_ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.131, ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvesafb_show_oem_string(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %oem_string_ptr = getelementptr inbounds %struct.vbe_ib, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %oem_string_ptr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %oem_string_ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.131, ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvesafb_show_nocrtc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %nocrtc = getelementptr inbounds %struct.uvesafb_par, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %nocrtc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nocrtc, align 4
  %conv = zext i8 %5 to i32
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.135, i32 noundef %conv)
  ret i32 %call2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uvesafb_store_nocrtc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef returned %count) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not = icmp eq i32 %count, 0
  br i1 %cmp.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %5)
  %cmp2 = icmp ne i8 %5, 48
  %nocrtc = getelementptr inbounds %struct.uvesafb_par, ptr %3, i32 0, i32 3
  %. = zext i1 %cmp2 to i8
  %6 = ptrtoint ptr %nocrtc to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %., ptr %nocrtc, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then, %entry.if.end6_crit_edge
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v86d_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.131, ptr noundef nonnull @v86d_path)
  ret i32 %call
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @v86d_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %buf, i32 noundef returned %count) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @strncpy(ptr noundef nonnull @v86d_path, ptr noundef %buf, i32 noundef 4095)
  ret i32 %count
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @param_set_scroll(ptr nocapture noundef readonly %val, ptr nocapture noundef readnone %kp) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @ypan, align 4
  %call = tail call i32 @strcmp(ptr noundef %val, ptr noundef nonnull dereferenceable(7) @.str.5) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.else

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @strcmp(ptr noundef %val, ptr noundef nonnull dereferenceable(5) @.str.6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.else.return.sink.split_crit_edge, label %if.else4

if.else.return.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %return.sink.split

if.else4:                                         ; preds = %if.else
  %call5 = tail call i32 @strcmp(ptr noundef %val, ptr noundef nonnull dereferenceable(6) @.str.7) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else4.return.sink.split_crit_edge, label %if.else4.return_crit_edge

if.else4.return_crit_edge:                        ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.else4.return.sink.split_crit_edge:             ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #18
  br label %return.sink.split

return.sink.split:                                ; preds = %if.else4.return.sink.split_crit_edge, %if.else.return.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.else.return.sink.split_crit_edge ], [ 2, %if.else4.return.sink.split_crit_edge ]
  store i32 %.sink, ptr @ypan, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.else4.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.else4.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 164)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 164)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !17, !19, !21, !22, !24, !26, !27, !29, !31, !32, !34, !36, !37, !39, !41, !42, !44, !46, !47, !49, !51, !52, !54, !56, !57, !59, !61, !62, !64, !66, !67, !69, !71, !72, !74, !76, !77, !79, !81, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !109, !110, !111, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !149, !150, !151, !153, !154, !155, !157, !159, !160, !161, !163, !165, !167, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !202, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !226, !227, !229, !230, !231, !233, !234, !235, !237, !239, !240, !241, !242, !244, !245, !246, !248, !249, !250, !252, !253, !255, !257, !259, !261, !263, !264, !265, !266, !268, !269, !270, !271, !273, !274, !275, !277, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !292, !294, !295, !296, !297, !299, !301, !302, !303, !304, !306, !307, !308, !309, !311, !312, !313, !314, !316, !317, !318, !319, !321, !322, !323, !325, !327, !328, !329, !330, !332, !334, !335, !336, !337, !339, !340, !341, !343, !345, !347, !349, !350, !352, !354, !355, !357, !359, !360, !362, !364, !365, !367, !368, !370, !371, !373, !375, !377, !379, !380, !381, !383, !385, !386, !388, !389, !390, !392, !393, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405}
!llvm.named.register.sp = !{!406}
!llvm.module.flags = !{!407, !408, !409, !410, !411, !412, !413, !414}
!llvm.ident = !{!415}

!0 = !{ptr @__initcall__kmod_uvesafb__472_1922_uvesafb_init6, !1, !"__initcall__kmod_uvesafb__472_1922_uvesafb_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1922, i32 1}
!2 = !{ptr @__exitcall_uvesafb_exit, !3, !"__exitcall_uvesafb_exit", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1943, i32 1}
!4 = !{ptr @__param_scroll, !5, !"__param_scroll", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1965, i32 1}
!6 = !{ptr @__UNIQUE_ID_scrolltype473, !5, !"__UNIQUE_ID_scrolltype473", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_scroll474, !8, !"__UNIQUE_ID_scroll474", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1966, i32 1}
!9 = !{ptr @__param_vgapal, !10, !"__param_vgapal", i1 false, i1 false}
!10 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1968, i32 1}
!11 = !{ptr @__UNIQUE_ID_vgapaltype475, !10, !"__UNIQUE_ID_vgapaltype475", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_vgapal476, !13, !"__UNIQUE_ID_vgapal476", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1969, i32 1}
!14 = !{ptr @__param_pmipal, !15, !"__param_pmipal", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1970, i32 1}
!16 = !{ptr @__UNIQUE_ID_pmipaltype477, !15, !"__UNIQUE_ID_pmipaltype477", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_pmipal478, !18, !"__UNIQUE_ID_pmipal478", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1971, i32 1}
!19 = !{ptr @__param_mtrr, !20, !"__param_mtrr", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1972, i32 1}
!21 = !{ptr @__UNIQUE_ID_mtrrtype479, !20, !"__UNIQUE_ID_mtrrtype479", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_mtrr480, !23, !"__UNIQUE_ID_mtrr480", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1973, i32 1}
!24 = !{ptr @__param_blank, !25, !"__param_blank", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1975, i32 1}
!26 = !{ptr @__UNIQUE_ID_blanktype481, !25, !"__UNIQUE_ID_blanktype481", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_blank482, !28, !"__UNIQUE_ID_blank482", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1976, i32 1}
!29 = !{ptr @__param_nocrtc, !30, !"__param_nocrtc", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1977, i32 1}
!31 = !{ptr @__UNIQUE_ID_nocrtctype483, !30, !"__UNIQUE_ID_nocrtctype483", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_nocrtc484, !33, !"__UNIQUE_ID_nocrtc484", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1978, i32 1}
!34 = !{ptr @__param_noedid, !35, !"__param_noedid", i1 false, i1 false}
!35 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1979, i32 1}
!36 = !{ptr @__UNIQUE_ID_noedidtype485, !35, !"__UNIQUE_ID_noedidtype485", i1 false, i1 false}
!37 = !{ptr @__UNIQUE_ID_noedid486, !38, !"__UNIQUE_ID_noedid486", i1 false, i1 false}
!38 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1980, i32 1}
!39 = !{ptr @__param_vram_remap, !40, !"__param_vram_remap", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1982, i32 1}
!41 = !{ptr @__UNIQUE_ID_vram_remaptype487, !40, !"__UNIQUE_ID_vram_remaptype487", i1 false, i1 false}
!42 = !{ptr @__UNIQUE_ID_vram_remap488, !43, !"__UNIQUE_ID_vram_remap488", i1 false, i1 false}
!43 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1983, i32 1}
!44 = !{ptr @__param_vram_total, !45, !"__param_vram_total", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1984, i32 1}
!46 = !{ptr @__UNIQUE_ID_vram_totaltype489, !45, !"__UNIQUE_ID_vram_totaltype489", i1 false, i1 false}
!47 = !{ptr @__UNIQUE_ID_vram_total490, !48, !"__UNIQUE_ID_vram_total490", i1 false, i1 false}
!48 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1985, i32 1}
!49 = !{ptr @__param_maxclk, !50, !"__param_maxclk", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1986, i32 1}
!51 = !{ptr @__UNIQUE_ID_maxclktype491, !50, !"__UNIQUE_ID_maxclktype491", i1 false, i1 false}
!52 = !{ptr @__UNIQUE_ID_maxclk492, !53, !"__UNIQUE_ID_maxclk492", i1 false, i1 false}
!53 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1987, i32 1}
!54 = !{ptr @__param_maxhf, !55, !"__param_maxhf", i1 false, i1 false}
!55 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1988, i32 1}
!56 = !{ptr @__UNIQUE_ID_maxhftype493, !55, !"__UNIQUE_ID_maxhftype493", i1 false, i1 false}
!57 = !{ptr @__UNIQUE_ID_maxhf494, !58, !"__UNIQUE_ID_maxhf494", i1 false, i1 false}
!58 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1989, i32 1}
!59 = !{ptr @__param_maxvf, !60, !"__param_maxvf", i1 false, i1 false}
!60 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1991, i32 1}
!61 = !{ptr @__UNIQUE_ID_maxvftype495, !60, !"__UNIQUE_ID_maxvftype495", i1 false, i1 false}
!62 = !{ptr @__UNIQUE_ID_maxvf496, !63, !"__UNIQUE_ID_maxvf496", i1 false, i1 false}
!63 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1992, i32 1}
!64 = !{ptr @__param_mode_option, !65, !"__param_mode_option", i1 false, i1 false}
!65 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1994, i32 1}
!66 = !{ptr @__UNIQUE_ID_mode_optiontype497, !65, !"__UNIQUE_ID_mode_optiontype497", i1 false, i1 false}
!67 = !{ptr @__UNIQUE_ID_mode_option498, !68, !"__UNIQUE_ID_mode_option498", i1 false, i1 false}
!68 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1995, i32 1}
!69 = !{ptr @__param_vbemode, !70, !"__param_vbemode", i1 false, i1 false}
!70 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1997, i32 1}
!71 = !{ptr @__UNIQUE_ID_vbemodetype499, !70, !"__UNIQUE_ID_vbemodetype499", i1 false, i1 false}
!72 = !{ptr @__UNIQUE_ID_vbemode500, !73, !"__UNIQUE_ID_vbemode500", i1 false, i1 false}
!73 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1998, i32 1}
!74 = !{ptr @__param_v86d, !75, !"__param_v86d", i1 false, i1 false}
!75 = !{!"../drivers/video/fbdev/uvesafb.c", i32 2000, i32 1}
!76 = !{ptr @__UNIQUE_ID_v86dtype501, !75, !"__UNIQUE_ID_v86dtype501", i1 false, i1 false}
!77 = !{ptr @__UNIQUE_ID_v86d502, !78, !"__UNIQUE_ID_v86d502", i1 false, i1 false}
!78 = !{!"../drivers/video/fbdev/uvesafb.c", i32 2001, i32 1}
!79 = !{ptr @__UNIQUE_ID_file503, !80, !"__UNIQUE_ID_file503", i1 false, i1 false}
!80 = !{!"../drivers/video/fbdev/uvesafb.c", i32 2003, i32 1}
!81 = !{ptr @__UNIQUE_ID_license504, !80, !"__UNIQUE_ID_license504", i1 false, i1 false}
!82 = !{ptr @__UNIQUE_ID_author505, !83, !"__UNIQUE_ID_author505", i1 false, i1 false}
!83 = !{!"../drivers/video/fbdev/uvesafb.c", i32 2004, i32 1}
!84 = !{ptr @__UNIQUE_ID_description506, !85, !"__UNIQUE_ID_description506", i1 false, i1 false}
!85 = !{!"../drivers/video/fbdev/uvesafb.c", i32 2005, i32 1}
!86 = !{ptr @nocrtc, !87, !"nocrtc", i1 false, i1 false}
!87 = !{!"../drivers/video/fbdev/uvesafb.c", i32 51, i32 13}
!88 = !{ptr @noedid, !89, !"noedid", i1 false, i1 false}
!89 = !{!"../drivers/video/fbdev/uvesafb.c", i32 52, i32 13}
!90 = !{ptr @vram_remap, !91, !"vram_remap", i1 false, i1 false}
!91 = !{!"../drivers/video/fbdev/uvesafb.c", i32 53, i32 12}
!92 = !{ptr @vram_total, !93, !"vram_total", i1 false, i1 false}
!93 = !{!"../drivers/video/fbdev/uvesafb.c", i32 54, i32 12}
!94 = !{ptr @maxclk, !95, !"maxclk", i1 false, i1 false}
!95 = !{!"../drivers/video/fbdev/uvesafb.c", i32 55, i32 12}
!96 = !{ptr @maxvf, !97, !"maxvf", i1 false, i1 false}
!97 = !{!"../drivers/video/fbdev/uvesafb.c", i32 56, i32 12}
!98 = !{ptr @maxhf, !99, !"maxhf", i1 false, i1 false}
!99 = !{!"../drivers/video/fbdev/uvesafb.c", i32 57, i32 12}
!100 = !{ptr @vbemode, !101, !"vbemode", i1 false, i1 false}
!101 = !{!"../drivers/video/fbdev/uvesafb.c", i32 58, i32 12}
!102 = !{ptr @mode_option, !103, !"mode_option", i1 false, i1 false}
!103 = !{!"../drivers/video/fbdev/uvesafb.c", i32 59, i32 14}
!104 = !{ptr @.str, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1888, i32 21}
!106 = !{ptr @.str.1, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1915, i32 4}
!108 = !{ptr @.str.2, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.3, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @uvesafb_init._entry, !107, !"_entry", i1 false, i1 false}
!111 = !{ptr @uvesafb_init._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.4, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1819, i32 38}
!114 = !{ptr @.str.5, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1822, i32 25}
!116 = !{ptr @.str.6, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1824, i32 30}
!118 = !{ptr @.str.7, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1826, i32 30}
!120 = !{ptr @.str.8, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1828, i32 30}
!122 = !{ptr @.str.9, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1830, i32 30}
!124 = !{ptr @.str.10, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1832, i32 31}
!126 = !{ptr @.str.11, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1834, i32 30}
!128 = !{ptr @.str.12, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1836, i32 30}
!130 = !{ptr @.str.13, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1838, i32 30}
!132 = !{ptr @.str.14, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1840, i32 30}
!134 = !{ptr @.str.15, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1842, i32 31}
!136 = !{ptr @.str.16, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1844, i32 31}
!138 = !{ptr @.str.17, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1846, i32 31}
!140 = !{ptr @.str.18, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1848, i32 31}
!142 = !{ptr @.str.19, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1850, i32 31}
!144 = !{ptr @.str.20, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1852, i32 31}
!146 = !{ptr @.str.21, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1857, i32 4}
!148 = !{ptr @.str.22, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @uvesafb_setup._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @uvesafb_setup._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.24, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1862, i32 3}
!153 = !{ptr @uvesafb_setup._entry.23, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @uvesafb_setup._entry_ptr.25, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @uvesafb_cn_id, !156, !"uvesafb_cn_id", i1 false, i1 false}
!156 = !{!"../drivers/video/fbdev/uvesafb.c", i32 33, i32 21}
!157 = !{ptr @.str.26, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/video/fbdev/uvesafb.c", i32 63, i32 8}
!159 = !{ptr @.str.27, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @uvfb_lock, !158, !"uvfb_lock", i1 false, i1 false}
!161 = !{ptr @uvfb_tasks, !162, !"uvfb_tasks", i1 false, i1 false}
!162 = !{!"../drivers/video/fbdev/uvesafb.c", i32 62, i32 30}
!163 = !{ptr @uvesafb_driver, !164, !"uvesafb_driver", i1 false, i1 false}
!164 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1801, i32 31}
!165 = !{ptr @.str.28, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1694, i32 3}
!167 = !{ptr @.str.29, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @uvesafb_probe._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @uvesafb_probe._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.31, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1716, i32 3}
!172 = !{ptr @uvesafb_probe._entry.30, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @uvesafb_probe._entry_ptr.32, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.34, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1723, i32 3}
!176 = !{ptr @uvesafb_probe._entry.33, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @uvesafb_probe._entry_ptr.35, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.37, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1733, i32 3}
!180 = !{ptr @uvesafb_probe._entry.36, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @uvesafb_probe._entry_ptr.38, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.40, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1742, i32 3}
!184 = !{ptr @uvesafb_probe._entry.39, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @uvesafb_probe._entry_ptr.41, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.43, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1747, i32 2}
!188 = !{ptr @uvesafb_probe._entry.42, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @uvesafb_probe._entry_ptr.44, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.46, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1750, i32 2}
!192 = !{ptr @uvesafb_probe._entry.45, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @uvesafb_probe._entry_ptr.47, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.49, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1754, i32 3}
!196 = !{ptr @uvesafb_probe._entry.48, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @uvesafb_probe._entry_ptr.50, !195, !"_entry_ptr", i1 false, i1 false}
!198 = distinct !{null, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/video/fbdev/uvesafb.c", i32 426, i32 36}
!200 = !{ptr @.str.52, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/video/fbdev/uvesafb.c", i32 430, i32 3}
!202 = !{ptr @.str.53, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @uvesafb_vbe_getinfo._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @uvesafb_vbe_getinfo._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.55, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/video/fbdev/uvesafb.c", i32 436, i32 3}
!207 = !{ptr @uvesafb_vbe_getinfo._entry.54, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @uvesafb_vbe_getinfo._entry_ptr.56, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.58, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/video/fbdev/uvesafb.c", i32 441, i32 3}
!211 = !{ptr @uvesafb_vbe_getinfo._entry.57, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @uvesafb_vbe_getinfo._entry_ptr.59, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.61, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/video/fbdev/uvesafb.c", i32 445, i32 2}
!215 = !{ptr @uvesafb_vbe_getinfo._entry.60, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @uvesafb_vbe_getinfo._entry_ptr.62, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.64, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/video/fbdev/uvesafb.c", i32 453, i32 3}
!219 = !{ptr @uvesafb_vbe_getinfo._entry.63, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @uvesafb_vbe_getinfo._entry_ptr.65, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @uvesafb_vbe_getinfo._entry.66, !222, !"_entry", i1 false, i1 false}
!222 = !{!"../drivers/video/fbdev/uvesafb.c", i32 457, i32 3}
!223 = !{ptr @uvesafb_vbe_getinfo._entry_ptr.67, !222, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @uvesafb_vbe_getinfo._entry.68, !225, !"_entry", i1 false, i1 false}
!225 = !{!"../drivers/video/fbdev/uvesafb.c", i32 461, i32 3}
!226 = !{ptr @uvesafb_vbe_getinfo._entry_ptr.69, !225, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.71, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/video/fbdev/uvesafb.c", i32 465, i32 3}
!229 = !{ptr @uvesafb_vbe_getinfo._entry.70, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @uvesafb_vbe_getinfo._entry_ptr.72, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.74, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/video/fbdev/uvesafb.c", i32 468, i32 2}
!233 = !{ptr @uvesafb_vbe_getinfo._entry.73, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @uvesafb_vbe_getinfo._entry_ptr.75, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @uvesafb_exec.seq, !236, !"seq", i1 false, i1 false}
!236 = !{!"../drivers/video/fbdev/uvesafb.c", i32 146, i32 13}
!237 = !{ptr @.str.76, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/video/fbdev/uvesafb.c", i32 156, i32 3}
!239 = !{ptr @.str.77, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @uvesafb_exec._entry, !238, !"_entry", i1 false, i1 false}
!241 = !{ptr @uvesafb_exec._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.79, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/video/fbdev/uvesafb.c", i32 205, i32 4}
!244 = !{ptr @uvesafb_exec._entry.78, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @uvesafb_exec._entry_ptr.80, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.82, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/video/fbdev/uvesafb.c", i32 206, i32 4}
!248 = !{ptr @uvesafb_exec._entry.81, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @uvesafb_exec._entry_ptr.83, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @init_completion.__key, !251, !"__key", i1 false, i1 false}
!251 = !{!"../include/linux/completion.h", i32 87, i32 2}
!252 = !{ptr @.str.84, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @.str.85, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/video/fbdev/uvesafb.c", i32 115, i32 3}
!255 = !{ptr @.str.86, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/video/fbdev/uvesafb.c", i32 116, i32 3}
!257 = !{ptr @v86d_path, !258, !"v86d_path", i1 false, i1 false}
!258 = !{!"../drivers/video/fbdev/uvesafb.c", i32 37, i32 13}
!259 = distinct !{null, !260, !"v86d_started", i1 false, i1 false}
!260 = !{!"../drivers/video/fbdev/uvesafb.c", i32 38, i32 13}
!261 = !{ptr @.str.87, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/video/fbdev/uvesafb.c", i32 510, i32 4}
!263 = !{ptr @.str.88, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @uvesafb_vbe_getmodes._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @uvesafb_vbe_getmodes._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.89, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/video/fbdev/uvesafb.c", i32 715, i32 3}
!268 = !{ptr @.str.90, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @uvesafb_vbe_getmonspecs._entry, !267, !"_entry", i1 false, i1 false}
!270 = !{ptr @uvesafb_vbe_getmonspecs._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.92, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/video/fbdev/uvesafb.c", i32 720, i32 3}
!273 = !{ptr @uvesafb_vbe_getmonspecs._entry.91, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @uvesafb_vbe_getmonspecs._entry_ptr.93, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.94, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/video/fbdev/uvesafb.c", i32 635, i32 3}
!277 = !{ptr @.str.95, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @uvesafb_vbe_getedid._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @uvesafb_vbe_getedid._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.97, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/video/fbdev/uvesafb.c", i32 637, i32 3}
!282 = !{ptr @uvesafb_vbe_getedid._entry.96, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @uvesafb_vbe_getedid._entry_ptr.98, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.100, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/video/fbdev/uvesafb.c", i32 639, i32 3}
!286 = !{ptr @uvesafb_vbe_getedid._entry.99, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @uvesafb_vbe_getedid._entry_ptr.101, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.103, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/video/fbdev/uvesafb.c", i32 641, i32 3}
!290 = !{ptr @uvesafb_vbe_getedid._entry.102, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @uvesafb_vbe_getedid._entry_ptr.104, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.105, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/video/fbdev/uvesafb.c", i32 774, i32 3}
!294 = !{ptr @.str.106, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @uvesafb_vbe_getstatesize._entry, !293, !"_entry", i1 false, i1 false}
!296 = !{ptr @uvesafb_vbe_getstatesize._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @uvesafb_ops, !298, !"uvesafb_ops", i1 false, i1 false}
!298 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1415, i32 22}
!299 = !{ptr @.str.107, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1174, i32 4}
!301 = !{ptr @.str.108, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @uvesafb_open._entry, !300, !"_entry", i1 false, i1 false}
!303 = !{ptr @uvesafb_open._entry_ptr, !300, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.109, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/video/fbdev/uvesafb.c", i32 380, i32 3}
!306 = !{ptr @.str.110, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @uvesafb_vbe_state_save._entry, !305, !"_entry", i1 false, i1 false}
!308 = !{ptr @uvesafb_vbe_state_save._entry_ptr, !305, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.111, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/video/fbdev/uvesafb.c", i32 411, i32 3}
!311 = !{ptr @.str.112, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @uvesafb_vbe_state_restore._entry, !310, !"_entry", i1 false, i1 false}
!313 = !{ptr @uvesafb_vbe_state_restore._entry_ptr, !310, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.113, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1286, i32 4}
!316 = !{ptr @.str.114, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @uvesafb_set_par._entry, !315, !"_entry", i1 false, i1 false}
!318 = !{ptr @uvesafb_set_par._entry_ptr, !315, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.116, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1294, i32 4}
!321 = !{ptr @uvesafb_set_par._entry.115, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @uvesafb_set_par._entry_ptr.117, !320, !"_entry_ptr", i1 false, i1 false}
!323 = distinct !{null, !324, !"dac_width", i1 false, i1 false}
!324 = !{!"../drivers/video/fbdev/uvesafb.c", i32 60, i32 12}
!325 = !{ptr @.str.118, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/video/fbdev/uvesafb.c", i32 852, i32 3}
!327 = !{ptr @.str.119, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @uvesafb_vbe_init_mode._entry, !326, !"_entry", i1 false, i1 false}
!329 = !{ptr @uvesafb_vbe_init_mode._entry_ptr, !326, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.120, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/video/fbdev/uvesafb.c", i32 875, i32 18}
!332 = !{ptr @.str.121, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1502, i32 3}
!334 = !{ptr @.str.122, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @uvesafb_init_info._entry, !333, !"_entry", i1 false, i1 false}
!336 = !{ptr @uvesafb_init_info._entry_ptr, !333, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.124, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1506, i32 3}
!339 = !{ptr @uvesafb_init_info._entry.123, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @uvesafb_init_info._entry_ptr.125, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @uvesafb_fix, !342, !"uvesafb_fix", i1 false, i1 false}
!342 = !{!"../drivers/video/fbdev/uvesafb.c", i32 40, i32 39}
!343 = !{ptr @uvesafb_dev_attgrp, !344, !"uvesafb_dev_attgrp", i1 false, i1 false}
!344 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1674, i32 37}
!345 = !{ptr @uvesafb_dev_attrs, !346, !"uvesafb_dev_attrs", i1 false, i1 false}
!346 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1663, i32 26}
!347 = !{ptr @.str.126, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1555, i32 8}
!349 = !{ptr @dev_attr_vbe_version, !348, !"dev_attr_vbe_version", i1 false, i1 false}
!350 = !{ptr @.str.127, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1552, i32 34}
!352 = !{ptr @.str.128, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1574, i32 8}
!354 = !{ptr @dev_attr_vbe_modes, !353, !"dev_attr_vbe_modes", i1 false, i1 false}
!355 = !{ptr @.str.129, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1566, i32 4}
!357 = !{ptr @.str.130, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1589, i32 8}
!359 = !{ptr @dev_attr_oem_vendor, !358, !"dev_attr_oem_vendor", i1 false, i1 false}
!360 = !{ptr @.str.131, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1583, i32 35}
!362 = !{ptr @.str.132, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1604, i32 8}
!364 = !{ptr @dev_attr_oem_product_name, !363, !"dev_attr_oem_product_name", i1 false, i1 false}
!365 = !{ptr @.str.133, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1619, i32 8}
!367 = !{ptr @dev_attr_oem_product_rev, !366, !"dev_attr_oem_product_rev", i1 false, i1 false}
!368 = !{ptr @.str.134, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1634, i32 8}
!370 = !{ptr @dev_attr_oem_string, !369, !"dev_attr_oem_string", i1 false, i1 false}
!371 = !{ptr @dev_attr_nocrtc, !372, !"dev_attr_nocrtc", i1 false, i1 false}
!372 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1660, i32 8}
!373 = !{ptr @.str.135, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1642, i32 34}
!375 = !{ptr @uvesafb_device, !376, !"uvesafb_device", i1 false, i1 false}
!376 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1809, i32 32}
!377 = !{ptr @.str.136, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1879, i32 8}
!379 = !{ptr @driver_attr_v86d, !378, !"driver_attr_v86d", i1 false, i1 false}
!380 = !{ptr @__param_str_scroll, !5, !"__param_str_scroll", i1 false, i1 false}
!381 = !{ptr @param_ops_scroll, !382, !"param_ops_scroll", i1 false, i1 false}
!382 = !{!"../drivers/video/fbdev/uvesafb.c", i32 1960, i32 38}
!383 = !{ptr @ypan, !384, !"ypan", i1 false, i1 false}
!384 = !{!"../drivers/video/fbdev/uvesafb.c", i32 49, i32 12}
!385 = !{ptr @__param_str_vgapal, !10, !"__param_str_vgapal", i1 false, i1 false}
!386 = !{ptr @pmi_setpal, !387, !"pmi_setpal", i1 false, i1 false}
!387 = !{!"../drivers/video/fbdev/uvesafb.c", i32 50, i32 13}
!388 = !{ptr @__param_str_pmipal, !15, !"__param_str_pmipal", i1 false, i1 false}
!389 = !{ptr @__param_str_mtrr, !20, !"__param_str_mtrr", i1 false, i1 false}
!390 = !{ptr @mtrr, !391, !"mtrr", i1 false, i1 false}
!391 = !{!"../drivers/video/fbdev/uvesafb.c", i32 47, i32 12}
!392 = !{ptr @__param_str_blank, !25, !"__param_str_blank", i1 false, i1 false}
!393 = !{ptr @blank, !394, !"blank", i1 false, i1 false}
!394 = !{!"../drivers/video/fbdev/uvesafb.c", i32 48, i32 13}
!395 = !{ptr @__param_str_nocrtc, !30, !"__param_str_nocrtc", i1 false, i1 false}
!396 = !{ptr @__param_str_noedid, !35, !"__param_str_noedid", i1 false, i1 false}
!397 = !{ptr @__param_str_vram_remap, !40, !"__param_str_vram_remap", i1 false, i1 false}
!398 = !{ptr @__param_str_vram_total, !45, !"__param_str_vram_total", i1 false, i1 false}
!399 = !{ptr @__param_str_maxclk, !50, !"__param_str_maxclk", i1 false, i1 false}
!400 = !{ptr @__param_str_maxhf, !55, !"__param_str_maxhf", i1 false, i1 false}
!401 = !{ptr @__param_str_maxvf, !60, !"__param_str_maxvf", i1 false, i1 false}
!402 = !{ptr @__param_str_mode_option, !65, !"__param_str_mode_option", i1 false, i1 false}
!403 = !{ptr @__param_str_vbemode, !70, !"__param_str_vbemode", i1 false, i1 false}
!404 = !{ptr @__param_str_v86d, !75, !"__param_str_v86d", i1 false, i1 false}
!405 = !{ptr @__param_string_v86d, !75, !"__param_string_v86d", i1 false, i1 false}
!406 = !{!"sp"}
!407 = !{i32 1, !"wchar_size", i32 2}
!408 = !{i32 1, !"min_enum_size", i32 4}
!409 = !{i32 8, !"branch-target-enforcement", i32 0}
!410 = !{i32 8, !"sign-return-address", i32 0}
!411 = !{i32 8, !"sign-return-address-all", i32 0}
!412 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!413 = !{i32 7, !"uwtable", i32 1}
!414 = !{i32 7, !"frame-pointer", i32 2}
!415 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!416 = !{!"branch_weights", i32 1, i32 2000}
!417 = !{i8 0, i8 2}
!418 = !{i64 2148400487, i64 2148400513, i64 2148400542, i64 2148400576, i64 2148400607, i64 2148400630}
!419 = !{i64 2148402952, i64 2148402978, i64 2148403007, i64 2148403041, i64 2148403072, i64 2148403095}
