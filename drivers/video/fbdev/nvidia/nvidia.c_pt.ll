; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/nvidia/nvidia.c_pt.bc'
source_filename = "../drivers/video/fbdev/nvidia/nvidia.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.85, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }
%struct.nvidia_par = type { %struct._riva_hw_state, %struct._riva_hw_state, %struct._riva_hw_state, ptr, %struct.vgastate, [16 x i32], ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.NVFBLayout, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, [3 x %struct.nvidia_i2c_chan], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._riva_hw_state = type { [21 x i8], [65 x i8], [9 x i8], [5 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vgastate = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.NVFBLayout = type { i32, i32, i32, i32 }
%struct.nvidia_i2c_chan = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_algo_bit_data }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_cursor = type { i16, i16, i16, ptr, %struct.fbcurpos, %struct.fb_image }
%struct.fbcurpos = type { i16, i16 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }

@__initcall__kmod_nvidiafb__305_1527_nvidiafb_init6 = internal global ptr @nvidiafb_init, section ".initcall6.init", align 4
@nvidiafb_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @nvidiafb_pci_tbl, ptr @nvidiafb_probe, ptr @nvidiafb_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvidiafb_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_nvidiafb_exit = internal global ptr @nvidiafb_exit, section ".exitcall.exit", align 4
@__param_str_flatpanel = internal constant [19 x i8] c"nvidiafb.flatpanel\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@flatpanel = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_flatpanel = internal constant %struct.kernel_param { ptr @__param_str_flatpanel, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @flatpanel } }, section "__param", align 4
@__UNIQUE_ID_flatpaneltype306 = internal constant [32 x i8] c"nvidiafb.parmtype=flatpanel:int\00", section ".modinfo", align 1
@__UNIQUE_ID_flatpanel307 = internal constant [135 x i8] c"nvidiafb.parm=flatpanel:Enables experimental flat panel support for some chipsets. (0=disabled, 1=enabled, -1=autodetect) (default=-1)\00", section ".modinfo", align 1
@__param_str_fpdither = internal constant [18 x i8] c"nvidiafb.fpdither\00", align 1
@fpdither = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_fpdither = internal constant %struct.kernel_param { ptr @__param_str_fpdither, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @fpdither } }, section "__param", align 4
@__UNIQUE_ID_fpdithertype308 = internal constant [31 x i8] c"nvidiafb.parmtype=fpdither:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fpdither309 = internal constant [126 x i8] c"nvidiafb.parm=fpdither:Enables dithering of flat panel for 6 bits panels. (0=disabled, 1=enabled, -1=autodetect) (default=-1)\00", section ".modinfo", align 1
@__param_str_hwcur = internal constant [15 x i8] c"nvidiafb.hwcur\00", align 1
@hwcur = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_hwcur = internal constant %struct.kernel_param { ptr @__param_str_hwcur, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @hwcur } }, section "__param", align 4
@__UNIQUE_ID_hwcurtype310 = internal constant [28 x i8] c"nvidiafb.parmtype=hwcur:int\00", section ".modinfo", align 1
@__UNIQUE_ID_hwcur311 = internal constant [89 x i8] c"nvidiafb.parm=hwcur:Enables hardware cursor implementation. (0 or 1=enabled) (default=0)\00", section ".modinfo", align 1
@__param_str_noaccel = internal constant [17 x i8] c"nvidiafb.noaccel\00", align 1
@noaccel = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_noaccel = internal constant %struct.kernel_param { ptr @__param_str_noaccel, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @noaccel } }, section "__param", align 4
@__UNIQUE_ID_noacceltype312 = internal constant [30 x i8] c"nvidiafb.parmtype=noaccel:int\00", section ".modinfo", align 1
@__UNIQUE_ID_noaccel313 = internal constant [83 x i8] c"nvidiafb.parm=noaccel:Disables hardware acceleration. (0 or 1=disable) (default=0)\00", section ".modinfo", align 1
@__param_str_noscale = internal constant [17 x i8] c"nvidiafb.noscale\00", align 1
@noscale = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_noscale = internal constant %struct.kernel_param { ptr @__param_str_noscale, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @noscale } }, section "__param", align 4
@__UNIQUE_ID_noscaletype314 = internal constant [30 x i8] c"nvidiafb.parmtype=noscale:int\00", section ".modinfo", align 1
@__UNIQUE_ID_noscale315 = internal constant [88 x i8] c"nvidiafb.parm=noscale:Disables screen scaling. (0 or 1=disable) (default=0, do scaling)\00", section ".modinfo", align 1
@__param_str_paneltweak = internal constant [20 x i8] c"nvidiafb.paneltweak\00", align 1
@paneltweak = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_paneltweak = internal constant %struct.kernel_param { ptr @__param_str_paneltweak, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @paneltweak } }, section "__param", align 4
@__UNIQUE_ID_paneltweaktype316 = internal constant [33 x i8] c"nvidiafb.parmtype=paneltweak:int\00", section ".modinfo", align 1
@__UNIQUE_ID_paneltweak317 = internal constant [87 x i8] c"nvidiafb.parm=paneltweak:Tweak display settings for flatpanels. (default=0, no tweaks)\00", section ".modinfo", align 1
@__param_str_forceCRTC = internal constant [19 x i8] c"nvidiafb.forceCRTC\00", align 1
@forceCRTC = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_forceCRTC = internal constant %struct.kernel_param { ptr @__param_str_forceCRTC, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @forceCRTC } }, section "__param", align 4
@__UNIQUE_ID_forceCRTCtype318 = internal constant [32 x i8] c"nvidiafb.parmtype=forceCRTC:int\00", section ".modinfo", align 1
@__UNIQUE_ID_forceCRTC319 = internal constant [117 x i8] c"nvidiafb.parm=forceCRTC:Forces usage of a particular CRTC in case autodetection fails. (0 or 1) (default=autodetect)\00", section ".modinfo", align 1
@__param_str_vram = internal constant [14 x i8] c"nvidiafb.vram\00", align 1
@vram = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_vram = internal constant %struct.kernel_param { ptr @__param_str_vram, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @vram } }, section "__param", align 4
@__UNIQUE_ID_vramtype320 = internal constant [27 x i8] c"nvidiafb.parmtype=vram:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vram321 = internal constant [97 x i8] c"nvidiafb.parm=vram:amount of framebuffer memory to remap in MiB(default=0 - remap entire memory)\00", section ".modinfo", align 1
@__param_str_mode_option = internal constant [21 x i8] c"nvidiafb.mode_option\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@mode_option = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_mode_option = internal constant %struct.kernel_param { ptr @__param_str_mode_option, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @mode_option } }, section "__param", align 4
@__UNIQUE_ID_mode_optiontype322 = internal constant [36 x i8] c"nvidiafb.parmtype=mode_option:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mode_option323 = internal constant [53 x i8] c"nvidiafb.parm=mode_option:Specify initial video mode\00", section ".modinfo", align 1
@__param_str_bpp = internal constant [13 x i8] c"nvidiafb.bpp\00", align 1
@bpp = internal global { i32, [28 x i8] } { i32 8, [28 x i8] zeroinitializer }, align 32
@__param_bpp = internal constant %struct.kernel_param { ptr @__param_str_bpp, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @bpp } }, section "__param", align 4
@__UNIQUE_ID_bpptype324 = internal constant [26 x i8] c"nvidiafb.parmtype=bpp:int\00", section ".modinfo", align 1
@__UNIQUE_ID_bpp325 = internal constant [49 x i8] c"nvidiafb.parm=bpp:pixel width in bits(default=8)\00", section ".modinfo", align 1
@__param_str_reverse_i2c = internal constant [21 x i8] c"nvidiafb.reverse_i2c\00", align 1
@reverse_i2c = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_reverse_i2c = internal constant %struct.kernel_param { ptr @__param_str_reverse_i2c, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @reverse_i2c } }, section "__param", align 4
@__UNIQUE_ID_reverse_i2ctype326 = internal constant [34 x i8] c"nvidiafb.parmtype=reverse_i2c:int\00", section ".modinfo", align 1
@__UNIQUE_ID_reverse_i2c327 = internal constant [65 x i8] c"nvidiafb.parm=reverse_i2c:reverse port assignment of the i2c bus\00", section ".modinfo", align 1
@__param_str_nomtrr = internal constant [16 x i8] c"nvidiafb.nomtrr\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nomtrr = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_nomtrr = internal constant %struct.kernel_param { ptr @__param_str_nomtrr, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @nomtrr } }, section "__param", align 4
@__UNIQUE_ID_nomtrrtype328 = internal constant [30 x i8] c"nvidiafb.parmtype=nomtrr:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nomtrr329 = internal constant [73 x i8] c"nvidiafb.parm=nomtrr:Disables MTRR support (0 or 1=disabled) (default=0)\00", section ".modinfo", align 1
@__UNIQUE_ID_author330 = internal constant [32 x i8] c"nvidiafb.author=Antonino Daplas\00", section ".modinfo", align 1
@__UNIQUE_ID_description331 = internal constant [68 x i8] c"nvidiafb.description=Framebuffer driver for nVidia graphics chipset\00", section ".modinfo", align 1
@__UNIQUE_ID_file332 = internal constant [50 x i8] c"nvidiafb.file=drivers/video/fbdev/nvidia/nvidiafb\00", section ".modinfo", align 1
@__UNIQUE_ID_license333 = internal constant [21 x i8] c"nvidiafb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nvidiafb\00", [23 x i8] zeroinitializer }, align 32
@nvidiafb_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s START\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvidiafb_setup\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/video/fbdev/nvidia/nvidia.c\00", [60 x i8] zeroinitializer }, align 32
@nvidiafb_setup._entry_ptr = internal global ptr @nvidiafb_setup._entry, section ".printk_index", align 4
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"forceCRTC\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"flatpanel\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hwcur\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"noaccel\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"noscale\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reverse_i2c\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"paneltweak:\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vram:\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"backlight:\00", [21 x i8] zeroinitializer }, align 32
@backlight = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nomtrr\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fpdither:\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bpp:\00", [27 x i8] zeroinitializer }, align 32
@nvidiafb_setup._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s END\0A\00", [24 x i8] zeroinitializer }, align 32
@nvidiafb_setup._entry_ptr.19 = internal global ptr @nvidiafb_setup._entry.17, section ".printk_index", align 4
@nvidiafb_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4318, i32 -1, i32 -1, i32 -1, i32 196608, i32 16711680, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@nvidiafb_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @nvidiafb_suspend, ptr @nvidiafb_resume, ptr @nvidiafb_freeze, ptr @nvidiafb_resume, ptr @nvidiafb_hibernate, ptr @nvidiafb_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@nvidiafb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.20, ptr @.str.3, i32 1281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvidiafb_probe\00", [17 x i8] zeroinitializer }, align 32
@nvidiafb_probe._entry_ptr = internal global ptr @nvidiafb_probe._entry, section ".printk_index", align 4
@nvidiafb_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 1282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Assertion failed! %s,%s,%s,line=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@nvidiafb_probe._entry_ptr.23 = internal global ptr @nvidiafb_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pd != NULL\00", [21 x i8] zeroinitializer }, align 32
@nvidiafb_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.20, ptr @.str.3, i32 1297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013nvidiafb: cannot enable PCI device\0A\00", [58 x i8] zeroinitializer }, align 32
@nvidiafb_probe._entry_ptr.27 = internal global ptr @nvidiafb_probe._entry.25, section ".printk_index", align 4
@nvidiafb_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.20, ptr @.str.3, i32 1302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013nvidiafb: cannot request PCI regions\0A\00", [56 x i8] zeroinitializer }, align 32
@nvidiafb_probe._entry_ptr.30 = internal global ptr @nvidiafb_probe._entry.28, section ".printk_index", align 4
@nvidiafb_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.20, ptr @.str.3, i32 1308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016nvidiafb: flatpanel support enabled\0A\00", [57 x i8] zeroinitializer }, align 32
@nvidiafb_probe._entry_ptr.33 = internal global ptr @nvidiafb_probe._entry.31, section ".printk_index", align 4
@nvidiafb_fix = internal global { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i16 8, i16 1, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@nvidiafb_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.20, ptr @.str.3, i32 1328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013nvidiafb: cannot ioremap MMIO base\0A\00", [58 x i8] zeroinitializer }, align 32
@nvidiafb_probe._entry_ptr.36 = internal global ptr @nvidiafb_probe._entry.34, section ".printk_index", align 4
@nvidiafb_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.20, ptr @.str.3, i32 1336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013nvidiafb: unknown NV_ARCH\0A\00", [35 x i8] zeroinitializer }, align 32
@nvidiafb_probe._entry_ptr.39 = internal global ptr @nvidiafb_probe._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NV%x\00", [27 x i8] zeroinitializer }, align 32
@nvidiafb_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.20, ptr @.str.3, i32 1369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013nvidiafb: cannot ioremap FB base\0A\00", [60 x i8] zeroinitializer }, align 32
@nvidiafb_probe._entry_ptr.43 = internal global ptr @nvidiafb_probe._entry.41, section ".printk_index", align 4
@nvidia_fb_ops = internal global { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr @nvidiafb_open, ptr @nvidiafb_release, ptr null, ptr null, ptr @nvidiafb_check_var, ptr @nvidiafb_set_par, ptr @nvidiafb_setcolreg, ptr null, ptr @nvidiafb_blank, ptr @nvidiafb_pan_display, ptr @nvidiafb_fillrect, ptr @nvidiafb_copyarea, ptr @nvidiafb_imageblit, ptr @nvidiafb_cursor, ptr @nvidiafb_sync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@nvidiafb_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.20, ptr @.str.3, i32 1383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013nvidiafb: error setting initial video mode\0A\00", [50 x i8] zeroinitializer }, align 32
@nvidiafb_probe._entry_ptr.46 = internal global ptr @nvidiafb_probe._entry.44, section ".printk_index", align 4
@nvidiafb_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.20, ptr @.str.3, i32 1395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013nvidiafb: error registering nVidia framebuffer\0A\00", [46 x i8] zeroinitializer }, align 32
@nvidiafb_probe._entry_ptr.49 = internal global ptr @nvidiafb_probe._entry.47, section ".printk_index", align 4
@nvidiafb_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.20, ptr @.str.3, i32 1403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016nvidiafb: PCI nVidia %s framebuffer (%dMB @ 0x%lX)\0A\00", [42 x i8] zeroinitializer }, align 32
@nvidiafb_probe._entry_ptr.52 = internal global ptr @nvidiafb_probe._entry.50, section ".printk_index", align 4
@nvidiafb_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.20, ptr @.str.3, i32 1405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nvidiafb_probe._entry_ptr.54 = internal global ptr @nvidiafb_probe._entry.53, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nvidia_get_chipset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 1204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016nvidiafb: Device ID: %x \0A\00", [36 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvidia_get_chipset\00", [45 x i8] zeroinitializer }, align 32
@nvidia_get_chipset._entry_ptr = internal global ptr @nvidia_get_chipset._entry, section ".printk_index", align 4
@nvidia_get_chipset._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.3, i32 1216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016nvidiafb: Subsystem ID: %x \0A\00", [33 x i8] zeroinitializer }, align 32
@nvidia_get_chipset._entry_ptr.59 = internal global ptr @nvidia_get_chipset._entry.57, section ".printk_index", align 4
@nvidia_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.60, ptr @.str.3, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvidia_write_regs\00", [46 x i8] zeroinitializer }, align 32
@nvidia_write_regs._entry_ptr = internal global ptr @nvidia_write_regs._entry, section ".printk_index", align 4
@nvidia_write_regs._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.60, ptr @.str.3, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nvidia_write_regs._entry_ptr.62 = internal global ptr @nvidia_write_regs._entry.61, section ".printk_index", align 4
@nvidiafb_check_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.63, ptr @.str.3, i32 765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvidiafb_check_var\00", [45 x i8] zeroinitializer }, align 32
@nvidiafb_check_var._entry_ptr = internal global ptr @nvidiafb_check_var._entry, section ".printk_index", align 4
@nvidiafb_check_var._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.3, i32 855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013nvidiafb: mode out of range of flat panel dimensions\0A\00", [40 x i8] zeroinitializer }, align 32
@nvidiafb_check_var._entry_ptr.66 = internal global ptr @nvidiafb_check_var._entry.64, section ".printk_index", align 4
@nvidiafb_check_var._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.3, i32 891, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"nvidiafb: required video memory, %d bytes, for %dx%d-%d (virtual) is out of range\0A\00", [45 x i8] zeroinitializer }, align 32
@nvidiafb_check_var._entry_ptr.69 = internal global ptr @nvidiafb_check_var._entry.67, section ".printk_index", align 4
@nvidiafb_check_var._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.63, ptr @.str.3, i32 906, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nvidiafb_check_var._entry_ptr.71 = internal global ptr @nvidiafb_check_var._entry.70, section ".printk_index", align 4
@nvidiafb_set_par._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.72, ptr @.str.3, i32 611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvidiafb_set_par\00", [47 x i8] zeroinitializer }, align 32
@nvidiafb_set_par._entry_ptr = internal global ptr @nvidiafb_set_par._entry, section ".printk_index", align 4
@nvidiafb_set_par._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.3, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016nvidiafb: Flat panel dithering %s\0A\00", [59 x i8] zeroinitializer }, align 32
@nvidiafb_set_par._entry_ptr.75 = internal global ptr @nvidiafb_set_par._entry.73, section ".printk_index", align 4
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@nvidiafb_set_par._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.72, ptr @.str.3, i32 690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nvidiafb_set_par._entry_ptr.79 = internal global ptr @nvidiafb_set_par._entry.78, section ".printk_index", align 4
@nvidiafb_setcolreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.80, ptr @.str.3, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvidiafb_setcolreg\00", [45 x i8] zeroinitializer }, align 32
@nvidiafb_setcolreg._entry_ptr = internal global ptr @nvidiafb_setcolreg._entry, section ".printk_index", align 4
@nvidiafb_setcolreg._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.80, ptr @.str.3, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nvidiafb_setcolreg._entry_ptr.82 = internal global ptr @nvidiafb_setcolreg._entry.81, section ".printk_index", align 4
@nvidiafb_blank._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.83, ptr @.str.3, i32 932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvidiafb_blank\00", [17 x i8] zeroinitializer }, align 32
@nvidiafb_blank._entry_ptr = internal global ptr @nvidiafb_blank._entry, section ".printk_index", align 4
@nvidiafb_blank._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.83, ptr @.str.3, i32 955, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nvidiafb_blank._entry_ptr.85 = internal global ptr @nvidiafb_blank._entry.84, section ".printk_index", align 4
@nvidia_set_fbinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.86, ptr @.str.3, i32 1110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvidia_set_fbinfo\00", [46 x i8] zeroinitializer }, align 32
@nvidia_set_fbinfo._entry_ptr = internal global ptr @nvidia_set_fbinfo._entry, section ".printk_index", align 4
@nvidiafb_default_var = internal global { %struct.fb_var_screeninfo, [32 x i8] } { %struct.fb_var_screeninfo { i32 640, i32 480, i32 640, i32 480, i32 0, i32 0, i32 8, i32 0, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 39721, i32 40, i32 24, i32 32, i32 11, i32 96, i32 2, i32 0, i32 0, i32 0, i32 0, [4 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%dx%dMR\00", [24 x i8] zeroinitializer }, align 32
@nvidia_set_fbinfo._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.86, ptr @.str.3, i32 1194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nvidia_set_fbinfo._entry_ptr.89 = internal global ptr @nvidia_set_fbinfo._entry.88, section ".printk_index", align 4
@nvidia_save_vga._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.90, ptr @.str.3, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvidia_save_vga\00", [16 x i8] zeroinitializer }, align 32
@nvidia_save_vga._entry_ptr = internal global ptr @nvidia_save_vga._entry, section ".printk_index", align 4
@nvidia_save_vga._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.90, ptr @.str.3, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nvidia_save_vga._entry_ptr.92 = internal global ptr @nvidia_save_vga._entry.91, section ".printk_index", align 4
@nvidiafb_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.93, ptr @.str.3, i32 1430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvidiafb_remove\00", [16 x i8] zeroinitializer }, align 32
@nvidiafb_remove._entry_ptr = internal global ptr @nvidiafb_remove._entry, section ".printk_index", align 4
@nvidiafb_remove._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.93, ptr @.str.3, i32 1443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nvidiafb_remove._entry_ptr.95 = internal global ptr @nvidiafb_remove._entry.94, section ".printk_index", align 4
@switch.table.nvidia_set_fbinfo = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 240, i64 736]
@__sancov_gen_cov_switch_values.96 = internal global [31 x i64] [i64 29, i64 32, i64 0, i64 2, i64 7, i64 10, i64 14, i64 15, i64 16, i64 18, i64 19, i64 20, i64 21, i64 22, i64 24, i64 27, i64 29, i64 30, i64 31, i64 32, i64 34, i64 35, i64 38, i64 39, i64 46, i64 47, i64 48, i64 49, i64 50, i64 55, i64 59]
@__sancov_gen_cov_switch_values.97 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 16, i64 32, i64 48, i64 64]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.101 = internal global [36 x i64] [i64 34, i64 32, i64 25, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64]
@___asan_gen_.102 = private unnamed_addr constant [16 x i8] c"nvidiafb_driver\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1501, i32 26 }
@___asan_gen_.105 = private unnamed_addr constant [10 x i8] c"flatpanel\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 66, i32 12 }
@___asan_gen_.108 = private unnamed_addr constant [9 x i8] c"fpdither\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 67, i32 12 }
@___asan_gen_.111 = private unnamed_addr constant [6 x i8] c"hwcur\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 69, i32 12 }
@___asan_gen_.114 = private unnamed_addr constant [8 x i8] c"noaccel\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 70, i32 12 }
@___asan_gen_.117 = private unnamed_addr constant [8 x i8] c"noscale\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 71, i32 12 }
@___asan_gen_.120 = private unnamed_addr constant [11 x i8] c"paneltweak\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 72, i32 12 }
@___asan_gen_.123 = private unnamed_addr constant [10 x i8] c"forceCRTC\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 68, i32 12 }
@___asan_gen_.126 = private unnamed_addr constant [5 x i8] c"vram\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 73, i32 12 }
@___asan_gen_.129 = private unnamed_addr constant [12 x i8] c"mode_option\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 79, i32 14 }
@___asan_gen_.132 = private unnamed_addr constant [4 x i8] c"bpp\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 74, i32 12 }
@___asan_gen_.135 = private unnamed_addr constant [12 x i8] c"reverse_i2c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 75, i32 12 }
@___asan_gen_.138 = private unnamed_addr constant [7 x i8] c"nomtrr\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 76, i32 13 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1520, i32 21 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1457, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1461, i32 38 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1462, i32 26 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1471, i32 33 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1473, i32 33 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1475, i32 33 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1477, i32 33 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1479, i32 33 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1481, i32 33 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1483, i32 33 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1485, i32 33 }
@___asan_gen_.186 = private unnamed_addr constant [10 x i8] c"backlight\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 77, i32 12 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1487, i32 33 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1489, i32 33 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1491, i32 33 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1496, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"nvidiafb_pci_tbl\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 58, i32 35 }
@___asan_gen_.207 = private unnamed_addr constant [16 x i8] c"nvidiafb_pm_ops\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1092, i32 32 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1281, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1282, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1297, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1302, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1308, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant [13 x i8] c"nvidiafb_fix\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 81, i32 33 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1328, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1336, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1340, i32 27 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1369, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant [14 x i8] c"nvidia_fb_ops\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1024, i32 22 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1383, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1395, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1400, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1405, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1204, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1216, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 246, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 289, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 765, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 854, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 887, i32 5 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 906, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 611, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 623, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 690, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 701, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 754, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 932, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 955, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1110, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant [21 x i8] c"nvidiafb_default_var\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 87, i32 33 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1143, i32 21 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1194, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 218, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 236, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1430, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.406 = private constant [39 x i8] c"../drivers/video/fbdev/nvidia/nvidia.c\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1443, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant [31 x i8] c"switch.table.nvidia_set_fbinfo\00", align 1
@llvm.compiler.used = appending global [181 x ptr] [ptr @__UNIQUE_ID_author330, ptr @__UNIQUE_ID_bpp325, ptr @__UNIQUE_ID_bpptype324, ptr @__UNIQUE_ID_description331, ptr @__UNIQUE_ID_file332, ptr @__UNIQUE_ID_flatpanel307, ptr @__UNIQUE_ID_flatpaneltype306, ptr @__UNIQUE_ID_forceCRTC319, ptr @__UNIQUE_ID_forceCRTCtype318, ptr @__UNIQUE_ID_fpdither309, ptr @__UNIQUE_ID_fpdithertype308, ptr @__UNIQUE_ID_hwcur311, ptr @__UNIQUE_ID_hwcurtype310, ptr @__UNIQUE_ID_license333, ptr @__UNIQUE_ID_mode_option323, ptr @__UNIQUE_ID_mode_optiontype322, ptr @__UNIQUE_ID_noaccel313, ptr @__UNIQUE_ID_noacceltype312, ptr @__UNIQUE_ID_nomtrr329, ptr @__UNIQUE_ID_nomtrrtype328, ptr @__UNIQUE_ID_noscale315, ptr @__UNIQUE_ID_noscaletype314, ptr @__UNIQUE_ID_paneltweak317, ptr @__UNIQUE_ID_paneltweaktype316, ptr @__UNIQUE_ID_reverse_i2c327, ptr @__UNIQUE_ID_reverse_i2ctype326, ptr @__UNIQUE_ID_vram321, ptr @__UNIQUE_ID_vramtype320, ptr @__exitcall_nvidiafb_exit, ptr @__initcall__kmod_nvidiafb__305_1527_nvidiafb_init6, ptr @__param_bpp, ptr @__param_flatpanel, ptr @__param_forceCRTC, ptr @__param_fpdither, ptr @__param_hwcur, ptr @__param_mode_option, ptr @__param_noaccel, ptr @__param_nomtrr, ptr @__param_noscale, ptr @__param_paneltweak, ptr @__param_reverse_i2c, ptr @__param_vram, ptr @nvidia_get_chipset._entry, ptr @nvidia_get_chipset._entry.57, ptr @nvidia_get_chipset._entry_ptr, ptr @nvidia_get_chipset._entry_ptr.59, ptr @nvidia_save_vga._entry, ptr @nvidia_save_vga._entry.91, ptr @nvidia_save_vga._entry_ptr, ptr @nvidia_save_vga._entry_ptr.92, ptr @nvidia_set_fbinfo._entry, ptr @nvidia_set_fbinfo._entry.88, ptr @nvidia_set_fbinfo._entry_ptr, ptr @nvidia_set_fbinfo._entry_ptr.89, ptr @nvidia_write_regs._entry, ptr @nvidia_write_regs._entry.61, ptr @nvidia_write_regs._entry_ptr, ptr @nvidia_write_regs._entry_ptr.62, ptr @nvidiafb_blank._entry, ptr @nvidiafb_blank._entry.84, ptr @nvidiafb_blank._entry_ptr, ptr @nvidiafb_blank._entry_ptr.85, ptr @nvidiafb_check_var._entry, ptr @nvidiafb_check_var._entry.64, ptr @nvidiafb_check_var._entry.67, ptr @nvidiafb_check_var._entry.70, ptr @nvidiafb_check_var._entry_ptr, ptr @nvidiafb_check_var._entry_ptr.66, ptr @nvidiafb_check_var._entry_ptr.69, ptr @nvidiafb_check_var._entry_ptr.71, ptr @nvidiafb_exit, ptr @nvidiafb_probe._entry, ptr @nvidiafb_probe._entry.21, ptr @nvidiafb_probe._entry.25, ptr @nvidiafb_probe._entry.28, ptr @nvidiafb_probe._entry.31, ptr @nvidiafb_probe._entry.34, ptr @nvidiafb_probe._entry.37, ptr @nvidiafb_probe._entry.41, ptr @nvidiafb_probe._entry.44, ptr @nvidiafb_probe._entry.47, ptr @nvidiafb_probe._entry.50, ptr @nvidiafb_probe._entry.53, ptr @nvidiafb_probe._entry_ptr, ptr @nvidiafb_probe._entry_ptr.23, ptr @nvidiafb_probe._entry_ptr.27, ptr @nvidiafb_probe._entry_ptr.30, ptr @nvidiafb_probe._entry_ptr.33, ptr @nvidiafb_probe._entry_ptr.36, ptr @nvidiafb_probe._entry_ptr.39, ptr @nvidiafb_probe._entry_ptr.43, ptr @nvidiafb_probe._entry_ptr.46, ptr @nvidiafb_probe._entry_ptr.49, ptr @nvidiafb_probe._entry_ptr.52, ptr @nvidiafb_probe._entry_ptr.54, ptr @nvidiafb_remove._entry, ptr @nvidiafb_remove._entry.94, ptr @nvidiafb_remove._entry_ptr, ptr @nvidiafb_remove._entry_ptr.95, ptr @nvidiafb_set_par._entry, ptr @nvidiafb_set_par._entry.73, ptr @nvidiafb_set_par._entry.78, ptr @nvidiafb_set_par._entry_ptr, ptr @nvidiafb_set_par._entry_ptr.75, ptr @nvidiafb_set_par._entry_ptr.79, ptr @nvidiafb_setcolreg._entry, ptr @nvidiafb_setcolreg._entry.81, ptr @nvidiafb_setcolreg._entry_ptr, ptr @nvidiafb_setcolreg._entry_ptr.82, ptr @nvidiafb_setup._entry, ptr @nvidiafb_setup._entry.17, ptr @nvidiafb_setup._entry_ptr, ptr @nvidiafb_setup._entry_ptr.19, ptr @nvidiafb_driver, ptr @flatpanel, ptr @fpdither, ptr @hwcur, ptr @noaccel, ptr @noscale, ptr @paneltweak, ptr @forceCRTC, ptr @vram, ptr @mode_option, ptr @bpp, ptr @reverse_i2c, ptr @nomtrr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @backlight, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @nvidiafb_pci_tbl, ptr @nvidiafb_pm_ops, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @nvidiafb_fix, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @nvidia_fb_ops, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @nvidiafb_default_var, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @switch.table.nvidia_set_fbinfo], section "llvm.metadata"
@0 = internal global [103 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flatpanel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpdither to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwcur to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noaccel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noscale to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @paneltweak to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @forceCRTC to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vram to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_option to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reverse_i2c to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nomtrr to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @backlight to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_setup._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidia_fb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidia_get_chipset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidia_get_chipset._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidia_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidia_write_regs._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_check_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_check_var._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_check_var._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_check_var._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_set_par._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_set_par._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_set_par._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_setcolreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_setcolreg._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_blank._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_blank._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidia_set_fbinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_default_var to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidia_set_fbinfo._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidia_save_vga._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidia_save_vga._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidiafb_remove._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvidia_set_fbinfo to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvidiafb_init() #0 align 64 {
entry:
  %options.addr.i = alloca ptr, align 4
  %option = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #10
  %0 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %option, align 4
  %call = call i32 @fb_get_options(ptr noundef nonnull @.str, ptr noundef nonnull %option) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %option, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options.addr.i)
  %3 = ptrtoint ptr %options.addr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %options.addr.i, align 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #13
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.nvidiafb_setup.exit_crit_edge, label %lor.lhs.false.i

if.end.nvidiafb_setup.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvidiafb_setup.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.nvidiafb_setup.exit_crit_edge, label %while.cond.preheader.i

lor.lhs.false.i.nvidiafb_setup.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvidiafb_setup.exit

while.cond.preheader.i:                           ; preds = %lor.lhs.false.i
  %call23.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.4) #10
  %cmp.not4.i = icmp eq ptr %call23.i, null
  br i1 %cmp.not4.i, label %while.cond.preheader.i.do.end86.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.do.end86.i_crit_edge:      ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end86.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %call25.i = phi ptr [ %call2.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ %call23.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %call3.i = call i32 @strncmp(ptr noundef nonnull %call25.i, ptr noundef nonnull dereferenceable(10) @.str.5, i32 noundef 9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %while.body.i
  %add.ptr.i = getelementptr i8, ptr %call25.i, i32 9
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not.i = icmp eq i8 %7, 0
  br i1 %tobool6.not.i, label %if.then5.i.while.cond.backedge.i_crit_edge, label %lor.lhs.false7.i

if.then5.i.while.cond.backedge.i_crit_edge:       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge.i

lor.lhs.false7.i:                                 ; preds = %if.then5.i
  %incdec.ptr.i = getelementptr i8, ptr %call25.i, i32 10
  %8 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not.i = icmp eq i8 %9, 0
  br i1 %tobool8.not.i, label %lor.lhs.false7.i.while.cond.backedge.i_crit_edge, label %cleanup.thread.i

lor.lhs.false7.i.while.cond.backedge.i_crit_edge: ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge.i

cleanup.thread.i:                                 ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %9 to i32
  %sub.i = add nsw i32 %conv.i, -48
  %10 = add i8 %9, -50
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %10)
  %11 = icmp ult i8 %10, -2
  %spec.store.select.i = select i1 %11, i32 -1, i32 %sub.i
  store i32 %spec.store.select.i, ptr @forceCRTC, align 4
  br label %while.cond.backedge.i

if.else.i:                                        ; preds = %while.body.i
  %call18.i = call i32 @strncmp(ptr noundef nonnull %call25.i, ptr noundef nonnull dereferenceable(10) @.str.6, i32 noundef 9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %if.else21.i

if.then20.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1, ptr @flatpanel, align 4
  br label %while.cond.backedge.i

if.else21.i:                                      ; preds = %if.else.i
  %call22.i = call i32 @strncmp(ptr noundef nonnull %call25.i, ptr noundef nonnull dereferenceable(6) @.str.7, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %if.else25.i

if.then24.i:                                      ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1, ptr @hwcur, align 4
  br label %while.cond.backedge.i

if.else25.i:                                      ; preds = %if.else21.i
  %call26.i = call i32 @strncmp(ptr noundef nonnull %call25.i, ptr noundef nonnull dereferenceable(8) @.str.8, i32 noundef 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.then28.i, label %if.else29.i

if.then28.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1, ptr @noaccel, align 4
  br label %while.cond.backedge.i

if.else29.i:                                      ; preds = %if.else25.i
  %call30.i = call i32 @strncmp(ptr noundef nonnull %call25.i, ptr noundef nonnull dereferenceable(8) @.str.9, i32 noundef 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.then32.i, label %if.else33.i

if.then32.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1, ptr @noscale, align 4
  br label %while.cond.backedge.i

if.else33.i:                                      ; preds = %if.else29.i
  %call34.i = call i32 @strncmp(ptr noundef nonnull %call25.i, ptr noundef nonnull dereferenceable(12) @.str.10, i32 noundef 11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.then36.i, label %if.else37.i

if.then36.i:                                      ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1, ptr @reverse_i2c, align 4
  br label %while.cond.backedge.i

if.else37.i:                                      ; preds = %if.else33.i
  %call38.i = call i32 @strncmp(ptr noundef nonnull %call25.i, ptr noundef nonnull dereferenceable(12) @.str.11, i32 noundef 11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.then40.i, label %if.else43.i

if.then40.i:                                      ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr41.i = getelementptr i8, ptr %call25.i, i32 11
  %call42.i = call i32 @simple_strtoul(ptr noundef %add.ptr41.i, ptr noundef null, i32 noundef 0) #10
  store i32 %call42.i, ptr @paneltweak, align 4
  br label %while.cond.backedge.i

if.else43.i:                                      ; preds = %if.else37.i
  %call44.i = call i32 @strncmp(ptr noundef nonnull %call25.i, ptr noundef nonnull dereferenceable(6) @.str.12, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.then46.i, label %if.else49.i

if.then46.i:                                      ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr47.i = getelementptr i8, ptr %call25.i, i32 5
  %call48.i = call i32 @simple_strtoul(ptr noundef %add.ptr47.i, ptr noundef null, i32 noundef 0) #10
  store i32 %call48.i, ptr @vram, align 4
  br label %while.cond.backedge.i

if.else49.i:                                      ; preds = %if.else43.i
  %call50.i = call i32 @strncmp(ptr noundef nonnull %call25.i, ptr noundef nonnull dereferenceable(11) @.str.13, i32 noundef 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.then52.i, label %if.else55.i

if.then52.i:                                      ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr53.i = getelementptr i8, ptr %call25.i, i32 10
  %call54.i = call i32 @simple_strtoul(ptr noundef %add.ptr53.i, ptr noundef null, i32 noundef 0) #10
  store i32 %call54.i, ptr @backlight, align 4
  br label %while.cond.backedge.i

if.else55.i:                                      ; preds = %if.else49.i
  %call56.i = call i32 @strncmp(ptr noundef nonnull %call25.i, ptr noundef nonnull dereferenceable(7) @.str.14, i32 noundef 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %if.then58.i, label %if.else59.i

if.then58.i:                                      ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #12
  store i8 1, ptr @nomtrr, align 1
  br label %while.cond.backedge.i

if.else59.i:                                      ; preds = %if.else55.i
  %call60.i = call i32 @strncmp(ptr noundef nonnull %call25.i, ptr noundef nonnull dereferenceable(10) @.str.15, i32 noundef 9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %if.then62.i, label %if.else65.i

if.then62.i:                                      ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr63.i = getelementptr i8, ptr %call25.i, i32 9
  %call64.i = call i32 @simple_strtol(ptr noundef %add.ptr63.i, ptr noundef null, i32 noundef 0) #10
  store i32 %call64.i, ptr @fpdither, align 4
  br label %while.cond.backedge.i

if.else65.i:                                      ; preds = %if.else59.i
  %call66.i = call i32 @strncmp(ptr noundef nonnull %call25.i, ptr noundef nonnull dereferenceable(5) @.str.16, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool67.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.not.i, label %if.then68.i, label %if.else71.i

if.then68.i:                                      ; preds = %if.else65.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr69.i = getelementptr i8, ptr %call25.i, i32 4
  %call70.i = call i32 @simple_strtoul(ptr noundef %add.ptr69.i, ptr noundef null, i32 noundef 0) #10
  store i32 %call70.i, ptr @bpp, align 4
  br label %while.cond.backedge.i

if.else71.i:                                      ; preds = %if.else65.i
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %call25.i, ptr @mode_option, align 4
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.else71.i, %if.then68.i, %if.then62.i, %if.then58.i, %if.then52.i, %if.then46.i, %if.then40.i, %if.then36.i, %if.then32.i, %if.then28.i, %if.then24.i, %if.then20.i, %cleanup.thread.i, %lor.lhs.false7.i.while.cond.backedge.i_crit_edge, %if.then5.i.while.cond.backedge.i_crit_edge
  %call2.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.4) #10
  %cmp.not.i = icmp eq ptr %call2.i, null
  br i1 %cmp.not.i, label %while.cond.backedge.i.do.end86.i_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.cond.backedge.i.do.end86.i_crit_edge:       ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end86.i

do.end86.i:                                       ; preds = %while.cond.backedge.i.do.end86.i_crit_edge, %while.cond.preheader.i.do.end86.i_crit_edge
  %call88.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2) #13
  br label %nvidiafb_setup.exit

nvidiafb_setup.exit:                              ; preds = %do.end86.i, %lor.lhs.false.i.nvidiafb_setup.exit_crit_edge, %if.end.nvidiafb_setup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.addr.i)
  %call2 = call i32 @__pci_register_driver(ptr noundef nonnull @nvidiafb_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  br label %cleanup

cleanup:                                          ; preds = %nvidiafb_setup.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %nvidiafb_setup.exit ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #10
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nvidiafb_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @nvidiafb_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvidiafb_probe(ptr noundef %pd, ptr nocapture noundef readnone %ent) #0 align 64 {
entry:
  %cmd = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #10
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %cmd, align 2, !annotation !299
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20) #13
  %cmp.not = icmp eq ptr %pd, null
  br i1 %cmp.not, label %do.end3, label %if.end

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.20, i32 noundef 1282) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/nvidia/nvidia.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1282, 0\0A.popsection", ""() #10, !srcloc !300
  unreachable

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pd, i32 0, i32 44
  %call12 = tail call ptr @framebuffer_alloc(i32 noundef 5368, ptr noundef %dev) #10
  %tobool.not = icmp eq ptr %call12, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %par15 = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 30
  %1 = ptrtoint ptr %par15 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %par15, align 4
  %pci_dev = getelementptr inbounds %struct.nvidia_par, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pd, ptr %pci_dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 8192) #14
  %pixmap = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 10
  %5 = ptrtoint ptr %pixmap to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %pixmap, align 4
  %cmp19 = icmp eq ptr %call7.i.i, null
  br i1 %cmp19, label %if.end14.err_out_kfree_crit_edge, label %if.end21

if.end14.err_out_kfree_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_kfree

if.end21:                                         ; preds = %if.end14
  %call22 = tail call i32 @pci_enable_device(ptr noundef nonnull %pd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end30, label %do.end27

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #13
  br label %err_out_enable

if.end30:                                         ; preds = %if.end21
  %call31 = tail call i32 @pci_request_regions(ptr noundef nonnull %pd, ptr noundef nonnull @.str) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end39, label %do.end36

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #13
  br label %err_out_enable

if.end39:                                         ; preds = %if.end30
  %6 = load i32, ptr @flatpanel, align 4
  %FlatPanel = getelementptr inbounds %struct.nvidia_par, ptr %2, i32 0, i32 26
  %7 = ptrtoint ptr %FlatPanel to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %FlatPanel, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp40 = icmp eq i32 %6, 1
  br i1 %cmp40, label %do.end44, label %if.end39.if.end47_crit_edge

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

do.end44:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #13
  br label %if.end47

if.end47:                                         ; preds = %do.end44, %if.end39.if.end47_crit_edge
  %8 = load i32, ptr @fpdither, align 4
  %FPDither = getelementptr inbounds %struct.nvidia_par, ptr %2, i32 0, i32 27
  %9 = ptrtoint ptr %FPDither to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %FPDither, align 4
  %10 = load i32, ptr @forceCRTC, align 4
  %CRTCnumber = getelementptr inbounds %struct.nvidia_par, ptr %2, i32 0, i32 29
  %11 = ptrtoint ptr %CRTCnumber to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %CRTCnumber, align 4
  %12 = load i32, ptr @noscale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool48.not = icmp eq i32 %12, 0
  %lnot.ext = zext i1 %tobool48.not to i32
  %FpScale = getelementptr inbounds %struct.nvidia_par, ptr %2, i32 0, i32 16
  %13 = ptrtoint ptr %FpScale to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %lnot.ext, ptr %FpScale, align 4
  %14 = load i32, ptr @paneltweak, align 4
  %paneltweak = getelementptr inbounds %struct.nvidia_par, ptr %2, i32 0, i32 37
  %15 = ptrtoint ptr %paneltweak to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %paneltweak, align 4
  %16 = load i32, ptr @reverse_i2c, align 4
  %reverse_i2c = getelementptr inbounds %struct.nvidia_par, ptr %2, i32 0, i32 40
  %17 = ptrtoint ptr %reverse_i2c to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %reverse_i2c, align 8
  %call49 = call i32 @pci_read_config_word(ptr noundef nonnull %pd, i32 noundef 4, ptr noundef nonnull %cmd) #10
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %cmd, align 2
  %20 = or i16 %19, 3
  store i16 %20, ptr %cmd, align 2
  %call51 = call i32 @pci_write_config_word(ptr noundef nonnull %pd, i32 noundef 4, i16 noundef zeroext %20) #10
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pd, i32 0, i32 47
  %21 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %resource, align 8
  store i32 %22, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @nvidiafb_fix, i32 0, i32 10), align 4
  %arrayidx53 = getelementptr %struct.pci_dev, ptr %pd, i32 0, i32 47, i32 1
  %23 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx53, align 8
  store i32 %24, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @nvidiafb_fix, i32 0, i32 1), align 4
  %end = getelementptr inbounds %struct.pci_dev, ptr %pd, i32 0, i32 47, i32 0, i32 1
  %25 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp57 = icmp eq i32 %26, 0
  %sub = sub i32 1, %22
  %add = add i32 %sub, %26
  %cond = select i1 %cmp57, i32 0, i32 %add
  store i32 %cond, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @nvidiafb_fix, i32 0, i32 11), align 4
  %call65 = call ptr @ioremap(i32 noundef %22, i32 noundef %cond) #10
  %REGS = getelementptr inbounds %struct.nvidia_par, ptr %2, i32 0, i32 57
  %27 = ptrtoint ptr %REGS to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call65, ptr %REGS, align 8
  %tobool67.not = icmp eq ptr %call65, null
  br i1 %tobool67.not, label %do.end71, label %if.end74

do.end71:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #13
  br label %err_out_free_base0

if.end74:                                         ; preds = %if.end47
  %28 = ptrtoint ptr %par15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %par15, align 4
  %pci_dev.i = getelementptr inbounds %struct.nvidia_par, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pci_dev.i, align 4
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vendor.i, align 8
  %conv.i = zext i16 %33 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 8
  %34 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %device.i, align 2
  %conv3.i = zext i16 %35 to i32
  %or.i = or i32 %shl.i, %conv3.i
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %or.i) #13
  %and.i = and i16 %35, -16
  %36 = zext i16 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i16 %and.i, label %if.end74.nvidia_get_chipset.exit_crit_edge [
    i16 240, label %if.end74.if.then.i_crit_edge
    i16 736, label %if.end74.if.then.i_crit_edge275
  ]

if.end74.if.then.i_crit_edge275:                  ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end74.if.then.i_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end74.nvidia_get_chipset.exit_crit_edge:       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvidia_get_chipset.exit

if.then.i:                                        ; preds = %if.end74.if.then.i_crit_edge, %if.end74.if.then.i_crit_edge275
  %REGS.i = getelementptr inbounds %struct.nvidia_par, ptr %29, i32 0, i32 57
  %37 = ptrtoint ptr %REGS.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %REGS.i, align 8
  %add.ptr.i = getelementptr i8, ptr %38, i32 6144
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !301
  %and9.i = and i32 %39, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4318, i32 %and9.i)
  %cmp10.i = icmp eq i32 %and9.i, 4318
  br i1 %cmp10.i, label %if.then12.i, label %if.else.i

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr.i = lshr i32 %39, 16
  %or13.i = or i32 %shr.i, 282984448
  br label %do.end27.i

if.else.i:                                        ; preds = %if.then.i
  %and14.i = and i32 %39, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -569376768, i32 %and14.i)
  %cmp15.i = icmp eq i32 %and14.i, -569376768
  br i1 %cmp15.i, label %if.then17.i, label %if.else.i.do.end27.i_crit_edge

if.else.i.do.end27.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27.i

if.then17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %trunc.i = trunc i32 %39 to i16
  %rev.i = call i16 @llvm.bswap.i16(i16 %trunc.i) #10
  %or20.i = zext i16 %rev.i to i32
  %or23.i = or i32 %or20.i, 282984448
  br label %do.end27.i

do.end27.i:                                       ; preds = %if.then17.i, %if.else.i.do.end27.i_crit_edge, %if.then12.i
  %id.0.i = phi i32 [ %or13.i, %if.then12.i ], [ %or23.i, %if.then17.i ], [ %39, %if.else.i.do.end27.i_crit_edge ]
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %id.0.i) #13
  br label %nvidia_get_chipset.exit

nvidia_get_chipset.exit:                          ; preds = %do.end27.i, %if.end74.nvidia_get_chipset.exit_crit_edge
  %id.1.i = phi i32 [ %id.0.i, %do.end27.i ], [ %or.i, %if.end74.nvidia_get_chipset.exit_crit_edge ]
  %Chipset = getelementptr inbounds %struct.nvidia_par, ptr %2, i32 0, i32 9
  %40 = ptrtoint ptr %Chipset to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %id.1.i, ptr %Chipset, align 8
  %41 = ptrtoint ptr %par15 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %par15, align 4
  %Chipset.i = getelementptr inbounds %struct.nvidia_par, ptr %42, i32 0, i32 9
  %43 = ptrtoint ptr %Chipset.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %Chipset.i, align 8
  %and.i270 = and i32 %44, 4080
  %45 = add nsw i32 %and.i270, -32
  %46 = lshr exact i32 %45, 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %46, label %do.end83 [
    i32 14, label %nvidia_get_chipset.exit.if.end86_crit_edge
    i32 15, label %nvidia_get_chipset.exit.if.end86_crit_edge276
    i32 19, label %nvidia_get_chipset.exit.if.end86_crit_edge277
    i32 21, label %nvidia_get_chipset.exit.if.end86_crit_edge278
    i32 22, label %nvidia_get_chipset.exit.if.end86_crit_edge279
    i32 24, label %nvidia_get_chipset.exit.if.end86_crit_edge280
    i32 29, label %nvidia_get_chipset.exit.if.end86_crit_edge281
    i32 30, label %nvidia_get_chipset.exit.sw.bb2.i_crit_edge
    i32 35, label %nvidia_get_chipset.exit.sw.bb2.i_crit_edge282
    i32 38, label %nvidia_get_chipset.exit.sw.bb2.i_crit_edge283
    i32 46, label %nvidia_get_chipset.exit.sw.bb3.i_crit_edge
    i32 47, label %nvidia_get_chipset.exit.sw.bb3.i_crit_edge284
    i32 48, label %nvidia_get_chipset.exit.sw.bb3.i_crit_edge285
    i32 49, label %nvidia_get_chipset.exit.sw.bb3.i_crit_edge286
    i32 50, label %nvidia_get_chipset.exit.sw.bb3.i_crit_edge287
    i32 2, label %nvidia_get_chipset.exit.sw.bb4.i_crit_edge
    i32 10, label %nvidia_get_chipset.exit.sw.bb4.i_crit_edge288
    i32 16, label %nvidia_get_chipset.exit.sw.bb4.i_crit_edge289
    i32 18, label %nvidia_get_chipset.exit.sw.bb4.i_crit_edge290
    i32 20, label %nvidia_get_chipset.exit.sw.bb4.i_crit_edge291
    i32 27, label %nvidia_get_chipset.exit.sw.bb4.i_crit_edge292
    i32 7, label %nvidia_get_chipset.exit.sw.bb4.i_crit_edge293
    i32 31, label %nvidia_get_chipset.exit.sw.bb4.i_crit_edge294
    i32 32, label %nvidia_get_chipset.exit.sw.bb4.i_crit_edge295
    i32 34, label %nvidia_get_chipset.exit.sw.bb4.i_crit_edge296
    i32 39, label %nvidia_get_chipset.exit.sw.bb4.i_crit_edge297
    i32 55, label %nvidia_get_chipset.exit.sw.bb4.i_crit_edge298
    i32 59, label %nvidia_get_chipset.exit.sw.bb4.i_crit_edge299
    i32 0, label %sw.bb5.i
  ]

nvidia_get_chipset.exit.sw.bb4.i_crit_edge299:    ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

nvidia_get_chipset.exit.sw.bb4.i_crit_edge298:    ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

nvidia_get_chipset.exit.sw.bb4.i_crit_edge297:    ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

nvidia_get_chipset.exit.sw.bb4.i_crit_edge296:    ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

nvidia_get_chipset.exit.sw.bb4.i_crit_edge295:    ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

nvidia_get_chipset.exit.sw.bb4.i_crit_edge294:    ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

nvidia_get_chipset.exit.sw.bb4.i_crit_edge293:    ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

nvidia_get_chipset.exit.sw.bb4.i_crit_edge292:    ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

nvidia_get_chipset.exit.sw.bb4.i_crit_edge291:    ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

nvidia_get_chipset.exit.sw.bb4.i_crit_edge290:    ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

nvidia_get_chipset.exit.sw.bb4.i_crit_edge289:    ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

nvidia_get_chipset.exit.sw.bb4.i_crit_edge288:    ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

nvidia_get_chipset.exit.sw.bb4.i_crit_edge:       ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

nvidia_get_chipset.exit.sw.bb3.i_crit_edge287:    ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

nvidia_get_chipset.exit.sw.bb3.i_crit_edge286:    ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

nvidia_get_chipset.exit.sw.bb3.i_crit_edge285:    ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

nvidia_get_chipset.exit.sw.bb3.i_crit_edge284:    ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

nvidia_get_chipset.exit.sw.bb3.i_crit_edge:       ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

nvidia_get_chipset.exit.sw.bb2.i_crit_edge283:    ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2.i

nvidia_get_chipset.exit.sw.bb2.i_crit_edge282:    ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2.i

nvidia_get_chipset.exit.sw.bb2.i_crit_edge:       ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2.i

nvidia_get_chipset.exit.if.end86_crit_edge281:    ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

nvidia_get_chipset.exit.if.end86_crit_edge280:    ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

nvidia_get_chipset.exit.if.end86_crit_edge279:    ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

nvidia_get_chipset.exit.if.end86_crit_edge278:    ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

nvidia_get_chipset.exit.if.end86_crit_edge277:    ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

nvidia_get_chipset.exit.if.end86_crit_edge276:    ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

nvidia_get_chipset.exit.if.end86_crit_edge:       ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

sw.bb2.i:                                         ; preds = %nvidia_get_chipset.exit.sw.bb2.i_crit_edge, %nvidia_get_chipset.exit.sw.bb2.i_crit_edge282, %nvidia_get_chipset.exit.sw.bb2.i_crit_edge283
  br label %if.end86

sw.bb3.i:                                         ; preds = %nvidia_get_chipset.exit.sw.bb3.i_crit_edge, %nvidia_get_chipset.exit.sw.bb3.i_crit_edge284, %nvidia_get_chipset.exit.sw.bb3.i_crit_edge285, %nvidia_get_chipset.exit.sw.bb3.i_crit_edge286, %nvidia_get_chipset.exit.sw.bb3.i_crit_edge287
  br label %if.end86

sw.bb4.i:                                         ; preds = %nvidia_get_chipset.exit.sw.bb4.i_crit_edge, %nvidia_get_chipset.exit.sw.bb4.i_crit_edge288, %nvidia_get_chipset.exit.sw.bb4.i_crit_edge289, %nvidia_get_chipset.exit.sw.bb4.i_crit_edge290, %nvidia_get_chipset.exit.sw.bb4.i_crit_edge291, %nvidia_get_chipset.exit.sw.bb4.i_crit_edge292, %nvidia_get_chipset.exit.sw.bb4.i_crit_edge293, %nvidia_get_chipset.exit.sw.bb4.i_crit_edge294, %nvidia_get_chipset.exit.sw.bb4.i_crit_edge295, %nvidia_get_chipset.exit.sw.bb4.i_crit_edge296, %nvidia_get_chipset.exit.sw.bb4.i_crit_edge297, %nvidia_get_chipset.exit.sw.bb4.i_crit_edge298, %nvidia_get_chipset.exit.sw.bb4.i_crit_edge299
  br label %if.end86

sw.bb5.i:                                         ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

do.end83:                                         ; preds = %nvidia_get_chipset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %Architecture = getelementptr inbounds %struct.nvidia_par, ptr %2, i32 0, i32 7
  %48 = ptrtoint ptr %Architecture to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %Architecture, align 8
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #13
  br label %err_out_arch

if.end86:                                         ; preds = %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %nvidia_get_chipset.exit.if.end86_crit_edge, %nvidia_get_chipset.exit.if.end86_crit_edge276, %nvidia_get_chipset.exit.if.end86_crit_edge277, %nvidia_get_chipset.exit.if.end86_crit_edge278, %nvidia_get_chipset.exit.if.end86_crit_edge279, %nvidia_get_chipset.exit.if.end86_crit_edge280, %nvidia_get_chipset.exit.if.end86_crit_edge281
  %arch.0.i.ph = phi i32 [ 32, %sw.bb2.i ], [ 48, %sw.bb3.i ], [ 64, %sw.bb4.i ], [ 4, %sw.bb5.i ], [ 16, %nvidia_get_chipset.exit.if.end86_crit_edge ], [ 16, %nvidia_get_chipset.exit.if.end86_crit_edge276 ], [ 16, %nvidia_get_chipset.exit.if.end86_crit_edge277 ], [ 16, %nvidia_get_chipset.exit.if.end86_crit_edge278 ], [ 16, %nvidia_get_chipset.exit.if.end86_crit_edge279 ], [ 16, %nvidia_get_chipset.exit.if.end86_crit_edge280 ], [ 16, %nvidia_get_chipset.exit.if.end86_crit_edge281 ]
  %Architecture272 = getelementptr inbounds %struct.nvidia_par, ptr %2, i32 0, i32 7
  %49 = ptrtoint ptr %Architecture272 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %arch.0.i.ph, ptr %Architecture272, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %pd, i32 0, i32 8
  %50 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %device, align 2
  %52 = lshr i16 %51, 4
  %53 = and i16 %52, 255
  %54 = zext i16 %53 to i32
  %call88 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @nvidiafb_fix, ptr noundef nonnull @.str.40, i32 noundef %54)
  %call89 = call i32 @NVCommonSetup(ptr noundef nonnull %call12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %if.end86.err_out_arch_crit_edge

if.end86.err_out_arch_crit_edge:                  ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_arch

if.end92:                                         ; preds = %if.end86
  %55 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @nvidiafb_fix, i32 0, i32 1), align 4
  %FbAddress = getelementptr inbounds %struct.nvidia_par, ptr %2, i32 0, i32 10
  %56 = ptrtoint ptr %FbAddress to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %FbAddress, align 4
  %RamAmountKBytes = getelementptr inbounds %struct.nvidia_par, ptr %2, i32 0, i32 20
  %57 = ptrtoint ptr %RamAmountKBytes to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %RamAmountKBytes, align 4
  %mul = shl i32 %58, 10
  %FbMapSize = getelementptr inbounds %struct.nvidia_par, ptr %2, i32 0, i32 12
  %59 = ptrtoint ptr %FbMapSize to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %mul, ptr %FbMapSize, align 4
  %60 = load i32, ptr @vram, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool93.not = icmp eq i32 %60, 0
  br i1 %tobool93.not, label %if.end92.if.end103_crit_edge, label %land.lhs.true

if.end92.if.end103_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

land.lhs.true:                                    ; preds = %if.end92
  %mul95 = shl i32 %60, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %mul95, i32 %mul)
  %cmp97 = icmp ult i32 %mul95, %mul
  br i1 %cmp97, label %if.then99, label %if.end103thread-pre-split

if.then99:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %FbMapSize to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %mul95, ptr %FbMapSize, align 4
  br label %if.end103

if.end103thread-pre-split:                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %FbMapSize to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pr = load i32, ptr %FbMapSize, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.end103thread-pre-split, %if.then99, %if.end92.if.end103_crit_edge
  %63 = phi i32 [ %.pr, %if.end103thread-pre-split ], [ %mul95, %if.then99 ], [ %mul, %if.end92.if.end103_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %63)
  %cmp105 = icmp ugt i32 %63, 67108864
  br i1 %cmp105, label %if.then107, label %if.end103.if.end109_crit_edge

if.end103.if.end109_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

if.then107:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %FbMapSize to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 67108864, ptr %FbMapSize, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %if.end103.if.end109_crit_edge
  %65 = ptrtoint ptr %Architecture272 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %Architecture272, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %66)
  %cmp111 = icmp ugt i32 %66, 63
  %67 = ptrtoint ptr %FbMapSize to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %FbMapSize, align 4
  %. = select i1 %cmp111, i32 -573440, i32 -131072
  %sub117 = add i32 %68, %.
  %69 = getelementptr inbounds %struct.nvidia_par, ptr %2, i32 0, i32 13
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %sub117, ptr %69, align 8
  %71 = ptrtoint ptr %Architecture272 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %Architecture272, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %72)
  %cmp121 = icmp ult i32 %72, 16
  %cond123 = select i1 %cmp121, i32 8192, i32 16384
  %ScratchBufferSize = getelementptr inbounds %struct.nvidia_par, ptr %2, i32 0, i32 14
  %73 = ptrtoint ptr %ScratchBufferSize to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %cond123, ptr %ScratchBufferSize, align 4
  %sub126 = sub i32 %sub117, %cond123
  %ScratchBufferStart = getelementptr inbounds %struct.nvidia_par, ptr %2, i32 0, i32 15
  %74 = ptrtoint ptr %ScratchBufferStart to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %sub126, ptr %ScratchBufferStart, align 8
  %add128 = add i32 %sub117, 32768
  %CursorStart = getelementptr inbounds %struct.nvidia_par, ptr %2, i32 0, i32 8
  %75 = ptrtoint ptr %CursorStart to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add128, ptr %CursorStart, align 4
  %76 = ptrtoint ptr %FbMapSize to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %FbMapSize, align 4
  %call130 = call ptr @ioremap_wc(i32 noundef %55, i32 noundef %77) #10
  %78 = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 25
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call130, ptr %78, align 4
  %80 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %69, align 8
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 26
  %82 = ptrtoint ptr %screen_size to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %screen_size, align 4
  %83 = ptrtoint ptr %RamAmountKBytes to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %RamAmountKBytes, align 4
  %mul133 = shl i32 %84, 10
  store i32 %mul133, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @nvidiafb_fix, i32 0, i32 2), align 4
  %tobool134.not = icmp eq ptr %call130, null
  br i1 %tobool134.not, label %do.end138, label %if.end141

do.end138:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  %call140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #13
  br label %err_out_free_base1

if.end141:                                        ; preds = %if.end109
  %FbStart = getelementptr inbounds %struct.nvidia_par, ptr %2, i32 0, i32 11
  %85 = ptrtoint ptr %FbStart to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call130, ptr %FbStart, align 8
  %86 = load i8, ptr @nomtrr, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool142.not = icmp eq i8 %86, 0
  br i1 %tobool142.not, label %if.then143, label %if.end141.if.end147_crit_edge

if.end141.if.end147_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end147

if.then143:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  %wc_cookie = getelementptr inbounds %struct.nvidia_par, ptr %2, i32 0, i32 55
  %87 = ptrtoint ptr %wc_cookie to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %wc_cookie, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.then143, %if.end141.if.end147_crit_edge
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 20
  %88 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @nvidia_fb_ops, ptr %fbops, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 7
  %89 = call ptr @memcpy(ptr %fix, ptr @nvidiafb_fix, i32 68)
  %call148 = call fastcc i32 @nvidia_set_fbinfo(ptr noundef nonnull %call12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %cmp149 = icmp slt i32 %call148, 0
  br i1 %cmp149, label %if.end147.err_out_iounmap_fb_crit_edge, label %if.end157

if.end147.err_out_iounmap_fb_crit_edge:           ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_iounmap_fb

if.end157:                                        ; preds = %if.end147
  call fastcc void @nvidia_save_vga(ptr noundef %2, ptr noundef %2)
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pd, i32 0, i32 44, i32 8
  %90 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call12, ptr %driver_data.i.i, align 4
  %91 = load i32, ptr @backlight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool158.not = icmp eq i32 %91, 0
  br i1 %tobool158.not, label %if.end157.if.end160_crit_edge, label %if.then159

if.end157.if.end160_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end160

if.then159:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #12
  call void @nvidia_bl_init(ptr noundef %2) #10
  br label %if.end160

if.end160:                                        ; preds = %if.then159, %if.end157.if.end160_crit_edge
  %call161 = call i32 @register_framebuffer(ptr noundef nonnull %call12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %cmp162 = icmp slt i32 %call161, 0
  br i1 %cmp162, label %if.end160.err_out_iounmap_fb_crit_edge, label %do.end173

if.end160.err_out_iounmap_fb_crit_edge:           ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_iounmap_fb

do.end173:                                        ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %FbMapSize to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %FbMapSize, align 4
  %div268 = lshr i32 %93, 20
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 7, i32 1
  %94 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %smem_start, align 4
  %call178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %fix, i32 noundef %div268, i32 noundef %95) #13
  %call183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.20) #13
  br label %cleanup

err_out_iounmap_fb:                               ; preds = %if.end160.err_out_iounmap_fb_crit_edge, %if.end147.err_out_iounmap_fb_crit_edge
  %.str.48.sink = phi ptr [ @.str.45, %if.end147.err_out_iounmap_fb_crit_edge ], [ @.str.48, %if.end160.err_out_iounmap_fb_crit_edge ]
  %call169 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.48.sink) #13
  %96 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %78, align 4
  call void @iounmap(ptr noundef %97) #10
  br label %err_out_free_base1

err_out_free_base1:                               ; preds = %err_out_iounmap_fb, %do.end138
  %modedb = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 8, i32 1
  %98 = ptrtoint ptr %modedb to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %modedb, align 4
  call void @fb_destroy_modedb(ptr noundef %99) #10
  call void @nvidia_delete_i2c_busses(ptr noundef %2) #10
  br label %err_out_arch

err_out_arch:                                     ; preds = %err_out_free_base1, %if.end86.err_out_arch_crit_edge, %do.end83
  %100 = ptrtoint ptr %REGS to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %REGS, align 8
  call void @iounmap(ptr noundef %101) #10
  br label %err_out_free_base0

err_out_free_base0:                               ; preds = %err_out_arch, %do.end71
  call void @pci_release_regions(ptr noundef nonnull %pd) #10
  br label %err_out_enable

err_out_enable:                                   ; preds = %err_out_free_base0, %do.end36, %do.end27
  %102 = ptrtoint ptr %pixmap to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pixmap, align 4
  call void @kfree(ptr noundef %103) #10
  br label %err_out_kfree

err_out_kfree:                                    ; preds = %err_out_enable, %if.end14.err_out_kfree_crit_edge
  call void @framebuffer_release(ptr noundef nonnull %call12) #10
  br label %cleanup

cleanup:                                          ; preds = %err_out_kfree, %do.end173, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end173 ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %err_out_kfree ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvidiafb_remove(ptr noundef %pd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pd, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.93) #13
  tail call void @unregister_framebuffer(ptr noundef %1) #10
  tail call void @nvidia_bl_exit(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  tail call void @iounmap(ptr noundef %6) #10
  %modedb = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %modedb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %modedb, align 4
  tail call void @fb_destroy_modedb(ptr noundef %8) #10
  tail call void @nvidia_delete_i2c_busses(ptr noundef %3) #10
  %REGS = getelementptr inbounds %struct.nvidia_par, ptr %3, i32 0, i32 57
  %9 = ptrtoint ptr %REGS to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %REGS, align 8
  tail call void @iounmap(ptr noundef %10) #10
  tail call void @pci_release_regions(ptr noundef %pd) #10
  %pixmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %pixmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pixmap, align 4
  tail call void @kfree(ptr noundef %12) #10
  tail call void @framebuffer_release(ptr noundef %1) #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.93) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @NVCommonSetup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvidia_set_fbinfo(ptr noundef %info) unnamed_addr #0 align 64 {
entry:
  %modedb = alloca %struct.fb_videomode, align 4
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %monspecs = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %modedb) #10
  %0 = call ptr @memset(ptr %modedb, i32 255, i32 56)
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %1 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %par1, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.86) #13
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 9984, ptr %flags, align 4
  %modedb3 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %modedb3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %modedb3, align 4
  %modedb_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 6
  %6 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %modedb_len, align 4
  %modelist = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 13
  tail call void @fb_videomode_to_modelist(ptr noundef %5, i32 noundef %7, ptr noundef %modelist) #10
  call void @fb_var_to_videomode(ptr noundef nonnull %modedb, ptr noundef nonnull @nvidiafb_default_var) #10
  %8 = load i32, ptr @bpp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %8)
  %9 = icmp ult i32 %8, 17
  br i1 %9, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [17 x i32], ptr @switch.table.nvidia_set_fbinfo, i32 0, i32 %8
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 32, %entry.sw.epilog_crit_edge ]
  store i32 %.sink, ptr @bpp, align 4
  %11 = ptrtoint ptr %modedb3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %modedb3, align 4
  %cmp.not = icmp eq ptr %12, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = call ptr @fb_find_best_display(ptr noundef %monspecs, ptr noundef %modelist) #10
  call void @fb_videomode_to_var(ptr noundef nonnull @nvidiafb_default_var, ptr noundef %call8) #10
  %13 = load i32, ptr @bpp, align 4
  store i32 %13, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @nvidiafb_default_var, i32 0, i32 6), align 4
  br label %if.end19

if.else:                                          ; preds = %sw.epilog
  %fpWidth = getelementptr inbounds %struct.nvidia_par, ptr %2, i32 0, i32 34
  %14 = ptrtoint ptr %fpWidth to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fpWidth, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.else.if.end19_crit_edge, label %land.lhs.true

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true:                                    ; preds = %if.else
  %fpHeight = getelementptr inbounds %struct.nvidia_par, ptr %2, i32 0, i32 35
  %16 = ptrtoint ptr %fpHeight to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fpHeight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool9.not = icmp eq i32 %17, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end19_crit_edge, label %if.then10

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #10
  %18 = call ptr @memset(ptr %buf, i32 0, i32 16)
  %call14 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 15, ptr noundef nonnull @.str.87, i32 noundef %15, i32 noundef %17)
  %19 = ptrtoint ptr %modedb3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %modedb3, align 4
  %21 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %modedb_len, align 4
  %23 = load i32, ptr @bpp, align 4
  %call18 = call i32 @fb_find_mode(ptr noundef nonnull @nvidiafb_default_var, ptr noundef %info, ptr noundef nonnull %buf, ptr noundef %20, i32 noundef %22, ptr noundef nonnull %modedb, i32 noundef %23) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then10, %land.lhs.true.if.end19_crit_edge, %if.else.if.end19_crit_edge, %if.then
  %24 = load ptr, ptr @mode_option, align 4
  %tobool20.not = icmp eq ptr %24, null
  br i1 %tobool20.not, label %if.end19.if.end25_crit_edge, label %if.then21

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %modedb3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %modedb3, align 4
  %27 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %modedb_len, align 4
  %29 = load i32, ptr @bpp, align 4
  %call24 = call i32 @fb_find_mode(ptr noundef nonnull @nvidiafb_default_var, ptr noundef %info, ptr noundef nonnull %24, ptr noundef %26, i32 noundef %28, ptr noundef nonnull %modedb, i32 noundef %29) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end19.if.end25_crit_edge
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %30 = call ptr @memcpy(ptr %var, ptr @nvidiafb_default_var, i32 160)
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %31 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %32)
  %cmp27 = icmp eq i32 %32, 8
  %cond = select i1 %cmp27, i32 3, i32 4
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %33 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond, ptr %visual, align 4
  %pseudo_palette = getelementptr inbounds %struct.nvidia_par, ptr %2, i32 0, i32 5
  %pseudo_palette29 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %34 = ptrtoint ptr %pseudo_palette29 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %pseudo_palette, ptr %pseudo_palette29, align 4
  %cmap = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12
  %call30 = call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #10
  %35 = ptrtoint ptr %modedb3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %modedb3, align 4
  call void @fb_destroy_modedb(ptr noundef %36) #10
  %37 = ptrtoint ptr %modedb3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %modedb3, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %38 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %xres_virtual, align 4
  %40 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bits_per_pixel, align 4
  %add = add i32 %41, 7
  %shr = lshr i32 %add, 3
  %mul = mul i32 %shr, %39
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 26
  %42 = ptrtoint ptr %screen_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %screen_size, align 4
  %div = udiv i32 %43, %mul
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %44 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %div, ptr %yres_virtual, align 4
  %scan_align = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 4
  %45 = ptrtoint ptr %scan_align to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %scan_align, align 4
  %buf_align = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 3
  %46 = ptrtoint ptr %buf_align to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %buf_align, align 4
  %access_align = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 5
  %47 = ptrtoint ptr %access_align to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 32, ptr %access_align, align 4
  %size = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 1
  %48 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 8192, ptr %size, align 4
  %flags43 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 6
  %49 = ptrtoint ptr %flags43 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %flags43, align 4
  %50 = load i32, ptr @hwcur, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool44.not = icmp eq i32 %50, 0
  br i1 %tobool44.not, label %if.then45, label %if.end25.if.end46_crit_edge

if.end25.if.end46_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then45:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  store ptr null, ptr getelementptr inbounds (%struct.fb_ops, ptr @nvidia_fb_ops, i32 0, i32 14), align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end25.if.end46_crit_edge
  %51 = load i32, ptr @noaccel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool47.not = icmp eq i32 %51, 0
  %lnot.ext = zext i1 %tobool47.not to i32
  %accel_flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 16
  %52 = ptrtoint ptr %accel_flags to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %lnot.ext, ptr %accel_flags, align 4
  %Architecture = getelementptr inbounds %struct.nvidia_par, ptr %2, i32 0, i32 7
  %53 = ptrtoint ptr %Architecture to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %Architecture, align 8
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %54, label %if.end46.do.end66_crit_edge [
    i32 4, label %if.end46.do.end66.sink.split_crit_edge
    i32 16, label %sw.bb51
    i32 32, label %sw.bb54
    i32 48, label %sw.bb57
    i32 64, label %sw.bb60
  ]

if.end46.do.end66.sink.split_crit_edge:           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end66.sink.split

if.end46.do.end66_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end66

sw.bb51:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end66.sink.split

sw.bb54:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end66.sink.split

sw.bb57:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end66.sink.split

sw.bb60:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end66.sink.split

do.end66.sink.split:                              ; preds = %sw.bb60, %sw.bb57, %sw.bb54, %sw.bb51, %if.end46.do.end66.sink.split_crit_edge
  %.sink113 = phi i32 [ 43, %sw.bb51 ], [ 44, %sw.bb54 ], [ 45, %sw.bb57 ], [ 46, %sw.bb60 ], [ 28, %if.end46.do.end66.sink.split_crit_edge ]
  %accel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 12
  %56 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.sink113, ptr %accel, align 4
  br label %do.end66

do.end66:                                         ; preds = %do.end66.sink.split, %if.end46.do.end66_crit_edge
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.86) #13
  %call70 = call i32 @nvidiafb_check_var(ptr noundef %var, ptr noundef %info)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %modedb) #10
  ret i32 %call70
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvidia_save_vga(ptr noundef %par, ptr noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.90) #13
  tail call void @NVLockUnlock(ptr noundef %par, i32 noundef 0) #10
  tail call void @NVUnloadStateExt(ptr noundef %par, ptr noundef %state) #10
  %call1 = tail call zeroext i8 @NVReadMiscOut(ptr noundef %par) #10
  %misc_output = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %misc_output to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %call1, ptr %misc_output, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.064 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %conv = trunc i32 %i.064 to i8
  %call2 = tail call zeroext i8 @NVReadCrtc(ptr noundef %par, i8 noundef zeroext %conv) #10
  %arrayidx = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 1, i32 %i.064
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %call2, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, 65
  br i1 %exitcond.not, label %for.body6.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body6.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call zeroext i8 @NVReadAttr(ptr noundef %par, i8 noundef zeroext 0) #10
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %call8, ptr %state, align 1
  %call8.1 = tail call zeroext i8 @NVReadAttr(ptr noundef %par, i8 noundef zeroext 1) #10
  %arrayidx9.1 = getelementptr [21 x i8], ptr %state, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %call8.1, ptr %arrayidx9.1, align 1
  %call8.2 = tail call zeroext i8 @NVReadAttr(ptr noundef %par, i8 noundef zeroext 2) #10
  %arrayidx9.2 = getelementptr [21 x i8], ptr %state, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %call8.2, ptr %arrayidx9.2, align 1
  %call8.3 = tail call zeroext i8 @NVReadAttr(ptr noundef %par, i8 noundef zeroext 3) #10
  %arrayidx9.3 = getelementptr [21 x i8], ptr %state, i32 0, i32 3
  %5 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %call8.3, ptr %arrayidx9.3, align 1
  %call8.4 = tail call zeroext i8 @NVReadAttr(ptr noundef %par, i8 noundef zeroext 4) #10
  %arrayidx9.4 = getelementptr [21 x i8], ptr %state, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call8.4, ptr %arrayidx9.4, align 1
  %call8.5 = tail call zeroext i8 @NVReadAttr(ptr noundef %par, i8 noundef zeroext 5) #10
  %arrayidx9.5 = getelementptr [21 x i8], ptr %state, i32 0, i32 5
  %7 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %call8.5, ptr %arrayidx9.5, align 1
  %call8.6 = tail call zeroext i8 @NVReadAttr(ptr noundef %par, i8 noundef zeroext 6) #10
  %arrayidx9.6 = getelementptr [21 x i8], ptr %state, i32 0, i32 6
  %8 = ptrtoint ptr %arrayidx9.6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %call8.6, ptr %arrayidx9.6, align 1
  %call8.7 = tail call zeroext i8 @NVReadAttr(ptr noundef %par, i8 noundef zeroext 7) #10
  %arrayidx9.7 = getelementptr [21 x i8], ptr %state, i32 0, i32 7
  %9 = ptrtoint ptr %arrayidx9.7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call8.7, ptr %arrayidx9.7, align 1
  %call8.8 = tail call zeroext i8 @NVReadAttr(ptr noundef %par, i8 noundef zeroext 8) #10
  %arrayidx9.8 = getelementptr [21 x i8], ptr %state, i32 0, i32 8
  %10 = ptrtoint ptr %arrayidx9.8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call8.8, ptr %arrayidx9.8, align 1
  %call8.9 = tail call zeroext i8 @NVReadAttr(ptr noundef %par, i8 noundef zeroext 9) #10
  %arrayidx9.9 = getelementptr [21 x i8], ptr %state, i32 0, i32 9
  %11 = ptrtoint ptr %arrayidx9.9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call8.9, ptr %arrayidx9.9, align 1
  %call8.10 = tail call zeroext i8 @NVReadAttr(ptr noundef %par, i8 noundef zeroext 10) #10
  %arrayidx9.10 = getelementptr [21 x i8], ptr %state, i32 0, i32 10
  %12 = ptrtoint ptr %arrayidx9.10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call8.10, ptr %arrayidx9.10, align 1
  %call8.11 = tail call zeroext i8 @NVReadAttr(ptr noundef %par, i8 noundef zeroext 11) #10
  %arrayidx9.11 = getelementptr [21 x i8], ptr %state, i32 0, i32 11
  %13 = ptrtoint ptr %arrayidx9.11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call8.11, ptr %arrayidx9.11, align 1
  %call8.12 = tail call zeroext i8 @NVReadAttr(ptr noundef %par, i8 noundef zeroext 12) #10
  %arrayidx9.12 = getelementptr [21 x i8], ptr %state, i32 0, i32 12
  %14 = ptrtoint ptr %arrayidx9.12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call8.12, ptr %arrayidx9.12, align 1
  %call8.13 = tail call zeroext i8 @NVReadAttr(ptr noundef %par, i8 noundef zeroext 13) #10
  %arrayidx9.13 = getelementptr [21 x i8], ptr %state, i32 0, i32 13
  %15 = ptrtoint ptr %arrayidx9.13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call8.13, ptr %arrayidx9.13, align 1
  %call8.14 = tail call zeroext i8 @NVReadAttr(ptr noundef %par, i8 noundef zeroext 14) #10
  %arrayidx9.14 = getelementptr [21 x i8], ptr %state, i32 0, i32 14
  %16 = ptrtoint ptr %arrayidx9.14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call8.14, ptr %arrayidx9.14, align 1
  %call8.15 = tail call zeroext i8 @NVReadAttr(ptr noundef %par, i8 noundef zeroext 15) #10
  %arrayidx9.15 = getelementptr [21 x i8], ptr %state, i32 0, i32 15
  %17 = ptrtoint ptr %arrayidx9.15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %call8.15, ptr %arrayidx9.15, align 1
  %call8.16 = tail call zeroext i8 @NVReadAttr(ptr noundef %par, i8 noundef zeroext 16) #10
  %arrayidx9.16 = getelementptr [21 x i8], ptr %state, i32 0, i32 16
  %18 = ptrtoint ptr %arrayidx9.16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call8.16, ptr %arrayidx9.16, align 1
  %call8.17 = tail call zeroext i8 @NVReadAttr(ptr noundef %par, i8 noundef zeroext 17) #10
  %arrayidx9.17 = getelementptr [21 x i8], ptr %state, i32 0, i32 17
  %19 = ptrtoint ptr %arrayidx9.17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %call8.17, ptr %arrayidx9.17, align 1
  %call8.18 = tail call zeroext i8 @NVReadAttr(ptr noundef %par, i8 noundef zeroext 18) #10
  %arrayidx9.18 = getelementptr [21 x i8], ptr %state, i32 0, i32 18
  %20 = ptrtoint ptr %arrayidx9.18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %call8.18, ptr %arrayidx9.18, align 1
  %call8.19 = tail call zeroext i8 @NVReadAttr(ptr noundef %par, i8 noundef zeroext 19) #10
  %arrayidx9.19 = getelementptr [21 x i8], ptr %state, i32 0, i32 19
  %21 = ptrtoint ptr %arrayidx9.19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call8.19, ptr %arrayidx9.19, align 1
  %call8.20 = tail call zeroext i8 @NVReadAttr(ptr noundef %par, i8 noundef zeroext 20) #10
  %arrayidx9.20 = getelementptr [21 x i8], ptr %state, i32 0, i32 20
  %22 = ptrtoint ptr %arrayidx9.20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %call8.20, ptr %arrayidx9.20, align 1
  %call18 = tail call zeroext i8 @NVReadGr(ptr noundef %par, i8 noundef zeroext 0) #10
  %arrayidx19 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 2, i32 0
  %23 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %call18, ptr %arrayidx19, align 1
  %call18.1 = tail call zeroext i8 @NVReadGr(ptr noundef %par, i8 noundef zeroext 1) #10
  %arrayidx19.1 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call18.1, ptr %arrayidx19.1, align 1
  %call18.2 = tail call zeroext i8 @NVReadGr(ptr noundef %par, i8 noundef zeroext 2) #10
  %arrayidx19.2 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %call18.2, ptr %arrayidx19.2, align 1
  %call18.3 = tail call zeroext i8 @NVReadGr(ptr noundef %par, i8 noundef zeroext 3) #10
  %arrayidx19.3 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 2, i32 3
  %26 = ptrtoint ptr %arrayidx19.3 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %call18.3, ptr %arrayidx19.3, align 1
  %call18.4 = tail call zeroext i8 @NVReadGr(ptr noundef %par, i8 noundef zeroext 4) #10
  %arrayidx19.4 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %arrayidx19.4 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %call18.4, ptr %arrayidx19.4, align 1
  %call18.5 = tail call zeroext i8 @NVReadGr(ptr noundef %par, i8 noundef zeroext 5) #10
  %arrayidx19.5 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 2, i32 5
  %28 = ptrtoint ptr %arrayidx19.5 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %call18.5, ptr %arrayidx19.5, align 1
  %call18.6 = tail call zeroext i8 @NVReadGr(ptr noundef %par, i8 noundef zeroext 6) #10
  %arrayidx19.6 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 2, i32 6
  %29 = ptrtoint ptr %arrayidx19.6 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %call18.6, ptr %arrayidx19.6, align 1
  %call18.7 = tail call zeroext i8 @NVReadGr(ptr noundef %par, i8 noundef zeroext 7) #10
  %arrayidx19.7 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 2, i32 7
  %30 = ptrtoint ptr %arrayidx19.7 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call18.7, ptr %arrayidx19.7, align 1
  %call18.8 = tail call zeroext i8 @NVReadGr(ptr noundef %par, i8 noundef zeroext 8) #10
  %arrayidx19.8 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 2, i32 8
  %31 = ptrtoint ptr %arrayidx19.8 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %call18.8, ptr %arrayidx19.8, align 1
  %call28 = tail call zeroext i8 @NVReadSeq(ptr noundef %par, i8 noundef zeroext 0) #10
  %arrayidx29 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 3, i32 0
  %32 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %call28, ptr %arrayidx29, align 1
  %call28.1 = tail call zeroext i8 @NVReadSeq(ptr noundef %par, i8 noundef zeroext 1) #10
  %arrayidx29.1 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %call28.1, ptr %arrayidx29.1, align 1
  %call28.2 = tail call zeroext i8 @NVReadSeq(ptr noundef %par, i8 noundef zeroext 2) #10
  %arrayidx29.2 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 3, i32 2
  %34 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %call28.2, ptr %arrayidx29.2, align 1
  %call28.3 = tail call zeroext i8 @NVReadSeq(ptr noundef %par, i8 noundef zeroext 3) #10
  %arrayidx29.3 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %call28.3, ptr %arrayidx29.3, align 1
  %call28.4 = tail call zeroext i8 @NVReadSeq(ptr noundef %par, i8 noundef zeroext 4) #10
  %arrayidx29.4 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 3, i32 4
  %36 = ptrtoint ptr %arrayidx29.4 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %call28.4, ptr %arrayidx29.4, align 1
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.90) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvidia_bl_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_destroy_modedb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvidia_delete_i2c_busses(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvidiafb_open(ptr nocapture noundef readonly %info, i32 noundef %user) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %open_count = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %initial_state = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 2
  tail call fastcc void @nvidia_save_vga(ptr noundef %1, ptr noundef %initial_state)
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %open_count, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %open_count, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvidiafb_release(ptr nocapture noundef readonly %info, i32 noundef %user) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %open_count = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open_count, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %3, label %entry.if.end4_crit_edge [
    i32 0, label %entry.done_crit_edge
    i32 1, label %if.then3
  ]

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %initial_state = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 2
  tail call fastcc void @nvidia_write_regs(ptr noundef %1, ptr noundef %initial_state)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry.if.end4_crit_edge
  %5 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %open_count, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %open_count, align 4
  br label %done

done:                                             ; preds = %if.end4, %entry.done_crit_edge
  %err.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.done_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvidiafb_check_var(ptr noundef %var, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.63) #13
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %var, align 4
  %and = and i32 %3, -8
  store i32 %and, ptr %var, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %4 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cmp = icmp ult i32 %5, 9
  br i1 %cmp, label %sw.bb, label %if.else

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %5)
  %cmp5 = icmp ult i32 %5, 17
  br i1 %cmp5, label %sw.bb25, label %sw.bb53

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %bits_per_pixel, align 4
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %7 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %red, align 4
  %length14 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %length14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %length14, align 4
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %9 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %green, align 4
  %length17 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %length17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %length17, align 4
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %11 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %blue, align 4
  %length20 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %length20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %length20, align 4
  %13 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %transp, align 4
  %14 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %length, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16, ptr %bits_per_pixel, align 4
  %green26 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %length27 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %length27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %17)
  %cmp28 = icmp ult i32 %17, 6
  %cond = select i1 %cmp28, i32 5, i32 6
  %18 = ptrtoint ptr %length27 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond, ptr %length27, align 4
  %red31 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %length32 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %length32 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 5, ptr %length32, align 4
  %blue33 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %length34 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %length34 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 5, ptr %length34, align 4
  %sub = sub nuw nsw i32 6, %cond
  %21 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub, ptr %length, align 4
  %22 = ptrtoint ptr %blue33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %blue33, align 4
  %23 = ptrtoint ptr %green26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5, ptr %green26, align 4
  %add = add nuw nsw i32 %cond, 5
  %24 = ptrtoint ptr %red31 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add, ptr %red31, align 4
  %add49 = add nuw nsw i32 %cond, 10
  %and50 = and i32 %add49, 15
  %25 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and50, ptr %transp, align 4
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 32, ptr %bits_per_pixel, align 4
  %red54 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %27 = ptrtoint ptr %red54 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 16, ptr %red54, align 4
  %length57 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %28 = ptrtoint ptr %length57 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %length57, align 4
  %green58 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %29 = ptrtoint ptr %green58 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 8, ptr %green58, align 4
  %length61 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %length61 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 8, ptr %length61, align 4
  %blue62 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %31 = ptrtoint ptr %blue62 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %blue62, align 4
  %length65 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %32 = ptrtoint ptr %length65 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8, ptr %length65, align 4
  %33 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %length, align 4
  %34 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 24, ptr %transp, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb53, %sw.bb25, %sw.bb
  %msb_right = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 2
  %35 = ptrtoint ptr %msb_right to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %msb_right, align 4
  %msb_right72 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 2
  %36 = ptrtoint ptr %msb_right72 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %msb_right72, align 4
  %msb_right74 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 2
  %37 = ptrtoint ptr %msb_right74 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %msb_right74, align 4
  %msb_right76 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 2
  %38 = ptrtoint ptr %msb_right76 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %msb_right76, align 4
  %hfmax = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 12
  %39 = ptrtoint ptr %hfmax to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hfmax, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not = icmp eq i32 %40, 0
  br i1 %tobool.not, label %sw.epilog.if.end108_crit_edge, label %lor.lhs.false

sw.epilog.if.end108_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

lor.lhs.false:                                    ; preds = %sw.epilog
  %vfmax = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 19
  %41 = ptrtoint ptr %vfmax to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vfmax, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool78.not = icmp eq i16 %42, 0
  br i1 %tobool78.not, label %lor.lhs.false.if.end108_crit_edge, label %lor.lhs.false79

lor.lhs.false.if.end108_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

lor.lhs.false79:                                  ; preds = %lor.lhs.false
  %dclkmax = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 14
  %43 = ptrtoint ptr %dclkmax to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dclkmax, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool81.not = icmp eq i32 %44, 0
  br i1 %tobool81.not, label %lor.lhs.false79.if.end108_crit_edge, label %lor.lhs.false82

lor.lhs.false79.if.end108_crit_edge:              ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

lor.lhs.false82:                                  ; preds = %lor.lhs.false79
  %call83 = tail call i32 @fb_validate_mode(ptr noundef %var, ptr noundef %info) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %lor.lhs.false82.if.end108_crit_edge, label %land.lhs.true

lor.lhs.false82.if.end108_crit_edge:              ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

land.lhs.true:                                    ; preds = %lor.lhs.false82
  %gtf = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 21
  %45 = ptrtoint ptr %gtf to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load = load i8, ptr %gtf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool89.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool89.not, label %land.lhs.true.if.then97_crit_edge, label %if.then90

land.lhs.true.if.then97_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then97

if.then90:                                        ; preds = %land.lhs.true
  %call91 = tail call i32 @fb_get_mode(i32 noundef 0, i32 noundef 0, ptr noundef %var, ptr noundef %info) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not.not, label %if.then90.if.end108_crit_edge, label %if.then90.if.then97_crit_edge

if.then90.if.then97_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then97

if.then90.if.end108_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.then97:                                        ; preds = %if.then90.if.then97_crit_edge, %land.lhs.true.if.then97_crit_edge
  %modelist = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 13
  %call98 = tail call ptr @fb_find_best_mode(ptr noundef %var, ptr noundef %modelist) #10
  %tobool99.not = icmp eq ptr %call98, null
  br i1 %tobool99.not, label %land.lhs.true104, label %if.then100

if.then100:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fb_videomode_to_var(ptr noundef %var, ptr noundef nonnull %call98) #10
  br label %if.end108

land.lhs.true104:                                 ; preds = %if.then97
  %modedb_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 6
  %46 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %modedb_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool106.not = icmp eq i32 %47, 0
  br i1 %tobool106.not, label %land.lhs.true104.if.end108_crit_edge, label %land.lhs.true104.cleanup227_crit_edge

land.lhs.true104.cleanup227_crit_edge:            ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

land.lhs.true104.if.end108_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.end108:                                        ; preds = %land.lhs.true104.if.end108_crit_edge, %if.then100, %if.then90.if.end108_crit_edge, %lor.lhs.false82.if.end108_crit_edge, %lor.lhs.false79.if.end108_crit_edge, %lor.lhs.false.if.end108_crit_edge, %sw.epilog.if.end108_crit_edge
  %fpWidth = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 34
  %48 = ptrtoint ptr %fpWidth to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fpWidth, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool109.not = icmp eq i32 %49, 0
  br i1 %tobool109.not, label %if.end108.if.end137_crit_edge, label %land.lhs.true110

if.end108.if.end137_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137

land.lhs.true110:                                 ; preds = %if.end108
  %fpHeight = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 35
  %50 = ptrtoint ptr %fpHeight to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fpHeight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool111.not = icmp eq i32 %51, 0
  br i1 %tobool111.not, label %land.lhs.true110.if.end137_crit_edge, label %land.lhs.true112

land.lhs.true110.if.end137_crit_edge:             ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137

land.lhs.true112:                                 ; preds = %land.lhs.true110
  %52 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %53)
  %cmp115 = icmp ult i32 %49, %53
  br i1 %cmp115, label %land.lhs.true112.if.then121_crit_edge, label %lor.lhs.false117

land.lhs.true112.if.then121_crit_edge:            ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then121

lor.lhs.false117:                                 ; preds = %land.lhs.true112
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %54 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %55)
  %cmp119 = icmp ult i32 %51, %55
  br i1 %cmp119, label %lor.lhs.false117.if.then121_crit_edge, label %lor.lhs.false117.if.end137_crit_edge

lor.lhs.false117.if.end137_crit_edge:             ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137

lor.lhs.false117.if.then121_crit_edge:            ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then121

if.then121:                                       ; preds = %lor.lhs.false117.if.then121_crit_edge, %land.lhs.true112.if.then121_crit_edge
  %56 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %49, ptr %var, align 4
  %57 = ptrtoint ptr %fpHeight to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fpHeight, align 4
  %yres126 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %59 = ptrtoint ptr %yres126 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %yres126, align 4
  %modelist127 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 13
  %call128 = tail call ptr @fb_find_best_mode(ptr noundef %var, ptr noundef %modelist127) #10
  %tobool129.not = icmp eq ptr %call128, null
  br i1 %tobool129.not, label %do.end133, label %if.end136

do.end133:                                        ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #12
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #13
  br label %cleanup227

if.end136:                                        ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fb_videomode_to_var(ptr noundef %var, ptr noundef nonnull %call128) #10
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %lor.lhs.false117.if.end137_crit_edge, %land.lhs.true110.if.end137_crit_edge, %if.end108.if.end137_crit_edge
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %60 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %yres_virtual, align 4
  %yres138 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %62 = ptrtoint ptr %yres138 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %yres138, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp139 = icmp ult i32 %61, %63
  br i1 %cmp139, label %if.then141, label %if.end137.if.end144_crit_edge

if.end137.if.end144_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144

if.then141:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %yres_virtual, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.then141, %if.end137.if.end144_crit_edge
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %65 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %xres_virtual, align 4
  %67 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp146 = icmp ult i32 %66, %68
  br i1 %cmp146, label %if.then148, label %if.end144.if.end151_crit_edge

if.end144.if.end151_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end151

if.then148:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %xres_virtual, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.then148, %if.end144.if.end151_crit_edge
  %70 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %xres_virtual, align 4
  %add153 = add i32 %71, 63
  %and154 = and i32 %add153, -64
  store i32 %and154, ptr %xres_virtual, align 4
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 26
  %72 = ptrtoint ptr %screen_size to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %screen_size, align 4
  %74 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bits_per_pixel, align 4
  %mul = mul i32 %75, %and154
  %div351 = lshr exact i32 %mul, 3
  %76 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %yres_virtual, align 4
  %mul160 = mul i32 %div351, %77
  call void @__sanitizer_cov_trace_cmp4(i32 %mul160, i32 %73)
  %cmp161 = icmp sgt i32 %mul160, %73
  br i1 %cmp161, label %if.then163, label %if.end151.if.end204_crit_edge

if.end151.if.end204_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end204

if.then163:                                       ; preds = %if.end151
  %div164 = sdiv i32 %73, %div351
  %78 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %div164, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div164, i32 %63)
  %cmp168 = icmp ult i32 %div164, %63
  br i1 %cmp168, label %if.then170, label %if.then163.if.end204_crit_edge

if.then163.if.end204_crit_edge:                   ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end204

if.then170:                                       ; preds = %if.then163
  %79 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %63, ptr %yres_virtual, align 4
  %div174 = udiv i32 %73, %63
  %div177352 = lshr i32 %75, 3
  %div179 = udiv i32 %div174, %div177352
  %and181 = and i32 %div179, -64
  %80 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %and181, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and181, i32 %68)
  %cmp191 = icmp ult i32 %and181, %68
  br i1 %cmp191, label %do.end196, label %if.then170.if.end204_crit_edge

if.then170.if.end204_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end204

do.end196:                                        ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #12
  %mul184 = mul i32 %and181, %75
  %div186353 = lshr exact i32 %mul184, 3
  %mul188 = mul i32 %div186353, %63
  %call201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %mul188, i32 noundef %and181, i32 noundef %63, i32 noundef %75) #13
  br label %if.end204

if.end204:                                        ; preds = %do.end196, %if.then170.if.end204_crit_edge, %if.then163.if.end204_crit_edge, %if.end151.if.end204_crit_edge
  %err.0 = phi i32 [ -12, %do.end196 ], [ 0, %if.then170.if.end204_crit_edge ], [ 0, %if.then163.if.end204_crit_edge ], [ 0, %if.end151.if.end204_crit_edge ]
  %accel_flags = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 16
  %81 = ptrtoint ptr %accel_flags to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %accel_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool205.not = icmp eq i32 %82, 0
  br i1 %tobool205.not, label %if.end204.if.end219_crit_edge, label %if.then206

if.end204.if.end219_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end219

if.then206:                                       ; preds = %if.end204
  %83 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %84)
  %cmp208 = icmp ugt i32 %84, 32767
  br i1 %cmp208, label %if.then210, label %if.then206.if.end212_crit_edge

if.then206.if.end212_crit_edge:                   ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end212

if.then210:                                       ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 32767, ptr %yres_virtual, align 4
  br label %if.end212

if.end212:                                        ; preds = %if.then210, %if.then206.if.end212_crit_edge
  %86 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %87)
  %cmp214 = icmp ugt i32 %87, 32767
  br i1 %cmp214, label %if.then216, label %if.end212.if.end219_crit_edge

if.end212.if.end219_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end219

if.then216:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 32767, ptr %xres_virtual, align 4
  br label %if.end219

if.end219:                                        ; preds = %if.then216, %if.end212.if.end219_crit_edge, %if.end204.if.end219_crit_edge
  %89 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %xres_virtual, align 4
  %and221 = and i32 %90, -64
  store i32 %and221, ptr %xres_virtual, align 4
  %call226 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.63) #13
  br label %cleanup227

cleanup227:                                       ; preds = %if.end219, %do.end133, %land.lhs.true104.cleanup227_crit_edge
  %retval.1 = phi i32 [ %err.0, %if.end219 ], [ -22, %land.lhs.true104.cleanup227_crit_edge ], [ -22, %do.end133 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvidiafb_set_par(ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.72) #13
  tail call void @NVLockUnlock(ptr noundef %1, i32 noundef 1) #10
  %FlatPanel = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %FlatPanel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %FlatPanel, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %twoHeads = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %twoHeads to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %twoHeads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %FPDither = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 27
  %6 = ptrtoint ptr %FPDither to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %FPDither, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %FPDither3 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 27
  %7 = ptrtoint ptr %FPDither3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %FPDither3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then4, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then4:                                         ; preds = %if.end
  %Chipset = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %Chipset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %Chipset, align 8
  %and = and i32 %10, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %and)
  %cmp5 = icmp eq i32 %and, 272
  %PRAMDAC = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 75
  %11 = ptrtoint ptr %PRAMDAC to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %PRAMDAC, align 8
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %12, i32 1320
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !301
  %and8 = lshr i32 %13, 16
  br label %do.end25

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr13 = getelementptr i8, ptr %12, i32 2108
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #10, !srcloc !301
  br label %do.end25

do.end25:                                         ; preds = %if.else, %if.then6
  %storemerge.in = phi i32 [ %14, %if.else ], [ %and8, %if.then6 ]
  %storemerge = and i32 %storemerge.in, 1
  %15 = ptrtoint ptr %FPDither3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge, ptr %FPDither3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge)
  %tobool28.not = icmp eq i32 %storemerge, 0
  %cond = select i1 %tobool28.not, ptr @.str.77, ptr @.str.76
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull %cond) #13
  br label %if.end30

if.end30:                                         ; preds = %do.end25, %if.end.if.end30_crit_edge
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %16 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %17)
  %cmp31 = icmp eq i32 %17, 8
  %cond32 = select i1 %cmp31, i32 3, i32 4
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %18 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond32, ptr %visual, align 4
  %19 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %par1, align 4
  %ModeReg.i = getelementptr inbounds %struct.nvidia_par, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %ModeReg.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %ModeReg.i, align 1
  %arrayidx.1.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %arrayidx.1.i, align 1
  %arrayidx.2.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %arrayidx.2.i, align 1
  %arrayidx.3.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %arrayidx.3.i, align 1
  %arrayidx.4.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 0, i32 4
  %25 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 4, ptr %arrayidx.4.i, align 1
  %arrayidx.5.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 0, i32 5
  %26 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 5, ptr %arrayidx.5.i, align 1
  %arrayidx.6.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 0, i32 6
  %27 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 6, ptr %arrayidx.6.i, align 1
  %arrayidx.7.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 0, i32 7
  %28 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 7, ptr %arrayidx.7.i, align 1
  %arrayidx.8.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 0, i32 8
  %29 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 8, ptr %arrayidx.8.i, align 1
  %arrayidx.9.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 0, i32 9
  %30 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 9, ptr %arrayidx.9.i, align 1
  %arrayidx.10.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 0, i32 10
  %31 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 10, ptr %arrayidx.10.i, align 1
  %arrayidx.11.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 0, i32 11
  %32 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 11, ptr %arrayidx.11.i, align 1
  %arrayidx.12.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 0, i32 12
  %33 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 12, ptr %arrayidx.12.i, align 1
  %arrayidx.13.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 0, i32 13
  %34 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 13, ptr %arrayidx.13.i, align 1
  %arrayidx.14.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 0, i32 14
  %35 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 14, ptr %arrayidx.14.i, align 1
  %arrayidx.15.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 0, i32 15
  %36 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 15, ptr %arrayidx.15.i, align 1
  %arrayidx3.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 0, i32 16
  %37 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 65, ptr %arrayidx3.i, align 4
  %arrayidx5.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 0, i32 17
  %38 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %arrayidx5.i, align 1
  %arrayidx7.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 0, i32 18
  %39 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 15, ptr %arrayidx7.i, align 2
  %arrayidx9.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 0, i32 19
  %arrayidx13.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 1, i32 10
  %40 = call ptr @memset(ptr %arrayidx9.i, i32 0, i32 67)
  %41 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 32, ptr %arrayidx13.i, align 1
  %arrayidx15.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 1, i32 23
  %42 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -29, ptr %arrayidx15.i, align 1
  %arrayidx17.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 1, i32 24
  %43 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -1, ptr %arrayidx17.i, align 1
  %arrayidx19.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 1, i32 40
  %44 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 64, ptr %arrayidx19.i, align 1
  %gra.i = getelementptr inbounds %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 2
  %45 = call ptr @memset(ptr %gra.i, i32 0, i32 6)
  %arrayidx22.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 2, i32 5
  %46 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 64, ptr %arrayidx22.i, align 1
  %arrayidx24.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 2, i32 6
  %47 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 5, ptr %arrayidx24.i, align 2
  %arrayidx26.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 2, i32 7
  %48 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 15, ptr %arrayidx26.i, align 1
  %arrayidx28.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 2, i32 8
  %49 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %arrayidx28.i, align 2
  %seq.i = getelementptr inbounds %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 3
  %50 = ptrtoint ptr %seq.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 3, ptr %seq.i, align 1
  %arrayidx31.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 3, i32 1
  %51 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %arrayidx31.i, align 1
  %arrayidx33.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 3, i32 2
  %52 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 15, ptr %arrayidx33.i, align 1
  %arrayidx35.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 3, i32 3
  %53 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %arrayidx35.i, align 1
  %arrayidx37.i = getelementptr %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 3, i32 4
  %54 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 14, ptr %arrayidx37.i, align 1
  %misc_output.i = getelementptr inbounds %struct.nvidia_par, ptr %20, i32 0, i32 1, i32 4
  %55 = ptrtoint ptr %misc_output.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -21, ptr %misc_output.i, align 4
  %56 = load ptr, ptr %par1, align 4
  %ModeReg.i132 = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1
  %var.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %fix.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %call.i = tail call i32 @fb_get_color_depth(ptr noundef %var.i, ptr noundef %fix.i) #10
  %57 = ptrtoint ptr %var.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %var.i, align 4
  %div1.i = lshr i32 %58, 3
  %sub.i = add nsw i32 %div1.i, -1
  %right_margin.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 19
  %59 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %right_margin.i, align 4
  %add.i = add i32 %60, %58
  %div62.i = lshr i32 %add.i, 3
  %sub7.i = add nsw i32 %div62.i, -1
  %hsync_len.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 22
  %61 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %hsync_len.i, align 4
  %add14.i = add i32 %add.i, %62
  %div153.i = lshr i32 %add14.i, 3
  %sub16.i = add nsw i32 %div153.i, -1
  %left_margin.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 18
  %63 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %left_margin.i, align 4
  %add26.i = add i32 %add14.i, %64
  %div274.i = lshr i32 %add26.i, 3
  %sub28.i = add nsw i32 %div274.i, -5
  %add29.i = add nsw i32 %div274.i, -1
  %yres.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %65 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %yres.i, align 4
  %sub31.i = add i32 %66, -1
  %lower_margin.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 21
  %67 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %lower_margin.i, align 4
  %add35.i = add i32 %68, %66
  %sub36.i = add i32 %add35.i, -1
  %vsync_len.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 23
  %69 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %vsync_len.i, align 4
  %add43.i = add i32 %add35.i, %70
  %sub44.i = add i32 %add43.i, -1
  %upper_margin.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 20
  %71 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %upper_margin.i, align 4
  %add54.i = add i32 %add43.i, %72
  %sub55.i = add i32 %add54.i, -2
  %vmode.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 25
  %73 = ptrtoint ptr %vmode.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %vmode.i, align 4
  %and.i = and i32 %74, 1
  %75 = or i32 %and.i, %sub55.i
  %FlatPanel.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 26
  %76 = ptrtoint ptr %FlatPanel.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %FlatPanel.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %77)
  %cmp.i = icmp eq i32 %77, 1
  br i1 %cmp.i, label %if.then58.i, label %if.end30.if.end64.i_crit_edge

if.end30.if.end64.i_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64.i

if.then58.i:                                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %sub59.i = add i32 %75, -3
  %sub60.i = add i32 %75, -2
  %sub61.i = add nsw i32 %div274.i, -10
  %sub62.i = add nsw i32 %div274.i, -7
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then58.i, %if.end30.if.end64.i_crit_edge
  %h_start.0.i = phi i32 [ %sub61.i, %if.then58.i ], [ %sub7.i, %if.end30.if.end64.i_crit_edge ]
  %h_end.0.i = phi i32 [ %sub62.i, %if.then58.i ], [ %sub16.i, %if.end30.if.end64.i_crit_edge ]
  %v_start.0.i = phi i32 [ %sub59.i, %if.then58.i ], [ %sub36.i, %if.end30.if.end64.i_crit_edge ]
  %v_end.0.i = phi i32 [ %sub60.i, %if.then58.i ], [ %sub44.i, %if.end30.if.end64.i_crit_edge ]
  %v_blank_s.0.i = phi i32 [ %sub59.i, %if.then58.i ], [ %sub31.i, %if.end30.if.end64.i_crit_edge ]
  %conv.i = trunc i32 %sub28.i to i8
  %crtc.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 1
  %78 = ptrtoint ptr %crtc.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv.i, ptr %crtc.i, align 1
  %conv67.i = trunc i32 %sub.i to i8
  %arrayidx69.i = getelementptr %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 1, i32 1
  %79 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv67.i, ptr %arrayidx69.i, align 1
  %arrayidx73.i = getelementptr %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 1, i32 2
  %80 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv67.i, ptr %arrayidx73.i, align 1
  %81 = trunc i32 %add29.i to i8
  %82 = and i8 %81, 31
  %conv76.i = or i8 %82, -128
  %arrayidx78.i = getelementptr %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 1, i32 3
  %83 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv76.i, ptr %arrayidx78.i, align 1
  %conv80.i = trunc i32 %h_start.0.i to i8
  %arrayidx82.i = getelementptr %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 1, i32 4
  %84 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv80.i, ptr %arrayidx82.i, align 1
  %85 = shl nsw i32 %add29.i, 2
  %shl85.i = and i32 %85, 128
  %and86.i = and i32 %h_end.0.i, 31
  %or89.i = or i32 %and86.i, %shl85.i
  %conv90.i = trunc i32 %or89.i to i8
  %arrayidx92.i = getelementptr %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 1, i32 5
  %86 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv90.i, ptr %arrayidx92.i, align 1
  %conv96.i = trunc i32 %75 to i8
  %arrayidx98.i = getelementptr %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 1, i32 6
  %87 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv96.i, ptr %arrayidx98.i, align 1
  %and99.i = lshr i32 %sub55.i, 8
  %shr100.i = and i32 %and99.i, 1
  %88 = lshr i32 %sub31.i, 7
  %shl104.i = and i32 %88, 2
  %89 = lshr i32 %v_start.0.i, 6
  %shl108.i = and i32 %89, 4
  %90 = lshr i32 %v_blank_s.0.i, 5
  %shl112.i = and i32 %90, 8
  %91 = lshr i32 %sub55.i, 4
  %shl117.i = and i32 %91, 32
  %92 = lshr i32 %sub31.i, 3
  %shl121.i = and i32 %92, 64
  %93 = lshr i32 %v_start.0.i, 2
  %shl125.i = and i32 %93, 128
  %or105.i = or i32 %shl121.i, %shl104.i
  %or109.i = or i32 %or105.i, %shr100.i
  %or113.i = or i32 %or109.i, %shl117.i
  %or114.i = or i32 %or113.i, %shl108.i
  %or118.i = or i32 %or114.i, %shl125.i
  %or122.i = or i32 %or118.i, %shl112.i
  %94 = trunc i32 %or122.i to i8
  %conv127.i = or i8 %94, 16
  %arrayidx129.i = getelementptr %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 1, i32 7
  %95 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv127.i, ptr %arrayidx129.i, align 1
  %96 = lshr i32 %v_blank_s.0.i, 4
  %shl132.i = and i32 %96, 32
  %97 = ptrtoint ptr %vmode.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %vmode.i, align 4
  %and136.i = shl i32 %98, 6
  %or133.i = or i32 %and136.i, %shl132.i
  %99 = trunc i32 %or133.i to i8
  %conv139.i = or i8 %99, 64
  %arrayidx141.i = getelementptr %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 1, i32 9
  %100 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv139.i, ptr %arrayidx141.i, align 1
  %conv143.i = trunc i32 %v_start.0.i to i8
  %arrayidx145.i = getelementptr %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 1, i32 16
  %101 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv143.i, ptr %arrayidx145.i, align 1
  %102 = trunc i32 %v_end.0.i to i8
  %103 = and i8 %102, 15
  %conv150.i = or i8 %103, 32
  %arrayidx152.i = getelementptr %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 1, i32 17
  %104 = ptrtoint ptr %arrayidx152.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv150.i, ptr %arrayidx152.i, align 1
  %conv154.i = trunc i32 %sub31.i to i8
  %arrayidx156.i = getelementptr %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 1, i32 18
  %105 = ptrtoint ptr %arrayidx156.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv154.i, ptr %arrayidx156.i, align 1
  %xres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %106 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %xres_virtual.i, align 4
  %div1585.i = lshr i32 %107, 3
  %108 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %bits_per_pixel, align 4
  %div1606.i = lshr i32 %109, 3
  %mul.i = mul i32 %div1606.i, %div1585.i
  %conv161.i = trunc i32 %mul.i to i8
  %arrayidx163.i = getelementptr %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 1, i32 19
  %110 = ptrtoint ptr %arrayidx163.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv161.i, ptr %arrayidx163.i, align 1
  %conv165.i = trunc i32 %v_blank_s.0.i to i8
  %arrayidx167.i = getelementptr %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 1, i32 21
  %111 = ptrtoint ptr %arrayidx167.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv165.i, ptr %arrayidx167.i, align 1
  %112 = trunc i32 %add54.i to i8
  %conv169.i = add i8 %112, -1
  %arrayidx171.i = getelementptr %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 1, i32 22
  %113 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv169.i, ptr %arrayidx171.i, align 1
  %arrayidx172.i = getelementptr %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 0, i32 16
  %114 = ptrtoint ptr %arrayidx172.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %arrayidx172.i, align 4
  %Television.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 28
  %115 = ptrtoint ptr %Television.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %Television.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool173.not.i = icmp eq i32 %116, 0
  br i1 %tobool173.not.i, label %if.end64.i.if.end177.i_crit_edge, label %if.then174.i

if.end64.i.if.end177.i_crit_edge:                 ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end177.i

if.then174.i:                                     ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx176.i = getelementptr %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 0, i32 17
  %117 = ptrtoint ptr %arrayidx176.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %arrayidx176.i, align 1
  br label %if.end177.i

if.end177.i:                                      ; preds = %if.then174.i, %if.end64.i.if.end177.i_crit_edge
  %118 = lshr i32 %add29.i, 2
  %shl180.i = and i32 %118, 16
  %119 = lshr i32 %v_blank_s.0.i, 7
  %shl183.i = and i32 %119, 8
  %120 = lshr i32 %v_start.0.i, 8
  %shl187.i = and i32 %120, 4
  %121 = lshr i32 %sub31.i, 9
  %shl191.i = and i32 %121, 2
  %and193.i = lshr i32 %sub55.i, 10
  %shr194.i = and i32 %and193.i, 1
  %or184.i = or i32 %shl180.i, %shl191.i
  %or188.i = or i32 %or184.i, %shr194.i
  %or192.i = or i32 %or188.i, %shl187.i
  %or196.i = or i32 %or192.i, %shl183.i
  %screen.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 11
  %122 = ptrtoint ptr %screen.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %or196.i, ptr %screen.i, align 4
  %and197.i = lshr i32 %sub28.i, 8
  %shr198.i = and i32 %and197.i, 1
  %and200.i = lshr i32 %sub.i, 8
  %shr201.i = and i32 %and200.i, 1
  %shl202.i = shl nuw nsw i32 %shr201.i, 1
  %or203.i = or i32 %shr198.i, %shl202.i
  %shl206.i = shl nuw nsw i32 %shr201.i, 2
  %or207.i = or i32 %or203.i, %shl206.i
  %123 = lshr i32 %h_start.0.i, 5
  %shl210.i = and i32 %123, 8
  %or211.i = or i32 %shl210.i, %or207.i
  %horiz.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 17
  %124 = ptrtoint ptr %horiz.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %or211.i, ptr %horiz.i, align 4
  %and212.i = lshr i32 %sub55.i, 11
  %shr213.i = and i32 %and212.i, 1
  %shl217.i = and i32 %121, 4
  %or218.i = or i32 %shr213.i, %shl217.i
  %125 = lshr i32 %v_start.0.i, 7
  %shl221.i = and i32 %125, 16
  %or222.i = or i32 %or218.i, %shl221.i
  %shl225.i = and i32 %90, 64
  %or226.i = or i32 %or222.i, %shl225.i
  %extra.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 14
  %126 = ptrtoint ptr %extra.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %or226.i, ptr %extra.i, align 4
  %127 = ptrtoint ptr %vmode.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %vmode.i, align 4
  %and229.i = and i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and229.i)
  %tobool230.not.i = icmp eq i32 %and229.i, 0
  br i1 %tobool230.not.i, label %if.end177.i.if.end241.i_crit_edge, label %if.then231.i

if.end177.i.if.end241.i_crit_edge:                ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end241.i

if.then231.i:                                     ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr232.i = ashr i32 %sub28.i, 1
  %and234.i = and i32 %shr232.i, 254
  %129 = lshr i32 %shr232.i, 4
  %shl237.i = and i32 %129, 16
  %or239.i = or i32 %or211.i, %shl237.i
  %130 = ptrtoint ptr %horiz.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %or239.i, ptr %horiz.i, align 4
  br label %if.end241.i

if.end241.i:                                      ; preds = %if.then231.i, %if.end177.i.if.end241.i_crit_edge
  %and234.sink.i = phi i32 [ %and234.i, %if.then231.i ], [ 255, %if.end177.i.if.end241.i_crit_edge ]
  %131 = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 8
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %and234.sink.i, ptr %131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call.i)
  %cmp242.i = icmp slt i32 %call.i, 24
  %call..i = select i1 %cmp242.i, i32 %call.i, i32 32
  %Architecture.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 7
  %133 = ptrtoint ptr %Architecture.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %Architecture.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %134)
  %cmp247.i = icmp ugt i32 %134, 15
  br i1 %cmp247.i, label %if.then249.i, label %if.end241.i.if.end250.i_crit_edge

if.end241.i.if.end250.i_crit_edge:                ; preds = %if.end241.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end250.i

if.then249.i:                                     ; preds = %if.end241.i
  call void @__sanitizer_cov_trace_pc() #12
  %135 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  %CursorStart.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 8
  %138 = ptrtoint ptr %CursorStart.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %CursorStart.i, align 4
  %add.ptr.i = getelementptr i8, ptr %137, i32 %139
  %CURSOR.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 69
  %140 = ptrtoint ptr %CURSOR.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %add.ptr.i, ptr %CURSOR.i, align 8
  br label %if.end250.i

if.end250.i:                                      ; preds = %if.then249.i, %if.end241.i.if.end250.i_crit_edge
  %sync.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 24
  %141 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %sync.i, align 4
  %misc_output259.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 4
  %143 = ptrtoint ptr %misc_output259.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %misc_output259.i, align 4
  %145 = and i8 %144, -65
  %146 = trunc i32 %142 to i8
  %147 = shl i8 %146, 6
  %148 = and i8 %147, 64
  %149 = or i8 %148, %145
  %.sink.i = xor i8 %149, 64
  store i8 %.sink.i, ptr %misc_output259.i, align 4
  %150 = load i32, ptr %sync.i, align 4
  %151 = and i8 %.sink.i, 127
  %152 = trunc i32 %150 to i8
  %153 = shl i8 %152, 6
  %154 = and i8 %153, -128
  %155 = or i8 %154, %151
  %.sink7.i = xor i8 %155, -128
  store i8 %.sink7.i, ptr %misc_output259.i, align 4
  %156 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %xres_virtual.i, align 4
  %158 = ptrtoint ptr %var.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %var.i, align 4
  %yres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %160 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %yres_virtual.i, align 4
  %pixclock.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %162 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %pixclock.i, align 4
  %div285.i = udiv i32 1000000000, %163
  %164 = ptrtoint ptr %vmode.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %vmode.i, align 4
  tail call void @NVCalcStateExt(ptr noundef %56, ptr noundef %ModeReg.i132, i32 noundef %call..i, i32 noundef %157, i32 noundef %159, i32 noundef %161, i32 noundef %div285.i, i32 noundef %165) #10
  %PRAMDAC.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 75
  %166 = ptrtoint ptr %PRAMDAC.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %PRAMDAC.i, align 8
  %add.ptr288.i = getelementptr i8, ptr %167, i32 2120
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr288.i) #10, !srcloc !301
  %and290.i = and i32 %168, -1048321
  %scale.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 12
  %169 = ptrtoint ptr %scale.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %and290.i, ptr %scale.i, align 4
  %170 = ptrtoint ptr %FlatPanel.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %FlatPanel.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %171)
  %cmp292.i = icmp eq i32 %171, 1
  br i1 %cmp292.i, label %if.then294.i, label %if.end250.i.if.end318.i_crit_edge

if.end250.i.if.end318.i_crit_edge:                ; preds = %if.end250.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end318.i

if.then294.i:                                     ; preds = %if.end250.i
  %pixel.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 16
  %172 = ptrtoint ptr %pixel.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %pixel.i, align 4
  %or295.i = or i32 %173, 128
  store i32 %or295.i, ptr %pixel.i, align 4
  %fpScaler.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 33
  %174 = ptrtoint ptr %fpScaler.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %fpScaler.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool296.not.i = icmp eq i32 %175, 0
  br i1 %tobool296.not.i, label %if.then294.i.if.then306.i_crit_edge, label %lor.lhs.false.i

if.then294.i.if.then306.i_crit_edge:              ; preds = %if.then294.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then306.i

lor.lhs.false.i:                                  ; preds = %if.then294.i
  %fpWidth.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 34
  %176 = ptrtoint ptr %fpWidth.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %fpWidth.i, align 8
  %178 = ptrtoint ptr %var.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %var.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %177, i32 %179)
  %cmp299.not.i = icmp ugt i32 %177, %179
  br i1 %cmp299.not.i, label %lor.lhs.false301.i, label %lor.lhs.false.i.if.then306.i_crit_edge

lor.lhs.false.i.if.then306.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then306.i

lor.lhs.false301.i:                               ; preds = %lor.lhs.false.i
  %fpHeight.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 35
  %180 = ptrtoint ptr %fpHeight.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %fpHeight.i, align 4
  %182 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %yres.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %181, i32 %183)
  %cmp304.not.i = icmp ugt i32 %181, %183
  br i1 %cmp304.not.i, label %lor.lhs.false301.i.if.end309.i_crit_edge, label %lor.lhs.false301.i.if.then306.i_crit_edge

lor.lhs.false301.i.if.then306.i_crit_edge:        ; preds = %lor.lhs.false301.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then306.i

lor.lhs.false301.i.if.end309.i_crit_edge:         ; preds = %lor.lhs.false301.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end309.i

if.then306.i:                                     ; preds = %lor.lhs.false301.i.if.then306.i_crit_edge, %lor.lhs.false.i.if.then306.i_crit_edge, %if.then294.i.if.then306.i_crit_edge
  %or308.i = or i32 %and290.i, 256
  %184 = ptrtoint ptr %scale.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %or308.i, ptr %scale.i, align 4
  br label %if.end309.i

if.end309.i:                                      ; preds = %if.then306.i, %lor.lhs.false301.i.if.end309.i_crit_edge
  %crtcSync_read.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 41
  %185 = ptrtoint ptr %crtcSync_read.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %crtcSync_read.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool310.not.i = icmp eq i32 %186, 0
  br i1 %tobool310.not.i, label %if.then311.i, label %if.end309.i.if.end316.i_crit_edge

if.end309.i.if.end316.i_crit_edge:                ; preds = %if.end309.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end316.i

if.then311.i:                                     ; preds = %if.end309.i
  call void @__sanitizer_cov_trace_pc() #12
  %187 = ptrtoint ptr %PRAMDAC.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %PRAMDAC.i, align 8
  %add.ptr313.i = getelementptr i8, ptr %188, i32 2088
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr313.i) #10, !srcloc !301
  %crtcSync.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 39
  %190 = ptrtoint ptr %crtcSync.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %crtcSync.i, align 4
  %191 = ptrtoint ptr %crtcSync_read.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 1, ptr %crtcSync_read.i, align 4
  br label %if.end316.i

if.end316.i:                                      ; preds = %if.then311.i, %if.end309.i.if.end316.i_crit_edge
  %paneltweak.i.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 37
  %192 = ptrtoint ptr %paneltweak.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %paneltweak.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool.not.i.i = icmp eq i32 %193, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end316.i.nvidia_panel_tweak.exit.i_crit_edge

if.end316.i.nvidia_panel_tweak.exit.i_crit_edge:  ; preds = %if.end316.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvidia_panel_tweak.exit.i

if.else.i.i:                                      ; preds = %if.end316.i
  %Chipset.i.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 9
  %194 = ptrtoint ptr %Chipset.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %Chipset.i.i, align 8
  %and.i.i = and i32 %195, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 808, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 808
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.else.i.i.if.end.i.i_crit_edge

if.else.i.i.if.end.i.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %bpp.i.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 5
  %196 = ptrtoint ptr %bpp.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %bpp.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %197)
  %cmp2.i.i = icmp eq i32 %197, 32
  %spec.select.i.i = sext i1 %cmp2.i.i to i32
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %if.else.i.i.if.end.i.i_crit_edge
  %tweak.0.i.i = phi i32 [ 0, %if.else.i.i.if.end.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %and5.i.i = and i32 %195, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 784, i32 %and5.i.i)
  %cmp6.i.i = icmp eq i32 %and5.i.i, 784
  %spec.select13.i.i = select i1 %cmp6.i.i, i32 1, i32 %tweak.0.i.i
  br label %nvidia_panel_tweak.exit.i

nvidia_panel_tweak.exit.i:                        ; preds = %if.end.i.i, %if.end316.i.nvidia_panel_tweak.exit.i_crit_edge
  %tweak.1.i.i = phi i32 [ %193, %if.end316.i.nvidia_panel_tweak.exit.i_crit_edge ], [ %spec.select13.i.i, %if.end.i.i ]
  %PanelTweak.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 36
  %198 = ptrtoint ptr %PanelTweak.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %tweak.1.i.i, ptr %PanelTweak.i, align 8
  br label %if.end318.i

if.end318.i:                                      ; preds = %nvidia_panel_tweak.exit.i, %if.end250.i.if.end318.i_crit_edge
  %pll.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 20
  %199 = ptrtoint ptr %pll.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %pll.i, align 4
  %vpll.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 22
  %201 = ptrtoint ptr %vpll.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %vpll.i, align 4
  %vpll2.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 23
  %202 = ptrtoint ptr %vpll2.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %200, ptr %vpll2.i, align 4
  %pllB.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 21
  %203 = ptrtoint ptr %pllB.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %pllB.i, align 4
  %vpllB.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 24
  %205 = ptrtoint ptr %vpllB.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %vpllB.i, align 4
  %vpll2B.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 25
  %206 = ptrtoint ptr %vpll2B.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %204, ptr %vpll2B.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  tail call void @arm_heavy_mb() #10
  %PCIO.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 71
  %207 = ptrtoint ptr %PCIO.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %PCIO.i, align 8
  %add.ptr321.i = getelementptr i8, ptr %208, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr321.i, i8 28) #10, !srcloc !304
  %209 = ptrtoint ptr %PCIO.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %PCIO.i, align 8
  %add.ptr323.i = getelementptr i8, ptr %210, i32 981
  %211 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr323.i) #10, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  %212 = and i8 %211, -33
  %and327.i = zext i8 %212 to i32
  %fifo.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 15
  %213 = ptrtoint ptr %fifo.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %and327.i, ptr %fifo.i, align 4
  %CRTCnumber.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 29
  %214 = ptrtoint ptr %CRTCnumber.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %CRTCnumber.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %tobool328.not.i = icmp eq i32 %215, 0
  br i1 %tobool328.not.i, label %if.else348.i, label %if.then329.i

if.then329.i:                                     ; preds = %if.end318.i
  %PCRTC0.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 58
  %216 = ptrtoint ptr %PCRTC0.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %PCRTC0.i, align 4
  %add.ptr330.i = getelementptr i8, ptr %217, i32 2144
  %218 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr330.i) #10, !srcloc !301
  %and332.i = and i32 %218, -4097
  %head.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 29
  %219 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %and332.i, ptr %head.i, align 4
  %220 = ptrtoint ptr %PCRTC0.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %PCRTC0.i, align 4
  %add.ptr334.i = getelementptr i8, ptr %221, i32 10336
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr334.i) #10, !srcloc !301
  %or336.i = or i32 %222, 4096
  %head2.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 30
  %223 = ptrtoint ptr %head2.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %or336.i, ptr %head2.i, align 4
  %crtcOwner.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 28
  %224 = ptrtoint ptr %crtcOwner.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 3, ptr %crtcOwner.i, align 4
  %pllsel.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 26
  %225 = ptrtoint ptr %pllsel.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %pllsel.i, align 4
  %or337.i = or i32 %226, 536872960
  store i32 %or337.i, ptr %pllsel.i, align 4
  %PRAMDAC0.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 60
  %227 = ptrtoint ptr %PRAMDAC0.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %PRAMDAC0.i, align 4
  %add.ptr338.i = getelementptr i8, ptr %228, i32 1288
  %229 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr338.i) #10, !srcloc !301
  %230 = ptrtoint ptr %vpll.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %229, ptr %vpll.i, align 4
  %twoStagePLL.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 32
  %231 = ptrtoint ptr %twoStagePLL.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %twoStagePLL.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool341.not.i = icmp eq i32 %232, 0
  br i1 %tobool341.not.i, label %if.then329.i.if.end375.i_crit_edge, label %if.then342.i

if.then329.i.if.end375.i_crit_edge:               ; preds = %if.then329.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end375.i

if.then342.i:                                     ; preds = %if.then329.i
  call void @__sanitizer_cov_trace_pc() #12
  %233 = ptrtoint ptr %PRAMDAC0.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %PRAMDAC0.i, align 4
  %add.ptr344.i = getelementptr i8, ptr %234, i32 1400
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr344.i) #10, !srcloc !301
  %236 = ptrtoint ptr %vpllB.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %235, ptr %vpllB.i, align 4
  br label %if.end375.i

if.else348.i:                                     ; preds = %if.end318.i
  %twoHeads.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 31
  %237 = ptrtoint ptr %twoHeads.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %twoHeads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool349.not.i = icmp eq i32 %238, 0
  br i1 %tobool349.not.i, label %if.else348.i.if.end375.i_crit_edge, label %if.then350.i

if.else348.i.if.end375.i_crit_edge:               ; preds = %if.else348.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end375.i

if.then350.i:                                     ; preds = %if.else348.i
  %PCRTC0351.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 58
  %239 = ptrtoint ptr %PCRTC0351.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %PCRTC0351.i, align 4
  %add.ptr352.i = getelementptr i8, ptr %240, i32 2144
  %241 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr352.i) #10, !srcloc !301
  %or354.i = or i32 %241, 4096
  %head355.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 29
  %242 = ptrtoint ptr %head355.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %or354.i, ptr %head355.i, align 4
  %243 = ptrtoint ptr %PCRTC0351.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %PCRTC0351.i, align 4
  %add.ptr357.i = getelementptr i8, ptr %244, i32 10336
  %245 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr357.i) #10, !srcloc !301
  %and359.i = and i32 %245, -4097
  %head2360.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 30
  %246 = ptrtoint ptr %head2360.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %and359.i, ptr %head2360.i, align 4
  %crtcOwner361.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 28
  %247 = ptrtoint ptr %crtcOwner361.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 0, ptr %crtcOwner361.i, align 4
  %PRAMDAC0362.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 60
  %248 = ptrtoint ptr %PRAMDAC0362.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %PRAMDAC0362.i, align 4
  %add.ptr363.i = getelementptr i8, ptr %249, i32 1312
  %250 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr363.i) #10, !srcloc !301
  %251 = ptrtoint ptr %vpll2.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %250, ptr %vpll2.i, align 4
  %twoStagePLL366.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 32
  %252 = ptrtoint ptr %twoStagePLL366.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %twoStagePLL366.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %tobool367.not.i = icmp eq i32 %253, 0
  br i1 %tobool367.not.i, label %if.then350.i.if.end375.i_crit_edge, label %if.then368.i

if.then350.i.if.end375.i_crit_edge:               ; preds = %if.then350.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end375.i

if.then368.i:                                     ; preds = %if.then350.i
  call void @__sanitizer_cov_trace_pc() #12
  %254 = ptrtoint ptr %PRAMDAC0362.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %PRAMDAC0362.i, align 4
  %add.ptr370.i = getelementptr i8, ptr %255, i32 1404
  %256 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr370.i) #10, !srcloc !301
  %257 = ptrtoint ptr %vpll2B.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %256, ptr %vpll2B.i, align 4
  br label %if.end375.i

if.end375.i:                                      ; preds = %if.then368.i, %if.then350.i.if.end375.i_crit_edge, %if.else348.i.if.end375.i_crit_edge, %if.then342.i, %if.then329.i.if.end375.i_crit_edge
  %cursorConfig.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 32
  %258 = ptrtoint ptr %cursorConfig.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 256, ptr %cursorConfig.i, align 4
  %259 = ptrtoint ptr %vmode.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %vmode.i, align 4
  %and378.i = and i32 %260, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and378.i)
  %tobool379.not.i = icmp eq i32 %and378.i, 0
  %spec.store.select.i = select i1 %tobool379.not.i, i32 256, i32 272
  %alphaCursor.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 30
  %261 = ptrtoint ptr %alphaCursor.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %alphaCursor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %262)
  %tobool384.not.i = icmp eq i32 %262, 0
  br i1 %tobool384.not.i, label %if.else397.i, label %if.then385.i

if.then385.i:                                     ; preds = %if.end375.i
  call void @__sanitizer_cov_trace_pc() #12
  %Chipset.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 9
  %263 = ptrtoint ptr %Chipset.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %Chipset.i, align 8
  %and386.i = and i32 %264, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %and386.i)
  %cmp387.not.i = icmp eq i32 %and386.i, 272
  %storemerge.v.i = select i1 %cmp387.not.i, i32 335613952, i32 67178496
  %storemerge.i = or i32 %storemerge.v.i, %spec.store.select.i
  %265 = ptrtoint ptr %cursorConfig.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %storemerge.i, ptr %cursorConfig.i, align 4
  %general.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 27
  %266 = ptrtoint ptr %general.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %general.i, align 4
  %or396.i = or i32 %267, 536870912
  store i32 %or396.i, ptr %general.i, align 4
  br label %if.end400.i

if.else397.i:                                     ; preds = %if.end375.i
  call void @__sanitizer_cov_trace_pc() #12
  %or399.i = or i32 %spec.store.select.i, 33554432
  %268 = ptrtoint ptr %cursorConfig.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %or399.i, ptr %cursorConfig.i, align 4
  br label %if.end400.i

if.end400.i:                                      ; preds = %if.else397.i, %if.then385.i
  %twoHeads401.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 31
  %269 = ptrtoint ptr %twoHeads401.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %twoHeads401.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %270)
  %tobool402.not.i = icmp eq i32 %270, 0
  br i1 %tobool402.not.i, label %if.end400.i.nvidia_calc_regs.exit_crit_edge, label %if.then403.i

if.end400.i.nvidia_calc_regs.exit_crit_edge:      ; preds = %if.end400.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvidia_calc_regs.exit

if.then403.i:                                     ; preds = %if.end400.i
  %Chipset404.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 9
  %271 = ptrtoint ptr %Chipset404.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %Chipset404.i, align 8
  %and405.i = and i32 %272, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %and405.i)
  %cmp406.i = icmp eq i32 %and405.i, 272
  %273 = ptrtoint ptr %PRAMDAC.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %PRAMDAC.i, align 8
  br i1 %cmp406.i, label %if.then408.i, label %if.else418.i

if.then408.i:                                     ; preds = %if.then403.i
  %add.ptr410.i = getelementptr i8, ptr %274, i32 1320
  %275 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr410.i) #10, !srcloc !301
  %and412.i = and i32 %275, -65537
  %dither.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 13
  %276 = ptrtoint ptr %dither.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %and412.i, ptr %dither.i, align 4
  %FPDither.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 27
  %277 = ptrtoint ptr %FPDither.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %FPDither.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %278)
  %tobool413.not.i = icmp eq i32 %278, 0
  br i1 %tobool413.not.i, label %if.then408.i.nvidia_calc_regs.exit_crit_edge, label %if.then414.i

if.then408.i.nvidia_calc_regs.exit_crit_edge:     ; preds = %if.then408.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvidia_calc_regs.exit

if.then414.i:                                     ; preds = %if.then408.i
  call void @__sanitizer_cov_trace_pc() #12
  %or416.i = or i32 %275, 65536
  %279 = ptrtoint ptr %dither.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %or416.i, ptr %dither.i, align 4
  br label %nvidia_calc_regs.exit

if.else418.i:                                     ; preds = %if.then403.i
  %add.ptr420.i = getelementptr i8, ptr %274, i32 2108
  %280 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr420.i) #10, !srcloc !301
  %and422.i = and i32 %280, -2
  %dither423.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 13
  %281 = ptrtoint ptr %dither423.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %and422.i, ptr %dither423.i, align 4
  %FPDither424.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 27
  %282 = ptrtoint ptr %FPDither424.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %FPDither424.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %283)
  %tobool425.not.i = icmp eq i32 %283, 0
  br i1 %tobool425.not.i, label %if.else418.i.nvidia_calc_regs.exit_crit_edge, label %if.then426.i

if.else418.i.nvidia_calc_regs.exit_crit_edge:     ; preds = %if.else418.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvidia_calc_regs.exit

if.then426.i:                                     ; preds = %if.else418.i
  call void @__sanitizer_cov_trace_pc() #12
  %or428.i = or i32 %280, 1
  %284 = ptrtoint ptr %dither423.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %or428.i, ptr %dither423.i, align 4
  br label %nvidia_calc_regs.exit

nvidia_calc_regs.exit:                            ; preds = %if.then426.i, %if.else418.i.nvidia_calc_regs.exit_crit_edge, %if.then414.i, %if.then408.i.nvidia_calc_regs.exit_crit_edge, %if.end400.i.nvidia_calc_regs.exit_crit_edge
  %timingH.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 36
  %285 = ptrtoint ptr %timingH.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 0, ptr %timingH.i, align 4
  %timingV.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 37
  %286 = ptrtoint ptr %timingV.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 0, ptr %timingV.i, align 4
  %287 = ptrtoint ptr %var.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %var.i, align 4
  %displayV.i = getelementptr inbounds %struct.nvidia_par, ptr %56, i32 0, i32 1, i32 38
  %289 = ptrtoint ptr %displayV.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %288, ptr %displayV.i, align 4
  tail call void @NVLockUnlock(ptr noundef %1, i32 noundef 0) #10
  %twoHeads34 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 31
  %290 = ptrtoint ptr %twoHeads34 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %twoHeads34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %291)
  %tobool35.not = icmp eq i32 %291, 0
  br i1 %tobool35.not, label %nvidia_calc_regs.exit.if.end46_crit_edge, label %do.body37

nvidia_calc_regs.exit.if.end46_crit_edge:         ; preds = %nvidia_calc_regs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

do.body37:                                        ; preds = %nvidia_calc_regs.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !307
  tail call void @arm_heavy_mb() #10
  %PCIO = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 71
  %292 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %PCIO, align 8
  %add.ptr40 = getelementptr i8, ptr %293, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr40, i8 68) #10, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !308
  tail call void @arm_heavy_mb() #10
  %crtcOwner = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 1, i32 28
  %294 = ptrtoint ptr %crtcOwner to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %crtcOwner, align 4
  %conv = trunc i32 %295 to i8
  %296 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %PCIO, align 8
  %add.ptr45 = getelementptr i8, ptr %297, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr45, i8 %conv) #10, !srcloc !304
  tail call void @NVLockUnlock(ptr noundef %1, i32 noundef 0) #10
  br label %if.end46

if.end46:                                         ; preds = %do.body37, %nvidia_calc_regs.exit.if.end46_crit_edge
  %call2.i = tail call zeroext i8 @NVReadSeq(ptr noundef %1, i8 noundef zeroext 1) #10
  tail call void @NVWriteSeq(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 1) #10
  %298 = or i8 %call2.i, 32
  tail call void @NVWriteSeq(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %298) #10
  %ModeReg47 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 1
  tail call fastcc void @nvidia_write_regs(ptr noundef %1, ptr noundef %ModeReg47)
  tail call void @NVSetStartAddress(ptr noundef %1, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !309
  tail call void @arm_heavy_mb() #10
  %PCIO52 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 71
  %299 = ptrtoint ptr %PCIO52 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %PCIO52, align 8
  %add.ptr53 = getelementptr i8, ptr %300, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr53, i8 70) #10, !srcloc !304
  %301 = ptrtoint ptr %PCIO52 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %PCIO52, align 8
  %add.ptr55 = getelementptr i8, ptr %302, i32 981
  %303 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr55) #10, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !310
  %304 = or i8 %303, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  tail call void @arm_heavy_mb() #10
  %305 = ptrtoint ptr %PCIO52 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %PCIO52, align 8
  %add.ptr65 = getelementptr i8, ptr %306, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr65, i8 %304) #10, !srcloc !304
  %307 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %xres_virtual.i, align 4
  %309 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %bits_per_pixel, align 4
  %mul = mul i32 %310, %308
  %shr = lshr i32 %mul, 3
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %311 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %shr, ptr %line_length, align 4
  %accel_flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 16
  %312 = ptrtoint ptr %accel_flags to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %accel_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %313)
  %tobool71.not = icmp eq i32 %313, 0
  br i1 %tobool71.not, label %if.else76, label %if.then72

if.then72:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  store ptr @nvidiafb_imageblit, ptr getelementptr inbounds (%struct.fb_ops, ptr @nvidia_fb_ops, i32 0, i32 13), align 4
  store ptr @nvidiafb_fillrect, ptr getelementptr inbounds (%struct.fb_ops, ptr @nvidia_fb_ops, i32 0, i32 11), align 4
  store ptr @nvidiafb_copyarea, ptr getelementptr inbounds (%struct.fb_ops, ptr @nvidia_fb_ops, i32 0, i32 12), align 4
  store ptr @nvidiafb_sync, ptr getelementptr inbounds (%struct.fb_ops, ptr @nvidia_fb_ops, i32 0, i32 15), align 4
  %scan_align = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 4
  %314 = ptrtoint ptr %scan_align to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 4, ptr %scan_align, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %315 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %flags, align 4
  %and73 = and i32 %316, -131
  %or75 = or i32 %and73, 128
  store i32 %or75, ptr %flags, align 4
  tail call void @NVResetGraphics(ptr noundef %info) #10
  br label %if.end83

if.else76:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  store ptr @cfb_imageblit, ptr getelementptr inbounds (%struct.fb_ops, ptr @nvidia_fb_ops, i32 0, i32 13), align 4
  store ptr @cfb_fillrect, ptr getelementptr inbounds (%struct.fb_ops, ptr @nvidia_fb_ops, i32 0, i32 11), align 4
  store ptr @cfb_copyarea, ptr getelementptr inbounds (%struct.fb_ops, ptr @nvidia_fb_ops, i32 0, i32 12), align 4
  store ptr null, ptr getelementptr inbounds (%struct.fb_ops, ptr @nvidia_fb_ops, i32 0, i32 15), align 4
  %scan_align78 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 4
  %317 = ptrtoint ptr %scan_align78 to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 1, ptr %scan_align78, align 4
  %flags79 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %318 = ptrtoint ptr %flags79 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %flags79, align 4
  %or80 = and i32 %319, -131
  %and82 = or i32 %or80, 2
  store i32 %and82, ptr %flags79, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.else76, %if.then72
  %cursor_reset = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 23
  %320 = ptrtoint ptr %cursor_reset to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 1, ptr %cursor_reset, align 4
  %call2.i133 = tail call zeroext i8 @NVReadSeq(ptr noundef %1, i8 noundef zeroext 1) #10
  %321 = and i8 %call2.i133, -33
  tail call void @NVWriteSeq(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %321) #10
  tail call void @NVWriteSeq(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 3) #10
  tail call void @NVLockUnlock(ptr noundef %1, i32 noundef 0) #10
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.72) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvidiafb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.80) #13
  %green2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %regno.highbits = lshr i32 %regno, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %regno.highbits)
  %cmp.not = icmp eq i32 %regno.highbits, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %grayscale = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 7
  %4 = ptrtoint ptr %grayscale to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %grayscale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mul = mul i32 %red, 77
  %mul5 = mul i32 %green, 151
  %add = add i32 %mul5, %mul
  %mul6 = mul i32 %blue, 28
  %add7 = add i32 %add, %mul6
  %shr = lshr i32 %add7, 8
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %blue.addr.0 = phi i32 [ %shr, %if.then4 ], [ %blue, %if.end.if.end8_crit_edge ]
  %green.addr.0 = phi i32 [ %shr, %if.then4 ], [ %green, %if.end.if.end8_crit_edge ]
  %red.addr.0 = phi i32 [ %shr, %if.then4 ], [ %red, %if.end.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp9 = icmp ult i32 %regno, 16
  br i1 %cmp9, label %land.lhs.true, label %if.end8.if.end24_crit_edge

if.end8.if.end24_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end8
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %6 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %visual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp10 = icmp eq i32 %7, 4
  br i1 %cmp10, label %if.then11, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %red13 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %8 = ptrtoint ptr %red13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %red13, align 4
  %shl14 = shl i32 %regno, %9
  %10 = ptrtoint ptr %green2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %green2, align 4
  %shl18 = shl i32 %regno, %11
  %or = or i32 %shl18, %shl14
  %blue20 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %12 = ptrtoint ptr %blue20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blue20, align 4
  %shl22 = shl i32 %regno, %13
  %or23 = or i32 %or, %shl22
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %14 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pseudo_palette, align 4
  %arrayidx = getelementptr i32, ptr %15, i32 %regno
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or23, ptr %arrayidx, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then11, %land.lhs.true.if.end24_crit_edge, %if.end8.if.end24_crit_edge
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %17 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bits_per_pixel, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %18, label %if.end24.do.end95_crit_edge [
    i32 8, label %sw.bb
    i32 16, label %sw.bb32
    i32 32, label %sw.bb85
  ]

if.end24.do.end95_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end95

sw.bb:                                            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i32 %regno to i8
  %shr26 = lshr i32 %red.addr.0, 8
  %conv27 = trunc i32 %shr26 to i8
  %shr28 = lshr i32 %green.addr.0, 8
  %conv29 = trunc i32 %shr28 to i8
  %shr30 = lshr i32 %blue.addr.0, 8
  %conv31 = trunc i32 %shr30 to i8
  tail call fastcc void @nvidia_write_clut(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %conv27, i8 noundef zeroext %conv29, i8 noundef zeroext %conv31)
  br label %do.end95

sw.bb32:                                          ; preds = %if.end24
  %20 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %21)
  %cmp36 = icmp eq i32 %21, 5
  br i1 %cmp36, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #12
  %mul41 = shl i32 %regno, 3
  %shr44 = lshr i32 %red.addr.0, 8
  %conv45 = trunc i32 %shr44 to i8
  %shr46 = lshr i32 %green.addr.0, 8
  %conv47 = trunc i32 %shr46 to i8
  %shr48 = lshr i32 %blue.addr.0, 8
  %conv49 = trunc i32 %shr48 to i8
  %conv43 = trunc i32 %mul41 to i8
  tail call void @NVWriteDacMask(ptr noundef %1, i8 noundef zeroext -1) #10
  tail call void @NVWriteDacWriteAddr(ptr noundef %1, i8 noundef zeroext %conv43) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv45) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv47) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv49) #10
  %22 = trunc i32 %mul41 to i8
  %conv43.1 = or i8 %22, 1
  tail call void @NVWriteDacMask(ptr noundef %1, i8 noundef zeroext -1) #10
  tail call void @NVWriteDacWriteAddr(ptr noundef %1, i8 noundef zeroext %conv43.1) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv45) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv47) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv49) #10
  %23 = trunc i32 %mul41 to i8
  %conv43.2 = or i8 %23, 2
  tail call void @NVWriteDacMask(ptr noundef %1, i8 noundef zeroext -1) #10
  tail call void @NVWriteDacWriteAddr(ptr noundef %1, i8 noundef zeroext %conv43.2) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv45) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv47) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv49) #10
  %24 = trunc i32 %mul41 to i8
  %conv43.3 = or i8 %24, 3
  tail call void @NVWriteDacMask(ptr noundef %1, i8 noundef zeroext -1) #10
  tail call void @NVWriteDacWriteAddr(ptr noundef %1, i8 noundef zeroext %conv43.3) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv45) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv47) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv49) #10
  %25 = trunc i32 %mul41 to i8
  %conv43.4 = or i8 %25, 4
  tail call void @NVWriteDacMask(ptr noundef %1, i8 noundef zeroext -1) #10
  tail call void @NVWriteDacWriteAddr(ptr noundef %1, i8 noundef zeroext %conv43.4) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv45) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv47) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv49) #10
  %26 = trunc i32 %mul41 to i8
  %conv43.5 = or i8 %26, 5
  tail call void @NVWriteDacMask(ptr noundef %1, i8 noundef zeroext -1) #10
  tail call void @NVWriteDacWriteAddr(ptr noundef %1, i8 noundef zeroext %conv43.5) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv45) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv47) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv49) #10
  %27 = trunc i32 %mul41 to i8
  %conv43.6 = or i8 %27, 6
  tail call void @NVWriteDacMask(ptr noundef %1, i8 noundef zeroext -1) #10
  tail call void @NVWriteDacWriteAddr(ptr noundef %1, i8 noundef zeroext %conv43.6) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv45) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv47) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv49) #10
  %28 = trunc i32 %mul41 to i8
  %conv43.7 = or i8 %28, 7
  tail call void @NVWriteDacMask(ptr noundef %1, i8 noundef zeroext -1) #10
  tail call void @NVWriteDacWriteAddr(ptr noundef %1, i8 noundef zeroext %conv43.7) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv45) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv47) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv49) #10
  br label %do.end95

if.else:                                          ; preds = %sw.bb32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %r) #10
  %29 = ptrtoint ptr %r to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %r, align 1, !annotation !299
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %g) #10
  %30 = ptrtoint ptr %g to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %g, align 1, !annotation !299
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b) #10
  %31 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %b, align 1, !annotation !299
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %regno)
  %cmp50 = icmp ult i32 %regno, 32
  br i1 %cmp50, label %for.cond53.preheader, label %if.else.if.end69_crit_edge

if.else.if.end69_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = lshr i32 %green.addr.0, 8
  %.pre149 = trunc i32 %.pre to i8
  br label %if.end69

for.cond53.preheader:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %mul57 = shl nuw nsw i32 %regno, 3
  %shr60 = lshr i32 %red.addr.0, 8
  %conv61 = trunc i32 %shr60 to i8
  %shr62 = lshr i32 %green.addr.0, 8
  %conv63 = trunc i32 %shr62 to i8
  %shr64 = lshr i32 %blue.addr.0, 8
  %conv65 = trunc i32 %shr64 to i8
  %conv59 = trunc i32 %mul57 to i8
  tail call void @NVWriteDacMask(ptr noundef %1, i8 noundef zeroext -1) #10
  tail call void @NVWriteDacWriteAddr(ptr noundef %1, i8 noundef zeroext %conv59) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv61) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv63) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv65) #10
  %32 = trunc i32 %mul57 to i8
  %conv59.1 = or i8 %32, 1
  tail call void @NVWriteDacMask(ptr noundef %1, i8 noundef zeroext -1) #10
  tail call void @NVWriteDacWriteAddr(ptr noundef %1, i8 noundef zeroext %conv59.1) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv61) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv63) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv65) #10
  %33 = trunc i32 %mul57 to i8
  %conv59.2 = or i8 %33, 2
  tail call void @NVWriteDacMask(ptr noundef %1, i8 noundef zeroext -1) #10
  tail call void @NVWriteDacWriteAddr(ptr noundef %1, i8 noundef zeroext %conv59.2) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv61) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv63) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv65) #10
  %34 = trunc i32 %mul57 to i8
  %conv59.3 = or i8 %34, 3
  tail call void @NVWriteDacMask(ptr noundef %1, i8 noundef zeroext -1) #10
  tail call void @NVWriteDacWriteAddr(ptr noundef %1, i8 noundef zeroext %conv59.3) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv61) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv63) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv65) #10
  %35 = trunc i32 %mul57 to i8
  %conv59.4 = or i8 %35, 4
  tail call void @NVWriteDacMask(ptr noundef %1, i8 noundef zeroext -1) #10
  tail call void @NVWriteDacWriteAddr(ptr noundef %1, i8 noundef zeroext %conv59.4) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv61) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv63) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv65) #10
  %36 = trunc i32 %mul57 to i8
  %conv59.5 = or i8 %36, 5
  tail call void @NVWriteDacMask(ptr noundef %1, i8 noundef zeroext -1) #10
  tail call void @NVWriteDacWriteAddr(ptr noundef %1, i8 noundef zeroext %conv59.5) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv61) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv63) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv65) #10
  %37 = trunc i32 %mul57 to i8
  %conv59.6 = or i8 %37, 6
  tail call void @NVWriteDacMask(ptr noundef %1, i8 noundef zeroext -1) #10
  tail call void @NVWriteDacWriteAddr(ptr noundef %1, i8 noundef zeroext %conv59.6) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv61) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv63) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv65) #10
  %38 = trunc i32 %mul57 to i8
  %conv59.7 = or i8 %38, 7
  tail call void @NVWriteDacMask(ptr noundef %1, i8 noundef zeroext -1) #10
  tail call void @NVWriteDacWriteAddr(ptr noundef %1, i8 noundef zeroext %conv59.7) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv61) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv63) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv65) #10
  br label %if.end69

if.end69:                                         ; preds = %for.cond53.preheader, %if.else.if.end69_crit_edge
  %conv80.pre-phi = phi i8 [ %.pre149, %if.else.if.end69_crit_edge ], [ %conv63, %for.cond53.preheader ]
  %mul70 = shl i32 %regno, 2
  %conv71 = trunc i32 %mul70 to i8
  call fastcc void @nvidia_read_clut(ptr noundef %1, i8 noundef zeroext %conv71, ptr noundef nonnull %r, ptr noundef nonnull %g, ptr noundef nonnull %b)
  %39 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %r, align 1
  %41 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %b, align 1
  tail call void @NVWriteDacMask(ptr noundef %1, i8 noundef zeroext -1) #10
  tail call void @NVWriteDacWriteAddr(ptr noundef %1, i8 noundef zeroext %conv71) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %40) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv80.pre-phi) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %42) #10
  %43 = trunc i32 %mul70 to i8
  %conv78.1 = or i8 %43, 1
  tail call void @NVWriteDacMask(ptr noundef %1, i8 noundef zeroext -1) #10
  tail call void @NVWriteDacWriteAddr(ptr noundef %1, i8 noundef zeroext %conv78.1) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %40) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv80.pre-phi) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %42) #10
  %44 = trunc i32 %mul70 to i8
  %conv78.2 = or i8 %44, 2
  tail call void @NVWriteDacMask(ptr noundef %1, i8 noundef zeroext -1) #10
  tail call void @NVWriteDacWriteAddr(ptr noundef %1, i8 noundef zeroext %conv78.2) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %40) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv80.pre-phi) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %42) #10
  %45 = trunc i32 %mul70 to i8
  %conv78.3 = or i8 %45, 3
  tail call void @NVWriteDacMask(ptr noundef %1, i8 noundef zeroext -1) #10
  tail call void @NVWriteDacWriteAddr(ptr noundef %1, i8 noundef zeroext %conv78.3) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %40) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %conv80.pre-phi) #10
  tail call void @NVWriteDacData(ptr noundef %1, i8 noundef zeroext %42) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %g) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r) #10
  br label %do.end95

sw.bb85:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %conv86 = trunc i32 %regno to i8
  %shr87 = lshr i32 %red.addr.0, 8
  %conv88 = trunc i32 %shr87 to i8
  %shr89 = lshr i32 %green.addr.0, 8
  %conv90 = trunc i32 %shr89 to i8
  %shr91 = lshr i32 %blue.addr.0, 8
  %conv92 = trunc i32 %shr91 to i8
  tail call fastcc void @nvidia_write_clut(ptr noundef %1, i8 noundef zeroext %conv86, i8 noundef zeroext %conv88, i8 noundef zeroext %conv90, i8 noundef zeroext %conv92)
  br label %do.end95

do.end95:                                         ; preds = %sw.bb85, %if.end69, %for.cond.preheader, %sw.bb, %if.end24.do.end95_crit_edge
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.80) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end95, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end95 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvidiafb_blank(i32 noundef %blank, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %call = tail call zeroext i8 @NVReadSeq(ptr noundef %1, i8 noundef zeroext 1) #10
  %call3 = tail call zeroext i8 @NVReadCrtc(ptr noundef %1, i8 noundef zeroext 26) #10
  %2 = and i8 %call3, 63
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.83) #13
  %3 = zext i32 %blank to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %blank, label %entry.sw.epilog_crit_edge [
    i32 4, label %sw.bb19
    i32 3, label %sw.bb15
    i32 2, label %sw.bb11
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = or i8 %2, -128
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = or i8 %2, 64
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = or i8 %call3, -64
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb15, %sw.bb11, %entry.sw.epilog_crit_edge
  %vesa.0 = phi i8 [ %2, %entry.sw.epilog_crit_edge ], [ %4, %sw.bb11 ], [ %5, %sw.bb15 ], [ %6, %sw.bb19 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blank)
  %tobool.not = icmp eq i32 %blank, 0
  %7 = and i8 %call, -33
  %masksel = select i1 %tobool.not, i8 0, i8 32
  %spec.select = or i8 %7, %masksel
  tail call void @NVWriteSeq(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %spec.select) #10
  tail call void @NVWriteCrtc(ptr noundef %1, i8 noundef zeroext 26, i8 noundef zeroext %vesa.0) #10
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.83) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvidiafb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %2 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %yoffset, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %4 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line_length, align 4
  %mul = mul i32 %5, %3
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %6 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xoffset, align 4
  %add = add i32 %mul, %7
  tail call void @NVSetStartAddress(ptr noundef %1, i32 noundef %add) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvidiafb_fillrect(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvidiafb_copyarea(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvidiafb_imageblit(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvidiafb_cursor(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %cursor) #0 align 64 {
entry:
  %data = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %data) #10
  %2 = call ptr @memset(ptr %data, i32 255, i32 128)
  %3 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cursor, align 4
  %conv = zext i16 %4 to i32
  %image = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5
  %width = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 2
  %5 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %6)
  %cmp = icmp ugt i32 %6, 32
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %height = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 3
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %8)
  %cmp5 = icmp ugt i32 %8, 32
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @NVShowHideCursor(ptr noundef %1, i32 noundef 0) #10
  %cursor_reset = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 23
  %9 = ptrtoint ptr %cursor_reset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cursor_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end9, label %if.end9.thread

if.end9.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %cursor_reset to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cursor_reset, align 4
  br label %if.then11

if.end9:                                          ; preds = %if.end
  %and = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end9.if.end12_crit_edge, label %if.end9.if.then11_crit_edge

if.end9.if.then11_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then11:                                        ; preds = %if.end9.if.then11_crit_edge, %if.end9.thread
  %set.0188 = phi i32 [ 255, %if.end9.thread ], [ %conv, %if.end9.if.then11_crit_edge ]
  %CURSOR = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 69
  %12 = ptrtoint ptr %CURSOR to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %CURSOR, align 8
  tail call void @mmioset(ptr noundef %13, i32 noundef 0, i32 noundef 2048) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  %set.0189 = phi i32 [ %set.0188, %if.then11 ], [ %conv, %if.end9.if.end12_crit_edge ]
  %and13 = and i32 %set.0189, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end21_crit_edge, label %if.then15

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %dy = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dy, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %16 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %yoffset, align 4
  %sub = sub i32 %15, %17
  %18 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %image, align 4
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %20 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %xoffset, align 4
  %sub19 = sub i32 %19, %21
  %and20 = and i32 %sub19, 65535
  %shl = shl i32 %sub, 16
  %or = or i32 %and20, %shl
  %PRAMDAC = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 75
  %22 = ptrtoint ptr %PRAMDAC to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %PRAMDAC, align 8
  %add.ptr = getelementptr i8, ptr %23, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or) #10, !srcloc !312
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.end12.if.end21_crit_edge
  %and22 = and i32 %set.0189, 25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end112_crit_edge, label %if.then24

if.end21.if.end112_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.then24:                                        ; preds = %if.end21
  %bg_color = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 5
  %24 = ptrtoint ptr %bg_color to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bg_color, align 4
  %fg_color = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 4
  %26 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fg_color, align 4
  %28 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %width, align 4
  %add = add i32 %29, 7
  %shr = lshr i32 %add, 3
  %data30 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 7
  %30 = ptrtoint ptr %data30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data30, align 4
  %mask = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 3
  %32 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mask, align 4
  %34 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height, align 4
  %36 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shr, i32 %35) #10
  %37 = extractvalue { i32, i1 } %36, 1
  br i1 %37, label %if.then24.if.end112_crit_edge, label %if.end7.i, !prof !313

if.then24.if.end112_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.end7.i:                                        ; preds = %if.then24
  %38 = extractvalue { i32, i1 } %36, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %38, i32 noundef 2592) #15
  %tobool34.not = icmp eq ptr %call8.i, null
  br i1 %tobool34.not, label %if.end7.i.if.end112_crit_edge, label %if.then35

if.end7.i.if.end112_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.then35:                                        ; preds = %if.end7.i
  %rop = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 2
  %39 = ptrtoint ptr %rop to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %rop, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %40)
  %cond = icmp eq i16 %40, 1
  %41 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %height, align 4
  %mul201 = mul i32 %42, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul201)
  %cmp39202.not = icmp eq i32 %mul201, 0
  br i1 %cond, label %for.cond.preheader, label %for.cond47.preheader

for.cond47.preheader:                             ; preds = %if.then35
  br i1 %cmp39202.not, label %for.cond47.preheader.sw.epilog_crit_edge, label %for.body53.preheader

for.cond47.preheader.sw.epilog_crit_edge:         ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body53.preheader:                             ; preds = %for.cond47.preheader
  %43 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %height, align 4
  %mul50 = mul i32 %44, %shr
  br label %for.body53

for.cond.preheader:                               ; preds = %if.then35
  br i1 %cmp39202.not, label %for.cond.preheader.sw.epilog_crit_edge, label %for.body.preheader

for.cond.preheader.sw.epilog_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body.preheader:                               ; preds = %for.cond.preheader
  %45 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height, align 4
  %mul = mul i32 %46, %shr
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0203 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i8, ptr %31, i32 %i.0203
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx, align 1
  %arrayidx42 = getelementptr i8, ptr %33, i32 %i.0203
  %49 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx42, align 1
  %xor184 = xor i8 %50, %48
  %arrayidx45 = getelementptr i8, ptr %call8.i, i32 %i.0203
  %51 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %xor184, ptr %arrayidx45, align 1
  %inc = add nuw i32 %i.0203, 1
  %cmp39 = icmp ult i32 %inc, %mul
  br i1 %cmp39, label %for.body.for.body_crit_edge, label %for.body.sw.epilog_crit_edge

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body53:                                       ; preds = %for.body53.for.body53_crit_edge, %for.body53.preheader
  %i.1200 = phi i32 [ %inc62, %for.body53.for.body53_crit_edge ], [ 0, %for.body53.preheader ]
  %arrayidx54 = getelementptr i8, ptr %31, i32 %i.1200
  %52 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx54, align 1
  %arrayidx56 = getelementptr i8, ptr %33, i32 %i.1200
  %54 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx56, align 1
  %and58183 = and i8 %55, %53
  %arrayidx60 = getelementptr i8, ptr %call8.i, i32 %i.1200
  %56 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %and58183, ptr %arrayidx60, align 1
  %inc62 = add nuw i32 %i.1200, 1
  %cmp51 = icmp ult i32 %inc62, %mul50
  br i1 %cmp51, label %for.body53.for.body53_crit_edge, label %for.body53.sw.epilog_crit_edge

for.body53.sw.epilog_crit_edge:                   ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body53.for.body53_crit_edge:                  ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body53

sw.epilog:                                        ; preds = %for.body53.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge, %for.cond.preheader.sw.epilog_crit_edge, %for.cond47.preheader.sw.epilog_crit_edge
  %57 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %height, align 4
  call void @fb_pad_aligned_buffer(ptr noundef nonnull %data, i32 noundef 4, ptr noundef nonnull %call8.i, i32 noundef %shr, i32 noundef %58) #10
  %red = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 2
  %59 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %red, align 4
  %arrayidx66 = getelementptr i16, ptr %60, i32 %25
  %61 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx66, align 2
  %63 = shl i16 %62, 7
  %64 = and i16 %63, 31744
  %green = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 3
  %65 = ptrtoint ptr %green to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %green, align 4
  %arrayidx71 = getelementptr i16, ptr %66, i32 %25
  %67 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx71, align 2
  %69 = shl i16 %68, 2
  %70 = and i16 %69, 992
  %blue = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 4
  %71 = ptrtoint ptr %blue to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %blue, align 4
  %arrayidx77 = getelementptr i16, ptr %72, i32 %25
  %73 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx77, align 2
  %75 = lshr i16 %74, 3
  %76 = and i16 %75, 31
  %or75179 = or i16 %64, %70
  %or81180 = or i16 %or75179, %76
  %77 = or i16 %or81180, -32768
  %arrayidx86 = getelementptr i16, ptr %60, i32 %27
  %78 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx86, align 2
  %80 = shl i16 %79, 7
  %81 = and i16 %80, 31744
  %arrayidx92 = getelementptr i16, ptr %66, i32 %27
  %82 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx92, align 2
  %84 = shl i16 %83, 2
  %85 = and i16 %84, 992
  %arrayidx99 = getelementptr i16, ptr %72, i32 %27
  %86 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx99, align 2
  %88 = lshr i16 %87, 3
  %89 = and i16 %88, 31
  %or96181 = or i16 %81, %85
  %or103182 = or i16 %or96181, %89
  %90 = or i16 %or103182, -32768
  call void @NVLockUnlock(ptr noundef %1, i32 noundef 0) #10
  %91 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp41.not.i = icmp eq i32 %92, 0
  br i1 %cmp41.not.i, label %sw.epilog.nvidiafb_load_cursor_image.exit_crit_edge, label %for.body.lr.ph.i

sw.epilog.nvidiafb_load_cursor_image.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvidiafb_load_cursor_image.exit

for.body.lr.ph.i:                                 ; preds = %sw.epilog
  %93 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %width, align 4
  %add.i = add i32 %94, 1
  %and.i = and i32 %add.i, -2
  %div34.i = lshr i32 %add.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.i)
  %cmp237.not.i = icmp ult i32 %add.i, 2
  %CURSOR.i = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 69
  %sub.i = sub i32 32, %and.i
  %div1835.i = lshr exact i32 %sub.i, 1
  %umax.i = call i32 @llvm.umax.i32(i32 %div34.i, i32 1) #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %k.044.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add19.i, %for.end.i.for.body.i_crit_edge ]
  %i.043.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc21.i, %for.end.i.for.body.i_crit_edge ]
  %data.042.i = phi ptr [ %data, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.end.i.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i32, ptr %data.042.i, i32 1
  br i1 %cmp237.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body3.preheader.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body3.preheader.i:                            ; preds = %for.body.i
  %95 = ptrtoint ptr %data.042.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %data.042.i, align 4
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.body3.preheader.i
  %b.040.i = phi i32 [ %shl16.i, %for.body3.i.for.body3.i_crit_edge ], [ %96, %for.body3.preheader.i ]
  %k.139.i = phi i32 [ %inc.i, %for.body3.i.for.body3.i_crit_edge ], [ %k.044.i, %for.body3.preheader.i ]
  %j.038.i = phi i32 [ %inc17.i, %for.body3.i.for.body3.i_crit_edge ], [ 0, %for.body3.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %b.040.i)
  %tobool.not36.i = icmp slt i32 %b.040.i, 0
  %bg.fg.i = select i1 %tobool.not36.i, i16 %90, i16 %77
  %cond.in.i = zext i16 %bg.fg.i to i32
  %cond.i = shl nuw i32 %cond.in.i, 16
  %shl7.mask.i = and i32 %b.040.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl7.mask.i)
  %tobool9.not.i = icmp eq i32 %shl7.mask.i, 0
  %cond15.in.i = select i1 %tobool9.not.i, i16 %77, i16 %90
  %cond15.i = zext i16 %cond15.in.i to i32
  %or.i = or i32 %cond.i, %cond15.i
  %shl16.i = shl i32 %b.040.i, 2
  %97 = ptrtoint ptr %CURSOR.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %CURSOR.i, align 8
  %inc.i = add i32 %k.139.i, 1
  %arrayidx.i = getelementptr i32, ptr %98, i32 %k.139.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %or.i) #10, !srcloc !312
  %inc17.i = add nuw nsw i32 %j.038.i, 1
  %exitcond.not.i = icmp eq i32 %inc17.i, %umax.i
  br i1 %exitcond.not.i, label %for.body3.i.for.end.i_crit_edge, label %for.body3.i.for.body3.i_crit_edge

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3.i

for.body3.i.for.end.i_crit_edge:                  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.body3.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %k.1.lcssa.i = phi i32 [ %k.044.i, %for.body.i.for.end.i_crit_edge ], [ %inc.i, %for.body3.i.for.end.i_crit_edge ]
  %add19.i = add i32 %k.1.lcssa.i, %div1835.i
  %inc21.i = add nuw i32 %i.043.i, 1
  %exitcond45.not.i = icmp eq i32 %inc21.i, %92
  br i1 %exitcond45.not.i, label %for.end.i.nvidiafb_load_cursor_image.exit_crit_edge, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i.nvidiafb_load_cursor_image.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvidiafb_load_cursor_image.exit

nvidiafb_load_cursor_image.exit:                  ; preds = %for.end.i.nvidiafb_load_cursor_image.exit_crit_edge, %sw.epilog.nvidiafb_load_cursor_image.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i) #10
  br label %if.end112

if.end112:                                        ; preds = %nvidiafb_load_cursor_image.exit, %if.end7.i.if.end112_crit_edge, %if.then24.if.end112_crit_edge, %if.end21.if.end112_crit_edge
  %enable = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 1
  %99 = ptrtoint ptr %enable to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %enable, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool113.not = icmp eq i16 %100, 0
  br i1 %tobool113.not, label %if.end112.cleanup_crit_edge, label %if.then114

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then114:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  %call115 = call i32 @NVShowHideCursor(ptr noundef %1, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then114, %if.end112.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %lor.lhs.false.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ], [ 0, %if.then114 ], [ 0, %if.end112.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %data) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvidiafb_sync(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvidia_write_regs(ptr noundef %par, ptr noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.60) #13
  tail call void @NVLoadStateExt(ptr noundef %par, ptr noundef %state) #10
  %misc_output = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %misc_output to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %misc_output, align 4
  tail call void @NVWriteMiscOut(ptr noundef %par, i8 noundef zeroext %1) #10
  %arrayidx = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  tail call void @NVWriteSeq(ptr noundef %par, i8 noundef zeroext 1, i8 noundef zeroext %3) #10
  %arrayidx.1 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.1, align 1
  tail call void @NVWriteSeq(ptr noundef %par, i8 noundef zeroext 2, i8 noundef zeroext %5) #10
  %arrayidx.2 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.2, align 1
  tail call void @NVWriteSeq(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext %7) #10
  %arrayidx.3 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.3, align 1
  tail call void @NVWriteSeq(ptr noundef %par, i8 noundef zeroext 4, i8 noundef zeroext %9) #10
  %arrayidx1 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 1, i32 17
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1, align 1
  %12 = and i8 %11, 127
  tail call void @NVWriteCrtc(ptr noundef %par, i8 noundef zeroext 17, i8 noundef zeroext %12) #10
  br label %for.body7

for.body7:                                        ; preds = %for.inc12.for.body7_crit_edge, %entry
  %i.167 = phi i32 [ 0, %entry ], [ %inc13, %for.inc12.for.body7_crit_edge ]
  %13 = zext i32 %i.167 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %i.167, label %sw.default [
    i32 25, label %for.body7.for.inc12_crit_edge
    i32 32, label %for.body7.for.inc12_crit_edge73
    i32 33, label %for.body7.for.inc12_crit_edge74
    i32 34, label %for.body7.for.inc12_crit_edge75
    i32 35, label %for.body7.for.inc12_crit_edge76
    i32 36, label %for.body7.for.inc12_crit_edge77
    i32 37, label %for.body7.for.inc12_crit_edge78
    i32 38, label %for.body7.for.inc12_crit_edge79
    i32 39, label %for.body7.for.inc12_crit_edge80
    i32 40, label %for.body7.for.inc12_crit_edge81
    i32 41, label %for.body7.for.inc12_crit_edge82
    i32 42, label %for.body7.for.inc12_crit_edge83
    i32 43, label %for.body7.for.inc12_crit_edge84
    i32 44, label %for.body7.for.inc12_crit_edge85
    i32 45, label %for.body7.for.inc12_crit_edge86
    i32 46, label %for.body7.for.inc12_crit_edge87
    i32 47, label %for.body7.for.inc12_crit_edge88
    i32 48, label %for.body7.for.inc12_crit_edge89
    i32 49, label %for.body7.for.inc12_crit_edge90
    i32 50, label %for.body7.for.inc12_crit_edge91
    i32 51, label %for.body7.for.inc12_crit_edge92
    i32 52, label %for.body7.for.inc12_crit_edge93
    i32 53, label %for.body7.for.inc12_crit_edge94
    i32 54, label %for.body7.for.inc12_crit_edge95
    i32 55, label %for.body7.for.inc12_crit_edge96
    i32 56, label %for.body7.for.inc12_crit_edge97
    i32 57, label %for.body7.for.inc12_crit_edge98
    i32 58, label %for.body7.for.inc12_crit_edge99
    i32 59, label %for.body7.for.inc12_crit_edge100
    i32 60, label %for.body7.for.inc12_crit_edge101
    i32 61, label %for.body7.for.inc12_crit_edge102
    i32 62, label %for.body7.for.inc12_crit_edge103
    i32 63, label %for.body7.for.inc12_crit_edge104
    i32 64, label %for.body7.for.inc12_crit_edge105
  ]

for.body7.for.inc12_crit_edge105:                 ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge104:                 ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge103:                 ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge102:                 ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge101:                 ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge100:                 ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge99:                  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge98:                  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge97:                  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge96:                  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge95:                  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge94:                  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge93:                  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge92:                  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge91:                  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge90:                  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge89:                  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge88:                  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge87:                  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge86:                  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge85:                  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge84:                  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge83:                  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge82:                  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge81:                  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge80:                  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge79:                  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge78:                  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge77:                  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge76:                  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge75:                  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge74:                  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge73:                  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

for.body7.for.inc12_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

sw.default:                                       ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  %conv9 = trunc i32 %i.167 to i8
  %arrayidx11 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 1, i32 %i.167
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx11, align 1
  tail call void @NVWriteCrtc(ptr noundef %par, i8 noundef zeroext %conv9, i8 noundef zeroext %15) #10
  br label %for.inc12

for.inc12:                                        ; preds = %sw.default, %for.body7.for.inc12_crit_edge, %for.body7.for.inc12_crit_edge73, %for.body7.for.inc12_crit_edge74, %for.body7.for.inc12_crit_edge75, %for.body7.for.inc12_crit_edge76, %for.body7.for.inc12_crit_edge77, %for.body7.for.inc12_crit_edge78, %for.body7.for.inc12_crit_edge79, %for.body7.for.inc12_crit_edge80, %for.body7.for.inc12_crit_edge81, %for.body7.for.inc12_crit_edge82, %for.body7.for.inc12_crit_edge83, %for.body7.for.inc12_crit_edge84, %for.body7.for.inc12_crit_edge85, %for.body7.for.inc12_crit_edge86, %for.body7.for.inc12_crit_edge87, %for.body7.for.inc12_crit_edge88, %for.body7.for.inc12_crit_edge89, %for.body7.for.inc12_crit_edge90, %for.body7.for.inc12_crit_edge91, %for.body7.for.inc12_crit_edge92, %for.body7.for.inc12_crit_edge93, %for.body7.for.inc12_crit_edge94, %for.body7.for.inc12_crit_edge95, %for.body7.for.inc12_crit_edge96, %for.body7.for.inc12_crit_edge97, %for.body7.for.inc12_crit_edge98, %for.body7.for.inc12_crit_edge99, %for.body7.for.inc12_crit_edge100, %for.body7.for.inc12_crit_edge101, %for.body7.for.inc12_crit_edge102, %for.body7.for.inc12_crit_edge103, %for.body7.for.inc12_crit_edge104, %for.body7.for.inc12_crit_edge105
  %inc13 = add nuw nsw i32 %i.167, 1
  %exitcond.not = icmp eq i32 %inc13, 65
  br i1 %exitcond.not, label %for.body18.preheader, label %for.inc12.for.body7_crit_edge

for.inc12.for.body7_crit_edge:                    ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7

for.body18.preheader:                             ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx20 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 2, i32 0
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx20, align 1
  tail call void @NVWriteGr(ptr noundef %par, i8 noundef zeroext 0, i8 noundef zeroext %17) #10
  %arrayidx20.1 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx20.1, align 1
  tail call void @NVWriteGr(ptr noundef %par, i8 noundef zeroext 1, i8 noundef zeroext %19) #10
  %arrayidx20.2 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx20.2, align 1
  tail call void @NVWriteGr(ptr noundef %par, i8 noundef zeroext 2, i8 noundef zeroext %21) #10
  %arrayidx20.3 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx20.3, align 1
  tail call void @NVWriteGr(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext %23) #10
  %arrayidx20.4 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %arrayidx20.4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx20.4, align 1
  tail call void @NVWriteGr(ptr noundef %par, i8 noundef zeroext 4, i8 noundef zeroext %25) #10
  %arrayidx20.5 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 2, i32 5
  %26 = ptrtoint ptr %arrayidx20.5 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx20.5, align 1
  tail call void @NVWriteGr(ptr noundef %par, i8 noundef zeroext 5, i8 noundef zeroext %27) #10
  %arrayidx20.6 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 2, i32 6
  %28 = ptrtoint ptr %arrayidx20.6 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx20.6, align 1
  tail call void @NVWriteGr(ptr noundef %par, i8 noundef zeroext 6, i8 noundef zeroext %29) #10
  %arrayidx20.7 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 2, i32 7
  %30 = ptrtoint ptr %arrayidx20.7 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx20.7, align 1
  tail call void @NVWriteGr(ptr noundef %par, i8 noundef zeroext 7, i8 noundef zeroext %31) #10
  %arrayidx20.8 = getelementptr %struct._riva_hw_state, ptr %state, i32 0, i32 2, i32 8
  %32 = ptrtoint ptr %arrayidx20.8 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx20.8, align 1
  tail call void @NVWriteGr(ptr noundef %par, i8 noundef zeroext 8, i8 noundef zeroext %33) #10
  %34 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %state, align 1
  tail call void @NVWriteAttr(ptr noundef %par, i8 noundef zeroext 0, i8 noundef zeroext %35) #10
  %arrayidx29.1 = getelementptr [21 x i8], ptr %state, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx29.1, align 1
  tail call void @NVWriteAttr(ptr noundef %par, i8 noundef zeroext 1, i8 noundef zeroext %37) #10
  %arrayidx29.2 = getelementptr [21 x i8], ptr %state, i32 0, i32 2
  %38 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx29.2, align 1
  tail call void @NVWriteAttr(ptr noundef %par, i8 noundef zeroext 2, i8 noundef zeroext %39) #10
  %arrayidx29.3 = getelementptr [21 x i8], ptr %state, i32 0, i32 3
  %40 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx29.3, align 1
  tail call void @NVWriteAttr(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext %41) #10
  %arrayidx29.4 = getelementptr [21 x i8], ptr %state, i32 0, i32 4
  %42 = ptrtoint ptr %arrayidx29.4 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx29.4, align 1
  tail call void @NVWriteAttr(ptr noundef %par, i8 noundef zeroext 4, i8 noundef zeroext %43) #10
  %arrayidx29.5 = getelementptr [21 x i8], ptr %state, i32 0, i32 5
  %44 = ptrtoint ptr %arrayidx29.5 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx29.5, align 1
  tail call void @NVWriteAttr(ptr noundef %par, i8 noundef zeroext 5, i8 noundef zeroext %45) #10
  %arrayidx29.6 = getelementptr [21 x i8], ptr %state, i32 0, i32 6
  %46 = ptrtoint ptr %arrayidx29.6 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx29.6, align 1
  tail call void @NVWriteAttr(ptr noundef %par, i8 noundef zeroext 6, i8 noundef zeroext %47) #10
  %arrayidx29.7 = getelementptr [21 x i8], ptr %state, i32 0, i32 7
  %48 = ptrtoint ptr %arrayidx29.7 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx29.7, align 1
  tail call void @NVWriteAttr(ptr noundef %par, i8 noundef zeroext 7, i8 noundef zeroext %49) #10
  %arrayidx29.8 = getelementptr [21 x i8], ptr %state, i32 0, i32 8
  %50 = ptrtoint ptr %arrayidx29.8 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx29.8, align 1
  tail call void @NVWriteAttr(ptr noundef %par, i8 noundef zeroext 8, i8 noundef zeroext %51) #10
  %arrayidx29.9 = getelementptr [21 x i8], ptr %state, i32 0, i32 9
  %52 = ptrtoint ptr %arrayidx29.9 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx29.9, align 1
  tail call void @NVWriteAttr(ptr noundef %par, i8 noundef zeroext 9, i8 noundef zeroext %53) #10
  %arrayidx29.10 = getelementptr [21 x i8], ptr %state, i32 0, i32 10
  %54 = ptrtoint ptr %arrayidx29.10 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx29.10, align 1
  tail call void @NVWriteAttr(ptr noundef %par, i8 noundef zeroext 10, i8 noundef zeroext %55) #10
  %arrayidx29.11 = getelementptr [21 x i8], ptr %state, i32 0, i32 11
  %56 = ptrtoint ptr %arrayidx29.11 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx29.11, align 1
  tail call void @NVWriteAttr(ptr noundef %par, i8 noundef zeroext 11, i8 noundef zeroext %57) #10
  %arrayidx29.12 = getelementptr [21 x i8], ptr %state, i32 0, i32 12
  %58 = ptrtoint ptr %arrayidx29.12 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx29.12, align 1
  tail call void @NVWriteAttr(ptr noundef %par, i8 noundef zeroext 12, i8 noundef zeroext %59) #10
  %arrayidx29.13 = getelementptr [21 x i8], ptr %state, i32 0, i32 13
  %60 = ptrtoint ptr %arrayidx29.13 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx29.13, align 1
  tail call void @NVWriteAttr(ptr noundef %par, i8 noundef zeroext 13, i8 noundef zeroext %61) #10
  %arrayidx29.14 = getelementptr [21 x i8], ptr %state, i32 0, i32 14
  %62 = ptrtoint ptr %arrayidx29.14 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx29.14, align 1
  tail call void @NVWriteAttr(ptr noundef %par, i8 noundef zeroext 14, i8 noundef zeroext %63) #10
  %arrayidx29.15 = getelementptr [21 x i8], ptr %state, i32 0, i32 15
  %64 = ptrtoint ptr %arrayidx29.15 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx29.15, align 1
  tail call void @NVWriteAttr(ptr noundef %par, i8 noundef zeroext 15, i8 noundef zeroext %65) #10
  %arrayidx29.16 = getelementptr [21 x i8], ptr %state, i32 0, i32 16
  %66 = ptrtoint ptr %arrayidx29.16 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx29.16, align 1
  tail call void @NVWriteAttr(ptr noundef %par, i8 noundef zeroext 16, i8 noundef zeroext %67) #10
  %arrayidx29.17 = getelementptr [21 x i8], ptr %state, i32 0, i32 17
  %68 = ptrtoint ptr %arrayidx29.17 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx29.17, align 1
  tail call void @NVWriteAttr(ptr noundef %par, i8 noundef zeroext 17, i8 noundef zeroext %69) #10
  %arrayidx29.18 = getelementptr [21 x i8], ptr %state, i32 0, i32 18
  %70 = ptrtoint ptr %arrayidx29.18 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx29.18, align 1
  tail call void @NVWriteAttr(ptr noundef %par, i8 noundef zeroext 18, i8 noundef zeroext %71) #10
  %arrayidx29.19 = getelementptr [21 x i8], ptr %state, i32 0, i32 19
  %72 = ptrtoint ptr %arrayidx29.19 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx29.19, align 1
  tail call void @NVWriteAttr(ptr noundef %par, i8 noundef zeroext 19, i8 noundef zeroext %73) #10
  %arrayidx29.20 = getelementptr [21 x i8], ptr %state, i32 0, i32 20
  %74 = ptrtoint ptr %arrayidx29.20 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx29.20, align 1
  tail call void @NVWriteAttr(ptr noundef %par, i8 noundef zeroext 20, i8 noundef zeroext %75) #10
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.60) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @NVLoadStateExt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @NVWriteMiscOut(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @NVWriteSeq(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @NVWriteCrtc(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @NVWriteGr(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @NVWriteAttr(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_validate_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_mode(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_find_best_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @NVLockUnlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @NVSetStartAddress(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @NVResetGraphics(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_color_depth(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @NVCalcStateExt(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @NVReadSeq(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvidia_write_clut(ptr noundef %par, i8 noundef zeroext %regnum, i8 noundef zeroext %red, i8 noundef zeroext %green, i8 noundef zeroext %blue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @NVWriteDacMask(ptr noundef %par, i8 noundef zeroext -1) #10
  tail call void @NVWriteDacWriteAddr(ptr noundef %par, i8 noundef zeroext %regnum) #10
  tail call void @NVWriteDacData(ptr noundef %par, i8 noundef zeroext %red) #10
  tail call void @NVWriteDacData(ptr noundef %par, i8 noundef zeroext %green) #10
  tail call void @NVWriteDacData(ptr noundef %par, i8 noundef zeroext %blue) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvidia_read_clut(ptr noundef %par, i8 noundef zeroext %regnum, ptr nocapture noundef writeonly %red, ptr nocapture noundef writeonly %green, ptr nocapture noundef writeonly %blue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @NVWriteDacMask(ptr noundef %par, i8 noundef zeroext -1) #10
  tail call void @NVWriteDacReadAddr(ptr noundef %par, i8 noundef zeroext %regnum) #10
  %call = tail call zeroext i8 @NVReadDacData(ptr noundef %par) #10
  %0 = ptrtoint ptr %red to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %call, ptr %red, align 1
  %call1 = tail call zeroext i8 @NVReadDacData(ptr noundef %par) #10
  %1 = ptrtoint ptr %green to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %call1, ptr %green, align 1
  %call2 = tail call zeroext i8 @NVReadDacData(ptr noundef %par) #10
  %2 = ptrtoint ptr %blue to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %call2, ptr %blue, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @NVWriteDacMask(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @NVWriteDacWriteAddr(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @NVWriteDacData(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @NVWriteDacReadAddr(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @NVReadDacData(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @NVReadCrtc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @NVShowHideCursor(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_pad_aligned_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_modelist(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_var_to_videomode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_find_best_display(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @NVUnloadStateExt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @NVReadMiscOut(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @NVReadAttr(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @NVReadGr(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvidia_bl_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvidiafb_suspend(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @nvidiafb_suspend_late(ptr noundef %dev, [1 x i32] [i32 2])
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvidiafb_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  tail call void @console_lock() #10
  %pm_state = getelementptr inbounds %struct.nvidia_par, ptr %3, i32 0, i32 39
  %4 = ptrtoint ptr %pm_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %pm_state, align 4
  %call2 = tail call i32 @nvidiafb_set_par(ptr noundef %1)
  tail call void @fb_set_suspend(ptr noundef %1, i32 noundef 0) #10
  %5 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %par1, align 4
  %call.i = tail call zeroext i8 @NVReadSeq(ptr noundef %6, i8 noundef zeroext 1) #10
  %call3.i = tail call zeroext i8 @NVReadCrtc(ptr noundef %6, i8 noundef zeroext 26) #10
  %7 = and i8 %call3.i, 63
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.83) #13
  %8 = and i8 %call.i, -33
  tail call void @NVWriteSeq(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext %8) #10
  tail call void @NVWriteCrtc(ptr noundef %6, i8 noundef zeroext 26, i8 noundef zeroext %7) #10
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.83) #13
  tail call void @console_unlock() #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvidiafb_freeze(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @nvidiafb_suspend_late(ptr noundef %dev, [1 x i32] [i32 1])
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvidiafb_hibernate(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @nvidiafb_suspend_late(ptr noundef %dev, [1 x i32] [i32 4])
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvidiafb_suspend_late(ptr nocapture noundef %dev, [1 x i32] %mesg.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mesg.coerce.fca.0.extract = extractvalue [1 x i32] %mesg.coerce, 0
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mesg.coerce.fca.0.extract)
  %cmp = icmp eq i32 %mesg.coerce.fca.0.extract, 8
  %spec.select = select i1 %cmp, i32 1, i32 %mesg.coerce.fca.0.extract
  tail call void @console_lock() #10
  %pm_state = getelementptr inbounds %struct.nvidia_par, ptr %3, i32 0, i32 39
  %4 = ptrtoint ptr %pm_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %pm_state, align 4
  %and = and i32 %spec.select, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then5

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fb_set_suspend(ptr noundef %1, i32 noundef 1) #10
  %5 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %par1, align 4
  %call.i = tail call zeroext i8 @NVReadSeq(ptr noundef %6, i8 noundef zeroext 1) #10
  %call3.i = tail call zeroext i8 @NVReadCrtc(ptr noundef %6, i8 noundef zeroext 26) #10
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.83) #13
  %7 = or i8 %call3.i, -64
  %spec.select.i = or i8 %call.i, 32
  tail call void @NVWriteSeq(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext %spec.select.i) #10
  tail call void @NVWriteCrtc(ptr noundef %6, i8 noundef zeroext 26, i8 noundef zeroext %7) #10
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.83) #13
  tail call fastcc void @nvidia_write_regs(ptr noundef %3, ptr noundef %3)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %entry.if.end7_crit_edge
  %power = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12
  %8 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %power, align 8
  tail call void @console_unlock() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_set_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !17, !19, !21, !22, !24, !26, !27, !29, !31, !32, !34, !36, !37, !39, !41, !42, !44, !46, !47, !49, !51, !52, !54, !56, !57, !59, !61, !62, !64, !66, !68, !70, !71, !73, !75, !77, !78, !79, !80, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !110, !111, !113, !115, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !169, !171, !172, !173, !174, !176, !177, !178, !180, !182, !183, !184, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !204, !205, !206, !208, !209, !210, !211, !212, !214, !215, !217, !218, !219, !221, !222, !224, !225, !226, !228, !229, !231, !232, !233, !235, !237, !238, !240, !242, !243, !244, !246, !247, !249, !250, !251, !253, !254, !256, !257, !259, !260, !262, !263, !265, !266, !268, !269, !271, !272, !274, !275, !277, !278, !280, !281, !283, !284, !286, !287, !288}
!llvm.module.flags = !{!290, !291, !292, !293, !294, !295, !296, !297}
!llvm.ident = !{!298}

!0 = !{ptr @__initcall__kmod_nvidiafb__305_1527_nvidiafb_init6, !1, !"__initcall__kmod_nvidiafb__305_1527_nvidiafb_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1527, i32 1}
!2 = !{ptr @__exitcall_nvidiafb_exit, !3, !"__exitcall_nvidiafb_exit", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1534, i32 1}
!4 = !{ptr @__param_flatpanel, !5, !"__param_flatpanel", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1536, i32 1}
!6 = !{ptr @__UNIQUE_ID_flatpaneltype306, !5, !"__UNIQUE_ID_flatpaneltype306", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_flatpanel307, !8, !"__UNIQUE_ID_flatpanel307", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1537, i32 1}
!9 = !{ptr @__param_fpdither, !10, !"__param_fpdither", i1 false, i1 false}
!10 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1540, i32 1}
!11 = !{ptr @__UNIQUE_ID_fpdithertype308, !10, !"__UNIQUE_ID_fpdithertype308", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_fpdither309, !13, !"__UNIQUE_ID_fpdither309", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1541, i32 1}
!14 = !{ptr @__param_hwcur, !15, !"__param_hwcur", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1544, i32 1}
!16 = !{ptr @__UNIQUE_ID_hwcurtype310, !15, !"__UNIQUE_ID_hwcurtype310", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_hwcur311, !18, !"__UNIQUE_ID_hwcur311", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1545, i32 1}
!19 = !{ptr @__param_noaccel, !20, !"__param_noaccel", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1548, i32 1}
!21 = !{ptr @__UNIQUE_ID_noacceltype312, !20, !"__UNIQUE_ID_noacceltype312", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_noaccel313, !23, !"__UNIQUE_ID_noaccel313", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1549, i32 1}
!24 = !{ptr @__param_noscale, !25, !"__param_noscale", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1552, i32 1}
!26 = !{ptr @__UNIQUE_ID_noscaletype314, !25, !"__UNIQUE_ID_noscaletype314", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_noscale315, !28, !"__UNIQUE_ID_noscale315", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1553, i32 1}
!29 = !{ptr @__param_paneltweak, !30, !"__param_paneltweak", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1556, i32 1}
!31 = !{ptr @__UNIQUE_ID_paneltweaktype316, !30, !"__UNIQUE_ID_paneltweaktype316", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_paneltweak317, !33, !"__UNIQUE_ID_paneltweak317", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1557, i32 1}
!34 = !{ptr @__param_forceCRTC, !35, !"__param_forceCRTC", i1 false, i1 false}
!35 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1560, i32 1}
!36 = !{ptr @__UNIQUE_ID_forceCRTCtype318, !35, !"__UNIQUE_ID_forceCRTCtype318", i1 false, i1 false}
!37 = !{ptr @__UNIQUE_ID_forceCRTC319, !38, !"__UNIQUE_ID_forceCRTC319", i1 false, i1 false}
!38 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1561, i32 1}
!39 = !{ptr @__param_vram, !40, !"__param_vram", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1564, i32 1}
!41 = !{ptr @__UNIQUE_ID_vramtype320, !40, !"__UNIQUE_ID_vramtype320", i1 false, i1 false}
!42 = !{ptr @__UNIQUE_ID_vram321, !43, !"__UNIQUE_ID_vram321", i1 false, i1 false}
!43 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1565, i32 1}
!44 = !{ptr @__param_mode_option, !45, !"__param_mode_option", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1568, i32 1}
!46 = !{ptr @__UNIQUE_ID_mode_optiontype322, !45, !"__UNIQUE_ID_mode_optiontype322", i1 false, i1 false}
!47 = !{ptr @__UNIQUE_ID_mode_option323, !48, !"__UNIQUE_ID_mode_option323", i1 false, i1 false}
!48 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1569, i32 1}
!49 = !{ptr @__param_bpp, !50, !"__param_bpp", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1570, i32 1}
!51 = !{ptr @__UNIQUE_ID_bpptype324, !50, !"__UNIQUE_ID_bpptype324", i1 false, i1 false}
!52 = !{ptr @__UNIQUE_ID_bpp325, !53, !"__UNIQUE_ID_bpp325", i1 false, i1 false}
!53 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1571, i32 1}
!54 = !{ptr @__param_reverse_i2c, !55, !"__param_reverse_i2c", i1 false, i1 false}
!55 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1573, i32 1}
!56 = !{ptr @__UNIQUE_ID_reverse_i2ctype326, !55, !"__UNIQUE_ID_reverse_i2ctype326", i1 false, i1 false}
!57 = !{ptr @__UNIQUE_ID_reverse_i2c327, !58, !"__UNIQUE_ID_reverse_i2c327", i1 false, i1 false}
!58 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1574, i32 1}
!59 = !{ptr @__param_nomtrr, !60, !"__param_nomtrr", i1 false, i1 false}
!60 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1575, i32 1}
!61 = !{ptr @__UNIQUE_ID_nomtrrtype328, !60, !"__UNIQUE_ID_nomtrrtype328", i1 false, i1 false}
!62 = !{ptr @__UNIQUE_ID_nomtrr329, !63, !"__UNIQUE_ID_nomtrr329", i1 false, i1 false}
!63 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1576, i32 1}
!64 = !{ptr @__UNIQUE_ID_author330, !65, !"__UNIQUE_ID_author330", i1 false, i1 false}
!65 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1579, i32 1}
!66 = !{ptr @__UNIQUE_ID_description331, !67, !"__UNIQUE_ID_description331", i1 false, i1 false}
!67 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1580, i32 1}
!68 = !{ptr @__UNIQUE_ID_file332, !69, !"__UNIQUE_ID_file332", i1 false, i1 false}
!69 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1581, i32 1}
!70 = !{ptr @__UNIQUE_ID_license333, !69, !"__UNIQUE_ID_license333", i1 false, i1 false}
!71 = !{ptr @reverse_i2c, !72, !"reverse_i2c", i1 false, i1 false}
!72 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 75, i32 12}
!73 = !{ptr @.str, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1520, i32 21}
!75 = !{ptr @.str.1, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1457, i32 2}
!77 = !{ptr @.str.2, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.3, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @nvidiafb_setup._entry, !76, !"_entry", i1 false, i1 false}
!80 = !{ptr @nvidiafb_setup._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.4, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1461, i32 38}
!83 = !{ptr @.str.5, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1462, i32 26}
!85 = !{ptr @.str.6, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1471, i32 33}
!87 = !{ptr @.str.7, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1473, i32 33}
!89 = !{ptr @.str.8, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1475, i32 33}
!91 = !{ptr @.str.9, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1477, i32 33}
!93 = !{ptr @.str.10, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1479, i32 33}
!95 = !{ptr @.str.11, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1481, i32 33}
!97 = !{ptr @.str.12, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1483, i32 33}
!99 = !{ptr @.str.13, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1485, i32 33}
!101 = !{ptr @.str.14, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1487, i32 33}
!103 = !{ptr @.str.15, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1489, i32 33}
!105 = !{ptr @.str.16, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1491, i32 33}
!107 = !{ptr @.str.18, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1496, i32 2}
!109 = !{ptr @nvidiafb_setup._entry.17, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @nvidiafb_setup._entry_ptr.19, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @backlight, !112, !"backlight", i1 false, i1 false}
!112 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 77, i32 12}
!113 = !{ptr @nvidiafb_driver, !114, !"nvidiafb_driver", i1 false, i1 false}
!114 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1501, i32 26}
!115 = !{ptr @nvidiafb_pci_tbl, !116, !"nvidiafb_pci_tbl", i1 false, i1 false}
!116 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 58, i32 35}
!117 = !{ptr @.str.20, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1281, i32 2}
!119 = !{ptr @nvidiafb_probe._entry, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @nvidiafb_probe._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.22, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1282, i32 2}
!123 = !{ptr @nvidiafb_probe._entry.21, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @nvidiafb_probe._entry_ptr.23, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.24, !122, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.26, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1297, i32 3}
!128 = !{ptr @nvidiafb_probe._entry.25, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @nvidiafb_probe._entry_ptr.27, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.29, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1302, i32 3}
!132 = !{ptr @nvidiafb_probe._entry.28, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @nvidiafb_probe._entry_ptr.30, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.32, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1308, i32 3}
!136 = !{ptr @nvidiafb_probe._entry.31, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @nvidiafb_probe._entry_ptr.33, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.35, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1328, i32 3}
!140 = !{ptr @nvidiafb_probe._entry.34, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @nvidiafb_probe._entry_ptr.36, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.38, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1336, i32 3}
!144 = !{ptr @nvidiafb_probe._entry.37, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @nvidiafb_probe._entry_ptr.39, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.40, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1340, i32 27}
!148 = !{ptr @.str.42, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1369, i32 3}
!150 = !{ptr @nvidiafb_probe._entry.41, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @nvidiafb_probe._entry_ptr.43, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.45, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1383, i32 3}
!154 = !{ptr @nvidiafb_probe._entry.44, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @nvidiafb_probe._entry_ptr.46, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.48, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1395, i32 3}
!158 = !{ptr @nvidiafb_probe._entry.47, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @nvidiafb_probe._entry_ptr.49, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.51, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1400, i32 2}
!162 = !{ptr @nvidiafb_probe._entry.50, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @nvidiafb_probe._entry_ptr.52, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @nvidiafb_probe._entry.53, !165, !"_entry", i1 false, i1 false}
!165 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1405, i32 2}
!166 = !{ptr @nvidiafb_probe._entry_ptr.54, !165, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @nvidiafb_fix, !168, !"nvidiafb_fix", i1 false, i1 false}
!168 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 81, i32 33}
!169 = !{ptr @.str.55, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1204, i32 2}
!171 = !{ptr @.str.56, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @nvidia_get_chipset._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @nvidia_get_chipset._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.58, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1216, i32 3}
!176 = !{ptr @nvidia_get_chipset._entry.57, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @nvidia_get_chipset._entry_ptr.59, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @nvidia_fb_ops, !179, !"nvidia_fb_ops", i1 false, i1 false}
!179 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1024, i32 22}
!180 = !{ptr @.str.60, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 246, i32 2}
!182 = !{ptr @nvidia_write_regs._entry, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @nvidia_write_regs._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @nvidia_write_regs._entry.61, !185, !"_entry", i1 false, i1 false}
!185 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 289, i32 2}
!186 = !{ptr @nvidia_write_regs._entry_ptr.62, !185, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.63, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 765, i32 2}
!189 = !{ptr @nvidiafb_check_var._entry, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @nvidiafb_check_var._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.65, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 854, i32 4}
!193 = !{ptr @nvidiafb_check_var._entry.64, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @nvidiafb_check_var._entry_ptr.66, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.68, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 887, i32 5}
!197 = !{ptr @nvidiafb_check_var._entry.67, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @nvidiafb_check_var._entry_ptr.69, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @nvidiafb_check_var._entry.70, !200, !"_entry", i1 false, i1 false}
!200 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 906, i32 2}
!201 = !{ptr @nvidiafb_check_var._entry_ptr.71, !200, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.72, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 611, i32 2}
!204 = !{ptr @nvidiafb_set_par._entry, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @nvidiafb_set_par._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.74, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 623, i32 3}
!208 = !{ptr @nvidiafb_set_par._entry.73, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @nvidiafb_set_par._entry_ptr.75, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.76, !207, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.77, !207, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @nvidiafb_set_par._entry.78, !213, !"_entry", i1 false, i1 false}
!213 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 690, i32 2}
!214 = !{ptr @nvidiafb_set_par._entry_ptr.79, !213, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.80, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 701, i32 2}
!217 = !{ptr @nvidiafb_setcolreg._entry, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @nvidiafb_setcolreg._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @nvidiafb_setcolreg._entry.81, !220, !"_entry", i1 false, i1 false}
!220 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 754, i32 2}
!221 = !{ptr @nvidiafb_setcolreg._entry_ptr.82, !220, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.83, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 932, i32 2}
!224 = !{ptr @nvidiafb_blank._entry, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @nvidiafb_blank._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @nvidiafb_blank._entry.84, !227, !"_entry", i1 false, i1 false}
!227 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 955, i32 2}
!228 = !{ptr @nvidiafb_blank._entry_ptr.85, !227, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.86, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1110, i32 2}
!231 = !{ptr @nvidia_set_fbinfo._entry, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @nvidia_set_fbinfo._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.87, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1143, i32 21}
!235 = !{ptr @nvidia_set_fbinfo._entry.88, !236, !"_entry", i1 false, i1 false}
!236 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1194, i32 2}
!237 = !{ptr @nvidia_set_fbinfo._entry_ptr.89, !236, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @nvidiafb_default_var, !239, !"nvidiafb_default_var", i1 false, i1 false}
!239 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 87, i32 33}
!240 = !{ptr @.str.90, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 218, i32 2}
!242 = !{ptr @nvidia_save_vga._entry, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @nvidia_save_vga._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @nvidia_save_vga._entry.91, !245, !"_entry", i1 false, i1 false}
!245 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 236, i32 2}
!246 = !{ptr @nvidia_save_vga._entry_ptr.92, !245, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.93, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1430, i32 2}
!249 = !{ptr @nvidiafb_remove._entry, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @nvidiafb_remove._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @nvidiafb_remove._entry.94, !252, !"_entry", i1 false, i1 false}
!252 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1443, i32 2}
!253 = !{ptr @nvidiafb_remove._entry_ptr.95, !252, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @nvidiafb_pm_ops, !255, !"nvidiafb_pm_ops", i1 false, i1 false}
!255 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 1092, i32 32}
!256 = !{ptr @__param_str_flatpanel, !5, !"__param_str_flatpanel", i1 false, i1 false}
!257 = !{ptr @flatpanel, !258, !"flatpanel", i1 false, i1 false}
!258 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 66, i32 12}
!259 = !{ptr @__param_str_fpdither, !10, !"__param_str_fpdither", i1 false, i1 false}
!260 = !{ptr @fpdither, !261, !"fpdither", i1 false, i1 false}
!261 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 67, i32 12}
!262 = !{ptr @__param_str_hwcur, !15, !"__param_str_hwcur", i1 false, i1 false}
!263 = !{ptr @hwcur, !264, !"hwcur", i1 false, i1 false}
!264 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 69, i32 12}
!265 = !{ptr @__param_str_noaccel, !20, !"__param_str_noaccel", i1 false, i1 false}
!266 = !{ptr @noaccel, !267, !"noaccel", i1 false, i1 false}
!267 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 70, i32 12}
!268 = !{ptr @__param_str_noscale, !25, !"__param_str_noscale", i1 false, i1 false}
!269 = !{ptr @noscale, !270, !"noscale", i1 false, i1 false}
!270 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 71, i32 12}
!271 = !{ptr @__param_str_paneltweak, !30, !"__param_str_paneltweak", i1 false, i1 false}
!272 = !{ptr @paneltweak, !273, !"paneltweak", i1 false, i1 false}
!273 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 72, i32 12}
!274 = !{ptr @__param_str_forceCRTC, !35, !"__param_str_forceCRTC", i1 false, i1 false}
!275 = !{ptr @forceCRTC, !276, !"forceCRTC", i1 false, i1 false}
!276 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 68, i32 12}
!277 = !{ptr @__param_str_vram, !40, !"__param_str_vram", i1 false, i1 false}
!278 = !{ptr @vram, !279, !"vram", i1 false, i1 false}
!279 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 73, i32 12}
!280 = !{ptr @__param_str_mode_option, !45, !"__param_str_mode_option", i1 false, i1 false}
!281 = !{ptr @mode_option, !282, !"mode_option", i1 false, i1 false}
!282 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 79, i32 14}
!283 = !{ptr @__param_str_bpp, !50, !"__param_str_bpp", i1 false, i1 false}
!284 = !{ptr @bpp, !285, !"bpp", i1 false, i1 false}
!285 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 74, i32 12}
!286 = !{ptr @__param_str_reverse_i2c, !55, !"__param_str_reverse_i2c", i1 false, i1 false}
!287 = !{ptr @__param_str_nomtrr, !60, !"__param_str_nomtrr", i1 false, i1 false}
!288 = !{ptr @nomtrr, !289, !"nomtrr", i1 false, i1 false}
!289 = !{!"../drivers/video/fbdev/nvidia/nvidia.c", i32 76, i32 13}
!290 = !{i32 1, !"wchar_size", i32 2}
!291 = !{i32 1, !"min_enum_size", i32 4}
!292 = !{i32 8, !"branch-target-enforcement", i32 0}
!293 = !{i32 8, !"sign-return-address", i32 0}
!294 = !{i32 8, !"sign-return-address-all", i32 0}
!295 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!296 = !{i32 7, !"uwtable", i32 1}
!297 = !{i32 7, !"frame-pointer", i32 2}
!298 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!299 = !{!"auto-init"}
!300 = !{i64 2156335898, i64 2156336399, i64 2156335935, i64 2156335991, i64 2156336025, i64 2156336049, i64 2156336090, i64 2156336111, i64 2156336139, i64 2156336173}
!301 = !{i64 6250820}
!302 = !{i8 0, i8 2}
!303 = !{i64 2156302964}
!304 = !{i64 6250205}
!305 = !{i64 6250600}
!306 = !{i64 2156303381}
!307 = !{i64 2156307866}
!308 = !{i64 2156308292}
!309 = !{i64 2156308698}
!310 = !{i64 2156309111}
!311 = !{i64 2156309414}
!312 = !{i64 6250402}
!313 = !{!"branch_weights", i32 1, i32 2000}
