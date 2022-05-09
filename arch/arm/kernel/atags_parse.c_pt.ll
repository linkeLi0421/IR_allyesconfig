; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/atags_parse.c_pt.bc'
source_filename = "../arch/arm/kernel/atags_parse.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tagtable = type { i32, ptr }
%struct.anon.69 = type { %struct.tag_header, %struct.tag_core, %struct.tag_header, %struct.tag_mem32, %struct.tag_header }
%struct.tag_core = type { i32, i32, i32 }
%struct.tag_mem32 = type { i32, i32 }
%struct.tag_header = type { i32, i32 }
%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.tag = type { %struct.tag_header, %union.anon }
%union.anon = type { %struct.tag_videolfb }
%struct.tag_videolfb = type { i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.tag_videotext = type { i8, i8, i16, i8, i8, i16, i8, i8, i16 }

@__tagtable_parse_tag_core = internal constant %struct.tagtable { i32 1413545985, ptr @parse_tag_core }, section ".taglist.init", align 4
@__tagtable_parse_tag_mem32 = internal constant %struct.tagtable { i32 1413545986, ptr @parse_tag_mem32 }, section ".taglist.init", align 4
@__tagtable_parse_tag_videotext = internal constant %struct.tagtable { i32 1413545987, ptr @parse_tag_videotext }, section ".taglist.init", align 4
@__tagtable_parse_tag_ramdisk = internal constant %struct.tagtable { i32 1413545988, ptr @parse_tag_ramdisk }, section ".taglist.init", align 4
@__tagtable_parse_tag_serialnr = internal constant %struct.tagtable { i32 1413545990, ptr @parse_tag_serialnr }, section ".taglist.init", align 4
@__tagtable_parse_tag_revision = internal constant %struct.tagtable { i32 1413545991, ptr @parse_tag_revision }, section ".taglist.init", align 4
@__tagtable_parse_tag_cmdline = internal constant %struct.tagtable { i32 1413545993, ptr @parse_tag_cmdline }, section ".taglist.init", align 4
@default_tags = internal global %struct.anon.69 { %struct.tag_header { i32 5, i32 1413545985 }, %struct.tag_core { i32 1, i32 4096, i32 255 }, %struct.tag_header { i32 4, i32 1413545986 }, %struct.tag_mem32 { i32 16777216, i32 0 }, %struct.tag_header zeroinitializer }, section ".init.data", align 4
@default_command_line = internal global [1024 x i8] zeroinitializer, section ".init.data", align 1
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__arch_info_begin = external dso_local constant [0 x %struct.machine_desc], align 4
@__arch_info_end = external dso_local constant [0 x %struct.machine_desc], align 4
@setup_machine_tags._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016Machine: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"setup_machine_tags\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"arch/arm/kernel/atags_parse.c\00", [34 x i8] zeroinitializer }, align 32
@setup_machine_tags._entry_ptr = internal global ptr @setup_machine_tags._entry, section ".printk_index", align 4
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Warning: Neither atags nor dtb found\0A\00", [58 x i8] zeroinitializer }, align 32
@boot_command_line = external dso_local global [0 x i8], section ".init.data", align 1
@root_mountflags = external dso_local local_unnamed_addr global i32, align 4
@ROOT_DEV = external dso_local local_unnamed_addr global i32, align 4
@screen_info = external dso_local local_unnamed_addr global %struct.screen_info, align 1
@rd_image_start = external dso_local local_unnamed_addr global i32, align 4
@rd_size = external dso_local local_unnamed_addr global i32, align 4
@system_serial_low = external dso_local local_unnamed_addr global i32, align 4
@system_serial_high = external dso_local local_unnamed_addr global i32, align 4
@system_rev = external dso_local local_unnamed_addr global i32, align 4
@parse_tags._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014Ignoring unrecognised tag 0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"parse_tags\00", [21 x i8] zeroinitializer }, align 32
@parse_tags._entry_ptr = internal global ptr @parse_tags._entry, section ".printk_index", align 4
@__tagtable_begin = external dso_local global %struct.tagtable, align 4
@__tagtable_end = external dso_local global %struct.tagtable, align 4
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 190, i32 4 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 212, i32 15 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [33 x i8] c"../arch/arm/kernel/atags_parse.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 165, i32 4 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__tagtable_parse_tag_cmdline, ptr @__tagtable_parse_tag_core, ptr @__tagtable_parse_tag_mem32, ptr @__tagtable_parse_tag_ramdisk, ptr @__tagtable_parse_tag_revision, ptr @__tagtable_parse_tag_serialnr, ptr @__tagtable_parse_tag_videotext, ptr @parse_tags._entry, ptr @parse_tags._entry_ptr, ptr @setup_machine_tags._entry, ptr @setup_machine_tags._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_machine_tags._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tags._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @parse_tag_core(ptr nocapture noundef readonly %tag) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %u = getelementptr inbounds %struct.tag, ptr %tag, i32 0, i32 1
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %u, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @root_mountflags to i32))
  %4 = load i32, ptr @root_mountflags, align 4
  %and3 = and i32 %4, -2
  store i32 %and3, ptr @root_mountflags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %rootdev = getelementptr inbounds %struct.tag, ptr %tag, i32 0, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %rootdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rootdev, align 4
  %conv.i = shl i32 %6, 12
  %7 = and i32 %conv.i, 267386880
  %and2.i = and i32 %6, 255
  %or.i = or i32 %7, %and2.i
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @ROOT_DEV to i32))
  store i32 %or.i, ptr @ROOT_DEV, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @parse_tag_mem32(ptr nocapture noundef readonly %tag) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.tag, ptr %tag, i32 0, i32 1
  %start = getelementptr inbounds %struct.tag, ptr %tag, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start, align 4
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %u, align 4
  %conv2 = zext i32 %3 to i64
  %call = tail call i32 @arm_add_memory(i64 noundef %conv, i64 noundef %conv2) #7
  ret i32 %call
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @parse_tag_videotext(ptr nocapture noundef readonly %tag) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.tag, ptr %tag, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %u, align 4
  call void @__asan_store1_noabort(i32 ptrtoint (ptr @screen_info to i32))
  store i8 %1, ptr @screen_info, align 1
  %y = getelementptr inbounds %struct.tag_videotext, ptr %u, i32 0, i32 1
  %2 = ptrtoint ptr %y to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %y, align 1
  call void @__asan_store1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 1) to i32))
  store i8 %3, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 1), align 1
  %video_page = getelementptr inbounds %struct.tag, ptr %tag, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %video_page to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %video_page, align 2
  call void @__asan_storeN_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 3) to i32), i32 2)
  store i16 %5, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 3), align 1
  %video_mode = getelementptr inbounds %struct.tag, ptr %tag, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %video_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %video_mode, align 4
  call void @__asan_store1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 4) to i32))
  store i8 %7, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 4), align 1
  %video_cols = getelementptr inbounds %struct.tag_videotext, ptr %u, i32 0, i32 4
  %8 = ptrtoint ptr %video_cols to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %video_cols, align 1
  call void @__asan_store1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 5) to i32))
  store i8 %9, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 5), align 1
  %video_ega_bx = getelementptr inbounds %struct.tag, ptr %tag, i32 0, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %video_ega_bx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %video_ega_bx, align 2
  call void @__asan_storeN_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 8) to i32), i32 2)
  store i16 %11, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 8), align 1
  %video_lines = getelementptr inbounds %struct.tag, ptr %tag, i32 0, i32 1, i32 0, i32 4
  %12 = ptrtoint ptr %video_lines to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %video_lines, align 4
  call void @__asan_store1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 10) to i32))
  store i8 %13, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 10), align 1
  %video_isvga = getelementptr inbounds %struct.tag_videotext, ptr %u, i32 0, i32 7
  %14 = ptrtoint ptr %video_isvga to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %video_isvga, align 1
  call void @__asan_store1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 11) to i32))
  store i8 %15, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 11), align 1
  %video_points = getelementptr inbounds %struct.tag_videotext, ptr %u, i32 0, i32 8
  %16 = ptrtoint ptr %video_points to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %video_points, align 2
  call void @__asan_storeN_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 12) to i32), i32 2)
  store i16 %17, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 12), align 1
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @parse_tag_ramdisk(ptr nocapture noundef readonly %tag) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %start = getelementptr inbounds %struct.tag, ptr %tag, i32 0, i32 1, i32 0, i32 4
  %0 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rd_image_start to i32))
  store i32 %1, ptr @rd_image_start, align 4
  %size = getelementptr inbounds %struct.tag, ptr %tag, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rd_size to i32))
  store i32 %3, ptr @rd_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @parse_tag_serialnr(ptr nocapture noundef readonly %tag) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.tag, ptr %tag, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %u, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @system_serial_low to i32))
  store i32 %1, ptr @system_serial_low, align 4
  %high = getelementptr inbounds %struct.tag, ptr %tag, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %high to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %high, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @system_serial_high to i32))
  store i32 %3, ptr @system_serial_high, align 4
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @parse_tag_revision(ptr nocapture noundef readonly %tag) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.tag, ptr %tag, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %u, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @system_rev to i32))
  store i32 %1, ptr @system_rev, align 4
  ret i32 0
}

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @parse_tag_cmdline(ptr noundef %tag) #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.tag, ptr %tag, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef nonnull @default_command_line, ptr noundef %u, i32 noundef 1024) #7
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @setup_machine_tags(ptr noundef %atags_vaddr, i32 noundef %machine_nr) local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  %from = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %from) #7
  %0 = ptrtoint ptr %from to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @default_command_line, ptr %from, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %1 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %shl = shl i32 %1, 12
  store i32 %shl, ptr getelementptr inbounds (%struct.anon.69, ptr @default_tags, i32 0, i32 3, i32 1), align 4
  br i1 icmp ult (ptr @__arch_info_begin, ptr @__arch_info_end), label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %p.059 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ @__arch_info_begin, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %p.059 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p.059, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %machine_nr)
  %cmp1 = icmp eq i32 %3, %machine_nr
  br i1 %cmp1, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.machine_desc, ptr %p.059, i32 1
  %cmp = icmp ult ptr %incdec.ptr, @__arch_info_end
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %name = getelementptr inbounds %struct.machine_desc, ptr %p.059, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %5) #10
  %tobool.not = icmp eq ptr %p.059, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end3

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %for.end
  %tobool4.not = icmp eq ptr %atags_vaddr, null
  br i1 %tobool4.not, label %if.else, label %if.end3.if.end10_crit_edge

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.else:                                          ; preds = %if.end3
  %atag_offset = getelementptr inbounds %struct.machine_desc, ptr %p.059, i32 0, i32 2
  %6 = ptrtoint ptr %atag_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %atag_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %if.else.if.end10_crit_edge, label %if.then7

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %7, -1073741824
  %8 = inttoptr i32 %add to ptr
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.else.if.end10_crit_edge, %if.end3.if.end10_crit_edge
  %tags.0 = phi ptr [ %8, %if.then7 ], [ @default_tags, %if.else.if.end10_crit_edge ], [ %atags_vaddr, %if.end3.if.end10_crit_edge ]
  %tag = getelementptr inbounds %struct.tag_header, ptr %tags.0, i32 0, i32 1
  %9 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1413545985, i32 %10)
  %cmp11.not = icmp eq i32 %10, 1413545985
  br i1 %cmp11.not, label %if.end10.if.end18_crit_edge, label %if.end13

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end13:                                         ; preds = %if.end10
  tail call void @convert_to_tag_list(ptr noundef %tags.0) #7
  %11 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1413545985, i32 %.pr)
  %cmp16.not = icmp eq i32 %.pr, 1413545985
  br i1 %cmp16.not, label %if.end13.if.end18_crit_edge, label %if.then17

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @early_print(ptr noundef nonnull @.str.3) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end13.if.end18_crit_edge, %if.end10.if.end18_crit_edge
  %tags.1 = phi ptr [ @default_tags, %if.then17 ], [ %tags.0, %if.end13.if.end18_crit_edge ], [ %tags.0, %if.end10.if.end18_crit_edge ]
  %fixup = getelementptr inbounds %struct.machine_desc, ptr %p.059, i32 0, i32 15
  %12 = ptrtoint ptr %fixup to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fixup, align 4
  %tobool19.not = icmp eq ptr %13, null
  br i1 %tobool19.not, label %if.end18.if.end22_crit_edge, label %if.then20

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  call void %13(ptr noundef %tags.1, ptr noundef nonnull %from) #7
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end18.if.end22_crit_edge
  %tag24 = getelementptr inbounds %struct.tag_header, ptr %tags.1, i32 0, i32 1
  %14 = ptrtoint ptr %tag24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tag24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1413545985, i32 %15)
  %cmp25 = icmp eq i32 %15, 1413545985
  br i1 %cmp25, label %if.then26, label %if.end22.if.end31_crit_edge

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then26:                                        ; preds = %if.end22
  %call27 = call i32 @memblock_phys_mem_size() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then26.if.end30_crit_edge, label %if.then29

if.then26.if.end30_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then29:                                        ; preds = %if.then26
  %16 = ptrtoint ptr %tags.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tags.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not11.i = icmp eq i32 %17, 0
  br i1 %tobool.not11.i, label %if.then29.if.end30_crit_edge, label %if.then29.for.body.i_crit_edge

if.then29.for.body.i_crit_edge:                   ; preds = %if.then29
  br label %for.body.i

if.then29.if.end30_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then29.for.body.i_crit_edge
  %tag.addr.012.i = phi ptr [ %add.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %tags.1, %if.then29.for.body.i_crit_edge ]
  %tag2.i = getelementptr inbounds %struct.tag_header, ptr %tag.addr.012.i, i32 0, i32 1
  %18 = ptrtoint ptr %tag2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tag2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1413545986, i32 %19)
  %cmp.i = icmp eq i32 %19, 1413545986
  br i1 %cmp.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %tag2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %tag2.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %21 = ptrtoint ptr %tag.addr.012.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tag.addr.012.i, align 4
  %add.ptr.i = getelementptr i32, ptr %tag.addr.012.i, i32 %22
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i, align 4
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %for.inc.i.if.end30_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end30_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.end30:                                         ; preds = %for.inc.i.if.end30_crit_edge, %if.then29.if.end30_crit_edge, %if.then26.if.end30_crit_edge
  call void @save_atags(ptr noundef %tags.1) #7
  call fastcc void @parse_tags(ptr noundef %tags.1) #11
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end22.if.end31_crit_edge
  %25 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %from, align 4
  %call32 = call i32 @strlcpy(ptr noundef nonnull @boot_command_line, ptr noundef %26, i32 noundef 1024) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %p.059, %if.end31 ], [ null, %for.end.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %from) #7
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @convert_to_tag_list(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_print(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_phys_mem_size() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @save_atags(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @parse_tags(ptr noundef %t) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not18 = icmp eq i32 %1, 0
  br i1 %tobool.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %t.addr.019 = phi ptr [ %add.ptr, %for.inc.for.body_crit_edge ], [ %t, %entry.for.body_crit_edge ]
  br i1 icmp ult (ptr @__tagtable_begin, ptr @__tagtable_end), label %for.body.lr.ph.i, label %for.body.parse_tag.exit_crit_edge

for.body.parse_tag.exit_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_tag.exit

for.body.lr.ph.i:                                 ; preds = %for.body
  %tag1.i = getelementptr inbounds %struct.tag_header, ptr %t.addr.019, i32 0, i32 1
  %2 = ptrtoint ptr %tag1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tag1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__tagtable_begin to i32))
  %4 = load i32, ptr @__tagtable_begin, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp3.i15 = icmp eq i32 %3, %4
  br i1 %cmp3.i15, label %for.body.lr.ph.i.if.then.i_crit_edge, label %for.body.lr.ph.i.for.inc.i_crit_edge

for.body.lr.ph.i.for.inc.i_crit_edge:             ; preds = %for.body.lr.ph.i
  br label %for.inc.i

for.body.lr.ph.i.if.then.i_crit_edge:             ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.body.i:                                       ; preds = %for.inc.i
  %5 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %incdec.ptr.i, align 4
  %cmp3.i = icmp eq i32 %3, %6
  br i1 %cmp3.i, label %for.body.i.if.then.i_crit_edge, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.body.i.if.then.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %for.body.i.if.then.i_crit_edge, %for.body.lr.ph.i.if.then.i_crit_edge
  %cmp14.i.lcssa = phi i32 [ zext (i1 icmp ult (ptr @__tagtable_begin, ptr @__tagtable_end) to i32), %for.body.lr.ph.i.if.then.i_crit_edge ], [ 1, %for.body.i.if.then.i_crit_edge ]
  %t.013.i.lcssa = phi ptr [ @__tagtable_begin, %for.body.lr.ph.i.if.then.i_crit_edge ], [ %incdec.ptr.i, %for.body.i.if.then.i_crit_edge ]
  %parse.i = getelementptr inbounds %struct.tagtable, ptr %t.013.i.lcssa, i32 0, i32 1
  %7 = ptrtoint ptr %parse.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parse.i, align 4
  %call.i = tail call i32 %8(ptr noundef %t.addr.019) #7
  br label %parse_tag.exit

for.inc.i:                                        ; preds = %for.body.i.for.inc.i_crit_edge, %for.body.lr.ph.i.for.inc.i_crit_edge
  %t.013.i16 = phi ptr [ %incdec.ptr.i, %for.body.i.for.inc.i_crit_edge ], [ @__tagtable_begin, %for.body.lr.ph.i.for.inc.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.tagtable, ptr %t.013.i16, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, @__tagtable_end
  br i1 %cmp.i, label %for.body.i, label %for.inc.i.do.end_crit_edge

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

parse_tag.exit:                                   ; preds = %if.then.i, %for.body.parse_tag.exit_crit_edge
  %cmp11.i = phi i32 [ %cmp14.i.lcssa, %if.then.i ], [ zext (i1 icmp ult (ptr @__tagtable_begin, ptr @__tagtable_end) to i32), %for.body.parse_tag.exit_crit_edge ]
  %conv.i = and i32 %cmp11.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool1.not = icmp eq i32 %conv.i, 0
  br i1 %tobool1.not, label %parse_tag.exit.do.end_crit_edge, label %parse_tag.exit.for.inc_crit_edge

parse_tag.exit.for.inc_crit_edge:                 ; preds = %parse_tag.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

parse_tag.exit.do.end_crit_edge:                  ; preds = %parse_tag.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %parse_tag.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge
  %tag = getelementptr inbounds %struct.tag_header, ptr %t.addr.019, i32 0, i32 1
  %9 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tag, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %10) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end, %parse_tag.exit.for.inc_crit_edge
  %11 = ptrtoint ptr %t.addr.019 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %t.addr.019, align 4
  %add.ptr = getelementptr i32, ptr %t.addr.019, i32 %12
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr, align 4
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_add_memory(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !26, !28, !29, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__tagtable_parse_tag_core, !1, !"__tagtable_parse_tag_core", i1 false, i1 false}
!1 = !{!"../arch/arm/kernel/atags_parse.c", i32 63, i32 1}
!2 = !{ptr @__tagtable_parse_tag_mem32, !3, !"__tagtable_parse_tag_mem32", i1 false, i1 false}
!3 = !{!"../arch/arm/kernel/atags_parse.c", i32 70, i32 1}
!4 = !{ptr @__tagtable_parse_tag_videotext, !5, !"__tagtable_parse_tag_videotext", i1 false, i1 false}
!5 = !{!"../arch/arm/kernel/atags_parse.c", i32 87, i32 1}
!6 = !{ptr @__tagtable_parse_tag_ramdisk, !7, !"__tagtable_parse_tag_ramdisk", i1 false, i1 false}
!7 = !{!"../arch/arm/kernel/atags_parse.c", i32 101, i32 1}
!8 = !{ptr @__tagtable_parse_tag_serialnr, !9, !"__tagtable_parse_tag_serialnr", i1 false, i1 false}
!9 = !{!"../arch/arm/kernel/atags_parse.c", i32 111, i32 1}
!10 = !{ptr @__tagtable_parse_tag_revision, !11, !"__tagtable_parse_tag_revision", i1 false, i1 false}
!11 = !{!"../arch/arm/kernel/atags_parse.c", i32 119, i32 1}
!12 = !{ptr @__tagtable_parse_tag_cmdline, !13, !"__tagtable_parse_tag_cmdline", i1 false, i1 false}
!13 = !{!"../arch/arm/kernel/atags_parse.c", i32 136, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/kernel/atags_parse.c", i32 190, i32 4}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @setup_machine_tags._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @setup_machine_tags._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/kernel/atags_parse.c", i32 212, i32 15}
!22 = !{ptr @default_tags, !23, !"default_tags", i1 false, i1 false}
!23 = !{!"../arch/arm/kernel/atags_parse.c", i32 45, i32 3}
!24 = !{ptr @default_command_line, !25, !"default_command_line", i1 false, i1 false}
!25 = !{!"../arch/arm/kernel/atags_parse.c", i32 33, i32 13}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/kernel/atags_parse.c", i32 165, i32 4}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @parse_tags._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @parse_tags._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
