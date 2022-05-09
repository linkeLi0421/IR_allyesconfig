; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ccs/ccs-data.c_pt.bc'
source_filename = "../drivers/media/i2c/ccs/ccs-data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.bin_container = type { ptr, ptr, ptr, i32 }
%struct.ccs_data_container = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, ptr, i8, ptr }
%struct.__ccs_data_block = type { i8, %struct.__ccs_data_length_specifier }
%struct.__ccs_data_length_specifier = type { i8 }
%struct.__ccs_data_block_version = type { [2 x i8], [2 x i8], [2 x i8], i8, i8 }
%struct.ccs_data_block_version = type { i16, i16, i16, i8, i8 }
%struct.__ccs_data_block_end = type { [4 x i8] }
%struct.__ccs_data_block_regs = type { i8 }
%struct.__ccs_data_block_regs2 = type { i8, i8 }
%struct.__ccs_data_block_regs3 = type { i8, [2 x i8] }
%struct.ccs_reg = type { i16, i16, ptr }
%struct.__ccs_data_block_pdaf_pix_loc = type { [2 x i8], [2 x i8], i8, i8, i8, [2 x i8] }
%struct.ccs_pdaf_pix_loc = type { i16, i16, i8, i8, i8, i16, ptr, i8, ptr }
%struct.__ccs_data_block_pdaf_pix_loc_block_desc_group = type { [2 x i8], i8 }
%struct.ccs_pdaf_pix_loc_block_desc_group = type { i8, i16, ptr }
%struct.__ccs_data_block_pdaf_pix_loc_block_desc = type { i8, [2 x i8] }
%struct.ccs_pdaf_pix_loc_block_desc = type { i8, i16 }
%struct.ccs_pdaf_pix_loc_pixel_desc_group = type { i8, ptr }
%struct.ccs_pdaf_pix_loc_pixel_desc = type { i8, i8, i8 }
%struct.__ccs_data_block_pdaf_pix_loc_pixel_desc = type { i8, i8, i8 }
%struct.__ccs_data_block_rule_if = type { [2 x i8], i8, i8 }
%struct.ccs_rule = type { i32, ptr, i32, ptr, i32, ptr, ptr, ptr }
%struct.ccs_if_rule = type { i16, i8, i8 }
%struct.__ccs_data_block_pdaf_readout = type { i8, i8 }
%struct.ccs_pdaf_readout = type { i8, ptr }
%struct.__ccs_data_block_ffd = type { i8, i8 }
%struct.ccs_frame_format_descs = type { i8, i8, ptr, ptr }
%struct.ccs_frame_format_desc = type { i8, i16 }
%struct.__ccs_data_block_ffd_entry = type { i8, i8, [2 x i8] }

@ccs_data_parse.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ccs\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ccs_data_parse\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/media/i2c/ccs/ccs-data.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"parsing mismatch; base %p; now %p; end %p\0A\00", [53 x i8] zeroinitializer }, align 32
@__ccs_data_parse.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__ccs_data_parse\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Don't know how to handle version %u\0A\00", [59 x i8] zeroinitializer }, align 32
@__ccs_data_parse.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 -54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Parsing CCS static data version %u\0A\00", [60 x i8] zeroinitializer }, align 32
@__ccs_data_parse.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.7, i8 0, i8 -28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"WARNING: not handling block ID 0x%2.2x\0A\00", [56 x i8] zeroinitializer }, align 32
@ccs_data_block_parse_header.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ccs_data_block_parse_header\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Block ID 0x%2.2x, header length %zu, payload length %zu\0A\00", [39 x i8] zeroinitializer }, align 32
@ccs_data_parse_rules.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 -117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ccs_data_parse_rules\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Don't know how to handle rule type %u!\0A\00", [56 x i8] zeroinitializer }, align 32
@ccs_data_parse_end.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 -60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ccs_data_parse_end\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid end block length %u\0A\00", [35 x i8] zeroinitializer }, align 32
@print_ccs_data_version.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"print_ccs_data_version\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"static data version %4.4x.%4.4x, date %4.4u-%2.2u-%2.2u\0A\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [14 x i64] [i64 12, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 32, i64 33, i64 36, i64 37, i64 40, i64 127]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 955, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 806, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 811, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 912, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 193, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 556, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 783, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [36 x i8] c"../drivers/media/i2c/ccs/ccs-data.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 165, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ccs_data_parse(ptr noundef %ccsdata, ptr noundef %data, i32 noundef %len, ptr noundef %dev, i1 noundef zeroext %verbose) local_unnamed_addr #0 align 64 {
entry:
  %bin = alloca %struct.bin_container, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bin) #7
  %0 = call ptr @memset(ptr %bin, i32 0, i32 16)
  %call = call fastcc i32 @__ccs_data_parse(ptr noundef nonnull %bin, ptr noundef %ccsdata, ptr noundef %data, i32 noundef %len, ptr noundef %dev, i1 noundef zeroext %verbose)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %size.i = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 3
  %1 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size.i, align 4
  %call.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef %2, i32 noundef 3520, i32 noundef -1) #10
  %now.i = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 1
  %3 = ptrtoint ptr %now.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i.i.i, ptr %now.i, align 4
  %4 = ptrtoint ptr %bin to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.i.i, ptr %bin, align 4
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 %6
  %end.i = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 2
  %7 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i, ptr %end.i, align 4
  %call6 = call fastcc i32 @__ccs_data_parse(ptr noundef nonnull %bin, ptr noundef %ccsdata, ptr noundef %data, i32 noundef %len, ptr noundef %dev, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_free_crit_edge

if.end5.out_free_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free

if.end9:                                          ; preds = %if.end5
  br i1 %verbose, label %land.lhs.true, label %if.end9.if.end14_crit_edge

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end9
  %8 = ptrtoint ptr %ccsdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ccsdata, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %land.lhs.true.if.end14_crit_edge, label %if.then12

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @print_ccs_data_version(ptr noundef %dev, ptr noundef nonnull %9)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %land.lhs.true.if.end14_crit_edge, %if.end9.if.end14_crit_edge
  %10 = ptrtoint ptr %now.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %now.i, align 4
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i, align 4
  %cmp.not = icmp eq ptr %11, %13
  br i1 %cmp.not, label %if.end25, label %if.then15

if.then15:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_data_parse.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_data_parse, %if.then21)) #7
          to label %out_free [label %if.then21], !srcloc !41

if.then21:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bin, align 4
  %16 = ptrtoint ptr %now.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %now.i, align 4
  %18 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_data_parse.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef %15, ptr noundef %17, ptr noundef %19) #7
  br label %out_free

if.end25:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bin, align 4
  %backing = getelementptr inbounds %struct.ccs_data_container, ptr %ccsdata, i32 0, i32 18
  %22 = ptrtoint ptr %backing to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %backing, align 4
  br label %cleanup

out_free:                                         ; preds = %if.then21, %if.then15, %if.end5.out_free_crit_edge
  %rval.0 = phi i32 [ %call6, %if.end5.out_free_crit_edge ], [ -71, %if.then21 ], [ -71, %if.then15 ]
  %23 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bin, align 4
  call void @kvfree(ptr noundef %24) #7
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end25, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rval.0, %out_free ], [ 0, %if.end25 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bin) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ccs_data_parse(ptr noundef %bin, ptr noundef %ccsdata, ptr noundef %data, i32 noundef %len, ptr noundef %dev, i1 noundef zeroext %verbose) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %data, i32 %len
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %2 = lshr i8 %1, 5
  %conv = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %1)
  %cmp.not = icmp ult i8 %1, 32
  br i1 %cmp.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ccs_data_parse.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ccs_data_parse, %if.then6)) #7
          to label %cleanup127 [label %if.then6], !srcloc !41

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ccs_data_parse.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %conv) #7
  br label %cleanup127

if.end7:                                          ; preds = %entry
  br i1 %verbose, label %do.body10, label %if.end7.if.end26_crit_edge

if.end7.if.end26_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.body10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ccs_data_parse.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ccs_data_parse, %if.then22)) #7
          to label %if.end26 [label %if.then22], !srcloc !41

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ccs_data_parse.__UNIQUE_ID_ddebug233, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef 0) #7
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %do.body10, %if.end7.if.end26_crit_edge
  %3 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bin, align 4
  %tobool27.not = icmp eq ptr %4, null
  br i1 %tobool27.not, label %if.then28, label %if.end26.if.end30_crit_edge

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %5 = call ptr @memset(ptr %ccsdata, i32 0, i32 76)
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end26.if.end30_crit_edge
  %cmp31302 = icmp ugt ptr %add.ptr, %data
  br i1 %cmp31302, label %while.body.lr.ph, label %if.end30.cleanup127_crit_edge

if.end30.cleanup127_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127

while.body.lr.ph:                                 ; preds = %if.end30
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr to i32
  %end = getelementptr inbounds %struct.ccs_data_container, ptr %ccsdata, i32 0, i32 17
  %license = getelementptr inbounds %struct.ccs_data_container, ptr %ccsdata, i32 0, i32 16
  %license_length = getelementptr inbounds %struct.ccs_data_container, ptr %ccsdata, i32 0, i32 15
  %end.i.i236 = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 2
  %now.i.i237 = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 1
  %size.i.i234 = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 3
  %module_rules = getelementptr inbounds %struct.ccs_data_container, ptr %ccsdata, i32 0, i32 12
  %num_module_rules = getelementptr inbounds %struct.ccs_data_container, ptr %ccsdata, i32 0, i32 11
  %sensor_rules = getelementptr inbounds %struct.ccs_data_container, ptr %ccsdata, i32 0, i32 6
  %num_sensor_rules = getelementptr inbounds %struct.ccs_data_container, ptr %ccsdata, i32 0, i32 5
  %module_pdaf = getelementptr inbounds %struct.ccs_data_container, ptr %ccsdata, i32 0, i32 14
  %sensor_pdaf = getelementptr inbounds %struct.ccs_data_container, ptr %ccsdata, i32 0, i32 13
  %module_manufacturer_regs = getelementptr inbounds %struct.ccs_data_container, ptr %ccsdata, i32 0, i32 10
  %num_module_manufacturer_regs = getelementptr inbounds %struct.ccs_data_container, ptr %ccsdata, i32 0, i32 9
  %module_read_only_regs = getelementptr inbounds %struct.ccs_data_container, ptr %ccsdata, i32 0, i32 8
  %num_module_read_only_regs = getelementptr inbounds %struct.ccs_data_container, ptr %ccsdata, i32 0, i32 7
  %sensor_manufacturer_regs = getelementptr inbounds %struct.ccs_data_container, ptr %ccsdata, i32 0, i32 4
  %num_sensor_manufacturer_regs = getelementptr inbounds %struct.ccs_data_container, ptr %ccsdata, i32 0, i32 3
  %sensor_read_only_regs = getelementptr inbounds %struct.ccs_data_container, ptr %ccsdata, i32 0, i32 2
  %num_sensor_read_only_regs = getelementptr inbounds %struct.ccs_data_container, ptr %ccsdata, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %block.0304 = phi ptr [ %data, %while.body.lr.ph ], [ %add.ptr36.i, %sw.epilog.while.body_crit_edge ]
  %is_first.0.off0303 = phi i1 [ true, %while.body.lr.ph ], [ false, %sw.epilog.while.body_crit_edge ]
  %6 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bin, align 4
  %tobool35.not = icmp eq ptr %7, null
  %narrow = and i1 %tobool35.not, %verbose
  %sub.ptr.rhs.cast.i = ptrtoint ptr %block.0304 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i)
  %cmp.i = icmp ugt i32 %sub.ptr.sub.i, 1
  br i1 %cmp.i, label %if.end.i, label %while.body.cleanup127_crit_edge

while.body.cleanup127_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127

if.end.i:                                         ; preds = %while.body
  %length.i = getelementptr inbounds %struct.__ccs_data_block, ptr %block.0304, i32 0, i32 1
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %length.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i.i
  %cmp.not.i.i = icmp eq ptr %length.i, %add.ptr
  br i1 %cmp.not.i.i, label %if.end.i.cleanup127_crit_edge, label %if.end.i.i

if.end.i.cleanup127_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127

if.end.i.i:                                       ; preds = %if.end.i
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %length.i, align 1
  %conv.i.i = zext i8 %9 to i32
  %10 = lshr i32 %conv.i.i, 6
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.end.i.i.cleanup127_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb3.i.i
    i32 2, label %sw.bb17.i.i
  ]

if.end.i.i.cleanup127_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i = and i32 %conv.i.i, 63
  br label %sw.epilog.i.i

sw.bb3.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i.i)
  %cmp7.i.i = icmp ugt i32 %sub.ptr.sub.i.i, 1
  br i1 %cmp7.i.i, label %cleanup.thread.i.i, label %sw.bb3.i.i.cleanup127_crit_edge

sw.bb3.i.i.cleanup127_crit_edge:                  ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127

cleanup.thread.i.i:                               ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and13.i.i = shl nuw nsw i32 %conv.i.i, 8
  %shl.i.i = and i32 %and13.i.i, 16128
  %arrayidx15.i.i = getelementptr %struct.__ccs_data_block, ptr %block.0304, i32 1
  %12 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx15.i.i, align 1
  %conv16.i.i = zext i8 %13 to i32
  %add.i.i = or i32 %shl.i.i, %conv16.i.i
  br label %sw.epilog.i.i

sw.bb17.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub.i.i)
  %cmp21.i.i = icmp ugt i32 %sub.ptr.sub.i.i, 2
  br i1 %cmp21.i.i, label %cleanup39.thread.i.i, label %sw.bb17.i.i.cleanup127_crit_edge

sw.bb17.i.i.cleanup127_crit_edge:                 ; preds = %sw.bb17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127

cleanup39.thread.i.i:                             ; preds = %sw.bb17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and28.i.i = shl nuw nsw i32 %conv.i.i, 16
  %shl29.i.i = and i32 %and28.i.i, 4128768
  %shl33.i.i = shl nuw nsw i32 %conv.i.i, 8
  %add34.i.i = or i32 %shl29.i.i, %shl33.i.i
  %arrayidx36.i.i = getelementptr %struct.__ccs_data_block, ptr %block.0304, i32 1
  %14 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx36.i.i, align 1
  %conv37.i.i = zext i8 %15 to i32
  %add38.i.i = or i32 %add34.i.i, %conv37.i.i
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %cleanup39.thread.i.i, %cleanup.thread.i.i, %sw.bb.i.i
  %hlen.2.i.i = phi i32 [ 1, %sw.bb.i.i ], [ 2, %cleanup.thread.i.i ], [ 3, %cleanup39.thread.i.i ]
  %plen.2.i.i = phi i32 [ %and.i.i, %sw.bb.i.i ], [ %add.i.i, %cleanup.thread.i.i ], [ %add38.i.i, %cleanup39.thread.i.i ]
  %add41.i.i = add nsw i32 %plen.2.i.i, %hlen.2.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add41.i.i, i32 %sub.ptr.sub.i.i)
  %cmp45.not.i.i = icmp ugt i32 %add41.i.i, %sub.ptr.sub.i.i
  br i1 %cmp45.not.i.i, label %sw.epilog.i.i.cleanup127_crit_edge, label %if.end4.i

sw.epilog.i.i.cleanup127_crit_edge:               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127

if.end4.i:                                        ; preds = %sw.epilog.i.i
  %16 = ptrtoint ptr %block.0304 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %block.0304, align 1
  %18 = and i8 %17, 31
  %retval.0.i53.i = select i1 %is_first.0.off0303, i8 %18, i8 %17
  br i1 %narrow, label %do.body.i, label %if.end4.i.if.end43_crit_edge

if.end4.i.if.end43_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

do.body.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_data_block_parse_header.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ccs_data_parse, %if.then13.i)) #7
          to label %if.end43 [label %if.then13.i], !srcloc !41

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %retval.0.i53.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_data_block_parse_header.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %conv.i, i32 noundef %hlen.2.i.i, i32 noundef %plen.2.i.i) #7
  br label %if.end43

if.end43:                                         ; preds = %if.then13.i, %do.body.i, %if.end4.i.if.end43_crit_edge
  %conv26.i = zext i8 %retval.0.i53.i to i32
  %add.ptr.i = getelementptr i8, ptr %length.i, i32 %hlen.2.i.i
  %add.ptr36.i = getelementptr i8, ptr %add.ptr.i, i32 %plen.2.i.i
  %19 = zext i8 %retval.0.i53.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %retval.0.i53.i, label %do.body109 [
    i8 1, label %if.end43.sw.epilog_crit_edge
    i8 2, label %sw.bb
    i8 3, label %sw.bb49
    i8 5, label %sw.bb55
    i8 4, label %sw.bb61
    i8 6, label %sw.bb67
    i8 36, label %sw.bb73
    i8 37, label %sw.bb79
    i8 32, label %sw.bb85
    i8 33, label %sw.bb91
    i8 40, label %sw.bb97
    i8 127, label %sw.bb103
  ]

if.end43.sw.epilog_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end43
  %add.ptr.i223 = getelementptr %struct.__ccs_data_block_version, ptr %add.ptr.i, i32 1
  %cmp.not.i = icmp eq ptr %add.ptr.i223, %add.ptr36.i
  br i1 %cmp.not.i, label %if.end.i224, label %sw.bb.cleanup127_crit_edge

sw.bb.cleanup127_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127

if.end.i224:                                      ; preds = %sw.bb
  %20 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bin, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.then1.i, label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i224
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %size.i.i234 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size.i.i234, align 4
  %add1.i.i = add i32 %23, 8
  store i32 %add1.i.i, ptr %size.i.i234, align 4
  br label %sw.epilog

if.end2.i:                                        ; preds = %if.end.i224
  %24 = ptrtoint ptr %end.i.i236 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %end.i.i236, align 4
  %26 = ptrtoint ptr %now.i.i237 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %now.i.i237, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %25 to i32
  %sub.ptr.rhs.cast.i.i225 = ptrtoint ptr %27 to i32
  %sub.ptr.sub.i.i226 = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i225
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i.i226)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i226, 8
  br i1 %cmp.i.i, label %bin_alloc.exit.thread.i, label %bin_alloc.exit.i

bin_alloc.exit.thread.i:                          ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %ccsdata to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %ccsdata, align 4
  br label %cleanup127

bin_alloc.exit.i:                                 ; preds = %if.end2.i
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 8
  %29 = ptrtoint ptr %now.i.i237 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr.i.i, ptr %now.i.i237, align 4
  %30 = ptrtoint ptr %ccsdata to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %ccsdata, align 4
  %tobool4.not.i = icmp eq ptr %27, null
  br i1 %tobool4.not.i, label %bin_alloc.exit.i.cleanup127_crit_edge, label %if.end6.i

bin_alloc.exit.i.cleanup127_crit_edge:            ; preds = %bin_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127

if.end6.i:                                        ; preds = %bin_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %add.ptr.i, align 1
  %conv8.i = zext i8 %32 to i16
  %shl.i = shl nuw i16 %conv8.i, 8
  %arrayidx10.i = getelementptr [2 x i8], ptr %add.ptr.i, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx10.i, align 1
  %conv11.i = zext i8 %34 to i16
  %add.i = or i16 %shl.i, %conv11.i
  %35 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %add.i, ptr %27, align 2
  %static_data_version_minor.i = getelementptr inbounds %struct.__ccs_data_block_version, ptr %add.ptr.i, i32 0, i32 1
  %36 = ptrtoint ptr %static_data_version_minor.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %static_data_version_minor.i, align 1
  %conv15.i = zext i8 %37 to i16
  %shl16.i = shl nuw i16 %conv15.i, 8
  %arrayidx18.i = getelementptr %struct.__ccs_data_block_version, ptr %add.ptr.i, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx18.i, align 1
  %conv19.i = zext i8 %39 to i16
  %add20.i = or i16 %shl16.i, %conv19.i
  %version_minor.i = getelementptr inbounds %struct.ccs_data_block_version, ptr %27, i32 0, i32 1
  %40 = ptrtoint ptr %version_minor.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %add20.i, ptr %version_minor.i, align 2
  %year.i = getelementptr inbounds %struct.__ccs_data_block_version, ptr %add.ptr.i, i32 0, i32 2
  %41 = ptrtoint ptr %year.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %year.i, align 1
  %conv24.i = zext i8 %42 to i16
  %shl25.i = shl nuw i16 %conv24.i, 8
  %arrayidx27.i = getelementptr %struct.__ccs_data_block_version, ptr %add.ptr.i, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx27.i, align 1
  %conv28.i = zext i8 %44 to i16
  %add29.i = or i16 %shl25.i, %conv28.i
  %date_year.i = getelementptr inbounds %struct.ccs_data_block_version, ptr %27, i32 0, i32 2
  %45 = ptrtoint ptr %date_year.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %add29.i, ptr %date_year.i, align 2
  %month.i = getelementptr inbounds %struct.__ccs_data_block_version, ptr %add.ptr.i, i32 0, i32 3
  %46 = ptrtoint ptr %month.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %month.i, align 1
  %date_month.i = getelementptr inbounds %struct.ccs_data_block_version, ptr %27, i32 0, i32 3
  %48 = ptrtoint ptr %date_month.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %date_month.i, align 2
  %day.i = getelementptr inbounds %struct.__ccs_data_block_version, ptr %add.ptr.i, i32 0, i32 4
  %49 = ptrtoint ptr %day.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %day.i, align 1
  %date_day.i = getelementptr inbounds %struct.ccs_data_block_version, ptr %27, i32 0, i32 4
  %51 = ptrtoint ptr %date_day.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %date_day.i, align 1
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end43
  %call50 = tail call fastcc i32 @ccs_data_parse_regs(ptr noundef %bin, ptr noundef %sensor_read_only_regs, ptr noundef %num_sensor_read_only_regs, ptr noundef %add.ptr.i, ptr noundef %add.ptr36.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %sw.bb49.cleanup127_crit_edge, label %sw.bb49.sw.epilog_crit_edge

sw.bb49.sw.epilog_crit_edge:                      ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb49.cleanup127_crit_edge:                     ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127

sw.bb55:                                          ; preds = %if.end43
  %call56 = tail call fastcc i32 @ccs_data_parse_regs(ptr noundef %bin, ptr noundef %sensor_manufacturer_regs, ptr noundef %num_sensor_manufacturer_regs, ptr noundef %add.ptr.i, ptr noundef %add.ptr36.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %sw.bb55.cleanup127_crit_edge, label %sw.bb55.sw.epilog_crit_edge

sw.bb55.sw.epilog_crit_edge:                      ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb55.cleanup127_crit_edge:                     ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127

sw.bb61:                                          ; preds = %if.end43
  %call62 = tail call fastcc i32 @ccs_data_parse_regs(ptr noundef %bin, ptr noundef %module_read_only_regs, ptr noundef %num_module_read_only_regs, ptr noundef %add.ptr.i, ptr noundef %add.ptr36.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %sw.bb61.cleanup127_crit_edge, label %sw.bb61.sw.epilog_crit_edge

sw.bb61.sw.epilog_crit_edge:                      ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb61.cleanup127_crit_edge:                     ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127

sw.bb67:                                          ; preds = %if.end43
  %call68 = tail call fastcc i32 @ccs_data_parse_regs(ptr noundef %bin, ptr noundef %module_manufacturer_regs, ptr noundef %num_module_manufacturer_regs, ptr noundef %add.ptr.i, ptr noundef %add.ptr36.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %sw.bb67.cleanup127_crit_edge, label %sw.bb67.sw.epilog_crit_edge

sw.bb67.sw.epilog_crit_edge:                      ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb67.cleanup127_crit_edge:                     ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127

sw.bb73:                                          ; preds = %if.end43
  %call74 = tail call fastcc i32 @ccs_data_parse_pdaf(ptr noundef %bin, ptr noundef %sensor_pdaf, ptr noundef %add.ptr.i, ptr noundef %add.ptr36.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %sw.bb73.cleanup127_crit_edge, label %sw.bb73.sw.epilog_crit_edge

sw.bb73.sw.epilog_crit_edge:                      ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb73.cleanup127_crit_edge:                     ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127

sw.bb79:                                          ; preds = %if.end43
  %call80 = tail call fastcc i32 @ccs_data_parse_pdaf(ptr noundef %bin, ptr noundef %module_pdaf, ptr noundef %add.ptr.i, ptr noundef %add.ptr36.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %sw.bb79.cleanup127_crit_edge, label %sw.bb79.sw.epilog_crit_edge

sw.bb79.sw.epilog_crit_edge:                      ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb79.cleanup127_crit_edge:                     ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127

sw.bb85:                                          ; preds = %if.end43
  %call86 = tail call fastcc i32 @ccs_data_parse_rules(ptr noundef %bin, ptr noundef %sensor_rules, ptr noundef %num_sensor_rules, ptr noundef %add.ptr.i, ptr noundef %add.ptr36.i, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %sw.bb85.cleanup127_crit_edge, label %sw.bb85.sw.epilog_crit_edge

sw.bb85.sw.epilog_crit_edge:                      ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb85.cleanup127_crit_edge:                     ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127

sw.bb91:                                          ; preds = %if.end43
  %call92 = tail call fastcc i32 @ccs_data_parse_rules(ptr noundef %bin, ptr noundef %module_rules, ptr noundef %num_module_rules, ptr noundef %add.ptr.i, ptr noundef %add.ptr36.i, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %sw.bb91.cleanup127_crit_edge, label %sw.bb91.sw.epilog_crit_edge

sw.bb91.sw.epilog_crit_edge:                      ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb91.cleanup127_crit_edge:                     ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127

sw.bb97:                                          ; preds = %if.end43
  %52 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bin, align 4
  %tobool.not.i231 = icmp eq ptr %53, null
  %add.i.i232 = add nsw i32 %plen.2.i.i, 7
  %and.i.i233 = and i32 %add.i.i232, -8
  br i1 %tobool.not.i231, label %if.then.i, label %if.end.i242

if.then.i:                                        ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %size.i.i234 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size.i.i234, align 4
  %add1.i.i235 = add i32 %55, %and.i.i233
  store i32 %add1.i.i235, ptr %size.i.i234, align 4
  br label %sw.epilog

if.end.i242:                                      ; preds = %sw.bb97
  %56 = ptrtoint ptr %end.i.i236 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %end.i.i236, align 4
  %58 = ptrtoint ptr %now.i.i237 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %now.i.i237, align 4
  %sub.ptr.lhs.cast.i.i238 = ptrtoint ptr %57 to i32
  %sub.ptr.rhs.cast.i.i239 = ptrtoint ptr %59 to i32
  %sub.ptr.sub.i.i240 = sub i32 %sub.ptr.lhs.cast.i.i238, %sub.ptr.rhs.cast.i.i239
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i240, i32 %and.i.i233)
  %cmp.i.i241 = icmp ult i32 %sub.ptr.sub.i.i240, %and.i.i233
  br i1 %cmp.i.i241, label %if.end.i242.cleanup127_crit_edge, label %bin_alloc.exit.i244

if.end.i242.cleanup127_crit_edge:                 ; preds = %if.end.i242
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127

bin_alloc.exit.i244:                              ; preds = %if.end.i242
  %add.ptr.i.i243 = getelementptr i8, ptr %59, i32 %and.i.i233
  %60 = ptrtoint ptr %now.i.i237 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr.i.i243, ptr %now.i.i237, align 4
  %tobool1.not.i = icmp eq ptr %59, null
  br i1 %tobool1.not.i, label %bin_alloc.exit.i244.cleanup127_crit_edge, label %if.end3.i

bin_alloc.exit.i244.cleanup127_crit_edge:         ; preds = %bin_alloc.exit.i244
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127

if.end3.i:                                        ; preds = %bin_alloc.exit.i244
  call void @__sanitizer_cov_trace_pc() #9
  %61 = call ptr @memcpy(ptr %59, ptr %add.ptr.i, i32 %plen.2.i.i)
  %62 = ptrtoint ptr %license to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %license, align 4
  %63 = ptrtoint ptr %license_length to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %plen.2.i.i, ptr %license_length, align 4
  br label %sw.epilog

sw.bb103:                                         ; preds = %if.end43
  %add.ptr.i246 = getelementptr %struct.__ccs_data_block_end, ptr %add.ptr.i, i32 1
  %cmp.not.i247 = icmp eq ptr %add.ptr.i246, %add.ptr36.i
  br i1 %cmp.not.i247, label %ccs_data_parse_end.exit.thread292, label %do.body.i248

do.body.i248:                                     ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_data_parse_end.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ccs_data_parse, %ccs_data_parse_end.exit.thread)) #7
          to label %cleanup127 [label %ccs_data_parse_end.exit.thread], !srcloc !41

ccs_data_parse_end.exit.thread:                   ; preds = %do.body.i248
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_data_parse_end.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %plen.2.i.i) #7
  br label %cleanup127

ccs_data_parse_end.exit.thread292:                ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %end to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %end, align 1
  br label %sw.epilog

do.body109:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ccs_data_parse.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ccs_data_parse, %if.then121)) #7
          to label %sw.epilog [label %if.then121], !srcloc !41

if.then121:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ccs_data_parse.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %conv26.i) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then121, %do.body109, %ccs_data_parse_end.exit.thread292, %if.end3.i, %if.then.i, %sw.bb91.sw.epilog_crit_edge, %sw.bb85.sw.epilog_crit_edge, %sw.bb79.sw.epilog_crit_edge, %sw.bb73.sw.epilog_crit_edge, %sw.bb67.sw.epilog_crit_edge, %sw.bb61.sw.epilog_crit_edge, %sw.bb55.sw.epilog_crit_edge, %sw.bb49.sw.epilog_crit_edge, %if.end6.i, %if.then1.i, %if.end43.sw.epilog_crit_edge
  %cmp31 = icmp ult ptr %add.ptr36.i, %add.ptr
  br i1 %cmp31, label %sw.epilog.while.body_crit_edge, label %sw.epilog.cleanup127_crit_edge

sw.epilog.cleanup127_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup127:                                       ; preds = %sw.epilog.cleanup127_crit_edge, %ccs_data_parse_end.exit.thread, %do.body.i248, %bin_alloc.exit.i244.cleanup127_crit_edge, %if.end.i242.cleanup127_crit_edge, %sw.bb91.cleanup127_crit_edge, %sw.bb85.cleanup127_crit_edge, %sw.bb79.cleanup127_crit_edge, %sw.bb73.cleanup127_crit_edge, %sw.bb67.cleanup127_crit_edge, %sw.bb61.cleanup127_crit_edge, %sw.bb55.cleanup127_crit_edge, %sw.bb49.cleanup127_crit_edge, %bin_alloc.exit.i.cleanup127_crit_edge, %bin_alloc.exit.thread.i, %sw.bb.cleanup127_crit_edge, %sw.epilog.i.i.cleanup127_crit_edge, %sw.bb17.i.i.cleanup127_crit_edge, %sw.bb3.i.i.cleanup127_crit_edge, %if.end.i.i.cleanup127_crit_edge, %if.end.i.cleanup127_crit_edge, %while.body.cleanup127_crit_edge, %if.end30.cleanup127_crit_edge, %if.then6, %do.body
  %retval.2 = phi i32 [ -22, %if.then6 ], [ -22, %do.body ], [ -61, %do.body.i248 ], [ -61, %ccs_data_parse_end.exit.thread ], [ -12, %bin_alloc.exit.thread.i ], [ 0, %if.end30.cleanup127_crit_edge ], [ 0, %sw.epilog.cleanup127_crit_edge ], [ %call50, %sw.bb49.cleanup127_crit_edge ], [ %call56, %sw.bb55.cleanup127_crit_edge ], [ %call62, %sw.bb61.cleanup127_crit_edge ], [ %call68, %sw.bb67.cleanup127_crit_edge ], [ %call74, %sw.bb73.cleanup127_crit_edge ], [ %call80, %sw.bb79.cleanup127_crit_edge ], [ %call86, %sw.bb85.cleanup127_crit_edge ], [ %call92, %sw.bb91.cleanup127_crit_edge ], [ -61, %while.body.cleanup127_crit_edge ], [ -61, %sw.bb17.i.i.cleanup127_crit_edge ], [ -61, %sw.bb3.i.i.cleanup127_crit_edge ], [ -61, %sw.epilog.i.i.cleanup127_crit_edge ], [ -22, %if.end.i.i.cleanup127_crit_edge ], [ -61, %if.end.i.cleanup127_crit_edge ], [ -61, %sw.bb.cleanup127_crit_edge ], [ -12, %bin_alloc.exit.i.cleanup127_crit_edge ], [ -12, %bin_alloc.exit.i244.cleanup127_crit_edge ], [ -12, %if.end.i242.cleanup127_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_ccs_data_version(ptr noundef %dev, ptr nocapture noundef readonly %v) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_ccs_data_version.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_ccs_data_version, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !41

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %v, align 2
  %conv = zext i16 %1 to i32
  %version_minor = getelementptr inbounds %struct.ccs_data_block_version, ptr %v, i32 0, i32 1
  %2 = ptrtoint ptr %version_minor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %version_minor, align 2
  %conv3 = zext i16 %3 to i32
  %date_year = getelementptr inbounds %struct.ccs_data_block_version, ptr %v, i32 0, i32 2
  %4 = ptrtoint ptr %date_year to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %date_year, align 2
  %conv4 = zext i16 %5 to i32
  %date_month = getelementptr inbounds %struct.ccs_data_block_version, ptr %v, i32 0, i32 3
  %6 = ptrtoint ptr %date_month to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %date_month, align 2
  %conv5 = zext i8 %7 to i32
  %date_day = getelementptr inbounds %struct.ccs_data_block_version, ptr %v, i32 0, i32 4
  %8 = ptrtoint ptr %date_day to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %date_day, align 1
  %conv6 = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_ccs_data_version.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv6) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccs_data_parse_regs(ptr nocapture noundef %bin, ptr noundef writeonly %__regs, ptr noundef %__num_regs, ptr noundef %payload, ptr noundef %endp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bin, align 4
  %tobool.not = icmp eq ptr %1, null
  %tobool1.not = icmp eq ptr %__regs, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %__num_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__num_regs, align 4
  %mul = shl i32 %3, 3
  %end.i = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 2
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %now.i = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 1
  %6 = ptrtoint ptr %now.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %now.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %mul)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i, %mul
  br i1 %cmp.i, label %if.then.cleanup135_crit_edge, label %bin_alloc.exit

if.then.cleanup135_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup135

bin_alloc.exit:                                   ; preds = %if.then
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul
  %8 = ptrtoint ptr %now.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i, ptr %now.i, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %bin_alloc.exit.cleanup135_crit_edge, label %bin_alloc.exit.if.end4_crit_edge

bin_alloc.exit.if.end4_crit_edge:                 ; preds = %bin_alloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

bin_alloc.exit.cleanup135_crit_edge:              ; preds = %bin_alloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup135

if.end4:                                          ; preds = %bin_alloc.exit.if.end4_crit_edge, %entry.if.end4_crit_edge
  %regs.0 = phi ptr [ %7, %bin_alloc.exit.if.end4_crit_edge ], [ null, %entry.if.end4_crit_edge ]
  %cmp47 = icmp ult ptr %payload, %endp
  br i1 %cmp47, label %while.body.lr.ph, label %if.end4.while.end_crit_edge

if.end4.while.end_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end4
  %sub.ptr.lhs.cast = ptrtoint ptr %endp to i32
  %end.i7 = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 2
  %now.i8 = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 1
  %size.i = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %cleanup114.while.body_crit_edge, %while.body.lr.ph
  %addr.051 = phi i16 [ 0, %while.body.lr.ph ], [ %conv112, %cleanup114.while.body_crit_edge ]
  %num_regs.050 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %cleanup114.while.body_crit_edge ]
  %regs.149 = phi ptr [ %regs.0, %while.body.lr.ph ], [ %regs.2, %cleanup114.while.body_crit_edge ]
  %payload.addr.048 = phi ptr [ %payload, %while.body.lr.ph ], [ %add.ptr113, %cleanup114.while.body_crit_edge ]
  %sub.ptr.rhs.cast = ptrtoint ptr %payload.addr.048 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %9 = ptrtoint ptr %payload.addr.048 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %payload.addr.048, align 1
  %conv = zext i8 %10 to i32
  %11 = lshr i32 %conv, 6
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %11, label %while.body.cleanup135_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb26
    i32 2, label %sw.bb59
  ]

while.body.cleanup135_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup135

sw.bb:                                            ; preds = %while.body
  %and15 = lshr i32 %conv, 3
  %13 = and i32 %and15, 7
  %add18 = add nuw nsw i32 %13, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add18, i32 %sub.ptr.sub)
  %cmp22.not = icmp ugt i32 %add18, %sub.ptr.sub
  br i1 %cmp22.not, label %sw.bb.cleanup135_crit_edge, label %if.end25

sw.bb.cleanup135_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup135

if.end25:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %14 = and i8 %10, 7
  %15 = zext i8 %14 to i16
  %conv12 = add i16 %addr.051, %15
  %add.ptr = getelementptr %struct.__ccs_data_block_regs, ptr %payload.addr.048, i32 1
  br label %sw.epilog

sw.bb26:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub)
  %cmp30 = icmp ugt i32 %sub.ptr.sub, 1
  br i1 %cmp30, label %if.end33, label %sw.bb26.cleanup135_crit_edge

sw.bb26.cleanup135_crit_edge:                     ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup135

if.end33:                                         ; preds = %sw.bb26
  %and47 = lshr i32 %conv, 1
  %16 = and i32 %and47, 31
  %add50 = add nuw nsw i32 %16, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add50, i32 %sub.ptr.sub)
  %cmp54.not = icmp ugt i32 %add50, %sub.ptr.sub
  br i1 %cmp54.not, label %if.end33.cleanup135_crit_edge, label %cleanup

if.end33.cleanup135_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup135

cleanup:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %17 = and i8 %10, 1
  %conv38 = zext i8 %17 to i16
  %shl = shl nuw nsw i16 %conv38, 8
  %addr39 = getelementptr inbounds %struct.__ccs_data_block_regs2, ptr %payload.addr.048, i32 0, i32 1
  %18 = ptrtoint ptr %addr39 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %addr39, align 1
  %conv40 = zext i8 %19 to i16
  %add41 = add i16 %shl, %addr.051
  %add43 = add i16 %add41, %conv40
  %add.ptr58 = getelementptr %struct.__ccs_data_block_regs2, ptr %payload.addr.048, i32 1
  br label %sw.epilog

sw.bb59:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub)
  %cmp63 = icmp ugt i32 %sub.ptr.sub, 2
  br i1 %cmp63, label %if.end66, label %sw.bb59.cleanup135_crit_edge

sw.bb59.cleanup135_crit_edge:                     ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup135

if.end66:                                         ; preds = %sw.bb59
  %and78 = and i32 %conv, 63
  %add80 = add nuw nsw i32 %and78, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add80, i32 %sub.ptr.sub)
  %cmp84.not = icmp ugt i32 %add80, %sub.ptr.sub
  br i1 %cmp84.not, label %if.end66.cleanup135_crit_edge, label %cleanup89

if.end66.cleanup135_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup135

cleanup89:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %addr67 = getelementptr inbounds %struct.__ccs_data_block_regs3, ptr %payload.addr.048, i32 0, i32 1
  %20 = ptrtoint ptr %addr67 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %addr67, align 1
  %conv69 = zext i8 %21 to i16
  %shl70 = shl nuw i16 %conv69, 8
  %arrayidx72 = getelementptr %struct.__ccs_data_block_regs3, ptr %payload.addr.048, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %23 to i16
  %add74 = or i16 %shl70, %conv73
  %add.ptr88 = getelementptr %struct.__ccs_data_block_regs3, ptr %payload.addr.048, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %cleanup89, %cleanup, %if.end25
  %addr.3 = phi i16 [ %add74, %cleanup89 ], [ %add43, %cleanup ], [ %conv12, %if.end25 ]
  %len.2.in = phi i32 [ %and78, %cleanup89 ], [ %16, %cleanup ], [ %13, %if.end25 ]
  %data.2 = phi ptr [ %add.ptr88, %cleanup89 ], [ %add.ptr58, %cleanup ], [ %add.ptr, %if.end25 ]
  %len.2 = add nuw nsw i32 %len.2.in, 1
  %inc = add nuw nsw i32 %num_regs.050, 1
  %24 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bin, align 4
  %tobool92.not = icmp eq ptr %25, null
  br i1 %tobool92.not, label %if.then93, label %if.else

if.then93:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %add.i3 = add nuw nsw i32 %len.2.in, 8
  %and.i4 = and i32 %add.i3, 120
  %26 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i, align 4
  %add1.i = add i32 %27, %and.i4
  store i32 %add1.i, ptr %size.i, align 4
  br label %cleanup114

if.else:                                          ; preds = %sw.epilog
  br i1 %tobool1.not, label %if.else.cleanup114_crit_edge, label %if.then95

if.else.cleanup114_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup114

if.then95:                                        ; preds = %if.else
  %tobool96.not = icmp eq ptr %regs.149, null
  br i1 %tobool96.not, label %if.then95.cleanup135_crit_edge, label %if.end98

if.then95.cleanup135_crit_edge:                   ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup135

if.end98:                                         ; preds = %if.then95
  %28 = ptrtoint ptr %regs.149 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %addr.3, ptr %regs.149, align 4
  %conv100 = trunc i32 %len.2 to i16
  %len101 = getelementptr inbounds %struct.ccs_reg, ptr %regs.149, i32 0, i32 1
  %29 = ptrtoint ptr %len101 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv100, ptr %len101, align 2
  %add.i5 = add nuw nsw i32 %len.2.in, 8
  %and.i6 = and i32 %add.i5, 120
  %30 = ptrtoint ptr %end.i7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %end.i7, align 4
  %32 = ptrtoint ptr %now.i8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %now.i8, align 4
  %sub.ptr.lhs.cast.i9 = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i10 = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i11 = sub i32 %sub.ptr.lhs.cast.i9, %sub.ptr.rhs.cast.i10
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i11, i32 %and.i6)
  %cmp.i12 = icmp ult i32 %sub.ptr.sub.i11, %and.i6
  br i1 %cmp.i12, label %bin_alloc.exit16.thread, label %bin_alloc.exit16

bin_alloc.exit16.thread:                          ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  %value34 = getelementptr inbounds %struct.ccs_reg, ptr %regs.149, i32 0, i32 2
  %34 = ptrtoint ptr %value34 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %value34, align 4
  br label %cleanup135

bin_alloc.exit16:                                 ; preds = %if.end98
  %add.ptr.i13 = getelementptr i8, ptr %33, i32 %and.i6
  %35 = ptrtoint ptr %now.i8 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr.i13, ptr %now.i8, align 4
  %value = getelementptr inbounds %struct.ccs_reg, ptr %regs.149, i32 0, i32 2
  %36 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %value, align 4
  %tobool104.not = icmp eq ptr %33, null
  br i1 %tobool104.not, label %bin_alloc.exit16.cleanup135_crit_edge, label %if.end106

bin_alloc.exit16.cleanup135_crit_edge:            ; preds = %bin_alloc.exit16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup135

if.end106:                                        ; preds = %bin_alloc.exit16
  call void @__sanitizer_cov_trace_pc() #9
  %37 = call ptr @memcpy(ptr %33, ptr %data.2, i32 %len.2)
  %incdec.ptr = getelementptr %struct.ccs_reg, ptr %regs.149, i32 1
  br label %cleanup114

cleanup114:                                       ; preds = %if.end106, %if.else.cleanup114_crit_edge, %if.then93
  %regs.2 = phi ptr [ %incdec.ptr, %if.end106 ], [ %regs.149, %if.else.cleanup114_crit_edge ], [ %regs.149, %if.then93 ]
  %38 = trunc i32 %len.2 to i16
  %conv112 = add i16 %addr.3, %38
  %add.ptr113 = getelementptr i8, ptr %data.2, i32 %len.2
  %cmp = icmp ult ptr %add.ptr113, %endp
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %inc)
  %cmp5 = icmp ne i32 %inc, 2147483647
  %or.cond1 = select i1 %cmp, i1 %cmp5, i1 false
  br i1 %or.cond1, label %cleanup114.while.body_crit_edge, label %cleanup114.while.end_crit_edge

cleanup114.while.end_crit_edge:                   ; preds = %cleanup114
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

cleanup114.while.body_crit_edge:                  ; preds = %cleanup114
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %cleanup114.while.end_crit_edge, %if.end4.while.end_crit_edge
  %num_regs.0.lcssa = phi i32 [ 0, %if.end4.while.end_crit_edge ], [ %inc, %cleanup114.while.end_crit_edge ]
  %39 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bin, align 4
  %tobool119.not = icmp eq ptr %40, null
  br i1 %tobool119.not, label %if.then120, label %while.end.if.end122_crit_edge

while.end.if.end122_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

if.then120:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %mul121 = shl i32 %num_regs.0.lcssa, 3
  %size.i19 = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 3
  %41 = ptrtoint ptr %size.i19 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size.i19, align 4
  %add1.i20 = add i32 %42, %mul121
  store i32 %add1.i20, ptr %size.i19, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %while.end.if.end122_crit_edge
  %tobool123.not = icmp eq ptr %__num_regs, null
  br i1 %tobool123.not, label %if.end122.if.end125_crit_edge, label %if.then124

if.end122.if.end125_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125

if.then124:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %__num_regs to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %num_regs.0.lcssa, ptr %__num_regs, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %if.end122.if.end125_crit_edge
  %44 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bin, align 4
  %tobool127.not = icmp eq ptr %45, null
  %or.cond2 = or i1 %tobool1.not, %tobool127.not
  br i1 %or.cond2, label %if.end125.cleanup135_crit_edge, label %if.then130

if.end125.cleanup135_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup135

if.then130:                                       ; preds = %if.end125
  %tobool131.not = icmp eq ptr %regs.0, null
  br i1 %tobool131.not, label %if.then130.cleanup135_crit_edge, label %if.end133

if.then130.cleanup135_crit_edge:                  ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup135

if.end133:                                        ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %regs.0, ptr %__regs, align 4
  br label %cleanup135

cleanup135:                                       ; preds = %if.end133, %if.then130.cleanup135_crit_edge, %if.end125.cleanup135_crit_edge, %bin_alloc.exit16.cleanup135_crit_edge, %bin_alloc.exit16.thread, %if.then95.cleanup135_crit_edge, %if.end66.cleanup135_crit_edge, %sw.bb59.cleanup135_crit_edge, %if.end33.cleanup135_crit_edge, %sw.bb26.cleanup135_crit_edge, %sw.bb.cleanup135_crit_edge, %while.body.cleanup135_crit_edge, %bin_alloc.exit.cleanup135_crit_edge, %if.then.cleanup135_crit_edge
  %retval.5 = phi i32 [ -12, %bin_alloc.exit.cleanup135_crit_edge ], [ -5, %if.then130.cleanup135_crit_edge ], [ 0, %if.end133 ], [ 0, %if.end125.cleanup135_crit_edge ], [ -12, %if.then.cleanup135_crit_edge ], [ -12, %bin_alloc.exit16.thread ], [ -61, %if.end66.cleanup135_crit_edge ], [ -61, %sw.bb59.cleanup135_crit_edge ], [ -61, %if.end33.cleanup135_crit_edge ], [ -61, %sw.bb26.cleanup135_crit_edge ], [ -61, %sw.bb.cleanup135_crit_edge ], [ -22, %while.body.cleanup135_crit_edge ], [ -5, %if.then95.cleanup135_crit_edge ], [ -12, %bin_alloc.exit16.cleanup135_crit_edge ]
  ret i32 %retval.5
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccs_data_parse_pdaf(ptr noundef %bin, ptr nocapture noundef %pdaf, ptr noundef %payload, ptr noundef %endp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sub.ptr.lhs.cast = ptrtoint ptr %endp to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %payload to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub)
  %cmp = icmp ugt i32 %sub.ptr.sub, 8
  br i1 %cmp, label %if.end, label %entry.cleanup242_crit_edge

entry.cleanup242_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup242

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bin, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %end.i = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 2
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i, align 4
  %now.i = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 1
  %4 = ptrtoint ptr %now.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %now.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.ptr.sub.i)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i, 24
  br i1 %cmp.i, label %if.then1.cleanup242.sink.split_crit_edge, label %bin_alloc.exit

if.then1.cleanup242.sink.split_crit_edge:         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup242.sink.split

bin_alloc.exit:                                   ; preds = %if.then1
  %add.ptr.i = getelementptr i8, ptr %5, i32 24
  %6 = ptrtoint ptr %now.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %now.i, align 4
  %7 = ptrtoint ptr %pdaf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %pdaf, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %bin_alloc.exit.cleanup242_crit_edge, label %bin_alloc.exit.if.end5_crit_edge

bin_alloc.exit.if.end5_crit_edge:                 ; preds = %bin_alloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

bin_alloc.exit.cleanup242_crit_edge:              ; preds = %bin_alloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup242

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %size.i = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 3
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i, align 4
  %add1.i = add i32 %9, 24
  store i32 %add1.i, ptr %size.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %bin_alloc.exit.if.end5_crit_edge
  %num_block_desc_groups6 = getelementptr inbounds %struct.__ccs_data_block_pdaf_pix_loc, ptr %payload, i32 0, i32 5
  %10 = ptrtoint ptr %num_block_desc_groups6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_block_desc_groups6, align 1
  %conv7 = zext i8 %11 to i16
  %shl = shl nuw i16 %conv7, 8
  %arrayidx9 = getelementptr %struct.__ccs_data_block_pdaf_pix_loc, ptr %payload, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %13 to i16
  %add = or i16 %shl, %conv10
  %14 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bin, align 4
  %tobool13.not = icmp eq ptr %15, null
  br i1 %tobool13.not, label %if.end39.thread, label %if.end39

if.end39.thread:                                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr65 = getelementptr %struct.__ccs_data_block_pdaf_pix_loc, ptr %payload, i32 1
  br label %if.else49

if.end39:                                         ; preds = %if.end5
  %16 = ptrtoint ptr %payload to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %payload, align 1
  %conv17 = zext i8 %17 to i16
  %shl18 = shl nuw i16 %conv17, 8
  %arrayidx20 = getelementptr [2 x i8], ptr %payload, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %19 to i16
  %add22 = or i16 %shl18, %conv21
  %20 = ptrtoint ptr %pdaf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdaf, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %add22, ptr %21, align 4
  %main_offset_y = getelementptr inbounds %struct.__ccs_data_block_pdaf_pix_loc, ptr %payload, i32 0, i32 1
  %23 = ptrtoint ptr %main_offset_y to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %main_offset_y, align 1
  %conv27 = zext i8 %24 to i16
  %shl28 = shl nuw i16 %conv27, 8
  %arrayidx30 = getelementptr %struct.__ccs_data_block_pdaf_pix_loc, ptr %payload, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %26 to i16
  %add32 = or i16 %shl28, %conv31
  %27 = load ptr, ptr %pdaf, align 4
  %main_offset_y34 = getelementptr inbounds %struct.ccs_pdaf_pix_loc, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %main_offset_y34 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %add32, ptr %main_offset_y34, align 2
  %global_pdaf_type = getelementptr inbounds %struct.__ccs_data_block_pdaf_pix_loc, ptr %payload, i32 0, i32 2
  %29 = ptrtoint ptr %global_pdaf_type to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %global_pdaf_type, align 1
  %31 = load ptr, ptr %pdaf, align 4
  %global_pdaf_type35 = getelementptr inbounds %struct.ccs_pdaf_pix_loc, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %global_pdaf_type35 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %30, ptr %global_pdaf_type35, align 4
  %block_width = getelementptr inbounds %struct.__ccs_data_block_pdaf_pix_loc, ptr %payload, i32 0, i32 3
  %33 = ptrtoint ptr %block_width to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %block_width, align 1
  %35 = load ptr, ptr %pdaf, align 4
  %block_width36 = getelementptr inbounds %struct.ccs_pdaf_pix_loc, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %block_width36 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %34, ptr %block_width36, align 1
  %block_height = getelementptr inbounds %struct.__ccs_data_block_pdaf_pix_loc, ptr %payload, i32 0, i32 4
  %37 = ptrtoint ptr %block_height to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %block_height, align 1
  %39 = load ptr, ptr %pdaf, align 4
  %block_height37 = getelementptr inbounds %struct.ccs_pdaf_pix_loc, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %block_height37 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %38, ptr %block_height37, align 2
  %41 = load ptr, ptr %pdaf, align 4
  %num_block_desc_groups38 = getelementptr inbounds %struct.ccs_pdaf_pix_loc, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %num_block_desc_groups38 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %add, ptr %num_block_desc_groups38, align 4
  %43 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr = load ptr, ptr %bin, align 4
  %add.ptr = getelementptr %struct.__ccs_data_block_pdaf_pix_loc, ptr %payload, i32 1
  %tobool41.not = icmp eq ptr %.pr, null
  br i1 %tobool41.not, label %if.end39.if.else49_crit_edge, label %if.then42

if.end39.if.else49_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else49

if.then42:                                        ; preds = %if.end39
  %conv43 = zext i16 %add to i32
  %mul = shl nuw nsw i32 %conv43, 3
  %end.i1 = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 2
  %44 = ptrtoint ptr %end.i1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %end.i1, align 4
  %now.i2 = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 1
  %46 = ptrtoint ptr %now.i2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %now.i2, align 4
  %sub.ptr.lhs.cast.i3 = ptrtoint ptr %45 to i32
  %sub.ptr.rhs.cast.i4 = ptrtoint ptr %47 to i32
  %sub.ptr.sub.i5 = sub i32 %sub.ptr.lhs.cast.i3, %sub.ptr.rhs.cast.i4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i5, i32 %mul)
  %cmp.i6 = icmp ult i32 %sub.ptr.sub.i5, %mul
  br i1 %cmp.i6, label %if.then42.bin_alloc.exit10_crit_edge, label %if.end.i8

if.then42.bin_alloc.exit10_crit_edge:             ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %bin_alloc.exit10

if.end.i8:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i7 = getelementptr i8, ptr %47, i32 %mul
  %48 = ptrtoint ptr %now.i2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr.i7, ptr %now.i2, align 4
  br label %bin_alloc.exit10

bin_alloc.exit10:                                 ; preds = %if.end.i8, %if.then42.bin_alloc.exit10_crit_edge
  %retval.0.i9 = phi ptr [ %47, %if.end.i8 ], [ null, %if.then42.bin_alloc.exit10_crit_edge ]
  %49 = ptrtoint ptr %pdaf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdaf, align 4
  %block_desc_groups = getelementptr inbounds %struct.ccs_pdaf_pix_loc, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %block_desc_groups to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %retval.0.i9, ptr %block_desc_groups, align 4
  %52 = load ptr, ptr %pdaf, align 4
  %block_desc_groups45 = getelementptr inbounds %struct.ccs_pdaf_pix_loc, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %block_desc_groups45 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %block_desc_groups45, align 4
  %tobool46.not = icmp eq ptr %54, null
  br i1 %tobool46.not, label %bin_alloc.exit10.cleanup242_crit_edge, label %bin_alloc.exit10.if.end52_crit_edge

bin_alloc.exit10.if.end52_crit_edge:              ; preds = %bin_alloc.exit10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

bin_alloc.exit10.cleanup242_crit_edge:            ; preds = %bin_alloc.exit10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup242

if.else49:                                        ; preds = %if.end39.if.else49_crit_edge, %if.end39.thread
  %add.ptr68 = phi ptr [ %add.ptr65, %if.end39.thread ], [ %add.ptr, %if.end39.if.else49_crit_edge ]
  %conv50 = zext i16 %add to i32
  %mul51 = shl nuw nsw i32 %conv50, 3
  %size.i13 = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 3
  %55 = ptrtoint ptr %size.i13 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %size.i13, align 4
  %add1.i14 = add i32 %56, %mul51
  store i32 %add1.i14, ptr %size.i13, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.else49, %bin_alloc.exit10.if.end52_crit_edge
  %conv53.pre-phi = phi i32 [ %conv43, %bin_alloc.exit10.if.end52_crit_edge ], [ %conv50, %if.else49 ]
  %add.ptr67 = phi ptr [ %add.ptr, %bin_alloc.exit10.if.end52_crit_edge ], [ %add.ptr68, %if.else49 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add)
  %cmp54114.not = icmp eq i16 %add, 0
  br i1 %cmp54114.not, label %if.end52.for.end158_crit_edge, label %for.body.lr.ph

if.end52.for.end158_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end158

for.body.lr.ph:                                   ; preds = %if.end52
  %end.i17 = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 2
  %now.i18 = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 1
  %size.i29 = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc156.for.body_crit_edge, %for.body.lr.ph
  %max_block_type_id.0120 = phi i8 [ 0, %for.body.lr.ph ], [ %max_block_type_id.1.lcssa, %for.inc156.for.body_crit_edge ]
  %i.0116 = phi i32 [ 0, %for.body.lr.ph ], [ %inc157, %for.inc156.for.body_crit_edge ]
  %__bdesc_group.0115 = phi ptr [ %add.ptr67, %for.body.lr.ph ], [ %__bdesc.0.lcssa, %for.inc156.for.body_crit_edge ]
  %sub.ptr.rhs.cast57 = ptrtoint ptr %__bdesc_group.0115 to i32
  %sub.ptr.sub58 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast57
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub58)
  %cmp59 = icmp ugt i32 %sub.ptr.sub58, 2
  br i1 %cmp59, label %if.end62, label %for.body.cleanup242_crit_edge

for.body.cleanup242_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup242

if.end62:                                         ; preds = %for.body
  %57 = ptrtoint ptr %__bdesc_group.0115 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %__bdesc_group.0115, align 1
  %conv66 = zext i8 %58 to i16
  %shl67 = shl nuw i16 %conv66, 8
  %arrayidx69 = getelementptr [2 x i8], ptr %__bdesc_group.0115, i32 0, i32 1
  %59 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %60 to i16
  %add71 = or i16 %shl67, %conv70
  %61 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bin, align 4
  %tobool74.not = icmp eq ptr %62, null
  br i1 %tobool74.not, label %if.end82.thread, label %if.end82

if.end82.thread:                                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr8370 = getelementptr %struct.__ccs_data_block_pdaf_pix_loc_block_desc_group, ptr %__bdesc_group.0115, i32 1
  br label %if.else98

if.end82:                                         ; preds = %if.end62
  %repeat_y = getelementptr inbounds %struct.__ccs_data_block_pdaf_pix_loc_block_desc_group, ptr %__bdesc_group.0115, i32 0, i32 1
  %63 = ptrtoint ptr %repeat_y to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %repeat_y, align 1
  %65 = ptrtoint ptr %pdaf to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdaf, align 4
  %block_desc_groups76 = getelementptr inbounds %struct.ccs_pdaf_pix_loc, ptr %66, i32 0, i32 6
  %67 = ptrtoint ptr %block_desc_groups76 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %block_desc_groups76, align 4
  %arrayidx77 = getelementptr %struct.ccs_pdaf_pix_loc_block_desc_group, ptr %68, i32 %i.0116
  %69 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %64, ptr %arrayidx77, align 4
  %70 = load ptr, ptr %pdaf, align 4
  %block_desc_groups79 = getelementptr inbounds %struct.ccs_pdaf_pix_loc, ptr %70, i32 0, i32 6
  %71 = ptrtoint ptr %block_desc_groups79 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %block_desc_groups79, align 4
  %num_block_descs81 = getelementptr %struct.ccs_pdaf_pix_loc_block_desc_group, ptr %72, i32 %i.0116, i32 1
  %73 = ptrtoint ptr %num_block_descs81 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %add71, ptr %num_block_descs81, align 2
  %74 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pr69 = load ptr, ptr %bin, align 4
  %add.ptr83 = getelementptr %struct.__ccs_data_block_pdaf_pix_loc_block_desc_group, ptr %__bdesc_group.0115, i32 1
  %tobool85.not = icmp eq ptr %.pr69, null
  br i1 %tobool85.not, label %if.end82.if.else98_crit_edge, label %if.then86

if.end82.if.else98_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else98

if.then86:                                        ; preds = %if.end82
  %conv87 = zext i16 %add71 to i32
  %mul88 = shl nuw nsw i32 %conv87, 2
  %add.i15 = add nuw nsw i32 %mul88, 7
  %and.i16 = and i32 %add.i15, 524280
  %75 = ptrtoint ptr %end.i17 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %end.i17, align 4
  %77 = ptrtoint ptr %now.i18 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %now.i18, align 4
  %sub.ptr.lhs.cast.i19 = ptrtoint ptr %76 to i32
  %sub.ptr.rhs.cast.i20 = ptrtoint ptr %78 to i32
  %sub.ptr.sub.i21 = sub i32 %sub.ptr.lhs.cast.i19, %sub.ptr.rhs.cast.i20
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i21, i32 %and.i16)
  %cmp.i22 = icmp ult i32 %sub.ptr.sub.i21, %and.i16
  br i1 %cmp.i22, label %if.then86.bin_alloc.exit26_crit_edge, label %if.end.i24

if.then86.bin_alloc.exit26_crit_edge:             ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  br label %bin_alloc.exit26

if.end.i24:                                       ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i23 = getelementptr i8, ptr %78, i32 %and.i16
  %79 = ptrtoint ptr %now.i18 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %add.ptr.i23, ptr %now.i18, align 4
  br label %bin_alloc.exit26

bin_alloc.exit26:                                 ; preds = %if.end.i24, %if.then86.bin_alloc.exit26_crit_edge
  %retval.0.i25 = phi ptr [ %78, %if.end.i24 ], [ null, %if.then86.bin_alloc.exit26_crit_edge ]
  %80 = ptrtoint ptr %pdaf to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pdaf, align 4
  %block_desc_groups90 = getelementptr inbounds %struct.ccs_pdaf_pix_loc, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %block_desc_groups90 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %block_desc_groups90, align 4
  %block_descs = getelementptr %struct.ccs_pdaf_pix_loc_block_desc_group, ptr %83, i32 %i.0116, i32 2
  %84 = ptrtoint ptr %block_descs to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %retval.0.i25, ptr %block_descs, align 4
  %85 = load ptr, ptr %pdaf, align 4
  %block_desc_groups92 = getelementptr inbounds %struct.ccs_pdaf_pix_loc, ptr %85, i32 0, i32 6
  %86 = ptrtoint ptr %block_desc_groups92 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %block_desc_groups92, align 4
  %block_descs94 = getelementptr %struct.ccs_pdaf_pix_loc_block_desc_group, ptr %87, i32 %i.0116, i32 2
  %88 = ptrtoint ptr %block_descs94 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %block_descs94, align 4
  %tobool95.not = icmp eq ptr %89, null
  br i1 %tobool95.not, label %bin_alloc.exit26.cleanup242_crit_edge, label %bin_alloc.exit26.if.end101_crit_edge

bin_alloc.exit26.if.end101_crit_edge:             ; preds = %bin_alloc.exit26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

bin_alloc.exit26.cleanup242_crit_edge:            ; preds = %bin_alloc.exit26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup242

if.else98:                                        ; preds = %if.end82.if.else98_crit_edge, %if.end82.thread
  %add.ptr8373 = phi ptr [ %add.ptr8370, %if.end82.thread ], [ %add.ptr83, %if.end82.if.else98_crit_edge ]
  %conv99 = zext i16 %add71 to i32
  %mul100 = shl nuw nsw i32 %conv99, 2
  %add.i27 = add nuw nsw i32 %mul100, 7
  %and.i28 = and i32 %add.i27, 524280
  %90 = ptrtoint ptr %size.i29 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %size.i29, align 4
  %add1.i30 = add i32 %91, %and.i28
  store i32 %add1.i30, ptr %size.i29, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.else98, %bin_alloc.exit26.if.end101_crit_edge
  %conv103.pre-phi = phi i32 [ %conv87, %bin_alloc.exit26.if.end101_crit_edge ], [ %conv99, %if.else98 ]
  %add.ptr8372 = phi ptr [ %add.ptr83, %bin_alloc.exit26.if.end101_crit_edge ], [ %add.ptr8373, %if.else98 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add71)
  %cmp104107.not = icmp eq i16 %add71, 0
  br i1 %cmp104107.not, label %if.end101.for.inc156_crit_edge, label %if.end101.for.body106_crit_edge

if.end101.for.body106_crit_edge:                  ; preds = %if.end101
  br label %for.body106

if.end101.for.inc156_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc156

for.body106:                                      ; preds = %for.inc.for.body106_crit_edge, %if.end101.for.body106_crit_edge
  %j.0111 = phi i32 [ %inc, %for.inc.for.body106_crit_edge ], [ 0, %if.end101.for.body106_crit_edge ]
  %__bdesc.0109 = phi ptr [ %incdec.ptr, %for.inc.for.body106_crit_edge ], [ %add.ptr8372, %if.end101.for.body106_crit_edge ]
  %max_block_type_id.1108 = phi i8 [ %spec.select, %for.inc.for.body106_crit_edge ], [ %max_block_type_id.0120, %if.end101.for.body106_crit_edge ]
  %sub.ptr.rhs.cast108 = ptrtoint ptr %__bdesc.0109 to i32
  %sub.ptr.sub109 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast108
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub109)
  %cmp110 = icmp ugt i32 %sub.ptr.sub109, 2
  br i1 %cmp110, label %if.end113, label %for.body106.cleanup242_crit_edge

for.body106.cleanup242_crit_edge:                 ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup242

if.end113:                                        ; preds = %for.body106
  %92 = ptrtoint ptr %__bdesc.0109 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %__bdesc.0109, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %max_block_type_id.1108, i8 %93)
  %cmp116.not = icmp ugt i8 %max_block_type_id.1108, %93
  %add121 = add i8 %93, 1
  %spec.select = select i1 %cmp116.not, i8 %max_block_type_id.1108, i8 %add121
  %94 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bin, align 4
  %tobool125.not = icmp eq ptr %95, null
  br i1 %tobool125.not, label %if.end113.for.inc_crit_edge, label %if.end127

if.end113.for.inc_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end127:                                        ; preds = %if.end113
  %96 = ptrtoint ptr %pdaf to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pdaf, align 4
  %block_desc_groups128 = getelementptr inbounds %struct.ccs_pdaf_pix_loc, ptr %97, i32 0, i32 6
  %98 = ptrtoint ptr %block_desc_groups128 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %block_desc_groups128, align 4
  %block_descs130 = getelementptr %struct.ccs_pdaf_pix_loc_block_desc_group, ptr %99, i32 %i.0116, i32 2
  %100 = ptrtoint ptr %block_descs130 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %block_descs130, align 4
  %repeat_x = getelementptr inbounds %struct.__ccs_data_block_pdaf_pix_loc_block_desc, ptr %__bdesc.0109, i32 0, i32 1
  %102 = ptrtoint ptr %repeat_x to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %repeat_x, align 1
  %conv134 = zext i8 %103 to i16
  %shl135 = shl nuw i16 %conv134, 8
  %arrayidx137 = getelementptr %struct.__ccs_data_block_pdaf_pix_loc_block_desc, ptr %__bdesc.0109, i32 0, i32 1, i32 1
  %104 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx137, align 1
  %conv138 = zext i8 %105 to i16
  %add139 = or i16 %shl135, %conv138
  %repeat_x141 = getelementptr %struct.ccs_pdaf_pix_loc_block_desc, ptr %101, i32 %j.0111, i32 1
  %106 = ptrtoint ptr %repeat_x141 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %add139, ptr %repeat_x141, align 2
  %107 = ptrtoint ptr %__bdesc.0109 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %__bdesc.0109, align 1
  %109 = zext i8 %108 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %add71, i16 %109)
  %cmp145.not = icmp ugt i16 %add71, %109
  br i1 %cmp145.not, label %if.end148, label %if.end127.cleanup242_crit_edge

if.end127.cleanup242_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup242

if.end148:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx131 = getelementptr %struct.ccs_pdaf_pix_loc_block_desc, ptr %101, i32 %j.0111
  %110 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %108, ptr %arrayidx131, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end148, %if.end113.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.0111, 1
  %incdec.ptr = getelementptr %struct.__ccs_data_block_pdaf_pix_loc_block_desc, ptr %__bdesc.0109, i32 1
  %exitcond.not = icmp eq i32 %inc, %conv103.pre-phi
  br i1 %exitcond.not, label %for.inc.for.inc156_crit_edge, label %for.inc.for.body106_crit_edge

for.inc.for.body106_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body106

for.inc.for.inc156_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc156

for.inc156:                                       ; preds = %for.inc.for.inc156_crit_edge, %if.end101.for.inc156_crit_edge
  %max_block_type_id.1.lcssa = phi i8 [ %max_block_type_id.0120, %if.end101.for.inc156_crit_edge ], [ %spec.select, %for.inc.for.inc156_crit_edge ]
  %__bdesc.0.lcssa = phi ptr [ %add.ptr8372, %if.end101.for.inc156_crit_edge ], [ %incdec.ptr, %for.inc.for.inc156_crit_edge ]
  %inc157 = add nuw nsw i32 %i.0116, 1
  %exitcond145.not = icmp eq i32 %inc157, %conv53.pre-phi
  br i1 %exitcond145.not, label %for.inc156.for.end158_crit_edge, label %for.inc156.for.body_crit_edge

for.inc156.for.body_crit_edge:                    ; preds = %for.inc156
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc156.for.end158_crit_edge:                  ; preds = %for.inc156
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end158

for.end158:                                       ; preds = %for.inc156.for.end158_crit_edge, %if.end52.for.end158_crit_edge
  %__bdesc_group.0.lcssa = phi ptr [ %add.ptr67, %if.end52.for.end158_crit_edge ], [ %__bdesc.0.lcssa, %for.inc156.for.end158_crit_edge ]
  %max_block_type_id.0.lcssa = phi i8 [ 0, %if.end52.for.end158_crit_edge ], [ %max_block_type_id.1.lcssa, %for.inc156.for.end158_crit_edge ]
  %111 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %bin, align 4
  %tobool160.not = icmp eq ptr %112, null
  %conv170 = zext i8 %max_block_type_id.0.lcssa to i32
  %mul171 = shl nuw nsw i32 %conv170, 3
  br i1 %tobool160.not, label %if.else169, label %if.then161

if.then161:                                       ; preds = %for.end158
  %end.i33 = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 2
  %113 = ptrtoint ptr %end.i33 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %end.i33, align 4
  %now.i34 = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 1
  %115 = ptrtoint ptr %now.i34 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %now.i34, align 4
  %sub.ptr.lhs.cast.i35 = ptrtoint ptr %114 to i32
  %sub.ptr.rhs.cast.i36 = ptrtoint ptr %116 to i32
  %sub.ptr.sub.i37 = sub i32 %sub.ptr.lhs.cast.i35, %sub.ptr.rhs.cast.i36
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i37, i32 %mul171)
  %cmp.i38 = icmp ult i32 %sub.ptr.sub.i37, %mul171
  br i1 %cmp.i38, label %if.then161.bin_alloc.exit42_crit_edge, label %if.end.i40

if.then161.bin_alloc.exit42_crit_edge:            ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #9
  br label %bin_alloc.exit42

if.end.i40:                                       ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i39 = getelementptr i8, ptr %116, i32 %mul171
  %117 = ptrtoint ptr %now.i34 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %add.ptr.i39, ptr %now.i34, align 4
  br label %bin_alloc.exit42

bin_alloc.exit42:                                 ; preds = %if.end.i40, %if.then161.bin_alloc.exit42_crit_edge
  %retval.0.i41 = phi ptr [ %116, %if.end.i40 ], [ null, %if.then161.bin_alloc.exit42_crit_edge ]
  %118 = ptrtoint ptr %pdaf to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pdaf, align 4
  %pixel_desc_groups = getelementptr inbounds %struct.ccs_pdaf_pix_loc, ptr %119, i32 0, i32 8
  %120 = ptrtoint ptr %pixel_desc_groups to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %retval.0.i41, ptr %pixel_desc_groups, align 4
  %121 = load ptr, ptr %pdaf, align 4
  %pixel_desc_groups165 = getelementptr inbounds %struct.ccs_pdaf_pix_loc, ptr %121, i32 0, i32 8
  %122 = ptrtoint ptr %pixel_desc_groups165 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pixel_desc_groups165, align 4
  %tobool166.not = icmp eq ptr %123, null
  br i1 %tobool166.not, label %bin_alloc.exit42.cleanup242_crit_edge, label %if.end168

bin_alloc.exit42.cleanup242_crit_edge:            ; preds = %bin_alloc.exit42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup242

if.end168:                                        ; preds = %bin_alloc.exit42
  call void @__sanitizer_cov_trace_pc() #9
  %num_pixel_desc_grups = getelementptr inbounds %struct.ccs_pdaf_pix_loc, ptr %121, i32 0, i32 7
  %124 = ptrtoint ptr %num_pixel_desc_grups to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %max_block_type_id.0.lcssa, ptr %num_pixel_desc_grups, align 4
  br label %if.end172

if.else169:                                       ; preds = %for.end158
  call void @__sanitizer_cov_trace_pc() #9
  %size.i45 = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 3
  %125 = ptrtoint ptr %size.i45 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %size.i45, align 4
  %add1.i46 = add i32 %126, %mul171
  store i32 %add1.i46, ptr %size.i45, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.else169, %if.end168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %max_block_type_id.0.lcssa)
  %cmp175130.not = icmp eq i8 %max_block_type_id.0.lcssa, 0
  br i1 %cmp175130.not, label %if.end172.cleanup242_crit_edge, label %for.body177.lr.ph

if.end172.cleanup242_crit_edge:                   ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup242

for.body177.lr.ph:                                ; preds = %if.end172
  %end.i49 = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 2
  %now.i50 = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 1
  %size.i61 = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 3
  br label %for.body177

for.body177:                                      ; preds = %for.inc239.for.body177_crit_edge, %for.body177.lr.ph
  %__num_pixel_descs.0133 = phi ptr [ %__bdesc_group.0.lcssa, %for.body177.lr.ph ], [ %add.ptr234, %for.inc239.for.body177_crit_edge ]
  %i.1131 = phi i32 [ 0, %for.body177.lr.ph ], [ %inc240, %for.inc239.for.body177_crit_edge ]
  %cmp182.not = icmp eq ptr %__num_pixel_descs.0133, %endp
  br i1 %cmp182.not, label %for.body177.cleanup242_crit_edge, label %if.end185

for.body177.cleanup242_crit_edge:                 ; preds = %for.body177
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup242

if.end185:                                        ; preds = %for.body177
  %127 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %bin, align 4
  %tobool187.not = icmp eq ptr %128, null
  br i1 %tobool187.not, label %if.else198, label %if.then188

if.then188:                                       ; preds = %if.end185
  %129 = ptrtoint ptr %pdaf to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pdaf, align 4
  %pixel_desc_groups189 = getelementptr inbounds %struct.ccs_pdaf_pix_loc, ptr %130, i32 0, i32 8
  %131 = ptrtoint ptr %pixel_desc_groups189 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pixel_desc_groups189, align 4
  %133 = ptrtoint ptr %__num_pixel_descs.0133 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %__num_pixel_descs.0133, align 1
  %conv191 = zext i8 %134 to i32
  %mul192 = mul nuw nsw i32 %conv191, 3
  %add.i47 = add nuw nsw i32 %mul192, 7
  %and.i48 = and i32 %add.i47, 2040
  %135 = ptrtoint ptr %end.i49 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %end.i49, align 4
  %137 = ptrtoint ptr %now.i50 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %now.i50, align 4
  %sub.ptr.lhs.cast.i51 = ptrtoint ptr %136 to i32
  %sub.ptr.rhs.cast.i52 = ptrtoint ptr %138 to i32
  %sub.ptr.sub.i53 = sub i32 %sub.ptr.lhs.cast.i51, %sub.ptr.rhs.cast.i52
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i53, i32 %and.i48)
  %cmp.i54 = icmp ult i32 %sub.ptr.sub.i53, %and.i48
  br i1 %cmp.i54, label %bin_alloc.exit58.thread, label %bin_alloc.exit58

bin_alloc.exit58.thread:                          ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #9
  %descs83 = getelementptr %struct.ccs_pdaf_pix_loc_pixel_desc_group, ptr %132, i32 %i.1131, i32 1
  br label %cleanup242.sink.split

bin_alloc.exit58:                                 ; preds = %if.then188
  %add.ptr.i55 = getelementptr i8, ptr %138, i32 %and.i48
  %139 = ptrtoint ptr %now.i50 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %add.ptr.i55, ptr %now.i50, align 4
  %descs = getelementptr %struct.ccs_pdaf_pix_loc_pixel_desc_group, ptr %132, i32 %i.1131, i32 1
  %140 = ptrtoint ptr %descs to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %138, ptr %descs, align 4
  %tobool195.not = icmp eq ptr %138, null
  br i1 %tobool195.not, label %bin_alloc.exit58.cleanup242_crit_edge, label %if.end197

bin_alloc.exit58.cleanup242_crit_edge:            ; preds = %bin_alloc.exit58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup242

if.end197:                                        ; preds = %bin_alloc.exit58
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx190 = getelementptr %struct.ccs_pdaf_pix_loc_pixel_desc_group, ptr %132, i32 %i.1131
  %141 = ptrtoint ptr %__num_pixel_descs.0133 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %__num_pixel_descs.0133, align 1
  %143 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %arrayidx190, align 4
  br label %if.end201

if.else198:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #9
  %144 = ptrtoint ptr %__num_pixel_descs.0133 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %__num_pixel_descs.0133, align 1
  %conv199 = zext i8 %145 to i32
  %mul200 = mul nuw nsw i32 %conv199, 3
  %add.i59 = add nuw nsw i32 %mul200, 7
  %and.i60 = and i32 %add.i59, 2040
  %146 = ptrtoint ptr %size.i61 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %size.i61, align 4
  %add1.i62 = add i32 %and.i60, %147
  store i32 %add1.i62, ptr %size.i61, align 4
  br label %if.end201

if.end201:                                        ; preds = %if.else198, %if.end197
  %pdgroup.0 = phi ptr [ %arrayidx190, %if.end197 ], [ null, %if.else198 ]
  %add.ptr202 = getelementptr i8, ptr %__num_pixel_descs.0133, i32 1
  %148 = ptrtoint ptr %__num_pixel_descs.0133 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %__num_pixel_descs.0133, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %cmp205124.not = icmp eq i8 %149, 0
  br i1 %cmp205124.not, label %if.end201.for.inc239_crit_edge, label %for.body207.lr.ph

if.end201.for.inc239_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc239

for.body207.lr.ph:                                ; preds = %if.end201
  %tobool219.not = icmp eq ptr %pdgroup.0, null
  %descs222 = getelementptr inbounds %struct.ccs_pdaf_pix_loc_pixel_desc_group, ptr %pdgroup.0, i32 0, i32 1
  br label %for.body207

for.body207:                                      ; preds = %for.inc230.for.body207_crit_edge, %for.body207.lr.ph
  %j178.0127 = phi i32 [ 0, %for.body207.lr.ph ], [ %inc231, %for.inc230.for.body207_crit_edge ]
  %__pixel_desc.0125 = phi ptr [ %add.ptr202, %for.body207.lr.ph ], [ %incdec.ptr232, %for.inc230.for.body207_crit_edge ]
  %sub.ptr.rhs.cast209 = ptrtoint ptr %__pixel_desc.0125 to i32
  %sub.ptr.sub210 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast209
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub210)
  %cmp211 = icmp ugt i32 %sub.ptr.sub210, 2
  br i1 %cmp211, label %if.end214, label %for.body207.cleanup242_crit_edge

for.body207.cleanup242_crit_edge:                 ; preds = %for.body207
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup242

if.end214:                                        ; preds = %for.body207
  %150 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %bin, align 4
  %tobool216.not = icmp eq ptr %151, null
  br i1 %tobool216.not, label %if.end214.for.inc230_crit_edge, label %if.end218

if.end214.for.inc230_crit_edge:                   ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc230

if.end218:                                        ; preds = %if.end214
  br i1 %tobool219.not, label %if.end218.cleanup242_crit_edge, label %if.end221

if.end218.cleanup242_crit_edge:                   ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup242

if.end221:                                        ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #9
  %152 = ptrtoint ptr %descs222 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %descs222, align 4
  %arrayidx223 = getelementptr %struct.ccs_pdaf_pix_loc_pixel_desc, ptr %153, i32 %j178.0127
  %154 = ptrtoint ptr %__pixel_desc.0125 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %__pixel_desc.0125, align 1
  %156 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %155, ptr %arrayidx223, align 1
  %small_offset_x = getelementptr inbounds %struct.__ccs_data_block_pdaf_pix_loc_pixel_desc, ptr %__pixel_desc.0125, i32 0, i32 1
  %157 = ptrtoint ptr %small_offset_x to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %small_offset_x, align 1
  %small_offset_x225 = getelementptr %struct.ccs_pdaf_pix_loc_pixel_desc, ptr %153, i32 %j178.0127, i32 1
  %159 = ptrtoint ptr %small_offset_x225 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %158, ptr %small_offset_x225, align 1
  %small_offset_y = getelementptr inbounds %struct.__ccs_data_block_pdaf_pix_loc_pixel_desc, ptr %__pixel_desc.0125, i32 0, i32 2
  %160 = ptrtoint ptr %small_offset_y to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %small_offset_y, align 1
  %small_offset_y226 = getelementptr %struct.ccs_pdaf_pix_loc_pixel_desc, ptr %153, i32 %j178.0127, i32 2
  %162 = ptrtoint ptr %small_offset_y226 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %161, ptr %small_offset_y226, align 1
  br label %for.inc230

for.inc230:                                       ; preds = %if.end221, %if.end214.for.inc230_crit_edge
  %inc231 = add nuw nsw i32 %j178.0127, 1
  %incdec.ptr232 = getelementptr %struct.__ccs_data_block_pdaf_pix_loc_pixel_desc, ptr %__pixel_desc.0125, i32 1
  %163 = ptrtoint ptr %__num_pixel_descs.0133 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %__num_pixel_descs.0133, align 1
  %conv204 = zext i8 %164 to i32
  %cmp205 = icmp ult i32 %inc231, %conv204
  br i1 %cmp205, label %for.inc230.for.body207_crit_edge, label %for.inc230.for.inc239_crit_edge

for.inc230.for.inc239_crit_edge:                  ; preds = %for.inc230
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc239

for.inc230.for.body207_crit_edge:                 ; preds = %for.inc230
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body207

for.inc239:                                       ; preds = %for.inc230.for.inc239_crit_edge, %if.end201.for.inc239_crit_edge
  %__pixel_desc.0.lcssa = phi ptr [ %add.ptr202, %if.end201.for.inc239_crit_edge ], [ %incdec.ptr232, %for.inc230.for.inc239_crit_edge ]
  %add.ptr234 = getelementptr %struct.__ccs_data_block_pdaf_pix_loc_pixel_desc, ptr %__pixel_desc.0.lcssa, i32 1
  %inc240 = add nuw nsw i32 %i.1131, 1
  %exitcond146.not = icmp eq i32 %inc240, %conv170
  br i1 %exitcond146.not, label %for.inc239.cleanup242_crit_edge, label %for.inc239.for.body177_crit_edge

for.inc239.for.body177_crit_edge:                 ; preds = %for.inc239
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body177

for.inc239.cleanup242_crit_edge:                  ; preds = %for.inc239
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup242

cleanup242.sink.split:                            ; preds = %bin_alloc.exit58.thread, %if.then1.cleanup242.sink.split_crit_edge
  %descs83.sink = phi ptr [ %descs83, %bin_alloc.exit58.thread ], [ %pdaf, %if.then1.cleanup242.sink.split_crit_edge ]
  %165 = ptrtoint ptr %descs83.sink to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr null, ptr %descs83.sink, align 4
  br label %cleanup242

cleanup242:                                       ; preds = %cleanup242.sink.split, %for.inc239.cleanup242_crit_edge, %if.end218.cleanup242_crit_edge, %for.body207.cleanup242_crit_edge, %bin_alloc.exit58.cleanup242_crit_edge, %for.body177.cleanup242_crit_edge, %if.end172.cleanup242_crit_edge, %bin_alloc.exit42.cleanup242_crit_edge, %if.end127.cleanup242_crit_edge, %for.body106.cleanup242_crit_edge, %bin_alloc.exit26.cleanup242_crit_edge, %for.body.cleanup242_crit_edge, %bin_alloc.exit10.cleanup242_crit_edge, %bin_alloc.exit.cleanup242_crit_edge, %entry.cleanup242_crit_edge
  %retval.8 = phi i32 [ -61, %entry.cleanup242_crit_edge ], [ -12, %bin_alloc.exit.cleanup242_crit_edge ], [ -12, %bin_alloc.exit10.cleanup242_crit_edge ], [ -12, %bin_alloc.exit42.cleanup242_crit_edge ], [ 0, %if.end172.cleanup242_crit_edge ], [ -12, %cleanup242.sink.split ], [ -61, %for.body207.cleanup242_crit_edge ], [ -5, %if.end218.cleanup242_crit_edge ], [ 0, %for.inc239.cleanup242_crit_edge ], [ -61, %for.body177.cleanup242_crit_edge ], [ -12, %bin_alloc.exit58.cleanup242_crit_edge ], [ -61, %for.body106.cleanup242_crit_edge ], [ -22, %if.end127.cleanup242_crit_edge ], [ -61, %for.body.cleanup242_crit_edge ], [ -12, %bin_alloc.exit26.cleanup242_crit_edge ]
  ret i32 %retval.8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccs_data_parse_rules(ptr noundef %bin, ptr nocapture noundef writeonly %__rules, ptr nocapture noundef %__num_rules, ptr noundef %payload, ptr noundef %endp, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bin, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %__num_rules to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__num_rules, align 4
  %mul = shl i32 %3, 5
  %end.i = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 2
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %now.i = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 1
  %6 = ptrtoint ptr %now.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %now.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %mul)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i, %mul
  br i1 %cmp.i, label %if.then.cleanup112_crit_edge, label %bin_alloc.exit

if.then.cleanup112_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup112

bin_alloc.exit:                                   ; preds = %if.then
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul
  %8 = ptrtoint ptr %now.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i, ptr %now.i, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %bin_alloc.exit.cleanup112_crit_edge, label %bin_alloc.exit.if.end3_crit_edge

bin_alloc.exit.if.end3_crit_edge:                 ; preds = %bin_alloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

bin_alloc.exit.cleanup112_crit_edge:              ; preds = %bin_alloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup112

if.end3:                                          ; preds = %bin_alloc.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  %rules_base.0 = phi ptr [ %7, %bin_alloc.exit.if.end3_crit_edge ], [ null, %entry.if.end3_crit_edge ]
  %cmp291 = icmp ult ptr %payload, %endp
  br i1 %cmp291, label %if.end.i210.lr.ph, label %if.end3.while.end_crit_edge

if.end3.while.end_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.i210.lr.ph:                                ; preds = %if.end3
  %sub.ptr.lhs.cast.i207 = ptrtoint ptr %endp to i32
  %end.i.i = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 2
  %now.i.i = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 1
  %size.i.i = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 3
  br label %if.end.i210

if.end.i210:                                      ; preds = %sw.epilog.if.end.i210_crit_edge, %if.end.i210.lr.ph
  %__next_rule.0295 = phi ptr [ %payload, %if.end.i210.lr.ph ], [ %add.ptr95, %sw.epilog.if.end.i210_crit_edge ]
  %num_rules.0294 = phi i32 [ 0, %if.end.i210.lr.ph ], [ %num_rules.3, %sw.epilog.if.end.i210_crit_edge ]
  %next_rule.1293 = phi ptr [ %rules_base.0, %if.end.i210.lr.ph ], [ %next_rule.5, %sw.epilog.if.end.i210_crit_edge ]
  %rules.0292 = phi ptr [ null, %if.end.i210.lr.ph ], [ %rules.4, %sw.epilog.if.end.i210_crit_edge ]
  %sub.ptr.rhs.cast.i208 = ptrtoint ptr %__next_rule.0295 to i32
  %sub.ptr.sub.i209 = sub i32 %sub.ptr.lhs.cast.i207, %sub.ptr.rhs.cast.i208
  %9 = ptrtoint ptr %__next_rule.0295 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %__next_rule.0295, align 1
  %conv.i = zext i8 %10 to i32
  %11 = lshr i32 %conv.i, 6
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %11, label %if.end.i210.cleanup112_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb17.i
  ]

if.end.i210.cleanup112_crit_edge:                 ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup112

sw.bb.i:                                          ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #9
  %and.i211 = and i32 %conv.i, 63
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i209)
  %cmp7.i = icmp ugt i32 %sub.ptr.sub.i209, 1
  br i1 %cmp7.i, label %cleanup.thread.i, label %sw.bb3.i.cleanup112_crit_edge

sw.bb3.i.cleanup112_crit_edge:                    ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup112

cleanup.thread.i:                                 ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  %and13.i = shl nuw nsw i32 %conv.i, 8
  %shl.i = and i32 %and13.i, 16128
  %arrayidx15.i = getelementptr [2 x i8], ptr %__next_rule.0295, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %14 to i32
  %add.i212 = or i32 %shl.i, %conv16.i
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub.i209)
  %cmp21.i = icmp ugt i32 %sub.ptr.sub.i209, 2
  br i1 %cmp21.i, label %cleanup39.thread.i, label %sw.bb17.i.cleanup112_crit_edge

sw.bb17.i.cleanup112_crit_edge:                   ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup112

cleanup39.thread.i:                               ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #9
  %and28.i = shl nuw nsw i32 %conv.i, 16
  %shl29.i = and i32 %and28.i, 4128768
  %shl33.i = shl nuw nsw i32 %conv.i, 8
  %add34.i = or i32 %shl29.i, %shl33.i
  %arrayidx36.i = getelementptr [3 x i8], ptr %__next_rule.0295, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx36.i, align 1
  %conv37.i = zext i8 %16 to i32
  %add38.i = or i32 %add34.i, %conv37.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %cleanup39.thread.i, %cleanup.thread.i, %sw.bb.i
  %hlen.2.i = phi i32 [ 1, %sw.bb.i ], [ 2, %cleanup.thread.i ], [ 3, %cleanup39.thread.i ]
  %plen.2.i = phi i32 [ %and.i211, %sw.bb.i ], [ %add.i212, %cleanup.thread.i ], [ %add38.i, %cleanup39.thread.i ]
  %add41.i = add nsw i32 %plen.2.i, %hlen.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add41.i, i32 %sub.ptr.sub.i209)
  %cmp45.not.i = icmp ugt i32 %add41.i, %sub.ptr.sub.i209
  br i1 %cmp45.not.i, label %sw.epilog.i.cleanup112_crit_edge, label %if.end7

sw.epilog.i.cleanup112_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup112

if.end7:                                          ; preds = %sw.epilog.i
  %add.ptr = getelementptr i8, ptr %__next_rule.0295, i32 %hlen.2.i
  %cmp8.not = icmp eq ptr %add.ptr, %endp
  br i1 %cmp8.not, label %if.end7.cleanup112_crit_edge, label %if.end10

if.end7.cleanup112_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup112

if.end10:                                         ; preds = %if.end7
  %add.ptr11 = getelementptr i8, ptr %add.ptr, i32 1
  %sub = add nsw i32 %plen.2.i, -1
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %18, label %do.body [
    i8 1, label %sw.bb
    i8 2, label %sw.bb63
    i8 3, label %sw.bb69
    i8 4, label %sw.bb75
    i8 5, label %sw.bb81
  ]

sw.bb:                                            ; preds = %if.end10
  %div205 = lshr i32 %sub, 2
  %mul12 = and i32 %sub, -4
  %add.ptr13 = getelementptr i8, ptr %add.ptr11, i32 %sub
  %add.ptr21 = getelementptr %struct.__ccs_data_block_rule_if, ptr %add.ptr11, i32 %div205
  %cmp23.not = icmp eq ptr %add.ptr21, %add.ptr13
  br i1 %cmp23.not, label %if.end26, label %sw.bb.cleanup112_crit_edge

sw.bb.cleanup112_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup112

if.end26:                                         ; preds = %sw.bb
  %20 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bin, align 4
  %tobool28.not = icmp eq ptr %21, null
  br i1 %tobool28.not, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %add.i213 = add i32 %mul12, 7
  %and.i214 = and i32 %add.i213, -8
  %22 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size.i.i, align 4
  %add1.i = add i32 %23, %and.i214
  store i32 %add1.i, ptr %size.i.i, align 4
  %inc = add i32 %num_rules.0294, 1
  br label %sw.epilog

if.else:                                          ; preds = %if.end26
  %tobool31.not = icmp eq ptr %next_rule.1293, null
  br i1 %tobool31.not, label %if.else.cleanup112_crit_edge, label %if.end33

if.else.cleanup112_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup112

if.end33:                                         ; preds = %if.else
  %incdec.ptr = getelementptr %struct.ccs_rule, ptr %next_rule.1293, i32 1
  %add.i215 = add i32 %mul12, 7
  %and.i216 = and i32 %add.i215, -8
  %24 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %end.i.i, align 4
  %26 = ptrtoint ptr %now.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %now.i.i, align 4
  %sub.ptr.lhs.cast.i219 = ptrtoint ptr %25 to i32
  %sub.ptr.rhs.cast.i220 = ptrtoint ptr %27 to i32
  %sub.ptr.sub.i221 = sub i32 %sub.ptr.lhs.cast.i219, %sub.ptr.rhs.cast.i220
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i221, i32 %and.i216)
  %cmp.i222 = icmp ult i32 %sub.ptr.sub.i221, %and.i216
  br i1 %cmp.i222, label %if.end33.cleanup112_crit_edge, label %bin_alloc.exit226

if.end33.cleanup112_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup112

bin_alloc.exit226:                                ; preds = %if.end33
  %add.ptr.i223 = getelementptr i8, ptr %27, i32 %and.i216
  %28 = ptrtoint ptr %now.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr.i223, ptr %now.i.i, align 4
  %tobool36.not = icmp eq ptr %27, null
  br i1 %tobool36.not, label %bin_alloc.exit226.cleanup112_crit_edge, label %for.cond.preheader

bin_alloc.exit226.cleanup112_crit_edge:           ; preds = %bin_alloc.exit226
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup112

for.cond.preheader:                               ; preds = %bin_alloc.exit226
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp39289.not = icmp ult i32 %sub, 4
  br i1 %cmp39289.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.preheader

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %div205, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0290 = phi i32 [ %inc57, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.__ccs_data_block_rule_if, ptr %add.ptr11, i32 %i.0290
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx, align 1
  %conv43 = zext i8 %30 to i16
  %shl = shl nuw i16 %conv43, 8
  %arrayidx46 = getelementptr [2 x i8], ptr %arrayidx, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %32 to i16
  %add = or i16 %shl, %conv47
  %arrayidx49 = getelementptr %struct.ccs_if_rule, ptr %27, i32 %i.0290
  %33 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %add, ptr %arrayidx49, align 2
  %value = getelementptr inbounds %struct.__ccs_data_block_rule_if, ptr %arrayidx, i32 0, i32 1
  %34 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %value, align 1
  %value53 = getelementptr %struct.ccs_if_rule, ptr %27, i32 %i.0290, i32 1
  %36 = ptrtoint ptr %value53 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %value53, align 2
  %mask = getelementptr inbounds %struct.__ccs_data_block_rule_if, ptr %arrayidx, i32 0, i32 2
  %37 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %mask, align 1
  %mask56 = getelementptr %struct.ccs_if_rule, ptr %27, i32 %i.0290, i32 2
  %39 = ptrtoint ptr %mask56 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %mask56, align 1
  %inc57 = add nuw nsw i32 %i.0290, 1
  %exitcond.not = icmp eq i32 %inc57, %umax
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %if_rules = getelementptr inbounds %struct.ccs_rule, ptr %next_rule.1293, i32 0, i32 1
  %40 = ptrtoint ptr %if_rules to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %27, ptr %if_rules, align 4
  %41 = ptrtoint ptr %next_rule.1293 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div205, ptr %next_rule.1293, align 4
  br label %sw.epilog

sw.bb63:                                          ; preds = %if.end10
  %read_only_regs = getelementptr inbounds %struct.ccs_rule, ptr %rules.0292, i32 0, i32 3
  %num_read_only_regs = getelementptr inbounds %struct.ccs_rule, ptr %rules.0292, i32 0, i32 2
  %add.ptr64 = getelementptr i8, ptr %add.ptr11, i32 %sub
  %42 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bin, align 4
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i227

if.then.i:                                        ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call fastcc i32 @ccs_data_parse_regs(ptr noundef %bin, ptr noundef null, ptr noundef null, ptr noundef %add.ptr11, ptr noundef %add.ptr64) #7
  br label %ccs_data_parse_reg_rules.exit

if.end.i227:                                      ; preds = %sw.bb63
  %call1.i = tail call fastcc i32 @ccs_data_parse_regs(ptr noundef %bin, ptr noundef null, ptr noundef %num_read_only_regs, ptr noundef %add.ptr11, ptr noundef %add.ptr64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i227.cleanup112_crit_edge

if.end.i227.cleanup112_crit_edge:                 ; preds = %if.end.i227
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup112

if.end4.i:                                        ; preds = %if.end.i227
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = tail call fastcc i32 @ccs_data_parse_regs(ptr noundef %bin, ptr noundef %read_only_regs, ptr noundef %num_read_only_regs, ptr noundef %add.ptr11, ptr noundef %add.ptr64) #7
  br label %ccs_data_parse_reg_rules.exit

ccs_data_parse_reg_rules.exit:                    ; preds = %if.end4.i, %if.then.i
  %retval.0.i228 = phi i32 [ %call5.i, %if.end4.i ], [ %call.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i228)
  %tobool66.not = icmp eq i32 %retval.0.i228, 0
  br i1 %tobool66.not, label %ccs_data_parse_reg_rules.exit.sw.epilog_crit_edge, label %ccs_data_parse_reg_rules.exit.cleanup112_crit_edge

ccs_data_parse_reg_rules.exit.cleanup112_crit_edge: ; preds = %ccs_data_parse_reg_rules.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup112

ccs_data_parse_reg_rules.exit.sw.epilog_crit_edge: ; preds = %ccs_data_parse_reg_rules.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.end10
  %frame_format = getelementptr inbounds %struct.ccs_rule, ptr %rules.0292, i32 0, i32 6
  %add.ptr70 = getelementptr i8, ptr %add.ptr11, i32 %sub
  %call71 = tail call fastcc i32 @ccs_data_parse_ffd(ptr noundef %bin, ptr noundef %frame_format, ptr noundef %add.ptr11, ptr noundef %add.ptr70)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %sw.bb69.sw.epilog_crit_edge, label %sw.bb69.cleanup112_crit_edge

sw.bb69.cleanup112_crit_edge:                     ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup112

sw.bb69.sw.epilog_crit_edge:                      ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb75:                                          ; preds = %if.end10
  %manufacturer_regs = getelementptr inbounds %struct.ccs_rule, ptr %rules.0292, i32 0, i32 5
  %num_manufacturer_regs = getelementptr inbounds %struct.ccs_rule, ptr %rules.0292, i32 0, i32 4
  %add.ptr76 = getelementptr i8, ptr %add.ptr11, i32 %sub
  %44 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bin, align 4
  %tobool.not.i229 = icmp eq ptr %45, null
  br i1 %tobool.not.i229, label %if.then.i231, label %if.end.i234

if.then.i231:                                     ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #9
  %call.i230 = tail call fastcc i32 @ccs_data_parse_regs(ptr noundef %bin, ptr noundef null, ptr noundef null, ptr noundef %add.ptr11, ptr noundef %add.ptr76) #7
  br label %ccs_data_parse_reg_rules.exit238

if.end.i234:                                      ; preds = %sw.bb75
  %call1.i232 = tail call fastcc i32 @ccs_data_parse_regs(ptr noundef %bin, ptr noundef null, ptr noundef %num_manufacturer_regs, ptr noundef %add.ptr11, ptr noundef %add.ptr76) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i232)
  %tobool2.not.i233 = icmp eq i32 %call1.i232, 0
  br i1 %tobool2.not.i233, label %if.end4.i236, label %if.end.i234.cleanup112_crit_edge

if.end.i234.cleanup112_crit_edge:                 ; preds = %if.end.i234
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup112

if.end4.i236:                                     ; preds = %if.end.i234
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i235 = tail call fastcc i32 @ccs_data_parse_regs(ptr noundef %bin, ptr noundef %manufacturer_regs, ptr noundef %num_manufacturer_regs, ptr noundef %add.ptr11, ptr noundef %add.ptr76) #7
  br label %ccs_data_parse_reg_rules.exit238

ccs_data_parse_reg_rules.exit238:                 ; preds = %if.end4.i236, %if.then.i231
  %retval.0.i237 = phi i32 [ %call5.i235, %if.end4.i236 ], [ %call.i230, %if.then.i231 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i237)
  %tobool78.not = icmp eq i32 %retval.0.i237, 0
  br i1 %tobool78.not, label %ccs_data_parse_reg_rules.exit238.sw.epilog_crit_edge, label %ccs_data_parse_reg_rules.exit238.cleanup112_crit_edge

ccs_data_parse_reg_rules.exit238.cleanup112_crit_edge: ; preds = %ccs_data_parse_reg_rules.exit238
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup112

ccs_data_parse_reg_rules.exit238.sw.epilog_crit_edge: ; preds = %ccs_data_parse_reg_rules.exit238
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb81:                                          ; preds = %if.end10
  %pdaf_readout = getelementptr inbounds %struct.ccs_rule, ptr %rules.0292, i32 0, i32 7
  %add.ptr82 = getelementptr i8, ptr %add.ptr11, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp.i242 = icmp ugt i32 %sub, 1
  br i1 %cmp.i242, label %if.end.i244, label %sw.bb81.cleanup112_crit_edge

sw.bb81.cleanup112_crit_edge:                     ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup112

if.end.i244:                                      ; preds = %sw.bb81
  %46 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bin, align 4
  %tobool.not.i243 = icmp eq ptr %47, null
  br i1 %tobool.not.i243, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.end.i244
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size.i.i, align 4
  %add1.i.i = add i32 %49, 8
  store i32 %add1.i.i, ptr %size.i.i, align 4
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i244
  %50 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %end.i.i, align 4
  %52 = ptrtoint ptr %now.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %now.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %51 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i, 8
  br i1 %cmp.i.i, label %bin_alloc.exit.thread.i, label %bin_alloc.exit.i

bin_alloc.exit.thread.i:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %pdaf_readout to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %pdaf_readout, align 4
  br label %cleanup112

bin_alloc.exit.i:                                 ; preds = %if.else.i
  %add.ptr.i.i = getelementptr i8, ptr %53, i32 8
  %55 = ptrtoint ptr %now.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr.i.i, ptr %now.i.i, align 4
  %56 = ptrtoint ptr %pdaf_readout to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %pdaf_readout, align 4
  %tobool2.not.i245 = icmp eq ptr %53, null
  br i1 %tobool2.not.i245, label %bin_alloc.exit.i.cleanup112_crit_edge, label %if.end4.i246

bin_alloc.exit.i.cleanup112_crit_edge:            ; preds = %bin_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup112

if.end4.i246:                                     ; preds = %bin_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %pdaf_readout_info_order.i = getelementptr inbounds %struct.__ccs_data_block_pdaf_readout, ptr %add.ptr11, i32 0, i32 1
  %57 = ptrtoint ptr %pdaf_readout_info_order.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %pdaf_readout_info_order.i, align 1
  %59 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %53, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end4.i246, %if.then1.i
  %60 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bin, align 4
  %tobool8.not.i = icmp eq ptr %61, null
  br i1 %tobool8.not.i, label %if.end6.i.ccs_data_parse_pdaf_readout.exit_crit_edge, label %cond.false.i

if.end6.i.ccs_data_parse_pdaf_readout.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ccs_data_parse_pdaf_readout.exit

cond.false.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %pdaf_readout to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdaf_readout, align 4
  %ffd.i = getelementptr inbounds %struct.ccs_pdaf_readout, ptr %63, i32 0, i32 1
  br label %ccs_data_parse_pdaf_readout.exit

ccs_data_parse_pdaf_readout.exit:                 ; preds = %cond.false.i, %if.end6.i.ccs_data_parse_pdaf_readout.exit_crit_edge
  %cond.i = phi ptr [ %ffd.i, %cond.false.i ], [ null, %if.end6.i.ccs_data_parse_pdaf_readout.exit_crit_edge ]
  %add.ptr.i247 = getelementptr %struct.__ccs_data_block_pdaf_readout, ptr %add.ptr11, i32 1
  %call9.i = tail call fastcc i32 @ccs_data_parse_ffd(ptr noundef %bin, ptr noundef %cond.i, ptr noundef %add.ptr.i247, ptr noundef %add.ptr82) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool84.not = icmp eq i32 %call9.i, 0
  br i1 %tobool84.not, label %ccs_data_parse_pdaf_readout.exit.sw.epilog_crit_edge, label %ccs_data_parse_pdaf_readout.exit.cleanup112_crit_edge

ccs_data_parse_pdaf_readout.exit.cleanup112_crit_edge: ; preds = %ccs_data_parse_pdaf_readout.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup112

ccs_data_parse_pdaf_readout.exit.sw.epilog_crit_edge: ; preds = %ccs_data_parse_pdaf_readout.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_data_parse_rules.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_data_parse_rules, %if.then91)) #7
          to label %cleanup112 [label %if.then91], !srcloc !41

if.then91:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %add.ptr, align 1
  %conv92 = zext i8 %65 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_data_parse_rules.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv92) #7
  br label %cleanup112

sw.epilog:                                        ; preds = %ccs_data_parse_pdaf_readout.exit.sw.epilog_crit_edge, %ccs_data_parse_reg_rules.exit238.sw.epilog_crit_edge, %sw.bb69.sw.epilog_crit_edge, %ccs_data_parse_reg_rules.exit.sw.epilog_crit_edge, %cleanup, %if.then29
  %rules.4 = phi ptr [ %rules.0292, %ccs_data_parse_pdaf_readout.exit.sw.epilog_crit_edge ], [ %rules.0292, %ccs_data_parse_reg_rules.exit238.sw.epilog_crit_edge ], [ %rules.0292, %sw.bb69.sw.epilog_crit_edge ], [ %rules.0292, %ccs_data_parse_reg_rules.exit.sw.epilog_crit_edge ], [ %rules.0292, %if.then29 ], [ %next_rule.1293, %cleanup ]
  %next_rule.5 = phi ptr [ %next_rule.1293, %ccs_data_parse_pdaf_readout.exit.sw.epilog_crit_edge ], [ %next_rule.1293, %ccs_data_parse_reg_rules.exit238.sw.epilog_crit_edge ], [ %next_rule.1293, %sw.bb69.sw.epilog_crit_edge ], [ %next_rule.1293, %ccs_data_parse_reg_rules.exit.sw.epilog_crit_edge ], [ %next_rule.1293, %if.then29 ], [ %incdec.ptr, %cleanup ]
  %num_rules.3 = phi i32 [ %num_rules.0294, %ccs_data_parse_pdaf_readout.exit.sw.epilog_crit_edge ], [ %num_rules.0294, %ccs_data_parse_reg_rules.exit238.sw.epilog_crit_edge ], [ %num_rules.0294, %sw.bb69.sw.epilog_crit_edge ], [ %num_rules.0294, %ccs_data_parse_reg_rules.exit.sw.epilog_crit_edge ], [ %inc, %if.then29 ], [ %num_rules.0294, %cleanup ]
  %add.ptr95 = getelementptr i8, ptr %add.ptr, i32 %plen.2.i
  %cmp = icmp ult ptr %add.ptr95, %endp
  br i1 %cmp, label %sw.epilog.if.end.i210_crit_edge, label %sw.epilog.while.end_crit_edge

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

sw.epilog.if.end.i210_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i210

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %if.end3.while.end_crit_edge
  %num_rules.0.lcssa = phi i32 [ 0, %if.end3.while.end_crit_edge ], [ %num_rules.3, %sw.epilog.while.end_crit_edge ]
  %66 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bin, align 4
  %tobool104.not = icmp eq ptr %67, null
  br i1 %tobool104.not, label %if.then105, label %if.else107

if.then105:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %mul106 = shl i32 %num_rules.0.lcssa, 5
  %size.i251 = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 3
  %68 = ptrtoint ptr %size.i251 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %size.i251, align 4
  %add1.i252 = add i32 %69, %mul106
  store i32 %add1.i252, ptr %size.i251, align 4
  %70 = ptrtoint ptr %__num_rules to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %num_rules.0.lcssa, ptr %__num_rules, align 4
  br label %cleanup112

if.else107:                                       ; preds = %while.end
  %tobool108.not = icmp eq ptr %rules_base.0, null
  br i1 %tobool108.not, label %if.else107.cleanup112_crit_edge, label %if.end110

if.else107.cleanup112_crit_edge:                  ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup112

if.end110:                                        ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %__rules to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %rules_base.0, ptr %__rules, align 4
  br label %cleanup112

cleanup112:                                       ; preds = %if.end110, %if.else107.cleanup112_crit_edge, %if.then105, %if.then91, %do.body, %ccs_data_parse_pdaf_readout.exit.cleanup112_crit_edge, %bin_alloc.exit.i.cleanup112_crit_edge, %bin_alloc.exit.thread.i, %sw.bb81.cleanup112_crit_edge, %ccs_data_parse_reg_rules.exit238.cleanup112_crit_edge, %if.end.i234.cleanup112_crit_edge, %sw.bb69.cleanup112_crit_edge, %ccs_data_parse_reg_rules.exit.cleanup112_crit_edge, %if.end.i227.cleanup112_crit_edge, %bin_alloc.exit226.cleanup112_crit_edge, %if.end33.cleanup112_crit_edge, %if.else.cleanup112_crit_edge, %sw.bb.cleanup112_crit_edge, %if.end7.cleanup112_crit_edge, %sw.epilog.i.cleanup112_crit_edge, %sw.bb17.i.cleanup112_crit_edge, %sw.bb3.i.cleanup112_crit_edge, %if.end.i210.cleanup112_crit_edge, %bin_alloc.exit.cleanup112_crit_edge, %if.then.cleanup112_crit_edge
  %retval.6 = phi i32 [ -12, %bin_alloc.exit.cleanup112_crit_edge ], [ -5, %if.else107.cleanup112_crit_edge ], [ 0, %if.end110 ], [ 0, %if.then105 ], [ -22, %do.body ], [ -12, %if.then.cleanup112_crit_edge ], [ -22, %if.then91 ], [ -12, %bin_alloc.exit.thread.i ], [ -61, %sw.bb81.cleanup112_crit_edge ], [ -12, %bin_alloc.exit.i.cleanup112_crit_edge ], [ %call1.i232, %if.end.i234.cleanup112_crit_edge ], [ %call1.i, %if.end.i227.cleanup112_crit_edge ], [ -12, %if.end33.cleanup112_crit_edge ], [ -5, %if.else.cleanup112_crit_edge ], [ -12, %bin_alloc.exit226.cleanup112_crit_edge ], [ -22, %if.end.i210.cleanup112_crit_edge ], [ -61, %sw.epilog.i.cleanup112_crit_edge ], [ -61, %sw.bb3.i.cleanup112_crit_edge ], [ -61, %sw.bb17.i.cleanup112_crit_edge ], [ -61, %if.end7.cleanup112_crit_edge ], [ %retval.0.i228, %ccs_data_parse_reg_rules.exit.cleanup112_crit_edge ], [ %call71, %sw.bb69.cleanup112_crit_edge ], [ %retval.0.i237, %ccs_data_parse_reg_rules.exit238.cleanup112_crit_edge ], [ %call9.i, %ccs_data_parse_pdaf_readout.exit.cleanup112_crit_edge ], [ -22, %sw.bb.cleanup112_crit_edge ]
  ret i32 %retval.6
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccs_data_parse_ffd(ptr nocapture noundef %bin, ptr nocapture noundef %ffd, ptr noundef %payload, ptr noundef %endp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sub.ptr.lhs.cast = ptrtoint ptr %endp to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %payload to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub)
  %cmp = icmp ugt i32 %sub.ptr.sub, 1
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %payload, i32 2
  %0 = ptrtoint ptr %payload to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %payload, align 1
  %conv = zext i8 %1 to i32
  %num_row_descs = getelementptr inbounds %struct.__ccs_data_block_ffd, ptr %payload, i32 0, i32 1
  %2 = ptrtoint ptr %num_row_descs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_row_descs, align 1
  %conv1 = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv1, %conv
  %mul = shl nuw nsw i32 %add, 2
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul
  %cmp3.not = icmp eq ptr %add.ptr2, %endp
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bin, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then7, label %if.end14

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %size.i = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 3
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  %add1.i = add i32 %7, 16
  store i32 %add1.i, ptr %size.i, align 4
  %8 = ptrtoint ptr %payload to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %payload, align 1
  %conv9 = zext i8 %9 to i32
  %mul10 = shl nuw nsw i32 %conv9, 2
  %add.i = add nuw nsw i32 %mul10, 7
  %and.i = and i32 %add.i, 2040
  %add1.i2 = add i32 %and.i, %add1.i
  store i32 %add1.i2, ptr %size.i, align 4
  %10 = ptrtoint ptr %num_row_descs to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_row_descs, align 1
  %conv12 = zext i8 %11 to i32
  %mul13 = shl nuw nsw i32 %conv12, 2
  %add.i3 = add nuw nsw i32 %mul13, 7
  %and.i4 = and i32 %add.i3, 2040
  %add1.i6 = add i32 %and.i4, %add1.i2
  store i32 %add1.i6, ptr %size.i, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %end.i = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 2
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i, align 4
  %now.i = getelementptr inbounds %struct.bin_container, ptr %bin, i32 0, i32 1
  %14 = ptrtoint ptr %now.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %now.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i, 16
  br i1 %cmp.i, label %bin_alloc.exit.thread, label %bin_alloc.exit

bin_alloc.exit.thread:                            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %ffd to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %ffd, align 4
  br label %cleanup

bin_alloc.exit:                                   ; preds = %if.end14
  %add.ptr.i = getelementptr i8, ptr %15, i32 16
  %17 = ptrtoint ptr %now.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i, ptr %now.i, align 4
  %18 = ptrtoint ptr %ffd to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %ffd, align 4
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %bin_alloc.exit.cleanup_crit_edge, label %if.end17

bin_alloc.exit.cleanup_crit_edge:                 ; preds = %bin_alloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %bin_alloc.exit
  %19 = ptrtoint ptr %payload to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %payload, align 1
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %15, align 4
  %22 = ptrtoint ptr %num_row_descs to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num_row_descs, align 1
  %24 = ptrtoint ptr %ffd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ffd, align 4
  %num_row_descs21 = getelementptr inbounds %struct.ccs_frame_format_descs, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %num_row_descs21 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %23, ptr %num_row_descs21, align 1
  %27 = load i8, ptr %payload, align 1
  %conv24 = zext i8 %27 to i32
  %mul25 = shl nuw nsw i32 %conv24, 2
  %add.i7 = add nuw nsw i32 %mul25, 7
  %and.i8 = and i32 %add.i7, 2040
  %28 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %end.i, align 4
  %30 = ptrtoint ptr %now.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %now.i, align 4
  %sub.ptr.lhs.cast.i11 = ptrtoint ptr %29 to i32
  %sub.ptr.rhs.cast.i12 = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i13 = sub i32 %sub.ptr.lhs.cast.i11, %sub.ptr.rhs.cast.i12
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i13, i32 %and.i8)
  %cmp.i14 = icmp ult i32 %sub.ptr.sub.i13, %and.i8
  br i1 %cmp.i14, label %if.end17.bin_alloc.exit18_crit_edge, label %if.end.i16

if.end17.bin_alloc.exit18_crit_edge:              ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %bin_alloc.exit18

if.end.i16:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i15 = getelementptr i8, ptr %31, i32 %and.i8
  %32 = ptrtoint ptr %now.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr.i15, ptr %now.i, align 4
  br label %bin_alloc.exit18

bin_alloc.exit18:                                 ; preds = %if.end.i16, %if.end17.bin_alloc.exit18_crit_edge
  %retval.0.i17 = phi ptr [ %31, %if.end.i16 ], [ null, %if.end17.bin_alloc.exit18_crit_edge ]
  %33 = ptrtoint ptr %ffd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ffd, align 4
  %column_descs = getelementptr inbounds %struct.ccs_frame_format_descs, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %column_descs to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %retval.0.i17, ptr %column_descs, align 4
  %36 = load ptr, ptr %ffd, align 4
  %column_descs27 = getelementptr inbounds %struct.ccs_frame_format_descs, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %column_descs27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %column_descs27, align 4
  %tobool28.not = icmp eq ptr %38, null
  br i1 %tobool28.not, label %bin_alloc.exit18.cleanup_crit_edge, label %if.end30

bin_alloc.exit18.cleanup_crit_edge:               ; preds = %bin_alloc.exit18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30:                                         ; preds = %bin_alloc.exit18
  %39 = ptrtoint ptr %payload to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %payload, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp3342.not = icmp eq i8 %40, 0
  br i1 %cmp3342.not, label %if.end30.for.end_crit_edge, label %if.end30.for.body_crit_edge

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  br label %for.body

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end30.for.body_crit_edge
  %i.044 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end30.for.body_crit_edge ]
  %__entry.043 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %add.ptr, %if.end30.for.body_crit_edge ]
  %41 = ptrtoint ptr %ffd to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ffd, align 4
  %column_descs35 = getelementptr inbounds %struct.ccs_frame_format_descs, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %column_descs35 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %column_descs35, align 4
  %arrayidx = getelementptr %struct.ccs_frame_format_desc, ptr %44, i32 %i.044
  %45 = ptrtoint ptr %__entry.043 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %__entry.043, align 1
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx, align 2
  %value.i = getelementptr inbounds %struct.__ccs_data_block_ffd_entry, ptr %__entry.043, i32 0, i32 2
  %48 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %value.i, align 1
  %conv2.i = zext i8 %49 to i16
  %shl.i = shl nuw i16 %conv2.i, 8
  %arrayidx4.i = getelementptr %struct.__ccs_data_block_ffd_entry, ptr %__entry.043, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %51 to i16
  %add.i19 = or i16 %shl.i, %conv5.i
  %value7.i = getelementptr %struct.ccs_frame_format_desc, ptr %44, i32 %i.044, i32 1
  %52 = ptrtoint ptr %value7.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %add.i19, ptr %value7.i, align 2
  %inc = add nuw nsw i32 %i.044, 1
  %incdec.ptr = getelementptr %struct.__ccs_data_block_ffd_entry, ptr %__entry.043, i32 1
  %53 = ptrtoint ptr %payload to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %payload, align 1
  %conv32 = zext i8 %54 to i32
  %cmp33 = icmp ult i32 %inc, %conv32
  br i1 %cmp33, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end30.for.end_crit_edge
  %__entry.0.lcssa = phi ptr [ %add.ptr, %if.end30.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  %55 = ptrtoint ptr %num_row_descs to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %num_row_descs, align 1
  %conv37 = zext i8 %56 to i32
  %mul38 = shl nuw nsw i32 %conv37, 2
  %add.i20 = add nuw nsw i32 %mul38, 7
  %and.i21 = and i32 %add.i20, 2040
  %57 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %end.i, align 4
  %59 = ptrtoint ptr %now.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %now.i, align 4
  %sub.ptr.lhs.cast.i24 = ptrtoint ptr %58 to i32
  %sub.ptr.rhs.cast.i25 = ptrtoint ptr %60 to i32
  %sub.ptr.sub.i26 = sub i32 %sub.ptr.lhs.cast.i24, %sub.ptr.rhs.cast.i25
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i26, i32 %and.i21)
  %cmp.i27 = icmp ult i32 %sub.ptr.sub.i26, %and.i21
  br i1 %cmp.i27, label %for.end.bin_alloc.exit31_crit_edge, label %if.end.i29

for.end.bin_alloc.exit31_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %bin_alloc.exit31

if.end.i29:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i28 = getelementptr i8, ptr %60, i32 %and.i21
  %61 = ptrtoint ptr %now.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr.i28, ptr %now.i, align 4
  br label %bin_alloc.exit31

bin_alloc.exit31:                                 ; preds = %if.end.i29, %for.end.bin_alloc.exit31_crit_edge
  %retval.0.i30 = phi ptr [ %60, %if.end.i29 ], [ null, %for.end.bin_alloc.exit31_crit_edge ]
  %62 = ptrtoint ptr %ffd to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ffd, align 4
  %row_descs = getelementptr inbounds %struct.ccs_frame_format_descs, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %row_descs to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %retval.0.i30, ptr %row_descs, align 4
  %65 = load ptr, ptr %ffd, align 4
  %row_descs40 = getelementptr inbounds %struct.ccs_frame_format_descs, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %row_descs40 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %row_descs40, align 4
  %tobool41.not = icmp eq ptr %67, null
  br i1 %tobool41.not, label %bin_alloc.exit31.cleanup_crit_edge, label %for.cond44.preheader

bin_alloc.exit31.cleanup_crit_edge:               ; preds = %bin_alloc.exit31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond44.preheader:                             ; preds = %bin_alloc.exit31
  %68 = ptrtoint ptr %num_row_descs to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %num_row_descs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp4746.not = icmp eq i8 %69, 0
  br i1 %cmp4746.not, label %for.cond44.preheader.for.end55_crit_edge, label %for.cond44.preheader.for.body49_crit_edge

for.cond44.preheader.for.body49_crit_edge:        ; preds = %for.cond44.preheader
  br label %for.body49

for.cond44.preheader.for.end55_crit_edge:         ; preds = %for.cond44.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end55

for.body49:                                       ; preds = %for.body49.for.body49_crit_edge, %for.cond44.preheader.for.body49_crit_edge
  %i.148 = phi i32 [ %inc53, %for.body49.for.body49_crit_edge ], [ 0, %for.cond44.preheader.for.body49_crit_edge ]
  %__entry.147 = phi ptr [ %incdec.ptr54, %for.body49.for.body49_crit_edge ], [ %__entry.0.lcssa, %for.cond44.preheader.for.body49_crit_edge ]
  %70 = ptrtoint ptr %ffd to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ffd, align 4
  %row_descs50 = getelementptr inbounds %struct.ccs_frame_format_descs, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %row_descs50 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %row_descs50, align 4
  %arrayidx51 = getelementptr %struct.ccs_frame_format_desc, ptr %73, i32 %i.148
  %74 = ptrtoint ptr %__entry.147 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %__entry.147, align 1
  %76 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %arrayidx51, align 2
  %value.i32 = getelementptr inbounds %struct.__ccs_data_block_ffd_entry, ptr %__entry.147, i32 0, i32 2
  %77 = ptrtoint ptr %value.i32 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %value.i32, align 1
  %conv2.i33 = zext i8 %78 to i16
  %shl.i34 = shl nuw i16 %conv2.i33, 8
  %arrayidx4.i35 = getelementptr %struct.__ccs_data_block_ffd_entry, ptr %__entry.147, i32 0, i32 2, i32 1
  %79 = ptrtoint ptr %arrayidx4.i35 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx4.i35, align 1
  %conv5.i36 = zext i8 %80 to i16
  %add.i37 = or i16 %shl.i34, %conv5.i36
  %value7.i38 = getelementptr %struct.ccs_frame_format_desc, ptr %73, i32 %i.148, i32 1
  %81 = ptrtoint ptr %value7.i38 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %add.i37, ptr %value7.i38, align 2
  %inc53 = add nuw nsw i32 %i.148, 1
  %incdec.ptr54 = getelementptr %struct.__ccs_data_block_ffd_entry, ptr %__entry.147, i32 1
  %82 = ptrtoint ptr %num_row_descs to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %num_row_descs, align 1
  %conv46 = zext i8 %83 to i32
  %cmp47 = icmp ult i32 %inc53, %conv46
  br i1 %cmp47, label %for.body49.for.body49_crit_edge, label %for.body49.for.end55_crit_edge

for.body49.for.end55_crit_edge:                   ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end55

for.body49.for.body49_crit_edge:                  ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body49

for.end55:                                        ; preds = %for.body49.for.end55_crit_edge, %for.cond44.preheader.for.end55_crit_edge
  %__entry.1.lcssa = phi ptr [ %__entry.0.lcssa, %for.cond44.preheader.for.end55_crit_edge ], [ %incdec.ptr54, %for.body49.for.end55_crit_edge ]
  %cmp56.not = icmp eq ptr %__entry.1.lcssa, %endp
  %. = select i1 %cmp56.not, i32 0, i32 -71
  br label %cleanup

cleanup:                                          ; preds = %for.end55, %bin_alloc.exit31.cleanup_crit_edge, %bin_alloc.exit18.cleanup_crit_edge, %bin_alloc.exit.cleanup_crit_edge, %bin_alloc.exit.thread, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then7 ], [ -61, %entry.cleanup_crit_edge ], [ -61, %if.end.cleanup_crit_edge ], [ -12, %bin_alloc.exit.cleanup_crit_edge ], [ -12, %bin_alloc.exit18.cleanup_crit_edge ], [ -12, %bin_alloc.exit31.cleanup_crit_edge ], [ %., %for.end55 ], [ -12, %bin_alloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ccs/ccs-data.c", i32 955, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ccs_data_parse.__UNIQUE_ID_ddebug235, !1, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/i2c/ccs/ccs-data.c", i32 806, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__ccs_data_parse.__UNIQUE_ID_ddebug232, !7, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ccs/ccs-data.c", i32 811, i32 3}
!12 = !{ptr @__ccs_data_parse.__UNIQUE_ID_ddebug233, !11, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/i2c/ccs/ccs-data.c", i32 912, i32 4}
!15 = !{ptr @__ccs_data_parse.__UNIQUE_ID_ddebug234, !14, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/ccs/ccs-data.c", i32 193, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ccs_data_block_parse_header.__UNIQUE_ID_ddebug229, !17, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/ccs/ccs-data.c", i32 556, i32 4}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ccs_data_parse_rules.__UNIQUE_ID_ddebug230, !21, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/ccs/ccs-data.c", i32 783, i32 3}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ccs_data_parse_end.__UNIQUE_ID_ddebug231, !25, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/ccs/ccs-data.c", i32 165, i32 2}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @print_ccs_data_version.__UNIQUE_ID_ddebug228, !29, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i64 2148299013, i64 2148299018, i64 2148299031, i64 2148299075, i64 2148299109, i64 2148299130}
