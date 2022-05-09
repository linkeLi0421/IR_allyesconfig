; ModuleID = '/llk/IR_all_yes/net/dccp/ackvec.c_pt.bc'
source_filename = "../net/dccp/ackvec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dccp_ackvec_parsed_add\22, \22a\22\09"
module asm "\09.weak\09__crc_dccp_ackvec_parsed_add\09\09\09\09"
module asm "\09.long\09__crc_dccp_ackvec_parsed_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dccp_ackvec_parsed_add:\09\09\09\09\09"
module asm "\09.asciz \09\22dccp_ackvec_parsed_add\22\09\09\09\09\09"
module asm "__kstrtabns_dccp_ackvec_parsed_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dccp_ackvec_parsed_cleanup\22, \22a\22\09"
module asm "\09.weak\09__crc_dccp_ackvec_parsed_cleanup\09\09\09\09"
module asm "\09.long\09__crc_dccp_ackvec_parsed_cleanup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dccp_ackvec_parsed_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22dccp_ackvec_parsed_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_dccp_ackvec_parsed_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dccp_ackvec = type { [506 x i8], i16, i16, i48, [6 x i8], [2 x i8], i8, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.dccp_ackvec_record = type { %struct.list_head, i48, [6 x i8], i16, i8, i8 }
%struct.sk_buff = type { %union.anon, %union.anon.168, %union.anon.169, [48 x i8], %union.anon.170, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.172, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.168 = type { ptr }
%union.anon.169 = type { i64 }
%union.anon.170 = type { %struct.anon.171 }
%struct.anon.171 = type { i32, ptr }
%union.anon.172 = type { %struct.anon.173 }
%struct.anon.173 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.174, i32, i32, i32, i16, i16, %union.anon.176, i32, %union.anon.177, %union.anon.178, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.174 = type { i32 }
%union.anon.176 = type { i32 }
%union.anon.177 = type { i32 }
%union.anon.178 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dccp_ackvec_parsed = type { ptr, i8, i8, %struct.list_head }

@dccp_ackvec_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dccp_ackvec_record_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dccp_debug = external dso_local local_unnamed_addr global i8, align 1
@dccp_ackvec_update_records._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017%s: Added Vector, ack_seqno=%llu, ack_ackno=%llu (rl=%u)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dccp_ackvec_update_records\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/dccp/ackvec.c\00", [46 x i8] zeroinitializer }, align 32
@dccp_ackvec_update_records._entry_ptr = internal global ptr @dccp_ackvec_update_records._entry, section ".printk_index", align 4
@__kstrtab_dccp_ackvec_parsed_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_dccp_ackvec_parsed_add = external dso_local constant [0 x i8], align 1
@__ksymtab_dccp_ackvec_parsed_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dccp_ackvec_parsed_add to i32), ptr @__kstrtab_dccp_ackvec_parsed_add, ptr @__kstrtabns_dccp_ackvec_parsed_add }, section "___ksymtab_gpl+dccp_ackvec_parsed_add", align 4
@__kstrtab_dccp_ackvec_parsed_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_dccp_ackvec_parsed_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_dccp_ackvec_parsed_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dccp_ackvec_parsed_cleanup to i32), ptr @__kstrtab_dccp_ackvec_parsed_cleanup, ptr @__kstrtabns_dccp_ackvec_parsed_cleanup }, section "___ksymtab_gpl+dccp_ackvec_parsed_cleanup", align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dccp_ackvec\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dccp_ackvec_record\00", [45 x i8] zeroinitializer }, align 32
@dccp_ackvec_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\012Unable to create Ack Vector slab cache at %s:%d/%s()\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dccp_ackvec_init\00", [47 x i8] zeroinitializer }, align 32
@dccp_ackvec_init._entry_ptr = internal global ptr @dccp_ackvec_init._entry, section ".printk_index", align 4
@dccp_ackvec_add_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014%s: Warning: large burst loss (%u)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dccp_ackvec_add_new\00", [44 x i8] zeroinitializer }, align 32
@dccp_ackvec_add_new._entry_ptr = internal global ptr @dccp_ackvec_add_new._entry, section ".printk_index", align 4
@dccp_ackvec_add_new._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\012Ack Vector buffer overflow: dropping old entries at %s:%d/%s()\0A\00", [62 x i8] zeroinitializer }, align 32
@dccp_ackvec_add_new._entry_ptr.11 = internal global ptr @dccp_ackvec_add_new._entry.9, section ".printk_index", align 4
@dccp_ackvec_update_old._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: Not changing %llu state to %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dccp_ackvec_update_old\00", [41 x i8] zeroinitializer }, align 32
@dccp_ackvec_update_old._entry_ptr = internal global ptr @dccp_ackvec_update_old._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"dccp_ackvec_slab\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 14, i32 27 }
@___asan_gen_.17 = private unnamed_addr constant [24 x i8] c"dccp_ackvec_record_slab\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 15, i32 27 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 78, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 379, i32 39 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 385, i32 46 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 397, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 204, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 228, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [21 x i8] c"../net/dccp/ackvec.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 162, i32 5 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__ksymtab_dccp_ackvec_parsed_add, ptr @__ksymtab_dccp_ackvec_parsed_cleanup, ptr @dccp_ackvec_add_new._entry, ptr @dccp_ackvec_add_new._entry.9, ptr @dccp_ackvec_add_new._entry_ptr, ptr @dccp_ackvec_add_new._entry_ptr.11, ptr @dccp_ackvec_init._entry, ptr @dccp_ackvec_init._entry_ptr, ptr @dccp_ackvec_update_old._entry, ptr @dccp_ackvec_update_old._entry_ptr, ptr @dccp_ackvec_update_records._entry, ptr @dccp_ackvec_update_records._entry_ptr, ptr @dccp_ackvec_slab, ptr @dccp_ackvec_record_slab, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_ackvec_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_ackvec_record_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_ackvec_update_records._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_ackvec_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_ackvec_add_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_ackvec_add_new._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_ackvec_update_old._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dccp_ackvec_alloc(i32 noundef %priority) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dccp_ackvec_slab, align 4
  %or.i = or i32 %priority, 256
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef %or.i) #7
  %cmp.not = icmp eq ptr %call.i, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %av_buf_tail = getelementptr inbounds %struct.dccp_ackvec, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %av_buf_tail to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 505, ptr %av_buf_tail, align 4
  %av_buf_head = getelementptr inbounds %struct.dccp_ackvec, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %av_buf_head to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 505, ptr %av_buf_head, align 2
  %av_records = getelementptr inbounds %struct.dccp_ackvec, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %av_records to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %av_records, ptr %av_records, align 4
  %prev.i = getelementptr inbounds %struct.dccp_ackvec, ptr %call.i, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %av_records, ptr %prev.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dccp_ackvec_free(ptr noundef %av) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %av, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then, !prof !46

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %av_records.i = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 7
  %0 = ptrtoint ptr %av_records.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %av_records.i, align 4
  %cmp.not19.i = icmp eq ptr %1, %av_records.i
  br i1 %cmp.not19.i, label %if.then.dccp_ackvec_purge_records.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.dccp_ackvec_purge_records.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %dccp_ackvec_purge_records.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %cur.020.i = phi ptr [ %next.0.i, %for.body.i.for.body.i_crit_edge ], [ %1, %if.then.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %cur.020.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %next.0.i = load ptr, ptr %cur.020.i, align 8
  %3 = load ptr, ptr @dccp_ackvec_record_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %3, ptr noundef %cur.020.i) #7
  %cmp.not.i = icmp eq ptr %next.0.i, %av_records.i
  br i1 %cmp.not.i, label %for.body.i.dccp_ackvec_purge_records.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.dccp_ackvec_purge_records.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dccp_ackvec_purge_records.exit

dccp_ackvec_purge_records.exit:                   ; preds = %for.body.i.dccp_ackvec_purge_records.exit_crit_edge, %if.then.dccp_ackvec_purge_records.exit_crit_edge
  %4 = ptrtoint ptr %av_records.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %av_records.i, ptr %av_records.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %av_records.i, ptr %prev.i.i, align 4
  %6 = load ptr, ptr @dccp_ackvec_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %6, ptr noundef nonnull %av) #7
  br label %if.end

if.end:                                           ; preds = %dccp_ackvec_purge_records.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dccp_ackvec_update_records(ptr noundef %av, i64 noundef %seqno, i8 noundef zeroext %nonce_sum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dccp_ackvec_record_slab, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 2592) #7
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %avr_ack_seqno = getelementptr inbounds %struct.dccp_ackvec_record, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %avr_ack_seqno to i32
  call void @__asan_load8_noabort(i32 %1)
  %bf.load = load i64, ptr %avr_ack_seqno, align 8
  %bf.shl = shl i64 %seqno, 16
  %bf.clear = and i64 %bf.load, 65535
  %bf.set = or i64 %bf.clear, %bf.shl
  store i64 %bf.set, ptr %avr_ack_seqno, align 8
  %av_buf_head = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 1
  %2 = ptrtoint ptr %av_buf_head to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %av_buf_head, align 2
  %avr_ack_ptr = getelementptr inbounds %struct.dccp_ackvec_record, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %avr_ack_ptr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %avr_ack_ptr, align 2
  %av_buf_ackno = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 3
  %5 = ptrtoint ptr %av_buf_ackno to i32
  call void @__asan_load8_noabort(i32 %5)
  %bf.load1 = load i64, ptr %av_buf_ackno, align 8
  %bf.lshr = lshr i64 %bf.load1, 16
  %avr_ack_ackno = getelementptr inbounds %struct.dccp_ackvec_record, ptr %call, i32 0, i32 2
  %6 = trunc i64 %bf.lshr to i48
  %7 = ptrtoint ptr %avr_ack_ackno to i32
  call void @__asan_storeN_noabort(i32 %7, i32 6)
  store i48 %6, ptr %avr_ack_ackno, align 8
  %avr_ack_nonce = getelementptr inbounds %struct.dccp_ackvec_record, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %avr_ack_nonce to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load2 = load i8, ptr %avr_ack_nonce, align 1
  %bf.shl4 = shl i8 %nonce_sum, 7
  %bf.clear5 = and i8 %bf.load2, 127
  %bf.set6 = or i8 %bf.clear5, %bf.shl4
  store i8 %bf.set6, ptr %avr_ack_nonce, align 1
  %conv = zext i16 %3 to i32
  %add.ptr = getelementptr i8, ptr %av, i32 %conv
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr, align 1
  %11 = and i8 %10, 63
  %avr_ack_runlen = getelementptr inbounds %struct.dccp_ackvec_record, ptr %call, i32 0, i32 4
  %12 = ptrtoint ptr %avr_ack_runlen to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %avr_ack_runlen, align 8
  %av_overflow = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 6
  %13 = ptrtoint ptr %av_overflow to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load9 = load i8, ptr %av_overflow, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load9)
  %tobool.not = icmp sgt i8 %bf.load9, -1
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %if.then11

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then11:                                        ; preds = %if.end
  %av_records.i = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 7
  %14 = ptrtoint ptr %av_records.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %av_records.i, align 4
  %cmp.not19.i = icmp eq ptr %15, %av_records.i
  br i1 %cmp.not19.i, label %if.then11.dccp_ackvec_purge_records.exit_crit_edge, label %if.then11.for.body.i_crit_edge

if.then11.for.body.i_crit_edge:                   ; preds = %if.then11
  br label %for.body.i

if.then11.dccp_ackvec_purge_records.exit_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %dccp_ackvec_purge_records.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then11.for.body.i_crit_edge
  %cur.020.i = phi ptr [ %next.0.i, %for.body.i.for.body.i_crit_edge ], [ %15, %if.then11.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %cur.020.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %next.0.i = load ptr, ptr %cur.020.i, align 8
  %17 = load ptr, ptr @dccp_ackvec_record_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %17, ptr noundef %cur.020.i) #7
  %cmp.not.i = icmp eq ptr %next.0.i, %av_records.i
  br i1 %cmp.not.i, label %for.body.i.dccp_ackvec_purge_records.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.dccp_ackvec_purge_records.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dccp_ackvec_purge_records.exit

dccp_ackvec_purge_records.exit:                   ; preds = %for.body.i.dccp_ackvec_purge_records.exit_crit_edge, %if.then11.dccp_ackvec_purge_records.exit_crit_edge
  %18 = ptrtoint ptr %av_records.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %av_records.i, ptr %av_records.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %av_records.i, ptr %prev.i.i, align 4
  br label %if.end12

if.end12:                                         ; preds = %dccp_ackvec_purge_records.exit, %if.end.if.end12_crit_edge
  %av_records = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 7
  %20 = ptrtoint ptr %av_records to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %av_records, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef %av_records, ptr noundef %21) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end12.list_add.exit_crit_edge

if.end12.list_add.exit_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call, ptr %prev1.i.i, align 4
  %23 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %call, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %av_records, ptr %prev3.i.i, align 4
  %25 = ptrtoint ptr %av_records to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %call, ptr %av_records, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end12.list_add.exit_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %26 = load i8, ptr @dccp_debug, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool13.not = icmp eq i8 %26, 0
  br i1 %tobool13.not, label %list_add.exit.cleanup_crit_edge, label %do.end

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %avr_ack_seqno to i32
  call void @__asan_load8_noabort(i32 %27)
  %bf.load17 = load i64, ptr %avr_ack_seqno, align 8
  %bf.lshr18 = lshr i64 %bf.load17, 16
  %28 = ptrtoint ptr %avr_ack_ackno to i32
  call void @__asan_loadN_noabort(i32 %28, i32 6)
  %bf.load20 = load i48, ptr %avr_ack_ackno, align 8
  %bf.cast = zext i48 %bf.load20 to i64
  %29 = ptrtoint ptr %avr_ack_runlen to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %avr_ack_runlen, align 8
  %conv22 = zext i8 %30 to i32
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef %bf.lshr18, i64 noundef %bf.cast, i32 noundef %conv22) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %list_add.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -105, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %list_add.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @dccp_ackvec_buflen(ptr nocapture noundef readonly %av) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %av_overflow = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 6
  %0 = ptrtoint ptr %av_overflow to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %av_overflow, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge, !prof !48

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %av_buf_tail = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 2
  %1 = ptrtoint ptr %av_buf_tail to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %av_buf_tail, align 4
  %av_buf_head = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 1
  %3 = ptrtoint ptr %av_buf_head to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %av_buf_head, align 2
  %sub.i = sub i16 506, %4
  %conv.i.i = zext i16 %2 to i32
  %conv1.i.i = zext i16 %sub.i to i32
  %add.i.i = add nuw nsw i32 %conv1.i.i, %conv.i.i
  %rem.i.i = urem i32 %add.i.i, 506
  %conv2.i.i = trunc i32 %rem.i.i to i16
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i16 [ %conv2.i.i, %if.end ], [ 506, %entry.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dccp_ackvec_input(ptr noundef %av, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dccpd_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %0 = ptrtoint ptr %dccpd_seq to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %dccpd_seq, align 8
  %av_overflow.i = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 6
  %2 = ptrtoint ptr %av_overflow.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %av_overflow.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %cmp.i = icmp sgt i8 %bf.load.i, -1
  br i1 %cmp.i, label %dccp_ackvec_is_empty.exit, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

dccp_ackvec_is_empty.exit:                        ; preds = %entry
  %av_buf_head.i = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 1
  %3 = ptrtoint ptr %av_buf_head.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %av_buf_head.i, align 2
  %av_buf_tail.i = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 2
  %5 = ptrtoint ptr %av_buf_tail.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %av_buf_tail.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %6)
  %cmp4.i = icmp eq i16 %4, %6
  br i1 %cmp4.i, label %dccp_ackvec_buflen.exit.i, label %dccp_ackvec_is_empty.exit.if.else_crit_edge

dccp_ackvec_is_empty.exit.if.else_crit_edge:      ; preds = %dccp_ackvec_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

dccp_ackvec_buflen.exit.i:                        ; preds = %dccp_ackvec_is_empty.exit
  %7 = ptrtoint ptr %av_buf_tail.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %av_buf_tail.i, align 4
  %9 = ptrtoint ptr %av_buf_head.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %av_buf_head.i, align 2
  %sub.i.i.i = sub i16 506, %10
  %conv.i.i.i.i = zext i16 %8 to i32
  %conv1.i.i.i.i = zext i16 %sub.i.i.i to i32
  %add.i.i.i.i = add nuw nsw i32 %conv1.i.i.i.i, %conv.i.i.i.i
  %rem.i.i.i.i = urem i32 %add.i.i.i.i, 506
  call void @__sanitizer_cov_trace_const_cmp4(i32 504, i32 %rem.i.i.i.i)
  %cmp19.i = icmp ugt i32 %rem.i.i.i.i, 504
  br i1 %cmp19.i, label %if.end27.i.thread, label %if.end27.i

if.end27.i.thread:                                ; preds = %dccp_ackvec_buflen.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef 228, ptr noundef nonnull @.str.8) #10
  %11 = ptrtoint ptr %av_overflow.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i46 = load i8, ptr %av_overflow.i, align 8
  %bf.set.i = or i8 %bf.load.i46, -128
  store i8 %bf.set.i, ptr %av_overflow.i, align 8
  %12 = ptrtoint ptr %av_buf_head.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %av_buf_head.i, align 2
  %conv.i.i1.i105 = zext i16 %13 to i32
  %add.i.i2.i106 = add nuw nsw i32 %conv.i.i1.i105, 505
  %rem.i.i3.i107 = urem i32 %add.i.i2.i106, 506
  %conv2.i.i4.i108 = trunc i32 %rem.i.i3.i107 to i16
  store i16 %conv2.i.i4.i108, ptr %av_buf_head.i, align 2
  br label %if.then35.i

if.end27.i:                                       ; preds = %dccp_ackvec_buflen.exit.i
  %14 = ptrtoint ptr %av_overflow.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load33.i.pr = load i8, ptr %av_overflow.i, align 8
  %15 = ptrtoint ptr %av_buf_head.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %av_buf_head.i, align 2
  %conv.i.i1.i = zext i16 %16 to i32
  %add.i.i2.i = add nuw nsw i32 %conv.i.i1.i, 505
  %rem.i.i3.i = urem i32 %add.i.i2.i, 506
  %conv2.i.i4.i = trunc i32 %rem.i.i3.i to i16
  store i16 %conv2.i.i4.i, ptr %av_buf_head.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load33.i.pr)
  %tobool34.not.i = icmp sgt i8 %bf.load33.i.pr, -1
  br i1 %tobool34.not.i, label %if.end27.i.dccp_ackvec_add_new.exit_crit_edge, label %if.end27.i.if.then35.i_crit_edge

if.end27.i.if.then35.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35.i

if.end27.i.dccp_ackvec_add_new.exit_crit_edge:    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dccp_ackvec_add_new.exit

if.then35.i:                                      ; preds = %if.end27.i.if.then35.i_crit_edge, %if.end27.i.thread
  %conv2.i.i4.i112 = phi i16 [ %conv2.i.i4.i108, %if.end27.i.thread ], [ %conv2.i.i4.i, %if.end27.i.if.then35.i_crit_edge ]
  %rem.i.i3.i110 = phi i32 [ %rem.i.i3.i107, %if.end27.i.thread ], [ %rem.i.i3.i, %if.end27.i.if.then35.i_crit_edge ]
  %17 = ptrtoint ptr %av_buf_tail.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv2.i.i4.i112, ptr %av_buf_tail.i, align 4
  br label %dccp_ackvec_add_new.exit

dccp_ackvec_add_new.exit:                         ; preds = %if.then35.i, %if.end27.i.dccp_ackvec_add_new.exit_crit_edge
  %rem.i.i3.i111 = phi i32 [ %rem.i.i3.i, %if.end27.i.dccp_ackvec_add_new.exit_crit_edge ], [ %rem.i.i3.i110, %if.then35.i ]
  %arrayidx42.i = getelementptr [506 x i8], ptr %av, i32 0, i32 %rem.i.i3.i111
  %18 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx42.i, align 1
  %av_buf_ackno.i = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 3
  %19 = ptrtoint ptr %av_buf_ackno.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %bf.load43.i = load i64, ptr %av_buf_ackno.i, align 8
  %bf.shl.i = shl i64 %1, 16
  %bf.clear44.i = and i64 %bf.load43.i, 65535
  %bf.set45.i = or i64 %bf.clear44.i, %bf.shl.i
  store i64 %bf.set45.i, ptr %av_buf_ackno.i, align 8
  %av_tail_ackno = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 4
  %20 = trunc i64 %1 to i48
  %21 = ptrtoint ptr %av_tail_ackno to i32
  call void @__asan_storeN_noabort(i32 %21, i32 6)
  store i48 %20, ptr %av_tail_ackno, align 8
  br label %if.end24

if.else:                                          ; preds = %dccp_ackvec_is_empty.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %av_buf_ackno = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 3
  %22 = ptrtoint ptr %av_buf_ackno to i32
  call void @__asan_load8_noabort(i32 %22)
  %bf.load = load i64, ptr %av_buf_ackno, align 8
  %bf.lshr = lshr i64 %bf.load, 16
  %add.i48 = sub i64 %1, %bf.lshr
  %and.i = and i64 %add.i48, 281474976710655
  call void @__sanitizer_cov_trace_const_cmp8(i64 140737488355328, i64 %and.i)
  %cmp.i49 = icmp ult i64 %and.i, 140737488355328
  %masksel.i = select i1 %cmp.i49, i64 0, i64 -281474976710656
  %cond.i = or i64 %masksel.i, %and.i
  %av_buf_head = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 1
  %23 = ptrtoint ptr %av_buf_head to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %av_buf_head, align 2
  %conv = zext i16 %24 to i32
  %add.ptr = getelementptr i8, ptr %av, i32 %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %cond.i)
  %cmp = icmp eq i64 %cond.i, 1
  br i1 %cmp, label %land.lhs.true, label %if.else17

land.lhs.true:                                    ; preds = %if.else
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %26)
  %cmp10 = icmp ult i8 %26, 63
  br i1 %cmp10, label %if.then12, label %land.lhs.true.if.end16.i_crit_edge

land.lhs.true.if.end16.i_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nuw nsw i8 %26, 1
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %add, ptr %add.ptr, align 1
  %28 = ptrtoint ptr %av_buf_ackno to i32
  call void @__asan_load8_noabort(i32 %28)
  %bf.load16 = load i64, ptr %av_buf_ackno, align 8
  %bf.shl = shl i64 %1, 16
  %bf.clear = and i64 %bf.load16, 65535
  %bf.set = or i64 %bf.clear, %bf.shl
  store i64 %bf.set, ptr %av_buf_ackno, align 8
  br label %if.end24

if.else17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i)
  %cmp18 = icmp sgt i64 %cond.i, 0
  br i1 %cmp18, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.else17
  %conv21 = trunc i64 %add.i48 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %conv21)
  %cmp.i50 = icmp ugt i32 %conv21, 63
  br i1 %cmp.i50, label %if.then.i, label %if.then20.if.end16.i_crit_edge

if.then20.if.end16.i_crit_edge:                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.then.i:                                        ; preds = %if.then20
  %sub.i = add i32 %conv21, -1
  %call.i = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.for.body.lr.ph.i_crit_edge, label %do.end.i

if.then.i.for.body.lr.ph.i_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %sub.i) #10
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %do.end.i, %if.then.i.for.body.lr.ph.i_crit_edge
  %29 = ptrtoint ptr %av_buf_head to i32
  call void @__asan_load2_noabort(i32 %29)
  %av_buf_head.promoted.i = load i16, ptr %av_buf_head, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %conv2.i.i16.i = phi i16 [ %av_buf_head.promoted.i, %for.body.lr.ph.i ], [ %conv2.i.i.i, %for.body.i.for.body.i_crit_edge ]
  %num_cells.015.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %lost_packets.014.i = phi i32 [ %sub.i, %for.body.lr.ph.i ], [ %sub15.i, %for.body.i.for.body.i_crit_edge ]
  %30 = tail call i32 @llvm.umin.i32(i32 %lost_packets.014.i, i32 63) #7
  %conv.i.i.i = zext i16 %conv2.i.i16.i to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 505
  %rem.i.i.i = urem i32 %add.i.i.i, 506
  %conv2.i.i.i = trunc i32 %rem.i.i.i to i16
  %31 = trunc i32 %30 to i8
  %conv12.i = or i8 %31, -64
  %arrayidx.i = getelementptr [506 x i8], ptr %av, i32 0, i32 %rem.i.i.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv12.i, ptr %arrayidx.i, align 1
  %sub15.i = sub i32 %lost_packets.014.i, %30
  %inc.i = add i32 %num_cells.015.i, 1
  %tobool6.not.i = icmp eq i32 %sub15.i, 0
  br i1 %tobool6.not.i, label %for.cond.if.end16.loopexit_crit_edge.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.if.end16.loopexit_crit_edge.i:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv2.i.i.i.le = trunc i32 %rem.i.i.i to i16
  %33 = ptrtoint ptr %av_buf_head to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv2.i.i.i.le, ptr %av_buf_head, align 2
  br label %if.end16.i

if.end16.i:                                       ; preds = %for.cond.if.end16.loopexit_crit_edge.i, %if.then20.if.end16.i_crit_edge, %land.lhs.true.if.end16.i_crit_edge
  %num_cells.1.i = phi i32 [ %conv21, %if.then20.if.end16.i_crit_edge ], [ %inc.i, %for.cond.if.end16.loopexit_crit_edge.i ], [ 1, %land.lhs.true.if.end16.i_crit_edge ]
  %num_packets.addr.0.i = phi i32 [ %conv21, %if.then20.if.end16.i_crit_edge ], [ 1, %for.cond.if.end16.loopexit_crit_edge.i ], [ 1, %land.lhs.true.if.end16.i_crit_edge ]
  %34 = ptrtoint ptr %av_overflow.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i.i53 = load i8, ptr %av_overflow.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i53)
  %tobool.not.i.i54 = icmp sgt i8 %bf.load.i.i53, -1
  br i1 %tobool.not.i.i54, label %if.end.i.i62, label %if.end16.i.dccp_ackvec_buflen.exit.i66_crit_edge, !prof !48

if.end16.i.dccp_ackvec_buflen.exit.i66_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dccp_ackvec_buflen.exit.i66

if.end.i.i62:                                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %av_buf_tail.i.i55 = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 2
  %35 = ptrtoint ptr %av_buf_tail.i.i55 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %av_buf_tail.i.i55, align 4
  %37 = ptrtoint ptr %av_buf_head to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %av_buf_head, align 2
  %sub.i.i.i57 = sub i16 506, %38
  %conv.i.i.i.i58 = zext i16 %36 to i32
  %conv1.i.i.i.i59 = zext i16 %sub.i.i.i57 to i32
  %add.i.i.i.i60 = add nuw nsw i32 %conv1.i.i.i.i59, %conv.i.i.i.i58
  %rem.i.i.i.i61 = urem i32 %add.i.i.i.i60, 506
  br label %dccp_ackvec_buflen.exit.i66

dccp_ackvec_buflen.exit.i66:                      ; preds = %if.end.i.i62, %if.end16.i.dccp_ackvec_buflen.exit.i66_crit_edge
  %retval.0.i.i63 = phi i32 [ %rem.i.i.i.i61, %if.end.i.i62 ], [ 506, %if.end16.i.dccp_ackvec_buflen.exit.i66_crit_edge ]
  %add.i64 = add i32 %retval.0.i.i63, %num_cells.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 505, i32 %add.i64)
  %cmp19.i65 = icmp ugt i32 %add.i64, 505
  br i1 %cmp19.i65, label %do.end24.i70, label %dccp_ackvec_buflen.exit.i66.if.end27.i78_crit_edge

dccp_ackvec_buflen.exit.i66.if.end27.i78_crit_edge: ; preds = %dccp_ackvec_buflen.exit.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i78

do.end24.i70:                                     ; preds = %dccp_ackvec_buflen.exit.i66
  call void @__sanitizer_cov_trace_pc() #9
  %call26.i67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef 228, ptr noundef nonnull @.str.8) #10
  %39 = ptrtoint ptr %av_overflow.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i68 = load i8, ptr %av_overflow.i, align 8
  %bf.set.i69 = or i8 %bf.load.i68, -128
  store i8 %bf.set.i69, ptr %av_overflow.i, align 8
  br label %if.end27.i78

if.end27.i78:                                     ; preds = %do.end24.i70, %dccp_ackvec_buflen.exit.i66.if.end27.i78_crit_edge
  %40 = ptrtoint ptr %av_buf_head to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %av_buf_head, align 2
  %conv29.i = trunc i32 %num_packets.addr.0.i to i16
  %sub.i.i = sub nuw nsw i32 506, %num_packets.addr.0.i
  %conv.i.i1.i72 = zext i16 %41 to i32
  %add.i.i2.i73 = add nuw nsw i32 %sub.i.i, %conv.i.i1.i72
  %rem.i.i3.i74 = urem i32 %add.i.i2.i73, 506
  %conv2.i.i4.i75 = trunc i32 %rem.i.i3.i74 to i16
  store i16 %conv2.i.i4.i75, ptr %av_buf_head, align 2
  %42 = ptrtoint ptr %av_overflow.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load33.i76 = load i8, ptr %av_overflow.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load33.i76)
  %tobool34.not.i77 = icmp sgt i8 %bf.load33.i76, -1
  br i1 %tobool34.not.i77, label %if.end27.i78.if.end37.i_crit_edge, label %if.then35.i80

if.end27.i78.if.end37.i_crit_edge:                ; preds = %if.end27.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

if.then35.i80:                                    ; preds = %if.end27.i78
  call void @__sanitizer_cov_trace_pc() #9
  %av_buf_tail.i79 = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 2
  %43 = ptrtoint ptr %av_buf_tail.i79 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv2.i.i4.i75, ptr %av_buf_tail.i79, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then35.i80, %if.end27.i78.if.end37.i_crit_edge
  %arrayidx42.i81 = getelementptr [506 x i8], ptr %av, i32 0, i32 %rem.i.i3.i74
  %44 = ptrtoint ptr %arrayidx42.i81 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %arrayidx42.i81, align 1
  %45 = ptrtoint ptr %av_buf_ackno to i32
  call void @__asan_load8_noabort(i32 %45)
  %bf.load43.i83 = load i64, ptr %av_buf_ackno, align 8
  %bf.shl.i84 = shl i64 %1, 16
  %bf.clear44.i85 = and i64 %bf.load43.i83, 65535
  %bf.set45.i86 = or i64 %bf.clear44.i85, %bf.shl.i84
  store i64 %bf.set45.i86, ptr %av_buf_ackno, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_packets.addr.0.i)
  %cmp46.i = icmp ugt i32 %num_packets.addr.0.i, 1
  br i1 %cmp46.i, label %if.then48.i, label %if.end37.i.if.end24_crit_edge

if.end37.i.if.end24_crit_edge:                    ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then48.i:                                      ; preds = %if.end37.i
  %conv50.i = add nsw i16 %conv29.i, -1
  %rem.i.i8.i.lhs.trunc = add nuw nsw i16 %conv2.i.i4.i75, 1
  %rem.i.i8.i99 = urem i16 %rem.i.i8.i.lhs.trunc, 506
  %rem.i.i8.i.zext = zext i16 %rem.i.i8.i99 to i32
  %sub.i10.i = sub nuw nsw i16 506, %rem.i.i8.i99
  call void @__sanitizer_cov_trace_cmp2(i16 %conv50.i, i16 %sub.i10.i)
  %cmp.i.i = icmp ugt i16 %conv50.i, %sub.i10.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then48.i.if.end.i12.i_crit_edge

if.then48.i.if.end.i12.i_crit_edge:               ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i12.i

if.then.i.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i.i = zext i16 %sub.i10.i to i32
  %add.ptr.i.i = getelementptr i8, ptr %av, i32 %rem.i.i8.i.zext
  %46 = call ptr @memset(ptr %add.ptr.i.i, i32 192, i32 %conv3.i.i)
  %sub9.i.i = sub nsw i16 %conv50.i, %sub.i10.i
  br label %if.end.i12.i

if.end.i12.i:                                     ; preds = %if.then.i.i, %if.then48.i.if.end.i12.i_crit_edge
  %num.addr.0.i.i = phi i16 [ %sub9.i.i, %if.then.i.i ], [ %conv50.i, %if.then48.i.if.end.i12.i_crit_edge ]
  %start.0.i.i = phi i32 [ 0, %if.then.i.i ], [ %rem.i.i8.i.zext, %if.then48.i.if.end.i12.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %num.addr.0.i.i)
  %tobool.not.i11.i = icmp eq i16 %num.addr.0.i.i, 0
  br i1 %tobool.not.i11.i, label %if.end.i12.i.if.end24_crit_edge, label %if.then11.i.i

if.end.i12.i.if.end24_crit_edge:                  ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then11.i.i:                                    ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr15.i.i = getelementptr i8, ptr %av, i32 %start.0.i.i
  %conv16.i.i = zext i16 %num.addr.0.i.i to i32
  %47 = call ptr @memset(ptr %add.ptr15.i.i, i32 192, i32 %conv16.i.i)
  br label %if.end24

if.else22:                                        ; preds = %if.else17
  br i1 %cmp.i, label %land.rhs.i.i, label %if.else22.do.body16.preheader.i_crit_edge

if.else22.do.body16.preheader.i_crit_edge:        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16.preheader.i

land.rhs.i.i:                                     ; preds = %if.else22
  %av_buf_tail.i.i92 = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 2
  %48 = ptrtoint ptr %av_buf_tail.i.i92 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %av_buf_tail.i.i92, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %49)
  %cmp4.i.i = icmp eq i16 %24, %49
  br i1 %cmp4.i.i, label %land.rhs.i.i.if.end24_crit_edge, label %land.rhs.i.i.do.body16.preheader.i_crit_edge, !prof !46

land.rhs.i.i.do.body16.preheader.i_crit_edge:     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16.preheader.i

land.rhs.i.i.if.end24_crit_edge:                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

do.body16.preheader.i:                            ; preds = %land.rhs.i.i.do.body16.preheader.i_crit_edge, %if.else22.do.body16.preheader.i_crit_edge
  %av_buf_tail.i93 = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 2
  br label %do.body16.i

do.body16.i:                                      ; preds = %do.cond48.i.do.body16.i_crit_edge, %do.body16.preheader.i
  %ptr.0.i = phi i16 [ %conv2.i.i, %do.cond48.i.do.body16.i_crit_edge ], [ %24, %do.body16.preheader.i ]
  %distance.addr.0.i = phi i64 [ %add46.i, %do.cond48.i.do.body16.i_crit_edge ], [ %cond.i, %do.body16.preheader.i ]
  %conv.i = zext i16 %ptr.0.i to i32
  %add.ptr.i = getelementptr i8, ptr %av, i32 %conv.i
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %add.ptr.i, align 1
  %52 = and i8 %51, 63
  %conv18.i = zext i8 %52 to i64
  %add.i94 = add i64 %distance.addr.0.i, %conv18.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %add.i94)
  %cmp19.i95 = icmp sgt i64 %add.i94, -1
  br i1 %cmp19.i95, label %if.then21.i, label %do.cond48.i

if.then21.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %51)
  %cmp24.i = icmp eq i8 %51, -64
  br i1 %cmp24.i, label %if.then26.i, label %do.body31.i

if.then26.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.le = getelementptr i8, ptr %av, i32 %conv.i
  %53 = ptrtoint ptr %add.ptr.i.le to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %add.ptr.i.le, align 1
  br label %if.end24

do.body31.i:                                      ; preds = %if.then21.i
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %54 = load i8, ptr @dccp_debug, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool32.not.i = icmp eq i8 %54, 0
  br i1 %tobool32.not.i, label %do.body31.i.if.end24_crit_edge, label %do.end36.i

do.body31.i.if.end24_crit_edge:                   ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

do.end36.i:                                       ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #9
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i64 noundef %1, i32 noundef 0) #10
  br label %if.end24

do.cond48.i:                                      ; preds = %do.body16.i
  %narrow.i = add nuw nsw i8 %52, 1
  %55 = zext i8 %narrow.i to i64
  %add46.i = add i64 %distance.addr.0.i, %55
  %add.i.i = add nuw nsw i32 %conv.i, 1
  %rem.i.i = urem i32 %add.i.i, 506
  %conv2.i.i = trunc i32 %rem.i.i to i16
  %56 = ptrtoint ptr %av_buf_tail.i93 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %av_buf_tail.i93, align 4
  %cmp51.not.i = icmp eq i16 %57, %conv2.i.i
  br i1 %cmp51.not.i, label %do.cond48.i.if.end24_crit_edge, label %do.cond48.i.do.body16.i_crit_edge

do.cond48.i.do.body16.i_crit_edge:                ; preds = %do.cond48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16.i

do.cond48.i.if.end24_crit_edge:                   ; preds = %do.cond48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end24:                                         ; preds = %do.cond48.i.if.end24_crit_edge, %do.end36.i, %do.body31.i.if.end24_crit_edge, %if.then26.i, %land.rhs.i.i.if.end24_crit_edge, %if.then11.i.i, %if.end.i12.i.if.end24_crit_edge, %if.end37.i.if.end24_crit_edge, %if.then12, %dccp_ackvec_add_new.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dccp_ackvec_clear_state(ptr noundef %av, i64 noundef %ackno) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %av_records = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 7
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %entry
  %av_list.pn.i = phi ptr [ %av_records, %entry ], [ %avr.0.i, %if.end.i.for.cond.i_crit_edge ]
  %avr.0.in.i = getelementptr inbounds %struct.list_head, ptr %av_list.pn.i, i32 0, i32 1
  %0 = ptrtoint ptr %avr.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %avr.0.i = load ptr, ptr %avr.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %avr.0.i, %av_records
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %avr_ack_seqno.i = getelementptr inbounds %struct.dccp_ackvec_record, ptr %avr.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %avr_ack_seqno.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %bf.load.i = load i64, ptr %avr_ack_seqno.i, align 8
  %bf.lshr.i = lshr i64 %bf.load.i, 16
  call void @__sanitizer_cov_trace_cmp8(i64 %bf.lshr.i, i64 %ackno)
  %cmp1.i = icmp eq i64 %bf.lshr.i, %ackno
  br i1 %cmp1.i, label %dccp_ackvec_lookup.exit, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %2 = sub i64 %bf.lshr.i, %ackno
  %sub.i.i = shl i64 %2, 16
  %cmp.i.i = icmp slt i64 %sub.i.i, 1
  br i1 %cmp.i.i, label %if.end.i.for.cond.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

dccp_ackvec_lookup.exit:                          ; preds = %for.body.i
  %cmp = icmp eq ptr %avr.0.i, null
  br i1 %cmp, label %dccp_ackvec_lookup.exit.cleanup_crit_edge, label %if.end

dccp_ackvec_lookup.exit.cleanup_crit_edge:        ; preds = %dccp_ackvec_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %dccp_ackvec_lookup.exit
  %av_tail_ackno = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 4
  %3 = ptrtoint ptr %av_tail_ackno to i32
  call void @__asan_loadN_noabort(i32 %3, i32 6)
  %bf.load = load i48, ptr %av_tail_ackno, align 8
  %bf.cast = zext i48 %bf.load to i64
  %avr_ack_ackno = getelementptr inbounds %struct.dccp_ackvec_record, ptr %avr.0.i, i32 0, i32 2
  %4 = ptrtoint ptr %avr_ack_ackno to i32
  call void @__asan_loadN_noabort(i32 %4, i32 6)
  %bf.load1 = load i48, ptr %avr_ack_ackno, align 8
  %bf.cast2 = zext i48 %bf.load1 to i64
  %add.i = sub nsw i64 %bf.cast2, %bf.cast
  %and.i = and i64 %add.i, 281474976710655
  call void @__sanitizer_cov_trace_const_cmp8(i64 140737488355328, i64 %and.i)
  %cmp.i = icmp ult i64 %and.i, 140737488355328
  %masksel.i = select i1 %cmp.i, i64 0, i64 -281474976710656
  %cond.i = or i64 %masksel.i, %and.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i)
  %cmp4 = icmp slt i64 %cond.i, 0
  br i1 %cmp4, label %if.end.for.body.preheader_crit_edge, label %if.end6

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.end6:                                          ; preds = %if.end
  %avr_ack_runlen = getelementptr inbounds %struct.dccp_ackvec_record, ptr %avr.0.i, i32 0, i32 4
  %5 = ptrtoint ptr %avr_ack_runlen to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %avr_ack_runlen, align 8
  %conv = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %cond.i, i64 %conv)
  %cmp7 = icmp ult i64 %cond.i, %conv
  %extract.t = trunc i64 %add.i to i8
  %cond.off0 = select i1 %cmp7, i8 %extract.t, i8 %6
  %avr_ack_ptr = getelementptr inbounds %struct.dccp_ackvec_record, ptr %avr.0.i, i32 0, i32 3
  %7 = ptrtoint ptr %avr_ack_ptr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %avr_ack_ptr, align 2
  %conv12 = zext i16 %8 to i32
  %add.ptr = getelementptr i8, ptr %av, i32 %conv12
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr, align 1
  %11 = and i8 %10, 63
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %cond.off0)
  %cmp16 = icmp ugt i8 %11, %cond.off0
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end6
  %add.neg = xor i8 %cond.off0, -1
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr, align 1
  %sub = add i8 %13, %add.neg
  store i8 %sub, ptr %add.ptr, align 1
  %14 = ptrtoint ptr %avr_ack_ptr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %avr_ack_ptr, align 2
  %conv.i = zext i16 %15 to i32
  %add.i94 = add nuw nsw i32 %conv.i, 1
  %rem.i = urem i32 %add.i94, 506
  %conv2.i = trunc i32 %rem.i to i16
  %av_buf_tail = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 2
  %16 = ptrtoint ptr %av_buf_tail to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv2.i, ptr %av_buf_tail, align 4
  %av_overflow = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 6
  %17 = ptrtoint ptr %av_overflow to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load26 = load i8, ptr %av_overflow, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load26)
  %tobool.not = icmp sgt i8 %bf.load26, -1
  br i1 %tobool.not, label %if.then18.if.end43_crit_edge, label %if.then27

if.then18.if.end43_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then27:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %av_buf_head = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 1
  %18 = ptrtoint ptr %av_buf_head to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %av_buf_head, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %conv2.i)
  %cmp31 = icmp eq i16 %19, %conv2.i
  %bf.shl = select i1 %cmp31, i8 -128, i8 0
  %bf.clear = and i8 %bf.load26, 127
  %bf.set = or i8 %bf.shl, %bf.clear
  %20 = ptrtoint ptr %av_overflow to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %bf.set, ptr %av_overflow, align 8
  br label %if.end43

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %av_buf_tail38 = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 2
  %21 = ptrtoint ptr %av_buf_tail38 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %8, ptr %av_buf_tail38, align 4
  %av_overflow39 = getelementptr inbounds %struct.dccp_ackvec, ptr %av, i32 0, i32 6
  %22 = ptrtoint ptr %av_overflow39 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load40 = load i8, ptr %av_overflow39, align 8
  %bf.clear41 = and i8 %bf.load40, 127
  store i8 %bf.clear41, ptr %av_overflow39, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then27, %if.then18.if.end43_crit_edge
  %23 = ptrtoint ptr %avr_ack_ackno to i32
  call void @__asan_loadN_noabort(i32 %23, i32 6)
  %bf.load45 = load i48, ptr %avr_ack_ackno, align 8
  %24 = add i48 %bf.load45, 1
  %25 = ptrtoint ptr %av_tail_ackno to i32
  call void @__asan_storeN_noabort(i32 %25, i32 6)
  store i48 %24, ptr %av_tail_ackno, align 8
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end43, %if.end.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.preheader
  %avr.0100 = phi ptr [ %next.0, %list_del.exit.for.body_crit_edge ], [ %avr.0.i, %for.body.preheader ]
  %26 = ptrtoint ptr %avr.0100 to i32
  call void @__asan_load4_noabort(i32 %26)
  %next.0 = load ptr, ptr %avr.0100, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %avr.0100) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %avr.0100, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %avr.0100 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %avr.0100, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %33 = ptrtoint ptr %avr.0100 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %avr.0100, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %avr.0100, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %35 = load ptr, ptr @dccp_ackvec_record_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %35, ptr noundef %avr.0100) #7
  %cmp53.not = icmp eq ptr %next.0, %av_records
  br i1 %cmp53.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.cleanup_crit_edge, %dccp_ackvec_lookup.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dccp_ackvec_parsed_add(ptr noundef %head, ptr noundef %vec, i8 noundef zeroext %len, i8 noundef zeroext %nonce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 16) #11
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %vec, ptr %call7.i, align 8
  %len2 = getelementptr inbounds %struct.dccp_ackvec_parsed, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %len2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %len, ptr %len2, align 4
  %nonce3 = getelementptr inbounds %struct.dccp_ackvec_parsed, ptr %call7.i, i32 0, i32 2
  %3 = ptrtoint ptr %nonce3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %nonce3, align 1
  %bf.shl = shl i8 %nonce, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %nonce3, align 1
  %node = getelementptr inbounds %struct.dccp_ackvec_parsed, ptr %call7.i, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %5, ptr noundef %head) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %node, ptr %prev.i, align 4
  %7 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %head, ptr %node, align 8
  %prev3.i.i = getelementptr inbounds %struct.dccp_ackvec_parsed, ptr %call7.i, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %node, ptr %5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -105, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dccp_ackvec_parsed_cleanup(ptr noundef %parsed_chunks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parsed_chunks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parsed_chunks, align 4
  %cmp.not18 = icmp eq ptr %1, %parsed_chunks
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in19 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %cur.0 = getelementptr i8, ptr %.pn.in19, i32 -8
  %2 = ptrtoint ptr %.pn.in19 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in19, align 4
  tail call void @kfree(ptr noundef %cur.0) #7
  %cmp.not = icmp eq ptr %.pn, %parsed_chunks
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %3 = ptrtoint ptr %parsed_chunks to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %parsed_chunks, ptr %parsed_chunks, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %parsed_chunks, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %parsed_chunks, ptr %prev.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dccp_ackvec_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.3, i32 noundef 544, i32 noundef 0, i32 noundef 8192, ptr noundef null) #7
  store ptr %call, ptr @dccp_ackvec_slab, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.4, i32 noundef 32, i32 noundef 0, i32 noundef 8192, ptr noundef null) #7
  store ptr %call1, ptr @dccp_ackvec_record_slab, align 4
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %out_destroy_slab, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

out_destroy_slab:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @dccp_ackvec_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #7
  store ptr null, ptr @dccp_ackvec_slab, align 4
  br label %do.end

do.end:                                           ; preds = %out_destroy_slab, %entry.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef 397, ptr noundef nonnull @.str.6) #10
  br label %return

return:                                           ; preds = %do.end, %if.end.return_crit_edge
  %retval.0 = phi i32 [ -105, %do.end ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dccp_ackvec_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dccp_ackvec_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #7
  store ptr null, ptr @dccp_ackvec_slab, align 4
  %1 = load ptr, ptr @dccp_ackvec_record_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #7
  store ptr null, ptr @dccp_ackvec_record_slab, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !21, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/dccp/ackvec.c", i32 78, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dccp_ackvec_update_records._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dccp_ackvec_update_records._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_dccp_ackvec_parsed_add, !7, !"__ksymtab_dccp_ackvec_parsed_add", i1 false, i1 false}
!7 = !{!"../net/dccp/ackvec.c", i32 365, i32 1}
!8 = !{ptr @__ksymtab_dccp_ackvec_parsed_cleanup, !9, !"__ksymtab_dccp_ackvec_parsed_cleanup", i1 false, i1 false}
!9 = !{!"../net/dccp/ackvec.c", i32 375, i32 1}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/dccp/ackvec.c", i32 379, i32 39}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/dccp/ackvec.c", i32 385, i32 46}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/dccp/ackvec.c", i32 397, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @dccp_ackvec_init._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @dccp_ackvec_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @dccp_ackvec_slab, !20, !"dccp_ackvec_slab", i1 false, i1 false}
!20 = !{!"../net/dccp/ackvec.c", i32 14, i32 27}
!21 = !{ptr @dccp_ackvec_record_slab, !22, !"dccp_ackvec_record_slab", i1 false, i1 false}
!22 = !{!"../net/dccp/ackvec.c", i32 15, i32 27}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/dccp/ackvec.c", i32 204, i32 3}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @dccp_ackvec_add_new._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @dccp_ackvec_add_new._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/dccp/ackvec.c", i32 228, i32 3}
!30 = !{ptr @dccp_ackvec_add_new._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @dccp_ackvec_add_new._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/dccp/ackvec.c", i32 162, i32 5}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @dccp_ackvec_update_old._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @dccp_ackvec_update_old._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{i8 0, i8 2}
!48 = !{!"branch_weights", i32 2000, i32 1}
