; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vidtv/vidtv_channel.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vidtv/vidtv_channel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vidtv_channel = type { ptr, i16, ptr, i16, ptr, ptr, ptr, ptr, ptr }
%struct.vidtv_psi_table_sdt_service = type <{ i16, i8, i16, ptr, ptr }>
%struct.vidtv_psi_table_pmt_stream = type <{ i8, i16, i16, ptr, ptr }>
%struct.vidtv_psi_table_eit_event = type { i16, [5 x i8], [3 x i8], i16, ptr, ptr }
%struct.vidtv_mux = type { ptr, ptr, %struct.vidtv_mux_timing, i32, [8 x %struct.hlist_head], ptr, ptr, i32, i32, ptr, %struct.vidtv_mux_si, i64, i64, %struct.work_struct, i8, i16, i16, i16, ptr, ptr }
%struct.vidtv_mux_timing = type { i64, i64, i64, i64, i64, i64 }
%struct.hlist_head = type { ptr }
%struct.vidtv_mux_si = type { ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.vidtv_psi_table_pat_program = type { i16, i16, ptr }
%struct.vidtv_psi_desc = type <{ ptr, i8, i8, [0 x i8] }>
%struct.vidtv_psi_desc_service_list_entry = type <{ i16, i8, ptr }>
%struct.vidtv_psi_desc_service = type <{ ptr, i8, i8, i8, i8, ptr, i8, ptr }>
%struct.vidtv_psi_table_pat = type { %struct.vidtv_psi_table_header, i16, i16, ptr }
%struct.vidtv_psi_table_header = type <{ i8, i16, i16, i8, i8, i8 }>
%struct.vidtv_encoder = type { i32, ptr, ptr, i32, i32, i64, ptr, ptr, i32, i32, i8, ptr, i16, i16, ptr, ptr, ptr, i32, ptr, ptr, ptr }

@.str = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"\0BBagatelle No. 25 in A minor for solo piano, also known as F\FCr Elise, composed by Ludwig van Beethoven\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\0BLudwig van Beethoven: F\FCr Elise\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\0Beng\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\0BLinuxTV.org\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\0BBeethoven\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vidtv_channel_pat_prog_cat_into_new._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vidtv_channel_pat_prog_cat_into_new = private unnamed_addr constant [36 x i8] c"vidtv_channel_pat_prog_cat_into_new\00", align 1
@vidtv_channel_pat_prog_cat_into_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.vidtv_channel_pat_prog_cat_into_new, ptr @.str.7, i32 279, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No programs found for channel %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/media/test-drivers/vidtv/vidtv_channel.c\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vidtv_channel_pat_prog_cat_into_new._entry_ptr = internal global ptr @vidtv_channel_pat_prog_cat_into_new._entry, section ".printk_index", align 4
@vidtv_channel_sdt_serv_cat_into_new._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vidtv_channel_sdt_serv_cat_into_new = private unnamed_addr constant [36 x i8] c"vidtv_channel_sdt_serv_cat_into_new\00", align 1
@vidtv_channel_sdt_serv_cat_into_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.vidtv_channel_sdt_serv_cat_into_new, ptr @.str.7, i32 225, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No services found for channel %s\0A\00", [62 x i8] zeroinitializer }, align 32
@vidtv_channel_sdt_serv_cat_into_new._entry_ptr = internal global ptr @vidtv_channel_sdt_serv_cat_into_new._entry, section ".printk_index", align 4
@vidtv_channel_eit_event_cat_into_new._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vidtv_channel_eit_event_cat_into_new = private unnamed_addr constant [37 x i8] c"vidtv_channel_eit_event_cat_into_new\00", align 1
@vidtv_channel_eit_event_cat_into_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @__func__.vidtv_channel_eit_event_cat_into_new, ptr @.str.7, i32 178, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No events found for channel %s\0A\00", [32 x i8] zeroinitializer }, align 32
@vidtv_channel_eit_event_cat_into_new._entry_ptr = internal global ptr @vidtv_channel_eit_event_cat_into_new._entry, section ".printk_index", align 4
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 57, i32 21 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 58, i32 21 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 60, i32 28 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 61, i32 19 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 62, i32 15 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 277, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 223, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [52 x i8] c"../drivers/media/test-drivers/vidtv/vidtv_channel.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 176, i32 4 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @vidtv_channel_eit_event_cat_into_new._entry, ptr @vidtv_channel_eit_event_cat_into_new._entry_ptr, ptr @vidtv_channel_pat_prog_cat_into_new._entry, ptr @vidtv_channel_pat_prog_cat_into_new._entry_ptr, ptr @vidtv_channel_sdt_serv_cat_into_new._entry, ptr @vidtv_channel_sdt_serv_cat_into_new._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @vidtv_channel_pat_prog_cat_into_new._rs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @vidtv_channel_sdt_serv_cat_into_new._rs, ptr @.str.10, ptr @vidtv_channel_eit_event_cat_into_new._rs, ptr @.str.11], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_channel_pat_prog_cat_into_new._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_channel_pat_prog_cat_into_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_channel_sdt_serv_cat_into_new._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_channel_sdt_serv_cat_into_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_channel_eit_event_cat_into_new._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_channel_eit_event_cat_into_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vidtv_channel_s302m_init(ptr noundef %head, i16 noundef zeroext %transport_stream_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call noalias ptr @kstrdup(ptr noundef nonnull @.str.4, i32 noundef 3264) #4
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %call7.i.i, align 8
  %tobool4.not = icmp eq ptr %call1, null
  br i1 %tobool4.not, label %if.end.free_s302m_crit_edge, label %if.end6

if.end.free_s302m_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_s302m

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @vidtv_psi_sdt_service_init(ptr noundef null, i16 noundef zeroext 2176, i1 noundef zeroext false, i1 noundef zeroext true) #4
  %service = getelementptr inbounds %struct.vidtv_channel, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %service to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %service, align 8
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.end6.free_name_crit_edge, label %if.end11

if.end6.free_name_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_name

if.end11:                                         ; preds = %if.end6
  %call12 = tail call ptr @vidtv_psi_service_desc_init(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3) #4
  %3 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %service, align 8
  %descriptor = getelementptr inbounds %struct.vidtv_psi_table_sdt_service, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %descriptor to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store ptr %call12, ptr %descriptor, align 1
  %6 = load ptr, ptr %service, align 8
  %descriptor15 = getelementptr inbounds %struct.vidtv_psi_table_sdt_service, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %descriptor15 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load ptr, ptr %descriptor15, align 1
  %tobool16.not = icmp eq ptr %8, null
  br i1 %tobool16.not, label %if.end11.free_service_crit_edge, label %if.end18

if.end11.free_service_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_service

if.end18:                                         ; preds = %if.end11
  %transport_stream_id19 = getelementptr inbounds %struct.vidtv_channel, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %transport_stream_id19 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %transport_stream_id, ptr %transport_stream_id19, align 4
  %call20 = tail call ptr @vidtv_psi_pat_program_init(ptr noundef null, i16 noundef zeroext 2176, i16 noundef zeroext 257) #4
  %program = getelementptr inbounds %struct.vidtv_channel, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %program to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call20, ptr %program, align 8
  %tobool22.not = icmp eq ptr %call20, null
  br i1 %tobool22.not, label %if.end18.free_service_crit_edge, label %if.end24

if.end18.free_service_crit_edge:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_service

if.end24:                                         ; preds = %if.end18
  %program_num = getelementptr inbounds %struct.vidtv_channel, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %program_num to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2176, ptr %program_num, align 4
  %call25 = tail call ptr @vidtv_psi_pmt_stream_init(ptr noundef null, i32 noundef 6, i16 noundef zeroext 273) #4
  %streams = getelementptr inbounds %struct.vidtv_channel, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %streams to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call25, ptr %streams, align 4
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %if.end24.free_program_crit_edge, label %if.end29

if.end24.free_program_crit_edge:                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_program

if.end29:                                         ; preds = %if.end24
  %call30 = tail call ptr @vidtv_psi_registration_desc_init(ptr noundef null, i32 noundef 1112757060, ptr noundef null, i32 noundef 0) #4
  %13 = ptrtoint ptr %streams to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %streams, align 4
  %descriptor32 = getelementptr inbounds %struct.vidtv_psi_table_pmt_stream, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %descriptor32 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store ptr %call30, ptr %descriptor32, align 1
  %16 = load ptr, ptr %streams, align 4
  %descriptor34 = getelementptr inbounds %struct.vidtv_psi_table_pmt_stream, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %descriptor34 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load ptr, ptr %descriptor34, align 1
  %tobool35.not = icmp eq ptr %18, null
  br i1 %tobool35.not, label %if.end29.free_streams_crit_edge, label %if.end37

if.end29.free_streams_crit_edge:                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_streams

if.end37:                                         ; preds = %if.end29
  %call38 = tail call ptr @vidtv_s302m_encoder_init([7 x i32] [i32 0, i32 0, i32 0, i32 17891328, i32 0, i32 0, i32 0]) #4
  %encoders = getelementptr inbounds %struct.vidtv_channel, ptr %call7.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %encoders to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call38, ptr %encoders, align 8
  %tobool40.not = icmp eq ptr %call38, null
  br i1 %tobool40.not, label %if.end37.free_streams_crit_edge, label %if.end42

if.end37.free_streams_crit_edge:                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_streams

if.end42:                                         ; preds = %if.end37
  %call43 = tail call ptr @vidtv_psi_eit_event_init(ptr noundef null, i16 noundef zeroext 1) #4
  %events = getelementptr inbounds %struct.vidtv_channel, ptr %call7.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %events to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call43, ptr %events, align 4
  %tobool45.not = icmp eq ptr %call43, null
  br i1 %tobool45.not, label %if.end42.free_encoders_crit_edge, label %if.end47

if.end42.free_encoders_crit_edge:                 ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_encoders

if.end47:                                         ; preds = %if.end42
  %call48 = tail call ptr @vidtv_psi_short_event_desc_init(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str) #4
  %21 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %events, align 4
  %descriptor50 = getelementptr inbounds %struct.vidtv_psi_table_eit_event, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %descriptor50 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store ptr %call48, ptr %descriptor50, align 1
  %24 = load ptr, ptr %events, align 4
  %descriptor52 = getelementptr inbounds %struct.vidtv_psi_table_eit_event, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %descriptor52 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load ptr, ptr %descriptor52, align 1
  %tobool53.not = icmp eq ptr %26, null
  br i1 %tobool53.not, label %free_events, label %if.end55

if.end55:                                         ; preds = %if.end47
  %tobool56.not = icmp eq ptr %head, null
  br i1 %tobool56.not, label %if.end55.cleanup_crit_edge, label %if.end55.while.cond_crit_edge

if.end55.while.cond_crit_edge:                    ; preds = %if.end55
  br label %while.cond

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end55.while.cond_crit_edge
  %head.addr.0 = phi ptr [ %28, %while.cond.while.cond_crit_edge ], [ %head, %if.end55.while.cond_crit_edge ]
  %next = getelementptr inbounds %struct.vidtv_channel, ptr %head.addr.0, i32 0, i32 8
  %27 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %next, align 4
  %tobool58.not = icmp eq ptr %28, null
  br i1 %tobool58.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  %next.le = getelementptr inbounds %struct.vidtv_channel, ptr %head.addr.0, i32 0, i32 8
  %29 = ptrtoint ptr %next.le to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %next.le, align 4
  br label %cleanup

free_events:                                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @vidtv_psi_eit_event_destroy(ptr noundef %24) #4
  br label %free_encoders

free_encoders:                                    ; preds = %free_events, %if.end42.free_encoders_crit_edge
  %30 = ptrtoint ptr %encoders to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %encoders, align 8
  tail call void @vidtv_s302m_encoder_destroy(ptr noundef %31) #4
  br label %free_streams

free_streams:                                     ; preds = %free_encoders, %if.end37.free_streams_crit_edge, %if.end29.free_streams_crit_edge
  %32 = ptrtoint ptr %streams to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %streams, align 4
  tail call void @vidtv_psi_pmt_stream_destroy(ptr noundef %33) #4
  br label %free_program

free_program:                                     ; preds = %free_streams, %if.end24.free_program_crit_edge
  %34 = ptrtoint ptr %program to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %program, align 8
  tail call void @vidtv_psi_pat_program_destroy(ptr noundef %35) #4
  br label %free_service

free_service:                                     ; preds = %free_program, %if.end18.free_service_crit_edge, %if.end11.free_service_crit_edge
  %36 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %service, align 8
  tail call void @vidtv_psi_sdt_service_destroy(ptr noundef %37) #4
  br label %free_name

free_name:                                        ; preds = %free_service, %if.end6.free_name_crit_edge
  %38 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef %39) #4
  br label %free_s302m

free_s302m:                                       ; preds = %free_name, %if.end.free_s302m_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %free_s302m, %while.end, %if.end55.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %free_s302m ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %while.end ], [ %call7.i.i, %if.end55.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vidtv_psi_sdt_service_init(ptr noundef, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vidtv_psi_service_desc_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vidtv_psi_pat_program_init(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vidtv_psi_pmt_stream_init(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vidtv_psi_registration_desc_init(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vidtv_s302m_encoder_init([7 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vidtv_psi_eit_event_init(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vidtv_psi_short_event_desc_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vidtv_psi_eit_event_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vidtv_s302m_encoder_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vidtv_psi_pmt_stream_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vidtv_psi_pat_program_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vidtv_psi_sdt_service_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidtv_channel_si_init(ptr nocapture noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %transport_stream_id = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 16
  %0 = ptrtoint ptr %transport_stream_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %transport_stream_id, align 8
  %call = tail call ptr @vidtv_psi_pat_table_init(i16 noundef zeroext %1) #4
  %si = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 10
  %2 = ptrtoint ptr %si to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %si, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %network_id = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 17
  %3 = ptrtoint ptr %network_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %network_id, align 2
  %5 = ptrtoint ptr %transport_stream_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %transport_stream_id, align 8
  %call4 = tail call ptr @vidtv_psi_sdt_table_init(i16 noundef zeroext %4, i16 noundef zeroext %6) #4
  %sdt = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 10, i32 2
  %7 = ptrtoint ptr %sdt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %sdt, align 8
  %tobool8.not = icmp eq ptr %call4, null
  br i1 %tobool8.not, label %if.end.free_pat_crit_edge, label %if.end10

if.end.free_pat_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_pat

if.end10:                                         ; preds = %if.end
  %channels.i = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 9
  %8 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channels.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end10.free_sdt_crit_edge, label %while.body.lr.ph.i

if.end10.free_sdt_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_sdt

while.body.lr.ph.i:                               ; preds = %if.end10
  %dev.i = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %tail.056.i = phi ptr [ null, %while.body.lr.ph.i ], [ %tail.1.lcssa.i, %while.end.i.while.body.i_crit_edge ]
  %head.055.i = phi ptr [ null, %while.body.lr.ph.i ], [ %head.1.lcssa.i, %while.end.i.while.body.i_crit_edge ]
  %cur_chnl.054.i = phi ptr [ %9, %while.body.lr.ph.i ], [ %21, %while.end.i.while.body.i_crit_edge ]
  %program.i = getelementptr inbounds %struct.vidtv_channel, ptr %cur_chnl.054.i, i32 0, i32 4
  %10 = ptrtoint ptr %program.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %program.i, align 4
  %cond.i = icmp eq ptr %11, null
  br i1 %cond.i, label %do.body.i, label %while.body.i.while.body13.i_crit_edge

while.body.i.while.body13.i_crit_edge:            ; preds = %while.body.i
  br label %while.body13.i

do.body.i:                                        ; preds = %while.body.i
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @vidtv_channel_pat_prog_cat_into_new._rs, ptr noundef nonnull @__func__.vidtv_channel_pat_prog_cat_into_new) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %do.body.i.while.end.i_crit_edge, label %do.end.i

do.body.i.while.end.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %14 = ptrtoint ptr %cur_chnl.054.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur_chnl.054.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.6, ptr noundef %15) #8
  br label %while.end.i

while.body13.i:                                   ; preds = %if.end18.i.while.body13.i_crit_edge, %while.body.i.while.body13.i_crit_edge
  %tail.151.i = phi ptr [ %call15.i, %if.end18.i.while.body13.i_crit_edge ], [ %tail.056.i, %while.body.i.while.body13.i_crit_edge ]
  %head.150.i = phi ptr [ %spec.select.i, %if.end18.i.while.body13.i_crit_edge ], [ %head.055.i, %while.body.i.while.body13.i_crit_edge ]
  %curr.049.i = phi ptr [ %19, %if.end18.i.while.body13.i_crit_edge ], [ %11, %while.body.i.while.body13.i_crit_edge ]
  %16 = ptrtoint ptr %curr.049.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %curr.049.i, align 1
  %call14.i = tail call zeroext i16 @vidtv_psi_get_pat_program_pid(ptr noundef nonnull %curr.049.i) #4
  %call15.i = tail call ptr @vidtv_psi_pat_program_init(ptr noundef %tail.151.i, i16 noundef zeroext %17, i16 noundef zeroext %call14.i) #4
  %tobool16.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end18.i

if.then17.i:                                      ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @vidtv_psi_pat_program_destroy(ptr noundef %head.150.i) #4
  br label %free_sdt

if.end18.i:                                       ; preds = %while.body13.i
  %tobool19.not.i = icmp eq ptr %head.150.i, null
  %spec.select.i = select i1 %tobool19.not.i, ptr %call15.i, ptr %head.150.i
  %next.i = getelementptr inbounds %struct.vidtv_psi_table_pat_program, ptr %curr.049.i, i32 0, i32 2
  %18 = ptrtoint ptr %next.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load ptr, ptr %next.i, align 1
  %tobool12.not.i = icmp eq ptr %19, null
  br i1 %tobool12.not.i, label %if.end18.i.while.end.i_crit_edge, label %if.end18.i.while.body13.i_crit_edge

if.end18.i.while.body13.i_crit_edge:              ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body13.i

if.end18.i.while.end.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.end.i:                                      ; preds = %if.end18.i.while.end.i_crit_edge, %do.end.i, %do.body.i.while.end.i_crit_edge
  %head.1.lcssa.i = phi ptr [ %head.055.i, %do.body.i.while.end.i_crit_edge ], [ %head.055.i, %do.end.i ], [ %spec.select.i, %if.end18.i.while.end.i_crit_edge ]
  %tail.1.lcssa.i = phi ptr [ %tail.056.i, %do.body.i.while.end.i_crit_edge ], [ %tail.056.i, %do.end.i ], [ %call15.i, %if.end18.i.while.end.i_crit_edge ]
  %next22.i = getelementptr inbounds %struct.vidtv_channel, ptr %cur_chnl.054.i, i32 0, i32 8
  %20 = ptrtoint ptr %next22.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %next22.i, align 4
  %tobool1.not.i = icmp eq ptr %21, null
  br i1 %tobool1.not.i, label %vidtv_channel_pat_prog_cat_into_new.exit, label %while.end.i.while.body.i_crit_edge

while.end.i.while.body.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

vidtv_channel_pat_prog_cat_into_new.exit:         ; preds = %while.end.i
  %call24.i = tail call ptr @vidtv_psi_pat_program_init(ptr noundef %tail.1.lcssa.i, i16 noundef zeroext 0, i16 noundef zeroext 16) #4
  %tobool12.not = icmp eq ptr %head.1.lcssa.i, null
  br i1 %tobool12.not, label %vidtv_channel_pat_prog_cat_into_new.exit.free_sdt_crit_edge, label %if.end14

vidtv_channel_pat_prog_cat_into_new.exit.free_sdt_crit_edge: ; preds = %vidtv_channel_pat_prog_cat_into_new.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_sdt

if.end14:                                         ; preds = %vidtv_channel_pat_prog_cat_into_new.exit
  %22 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %channels.i, align 4
  %tobool.not.i119 = icmp eq ptr %23, null
  br i1 %tobool.not.i119, label %if.end14.free_programs_crit_edge, label %if.end14.while.body.i123_crit_edge

if.end14.while.body.i123_crit_edge:               ; preds = %if.end14
  br label %while.body.i123

if.end14.free_programs_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_programs

while.body.i123:                                  ; preds = %while.end.i135.while.body.i123_crit_edge, %if.end14.while.body.i123_crit_edge
  %tail.072.i = phi ptr [ %tail.1.lcssa.i133, %while.end.i135.while.body.i123_crit_edge ], [ null, %if.end14.while.body.i123_crit_edge ]
  %head.071.i = phi ptr [ %head.1.lcssa.i132, %while.end.i135.while.body.i123_crit_edge ], [ null, %if.end14.while.body.i123_crit_edge ]
  %cur_chnl.070.i = phi ptr [ %39, %while.end.i135.while.body.i123_crit_edge ], [ %23, %if.end14.while.body.i123_crit_edge ]
  %service.i = getelementptr inbounds %struct.vidtv_channel, ptr %cur_chnl.070.i, i32 0, i32 2
  %24 = ptrtoint ptr %service.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %service.i, align 4
  %cond.i122 = icmp eq ptr %25, null
  br i1 %cond.i122, label %do.body.i126, label %while.body.i123.while.body13.i128_crit_edge

while.body.i123.while.body13.i128_crit_edge:      ; preds = %while.body.i123
  br label %while.body13.i128

do.body.i126:                                     ; preds = %while.body.i123
  %call.i124 = tail call i32 @___ratelimit(ptr noundef nonnull @vidtv_channel_sdt_serv_cat_into_new._rs, ptr noundef nonnull @__func__.vidtv_channel_sdt_serv_cat_into_new) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %tobool4.not.i125 = icmp eq i32 %call.i124, 0
  br i1 %tobool4.not.i125, label %do.body.i126.while.end.i135_crit_edge, label %do.end.i127

do.body.i126.while.end.i135_crit_edge:            ; preds = %do.body.i126
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i135

do.end.i127:                                      ; preds = %do.body.i126
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %28 = ptrtoint ptr %cur_chnl.070.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cur_chnl.070.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.10, ptr noundef %29) #8
  br label %while.end.i135

while.body13.i128:                                ; preds = %if.end26.i.while.body13.i128_crit_edge, %while.body.i123.while.body13.i128_crit_edge
  %tail.167.i = phi ptr [ %call19.i, %if.end26.i.while.body13.i128_crit_edge ], [ %tail.072.i, %while.body.i123.while.body13.i128_crit_edge ]
  %head.166.i = phi ptr [ %spec.select.i129, %if.end26.i.while.body13.i128_crit_edge ], [ %head.071.i, %while.body.i123.while.body13.i128_crit_edge ]
  %curr.065.i = phi ptr [ %37, %if.end26.i.while.body13.i128_crit_edge ], [ %25, %while.body.i123.while.body13.i128_crit_edge ]
  %30 = ptrtoint ptr %curr.065.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %curr.065.i, align 1
  %EIT_schedule.i = getelementptr inbounds %struct.vidtv_psi_table_sdt_service, ptr %curr.065.i, i32 0, i32 1
  %32 = ptrtoint ptr %EIT_schedule.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i = load i8, ptr %EIT_schedule.i, align 1
  %33 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool15.i = icmp ne i8 %33, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool18.i = icmp slt i8 %bf.load.i, 0
  %call19.i = tail call ptr @vidtv_psi_sdt_service_init(ptr noundef %tail.167.i, i16 noundef zeroext %31, i1 noundef zeroext %tobool15.i, i1 noundef zeroext %tobool18.i) #4
  %tobool20.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool20.not.i, label %while.body13.i128.free.i_crit_edge, label %if.end22.i

while.body13.i128.free.i_crit_edge:               ; preds = %while.body13.i128
  call void @__sanitizer_cov_trace_pc() #6
  br label %free.i

if.end22.i:                                       ; preds = %while.body13.i128
  %descriptor.i = getelementptr inbounds %struct.vidtv_psi_table_sdt_service, ptr %curr.065.i, i32 0, i32 3
  %34 = ptrtoint ptr %descriptor.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load ptr, ptr %descriptor.i, align 1
  %call23.i = tail call ptr @vidtv_psi_desc_clone(ptr noundef %35) #4
  %tobool24.not.i = icmp eq ptr %call23.i, null
  br i1 %tobool24.not.i, label %free_tail.i, label %if.end26.i

if.end26.i:                                       ; preds = %if.end22.i
  %descriptor27.i = getelementptr inbounds %struct.vidtv_psi_table_sdt_service, ptr %call19.i, i32 0, i32 3
  tail call void @vidtv_psi_desc_assign(ptr noundef %descriptor27.i, ptr noundef nonnull %call23.i) #4
  %tobool28.not.i = icmp eq ptr %head.166.i, null
  %spec.select.i129 = select i1 %tobool28.not.i, ptr %call19.i, ptr %head.166.i
  %next.i130 = getelementptr inbounds %struct.vidtv_psi_table_sdt_service, ptr %curr.065.i, i32 0, i32 4
  %36 = ptrtoint ptr %next.i130 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load ptr, ptr %next.i130, align 1
  %tobool12.not.i131 = icmp eq ptr %37, null
  br i1 %tobool12.not.i131, label %if.end26.i.while.end.i135_crit_edge, label %if.end26.i.while.body13.i128_crit_edge

if.end26.i.while.body13.i128_crit_edge:           ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body13.i128

if.end26.i.while.end.i135_crit_edge:              ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i135

while.end.i135:                                   ; preds = %if.end26.i.while.end.i135_crit_edge, %do.end.i127, %do.body.i126.while.end.i135_crit_edge
  %head.1.lcssa.i132 = phi ptr [ %head.071.i, %do.body.i126.while.end.i135_crit_edge ], [ %head.071.i, %do.end.i127 ], [ %spec.select.i129, %if.end26.i.while.end.i135_crit_edge ]
  %tail.1.lcssa.i133 = phi ptr [ %tail.072.i, %do.body.i126.while.end.i135_crit_edge ], [ %tail.072.i, %do.end.i127 ], [ %call19.i, %if.end26.i.while.end.i135_crit_edge ]
  %next31.i = getelementptr inbounds %struct.vidtv_channel, ptr %cur_chnl.070.i, i32 0, i32 8
  %38 = ptrtoint ptr %next31.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %next31.i, align 4
  %tobool1.not.i134 = icmp eq ptr %39, null
  br i1 %tobool1.not.i134, label %vidtv_channel_sdt_serv_cat_into_new.exit, label %while.end.i135.while.body.i123_crit_edge

while.end.i135.while.body.i123_crit_edge:         ; preds = %while.end.i135
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i123

free_tail.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @vidtv_psi_sdt_service_destroy(ptr noundef nonnull %call19.i) #4
  br label %free.i

free.i:                                           ; preds = %free_tail.i, %while.body13.i128.free.i_crit_edge
  tail call void @vidtv_psi_sdt_service_destroy(ptr noundef %head.166.i) #4
  br label %free_programs

vidtv_channel_sdt_serv_cat_into_new.exit:         ; preds = %while.end.i135
  %tobool16.not = icmp eq ptr %head.1.lcssa.i132, null
  br i1 %tobool16.not, label %vidtv_channel_sdt_serv_cat_into_new.exit.free_programs_crit_edge, label %if.end18

vidtv_channel_sdt_serv_cat_into_new.exit.free_programs_crit_edge: ; preds = %vidtv_channel_sdt_serv_cat_into_new.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_programs

if.end18:                                         ; preds = %vidtv_channel_sdt_serv_cat_into_new.exit
  %40 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %channels.i, align 4
  %tobool.not.i138 = icmp eq ptr %41, null
  br i1 %tobool.not.i138, label %if.end18.free_services_crit_edge, label %if.end18.while.body.i145_crit_edge

if.end18.while.body.i145_crit_edge:               ; preds = %if.end18
  br label %while.body.i145

if.end18.free_services_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_services

while.body.i145:                                  ; preds = %while.end.i166.while.body.i145_crit_edge, %if.end18.while.body.i145_crit_edge
  %tail.056.i141 = phi ptr [ %tail.1.lcssa.i164, %while.end.i166.while.body.i145_crit_edge ], [ null, %if.end18.while.body.i145_crit_edge ]
  %head.055.i142 = phi ptr [ %head.1.lcssa.i163, %while.end.i166.while.body.i145_crit_edge ], [ null, %if.end18.while.body.i145_crit_edge ]
  %cur_chnl.054.i143 = phi ptr [ %55, %while.end.i166.while.body.i145_crit_edge ], [ %41, %if.end18.while.body.i145_crit_edge ]
  %events.i = getelementptr inbounds %struct.vidtv_channel, ptr %cur_chnl.054.i143, i32 0, i32 7
  %42 = ptrtoint ptr %events.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %events.i, align 4
  %cond.i144 = icmp eq ptr %43, null
  br i1 %cond.i144, label %do.body.i148, label %while.body.i145.while.body13.i155_crit_edge

while.body.i145.while.body13.i155_crit_edge:      ; preds = %while.body.i145
  br label %while.body13.i155

do.body.i148:                                     ; preds = %while.body.i145
  %call.i146 = tail call i32 @___ratelimit(ptr noundef nonnull @vidtv_channel_eit_event_cat_into_new._rs, ptr noundef nonnull @__func__.vidtv_channel_eit_event_cat_into_new) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool4.not.i147 = icmp eq i32 %call.i146, 0
  br i1 %tobool4.not.i147, label %do.body.i148.while.end.i166_crit_edge, label %do.end.i149

do.body.i148.while.end.i166_crit_edge:            ; preds = %do.body.i148
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i166

do.end.i149:                                      ; preds = %do.body.i148
  call void @__sanitizer_cov_trace_pc() #6
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  %46 = ptrtoint ptr %cur_chnl.054.i143 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cur_chnl.054.i143, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.11, ptr noundef %47) #8
  br label %while.end.i166

while.body13.i155:                                ; preds = %if.end18.i162.while.body13.i155_crit_edge, %while.body.i145.while.body13.i155_crit_edge
  %tail.151.i150 = phi ptr [ %call15.i153, %if.end18.i162.while.body13.i155_crit_edge ], [ %tail.056.i141, %while.body.i145.while.body13.i155_crit_edge ]
  %head.150.i151 = phi ptr [ %spec.select.i159, %if.end18.i162.while.body13.i155_crit_edge ], [ %head.055.i142, %while.body.i145.while.body13.i155_crit_edge ]
  %curr.049.i152 = phi ptr [ %53, %if.end18.i162.while.body13.i155_crit_edge ], [ %43, %while.body.i145.while.body13.i155_crit_edge ]
  %48 = ptrtoint ptr %curr.049.i152 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %curr.049.i152, align 1
  %call15.i153 = tail call ptr @vidtv_psi_eit_event_init(ptr noundef %tail.151.i150, i16 noundef zeroext %49) #4
  %tobool16.not.i154 = icmp eq ptr %call15.i153, null
  br i1 %tobool16.not.i154, label %if.then17.i156, label %if.end18.i162

if.then17.i156:                                   ; preds = %while.body13.i155
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @vidtv_psi_eit_event_destroy(ptr noundef %head.150.i151) #4
  br label %free_services

if.end18.i162:                                    ; preds = %while.body13.i155
  %descriptor.i157 = getelementptr inbounds %struct.vidtv_psi_table_eit_event, ptr %curr.049.i152, i32 0, i32 4
  %50 = ptrtoint ptr %descriptor.i157 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load ptr, ptr %descriptor.i157, align 1
  %call19.i158 = tail call ptr @vidtv_psi_desc_clone(ptr noundef %51) #4
  %descriptor20.i = getelementptr inbounds %struct.vidtv_psi_table_eit_event, ptr %call15.i153, i32 0, i32 4
  tail call void @vidtv_psi_desc_assign(ptr noundef %descriptor20.i, ptr noundef %call19.i158) #4
  %tobool21.not.i = icmp eq ptr %head.150.i151, null
  %spec.select.i159 = select i1 %tobool21.not.i, ptr %call15.i153, ptr %head.150.i151
  %next.i160 = getelementptr inbounds %struct.vidtv_psi_table_eit_event, ptr %curr.049.i152, i32 0, i32 5
  %52 = ptrtoint ptr %next.i160 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load ptr, ptr %next.i160, align 1
  %tobool12.not.i161 = icmp eq ptr %53, null
  br i1 %tobool12.not.i161, label %if.end18.i162.while.end.i166_crit_edge, label %if.end18.i162.while.body13.i155_crit_edge

if.end18.i162.while.body13.i155_crit_edge:        ; preds = %if.end18.i162
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body13.i155

if.end18.i162.while.end.i166_crit_edge:           ; preds = %if.end18.i162
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i166

while.end.i166:                                   ; preds = %if.end18.i162.while.end.i166_crit_edge, %do.end.i149, %do.body.i148.while.end.i166_crit_edge
  %head.1.lcssa.i163 = phi ptr [ %head.055.i142, %do.body.i148.while.end.i166_crit_edge ], [ %head.055.i142, %do.end.i149 ], [ %spec.select.i159, %if.end18.i162.while.end.i166_crit_edge ]
  %tail.1.lcssa.i164 = phi ptr [ %tail.056.i141, %do.body.i148.while.end.i166_crit_edge ], [ %tail.056.i141, %do.end.i149 ], [ %call15.i153, %if.end18.i162.while.end.i166_crit_edge ]
  %next24.i = getelementptr inbounds %struct.vidtv_channel, ptr %cur_chnl.054.i143, i32 0, i32 8
  %54 = ptrtoint ptr %next24.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %next24.i, align 4
  %tobool1.not.i165 = icmp eq ptr %55, null
  br i1 %tobool1.not.i165, label %vidtv_channel_eit_event_cat_into_new.exit, label %while.end.i166.while.body.i145_crit_edge

while.end.i166.while.body.i145_crit_edge:         ; preds = %while.end.i166
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i145

vidtv_channel_eit_event_cat_into_new.exit:        ; preds = %while.end.i166
  %tobool20.not = icmp eq ptr %head.1.lcssa.i163, null
  br i1 %tobool20.not, label %vidtv_channel_eit_event_cat_into_new.exit.free_services_crit_edge, label %while.cond1.preheader.preheader.i

vidtv_channel_eit_event_cat_into_new.exit.free_services_crit_edge: ; preds = %vidtv_channel_eit_event_cat_into_new.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_services

while.cond1.preheader.preheader.i:                ; preds = %vidtv_channel_eit_event_cat_into_new.exit
  %descriptor.i168 = getelementptr inbounds %struct.vidtv_psi_table_sdt_service, ptr %head.1.lcssa.i132, i32 0, i32 3
  %56 = ptrtoint ptr %descriptor.i168 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load ptr, ptr %descriptor.i168, align 1
  br label %while.cond1.preheader.i

while.cond1.preheader.i:                          ; preds = %while.end.i172.while.cond1.preheader.i_crit_edge, %while.cond1.preheader.preheader.i
  %desc.052.i = phi ptr [ null, %while.end.i172.while.cond1.preheader.i_crit_edge ], [ %57, %while.cond1.preheader.preheader.i ]
  %prev_e.051.i = phi ptr [ %prev_e.1.lcssa.i, %while.end.i172.while.cond1.preheader.i_crit_edge ], [ null, %while.cond1.preheader.preheader.i ]
  %head_e.050.i = phi ptr [ %head_e.1.lcssa.i, %while.end.i172.while.cond1.preheader.i_crit_edge ], [ null, %while.cond1.preheader.preheader.i ]
  %s.addr.048.i = phi ptr [ %75, %while.end.i172.while.cond1.preheader.i_crit_edge ], [ %head.1.lcssa.i132, %while.cond1.preheader.preheader.i ]
  %tobool2.not42.i = icmp eq ptr %desc.052.i, null
  br i1 %tobool2.not42.i, label %while.cond1.preheader.i.while.end.i172_crit_edge, label %while.body3.lr.ph.i

while.cond1.preheader.i.while.end.i172_crit_edge: ; preds = %while.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i172

while.body3.lr.ph.i:                              ; preds = %while.cond1.preheader.i
  %descriptor4.i = getelementptr inbounds %struct.vidtv_psi_table_sdt_service, ptr %s.addr.048.i, i32 0, i32 3
  br label %while.body3.i

while.body3.i:                                    ; preds = %next_desc.i.while.body3.i_crit_edge, %while.body3.lr.ph.i
  %desc.145.i = phi ptr [ %desc.052.i, %while.body3.lr.ph.i ], [ %73, %next_desc.i.while.body3.i_crit_edge ]
  %prev_e.144.i = phi ptr [ %prev_e.051.i, %while.body3.lr.ph.i ], [ %prev_e.2.i, %next_desc.i.while.body3.i_crit_edge ]
  %head_e.143.i = phi ptr [ %head_e.050.i, %while.body3.lr.ph.i ], [ %head_e.3.i, %next_desc.i.while.body3.i_crit_edge ]
  %58 = ptrtoint ptr %descriptor4.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load ptr, ptr %descriptor4.i, align 1
  %type.i = getelementptr inbounds %struct.vidtv_psi_desc, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 72, i8 %61)
  %cmp.not.i = icmp eq i8 %61, 72
  br i1 %cmp.not.i, label %if.end.i, label %while.body3.i.next_desc.i_crit_edge

while.body3.i.next_desc.i_crit_edge:              ; preds = %while.body3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %next_desc.i

if.end.i:                                         ; preds = %while.body3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %62 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %62, i32 noundef 3520, i32 noundef 7) #7
  %tobool6.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  %tobool.not3.i.i = icmp eq ptr %head_e.143.i, null
  br i1 %tobool.not3.i.i, label %if.then7.i.free_events_crit_edge, label %if.then7.i.while.body.i.i_crit_edge

if.then7.i.while.body.i.i_crit_edge:              ; preds = %if.then7.i
  br label %while.body.i.i

if.then7.i.free_events_crit_edge:                 ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_events

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then7.i.while.body.i.i_crit_edge
  %e.addr.04.i.i = phi ptr [ %64, %while.body.i.i.while.body.i.i_crit_edge ], [ %head_e.143.i, %if.then7.i.while.body.i.i_crit_edge ]
  %next.i.i = getelementptr inbounds %struct.vidtv_psi_desc_service_list_entry, ptr %e.addr.04.i.i, i32 0, i32 2
  %63 = ptrtoint ptr %next.i.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load ptr, ptr %next.i.i, align 1
  tail call void @kfree(ptr noundef nonnull %e.addr.04.i.i) #4
  %tobool.not.i.i = icmp eq ptr %64, null
  br i1 %tobool.not.i.i, label %while.body.i.i.free_events_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i

while.body.i.i.free_events_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_events

if.end8.i:                                        ; preds = %if.end.i
  %65 = ptrtoint ptr %s.addr.048.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %s.addr.048.i, align 1
  %67 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %call7.i.i.i, align 8
  %service_type.i = getelementptr inbounds %struct.vidtv_psi_desc_service, ptr %desc.145.i, i32 0, i32 3
  %68 = ptrtoint ptr %service_type.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %service_type.i, align 1
  %service_type10.i = getelementptr inbounds %struct.vidtv_psi_desc_service_list_entry, ptr %call7.i.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %service_type10.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %service_type10.i, align 2
  %tobool11.not.i = icmp eq ptr %head_e.143.i, null
  %spec.select.i169 = select i1 %tobool11.not.i, ptr %call7.i.i.i, ptr %head_e.143.i
  %tobool14.not.i = icmp eq ptr %prev_e.144.i, null
  br i1 %tobool14.not.i, label %if.end8.i.next_desc.i_crit_edge, label %if.then15.i

if.end8.i.next_desc.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %next_desc.i

if.then15.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  %next.i170 = getelementptr inbounds %struct.vidtv_psi_desc_service_list_entry, ptr %prev_e.144.i, i32 0, i32 2
  %71 = ptrtoint ptr %next.i170 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store ptr %call7.i.i.i, ptr %next.i170, align 1
  br label %next_desc.i

next_desc.i:                                      ; preds = %if.then15.i, %if.end8.i.next_desc.i_crit_edge, %while.body3.i.next_desc.i_crit_edge
  %head_e.3.i = phi ptr [ %head_e.143.i, %while.body3.i.next_desc.i_crit_edge ], [ %spec.select.i169, %if.then15.i ], [ %spec.select.i169, %if.end8.i.next_desc.i_crit_edge ]
  %prev_e.2.i = phi ptr [ %prev_e.144.i, %while.body3.i.next_desc.i_crit_edge ], [ %call7.i.i.i, %if.then15.i ], [ %call7.i.i.i, %if.end8.i.next_desc.i_crit_edge ]
  %72 = ptrtoint ptr %desc.145.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load ptr, ptr %desc.145.i, align 1
  %tobool2.not.i = icmp eq ptr %73, null
  br i1 %tobool2.not.i, label %next_desc.i.while.end.i172_crit_edge, label %next_desc.i.while.body3.i_crit_edge

next_desc.i.while.body3.i_crit_edge:              ; preds = %next_desc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body3.i

next_desc.i.while.end.i172_crit_edge:             ; preds = %next_desc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i172

while.end.i172:                                   ; preds = %next_desc.i.while.end.i172_crit_edge, %while.cond1.preheader.i.while.end.i172_crit_edge
  %head_e.1.lcssa.i = phi ptr [ %head_e.050.i, %while.cond1.preheader.i.while.end.i172_crit_edge ], [ %head_e.3.i, %next_desc.i.while.end.i172_crit_edge ]
  %prev_e.1.lcssa.i = phi ptr [ %prev_e.051.i, %while.cond1.preheader.i.while.end.i172_crit_edge ], [ %prev_e.2.i, %next_desc.i.while.end.i172_crit_edge ]
  %next18.i = getelementptr inbounds %struct.vidtv_psi_table_sdt_service, ptr %s.addr.048.i, i32 0, i32 4
  %74 = ptrtoint ptr %next18.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load ptr, ptr %next18.i, align 1
  %tobool.not.i171 = icmp eq ptr %75, null
  br i1 %tobool.not.i171, label %vidtv_channel_build_service_list.exit, label %while.end.i172.while.cond1.preheader.i_crit_edge

while.end.i172.while.cond1.preheader.i_crit_edge: ; preds = %while.end.i172
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond1.preheader.i

vidtv_channel_build_service_list.exit:            ; preds = %while.end.i172
  %tobool24.not = icmp eq ptr %head_e.1.lcssa.i, null
  br i1 %tobool24.not, label %vidtv_channel_build_service_list.exit.free_events_crit_edge, label %if.end26

vidtv_channel_build_service_list.exit.free_events_crit_edge: ; preds = %vidtv_channel_build_service_list.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_events

if.end26:                                         ; preds = %vidtv_channel_build_service_list.exit
  %76 = ptrtoint ptr %network_id to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %network_id, align 2
  %78 = ptrtoint ptr %transport_stream_id to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %transport_stream_id, align 8
  %network_name = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 18
  %80 = ptrtoint ptr %network_name to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %network_name, align 4
  %call29 = tail call ptr @vidtv_psi_nit_table_init(i16 noundef zeroext %77, i16 noundef zeroext %79, ptr noundef %81, ptr noundef nonnull %head_e.1.lcssa.i) #4
  %nit = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 10, i32 3
  %82 = ptrtoint ptr %nit to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call29, ptr %nit, align 4
  %tobool33.not = icmp eq ptr %call29, null
  br i1 %tobool33.not, label %if.end26.while.body.i182.preheader_crit_edge, label %if.end35

if.end26.while.body.i182.preheader_crit_edge:     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i182.preheader

if.end35:                                         ; preds = %if.end26
  %83 = ptrtoint ptr %network_id to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %network_id, align 2
  %85 = ptrtoint ptr %transport_stream_id to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %transport_stream_id, align 8
  %87 = ptrtoint ptr %head.1.lcssa.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %88 = load i16, ptr %head.1.lcssa.i, align 1
  %call38 = tail call ptr @vidtv_psi_eit_table_init(i16 noundef zeroext %84, i16 noundef zeroext %86, i16 noundef zeroext %88) #4
  %eit = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 10, i32 4
  %89 = ptrtoint ptr %eit to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call38, ptr %eit, align 8
  %tobool42.not = icmp eq ptr %call38, null
  br i1 %tobool42.not, label %if.end35.free_nit_crit_edge, label %if.end44

if.end35.free_nit_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_nit

if.end44:                                         ; preds = %if.end35
  %90 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %si, align 8
  tail call void @vidtv_psi_pat_program_assign(ptr noundef %91, ptr noundef nonnull %head.1.lcssa.i) #4
  %92 = ptrtoint ptr %sdt to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sdt, align 8
  tail call void @vidtv_psi_sdt_service_assign(ptr noundef %93, ptr noundef nonnull %head.1.lcssa.i132) #4
  %94 = ptrtoint ptr %eit to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %eit, align 8
  tail call void @vidtv_psi_eit_event_assign(ptr noundef %95, ptr noundef nonnull %head.1.lcssa.i163) #4
  %96 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %si, align 8
  %pcr_pid = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 15
  %98 = ptrtoint ptr %pcr_pid to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %pcr_pid, align 2
  %call53 = tail call ptr @vidtv_psi_pmt_create_sec_for_each_pat_entry(ptr noundef %97, i16 noundef zeroext %99) #4
  %pmt_secs = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 10, i32 1
  %100 = ptrtoint ptr %pmt_secs to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call53, ptr %pmt_secs, align 4
  %tobool57.not = icmp eq ptr %call53, null
  br i1 %tobool57.not, label %free_eit, label %if.end59

if.end59:                                         ; preds = %if.end44
  %101 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %channels.i, align 4
  %103 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %si, align 8
  %num_pmt = getelementptr inbounds %struct.vidtv_psi_table_pat, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %num_pmt to i32
  call void @__asan_loadN_noabort(i32 %105, i32 2)
  %106 = load i16, ptr %num_pmt, align 1
  %conv = zext i16 %106 to i32
  tail call fastcc void @vidtv_channel_pmt_match_sections(ptr noundef %102, ptr noundef nonnull %call53, i32 noundef %conv)
  br label %while.body.i176

while.body.i176:                                  ; preds = %while.body.i176.while.body.i176_crit_edge, %if.end59
  %e.addr.04.i = phi ptr [ %108, %while.body.i176.while.body.i176_crit_edge ], [ %head_e.1.lcssa.i, %if.end59 ]
  %next.i174 = getelementptr inbounds %struct.vidtv_psi_desc_service_list_entry, ptr %e.addr.04.i, i32 0, i32 2
  %107 = ptrtoint ptr %next.i174 to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load ptr, ptr %next.i174, align 1
  tail call void @kfree(ptr noundef nonnull %e.addr.04.i) #4
  %tobool.not.i175 = icmp eq ptr %108, null
  br i1 %tobool.not.i175, label %while.body.i176.cleanup_crit_edge, label %while.body.i176.while.body.i176_crit_edge

while.body.i176.while.body.i176_crit_edge:        ; preds = %while.body.i176
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i176

while.body.i176.cleanup_crit_edge:                ; preds = %while.body.i176
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

free_eit:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %109 = ptrtoint ptr %eit to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %eit, align 8
  tail call void @vidtv_psi_eit_table_destroy(ptr noundef %110) #4
  br label %free_nit

free_nit:                                         ; preds = %free_eit, %if.end35.free_nit_crit_edge
  %111 = ptrtoint ptr %nit to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %nit, align 4
  tail call void @vidtv_psi_nit_table_destroy(ptr noundef %112) #4
  br label %while.body.i182.preheader

while.body.i182.preheader:                        ; preds = %free_nit, %if.end26.while.body.i182.preheader_crit_edge
  br label %while.body.i182

while.body.i182:                                  ; preds = %while.body.i182.while.body.i182_crit_edge, %while.body.i182.preheader
  %e.addr.04.i179 = phi ptr [ %114, %while.body.i182.while.body.i182_crit_edge ], [ %head_e.1.lcssa.i, %while.body.i182.preheader ]
  %next.i180 = getelementptr inbounds %struct.vidtv_psi_desc_service_list_entry, ptr %e.addr.04.i179, i32 0, i32 2
  %113 = ptrtoint ptr %next.i180 to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load ptr, ptr %next.i180, align 1
  tail call void @kfree(ptr noundef nonnull %e.addr.04.i179) #4
  %tobool.not.i181 = icmp eq ptr %114, null
  br i1 %tobool.not.i181, label %while.body.i182.free_events_crit_edge, label %while.body.i182.while.body.i182_crit_edge

while.body.i182.while.body.i182_crit_edge:        ; preds = %while.body.i182
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i182

while.body.i182.free_events_crit_edge:            ; preds = %while.body.i182
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_events

free_events:                                      ; preds = %while.body.i182.free_events_crit_edge, %vidtv_channel_build_service_list.exit.free_events_crit_edge, %while.body.i.i.free_events_crit_edge, %if.then7.i.free_events_crit_edge
  tail call void @vidtv_psi_eit_event_destroy(ptr noundef nonnull %head.1.lcssa.i163) #4
  br label %free_services

free_services:                                    ; preds = %free_events, %vidtv_channel_eit_event_cat_into_new.exit.free_services_crit_edge, %if.then17.i156, %if.end18.free_services_crit_edge
  tail call void @vidtv_psi_sdt_service_destroy(ptr noundef nonnull %head.1.lcssa.i132) #4
  br label %free_programs

free_programs:                                    ; preds = %free_services, %vidtv_channel_sdt_serv_cat_into_new.exit.free_programs_crit_edge, %free.i, %if.end14.free_programs_crit_edge
  tail call void @vidtv_psi_pat_program_destroy(ptr noundef nonnull %head.1.lcssa.i) #4
  br label %free_sdt

free_sdt:                                         ; preds = %free_programs, %vidtv_channel_pat_prog_cat_into_new.exit.free_sdt_crit_edge, %if.then17.i, %if.end10.free_sdt_crit_edge
  %115 = ptrtoint ptr %sdt to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %sdt, align 8
  tail call void @vidtv_psi_sdt_table_destroy(ptr noundef %116) #4
  br label %free_pat

free_pat:                                         ; preds = %free_sdt, %if.end.free_pat_crit_edge
  %117 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %si, align 8
  tail call void @vidtv_psi_pat_table_destroy(ptr noundef %118) #4
  br label %cleanup

cleanup:                                          ; preds = %free_pat, %while.body.i176.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %free_pat ], [ -12, %entry.cleanup_crit_edge ], [ 0, %while.body.i176.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vidtv_psi_pat_table_init(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vidtv_psi_sdt_table_init(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vidtv_psi_nit_table_init(i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vidtv_psi_eit_table_init(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vidtv_psi_pat_program_assign(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vidtv_psi_sdt_service_assign(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vidtv_psi_eit_event_assign(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vidtv_psi_pmt_create_sec_for_each_pat_entry(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vidtv_channel_pmt_match_sections(ptr noundef readonly %channels, ptr nocapture noundef readonly %sections, i32 noundef %nsections) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not41 = icmp eq ptr %channels, null
  br i1 %tobool.not41, label %entry.while.end18_crit_edge, label %for.cond.preheader.lr.ph

entry.while.end18_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end18

for.cond.preheader.lr.ph:                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nsections)
  %cmp33.not = icmp eq i32 %nsections, 0
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.end.for.cond.preheader_crit_edge, %for.cond.preheader.lr.ph
  %cur_chnl.046 = phi ptr [ %channels, %for.cond.preheader.lr.ph ], [ %13, %for.end.for.cond.preheader_crit_edge ]
  %tail.044 = phi ptr [ null, %for.cond.preheader.lr.ph ], [ %tail.2, %for.end.for.cond.preheader_crit_edge ]
  %head.042 = phi ptr [ null, %for.cond.preheader.lr.ph ], [ %head.3, %for.end.for.cond.preheader_crit_edge ]
  br i1 %cmp33.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %program_num = getelementptr inbounds %struct.vidtv_channel, ptr %cur_chnl.046, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %j.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %sections, i32 %j.034
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %for.body
  %id = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %id, align 1
  %4 = ptrtoint ptr %program_num to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %program_num, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp3 = icmp eq i16 %3, %5
  br i1 %cmp3, label %if.then5, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then5:                                         ; preds = %if.end
  %streams = getelementptr inbounds %struct.vidtv_channel, ptr %cur_chnl.046, i32 0, i32 5
  %6 = ptrtoint ptr %streams to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %s.035 = load ptr, ptr %streams, align 1
  %tobool7.not36 = icmp eq ptr %s.035, null
  br i1 %tobool7.not36, label %if.then5.while.end_crit_edge, label %if.then5.while.body8_crit_edge

if.then5.while.body8_crit_edge:                   ; preds = %if.then5
  br label %while.body8

if.then5.while.end_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body8:                                      ; preds = %while.body8.while.body8_crit_edge, %if.then5.while.body8_crit_edge
  %s.039 = phi ptr [ %s.0, %while.body8.while.body8_crit_edge ], [ %s.035, %if.then5.while.body8_crit_edge ]
  %tail.138 = phi ptr [ %call10, %while.body8.while.body8_crit_edge ], [ %tail.044, %if.then5.while.body8_crit_edge ]
  %head.137 = phi ptr [ %spec.select, %while.body8.while.body8_crit_edge ], [ %head.042, %if.then5.while.body8_crit_edge ]
  %call = tail call zeroext i16 @vidtv_psi_pmt_stream_get_elem_pid(ptr noundef nonnull %s.039) #4
  %7 = ptrtoint ptr %s.039 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %s.039, align 1
  %conv9 = zext i8 %8 to i32
  %call10 = tail call ptr @vidtv_psi_pmt_stream_init(ptr noundef %tail.138, i32 noundef %conv9, i16 noundef zeroext %call) #4
  %tobool11.not = icmp eq ptr %head.137, null
  %spec.select = select i1 %tobool11.not, ptr %call10, ptr %head.137
  %descriptor = getelementptr inbounds %struct.vidtv_psi_table_pmt_stream, ptr %s.039, i32 0, i32 3
  %9 = ptrtoint ptr %descriptor to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load ptr, ptr %descriptor, align 1
  %call14 = tail call ptr @vidtv_psi_desc_clone(ptr noundef %10) #4
  %descriptor15 = getelementptr inbounds %struct.vidtv_psi_table_pmt_stream, ptr %call10, i32 0, i32 3
  tail call void @vidtv_psi_desc_assign(ptr noundef %descriptor15, ptr noundef %call14) #4
  %next = getelementptr inbounds %struct.vidtv_psi_table_pmt_stream, ptr %s.039, i32 0, i32 4
  %11 = ptrtoint ptr %next to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %s.0 = load ptr, ptr %next, align 1
  %tobool7.not = icmp eq ptr %s.0, null
  br i1 %tobool7.not, label %while.body8.while.end_crit_edge, label %while.body8.while.body8_crit_edge

while.body8.while.body8_crit_edge:                ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body8

while.body8.while.end_crit_edge:                  ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %while.body8.while.end_crit_edge, %if.then5.while.end_crit_edge
  %head.1.lcssa = phi ptr [ %head.042, %if.then5.while.end_crit_edge ], [ %spec.select, %while.body8.while.end_crit_edge ]
  %tail.1.lcssa = phi ptr [ %tail.044, %if.then5.while.end_crit_edge ], [ %call10, %while.body8.while.end_crit_edge ]
  tail call void @vidtv_psi_pmt_stream_assign(ptr noundef nonnull %1, ptr noundef %head.1.lcssa) #4
  br label %for.end

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %j.034, 1
  %exitcond.not = icmp eq i32 %inc, %nsections
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %while.end, %for.cond.preheader.for.end_crit_edge
  %head.3 = phi ptr [ %head.1.lcssa, %while.end ], [ %head.042, %for.cond.preheader.for.end_crit_edge ], [ %head.042, %for.inc.for.end_crit_edge ]
  %tail.2 = phi ptr [ %tail.1.lcssa, %while.end ], [ %tail.044, %for.cond.preheader.for.end_crit_edge ], [ %tail.044, %for.inc.for.end_crit_edge ]
  %next17 = getelementptr inbounds %struct.vidtv_channel, ptr %cur_chnl.046, i32 0, i32 8
  %12 = ptrtoint ptr %next17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %next17, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %for.end.while.end18_crit_edge, label %for.end.for.cond.preheader_crit_edge

for.end.for.cond.preheader_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.preheader

for.end.while.end18_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end18

while.end18:                                      ; preds = %for.end.while.end18_crit_edge, %entry.while.end18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vidtv_psi_eit_table_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vidtv_psi_nit_table_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vidtv_psi_sdt_table_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vidtv_psi_pat_table_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vidtv_channel_si_destroy(ptr nocapture noundef readonly %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %si = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %si, align 8
  %num_pmt18 = getelementptr inbounds %struct.vidtv_psi_table_pat, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %num_pmt18 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %num_pmt18, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp20.not = icmp eq i16 %3, 0
  br i1 %cmp20.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pmt_secs = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 10, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %pmt_secs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmt_secs, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.021
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @vidtv_psi_pmt_table_destroy(ptr noundef %7) #4
  %inc = add nuw nsw i32 %i.021, 1
  %8 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %si, align 8
  %num_pmt = getelementptr inbounds %struct.vidtv_psi_table_pat, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %num_pmt to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %num_pmt, align 1
  %conv = zext i16 %11 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi ptr [ %1, %entry.for.end_crit_edge ], [ %9, %for.body.for.end_crit_edge ]
  tail call void @vidtv_psi_pat_table_destroy(ptr noundef %.lcssa) #4
  %pmt_secs6 = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %pmt_secs6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pmt_secs6, align 4
  tail call void @kfree(ptr noundef %13) #4
  %sdt = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 10, i32 2
  %14 = ptrtoint ptr %sdt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdt, align 8
  tail call void @vidtv_psi_sdt_table_destroy(ptr noundef %15) #4
  %nit = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 10, i32 3
  %16 = ptrtoint ptr %nit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nit, align 4
  tail call void @vidtv_psi_nit_table_destroy(ptr noundef %17) #4
  %eit = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 10, i32 4
  %18 = ptrtoint ptr %eit to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %eit, align 8
  tail call void @vidtv_psi_eit_table_destroy(ptr noundef %19) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vidtv_psi_pmt_table_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidtv_channels_init(ptr nocapture noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %transport_stream_id = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 16
  %0 = ptrtoint ptr %transport_stream_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %transport_stream_id, align 8
  %call = tail call ptr @vidtv_channel_s302m_init(ptr noundef null, i16 noundef zeroext %1)
  %channels = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 9
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %channels, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vidtv_channels_destroy(ptr nocapture noundef readonly %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %channels = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 9
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channels, align 4
  %tobool.not9 = icmp eq ptr %1, null
  br i1 %tobool.not9, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %vidtv_channel_encoder_destroy.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %curr.010 = phi ptr [ %19, %vidtv_channel_encoder_destroy.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %2 = ptrtoint ptr %curr.010 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curr.010, align 4
  tail call void @kfree(ptr noundef %3) #4
  %service = getelementptr inbounds %struct.vidtv_channel, ptr %curr.010, i32 0, i32 2
  %4 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %service, align 4
  tail call void @vidtv_psi_sdt_service_destroy(ptr noundef %5) #4
  %program = getelementptr inbounds %struct.vidtv_channel, ptr %curr.010, i32 0, i32 4
  %6 = ptrtoint ptr %program to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %program, align 4
  tail call void @vidtv_psi_pat_program_destroy(ptr noundef %7) #4
  %streams = getelementptr inbounds %struct.vidtv_channel, ptr %curr.010, i32 0, i32 5
  %8 = ptrtoint ptr %streams to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %streams, align 4
  tail call void @vidtv_psi_pmt_stream_destroy(ptr noundef %9) #4
  %encoders = getelementptr inbounds %struct.vidtv_channel, ptr %curr.010, i32 0, i32 6
  %10 = ptrtoint ptr %encoders to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %encoders, align 4
  %tobool.not4.i = icmp eq ptr %11, null
  br i1 %tobool.not4.i, label %while.body.vidtv_channel_encoder_destroy.exit_crit_edge, label %while.body.while.body.i_crit_edge

while.body.while.body.i_crit_edge:                ; preds = %while.body
  br label %while.body.i

while.body.vidtv_channel_encoder_destroy.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %vidtv_channel_encoder_destroy.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.while.body.i_crit_edge
  %curr.05.i = phi ptr [ %13, %while.body.i.while.body.i_crit_edge ], [ %11, %while.body.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.vidtv_encoder, ptr %curr.05.i, i32 0, i32 20
  %12 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %next.i, align 4
  %destroy.i = getelementptr inbounds %struct.vidtv_encoder, ptr %curr.05.i, i32 0, i32 19
  %14 = ptrtoint ptr %destroy.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %destroy.i, align 8
  tail call void %15(ptr noundef nonnull %curr.05.i) #4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %while.body.i.vidtv_channel_encoder_destroy.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

while.body.i.vidtv_channel_encoder_destroy.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vidtv_channel_encoder_destroy.exit

vidtv_channel_encoder_destroy.exit:               ; preds = %while.body.i.vidtv_channel_encoder_destroy.exit_crit_edge, %while.body.vidtv_channel_encoder_destroy.exit_crit_edge
  %events = getelementptr inbounds %struct.vidtv_channel, ptr %curr.010, i32 0, i32 7
  %16 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %events, align 4
  tail call void @vidtv_psi_eit_event_destroy(ptr noundef %17) #4
  %next = getelementptr inbounds %struct.vidtv_channel, ptr %curr.010, i32 0, i32 8
  %18 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %next, align 4
  tail call void @kfree(ptr noundef nonnull %curr.010) #4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %vidtv_channel_encoder_destroy.exit.while.end_crit_edge, label %vidtv_channel_encoder_destroy.exit.while.body_crit_edge

vidtv_channel_encoder_destroy.exit.while.body_crit_edge: ; preds = %vidtv_channel_encoder_destroy.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

vidtv_channel_encoder_destroy.exit.while.end_crit_edge: ; preds = %vidtv_channel_encoder_destroy.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %vidtv_channel_encoder_destroy.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vidtv_psi_get_pat_program_pid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vidtv_psi_desc_clone(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vidtv_psi_desc_assign(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vidtv_psi_pmt_stream_get_elem_pid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vidtv_psi_pmt_stream_assign(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vidtv/vidtv_channel.c", i32 57, i32 21}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/test-drivers/vidtv/vidtv_channel.c", i32 58, i32 21}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/test-drivers/vidtv/vidtv_channel.c", i32 60, i32 28}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/test-drivers/vidtv/vidtv_channel.c", i32 61, i32 19}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/test-drivers/vidtv/vidtv_channel.c", i32 62, i32 15}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/test-drivers/vidtv/vidtv_channel.c", i32 277, i32 4}
!12 = !{ptr @vidtv_channel_pat_prog_cat_into_new._rs, !11, !"_rs", i1 false, i1 false}
!13 = !{ptr @__func__.vidtv_channel_pat_prog_cat_into_new, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @vidtv_channel_pat_prog_cat_into_new._entry, !11, !"_entry", i1 false, i1 false}
!19 = !{ptr @vidtv_channel_pat_prog_cat_into_new._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @vidtv_channel_sdt_serv_cat_into_new._rs, !21, !"_rs", i1 false, i1 false}
!21 = !{!"../drivers/media/test-drivers/vidtv/vidtv_channel.c", i32 223, i32 4}
!22 = !{ptr @__func__.vidtv_channel_sdt_serv_cat_into_new, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @vidtv_channel_sdt_serv_cat_into_new._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @vidtv_channel_sdt_serv_cat_into_new._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @vidtv_channel_eit_event_cat_into_new._rs, !27, !"_rs", i1 false, i1 false}
!27 = !{!"../drivers/media/test-drivers/vidtv/vidtv_channel.c", i32 176, i32 4}
!28 = !{ptr @__func__.vidtv_channel_eit_event_cat_into_new, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @vidtv_channel_eit_event_cat_into_new._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @vidtv_channel_eit_event_cat_into_new._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
