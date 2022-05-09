; ModuleID = '/llk/IR_all_yes/drivers/staging/fbtft/fb_ili9325.c_pt.bc'
source_filename = "../drivers/staging/fbtft/fb_ili9325.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__param_str_bt = internal constant [14 x i8] c"fb_ili9325.bt\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@bt = internal global { i32, [28 x i8] } { i32 6, [28 x i8] zeroinitializer }, align 32
@__param_bt = internal constant %struct.kernel_param { ptr @__param_str_bt, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @bt } }, section "__param", align 4
@__UNIQUE_ID_bttype303 = internal constant [28 x i8] c"fb_ili9325.parmtype=bt:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_bt304 = internal constant [64 x i8] c"fb_ili9325.parm=bt:Sets the factor used in the step-up circuits\00", section ".modinfo", align 1
@__param_str_vc = internal constant [14 x i8] c"fb_ili9325.vc\00", align 1
@vc = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@__param_vc = internal constant %struct.kernel_param { ptr @__param_str_vc, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @vc } }, section "__param", align 4
@__UNIQUE_ID_vctype305 = internal constant [28 x i8] c"fb_ili9325.parmtype=vc:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_vc306 = internal constant [88 x i8] c"fb_ili9325.parm=vc:Sets the ratio factor of Vci to generate the reference voltages Vci1\00", section ".modinfo", align 1
@__param_str_vrh = internal constant [15 x i8] c"fb_ili9325.vrh\00", align 1
@vrh = internal global { i32, [28 x i8] } { i32 13, [28 x i8] zeroinitializer }, align 32
@__param_vrh = internal constant %struct.kernel_param { ptr @__param_str_vrh, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @vrh } }, section "__param", align 4
@__UNIQUE_ID_vrhtype307 = internal constant [29 x i8] c"fb_ili9325.parmtype=vrh:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_vrh308 = internal constant [94 x i8] c"fb_ili9325.parm=vrh:Set the amplifying rate (1.6 ~ 1.9) of Vci applied to output the VREG1OUT\00", section ".modinfo", align 1
@__param_str_vdv = internal constant [15 x i8] c"fb_ili9325.vdv\00", align 1
@vdv = internal global { i32, [28 x i8] } { i32 18, [28 x i8] zeroinitializer }, align 32
@__param_vdv = internal constant %struct.kernel_param { ptr @__param_str_vdv, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @vdv } }, section "__param", align 4
@__UNIQUE_ID_vdvtype309 = internal constant [29 x i8] c"fb_ili9325.parmtype=vdv:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_vdv310 = internal constant [79 x i8] c"fb_ili9325.parm=vdv:Select the factor of VREG1OUT to set the amplitude of Vcom\00", section ".modinfo", align 1
@__param_str_vcm = internal constant [15 x i8] c"fb_ili9325.vcm\00", align 1
@vcm = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__param_vcm = internal constant %struct.kernel_param { ptr @__param_str_vcm, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @vcm } }, section "__param", align 4
@__UNIQUE_ID_vcmtype311 = internal constant [29 x i8] c"fb_ili9325.parmtype=vcm:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_vcm312 = internal constant [51 x i8] c"fb_ili9325.parm=vcm:Set the internal VcomH voltage\00", section ".modinfo", align 1
@fbtft_driver_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @fbtft_driver_probe_spi, ptr @fbtft_driver_remove_spi, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@fbtft_driver_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fbtft_driver_probe_pdev, ptr @fbtft_driver_remove_pdev, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_fb_ili9325__313_252_fbtft_driver_module_init6 = internal global ptr @fbtft_driver_module_init, section ".initcall6.init", align 4
@__exitcall_fbtft_driver_module_exit = internal global ptr @fbtft_driver_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias314 = internal constant [32 x i8] c"fb_ili9325.alias=spi:fb_ili9325\00", section ".modinfo", align 1
@__UNIQUE_ID_alias315 = internal constant [37 x i8] c"fb_ili9325.alias=platform:fb_ili9325\00", section ".modinfo", align 1
@__UNIQUE_ID_alias316 = internal constant [29 x i8] c"fb_ili9325.alias=spi:ili9325\00", section ".modinfo", align 1
@__UNIQUE_ID_alias317 = internal constant [34 x i8] c"fb_ili9325.alias=platform:ili9325\00", section ".modinfo", align 1
@__UNIQUE_ID_description318 = internal constant [64 x i8] c"fb_ili9325.description=FB driver for the ILI9325 LCD Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author319 = internal constant [33 x i8] c"fb_ili9325.author=Noralf Tronnes\00", section ".modinfo", align 1
@__UNIQUE_ID_file320 = internal constant [49 x i8] c"fb_ili9325.file=drivers/staging/fbtft/fb_ili9325\00", section ".modinfo", align 1
@__UNIQUE_ID_license321 = internal constant [23 x i8] c"fb_ili9325.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fb_ili9325\00", [21 x i8] zeroinitializer }, align 32
@dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ilitek,ili9325\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@display = internal global { %struct.fbtft_display, [40 x i8] } { %struct.fbtft_display { i32 240, i32 320, i32 16, i32 0, i32 0, %struct.fbtft_ops { ptr null, ptr null, ptr null, ptr null, ptr @set_addr_win, ptr null, ptr null, ptr null, ptr @init_display, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @set_var, ptr @set_gamma }, i32 16, i32 20, i32 0, ptr null, ptr @.str.1, i32 2, i32 10, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"0F 00 7 2 0 0 6 5 4 1\0A04 16 2 7 6 3 2 1 7 7\00", [52 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@set_gamma.mask = internal constant { [20 x i32], [48 x i8] } { [20 x i32] [i32 31, i32 31, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 31, i32 31, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 90, i64 180, i64 270]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 90, i64 180, i64 270]
@___asan_gen_.3 = private unnamed_addr constant [3 x i8] c"bt\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 25, i32 21 }
@___asan_gen_.6 = private unnamed_addr constant [3 x i8] c"vc\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 29, i32 21 }
@___asan_gen_.9 = private unnamed_addr constant [4 x i8] c"vrh\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 33, i32 21 }
@___asan_gen_.12 = private unnamed_addr constant [4 x i8] c"vdv\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 37, i32 21 }
@___asan_gen_.15 = private unnamed_addr constant [4 x i8] c"vcm\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 41, i32 21 }
@___asan_gen_.18 = private unnamed_addr constant [24 x i8] c"fbtft_driver_spi_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [29 x i8] c"fbtft_driver_platform_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"dt_ids\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 252, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 235, i32 29 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 243, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@___asan_gen_.37 = private constant [38 x i8] c"../drivers/staging/fbtft/fb_ili9325.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 207, i32 29 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_alias314, ptr @__UNIQUE_ID_alias315, ptr @__UNIQUE_ID_alias316, ptr @__UNIQUE_ID_alias317, ptr @__UNIQUE_ID_author319, ptr @__UNIQUE_ID_bt304, ptr @__UNIQUE_ID_bttype303, ptr @__UNIQUE_ID_description318, ptr @__UNIQUE_ID_file320, ptr @__UNIQUE_ID_license321, ptr @__UNIQUE_ID_vc306, ptr @__UNIQUE_ID_vcm312, ptr @__UNIQUE_ID_vcmtype311, ptr @__UNIQUE_ID_vctype305, ptr @__UNIQUE_ID_vdv310, ptr @__UNIQUE_ID_vdvtype309, ptr @__UNIQUE_ID_vrh308, ptr @__UNIQUE_ID_vrhtype307, ptr @__exitcall_fbtft_driver_module_exit, ptr @__initcall__kmod_fb_ili9325__313_252_fbtft_driver_module_init6, ptr @__param_bt, ptr @__param_vc, ptr @__param_vcm, ptr @__param_vdv, ptr @__param_vrh, ptr @fbtft_driver_module_exit, ptr @bt, ptr @vc, ptr @vrh, ptr @vdv, ptr @vcm, ptr @fbtft_driver_spi_driver, ptr @fbtft_driver_platform_driver, ptr @.str, ptr @dt_ids, ptr @display, ptr @.str.1, ptr @set_gamma.mask], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_gamma.mask to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fbtft_driver_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @fbtft_driver_spi_driver, i32 0, i32 4)) #3
  tail call void @platform_driver_unregister(ptr noundef nonnull @fbtft_driver_platform_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @fbtft_driver_spi_driver) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fbtft_driver_platform_driver, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @fbtft_driver_spi_driver, i32 0, i32 4)) #3
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
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fbtft_probe_common(ptr noundef nonnull @display, ptr noundef %spi, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_remove_spi(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @fbtft_remove_common(ptr noundef %spi, ptr noundef %1) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fbtft_probe_common(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_addr_win(ptr noundef %par, i32 noundef %xs, i32 noundef %ys, i32 noundef %xe, i32 noundef %ye) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 180, label %sw.bb3
    i32 270, label %sw.bb9
    i32 90, label %sw.bb15
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %5 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %6(ptr noundef %par, i32 noundef 2, i32 noundef 32, i32 noundef %xs) #3
  %7 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %8(ptr noundef %par, i32 noundef 2, i32 noundef 33, i32 noundef %ys) #3
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %write_register5 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %9 = ptrtoint ptr %write_register5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_register5, align 4
  %sub = sub i32 239, %xs
  tail call void (ptr, i32, ...) %10(ptr noundef %par, i32 noundef 2, i32 noundef 32, i32 noundef %sub) #3
  %11 = ptrtoint ptr %write_register5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_register5, align 4
  %sub8 = sub i32 319, %ys
  tail call void (ptr, i32, ...) %12(ptr noundef %par, i32 noundef 2, i32 noundef 33, i32 noundef %sub8) #3
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %write_register11 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %13 = ptrtoint ptr %write_register11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_register11, align 4
  %sub12 = sub i32 239, %ys
  tail call void (ptr, i32, ...) %14(ptr noundef %par, i32 noundef 2, i32 noundef 32, i32 noundef %sub12) #3
  %15 = ptrtoint ptr %write_register11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_register11, align 4
  tail call void (ptr, i32, ...) %16(ptr noundef %par, i32 noundef 2, i32 noundef 33, i32 noundef %xs) #3
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %write_register17 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %17 = ptrtoint ptr %write_register17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_register17, align 4
  tail call void (ptr, i32, ...) %18(ptr noundef %par, i32 noundef 2, i32 noundef 32, i32 noundef %ys) #3
  %19 = ptrtoint ptr %write_register17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_register17, align 4
  %sub20 = sub i32 319, %xs
  tail call void (ptr, i32, ...) %20(ptr noundef %par, i32 noundef 2, i32 noundef 33, i32 noundef %sub20) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb9, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %write_register22 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %21 = ptrtoint ptr %write_register22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_register22, align 4
  tail call void (ptr, i32, ...) %22(ptr noundef %par, i32 noundef 1, i32 noundef 34) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_display(ptr noundef %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %reset = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 5
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset, align 4
  tail call void %1(ptr noundef %par) #3
  %2 = load i32, ptr @bt, align 4
  %and = and i32 %2, 7
  store i32 %and, ptr @bt, align 4
  %3 = load i32, ptr @vc, align 4
  %and1 = and i32 %3, 7
  store i32 %and1, ptr @vc, align 4
  %4 = load i32, ptr @vrh, align 4
  %and2 = and i32 %4, 15
  store i32 %and2, ptr @vrh, align 4
  %5 = load i32, ptr @vdv, align 4
  %and3 = and i32 %5, 31
  store i32 %and3, ptr @vdv, align 4
  %6 = load i32, ptr @vcm, align 4
  %and4 = and i32 %6, 63
  store i32 %and4, ptr @vcm, align 4
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %7 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %8(ptr noundef %par, i32 noundef 2, i32 noundef 227, i32 noundef 12296) #3
  %9 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %10(ptr noundef %par, i32 noundef 2, i32 noundef 231, i32 noundef 18) #3
  %11 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %12(ptr noundef %par, i32 noundef 2, i32 noundef 239, i32 noundef 4657) #3
  %13 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %14(ptr noundef %par, i32 noundef 2, i32 noundef 1, i32 noundef 256) #3
  %15 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %16(ptr noundef %par, i32 noundef 2, i32 noundef 2, i32 noundef 1792) #3
  %17 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %18(ptr noundef %par, i32 noundef 2, i32 noundef 4, i32 noundef 0) #3
  %19 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %20(ptr noundef %par, i32 noundef 2, i32 noundef 8, i32 noundef 519) #3
  %21 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %22(ptr noundef %par, i32 noundef 2, i32 noundef 9, i32 noundef 0) #3
  %23 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %24(ptr noundef %par, i32 noundef 2, i32 noundef 10, i32 noundef 0) #3
  %25 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %26(ptr noundef %par, i32 noundef 2, i32 noundef 12, i32 noundef 0) #3
  %27 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %28(ptr noundef %par, i32 noundef 2, i32 noundef 13, i32 noundef 0) #3
  %29 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %30(ptr noundef %par, i32 noundef 2, i32 noundef 15, i32 noundef 0) #3
  %31 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %32(ptr noundef %par, i32 noundef 2, i32 noundef 16, i32 noundef 0) #3
  %33 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %34(ptr noundef %par, i32 noundef 2, i32 noundef 17, i32 noundef 7) #3
  %35 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %36(ptr noundef %par, i32 noundef 2, i32 noundef 18, i32 noundef 0) #3
  %37 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %38(ptr noundef %par, i32 noundef 2, i32 noundef 19, i32 noundef 0) #3
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %__ms.0187 = phi i32 [ 200, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0187, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #3
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.end:                                        ; preds = %while.body
  %40 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_register, align 4
  %42 = load i32, ptr @bt, align 4
  %shl = shl i32 %42, 8
  %or39 = or i32 %shl, 4240
  tail call void (ptr, i32, ...) %41(ptr noundef %par, i32 noundef 2, i32 noundef 16, i32 noundef %or39) #3
  %43 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_register, align 4
  %45 = load i32, ptr @vc, align 4
  %or42 = or i32 %45, 544
  tail call void (ptr, i32, ...) %44(ptr noundef %par, i32 noundef 2, i32 noundef 17, i32 noundef %or42) #3
  br label %while.body47

while.body47:                                     ; preds = %while.body47.while.body47_crit_edge, %while.end
  %__ms43.0188 = phi i32 [ 50, %while.end ], [ %dec45, %while.body47.while.body47_crit_edge ]
  %dec45 = add nsw i32 %__ms43.0188, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #3
  %tobool46.not = icmp eq i32 %dec45, 0
  br i1 %tobool46.not, label %while.end48, label %while.body47.while.body47_crit_edge

while.body47.while.body47_crit_edge:              ; preds = %while.body47
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body47

while.end48:                                      ; preds = %while.body47
  %47 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write_register, align 4
  %49 = load i32, ptr @vrh, align 4
  tail call void (ptr, i32, ...) %48(ptr noundef %par, i32 noundef 2, i32 noundef 18, i32 noundef %49) #3
  br label %while.body55

while.body55:                                     ; preds = %while.body55.while.body55_crit_edge, %while.end48
  %__ms51.0189 = phi i32 [ 50, %while.end48 ], [ %dec53, %while.body55.while.body55_crit_edge ]
  %dec53 = add nsw i32 %__ms51.0189, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #3
  %tobool54.not = icmp eq i32 %dec53, 0
  br i1 %tobool54.not, label %while.end56, label %while.body55.while.body55_crit_edge

while.body55.while.body55_crit_edge:              ; preds = %while.body55
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body55

while.end56:                                      ; preds = %while.body55
  %51 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write_register, align 4
  %53 = load i32, ptr @vdv, align 4
  %shl59 = shl i32 %53, 8
  tail call void (ptr, i32, ...) %52(ptr noundef %par, i32 noundef 2, i32 noundef 19, i32 noundef %shl59) #3
  %54 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write_register, align 4
  %56 = load i32, ptr @vcm, align 4
  tail call void (ptr, i32, ...) %55(ptr noundef %par, i32 noundef 2, i32 noundef 41, i32 noundef %56) #3
  %57 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %58(ptr noundef %par, i32 noundef 2, i32 noundef 43, i32 noundef 12) #3
  br label %while.body68

while.body68:                                     ; preds = %while.body68.while.body68_crit_edge, %while.end56
  %__ms64.0190 = phi i32 [ 50, %while.end56 ], [ %dec66, %while.body68.while.body68_crit_edge ]
  %dec66 = add nsw i32 %__ms64.0190, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #3
  %tobool67.not = icmp eq i32 %dec66, 0
  br i1 %tobool67.not, label %while.end69, label %while.body68.while.body68_crit_edge

while.body68.while.body68_crit_edge:              ; preds = %while.body68
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body68

while.end69:                                      ; preds = %while.body68
  call void @__sanitizer_cov_trace_pc() #5
  %60 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %61(ptr noundef %par, i32 noundef 2, i32 noundef 32, i32 noundef 0) #3
  %62 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %63(ptr noundef %par, i32 noundef 2, i32 noundef 33, i32 noundef 0) #3
  %64 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %65(ptr noundef %par, i32 noundef 2, i32 noundef 80, i32 noundef 0) #3
  %66 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %67(ptr noundef %par, i32 noundef 2, i32 noundef 81, i32 noundef 239) #3
  %68 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %69(ptr noundef %par, i32 noundef 2, i32 noundef 82, i32 noundef 0) #3
  %70 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %71(ptr noundef %par, i32 noundef 2, i32 noundef 83, i32 noundef 319) #3
  %72 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %73(ptr noundef %par, i32 noundef 2, i32 noundef 96, i32 noundef 42752) #3
  %74 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %75(ptr noundef %par, i32 noundef 2, i32 noundef 97, i32 noundef 1) #3
  %76 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %77(ptr noundef %par, i32 noundef 2, i32 noundef 106, i32 noundef 0) #3
  %78 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %79(ptr noundef %par, i32 noundef 2, i32 noundef 128, i32 noundef 0) #3
  %80 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %81(ptr noundef %par, i32 noundef 2, i32 noundef 129, i32 noundef 0) #3
  %82 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %83(ptr noundef %par, i32 noundef 2, i32 noundef 130, i32 noundef 0) #3
  %84 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %85(ptr noundef %par, i32 noundef 2, i32 noundef 131, i32 noundef 0) #3
  %86 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %87(ptr noundef %par, i32 noundef 2, i32 noundef 132, i32 noundef 0) #3
  %88 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %89(ptr noundef %par, i32 noundef 2, i32 noundef 133, i32 noundef 0) #3
  %90 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %91(ptr noundef %par, i32 noundef 2, i32 noundef 144, i32 noundef 16) #3
  %92 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %93(ptr noundef %par, i32 noundef 2, i32 noundef 146, i32 noundef 1536) #3
  %94 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %95(ptr noundef %par, i32 noundef 2, i32 noundef 7, i32 noundef 307) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_var(ptr noundef %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 180, label %sw.bb1
    i32 270, label %sw.bb9
    i32 90, label %sw.bb17
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %5 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_register, align 4
  %bgr = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 19
  %7 = ptrtoint ptr %bgr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bgr, align 8, !range !77
  %9 = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %9, 12
  %or = or i32 %shl, 48
  tail call void (ptr, i32, ...) %6(ptr noundef %par, i32 noundef 2, i32 noundef 3, i32 noundef %or) #3
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %write_register3 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %10 = ptrtoint ptr %write_register3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_register3, align 4
  %bgr4 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 19
  %12 = ptrtoint ptr %bgr4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bgr4, align 8, !range !77
  %14 = zext i8 %13 to i32
  %shl7 = shl nuw nsw i32 %14, 12
  tail call void (ptr, i32, ...) %11(ptr noundef %par, i32 noundef 2, i32 noundef 3, i32 noundef %shl7) #3
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %write_register11 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %15 = ptrtoint ptr %write_register11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_register11, align 4
  %bgr12 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 19
  %17 = ptrtoint ptr %bgr12 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bgr12, align 8, !range !77
  %19 = zext i8 %18 to i32
  %shl15 = shl nuw nsw i32 %19, 12
  %or16 = or i32 %shl15, 40
  tail call void (ptr, i32, ...) %16(ptr noundef %par, i32 noundef 2, i32 noundef 3, i32 noundef %or16) #3
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %write_register19 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %20 = ptrtoint ptr %write_register19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_register19, align 4
  %bgr20 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 19
  %22 = ptrtoint ptr %bgr20 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bgr20, align 8, !range !77
  %24 = zext i8 %23 to i32
  %shl23 = shl nuw nsw i32 %24, 12
  %or24 = or i32 %shl23, 24
  tail call void (ptr, i32, ...) %21(ptr noundef %par, i32 noundef 2, i32 noundef 3, i32 noundef %or24) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb9, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_gamma(ptr noundef %par, ptr noundef %curves) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %num_values = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 15, i32 2
  %0 = ptrtoint ptr %curves to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %curves, align 4
  %and = and i32 %1, 31
  store i32 %and, ptr %curves, align 4
  %arrayidx8.1 = getelementptr i32, ptr %curves, i32 1
  %2 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx8.1, align 4
  %and.1 = and i32 %3, 31
  store i32 %and.1, ptr %arrayidx8.1, align 4
  %arrayidx8.2 = getelementptr i32, ptr %curves, i32 2
  %4 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx8.2, align 4
  %and.2 = and i32 %5, 7
  store i32 %and.2, ptr %arrayidx8.2, align 4
  %arrayidx8.3 = getelementptr i32, ptr %curves, i32 3
  %6 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx8.3, align 4
  %and.3 = and i32 %7, 7
  store i32 %and.3, ptr %arrayidx8.3, align 4
  %arrayidx8.4 = getelementptr i32, ptr %curves, i32 4
  %8 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx8.4, align 4
  %and.4 = and i32 %9, 7
  store i32 %and.4, ptr %arrayidx8.4, align 4
  %arrayidx8.5 = getelementptr i32, ptr %curves, i32 5
  %10 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx8.5, align 4
  %and.5 = and i32 %11, 7
  store i32 %and.5, ptr %arrayidx8.5, align 4
  %arrayidx8.6 = getelementptr i32, ptr %curves, i32 6
  %12 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8.6, align 4
  %and.6 = and i32 %13, 7
  store i32 %and.6, ptr %arrayidx8.6, align 4
  %arrayidx8.7 = getelementptr i32, ptr %curves, i32 7
  %14 = ptrtoint ptr %arrayidx8.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx8.7, align 4
  %and.7 = and i32 %15, 7
  store i32 %and.7, ptr %arrayidx8.7, align 4
  %arrayidx8.8 = getelementptr i32, ptr %curves, i32 8
  %16 = ptrtoint ptr %arrayidx8.8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8.8, align 4
  %and.8 = and i32 %17, 7
  store i32 %and.8, ptr %arrayidx8.8, align 4
  %arrayidx8.9 = getelementptr i32, ptr %curves, i32 9
  %18 = ptrtoint ptr %arrayidx8.9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx8.9, align 4
  %and.9 = and i32 %19, 7
  store i32 %and.9, ptr %arrayidx8.9, align 4
  %20 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_values, align 8
  %arrayidx.1218 = getelementptr [20 x i32], ptr @set_gamma.mask, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.1218 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.1218, align 4
  %arrayidx8.1219 = getelementptr i32, ptr %curves, i32 %21
  %24 = ptrtoint ptr %arrayidx8.1219 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx8.1219, align 4
  %and.1220 = and i32 %25, %23
  store i32 %and.1220, ptr %arrayidx8.1219, align 4
  %26 = load i32, ptr %num_values, align 8
  %add.1.1 = add i32 %26, 1
  %arrayidx.1.1 = getelementptr [20 x i32], ptr @set_gamma.mask, i32 0, i32 %add.1.1
  %27 = ptrtoint ptr %arrayidx.1.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.1.1, align 4
  %arrayidx8.1.1 = getelementptr i32, ptr %curves, i32 %add.1.1
  %29 = ptrtoint ptr %arrayidx8.1.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx8.1.1, align 4
  %and.1.1 = and i32 %30, %28
  store i32 %and.1.1, ptr %arrayidx8.1.1, align 4
  %31 = load i32, ptr %num_values, align 8
  %add.2.1 = add i32 %31, 2
  %arrayidx.2.1 = getelementptr [20 x i32], ptr @set_gamma.mask, i32 0, i32 %add.2.1
  %32 = ptrtoint ptr %arrayidx.2.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.2.1, align 4
  %arrayidx8.2.1 = getelementptr i32, ptr %curves, i32 %add.2.1
  %34 = ptrtoint ptr %arrayidx8.2.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx8.2.1, align 4
  %and.2.1 = and i32 %35, %33
  store i32 %and.2.1, ptr %arrayidx8.2.1, align 4
  %36 = load i32, ptr %num_values, align 8
  %add.3.1 = add i32 %36, 3
  %arrayidx.3.1 = getelementptr [20 x i32], ptr @set_gamma.mask, i32 0, i32 %add.3.1
  %37 = ptrtoint ptr %arrayidx.3.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.3.1, align 4
  %arrayidx8.3.1 = getelementptr i32, ptr %curves, i32 %add.3.1
  %39 = ptrtoint ptr %arrayidx8.3.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx8.3.1, align 4
  %and.3.1 = and i32 %40, %38
  store i32 %and.3.1, ptr %arrayidx8.3.1, align 4
  %41 = load i32, ptr %num_values, align 8
  %add.4.1 = add i32 %41, 4
  %arrayidx.4.1 = getelementptr [20 x i32], ptr @set_gamma.mask, i32 0, i32 %add.4.1
  %42 = ptrtoint ptr %arrayidx.4.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.4.1, align 4
  %arrayidx8.4.1 = getelementptr i32, ptr %curves, i32 %add.4.1
  %44 = ptrtoint ptr %arrayidx8.4.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx8.4.1, align 4
  %and.4.1 = and i32 %45, %43
  store i32 %and.4.1, ptr %arrayidx8.4.1, align 4
  %46 = load i32, ptr %num_values, align 8
  %add.5.1 = add i32 %46, 5
  %arrayidx.5.1 = getelementptr [20 x i32], ptr @set_gamma.mask, i32 0, i32 %add.5.1
  %47 = ptrtoint ptr %arrayidx.5.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.5.1, align 4
  %arrayidx8.5.1 = getelementptr i32, ptr %curves, i32 %add.5.1
  %49 = ptrtoint ptr %arrayidx8.5.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx8.5.1, align 4
  %and.5.1 = and i32 %50, %48
  store i32 %and.5.1, ptr %arrayidx8.5.1, align 4
  %51 = load i32, ptr %num_values, align 8
  %add.6.1 = add i32 %51, 6
  %arrayidx.6.1 = getelementptr [20 x i32], ptr @set_gamma.mask, i32 0, i32 %add.6.1
  %52 = ptrtoint ptr %arrayidx.6.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.6.1, align 4
  %arrayidx8.6.1 = getelementptr i32, ptr %curves, i32 %add.6.1
  %54 = ptrtoint ptr %arrayidx8.6.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx8.6.1, align 4
  %and.6.1 = and i32 %55, %53
  store i32 %and.6.1, ptr %arrayidx8.6.1, align 4
  %56 = load i32, ptr %num_values, align 8
  %add.7.1 = add i32 %56, 7
  %arrayidx.7.1 = getelementptr [20 x i32], ptr @set_gamma.mask, i32 0, i32 %add.7.1
  %57 = ptrtoint ptr %arrayidx.7.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.7.1, align 4
  %arrayidx8.7.1 = getelementptr i32, ptr %curves, i32 %add.7.1
  %59 = ptrtoint ptr %arrayidx8.7.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx8.7.1, align 4
  %and.7.1 = and i32 %60, %58
  store i32 %and.7.1, ptr %arrayidx8.7.1, align 4
  %61 = load i32, ptr %num_values, align 8
  %add.8.1 = add i32 %61, 8
  %arrayidx.8.1 = getelementptr [20 x i32], ptr @set_gamma.mask, i32 0, i32 %add.8.1
  %62 = ptrtoint ptr %arrayidx.8.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.8.1, align 4
  %arrayidx8.8.1 = getelementptr i32, ptr %curves, i32 %add.8.1
  %64 = ptrtoint ptr %arrayidx8.8.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx8.8.1, align 4
  %and.8.1 = and i32 %65, %63
  store i32 %and.8.1, ptr %arrayidx8.8.1, align 4
  %66 = load i32, ptr %num_values, align 8
  %add.9.1 = add i32 %66, 9
  %arrayidx.9.1 = getelementptr [20 x i32], ptr @set_gamma.mask, i32 0, i32 %add.9.1
  %67 = ptrtoint ptr %arrayidx.9.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.9.1, align 4
  %arrayidx8.9.1 = getelementptr i32, ptr %curves, i32 %add.9.1
  %69 = ptrtoint ptr %arrayidx8.9.1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx8.9.1, align 4
  %and.9.1 = and i32 %70, %68
  store i32 %and.9.1, ptr %arrayidx8.9.1, align 4
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %71 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write_register, align 4
  %73 = load i32, ptr %arrayidx8.5, align 4
  %shl = shl i32 %73, 8
  %74 = load i32, ptr %arrayidx8.4, align 4
  %or = or i32 %shl, %74
  tail call void (ptr, i32, ...) %72(ptr noundef %par, i32 noundef 2, i32 noundef 48, i32 noundef %or) #3
  %75 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write_register, align 4
  %77 = ptrtoint ptr %arrayidx8.7 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx8.7, align 4
  %shl29 = shl i32 %78, 8
  %79 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx8.6, align 4
  %or35 = or i32 %shl29, %80
  tail call void (ptr, i32, ...) %76(ptr noundef %par, i32 noundef 2, i32 noundef 49, i32 noundef %or35) #3
  %81 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write_register, align 4
  %83 = ptrtoint ptr %arrayidx8.9 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx8.9, align 4
  %shl43 = shl i32 %84, 8
  %85 = ptrtoint ptr %arrayidx8.8 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx8.8, align 4
  %or49 = or i32 %shl43, %86
  tail call void (ptr, i32, ...) %82(ptr noundef %par, i32 noundef 2, i32 noundef 50, i32 noundef %or49) #3
  %87 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write_register, align 4
  %89 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx8.3, align 4
  %shl57 = shl i32 %90, 8
  %91 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx8.2, align 4
  %or63 = or i32 %shl57, %92
  tail call void (ptr, i32, ...) %88(ptr noundef %par, i32 noundef 2, i32 noundef 53, i32 noundef %or63) #3
  %93 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write_register, align 4
  %95 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx8.1, align 4
  %shl71 = shl i32 %96, 8
  %97 = ptrtoint ptr %curves to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %curves, align 4
  %or77 = or i32 %shl71, %98
  tail call void (ptr, i32, ...) %94(ptr noundef %par, i32 noundef 2, i32 noundef 54, i32 noundef %or77) #3
  %99 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %write_register, align 4
  %101 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %num_values, align 8
  %add83 = add i32 %102, 5
  %arrayidx84 = getelementptr i32, ptr %curves, i32 %add83
  %103 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx84, align 4
  %shl85 = shl i32 %104, 8
  %add89 = add i32 %102, 4
  %arrayidx90 = getelementptr i32, ptr %curves, i32 %add89
  %105 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx90, align 4
  %or91 = or i32 %shl85, %106
  tail call void (ptr, i32, ...) %100(ptr noundef %par, i32 noundef 2, i32 noundef 55, i32 noundef %or91) #3
  %107 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write_register, align 4
  %109 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %num_values, align 8
  %add97 = add i32 %110, 7
  %arrayidx98 = getelementptr i32, ptr %curves, i32 %add97
  %111 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx98, align 4
  %shl99 = shl i32 %112, 8
  %add103 = add i32 %110, 6
  %arrayidx104 = getelementptr i32, ptr %curves, i32 %add103
  %113 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx104, align 4
  %or105 = or i32 %shl99, %114
  tail call void (ptr, i32, ...) %108(ptr noundef %par, i32 noundef 2, i32 noundef 56, i32 noundef %or105) #3
  %115 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write_register, align 4
  %117 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %num_values, align 8
  %add111 = add i32 %118, 9
  %arrayidx112 = getelementptr i32, ptr %curves, i32 %add111
  %119 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx112, align 4
  %shl113 = shl i32 %120, 8
  %add117 = add i32 %118, 8
  %arrayidx118 = getelementptr i32, ptr %curves, i32 %add117
  %121 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx118, align 4
  %or119 = or i32 %shl113, %122
  tail call void (ptr, i32, ...) %116(ptr noundef %par, i32 noundef 2, i32 noundef 57, i32 noundef %or119) #3
  %123 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %write_register, align 4
  %125 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %num_values, align 8
  %add125 = add i32 %126, 3
  %arrayidx126 = getelementptr i32, ptr %curves, i32 %add125
  %127 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx126, align 4
  %shl127 = shl i32 %128, 8
  %add131 = add i32 %126, 2
  %arrayidx132 = getelementptr i32, ptr %curves, i32 %add131
  %129 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx132, align 4
  %or133 = or i32 %shl127, %130
  tail call void (ptr, i32, ...) %124(ptr noundef %par, i32 noundef 2, i32 noundef 60, i32 noundef %or133) #3
  %131 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %write_register, align 4
  %133 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %num_values, align 8
  %add139 = add i32 %134, 1
  %arrayidx140 = getelementptr i32, ptr %curves, i32 %add139
  %135 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx140, align 4
  %shl141 = shl i32 %136, 8
  %arrayidx146 = getelementptr i32, ptr %curves, i32 %134
  %137 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx146, align 4
  %or147 = or i32 %shl141, %138
  tail call void (ptr, i32, ...) %132(ptr noundef %par, i32 noundef 2, i32 noundef 61, i32 noundef %or147) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbtft_remove_common(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_probe_pdev(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fbtft_probe_common(ptr noundef nonnull @display, ptr noundef null, ptr noundef %pdev) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_remove_pdev(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @fbtft_remove_common(ptr noundef %dev, ptr noundef %1) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !60, !62, !64, !66, !67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__param_bt, !1, !"__param_bt", i1 false, i1 false}
!1 = !{!"../drivers/staging/fbtft/fb_ili9325.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_bttype303, !1, !"__UNIQUE_ID_bttype303", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_bt304, !4, !"__UNIQUE_ID_bt304", i1 false, i1 false}
!4 = !{!"../drivers/staging/fbtft/fb_ili9325.c", i32 27, i32 1}
!5 = !{ptr @__param_vc, !6, !"__param_vc", i1 false, i1 false}
!6 = !{!"../drivers/staging/fbtft/fb_ili9325.c", i32 30, i32 1}
!7 = !{ptr @__UNIQUE_ID_vctype305, !6, !"__UNIQUE_ID_vctype305", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_vc306, !9, !"__UNIQUE_ID_vc306", i1 false, i1 false}
!9 = !{!"../drivers/staging/fbtft/fb_ili9325.c", i32 31, i32 1}
!10 = !{ptr @__param_vrh, !11, !"__param_vrh", i1 false, i1 false}
!11 = !{!"../drivers/staging/fbtft/fb_ili9325.c", i32 34, i32 1}
!12 = !{ptr @__UNIQUE_ID_vrhtype307, !11, !"__UNIQUE_ID_vrhtype307", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_vrh308, !14, !"__UNIQUE_ID_vrh308", i1 false, i1 false}
!14 = !{!"../drivers/staging/fbtft/fb_ili9325.c", i32 35, i32 1}
!15 = !{ptr @__param_vdv, !16, !"__param_vdv", i1 false, i1 false}
!16 = !{!"../drivers/staging/fbtft/fb_ili9325.c", i32 38, i32 1}
!17 = !{ptr @__UNIQUE_ID_vdvtype309, !16, !"__UNIQUE_ID_vdvtype309", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_vdv310, !19, !"__UNIQUE_ID_vdv310", i1 false, i1 false}
!19 = !{!"../drivers/staging/fbtft/fb_ili9325.c", i32 39, i32 1}
!20 = !{ptr @__param_vcm, !21, !"__param_vcm", i1 false, i1 false}
!21 = !{!"../drivers/staging/fbtft/fb_ili9325.c", i32 42, i32 1}
!22 = !{ptr @__UNIQUE_ID_vcmtype311, !21, !"__UNIQUE_ID_vcmtype311", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_vcm312, !24, !"__UNIQUE_ID_vcm312", i1 false, i1 false}
!24 = !{!"../drivers/staging/fbtft/fb_ili9325.c", i32 43, i32 1}
!25 = !{ptr @__initcall__kmod_fb_ili9325__313_252_fbtft_driver_module_init6, !26, !"__initcall__kmod_fb_ili9325__313_252_fbtft_driver_module_init6", i1 false, i1 false}
!26 = !{!"../drivers/staging/fbtft/fb_ili9325.c", i32 252, i32 1}
!27 = !{ptr @__exitcall_fbtft_driver_module_exit, !26, !"__exitcall_fbtft_driver_module_exit", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_alias314, !29, !"__UNIQUE_ID_alias314", i1 false, i1 false}
!29 = !{!"../drivers/staging/fbtft/fb_ili9325.c", i32 254, i32 1}
!30 = !{ptr @__UNIQUE_ID_alias315, !31, !"__UNIQUE_ID_alias315", i1 false, i1 false}
!31 = !{!"../drivers/staging/fbtft/fb_ili9325.c", i32 255, i32 1}
!32 = !{ptr @__UNIQUE_ID_alias316, !33, !"__UNIQUE_ID_alias316", i1 false, i1 false}
!33 = !{!"../drivers/staging/fbtft/fb_ili9325.c", i32 256, i32 1}
!34 = !{ptr @__UNIQUE_ID_alias317, !35, !"__UNIQUE_ID_alias317", i1 false, i1 false}
!35 = !{!"../drivers/staging/fbtft/fb_ili9325.c", i32 257, i32 1}
!36 = !{ptr @__UNIQUE_ID_description318, !37, !"__UNIQUE_ID_description318", i1 false, i1 false}
!37 = !{!"../drivers/staging/fbtft/fb_ili9325.c", i32 259, i32 1}
!38 = !{ptr @__UNIQUE_ID_author319, !39, !"__UNIQUE_ID_author319", i1 false, i1 false}
!39 = !{!"../drivers/staging/fbtft/fb_ili9325.c", i32 260, i32 1}
!40 = !{ptr @__UNIQUE_ID_file320, !41, !"__UNIQUE_ID_file320", i1 false, i1 false}
!41 = !{!"../drivers/staging/fbtft/fb_ili9325.c", i32 261, i32 1}
!42 = !{ptr @__UNIQUE_ID_license321, !41, !"__UNIQUE_ID_license321", i1 false, i1 false}
!43 = !{ptr @__param_str_bt, !1, !"__param_str_bt", i1 false, i1 false}
!44 = !{ptr @bt, !45, !"bt", i1 false, i1 false}
!45 = !{!"../drivers/staging/fbtft/fb_ili9325.c", i32 25, i32 21}
!46 = !{ptr @__param_str_vc, !6, !"__param_str_vc", i1 false, i1 false}
!47 = !{ptr @vc, !48, !"vc", i1 false, i1 false}
!48 = !{!"../drivers/staging/fbtft/fb_ili9325.c", i32 29, i32 21}
!49 = !{ptr @__param_str_vrh, !11, !"__param_str_vrh", i1 false, i1 false}
!50 = !{ptr @vrh, !51, !"vrh", i1 false, i1 false}
!51 = !{!"../drivers/staging/fbtft/fb_ili9325.c", i32 33, i32 21}
!52 = !{ptr @__param_str_vdv, !16, !"__param_str_vdv", i1 false, i1 false}
!53 = !{ptr @vdv, !54, !"vdv", i1 false, i1 false}
!54 = !{!"../drivers/staging/fbtft/fb_ili9325.c", i32 37, i32 21}
!55 = !{ptr @__param_str_vcm, !21, !"__param_str_vcm", i1 false, i1 false}
!56 = !{ptr @vcm, !57, !"vcm", i1 false, i1 false}
!57 = !{!"../drivers/staging/fbtft/fb_ili9325.c", i32 41, i32 21}
!58 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @fbtft_driver_spi_driver, !26, !"fbtft_driver_spi_driver", i1 false, i1 false}
!60 = !{ptr @.str.1, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/fbtft/fb_ili9325.c", i32 243, i32 11}
!62 = !{ptr @display, !63, !"display", i1 false, i1 false}
!63 = !{!"../drivers/staging/fbtft/fb_ili9325.c", i32 235, i32 29}
!64 = !{ptr @set_gamma.mask, !65, !"mask", i1 false, i1 false}
!65 = !{!"../drivers/staging/fbtft/fb_ili9325.c", i32 207, i32 29}
!66 = !{ptr @dt_ids, !26, !"dt_ids", i1 false, i1 false}
!67 = !{ptr @fbtft_driver_platform_driver, !26, !"fbtft_driver_platform_driver", i1 false, i1 false}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i8 0, i8 2}
