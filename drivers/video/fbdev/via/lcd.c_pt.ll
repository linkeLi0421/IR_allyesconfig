; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/via/lcd.c_pt.bc'
source_filename = "../drivers/video/fbdev/via/lcd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct._lcd_scaling_factor = type { %struct._lcd_hor_scaling_factor, %struct._lcd_ver_scaling_factor }
%struct._lcd_hor_scaling_factor = type { i32, [3 x %struct.io_register] }
%struct.io_register = type { i8, i8, i8 }
%struct._lcd_ver_scaling_factor = type { i32, [3 x %struct.io_register] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.viafb_par = type { i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.lvds_setting_information = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.chip_information = type { i32, i32, i32, %struct.tmds_chip_information, %struct.lvds_chip_information, %struct.lvds_chip_information }
%struct.tmds_chip_information = type { i32, i32, i32, i32 }
%struct.lvds_chip_information = type { i32, i32, i32, i32 }
%struct.via_display_timing = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@viafb_lcd_panel_id = external dso_local local_unnamed_addr global i32, align 4
@viaparinfo = external dso_local local_unnamed_addr global ptr, align 4
@viafb_LCD2_ON = external dso_local local_unnamed_addr global i32, align 4
@viafb_display_hardware_layout = external dso_local local_unnamed_addr global i32, align 4
@lcd_scaling_factor_CLE = internal global { %struct._lcd_scaling_factor, [32 x i8] } { %struct._lcd_scaling_factor { %struct._lcd_hor_scaling_factor { i32 2, [3 x %struct.io_register] [%struct.io_register { i8 119, i8 0, i8 7 }, %struct.io_register { i8 121, i8 4, i8 5 }, %struct.io_register zeroinitializer] }, %struct._lcd_ver_scaling_factor { i32 2, [3 x %struct.io_register] [%struct.io_register { i8 120, i8 0, i8 7 }, %struct.io_register { i8 121, i8 6, i8 7 }, %struct.io_register zeroinitializer] } }, [32 x i8] zeroinitializer }, align 32
@lcd_scaling_factor = internal global { %struct._lcd_scaling_factor, [32 x i8] } { %struct._lcd_scaling_factor { %struct._lcd_hor_scaling_factor { i32 3, [3 x %struct.io_register] [%struct.io_register { i8 -97, i8 0, i8 1 }, %struct.io_register { i8 119, i8 0, i8 7 }, %struct.io_register { i8 121, i8 4, i8 5 }] }, %struct._lcd_ver_scaling_factor { i32 3, [3 x %struct.io_register] [%struct.io_register { i8 121, i8 3, i8 3 }, %struct.io_register { i8 120, i8 0, i8 7 }, %struct.io_register { i8 121, i8 6, i8 7 }] } }, [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@switch.table.viafb_init_lcd_size = internal constant { [24 x i32], [32 x i8] } { [24 x i32] [i32 640, i32 800, i32 1024, i32 1280, i32 1280, i32 1400, i32 1600, i32 800, i32 800, i32 1024, i32 1024, i32 1024, i32 1280, i32 1280, i32 1400, i32 1600, i32 1366, i32 1024, i32 1280, i32 1280, i32 1360, i32 1280, i32 480, i32 1200], [32 x i8] zeroinitializer }, align 32
@switch.table.viafb_init_lcd_size.1 = internal constant { [24 x i32], [32 x i8] } { [24 x i32] [i32 480, i32 600, i32 768, i32 768, i32 1024, i32 1050, i32 1200, i32 600, i32 480, i32 768, i32 768, i32 768, i32 768, i32 1024, i32 1050, i32 1200, i32 768, i32 600, i32 768, i32 800, i32 768, i32 768, i32 640, i32 900], [32 x i8] zeroinitializer }, align 32
@switch.table.viafb_init_lcd_size.2 = internal constant { [24 x i32], [32 x i8] } { [24 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@switch.table.viafb_init_lcd_size.3 = internal constant { [24 x i32], [32 x i8] } { [24 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 16]
@__sancov_gen_cov_switch_values.4 = internal global [15 x i64] [i64 13, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.5 = internal global [15 x i64] [i64 13, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 8]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.13 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 14, i64 65]
@__sancov_gen_cov_switch_values.17 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 16]
@___asan_gen_.18 = private unnamed_addr constant [23 x i8] c"lcd_scaling_factor_CLE\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 30, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"lcd_scaling_factor\00", align 1
@___asan_gen_.22 = private constant [33 x i8] c"../drivers/video/fbdev/via/lcd.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 22, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [33 x i8] c"switch.table.viafb_init_lcd_size\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [35 x i8] c"switch.table.viafb_init_lcd_size.1\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [35 x i8] c"switch.table.viafb_init_lcd_size.2\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [35 x i8] c"switch.table.viafb_init_lcd_size.3\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @lcd_scaling_factor_CLE, ptr @lcd_scaling_factor, ptr @switch.table.viafb_init_lcd_size, ptr @switch.table.viafb_init_lcd_size.1, ptr @switch.table.viafb_init_lcd_size.2, ptr @switch.table.viafb_init_lcd_size.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_scaling_factor_CLE to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_scaling_factor to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.viafb_init_lcd_size to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.viafb_init_lcd_size.1 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.viafb_init_lcd_size.2 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.viafb_init_lcd_size.3 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_init_lcd_size() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_lcd_panel_id to i32))
  %0 = load i32, ptr @viafb_lcd_panel_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %0)
  %cmp.i = icmp sgt i32 %0, 23
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 63) #5, !srcloc !18
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %2 = and i8 %1, 15
  %and.i = zext i8 %2 to i32
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_lcd_panel_id to i32))
  store i32 %and.i, ptr @viafb_lcd_panel_id, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %panel_id.addr.0.i = phi i32 [ %and.i, %if.then.i ], [ %0, %entry.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %panel_id.addr.0.i)
  %3 = icmp ult i32 %panel_id.addr.0.i, 24
  br i1 %3, label %switch.lookup, label %if.end.i.fp_id_to_vindex.exit_crit_edge

if.end.i.fp_id_to_vindex.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fp_id_to_vindex.exit

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [24 x i32], ptr @switch.table.viafb_init_lcd_size, i32 0, i32 %panel_id.addr.0.i
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep12 = getelementptr inbounds [24 x i32], ptr @switch.table.viafb_init_lcd_size.1, i32 0, i32 %panel_id.addr.0.i
  %5 = ptrtoint ptr %switch.gep12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load13 = load i32, ptr %switch.gep12, align 4
  %switch.gep14 = getelementptr inbounds [24 x i32], ptr @switch.table.viafb_init_lcd_size.2, i32 0, i32 %panel_id.addr.0.i
  %6 = ptrtoint ptr %switch.gep14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load15 = load i32, ptr %switch.gep14, align 4
  %switch.gep16 = getelementptr inbounds [24 x i32], ptr @switch.table.viafb_init_lcd_size.3, i32 0, i32 %panel_id.addr.0.i
  %7 = ptrtoint ptr %switch.gep16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load17 = load i32, ptr %switch.gep16, align 4
  br label %fp_id_to_vindex.exit

fp_id_to_vindex.exit:                             ; preds = %switch.lookup, %if.end.i.fp_id_to_vindex.exit_crit_edge
  %.sink218.i = phi i32 [ %switch.load, %switch.lookup ], [ 800, %if.end.i.fp_id_to_vindex.exit_crit_edge ]
  %.sink215.i = phi i32 [ %switch.load13, %switch.lookup ], [ 600, %if.end.i.fp_id_to_vindex.exit_crit_edge ]
  %.sink212.i = phi i32 [ %switch.load15, %switch.lookup ], [ 0, %if.end.i.fp_id_to_vindex.exit_crit_edge ]
  %.sink.i = phi i32 [ %switch.load17, %switch.lookup ], [ 1, %if.end.i.fp_id_to_vindex.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %8 = load ptr, ptr @viaparinfo, align 4
  %lvds_setting_info202.i = getelementptr inbounds %struct.viafb_par, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %lvds_setting_info202.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lvds_setting_info202.i, align 4
  %lcd_panel_hres203.i = getelementptr inbounds %struct.lvds_setting_information, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %lcd_panel_hres203.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink218.i, ptr %lcd_panel_hres203.i, align 4
  %12 = load ptr, ptr %lvds_setting_info202.i, align 4
  %lcd_panel_vres205.i = getelementptr inbounds %struct.lvds_setting_information, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %lcd_panel_vres205.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink215.i, ptr %lcd_panel_vres205.i, align 4
  %14 = load ptr, ptr %lvds_setting_info202.i, align 4
  %device_lcd_dualedge207.i = getelementptr inbounds %struct.lvds_setting_information, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %device_lcd_dualedge207.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink212.i, ptr %device_lcd_dualedge207.i, align 4
  %16 = load ptr, ptr %lvds_setting_info202.i, align 4
  %LCDDithering209.i = getelementptr inbounds %struct.lvds_setting_information, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %LCDDithering209.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink.i, ptr %LCDDithering209.i, align 4
  %18 = load ptr, ptr %lvds_setting_info202.i, align 4
  %lcd_panel_hres = getelementptr inbounds %struct.lvds_setting_information, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %lcd_panel_hres to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lcd_panel_hres, align 4
  %lvds_setting_info2 = getelementptr inbounds %struct.viafb_par, ptr %8, i32 0, i32 10
  %21 = ptrtoint ptr %lvds_setting_info2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lvds_setting_info2, align 4
  %lcd_panel_hres1 = getelementptr inbounds %struct.lvds_setting_information, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %lcd_panel_hres1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %20, ptr %lcd_panel_hres1, align 4
  %24 = load ptr, ptr %lvds_setting_info202.i, align 4
  %lcd_panel_vres = getelementptr inbounds %struct.lvds_setting_information, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %lcd_panel_vres to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lcd_panel_vres, align 4
  %27 = load ptr, ptr %lvds_setting_info2, align 4
  %lcd_panel_vres5 = getelementptr inbounds %struct.lvds_setting_information, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %lcd_panel_vres5 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %26, ptr %lcd_panel_vres5, align 4
  %29 = load ptr, ptr %lvds_setting_info202.i, align 4
  %device_lcd_dualedge = getelementptr inbounds %struct.lvds_setting_information, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %device_lcd_dualedge to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %device_lcd_dualedge, align 4
  %32 = load ptr, ptr %lvds_setting_info2, align 4
  %device_lcd_dualedge8 = getelementptr inbounds %struct.lvds_setting_information, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %device_lcd_dualedge8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %31, ptr %device_lcd_dualedge8, align 4
  %34 = load ptr, ptr %lvds_setting_info202.i, align 4
  %LCDDithering = getelementptr inbounds %struct.lvds_setting_information, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %LCDDithering to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %LCDDithering, align 4
  %37 = load ptr, ptr %lvds_setting_info2, align 4
  %LCDDithering11 = getelementptr inbounds %struct.lvds_setting_information, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %LCDDithering11 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %36, ptr %LCDDithering11, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @viafb_lvds_trasmitter_identify() local_unnamed_addr #0 align 64 {
entry:
  %data.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @viafb_lvds_identify_vt1636(i8 noundef zeroext 1) #5
  br i1 %call, label %entry.if.end7.sink.split_crit_edge, label %if.else

entry.if.end7.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.sink.split

if.else:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @viafb_lvds_identify_vt1636(i8 noundef zeroext 3) #5
  br i1 %call1, label %if.else.if.end7.sink.split_crit_edge, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.else.if.end7.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.sink.split

if.end7.sink.split:                               ; preds = %if.else.if.end7.sink.split_crit_edge, %entry.if.end7.sink.split_crit_edge
  %.sink = phi i32 [ 1, %entry.if.end7.sink.split_crit_edge ], [ 3, %if.else.if.end7.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %0 = load ptr, ptr @viaparinfo, align 4
  %chip_info3 = getelementptr inbounds %struct.viafb_par, ptr %0, i32 0, i32 11
  %1 = ptrtoint ptr %chip_info3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip_info3, align 4
  %i2c_port5 = getelementptr inbounds %struct.chip_information, ptr %2, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %i2c_port5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink, ptr %i2c_port5, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %if.else.if.end7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %4 = load ptr, ptr @viaparinfo, align 4
  %chip_info8 = getelementptr inbounds %struct.viafb_par, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %chip_info8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip_info8, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %cmp = icmp eq i32 %8, 6
  br i1 %cmp, label %if.then9, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_display_hardware_layout to i32))
  %9 = load i32, ptr @viafb_display_hardware_layout, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.then20.i [
    i32 16, label %if.then.i
    i32 4, label %if.then10.i
    i32 2, label %if.else31.i
  ]

if.then.i:                                        ; preds = %if.then9
  %lvds_chip_info.i = getelementptr inbounds %struct.chip_information, ptr %6, i32 0, i32 4
  %11 = ptrtoint ptr %lvds_chip_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lvds_chip_info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %lvds_chip_info2.i = getelementptr inbounds %struct.chip_information, ptr %6, i32 0, i32 5
  %13 = ptrtoint ptr %lvds_chip_info2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65, ptr %lvds_chip_info2.i, align 4
  br label %if.end11

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %lvds_chip_info.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 65, ptr %lvds_chip_info.i, align 4
  br label %if.end11

if.then10.i:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %lvds_chip_info12.i = getelementptr inbounds %struct.chip_information, ptr %6, i32 0, i32 4
  %15 = ptrtoint ptr %lvds_chip_info12.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 65, ptr %lvds_chip_info12.i, align 4
  %16 = ptrtoint ptr %chip_info8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip_info8, align 4
  %lvds_chip_info215.i = getelementptr inbounds %struct.chip_information, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %lvds_chip_info215.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 65, ptr %lvds_chip_info215.i, align 4
  br label %if.end11

if.then20.i:                                      ; preds = %if.then9
  %lvds_chip_info22.i = getelementptr inbounds %struct.chip_information, ptr %6, i32 0, i32 4
  %19 = ptrtoint ptr %lvds_chip_info22.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lvds_chip_info22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool24.not.i = icmp eq i32 %20, 0
  br i1 %tobool24.not.i, label %if.then25.i, label %if.then20.i.if.end11_crit_edge

if.then20.i.if.end11_crit_edge:                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then25.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %lvds_chip_info22.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 65, ptr %lvds_chip_info22.i, align 4
  br label %if.end11

if.else31.i:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %lvds_chip_info33.i = getelementptr inbounds %struct.chip_information, ptr %6, i32 0, i32 4
  %22 = ptrtoint ptr %lvds_chip_info33.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %lvds_chip_info33.i, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else31.i, %if.then25.i, %if.then20.i.if.end11_crit_edge, %if.then10.i, %if.else.i, %if.then1.i, %if.end7.if.end11_crit_edge
  %23 = ptrtoint ptr %chip_info8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chip_info8, align 4
  %lvds_chip_info13 = getelementptr inbounds %struct.chip_information, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %lvds_chip_info13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lvds_chip_info13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not = icmp eq i32 %26, 0
  br i1 %tobool.not, label %if.end15, label %if.end11.return_crit_edge

if.end11.return_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end15:                                         ; preds = %if.end11
  %27 = ptrtoint ptr %lvds_chip_info13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %lvds_chip_info13, align 4
  %28 = ptrtoint ptr %chip_info8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip_info8, align 4
  %lvds_chip_slave_addr = getelementptr inbounds %struct.chip_information, ptr %29, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %lvds_chip_slave_addr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 112, ptr %lvds_chip_slave_addr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #5
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %data.i.i, align 1, !annotation !21
  %32 = ptrtoint ptr %chip_info8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chip_info8, align 4
  %lvds_chip_slave_addr.i.i = getelementptr inbounds %struct.chip_information, ptr %33, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %lvds_chip_slave_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lvds_chip_slave_addr.i.i, align 4
  %conv.i.i = trunc i32 %35 to i8
  %call.i.i = call i32 @viafb_i2c_readbyte(i8 noundef zeroext 3, i8 noundef zeroext %conv.i.i, i8 noundef zeroext 2, ptr noundef nonnull %data.i.i) #5
  %36 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %data.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -110, i8 %37)
  %cmp.i = icmp eq i8 %37, -110
  br i1 %cmp.i, label %if.end15.return_crit_edge, label %if.end26

if.end15.return_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end26:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %38 = load ptr, ptr @viaparinfo, align 4
  %chip_info27 = getelementptr inbounds %struct.viafb_par, ptr %38, i32 0, i32 11
  %39 = ptrtoint ptr %chip_info27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip_info27, align 4
  %lvds_chip_info28 = getelementptr inbounds %struct.chip_information, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %lvds_chip_info28 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %lvds_chip_info28, align 4
  %42 = load ptr, ptr %chip_info27, align 4
  %lvds_chip_slave_addr32 = getelementptr inbounds %struct.chip_information, ptr %42, i32 0, i32 4, i32 1
  %43 = ptrtoint ptr %lvds_chip_slave_addr32 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 112, ptr %lvds_chip_slave_addr32, align 4
  br label %return

return:                                           ; preds = %if.end26, %if.end15.return_crit_edge, %if.end11.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end26 ], [ true, %if.end11.return_crit_edge ], [ true, %if.end15.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @viafb_lvds_identify_vt1636(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_lcd_set_mode(ptr nocapture noundef readonly %var, i16 noundef zeroext %cxres, i16 noundef zeroext %cyres, ptr noundef %plvds_setting_info, ptr noundef %plvds_chip_info) local_unnamed_addr #0 align 64 {
entry:
  %timing = alloca %struct.via_display_timing, align 2
  %panel_var = alloca %struct.fb_var_screeninfo, align 4
  %tmp24 = alloca %struct.via_display_timing, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plvds_setting_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %plvds_setting_info, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cxres)
  %tobool.not = icmp eq i16 %cxres, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i16 %cxres to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %var, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %5, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cyres)
  %tobool3.not = icmp eq i16 %cyres, 0
  br i1 %tobool3.not, label %cond.false6, label %cond.true4

cond.true4:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv2 = zext i16 %cyres to i32
  br label %cond.end7

cond.false6:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %6 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %yres, align 4
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false6, %cond.true4
  %cond8 = phi i32 [ %conv2, %cond.true4 ], [ %7, %cond.false6 ]
  %lcd_panel_hres = getelementptr inbounds %struct.lvds_setting_information, ptr %plvds_setting_info, i32 0, i32 1
  %8 = ptrtoint ptr %lcd_panel_hres to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lcd_panel_hres, align 4
  %lcd_panel_vres = getelementptr inbounds %struct.lvds_setting_information, ptr %plvds_setting_info, i32 0, i32 2
  %10 = ptrtoint ptr %lcd_panel_vres to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lcd_panel_vres, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %timing) #5
  %12 = call ptr @memset(ptr %timing, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %panel_var) #5
  %13 = call ptr @memset(ptr %panel_var, i32 255, i32 160)
  %call = tail call ptr @viafb_get_best_mode(i32 noundef %9, i32 noundef %11, i32 noundef 60) #5
  call void @viafb_fill_var_timing_info(ptr noundef nonnull %panel_var, ptr noundef %call) #5
  %14 = ptrtoint ptr %plvds_chip_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %plvds_chip_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %15)
  %cmp = icmp eq i32 %15, 14
  br i1 %cmp, label %if.then, label %cond.end7.if.end_crit_edge

cond.end7.if.end_crit_edge:                       ; preds = %cond.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %cond.end7
  call void @__sanitizer_cov_trace_pc() #7
  call void @viafb_init_lvds_vt1636(ptr noundef %plvds_setting_info, ptr noundef %plvds_chip_info) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end7.if.end_crit_edge
  %pixclock = getelementptr inbounds %struct.fb_videomode, ptr %call, i32 0, i32 4
  %16 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pixclock, align 4
  %div = udiv i32 1000000000, %17
  %mul = mul i32 %div, 1000
  %vclk = getelementptr inbounds %struct.lvds_setting_information, ptr %plvds_setting_info, i32 0, i32 7
  %18 = ptrtoint ptr %vclk to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %vclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp11 = icmp eq i32 %1, 2
  br i1 %cmp11, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %9)
  %cmp13 = icmp slt i32 %cond, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %cond8, i32 %11)
  %cmp15 = icmp slt i32 %cond8, %11
  %or.cond = select i1 %cmp13, i1 true, i1 %cmp15
  br i1 %or.cond, label %land.lhs.true17, label %if.then29.critedge

land.lhs.true17:                                  ; preds = %land.lhs.true
  %display_method = getelementptr inbounds %struct.lvds_setting_information, ptr %plvds_setting_info, i32 0, i32 3
  %19 = ptrtoint ptr %display_method to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %display_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp18 = icmp eq i32 %20, 0
  br i1 %cmp18, label %if.then20, label %if.then29.critedge101

if.then20:                                        ; preds = %land.lhs.true17
  %conv22 = trunc i32 %9 to i16
  %conv23 = trunc i32 %11 to i16
  call void @var_to_timing(ptr nonnull sret(%struct.via_display_timing) align 2 %timing, ptr noundef nonnull %panel_var, i16 noundef zeroext %conv22, i16 noundef zeroext %conv23) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @arm_heavy_mb() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 121) #5, !srcloc !18
  %21 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  call void @arm_heavy_mb() #5
  %or.i.i = or i8 %21, 7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i.i) #5, !srcloc !18
  br i1 %cmp13, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %22 = load ptr, ptr @viaparinfo, align 4
  %chip_info.i = getelementptr inbounds %struct.viafb_par, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chip_info.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %26, label %if.then.i.if.end.i_crit_edge [
    i32 1, label %if.then.i.sw.bb.i_crit_edge
    i32 2, label %if.then.i.sw.bb.i_crit_edge123
    i32 3, label %if.then.i.sw.bb2.i_crit_edge
    i32 4, label %if.then.i.sw.bb2.i_crit_edge124
    i32 5, label %if.then.i.sw.bb2.i_crit_edge125
    i32 6, label %if.then.i.sw.bb2.i_crit_edge126
    i32 8, label %if.then.i.sw.bb2.i_crit_edge127
    i32 9, label %if.then.i.sw.bb2.i_crit_edge128
    i32 10, label %if.then.i.sw.bb2.i_crit_edge129
    i32 7, label %if.then.i.sw.bb2.i_crit_edge130
    i32 11, label %if.then.i.sw.bb2.i_crit_edge131
    i32 12, label %if.then.i.sw.bb2.i_crit_edge132
    i32 13, label %if.then.i.sw.bb2.i_crit_edge133
  ]

if.then.i.sw.bb2.i_crit_edge133:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

if.then.i.sw.bb2.i_crit_edge132:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

if.then.i.sw.bb2.i_crit_edge131:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

if.then.i.sw.bb2.i_crit_edge130:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

if.then.i.sw.bb2.i_crit_edge129:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

if.then.i.sw.bb2.i_crit_edge128:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

if.then.i.sw.bb2.i_crit_edge127:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

if.then.i.sw.bb2.i_crit_edge126:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

if.then.i.sw.bb2.i_crit_edge125:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

if.then.i.sw.bb2.i_crit_edge124:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

if.then.i.sw.bb2.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

if.then.i.sw.bb.i_crit_edge123:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

sw.bb.i:                                          ; preds = %if.then.i.sw.bb.i_crit_edge, %if.then.i.sw.bb.i_crit_edge123
  %sub.i = shl i32 %cond, 10
  %mul.i = add i32 %sub.i, -1024
  %sub1.i = add nsw i32 %9, -1
  %div.i = sdiv i32 %mul.i, %sub1.i
  %28 = load i32, ptr @lcd_scaling_factor_CLE, align 4
  call void @viafb_load_reg(i32 noundef %div.i, i32 noundef %28, ptr noundef getelementptr inbounds (%struct._lcd_scaling_factor, ptr @lcd_scaling_factor_CLE, i32 0, i32 0, i32 1), i32 noundef 980) #5
  br label %if.end.i

sw.bb2.i:                                         ; preds = %if.then.i.sw.bb2.i_crit_edge, %if.then.i.sw.bb2.i_crit_edge124, %if.then.i.sw.bb2.i_crit_edge125, %if.then.i.sw.bb2.i_crit_edge126, %if.then.i.sw.bb2.i_crit_edge127, %if.then.i.sw.bb2.i_crit_edge128, %if.then.i.sw.bb2.i_crit_edge129, %if.then.i.sw.bb2.i_crit_edge130, %if.then.i.sw.bb2.i_crit_edge131, %if.then.i.sw.bb2.i_crit_edge132, %if.then.i.sw.bb2.i_crit_edge133
  %sub3.i = shl i32 %cond, 12
  %mul4.i = add i32 %sub3.i, -4096
  %sub5.i = add nsw i32 %9, -1
  %div6.i = sdiv i32 %mul4.i, %sub5.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @arm_heavy_mb() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -94) #5, !srcloc !18
  %29 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  call void @arm_heavy_mb() #5
  %or.i44.i = or i8 %29, -64
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i44.i) #5, !srcloc !18
  %30 = load i32, ptr @lcd_scaling_factor, align 4
  call void @viafb_load_reg(i32 noundef %div6.i, i32 noundef %30, ptr noundef getelementptr inbounds (%struct._lcd_scaling_factor, ptr @lcd_scaling_factor, i32 0, i32 0, i32 1), i32 noundef 980) #5
  br label %if.end.i

if.else.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @arm_heavy_mb() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -94) #5, !srcloc !18
  %31 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  call void @arm_heavy_mb() #5
  %and15.i45.i = and i8 %31, 127
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i45.i) #5, !srcloc !18
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %sw.bb2.i, %sw.bb.i, %if.then.i.if.end.i_crit_edge
  br i1 %cmp15, label %if.then9.i, label %if.else24.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %32 = load ptr, ptr @viaparinfo, align 4
  %chip_info10.i = getelementptr inbounds %struct.viafb_par, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %chip_info10.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip_info10.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %36, label %if.then9.i.if.then38_crit_edge [
    i32 1, label %if.then9.i.sw.bb12.i_crit_edge
    i32 2, label %if.then9.i.sw.bb12.i_crit_edge134
    i32 3, label %if.then9.i.sw.bb17.i_crit_edge
    i32 4, label %if.then9.i.sw.bb17.i_crit_edge135
    i32 5, label %if.then9.i.sw.bb17.i_crit_edge136
    i32 6, label %if.then9.i.sw.bb17.i_crit_edge137
    i32 8, label %if.then9.i.sw.bb17.i_crit_edge138
    i32 9, label %if.then9.i.sw.bb17.i_crit_edge139
    i32 10, label %if.then9.i.sw.bb17.i_crit_edge140
    i32 7, label %if.then9.i.sw.bb17.i_crit_edge141
    i32 11, label %if.then9.i.sw.bb17.i_crit_edge142
    i32 12, label %if.then9.i.sw.bb17.i_crit_edge143
    i32 13, label %if.then9.i.sw.bb17.i_crit_edge144
  ]

if.then9.i.sw.bb17.i_crit_edge144:                ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17.i

if.then9.i.sw.bb17.i_crit_edge143:                ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17.i

if.then9.i.sw.bb17.i_crit_edge142:                ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17.i

if.then9.i.sw.bb17.i_crit_edge141:                ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17.i

if.then9.i.sw.bb17.i_crit_edge140:                ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17.i

if.then9.i.sw.bb17.i_crit_edge139:                ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17.i

if.then9.i.sw.bb17.i_crit_edge138:                ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17.i

if.then9.i.sw.bb17.i_crit_edge137:                ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17.i

if.then9.i.sw.bb17.i_crit_edge136:                ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17.i

if.then9.i.sw.bb17.i_crit_edge135:                ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17.i

if.then9.i.sw.bb17.i_crit_edge:                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17.i

if.then9.i.sw.bb12.i_crit_edge134:                ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb12.i

if.then9.i.sw.bb12.i_crit_edge:                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb12.i

if.then9.i.if.then38_crit_edge:                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38

sw.bb12.i:                                        ; preds = %if.then9.i.sw.bb12.i_crit_edge, %if.then9.i.sw.bb12.i_crit_edge134
  %sub13.i = shl i32 %cond8, 10
  %mul14.i = add i32 %sub13.i, -1024
  %sub15.i = add nsw i32 %11, -1
  %div16.i = sdiv i32 %mul14.i, %sub15.i
  %38 = load i32, ptr getelementptr inbounds (%struct._lcd_scaling_factor, ptr @lcd_scaling_factor_CLE, i32 0, i32 1), align 4
  call void @viafb_load_reg(i32 noundef %div16.i, i32 noundef %38, ptr noundef getelementptr inbounds (%struct._lcd_scaling_factor, ptr @lcd_scaling_factor_CLE, i32 0, i32 1, i32 1), i32 noundef 980) #5
  br label %if.then38

sw.bb17.i:                                        ; preds = %if.then9.i.sw.bb17.i_crit_edge, %if.then9.i.sw.bb17.i_crit_edge135, %if.then9.i.sw.bb17.i_crit_edge136, %if.then9.i.sw.bb17.i_crit_edge137, %if.then9.i.sw.bb17.i_crit_edge138, %if.then9.i.sw.bb17.i_crit_edge139, %if.then9.i.sw.bb17.i_crit_edge140, %if.then9.i.sw.bb17.i_crit_edge141, %if.then9.i.sw.bb17.i_crit_edge142, %if.then9.i.sw.bb17.i_crit_edge143, %if.then9.i.sw.bb17.i_crit_edge144
  %sub18.i = shl i32 %cond8, 11
  %mul19.i = add i32 %sub18.i, -2048
  %sub20.i = add nsw i32 %11, -1
  %div21.i = sdiv i32 %mul19.i, %sub20.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @arm_heavy_mb() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -94) #5, !srcloc !18
  %39 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  call void @arm_heavy_mb() #5
  %or.i47.i = or i8 %39, 8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i47.i) #5, !srcloc !18
  %40 = load i32, ptr getelementptr inbounds (%struct._lcd_scaling_factor, ptr @lcd_scaling_factor, i32 0, i32 1), align 4
  call void @viafb_load_reg(i32 noundef %div21.i, i32 noundef %40, ptr noundef getelementptr inbounds (%struct._lcd_scaling_factor, ptr @lcd_scaling_factor, i32 0, i32 1, i32 1), i32 noundef 980) #5
  br label %if.then38

if.else24.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @arm_heavy_mb() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -94) #5, !srcloc !18
  %41 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  call void @arm_heavy_mb() #5
  %and15.i48.i = and i8 %41, -9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i48.i) #5, !srcloc !18
  br label %if.then38

if.then29.critedge:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp24) #5
  %conv25.c = trunc i32 %cond to i16
  %conv26.c = trunc i32 %cond8 to i16
  call void @var_to_timing(ptr nonnull sret(%struct.via_display_timing) align 2 %tmp24, ptr noundef nonnull %panel_var, i16 noundef zeroext %conv25.c, i16 noundef zeroext %conv26.c) #5
  %42 = call ptr @memcpy(ptr %timing, ptr %tmp24, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp24) #5
  br label %if.then29

if.then29.critedge101:                            ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp24) #5
  %conv25.c102 = trunc i32 %cond to i16
  %conv26.c103 = trunc i32 %cond8 to i16
  call void @var_to_timing(ptr nonnull sret(%struct.via_display_timing) align 2 %tmp24, ptr noundef nonnull %panel_var, i16 noundef zeroext %conv25.c102, i16 noundef zeroext %conv26.c103) #5
  %43 = call ptr @memcpy(ptr %timing, ptr %tmp24, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp24) #5
  br label %if.then29

if.then29:                                        ; preds = %if.then29.critedge101, %if.then29.critedge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @arm_heavy_mb() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 121) #5, !srcloc !18
  %44 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  call void @arm_heavy_mb() #5
  %and15.i = and i8 %44, -8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i) #5, !srcloc !18
  br label %if.then38

if.end31:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp24) #5
  %conv25.c104 = trunc i32 %cond to i16
  %conv26.c105 = trunc i32 %cond8 to i16
  call void @var_to_timing(ptr nonnull sret(%struct.via_display_timing) align 2 %tmp24, ptr noundef nonnull %panel_var, i16 noundef zeroext %conv25.c104, i16 noundef zeroext %conv26.c105) #5
  %45 = call ptr @memcpy(ptr %timing, ptr %tmp24, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp32 = icmp eq i32 %1, 1
  br i1 %cmp32, label %if.then34, label %if.end31.if.end40_crit_edge

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  call void @via_set_primary_timing(ptr noundef nonnull %timing) #5
  br label %if.end40

if.then38:                                        ; preds = %if.then29, %if.else24.i, %sw.bb17.i, %sw.bb12.i, %if.then9.i.if.then38_crit_edge
  call void @via_set_secondary_timing(ptr noundef nonnull %timing) #5
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.then34, %if.end31.if.end40_crit_edge
  %div41 = sdiv i32 %3, 8
  call void @viafb_load_fetch_count_reg(i32 noundef %cond, i32 noundef %div41, i32 noundef %1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %46 = load ptr, ptr @viaparinfo, align 4
  %chip_info = getelementptr inbounds %struct.viafb_par, ptr %46, i32 0, i32 11
  %47 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chip_info, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %.off = add i32 %50, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end40.if.end50_crit_edge, label %if.then49

if.end40.if.end50_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then49:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  call void @viafb_load_FIFO_reg(i32 noundef %1, i32 noundef %cond, i32 noundef %cond8) #5
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end40.if.end50_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %51 = load ptr, ptr @viaparinfo, align 4
  %lvds_setting_info.i = getelementptr inbounds %struct.viafb_par, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %lvds_setting_info.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lvds_setting_info.i, align 4
  %device_lcd_dualedge.i = getelementptr inbounds %struct.lvds_setting_information, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %device_lcd_dualedge.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %device_lcd_dualedge.i, align 4
  %LCDDithering.i = getelementptr inbounds %struct.lvds_setting_information, ptr %53, i32 0, i32 5
  %56 = ptrtoint ptr %LCDDithering.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %LCDDithering.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool2.not.i = icmp ne i32 %57, 0
  %spec.select.i = zext i1 %tobool2.not.i to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i = icmp eq i32 %55, 0
  %conv5.i = select i1 %tobool.not.i, i8 0, i8 16
  %or.i = or i8 %conv5.i, %spec.select.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @arm_heavy_mb() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -120) #5, !srcloc !18
  %58 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  call void @arm_heavy_mb() #5
  %and15.i.i = and i8 %58, -18
  %or.i.i106 = or i8 %or.i, %and15.i.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i.i106) #5, !srcloc !18
  call void @viafb_set_vclock(i32 noundef %mul, i32 noundef %1) #5
  %output_interface.i = getelementptr inbounds %struct.lvds_chip_information, ptr %plvds_chip_info, i32 0, i32 2
  %59 = ptrtoint ptr %output_interface.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %output_interface.i, align 4
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %60, label %if.end50.lcd_patch_skew.exit_crit_edge [
    i32 2, label %sw.bb.i107
    i32 3, label %sw.bb1.i
    i32 5, label %sw.bb2.i110
  ]

if.end50.lcd_patch_skew.exit_crit_edge:           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %lcd_patch_skew.exit

sw.bb.i107:                                       ; preds = %if.end50
  %62 = ptrtoint ptr %plvds_chip_info to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %plvds_chip_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %63)
  %cmp.i.i = icmp eq i32 %63, 14
  br i1 %cmp.i.i, label %if.then.i.i, label %sw.bb.i107.lcd_patch_skew.exit_crit_edge

sw.bb.i107.lcd_patch_skew.exit_crit_edge:         ; preds = %sw.bb.i107
  call void @__sanitizer_cov_trace_pc() #7
  br label %lcd_patch_skew.exit

if.then.i.i:                                      ; preds = %sw.bb.i107
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %64 = load ptr, ptr @viaparinfo, align 4
  %chip_info.i.i = getelementptr inbounds %struct.viafb_par, ptr %64, i32 0, i32 11
  %65 = ptrtoint ptr %chip_info.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %chip_info.i.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %68, label %if.then.i.i.lcd_patch_skew.exit_crit_edge [
    i32 10, label %sw.bb.i.i
    i32 9, label %sw.bb1.i.i
  ]

if.then.i.i.lcd_patch_skew.exit_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lcd_patch_skew.exit

sw.bb.i.i:                                        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @viafb_vt1636_patch_skew_on_vt3364(ptr noundef %plvds_setting_info, ptr noundef %plvds_chip_info) #5
  br label %lcd_patch_skew.exit

sw.bb1.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @viafb_vt1636_patch_skew_on_vt3327(ptr noundef %plvds_setting_info, ptr noundef %plvds_chip_info) #5
  br label %lcd_patch_skew.exit

sw.bb1.i:                                         ; preds = %if.end50
  %70 = ptrtoint ptr %plvds_chip_info to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %plvds_chip_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %71)
  %cmp.i6.i = icmp eq i32 %71, 14
  br i1 %cmp.i6.i, label %if.then.i8.i, label %sw.bb1.i.lcd_patch_skew.exit_crit_edge

sw.bb1.i.lcd_patch_skew.exit_crit_edge:           ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lcd_patch_skew.exit

if.then.i8.i:                                     ; preds = %sw.bb1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %72 = load ptr, ptr @viaparinfo, align 4
  %chip_info.i7.i = getelementptr inbounds %struct.viafb_par, ptr %72, i32 0, i32 11
  %73 = ptrtoint ptr %chip_info.i7.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %chip_info.i7.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %76)
  %cond.i.i = icmp eq i32 %76, 6
  br i1 %cond.i.i, label %sw.bb.i9.i, label %if.then.i8.i.lcd_patch_skew.exit_crit_edge

if.then.i8.i.lcd_patch_skew.exit_crit_edge:       ; preds = %if.then.i8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lcd_patch_skew.exit

sw.bb.i9.i:                                       ; preds = %if.then.i8.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @viafb_vt1636_patch_skew_on_vt3324(ptr noundef %plvds_setting_info, ptr noundef %plvds_chip_info) #5
  br label %lcd_patch_skew.exit

sw.bb2.i110:                                      ; preds = %if.end50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %77 = load ptr, ptr @viaparinfo, align 4
  %chip_info.i108 = getelementptr inbounds %struct.viafb_par, ptr %77, i32 0, i32 11
  %78 = ptrtoint ptr %chip_info.i108 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %chip_info.i108, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %81)
  %cmp.i109 = icmp eq i32 %81, 10
  br i1 %cmp.i109, label %if.then.i113, label %sw.bb2.i110.lcd_patch_skew.exit_crit_edge

sw.bb2.i110.lcd_patch_skew.exit_crit_edge:        ; preds = %sw.bb2.i110
  call void @__sanitizer_cov_trace_pc() #7
  br label %lcd_patch_skew.exit

if.then.i113:                                     ; preds = %sw.bb2.i110
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @arm_heavy_mb() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -103) #5, !srcloc !18
  %82 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  call void @arm_heavy_mb() #5
  %and15.i.i111 = and i8 %82, -16
  %or.i.i112 = or i8 %and15.i.i111, 8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i.i112) #5, !srcloc !18
  br label %lcd_patch_skew.exit

lcd_patch_skew.exit:                              ; preds = %if.then.i113, %sw.bb2.i110.lcd_patch_skew.exit_crit_edge, %sw.bb.i9.i, %if.then.i8.i.lcd_patch_skew.exit_crit_edge, %sw.bb1.i.lcd_patch_skew.exit_crit_edge, %sw.bb1.i.i, %sw.bb.i.i, %if.then.i.i.lcd_patch_skew.exit_crit_edge, %sw.bb.i107.lcd_patch_skew.exit_crit_edge, %if.end50.lcd_patch_skew.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %83 = load ptr, ptr @viaparinfo, align 4
  %chip_info51 = getelementptr inbounds %struct.viafb_par, ptr %83, i32 0, i32 11
  %84 = ptrtoint ptr %chip_info51 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %chip_info51, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %87, label %lcd_patch_skew.exit.if.end61_crit_edge [
    i32 3, label %lcd_patch_skew.exit.if.then60_crit_edge
    i32 8, label %lcd_patch_skew.exit.if.then60_crit_edge145
  ]

lcd_patch_skew.exit.if.then60_crit_edge145:       ; preds = %lcd_patch_skew.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then60

lcd_patch_skew.exit.if.then60_crit_edge:          ; preds = %lcd_patch_skew.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then60

lcd_patch_skew.exit.if.end61_crit_edge:           ; preds = %lcd_patch_skew.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then60:                                        ; preds = %lcd_patch_skew.exit.if.then60_crit_edge, %lcd_patch_skew.exit.if.then60_crit_edge145
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @arm_heavy_mb() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 106) #5, !srcloc !18
  %89 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  call void @arm_heavy_mb() #5
  %or.i115 = or i8 %89, 1
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i115) #5, !srcloc !18
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %lcd_patch_skew.exit.if.end61_crit_edge
  %90 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bits_per_pixel, align 4
  %shr.i = ashr i32 %91, 3
  %mul.i116 = mul i32 %shr.i, %cond
  %and.i = and i32 %mul.i116, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i117 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i117, label %if.end61.via_pitch_alignment_patch_lcd.exit_crit_edge, label %if.then.i119

if.end61.via_pitch_alignment_patch_lcd.exit_crit_edge: ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %via_pitch_alignment_patch_lcd.exit

if.then.i119:                                     ; preds = %if.end61
  %92 = ptrtoint ptr %plvds_setting_info to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %plvds_setting_info, align 4
  %add.i = add i32 %mul.i116, 31
  %and1.i = lshr i32 %add.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %93)
  %cmp.i118 = icmp eq i32 %93, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %91)
  %cmp4.i = icmp sgt i32 %91, 8
  br i1 %cmp.i118, label %if.then3.i, label %if.else.i121

if.then3.i:                                       ; preds = %if.then.i119
  br i1 %cmp4.i, label %if.then5.i, label %if.then3.i.if.end.i120_crit_edge

if.then3.i.if.end.i120_crit_edge:                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i120

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  %94 = trunc i32 %and1.i to i8
  %conv.i = and i8 %94, -4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  call void @arm_heavy_mb() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 102) #5, !srcloc !18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  call void @arm_heavy_mb() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv.i) #5, !srcloc !18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @arm_heavy_mb() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #5, !srcloc !18
  %95 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %96 = and i8 %95, -4
  %and10.i = lshr i32 %add.i, 11
  %97 = trunc i32 %and10.i to i8
  %98 = and i8 %97, 3
  %conv15.i = or i8 %96, %98
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  call void @arm_heavy_mb() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #5, !srcloc !18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  call void @arm_heavy_mb() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv15.i) #5, !srcloc !18
  br label %if.end.i120

if.end.i120:                                      ; preds = %if.then5.i, %if.then3.i.if.end.i120_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @arm_heavy_mb() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #5, !srcloc !18
  %99 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %100 = and i8 %99, -13
  %and20.i = lshr i32 %add.i, 10
  %101 = trunc i32 %and20.i to i8
  %102 = and i8 %101, 12
  %conv26.i = or i8 %100, %102
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  call void @arm_heavy_mb() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 103) #5, !srcloc !18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  call void @arm_heavy_mb() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv26.i) #5, !srcloc !18
  %shr2.i = lshr i32 %add.i, 4
  %103 = trunc i32 %shr2.i to i8
  %104 = add i8 %103, 2
  %conv32.i = and i8 %104, -2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  call void @arm_heavy_mb() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 101) #5, !srcloc !18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  call void @arm_heavy_mb() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv32.i) #5, !srcloc !18
  br label %via_pitch_alignment_patch_lcd.exit

if.else.i121:                                     ; preds = %if.then.i119
  br i1 %cmp4.i, label %if.then35.i, label %if.else.i121.via_pitch_alignment_patch_lcd.exit_crit_edge

if.else.i121.via_pitch_alignment_patch_lcd.exit_crit_edge: ; preds = %if.else.i121
  call void @__sanitizer_cov_trace_pc() #7
  br label %via_pitch_alignment_patch_lcd.exit

if.then35.i:                                      ; preds = %if.else.i121
  call void @__sanitizer_cov_trace_pc() #7
  %105 = trunc i32 %and1.i to i8
  %conv37.i = and i8 %105, -4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  call void @arm_heavy_mb() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 19) #5, !srcloc !18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  call void @arm_heavy_mb() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv37.i) #5, !srcloc !18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @arm_heavy_mb() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 53) #5, !srcloc !18
  %106 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %107 = and i8 %106, 31
  %and42.i = lshr i32 %add.i, 6
  %108 = trunc i32 %and42.i to i8
  %109 = and i8 %108, -32
  %conv48.i = or i8 %107, %109
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  call void @arm_heavy_mb() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 53) #5, !srcloc !18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  call void @arm_heavy_mb() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv48.i) #5, !srcloc !18
  br label %via_pitch_alignment_patch_lcd.exit

via_pitch_alignment_patch_lcd.exit:               ; preds = %if.then35.i, %if.else.i121.via_pitch_alignment_patch_lcd.exit_crit_edge, %if.end.i120, %if.end61.via_pitch_alignment_patch_lcd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %panel_var) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %timing) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @viafb_get_best_mode(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_fill_var_timing_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_init_lvds_vt1636(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @var_to_timing(ptr sret(%struct.via_display_timing) align 2, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @via_set_primary_timing(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @via_set_secondary_timing(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_load_fetch_count_reg(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_load_FIFO_reg(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_set_vclock(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_lcd_disable() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %0 = load ptr, ptr @viaparinfo, align 4
  %chip_info = getelementptr inbounds %struct.viafb_par, ptr %0, i32 0, i32 11
  %1 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip_info, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %4, label %if.else27 [
    i32 1, label %if.then
    i32 6, label %if.then4
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -111) #5, !srcloc !18
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %or.i.i = or i8 %6, 17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i.i) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -111) #5, !srcloc !18
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %and15.i20.i = and i8 %7, -7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i20.i) #5, !srcloc !18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 45097080) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -111) #5, !srcloc !18
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %and15.i20.1.i = and i8 %9, -9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i20.1.i) #5, !srcloc !18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 5368700) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -111) #5, !srcloc !18
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %and15.i20.2.i = and i8 %11, -17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i20.2.i) #5, !srcloc !18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 106) #5, !srcloc !18
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %and15.i22.i = and i8 %13, -9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i22.i) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 30) #5, !srcloc !18
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %and15.i = and i8 %14, -49
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and15.i) #5, !srcloc !18
  br label %if.end40

if.then4:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_LCD2_ON to i32))
  %15 = load i32, ptr @viafb_LCD2_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.then4.if.end_crit_edge, label %land.lhs.true

if.then4.if.end_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %if.then4
  %lvds_chip_info2 = getelementptr inbounds %struct.chip_information, ptr %2, i32 0, i32 5
  %16 = ptrtoint ptr %lvds_chip_info2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lvds_chip_info2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %17)
  %cmp6 = icmp eq i32 %17, 65
  br i1 %cmp6, label %if.then7, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @integrated_lvds_disable(ptr noundef %lvds_chip_info2)
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true.if.end_crit_edge, %if.then4.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %18 = load ptr, ptr @viaparinfo, align 4
  %chip_info10 = getelementptr inbounds %struct.viafb_par, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %chip_info10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip_info10, align 4
  %lvds_chip_info = getelementptr inbounds %struct.chip_information, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %lvds_chip_info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lvds_chip_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %22)
  %cmp12 = icmp eq i32 %22, 65
  br i1 %cmp12, label %if.then13, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @integrated_lvds_disable(ptr noundef %lvds_chip_info)
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end.if.end17_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %23 = load ptr, ptr @viaparinfo, align 4
  %chip_info18 = getelementptr inbounds %struct.viafb_par, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %chip_info18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip_info18, align 4
  %lvds_chip_info19 = getelementptr inbounds %struct.chip_information, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %lvds_chip_info19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lvds_chip_info19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %27)
  %cmp21 = icmp eq i32 %27, 14
  br i1 %cmp21, label %if.then22, label %if.end17.if.end40_crit_edge

if.end17.if.end40_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %lvds_setting_info23 = getelementptr inbounds %struct.viafb_par, ptr %23, i32 0, i32 9
  %28 = ptrtoint ptr %lvds_setting_info23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lvds_setting_info23, align 4
  tail call void @viafb_disable_lvds_vt1636(ptr noundef %29, ptr noundef %lvds_chip_info19) #5
  br label %if.end40

if.else27:                                        ; preds = %entry
  %lvds_chip_info30 = getelementptr inbounds %struct.chip_information, ptr %2, i32 0, i32 4
  %30 = ptrtoint ptr %lvds_chip_info30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lvds_chip_info30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %31)
  %cmp32 = icmp eq i32 %31, 14
  br i1 %cmp32, label %if.then33, label %if.else37

if.then33:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #7
  %lvds_setting_info34 = getelementptr inbounds %struct.viafb_par, ptr %0, i32 0, i32 9
  %32 = ptrtoint ptr %lvds_setting_info34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lvds_setting_info34, align 4
  tail call void @viafb_disable_lvds_vt1636(ptr noundef %33, ptr noundef %lvds_chip_info30) #5
  br label %if.end40

if.else37:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 61) #5, !srcloc !18
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %and15.i41 = and i8 %34, -33
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and15.i41) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -111) #5, !srcloc !18
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %or.i = or i8 %35, -128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i) #5, !srcloc !18
  br label %if.end40

if.end40:                                         ; preds = %if.else37, %if.then33, %if.then22, %if.end17.if.end40_crit_edge, %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 121) #5, !srcloc !18
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %and15.i43 = and i8 %36, -2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i43) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 107) #5, !srcloc !18
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %and15.i44 = and i8 %37, -9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i44) #5, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @integrated_lvds_disable(ptr nocapture noundef readonly %plvds_chip_info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %output_interface = getelementptr inbounds %struct.lvds_chip_information, ptr %plvds_chip_info, i32 0, i32 2
  %0 = ptrtoint ptr %output_interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %output_interface, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %1, label %entry.if.end13_crit_edge [
    i32 8, label %if.then9
    i32 9, label %entry.if.then12_crit_edge
    i32 7, label %entry.if.then12_crit_edge11
  ]

entry.if.then12_crit_edge11:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

entry.if.then12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -44) #5, !srcloc !18
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %and15.i = and i8 %3, -3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -45) #5, !srcloc !18
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %or.i = or i8 %4, -64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i) #5, !srcloc !18
  br label %if.end13thread-pre-split

if.then12:                                        ; preds = %entry.if.then12_crit_edge, %entry.if.then12_crit_edge11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 106) #5, !srcloc !18
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %and15.i2 = and i8 %5, -9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i2) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -111) #5, !srcloc !18
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %or.i4 = or i8 %6, -64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i4) #5, !srcloc !18
  br label %if.end13thread-pre-split

if.end13thread-pre-split:                         ; preds = %if.then12, %if.then9
  %7 = ptrtoint ptr %output_interface to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %output_interface, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end13thread-pre-split, %entry.if.end13_crit_edge
  %8 = phi i32 [ %.pr, %if.end13thread-pre-split ], [ %1, %entry.if.end13_crit_edge ]
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %8, label %if.end13.sw.epilog_crit_edge [
    i32 7, label %sw.bb
    i32 8, label %sw.bb15
    i32 9, label %sw.bb16
  ]

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -46) #5, !srcloc !18
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %or.i6 = or i8 %10, -128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i6) #5, !srcloc !18
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -46) #5, !srcloc !18
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %or.i8 = or i8 %11, 64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i8) #5, !srcloc !18
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -46) #5, !srcloc !18
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %or.i10 = or i8 %12, -64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i10) #5, !srcloc !18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb15, %sw.bb, %if.end13.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_disable_lvds_vt1636(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_lcd_enable() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 107) #5, !srcloc !18
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %and15.i = and i8 %0, -9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 106) #5, !srcloc !18
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %or.i = or i8 %1, 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i) #5, !srcloc !18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %2 = load ptr, ptr @viaparinfo, align 4
  %lvds_setting_info = getelementptr inbounds %struct.viafb_par, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %lvds_setting_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lvds_setting_info, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %chip_info = getelementptr inbounds %struct.viafb_par, ptr %2, i32 0, i32 11
  %7 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip_info, align 4
  %output_interface = getelementptr inbounds %struct.chip_information, ptr %8, i32 0, i32 4, i32 2
  %9 = ptrtoint ptr %output_interface to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %output_interface, align 4
  tail call fastcc void @set_lcd_output_path(i32 noundef %6, i32 noundef %10)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_LCD2_ON to i32))
  %11 = load i32, ptr @viafb_LCD2_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %12 = load ptr, ptr @viaparinfo, align 4
  %lvds_setting_info2 = getelementptr inbounds %struct.viafb_par, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %lvds_setting_info2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lvds_setting_info2, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %chip_info2 = getelementptr inbounds %struct.viafb_par, ptr %12, i32 0, i32 11
  %17 = ptrtoint ptr %chip_info2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip_info2, align 4
  %output_interface3 = getelementptr inbounds %struct.chip_information, ptr %18, i32 0, i32 5, i32 2
  %19 = ptrtoint ptr %output_interface3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %output_interface3, align 4
  tail call fastcc void @set_lcd_output_path(i32 noundef %16, i32 noundef %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %21 = load ptr, ptr @viaparinfo, align 4
  %chip_info4 = getelementptr inbounds %struct.viafb_par, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %chip_info4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip_info4, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %25, label %if.else37 [
    i32 1, label %if.then5
    i32 6, label %if.then9
  ]

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 30) #5, !srcloc !18
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %or.i52 = or i8 %27, 48
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i52) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -111) #5, !srcloc !18
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %or.i.i = or i8 %28, 17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i.i) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 106) #5, !srcloc !18
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %or.i21.i = or i8 %29, 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i21.i) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -111) #5, !srcloc !18
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %or.i23.i = or i8 %30, 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i23.i) #5, !srcloc !18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 5368700) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -111) #5, !srcloc !18
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %or.i23.1.i = or i8 %32, 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i23.1.i) #5, !srcloc !18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 109521480) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -111) #5, !srcloc !18
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %or.i23.2.i = or i8 %34, 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i23.2.i) #5, !srcloc !18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #5
  br label %if.end49

if.then9:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_LCD2_ON to i32))
  %37 = load i32, ptr @viafb_LCD2_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool10.not = icmp eq i32 %37, 0
  br i1 %tobool10.not, label %if.then9.if.end18_crit_edge, label %land.lhs.true

if.then9.if.end18_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

land.lhs.true:                                    ; preds = %if.then9
  %lvds_chip_info212 = getelementptr inbounds %struct.chip_information, ptr %23, i32 0, i32 5
  %38 = ptrtoint ptr %lvds_chip_info212 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lvds_chip_info212, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %39)
  %cmp13 = icmp eq i32 %39, 65
  br i1 %cmp13, label %if.then14, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %lvds_setting_info215 = getelementptr inbounds %struct.viafb_par, ptr %21, i32 0, i32 10
  %40 = ptrtoint ptr %lvds_setting_info215 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lvds_setting_info215, align 4
  tail call fastcc void @integrated_lvds_enable(ptr noundef %41, ptr noundef %lvds_chip_info212)
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %land.lhs.true.if.end18_crit_edge, %if.then9.if.end18_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %42 = load ptr, ptr @viaparinfo, align 4
  %chip_info19 = getelementptr inbounds %struct.viafb_par, ptr %42, i32 0, i32 11
  %43 = ptrtoint ptr %chip_info19 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chip_info19, align 4
  %lvds_chip_info20 = getelementptr inbounds %struct.chip_information, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %lvds_chip_info20 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %lvds_chip_info20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %46)
  %cmp22 = icmp eq i32 %46, 65
  br i1 %cmp22, label %if.then23, label %if.end18.if.end27_crit_edge

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %lvds_setting_info24 = getelementptr inbounds %struct.viafb_par, ptr %42, i32 0, i32 9
  %47 = ptrtoint ptr %lvds_setting_info24 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lvds_setting_info24, align 4
  tail call fastcc void @integrated_lvds_enable(ptr noundef %48, ptr noundef %lvds_chip_info20)
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end18.if.end27_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %49 = load ptr, ptr @viaparinfo, align 4
  %chip_info28 = getelementptr inbounds %struct.viafb_par, ptr %49, i32 0, i32 11
  %50 = ptrtoint ptr %chip_info28 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %chip_info28, align 4
  %lvds_chip_info29 = getelementptr inbounds %struct.chip_information, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %lvds_chip_info29 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %lvds_chip_info29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %53)
  %cmp31 = icmp eq i32 %53, 14
  br i1 %cmp31, label %if.then32, label %if.end27.if.end49_crit_edge

if.end27.if.end49_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %lvds_setting_info33 = getelementptr inbounds %struct.viafb_par, ptr %49, i32 0, i32 9
  %54 = ptrtoint ptr %lvds_setting_info33 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lvds_setting_info33, align 4
  tail call void @viafb_enable_lvds_vt1636(ptr noundef %55, ptr noundef %lvds_chip_info29) #5
  br label %if.end49

if.else37:                                        ; preds = %if.end
  %lvds_chip_info39 = getelementptr inbounds %struct.chip_information, ptr %23, i32 0, i32 4
  %56 = ptrtoint ptr %lvds_chip_info39 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %lvds_chip_info39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %57)
  %cmp41 = icmp eq i32 %57, 14
  br i1 %cmp41, label %if.then42, label %if.else46

if.then42:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #7
  %lvds_setting_info43 = getelementptr inbounds %struct.viafb_par, ptr %21, i32 0, i32 9
  %58 = ptrtoint ptr %lvds_setting_info43 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %lvds_setting_info43, align 4
  tail call void @viafb_enable_lvds_vt1636(ptr noundef %59, ptr noundef %lvds_chip_info39) #5
  br label %if.end49

if.else46:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 61) #5, !srcloc !18
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %or.i54 = or i8 %60, 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i54) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -111) #5, !srcloc !18
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %and15.i55 = and i8 %61, 127
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i55) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 106) #5, !srcloc !18
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %or.i57 = or i8 %62, 72
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i57) #5, !srcloc !18
  br label %if.end49

if.end49:                                         ; preds = %if.else46, %if.then42, %if.then32, %if.end27.if.end49_crit_edge, %if.then5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_lcd_output_path(i32 noundef %set_iga, i32 noundef %output_interface) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %output_interface to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %output_interface, label %entry.sw.epilog_crit_edge [
    i32 6, label %sw.bb
    i32 2, label %entry.sw.bb4_crit_edge
    i32 3, label %entry.sw.bb4_crit_edge8
    i32 4, label %entry.sw.bb4_crit_edge9
    i32 5, label %entry.sw.bb4_crit_edge10
  ]

entry.sw.bb4_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

entry.sw.bb4_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

entry.sw.bb4_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %1 = load ptr, ptr @viaparinfo, align 4
  %chip_info = getelementptr inbounds %struct.viafb_par, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_info, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = and i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %switch = icmp eq i32 %6, 8
  br i1 %switch, label %if.then, label %sw.bb.sw.bb4_crit_edge

sw.bb.sw.bb4_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -105) #5, !srcloc !18
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %and15.i = and i8 %7, 120
  %or.i = or i8 %and15.i, -124
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i) #5, !srcloc !18
  br label %sw.bb4

sw.bb4:                                           ; preds = %if.then, %sw.bb.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge8, %entry.sw.bb4_crit_edge9, %entry.sw.bb4_crit_edge10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %set_iga)
  %cmp5 = icmp eq i32 %set_iga, 2
  br i1 %cmp5, label %if.then6, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then6:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -111) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 0) #5, !srcloc !18
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then6, %sw.bb4.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @integrated_lvds_enable(ptr nocapture noundef readonly %plvds_setting_info, ptr nocapture noundef readonly %plvds_chip_info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lcd_mode = getelementptr inbounds %struct.lvds_setting_information, ptr %plvds_setting_info, i32 0, i32 6
  %0 = ptrtoint ptr %lcd_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lcd_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -46) #5
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and15.i = and i8 %2, -4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i) #5, !srcloc !18
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i8 %2, 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i) #5, !srcloc !18
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %output_interface = getelementptr inbounds %struct.lvds_chip_information, ptr %plvds_chip_info, i32 0, i32 2
  %3 = ptrtoint ptr %output_interface to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %output_interface, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %4, label %if.end.sw.epilog_crit_edge [
    i32 9, label %if.end.sw.bb_crit_edge
    i32 7, label %if.end.sw.bb_crit_edge20
    i32 8, label %sw.bb1
  ]

if.end.sw.bb_crit_edge20:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -111) #5, !srcloc !18
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %and15.i9 = and i8 %6, -2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i9) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -111) #5, !srcloc !18
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %and15.i10 = and i8 %7, 63
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i10) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 106) #5, !srcloc !18
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %or.i12 = or i8 %8, 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i12) #5, !srcloc !18
  br label %sw.epilogthread-pre-split

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -45) #5, !srcloc !18
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %and15.i13 = and i8 %9, -2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i13) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -45) #5, !srcloc !18
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %and15.i14 = and i8 %10, 63
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i14) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -44) #5, !srcloc !18
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %or.i16 = or i8 %11, 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i16) #5, !srcloc !18
  br label %sw.epilogthread-pre-split

sw.epilogthread-pre-split:                        ; preds = %sw.bb1, %sw.bb
  %12 = ptrtoint ptr %output_interface to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %output_interface, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %if.end.sw.epilog_crit_edge
  %13 = phi i32 [ %.pr, %sw.epilogthread-pre-split ], [ %4, %if.end.sw.epilog_crit_edge ]
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %13, label %sw.epilog.sw.epilog6_crit_edge [
    i32 7, label %sw.bb3
    i32 8, label %sw.bb4
    i32 9, label %sw.bb5
  ]

sw.epilog.sw.epilog6_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog6

sw.bb3:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -46) #5, !srcloc !18
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %and15.i17 = and i8 %15, 127
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i17) #5, !srcloc !18
  br label %sw.epilog6

sw.bb4:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -46) #5, !srcloc !18
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %and15.i18 = and i8 %16, -65
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i18) #5, !srcloc !18
  br label %sw.epilog6

sw.bb5:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -46) #5, !srcloc !18
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %and15.i19 = and i8 %17, 63
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i19) #5, !srcloc !18
  br label %sw.epilog6

sw.epilog6:                                       ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.epilog.sw.epilog6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_enable_lvds_vt1636(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @viafb_init_lvds_output_interface(ptr nocapture noundef %plvds_chip_info, ptr nocapture noundef readonly %plvds_setting_info) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %output_interface = getelementptr inbounds %struct.lvds_chip_information, ptr %plvds_chip_info, i32 0, i32 2
  %0 = ptrtoint ptr %output_interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %output_interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.sw.epilog15_crit_edge

entry.sw.epilog15_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog15

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %plvds_chip_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %plvds_chip_info, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %3, label %sw.default7 [
    i32 14, label %sw.bb
    i32 65, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %5 = load ptr, ptr @viaparinfo, align 4
  %chip_info = getelementptr inbounds %struct.viafb_par, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip_info, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %switch.selectcmp = icmp eq i32 %9, 5
  %switch.select = select i1 %switch.selectcmp, i32 5, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %switch.selectcmp23 = icmp eq i32 %9, 6
  %switch.select24 = select i1 %switch.selectcmp23, i32 3, i32 %switch.select
  br label %sw.epilog15.sink.split

sw.bb6:                                           ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_display_hardware_layout to i32))
  %10 = load i32, ptr @viafb_display_hardware_layout, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %10, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb6.sw.epilog15.sink.split_crit_edge
    i32 4, label %sw.bb6.sw.bb4.i_crit_edge
    i32 16, label %sw.bb6.sw.bb4.i_crit_edge26
    i32 3, label %sw.bb6.i
  ]

sw.bb6.sw.bb4.i_crit_edge26:                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4.i

sw.bb6.sw.bb4.i_crit_edge:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4.i

sw.bb6.sw.epilog15.sink.split_crit_edge:          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog15.sink.split

sw.bb.i:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  %device_lcd_dualedge.i = getelementptr inbounds %struct.lvds_setting_information, ptr %plvds_setting_info, i32 0, i32 4
  %12 = ptrtoint ptr %device_lcd_dualedge.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %device_lcd_dualedge.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %. = select i1 %tobool.not.i, i32 7, i32 9
  br label %sw.epilog15.sink.split

sw.bb4.i:                                         ; preds = %sw.bb6.sw.bb4.i_crit_edge, %sw.bb6.sw.bb4.i_crit_edge26
  br label %sw.epilog15.sink.split

sw.bb6.i:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog15.sink.split

sw.default.i:                                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog15.sink.split

sw.default7:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %14 = load ptr, ptr @viaparinfo, align 4
  %chip_info8 = getelementptr inbounds %struct.viafb_par, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %chip_info8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip_info8, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %.off = add i32 %18, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  %.25 = select i1 %switch, i32 5, i32 6
  br label %sw.epilog15.sink.split

sw.epilog15.sink.split:                           ; preds = %sw.default7, %sw.default.i, %sw.bb6.i, %sw.bb4.i, %sw.bb.i, %sw.bb6.sw.epilog15.sink.split_crit_edge, %sw.bb
  %.sink = phi i32 [ 8, %sw.default.i ], [ 8, %sw.bb6.i ], [ 9, %sw.bb4.i ], [ %switch.select24, %sw.bb ], [ %., %sw.bb.i ], [ 0, %sw.bb6.sw.epilog15.sink.split_crit_edge ], [ %.25, %sw.default7 ]
  %19 = ptrtoint ptr %output_interface to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %output_interface, align 4
  br label %sw.epilog15

sw.epilog15:                                      ; preds = %sw.epilog15.sink.split, %entry.sw.epilog15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @viafb_lcd_get_mobile_state(ptr nocapture noundef writeonly %mobile) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ioremap(i32 noundef 786432, i32 noundef 65536) #5
  %0 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %call) #5, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  call void @__sanitizer_cov_trace_const_cmp2(i16 21930, i16 %0)
  %cmp = icmp eq i16 %0, 21930
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %call, i32 27
  %1 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #5, !srcloc !27
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv9 = zext i16 %2 to i32
  %add.ptr10 = getelementptr i8, ptr %call, i32 %conv9
  %add.ptr11 = getelementptr i8, ptr %add.ptr10, i32 18
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11) #5, !srcloc !27
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  %conv17 = zext i16 %4 to i32
  %add.ptr18 = getelementptr i8, ptr %call, i32 %conv17
  %add.ptr19 = getelementptr i8, ptr %add.ptr18, i32 41
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr19) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %6 = lshr i8 %5, 3
  %.lobit = and i8 %6, 1
  %7 = xor i8 %.lobit, 1
  %8 = ptrtoint ptr %mobile to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %mobile, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  tail call void @iounmap(ptr noundef %call) #5
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @viafb_i2c_readbyte(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_load_reg(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_vt1636_patch_skew_on_vt3364(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_vt1636_patch_skew_on_vt3327(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_vt1636_patch_skew_on_vt3324(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @lcd_scaling_factor_CLE, !1, !"lcd_scaling_factor_CLE", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/via/lcd.c", i32 30, i32 35}
!2 = !{ptr @lcd_scaling_factor, !3, !"lcd_scaling_factor", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/via/lcd.c", i32 22, i32 35}
!4 = distinct !{null, !5, !"PowerSequenceOff", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/via/lcd.c", i32 18, i32 18}
!6 = distinct !{null, !7, !"PowerSequenceOn", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/via/lcd.c", i32 15, i32 18}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 2154450891}
!18 = !{i64 720648}
!19 = !{i64 721043}
!20 = !{i64 2154451281}
!21 = !{!"auto-init"}
!22 = !{i64 2154452473}
!23 = !{i64 2154452863}
!24 = !{i64 2154453098}
!25 = !{i64 2154451657}
!26 = !{i64 2154451980}
!27 = !{i64 720425}
!28 = !{i64 2156366216}
!29 = !{i64 2156366658}
!30 = !{i64 2156367100}
!31 = !{i64 2156367310}
