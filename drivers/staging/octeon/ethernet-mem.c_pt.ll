; ModuleID = '/llk/IR_all_yes/drivers/staging/octeon/ethernet-mem.c_pt.bc'
source_filename = "../drivers/staging/octeon/ethernet-mem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.100, %union.anon.101, [48 x i8], %union.anon.102, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.104, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.100 = type { ptr }
%union.anon.101 = type { i64 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { i32, ptr }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.106, i32, i32, i32, i16, i16, %union.anon.108, i32, %union.anon.109, %union.anon.110, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.106 = type { i32 }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@cvm_oct_fill_hw_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014Unable to allocate %u bytes for FPA pool %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cvm_oct_fill_hw_memory\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/octeon/ethernet-mem.c\00", [58 x i8] zeroinitializer }, align 32
@cvm_oct_fill_hw_memory._entry_ptr = internal global ptr @cvm_oct_fill_hw_memory._entry, section ".printk_index", align 4
@cvm_oct_free_hw_skbuff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014Freeing of pool %u had too many skbuffs (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cvm_oct_free_hw_skbuff\00", [41 x i8] zeroinitializer }, align 32
@cvm_oct_free_hw_skbuff._entry_ptr = internal global ptr @cvm_oct_free_hw_skbuff._entry, section ".printk_index", align 4
@cvm_oct_free_hw_skbuff._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014Freeing of pool %u is missing %d skbuffs\0A\00", [52 x i8] zeroinitializer }, align 32
@cvm_oct_free_hw_skbuff._entry_ptr.7 = internal global ptr @cvm_oct_free_hw_skbuff._entry.5, section ".printk_index", align 4
@cvm_oct_free_hw_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014Freeing of pool %u had too many buffers (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cvm_oct_free_hw_memory\00", [41 x i8] zeroinitializer }, align 32
@cvm_oct_free_hw_memory._entry_ptr = internal global ptr @cvm_oct_free_hw_memory._entry, section ".printk_index", align 4
@cvm_oct_free_hw_memory._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014Warning: Freeing of pool %u is missing %d buffers\0A\00", [43 x i8] zeroinitializer }, align 32
@cvm_oct_free_hw_memory._entry_ptr.12 = internal global ptr @cvm_oct_free_hw_memory._entry.10, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 96, i32 4 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 62, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 65, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 130, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [41 x i8] c"../drivers/staging/octeon/ethernet-mem.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 133, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @cvm_oct_fill_hw_memory._entry, ptr @cvm_oct_fill_hw_memory._entry_ptr, ptr @cvm_oct_free_hw_memory._entry, ptr @cvm_oct_free_hw_memory._entry.10, ptr @cvm_oct_free_hw_memory._entry_ptr, ptr @cvm_oct_free_hw_memory._entry_ptr.12, ptr @cvm_oct_free_hw_skbuff._entry, ptr @cvm_oct_free_hw_skbuff._entry.5, ptr @cvm_oct_free_hw_skbuff._entry_ptr, ptr @cvm_oct_free_hw_skbuff._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_fill_hw_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_free_hw_skbuff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_free_hw_skbuff._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_free_hw_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_free_hw_memory._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cvm_oct_mem_fill_fpa(i32 noundef %pool, i32 noundef %size, i32 noundef %elements) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pool)
  %cmp = icmp eq i32 %pool, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add.i = add i32 %size, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %elements)
  %tobool.not4.i = icmp eq i32 %elements, 0
  br i1 %tobool.not4.i, label %if.then.if.end_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %freed.05.i = phi i32 [ %dec.i, %cleanup.i.while.body.i_crit_edge ], [ %elements, %if.then.while.body.i_crit_edge ]
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add.i, i32 noundef 2592) #4
  %tobool1.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool1.not.i, label %while.body.i.if.end_crit_edge, label %cleanup.i, !prof !33

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cleanup.i:                                        ; preds = %while.body.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  %and.i = and i32 %2, 127
  %sub.i = sub nuw nsw i32 256, %and.i
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %sub.i
  store ptr %add.ptr.i.i, ptr %data.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %3 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %4, i32 %sub.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 -4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i.i.i, ptr %add.ptr.i, align 4
  %dec.i = add i32 %freed.05.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %cleanup.i.if.end_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

cleanup.i.if.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %elements)
  %tobool.not21.i = icmp eq i32 %elements, 0
  br i1 %tobool.not21.i, label %if.else.if.end_crit_edge, label %while.body.lr.ph.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

while.body.lr.ph.i:                               ; preds = %if.else
  %add.i6 = add i32 %size, 256
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end.i.if.end8.i.i_crit_edge, %while.body.lr.ph.i
  %freed.022.i = phi i32 [ %elements, %while.body.lr.ph.i ], [ %dec.i11, %if.end.i.if.end8.i.i_crit_edge ]
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i6, i32 noundef 2592) #7
  %tobool1.not.i8 = icmp eq ptr %call9.i.i, null
  br i1 %tobool1.not.i8, label %do.end.i, label %if.end.i, !prof !33

do.end.i:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %mul.i = mul i32 %elements, %size
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %mul.i, i32 noundef %pool) #8
  br label %if.end

if.end.i:                                         ; preds = %if.end8.i.i
  %6 = ptrtoint ptr %call9.i.i to i32
  %add6.i = add i32 %6, 256
  %7 = inttoptr i32 %add6.i to ptr
  %add.ptr.i10 = getelementptr ptr, ptr %7, i32 -1
  %8 = ptrtoint ptr %add.ptr.i10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i.i, ptr %add.ptr.i10, align 4
  %dec.i11 = add i32 %freed.022.i, -1
  %tobool.not.i12 = icmp eq i32 %dec.i11, 0
  br i1 %tobool.not.i12, label %if.end.i.if.end_crit_edge, label %if.end.i.if.end8.i.i_crit_edge

if.end.i.if.end8.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8.i.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %do.end.i, %if.else.if.end_crit_edge, %cleanup.i.if.end_crit_edge, %while.body.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %freed.0.lcssa.i.pn = phi i32 [ 0, %if.then.if.end_crit_edge ], [ %freed.022.i, %do.end.i ], [ 0, %if.else.if.end_crit_edge ], [ 0, %cleanup.i.if.end_crit_edge ], [ %freed.05.i, %while.body.i.if.end_crit_edge ], [ 0, %if.end.i.if.end_crit_edge ]
  %freed.0 = sub i32 %elements, %freed.0.lcssa.i.pn
  ret i32 %freed.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cvm_oct_mem_empty_fpa(i32 noundef %pool, i32 noundef %size, i32 noundef %elements) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pool)
  %cmp = icmp eq i32 %pool, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %elements)
  %cmp.i = icmp slt i32 %elements, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp.i, label %if.then.if.end17.sink.split.i_crit_edge, label %if.else.i

if.then.if.end17.sink.split.i_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17.sink.split.i

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %elements)
  %cmp8.not.i = icmp eq i32 %elements, 0
  br i1 %cmp8.not.i, label %if.else.i.if.end_crit_edge, label %if.else.i.if.end17.sink.split.i_crit_edge

if.else.i.if.end17.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17.sink.split.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end17.sink.split.i:                            ; preds = %if.else.i.if.end17.sink.split.i_crit_edge, %if.then.if.end17.sink.split.i_crit_edge
  %.str.6.sink.i = phi ptr [ @.str.3, %if.then.if.end17.sink.split.i_crit_edge ], [ @.str.6, %if.else.i.if.end17.sink.split.i_crit_edge ]
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.6.sink.i, i32 noundef 0, i32 noundef %elements) #8
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %cmp.i, label %if.else.if.end20.sink.split.i_crit_edge, label %if.else.i6

if.else.if.end20.sink.split.i_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20.sink.split.i

if.else.i6:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %elements)
  %cmp11.not.i = icmp eq i32 %elements, 0
  br i1 %cmp11.not.i, label %if.else.i6.if.end_crit_edge, label %if.else.i6.if.end20.sink.split.i_crit_edge

if.else.i6.if.end20.sink.split.i_crit_edge:       ; preds = %if.else.i6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20.sink.split.i

if.else.i6.if.end_crit_edge:                      ; preds = %if.else.i6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end20.sink.split.i:                            ; preds = %if.else.i6.if.end20.sink.split.i_crit_edge, %if.else.if.end20.sink.split.i_crit_edge
  %.str.11.sink.i = phi ptr [ @.str.8, %if.else.if.end20.sink.split.i_crit_edge ], [ @.str.11, %if.else.i6.if.end20.sink.split.i_crit_edge ]
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.11.sink.i, i32 noundef %pool, i32 noundef %elements) #8
  br label %if.end

if.end:                                           ; preds = %if.end20.sink.split.i, %if.else.i6.if.end_crit_edge, %if.end17.sink.split.i, %if.else.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/octeon/ethernet-mem.c", i32 96, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cvm_oct_fill_hw_memory._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cvm_oct_fill_hw_memory._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/octeon/ethernet-mem.c", i32 62, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cvm_oct_free_hw_skbuff._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @cvm_oct_free_hw_skbuff._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/octeon/ethernet-mem.c", i32 65, i32 3}
!13 = !{ptr @cvm_oct_free_hw_skbuff._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @cvm_oct_free_hw_skbuff._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/octeon/ethernet-mem.c", i32 130, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @cvm_oct_free_hw_memory._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @cvm_oct_free_hw_memory._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/octeon/ethernet-mem.c", i32 133, i32 3}
!22 = !{ptr @cvm_oct_free_hw_memory._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @cvm_oct_free_hw_memory._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 1, i32 2000}
