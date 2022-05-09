; ModuleID = '/llk/IR_all_yes/net/x25/x25_forward.c_pt.bc'
source_filename = "../net/x25/x25_forward.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.x25_route = type { %struct.list_head, %struct.x25_address, i32, ptr, %struct.refcount_struct }
%struct.x25_address = type { [16 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.x25_neigh = type { %struct.list_head, ptr, i32, i32, %struct.sk_buff_head, i32, %struct.timer_list, i32, %struct.refcount_struct }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.14 }
%union.anon.14 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.x25_forward = type { %struct.list_head, i32, ptr, ptr, %struct.atomic_t }
%struct.sk_buff = type { %union.anon.0, %union.anon.3, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }

@x25_forward_list = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @x25_forward_list, ptr @x25_forward_list }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"x25_forward_list_lock\00", [42 x i8] zeroinitializer }, align 32
@x25_forward_list_lock = dso_local global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@x25_forward_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\014X25: call request for lci which is already registered!, transmitting but not registering new pair\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"x25_forward_call\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/x25/x25_forward.c\00", [42 x i8] zeroinitializer }, align 32
@x25_forward_call._entry_ptr = internal global ptr @x25_forward_call._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"x25_forward_list\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 14, i32 1 }
@___asan_gen_.10 = private unnamed_addr constant [22 x i8] c"x25_forward_list_lock\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 15, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [25 x i8] c"../net/x25/x25_forward.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 50, i32 4 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @x25_forward_call._entry, ptr @x25_forward_call._entry_ptr, ptr @x25_forward_list, ptr @.str, ptr @x25_forward_list_lock, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_forward_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_forward_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_forward_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x25_forward_call(ptr noundef %dest_addr, ptr nocapture noundef readonly %from, ptr noundef %skb, i32 noundef %lci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @x25_get_route(ptr noundef %dest_addr) #5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.out_no_route_crit_edge, label %if.end

entry.out_no_route_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_no_route

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.x25_route, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call1 = tail call ptr @x25_get_neigh(ptr noundef %1) #5
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.end.out_put_route_crit_edge, label %if.end4

if.end.out_put_route_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_put_route

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev6 = getelementptr inbounds %struct.x25_neigh, ptr %from, i32 0, i32 1
  %4 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev6, align 4
  %cmp7 = icmp eq ptr %3, %5
  br i1 %cmp7, label %if.end4.out_put_nb_crit_edge, label %if.end9

if.end4.out_put_nb_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_put_nb

if.end9:                                          ; preds = %if.end4
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @x25_forward_list_lock) #5
  %x25_frwd.054 = load ptr, ptr @x25_forward_list, align 4
  %cmp10.not55 = icmp eq ptr %x25_frwd.054, @x25_forward_list
  br i1 %cmp10.not55, label %for.end.thread, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

for.end.thread:                                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @x25_forward_list_lock) #5
  br label %if.then21

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end9.for.body_crit_edge
  %x25_frwd.057 = phi ptr [ %x25_frwd.0, %for.inc.for.body_crit_edge ], [ %x25_frwd.054, %if.end9.for.body_crit_edge ]
  %same_lci.056 = phi i16 [ %same_lci.1, %for.inc.for.body_crit_edge ], [ 0, %if.end9.for.body_crit_edge ]
  %lci11 = getelementptr inbounds %struct.x25_forward, ptr %x25_frwd.057, i32 0, i32 1
  %6 = ptrtoint ptr %lci11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lci11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %lci)
  %cmp12 = icmp eq i32 %7, %lci
  br i1 %cmp12, label %do.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %same_lci.1 = phi i16 [ 1, %do.end ], [ %same_lci.056, %for.body.for.inc_crit_edge ]
  %8 = ptrtoint ptr %x25_frwd.057 to i32
  call void @__asan_load4_noabort(i32 %8)
  %x25_frwd.0 = load ptr, ptr %x25_frwd.057, align 4
  %cmp10.not = icmp eq ptr %x25_frwd.0, @x25_forward_list
  br i1 %cmp10.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @x25_forward_list_lock) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %same_lci.1)
  %tobool.not = icmp eq i16 %same_lci.1, 0
  br i1 %tobool.not, label %for.end.if.then21_crit_edge, label %for.end.if.end30_crit_edge

for.end.if.end30_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

for.end.if.then21_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21

if.then21:                                        ; preds = %for.end.if.then21_crit_edge, %for.end.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 2592, i32 noundef 24) #9
  %cmp23 = icmp eq ptr %call7.i, null
  br i1 %cmp23, label %if.then21.out_put_nb_crit_edge, label %if.end25

if.then21.out_put_nb_crit_edge:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_put_nb

if.end25:                                         ; preds = %if.then21
  %lci26 = getelementptr inbounds %struct.x25_forward, ptr %call7.i, i32 0, i32 1
  %10 = ptrtoint ptr %lci26 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %lci, ptr %lci26, align 8
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.x25_forward, ptr %call7.i, i32 0, i32 2
  %13 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dev1, align 4
  %14 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev6, align 4
  %dev2 = getelementptr inbounds %struct.x25_forward, ptr %call7.i, i32 0, i32 3
  %16 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %dev2, align 8
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @x25_forward_list_lock) #5
  %17 = load ptr, ptr @x25_forward_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef nonnull @x25_forward_list, ptr noundef %17) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end25.list_add.exit_crit_edge

if.end25.list_add.exit_crit_edge:                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i, ptr %prev1.i.i, align 4
  %19 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @x25_forward_list, ptr %prev3.i.i, align 4
  store volatile ptr %call7.i, ptr @x25_forward_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end25.list_add.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @x25_forward_list_lock) #5
  br label %if.end30

if.end30:                                         ; preds = %list_add.exit, %for.end.if.end30_crit_edge
  %call31 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #5
  %cmp32 = icmp eq ptr %call31, null
  br i1 %cmp32, label %if.end30.out_put_nb_crit_edge, label %if.end34

if.end30.out_put_nb_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_put_nb

if.end34:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @x25_transmit_link(ptr noundef nonnull %call31, ptr noundef nonnull %call1) #5
  br label %out_put_nb

out_put_nb:                                       ; preds = %if.end34, %if.end30.out_put_nb_crit_edge, %if.then21.out_put_nb_crit_edge, %if.end4.out_put_nb_crit_edge
  %rc.0 = phi i32 [ 0, %if.end4.out_put_nb_crit_edge ], [ 0, %if.end30.out_put_nb_crit_edge ], [ 1, %if.end34 ], [ -12, %if.then21.out_put_nb_crit_edge ]
  %refcnt.i = getelementptr inbounds %struct.x25_neigh, ptr %call1, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !20
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #5
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #5, !srcloc !21
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out_put_nb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_put_route_crit_edge, label %if.then10.i.i.i.i, !prof !22

if.end5.i.i.i.i.out_put_route_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_put_route

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #5
  br label %out_put_route

if.then.i:                                        ; preds = %out_put_nb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void @kfree(ptr noundef nonnull %call1) #5
  br label %out_put_route

out_put_route:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_put_route_crit_edge, %if.end.out_put_route_crit_edge
  %rc.1 = phi i32 [ 0, %if.end.out_put_route_crit_edge ], [ %rc.0, %if.end5.i.i.i.i.out_put_route_crit_edge ], [ %rc.0, %if.then10.i.i.i.i ], [ %rc.0, %if.then.i ]
  %refcnt.i46 = getelementptr inbounds %struct.x25_route, ptr %call, i32 0, i32 4
  %call.i.i.i.i.i.i47 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i46, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !20
  tail call void @llvm.prefetch.p0(ptr %refcnt.i46, i32 1, i32 3, i32 1) #5
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i46, ptr %refcnt.i46, i32 1, ptr elementtype(i32) %refcnt.i46) #5, !srcloc !21
  %asmresult.i.i.i.i.i.i.i48 = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i48)
  %cmp.i.i.i.i49 = icmp eq i32 %asmresult.i.i.i.i.i.i.i48, 1
  br i1 %cmp.i.i.i.i49, label %if.then.i53, label %if.end5.i.i.i.i51

if.end5.i.i.i.i51:                                ; preds = %out_put_route
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i48)
  %.not.i.i.i.i50 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i48, 0
  br i1 %.not.i.i.i.i50, label %if.end5.i.i.i.i51.out_no_route_crit_edge, label %if.then10.i.i.i.i52, !prof !22

if.end5.i.i.i.i51.out_no_route_crit_edge:         ; preds = %if.end5.i.i.i.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_no_route

if.then10.i.i.i.i52:                              ; preds = %if.end5.i.i.i.i51
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i46, i32 noundef 3) #5
  br label %out_no_route

if.then.i53:                                      ; preds = %out_put_route
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %out_no_route

out_no_route:                                     ; preds = %if.then.i53, %if.then10.i.i.i.i52, %if.end5.i.i.i.i51.out_no_route_crit_edge, %entry.out_no_route_crit_edge
  %rc.2 = phi i32 [ 0, %entry.out_no_route_crit_edge ], [ %rc.1, %if.end5.i.i.i.i51.out_no_route_crit_edge ], [ %rc.1, %if.then10.i.i.i.i52 ], [ %rc.1, %if.then.i53 ]
  ret i32 %rc.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @x25_get_route(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @x25_get_neigh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_transmit_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x25_forward_data(i32 noundef %lci, ptr nocapture noundef readonly %from, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @x25_forward_list_lock) #5
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %frwd.0.in = phi ptr [ @x25_forward_list, %entry ], [ %frwd.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %frwd.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %frwd.0 = load ptr, ptr %frwd.0.in, align 4
  %cmp.not = icmp eq ptr %frwd.0, @x25_forward_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.cond
  %lci1 = getelementptr inbounds %struct.x25_forward, ptr %frwd.0, i32 0, i32 1
  %1 = ptrtoint ptr %lci1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lci1, align 4
  %cmp2 = icmp eq i32 %2, %lci
  br i1 %cmp2, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then:                                          ; preds = %for.body
  %dev = getelementptr inbounds %struct.x25_neigh, ptr %from, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.x25_forward, ptr %frwd.0, i32 0, i32 2
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 4
  %cmp3 = icmp eq ptr %4, %6
  br i1 %cmp3, label %if.then4, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %dev2 = getelementptr inbounds %struct.x25_forward, ptr %frwd.0, i32 0, i32 3
  %7 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev2, align 4
  br label %for.end

for.end:                                          ; preds = %if.then4, %if.then.for.end_crit_edge, %for.cond.for.end_crit_edge
  %peer.0 = phi ptr [ %8, %if.then4 ], [ %6, %if.then.for.end_crit_edge ], [ null, %for.cond.for.end_crit_edge ]
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @x25_forward_list_lock) #5
  %call = tail call ptr @x25_get_neigh(ptr noundef %peer.0) #5
  %cmp11 = icmp eq ptr %call, null
  br i1 %cmp11, label %for.end.out_crit_edge, label %if.end13

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end13:                                         ; preds = %for.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %call.i.i = tail call ptr @__pskb_copy_fclone(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i, i32 noundef 2592, i1 noundef zeroext false) #5
  %cmp15 = icmp eq ptr %call.i.i, null
  br i1 %cmp15, label %if.end13.output_crit_edge, label %if.end17

if.end13.output_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %output

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @x25_transmit_link(ptr noundef nonnull %call.i.i, ptr noundef nonnull %call) #5
  br label %output

output:                                           ; preds = %if.end17, %if.end13.output_crit_edge
  %rc.0 = phi i32 [ 0, %if.end13.output_crit_edge ], [ 1, %if.end17 ]
  %refcnt.i = getelementptr inbounds %struct.x25_neigh, ptr %call, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !20
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #5
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #5, !srcloc !21
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %output
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i, !prof !22

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #5
  br label %out

if.then.i:                                        ; preds = %output
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %out

out:                                              ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_crit_edge, %for.end.out_crit_edge
  %rc.1 = phi i32 [ 0, %for.end.out_crit_edge ], [ %rc.0, %if.end5.i.i.i.i.out_crit_edge ], [ %rc.0, %if.then10.i.i.i.i ], [ %rc.0, %if.then.i ]
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @x25_clear_forward_by_lci(i32 noundef %lci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @x25_forward_list_lock) #5
  %0 = load ptr, ptr @x25_forward_list, align 4
  %cmp.not20 = icmp eq ptr %0, @x25_forward_list
  br i1 %cmp.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %fwd.021 = phi ptr [ %tmp.023, %for.inc.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %fwd.021 to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp.023 = load ptr, ptr %fwd.021, align 4
  %lci6 = getelementptr inbounds %struct.x25_forward, ptr %fwd.021, i32 0, i32 1
  %2 = ptrtoint ptr %lci6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lci6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %lci)
  %cmp7 = icmp eq i32 %3, %lci
  br i1 %cmp7, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %fwd.021) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %fwd.021, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %fwd.021 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fwd.021, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %10 = ptrtoint ptr %fwd.021 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %fwd.021, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %fwd.021, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %fwd.021) #5
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp.023, @x25_forward_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @x25_forward_list_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @x25_clear_forward_by_dev(ptr noundef readnone %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @x25_forward_list_lock) #5
  %0 = load ptr, ptr @x25_forward_list, align 4
  %cmp.not22 = icmp eq ptr %0, @x25_forward_list
  br i1 %cmp.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %fwd.023 = phi ptr [ %tmp.025, %for.inc.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %fwd.023 to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp.025 = load ptr, ptr %fwd.023, align 4
  %dev1 = getelementptr inbounds %struct.x25_forward, ptr %fwd.023, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %cmp6 = icmp eq ptr %3, %dev
  br i1 %cmp6, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %dev2 = getelementptr inbounds %struct.x25_forward, ptr %fwd.023, i32 0, i32 3
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %cmp7 = icmp eq ptr %5, %dev
  br i1 %cmp7, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %fwd.023) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %fwd.023, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %fwd.023 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fwd.023, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %12 = ptrtoint ptr %fwd.023 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %fwd.023, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %fwd.023, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %fwd.023) #5
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %lor.lhs.false.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp.025, @x25_forward_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @x25_forward_list_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_copy_fclone(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @x25_forward_list, !1, !"x25_forward_list", i1 false, i1 false}
!1 = !{!"../net/x25/x25_forward.c", i32 14, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/x25/x25_forward.c", i32 15, i32 1}
!4 = !{ptr @x25_forward_list_lock, !3, !"x25_forward_list_lock", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../net/x25/x25_forward.c", i32 50, i32 4}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @x25_forward_call._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @x25_forward_call._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i64 2148441400}
!21 = !{i64 2148355864, i64 2148355896, i64 2148355925, i64 2148355959, i64 2148355990, i64 2148356013}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2150523053}
