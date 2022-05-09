; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/core/fbcvt.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/fbcvt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@fb_find_mode_cvt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016fbcvt: Invalid input parameters\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fb_find_mode_cvt\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/video/fbdev/core/fbcvt.c\00", [63 x i8] zeroinitializer }, align 32
@fb_find_mode_cvt._entry_ptr = internal global ptr @fb_find_mode_cvt._entry, section ".printk_index", align 4
@fb_find_mode_cvt._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016fbcvt: Refresh rate not CVT standard\0A\00", [56 x i8] zeroinitializer }, align 32
@fb_find_mode_cvt._entry_ptr.5 = internal global ptr @fb_find_mode_cvt._entry.3, section ".printk_index", align 4
@fb_find_mode_cvt._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016fbcvt: 60Hz refresh rate advised for reduced blanking\0A\00", [39 x i8] zeroinitializer }, align 32
@fb_find_mode_cvt._entry_ptr.8 = internal global ptr @fb_find_mode_cvt._entry.6, section ".printk_index", align 4
@fb_cvt_vbi_tab = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\04\05\06\07\07\08\09\0A", [24 x i8] zeroinitializer }, align 32
@fb_cvt_aspect_ratio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016fbcvt: Aspect ratio not CVT standard\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fb_cvt_aspect_ratio\00", [44 x i8] zeroinitializer }, align 32
@fb_cvt_aspect_ratio._entry_ptr = internal global ptr @fb_cvt_aspect_ratio._entry, section ".printk_index", align 4
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fbcvt: %dx%d@%d: CVT Name - \00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Not a CVT standard - %d.%03d Mega Pixel Image\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c".%03dM\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"3\00", [30 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"4\00", [30 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"9\00", [30 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-R\00", [29 x i8] zeroinitializer }, align 32
@fb_cvt_print_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\016%s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fb_cvt_print_name\00", [46 x i8] zeroinitializer }, align 32
@fb_cvt_print_name._entry_ptr = internal global ptr @fb_cvt_print_name._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.fb_find_mode_cvt = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.16, ptr @.str.17], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 50, i64 60, i64 70, i64 85]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 327, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 333, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 347, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"fb_cvt_vbi_tab\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 61, i32 28 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 205, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 227, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 233, i32 29 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 237, i32 37 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 242, i32 36 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 247, i32 37 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 249, i32 37 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 251, i32 37 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 253, i32 37 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 260, i32 37 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [36 x i8] c"../drivers/video/fbdev/core/fbcvt.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 266, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [30 x i8] c"switch.table.fb_find_mode_cvt\00", align 1
@llvm.compiler.used = appending global [30 x ptr] [ptr @fb_cvt_aspect_ratio._entry, ptr @fb_cvt_aspect_ratio._entry_ptr, ptr @fb_cvt_print_name._entry, ptr @fb_cvt_print_name._entry_ptr, ptr @fb_find_mode_cvt._entry, ptr @fb_find_mode_cvt._entry.3, ptr @fb_find_mode_cvt._entry.6, ptr @fb_find_mode_cvt._entry_ptr, ptr @fb_find_mode_cvt._entry_ptr.5, ptr @fb_find_mode_cvt._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @fb_cvt_vbi_tab, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @switch.table.fb_find_mode_cvt], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_find_mode_cvt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_find_mode_cvt._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_find_mode_cvt._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_cvt_vbi_tab to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_cvt_aspect_ratio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_cvt_print_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fb_find_mode_cvt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fb_find_mode_cvt(ptr nocapture noundef %mode, i32 noundef %margins, i32 noundef %rb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %margins)
  %tobool.not = icmp eq i32 %margins, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rb)
  %tobool1.not.not = icmp eq i32 %rb, 0
  %vmode = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 12
  %0 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vmode, align 4
  %xres = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 2
  %2 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xres, align 4
  %yres = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 3
  %4 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %yres, align 4
  %refresh = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 1
  %6 = ptrtoint ptr %refresh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %refresh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool16.not = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool18.not = icmp eq i32 %5, 0
  %or.cond = select i1 %tobool16.not, i1 true, i1 %tobool18.not
  br i1 %or.cond, label %entry.do.end_crit_edge, label %lor.lhs.false19

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false19:                                  ; preds = %entry
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.end37 [
    i32 0, label %lor.lhs.false19.do.end_crit_edge
    i32 50, label %lor.lhs.false19.if.end40_crit_edge
    i32 60, label %lor.lhs.false19.if.end40_crit_edge328
    i32 70, label %lor.lhs.false19.if.end40_crit_edge329
    i32 85, label %lor.lhs.false19.if.end40_crit_edge330
  ]

lor.lhs.false19.if.end40_crit_edge330:            ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

lor.lhs.false19.if.end40_crit_edge329:            ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

lor.lhs.false19.if.end40_crit_edge328:            ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

lor.lhs.false19.if.end40_crit_edge:               ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

lor.lhs.false19.do.end_crit_edge:                 ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false19.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %cleanup

do.end37:                                         ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #8
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %if.end40

if.end40:                                         ; preds = %do.end37, %lor.lhs.false19.if.end40_crit_edge, %lor.lhs.false19.if.end40_crit_edge328, %lor.lhs.false19.if.end40_crit_edge329, %lor.lhs.false19.if.end40_crit_edge330
  %cvt.sroa.102.0 = phi i32 [ 1, %do.end37 ], [ 0, %lor.lhs.false19.if.end40_crit_edge ], [ 0, %lor.lhs.false19.if.end40_crit_edge328 ], [ 0, %lor.lhs.false19.if.end40_crit_edge329 ], [ 0, %lor.lhs.false19.if.end40_crit_edge330 ]
  %and42 = and i32 %3, -8
  %9 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool45.not = icmp eq i32 %9, 0
  %not.tobool45.not = xor i1 %tobool45.not, true
  %mul = zext i1 %not.tobool45.not to i32
  %spec.select314 = shl i32 %7, %mul
  %spec.select315 = select i1 %tobool45.not, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %7)
  %cmp55.not = icmp eq i32 %7, 60
  %or.cond316 = select i1 %tobool1.not.not, i1 true, i1 %cmp55.not
  br i1 %or.cond316, label %if.end40.if.end64_crit_edge, label %do.end59

if.end40.if.end64_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

do.end59:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %if.end64

if.end64:                                         ; preds = %do.end59, %if.end40.if.end64_crit_edge
  %cvt.sroa.102.1 = phi i32 [ %cvt.sroa.102.0, %if.end40.if.end64_crit_edge ], [ 1, %do.end59 ]
  br i1 %tobool.not, label %if.end64.if.end78_crit_edge, label %if.then68

if.end64.if.end78_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %mul70 = mul i32 %and42, 18
  %div = udiv i32 %mul70, 1000
  %and72 = and i32 %div, 536870904
  %div75317 = lshr i32 %5, %mul
  %mul76 = mul i32 %div75317, 18
  %div77 = udiv i32 %mul76, 1000
  br label %if.end78

if.end78:                                         ; preds = %if.then68, %if.end64.if.end78_crit_edge
  %cvt.sroa.63.0 = phi i32 [ 0, %if.end64.if.end78_crit_edge ], [ %and72, %if.then68 ]
  %cvt.sroa.67.0 = phi i32 [ 0, %if.end64.if.end78_crit_edge ], [ %div77, %if.then68 ]
  %mul.i = shl i32 %5, 2
  %mul.i.frozen = freeze i32 %mul.i
  %div.i = udiv i32 %mul.i.frozen, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and42, i32 %div.i)
  %cmp.i = icmp eq i32 %and42, %div.i
  %10 = mul i32 %div.i, 3
  %rem.i.decomposed = sub i32 %mul.i.frozen, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool.not.i = icmp eq i32 %rem.i.decomposed, 0
  %or.cond.i = and i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end78.fb_cvt_aspect_ratio.exit_crit_edge, label %if.else.i

if.end78.fb_cvt_aspect_ratio.exit_crit_edge:      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %fb_cvt_aspect_ratio.exit

if.else.i:                                        ; preds = %if.end78
  %mul4.i = shl i32 %5, 4
  %mul4.i.frozen = freeze i32 %mul4.i
  %div5.i = udiv i32 %mul4.i.frozen, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %and42, i32 %div5.i)
  %cmp6.i = icmp eq i32 %and42, %div5.i
  %11 = mul i32 %div5.i, 9
  %rem9.i.decomposed = sub i32 %mul4.i.frozen, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem9.i.decomposed)
  %tobool10.not.i = icmp eq i32 %rem9.i.decomposed, 0
  %or.cond60.i = and i1 %cmp6.i, %tobool10.not.i
  br i1 %or.cond60.i, label %if.else.i.fb_cvt_aspect_ratio.exit_crit_edge, label %if.else12.i

if.else.i.fb_cvt_aspect_ratio.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fb_cvt_aspect_ratio.exit

if.else12.i:                                      ; preds = %if.else.i
  %mul4.i.frozen327 = freeze i32 %mul4.i
  %div14.i = udiv i32 %mul4.i.frozen327, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %and42, i32 %div14.i)
  %cmp15.i = icmp eq i32 %and42, %div14.i
  %12 = mul i32 %div14.i, 10
  %rem18.i.decomposed = sub i32 %mul4.i.frozen327, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem18.i.decomposed)
  %tobool19.not.i = icmp eq i32 %rem18.i.decomposed, 0
  %or.cond61.i = and i1 %cmp15.i, %tobool19.not.i
  br i1 %or.cond61.i, label %if.else12.i.fb_cvt_aspect_ratio.exit_crit_edge, label %if.else21.i

if.else12.i.fb_cvt_aspect_ratio.exit_crit_edge:   ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fb_cvt_aspect_ratio.exit

if.else21.i:                                      ; preds = %if.else12.i
  %mul22.i = mul i32 %5, 5
  %div2359.i = lshr i32 %mul22.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %and42, i32 %div2359.i)
  %cmp24.i = icmp eq i32 %and42, %div2359.i
  %rem27.i = and i32 %mul22.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem27.i)
  %tobool28.not.i = icmp eq i32 %rem27.i, 0
  %or.cond62.i = and i1 %cmp24.i, %tobool28.not.i
  br i1 %or.cond62.i, label %if.else21.i.fb_cvt_aspect_ratio.exit_crit_edge, label %if.else30.i

if.else21.i.fb_cvt_aspect_ratio.exit_crit_edge:   ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fb_cvt_aspect_ratio.exit

if.else30.i:                                      ; preds = %if.else21.i
  %mul31.i = mul i32 %5, 15
  %mul31.i.frozen = freeze i32 %mul31.i
  %div32.i = udiv i32 %mul31.i.frozen, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %and42, i32 %div32.i)
  %cmp33.i = icmp eq i32 %and42, %div32.i
  %13 = mul i32 %div32.i, 9
  %rem36.i.decomposed = sub i32 %mul31.i.frozen, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem36.i.decomposed)
  %tobool37.not.i = icmp eq i32 %rem36.i.decomposed, 0
  %or.cond63.i = and i1 %cmp33.i, %tobool37.not.i
  br i1 %or.cond63.i, label %if.else30.i.fb_cvt_aspect_ratio.exit_crit_edge, label %do.end.i

if.else30.i.fb_cvt_aspect_ratio.exit_crit_edge:   ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fb_cvt_aspect_ratio.exit

do.end.i:                                         ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  br label %fb_cvt_aspect_ratio.exit

fb_cvt_aspect_ratio.exit:                         ; preds = %do.end.i, %if.else30.i.fb_cvt_aspect_ratio.exit_crit_edge, %if.else21.i.fb_cvt_aspect_ratio.exit_crit_edge, %if.else12.i.fb_cvt_aspect_ratio.exit_crit_edge, %if.else.i.fb_cvt_aspect_ratio.exit_crit_edge, %if.end78.fb_cvt_aspect_ratio.exit_crit_edge
  %cvt.sroa.102.2 = phi i32 [ %cvt.sroa.102.1, %if.end78.fb_cvt_aspect_ratio.exit_crit_edge ], [ %cvt.sroa.102.1, %if.else.i.fb_cvt_aspect_ratio.exit_crit_edge ], [ %cvt.sroa.102.1, %if.else12.i.fb_cvt_aspect_ratio.exit_crit_edge ], [ %cvt.sroa.102.1, %if.else21.i.fb_cvt_aspect_ratio.exit_crit_edge ], [ %cvt.sroa.102.1, %if.else30.i.fb_cvt_aspect_ratio.exit_crit_edge ], [ 1, %do.end.i ]
  %14 = phi i1 [ true, %if.end78.fb_cvt_aspect_ratio.exit_crit_edge ], [ true, %if.else.i.fb_cvt_aspect_ratio.exit_crit_edge ], [ true, %if.else12.i.fb_cvt_aspect_ratio.exit_crit_edge ], [ true, %if.else21.i.fb_cvt_aspect_ratio.exit_crit_edge ], [ true, %if.else30.i.fb_cvt_aspect_ratio.exit_crit_edge ], [ false, %do.end.i ]
  %aspect.0.i = phi i32 [ 0, %if.end78.fb_cvt_aspect_ratio.exit_crit_edge ], [ 1, %if.else.i.fb_cvt_aspect_ratio.exit_crit_edge ], [ 2, %if.else12.i.fb_cvt_aspect_ratio.exit_crit_edge ], [ 3, %if.else21.i.fb_cvt_aspect_ratio.exit_crit_edge ], [ 4, %if.else30.i.fb_cvt_aspect_ratio.exit_crit_edge ], [ 7, %do.end.i ]
  %mul82 = shl nuw nsw i32 %cvt.sroa.63.0, 1
  %add = add i32 %mul82, %and42
  %div.i122 = udiv i32 1000000000, %spec.select314
  br i1 %tobool1.not.not, label %if.else.i125, label %if.then.i

if.then.i:                                        ; preds = %fb_cvt_aspect_ratio.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add nsw i32 %div.i122, -460000
  %div1.i319 = lshr i32 %5, %mul
  %mul.i124 = shl nuw nsw i32 %cvt.sroa.67.0, 1
  %add.i = add i32 %mul.i124, %div1.i319
  %mul2.i = shl i32 %add.i, 1
  br label %fb_cvt_hperiod.exit

if.else.i125:                                     ; preds = %fb_cvt_aspect_ratio.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub3.i = add nsw i32 %div.i122, -550000
  %div6.i323 = lshr i32 %5, %mul
  %mul8.i = shl nuw nsw i32 %cvt.sroa.67.0, 1
  %add9.i = add i32 %mul8.i, %div6.i323
  %add10.i = shl i32 %add9.i, 1
  %add1328.i = add nuw nsw i32 %spec.select315, 6
  %div122729.i = add i32 %add1328.i, %add10.i
  %mul14.i = and i32 %div122729.i, -2
  br label %fb_cvt_hperiod.exit

fb_cvt_hperiod.exit:                              ; preds = %if.else.i125, %if.then.i
  %mul.i130.pre-phi = phi i32 [ %mul.i124, %if.then.i ], [ %mul8.i, %if.else.i125 ]
  %div.i128321.pre-phi = phi i32 [ %div1.i319, %if.then.i ], [ %div6.i323, %if.else.i125 ]
  %.20.i.i = phi i32 [ 1, %if.then.i ], [ 4, %if.else.i125 ]
  %..i.i = phi i32 [ 460000, %if.then.i ], [ 550000, %if.else.i125 ]
  %num.0.i = phi i32 [ %sub.i, %if.then.i ], [ %sub3.i, %if.else.i125 ]
  %den.0.i = phi i32 [ %mul2.i, %if.then.i ], [ %mul14.i, %if.else.i125 ]
  %div15.i = udiv i32 %num.0.i, %den.0.i
  %mul16.i = shl i32 %div15.i, 1
  %arrayidx = getelementptr [8 x i8], ptr @fb_cvt_vbi_tab, i32 0, i32 %aspect.0.i
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %16 to i32
  %div214.i = lshr i32 %spec.select315, 1
  %div4.i.i = udiv i32 %..i.i, %mul16.i
  %add6.i.i = add nuw nsw i32 %div4.i.i, %.20.i.i
  %min_vbi_lines.0.i.i = add nuw nsw i32 %conv, 9
  %17 = tail call i32 @llvm.umax.i32(i32 %add6.i.i, i32 %min_vbi_lines.0.i.i) #6
  %add.i131 = add i32 %div.i128321.pre-phi, %div214.i
  %add3.i = add i32 %add.i131, %mul.i130.pre-phi
  %add4.i = add i32 %add3.i, %17
  %or.i = or i32 %add4.i, %div214.i
  br i1 %tobool1.not.not, label %if.else.i136, label %if.then.i155

if.else.i136:                                     ; preds = %fb_cvt_hperiod.exit
  %mul1.i.i = mul i32 %div15.i, 153600
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1734966297, i32 %mul1.i.i)
  %cmp.i135 = icmp ugt i32 %mul1.i.i, -1734966297
  br i1 %cmp.i135, label %if.then2.i, label %if.else3.i

if.then2.i:                                       ; preds = %if.else.i136
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i137 = mul i32 %add, 20000
  %div.i138 = udiv i32 %mul.i137, 80000
  br label %if.else.i156

if.else3.i:                                       ; preds = %if.else.i136
  call void @__sanitizer_cov_trace_pc() #8
  %div.i.i = udiv i32 %mul1.i.i, 1000
  %sub.i.i = sub nuw nsw i32 7680000, %div.i.i
  %div23.i.i = lshr i32 %sub.i.i, 8
  %mul4.i139 = mul i32 %div23.i.i, %add
  %sub.i140 = sub nuw nsw i32 100000, %div23.i.i
  %div5.i141 = udiv i32 %mul4.i139, %sub.i140
  br label %if.else.i156

if.then.i155:                                     ; preds = %fb_cvt_hperiod.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add89 = add i32 %add, 160
  %mul.i152 = mul i32 %add89, %spec.select314
  %mul1.i = mul i32 %mul.i152, %or.i
  %div.i154 = udiv i32 %mul1.i, 1000
  br label %fb_cvt_pixclock.exit

if.else.i156:                                     ; preds = %if.else3.i, %if.then2.i
  %hblank.1.i.ph = phi i32 [ %div5.i141, %if.else3.i ], [ %div.i138, %if.then2.i ]
  %and7.i300 = and i32 %hblank.1.i.ph, -16
  %add89301 = add i32 %and7.i300, %add
  %mul.i145 = shl i32 %add89301, 3
  %div.i146 = udiv i32 %mul.i145, 100
  %phi.bo.i = and i32 %div.i146, 67108856
  %mul3.i = mul i32 %add89301, 1000000
  %div4.i = udiv i32 %mul3.i, %mul16.i
  br label %fb_cvt_pixclock.exit

fb_cvt_pixclock.exit:                             ; preds = %if.else.i156, %if.then.i155
  %hsync.0.i312 = phi i32 [ 32, %if.then.i155 ], [ %phi.bo.i, %if.else.i156 ]
  %and7.i302310 = phi i32 [ 160, %if.then.i155 ], [ %and7.i300, %if.else.i156 ]
  %pixclock.0.i = phi i32 [ %div.i154, %if.then.i155 ], [ %div4.i, %if.else.i156 ]
  %18 = urem i32 %pixclock.0.i, 250
  %mul6.i = sub i32 %pixclock.0.i, %18
  %mul7.i = mul i32 %mul6.i, 1000
  %div96121 = lshr exact i32 %and7.i302310, 1
  %add98 = add nuw nsw i32 %div96121, %cvt.sroa.63.0
  %19 = add nuw nsw i32 %mul82, %and7.i302310
  %20 = add nuw nsw i32 %hsync.0.i312, %add98
  %add105 = sub nsw i32 %19, %20
  %add107 = add nuw nsw i32 %cvt.sroa.67.0, 3
  %21 = add i32 %cvt.sroa.67.0, %div.i128321.pre-phi
  %22 = add i32 %21, %conv
  %.neg326 = sub i32 -3, %22
  %sub116 = add i32 %.neg326, %or.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 256) #10
  %tobool.not.i157 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i157, label %fb_cvt_pixclock.exit.fb_cvt_print_name.exit_crit_edge, label %if.end.i

fb_cvt_pixclock.exit.fb_cvt_print_name.exit_crit_edge: ; preds = %fb_cvt_pixclock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %fb_cvt_print_name.exit

if.end.i:                                         ; preds = %fb_cvt_pixclock.exit
  %mul.i161 = mul i32 %div.i128321.pre-phi, %and42
  %mul.i161.frozen = freeze i32 %mul.i161
  %div1.i162 = udiv i32 %mul.i161.frozen, 1000000
  %24 = mul i32 %div1.i162, 1000000
  %rem.i163.decomposed = sub i32 %mul.i161.frozen, %24
  %div7.i = udiv i32 %rem.i163.decomposed, 1000
  %call10.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 255, ptr noundef nonnull @.str.11, i32 noundef %and42, i32 noundef %5, i32 noundef %7) #6
  %sub.i164 = sub i32 255, %call10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cvt.sroa.102.2)
  %tobool11.not.i = icmp eq i32 %cvt.sroa.102.2, 0
  br i1 %tobool11.not.i, label %if.else.i166, label %if.then12.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr13.i = getelementptr i8, ptr %call7.i.i.i, i32 %call10.i
  %call14.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr13.i, i32 noundef %sub.i164, ptr noundef nonnull @.str.12, i32 noundef %div1.i162, i32 noundef %div7.i) #6
  br label %do.end.i169

if.else.i166:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %mul.i161)
  %25 = icmp ult i32 %mul.i161, 1000000
  br i1 %25, label %if.else.i166.if.end21.i_crit_edge, label %if.then16.i

if.else.i166.if.end21.i_crit_edge:                ; preds = %if.else.i166
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i

if.then16.i:                                      ; preds = %if.else.i166
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr17.i = getelementptr i8, ptr %call7.i.i.i, i32 %call10.i
  %call18.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr17.i, i32 noundef %sub.i164, ptr noundef nonnull @.str.13, i32 noundef %div1.i162) #6
  %sub19.i = sub i32 %sub.i164, %call18.i
  %add20.i = add i32 %call18.i, %call10.i
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then16.i, %if.else.i166.if.end21.i_crit_edge
  %cnt.0.i = phi i32 [ %sub19.i, %if.then16.i ], [ %sub.i164, %if.else.i166.if.end21.i_crit_edge ]
  %offset.0.i = phi i32 [ %add20.i, %if.then16.i ], [ %call10.i, %if.else.i166.if.end21.i_crit_edge ]
  %add.ptr22.i = getelementptr i8, ptr %call7.i.i.i, i32 %offset.0.i
  %call23.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr22.i, i32 noundef %cnt.0.i, ptr noundef nonnull @.str.14, i32 noundef %div7.i) #6
  %sub24.i = sub i32 %cnt.0.i, %call23.i
  %add25.i = add i32 %call23.i, %offset.0.i
  br i1 %14, label %switch.lookup, label %if.end21.i.if.end53.i_crit_edge

if.end21.i.if.end53.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53.i

switch.lookup:                                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.fb_find_mode_cvt, i32 0, i32 %aspect.0.i
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %add.ptr33.i = getelementptr i8, ptr %call7.i.i.i, i32 %add25.i
  %call34.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr33.i, i32 noundef %sub24.i, ptr noundef nonnull %switch.load) #6
  br label %if.end53.i

if.end53.i:                                       ; preds = %switch.lookup, %if.end21.i.if.end53.i_crit_edge
  %read.0.i = phi i32 [ 0, %if.end21.i.if.end53.i_crit_edge ], [ %call34.i, %switch.lookup ]
  br i1 %tobool1.not.not, label %if.end53.i.do.end.i169_crit_edge, label %if.then57.i

if.end53.i.do.end.i169_crit_edge:                 ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i169

if.then57.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  %add55.i = add i32 %read.0.i, %add25.i
  %sub54.i = sub i32 %sub24.i, %read.0.i
  %add.ptr58.i = getelementptr i8, ptr %call7.i.i.i, i32 %add55.i
  %call59.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr58.i, i32 noundef %sub54.i, ptr noundef nonnull @.str.19) #6
  br label %do.end.i169

do.end.i169:                                      ; preds = %if.then57.i, %if.end53.i.do.end.i169_crit_edge, %if.then12.i
  %call64.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %call7.i.i.i) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %fb_cvt_print_name.exit

fb_cvt_print_name.exit:                           ; preds = %do.end.i169, %fb_cvt_pixclock.exit.fb_cvt_print_name.exit_crit_edge
  %27 = ptrtoint ptr %refresh to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %spec.select314, ptr %refresh, align 4
  %div.i172 = udiv i32 %mul7.i, 1000
  %div1.i173 = udiv i32 1000000000, %div.i172
  %pixclock2.i = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 4
  %28 = ptrtoint ptr %pixclock2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div1.i173, ptr %pixclock2.i, align 4
  %left_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 5
  %29 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add98, ptr %left_margin.i, align 4
  %right_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 6
  %30 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add105, ptr %right_margin.i, align 4
  %hsync_len.i = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 9
  %31 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %hsync.0.i312, ptr %hsync_len.i, align 4
  %upper_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 7
  %32 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub116, ptr %upper_margin.i, align 4
  %lower_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 8
  %33 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add107, ptr %lower_margin.i, align 4
  %vsync_len.i = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 10
  %34 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv, ptr %vsync_len.i, align 4
  %sync.i = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 11
  %35 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sync.i, align 4
  %and.i174 = and i32 %36, -4
  %storemerge.v.i = select i1 %tobool1.not.not, i32 2, i32 1
  %storemerge.i = or i32 %and.i174, %storemerge.v.i
  store i32 %storemerge.i, ptr %sync.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %fb_cvt_print_name.exit, %do.end
  %retval.0 = phi i32 [ 0, %fb_cvt_print_name.exit ], [ 1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/core/fbcvt.c", i32 327, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @fb_find_mode_cvt._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @fb_find_mode_cvt._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/core/fbcvt.c", i32 333, i32 3}
!8 = !{ptr @fb_find_mode_cvt._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @fb_find_mode_cvt._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/core/fbcvt.c", i32 347, i32 4}
!12 = !{ptr @fb_find_mode_cvt._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @fb_find_mode_cvt._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/core/fbcvt.c", i32 205, i32 3}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @fb_cvt_aspect_ratio._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @fb_cvt_aspect_ratio._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @fb_cvt_vbi_tab, !20, !"fb_cvt_vbi_tab", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/core/fbcvt.c", i32 61, i32 28}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/core/fbcvt.c", i32 227, i32 35}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/video/fbdev/core/fbcvt.c", i32 233, i32 29}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/core/fbcvt.c", i32 237, i32 37}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/core/fbcvt.c", i32 242, i32 36}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/core/fbcvt.c", i32 247, i32 37}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/video/fbdev/core/fbcvt.c", i32 249, i32 37}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/core/fbcvt.c", i32 251, i32 37}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/core/fbcvt.c", i32 253, i32 37}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/video/fbdev/core/fbcvt.c", i32 260, i32 37}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/core/fbcvt.c", i32 266, i32 2}
!41 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @fb_cvt_print_name._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @fb_cvt_print_name._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
