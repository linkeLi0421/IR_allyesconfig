; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/fifo/chan.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/chan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_oproxy_func = type { [2 x ptr], [2 x ptr], [2 x ptr] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.139 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.139 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_dmaobj = type { ptr, ptr, %struct.nvkm_object, i32, i32, i64, i64 }
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.rb_root = type { ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_gpuobj = type { %union.anon.3, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.3 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_fifo_chan_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_fifo_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x ptr] }
%struct.nvkm_engine_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.138, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr }
%struct.anon.138 = type { ptr, ptr }
%struct.nvkm_fifo_chan_object = type { %struct.nvkm_oproxy, ptr, i32 }
%struct.nvkm_oproxy = type { ptr, %struct.nvkm_object, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }

@nvkm_fifo_chan_func = internal constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr @nvkm_fifo_chan_dtor, ptr @nvkm_fifo_chan_init, ptr @nvkm_fifo_chan_fini, ptr null, ptr @nvkm_fifo_chan_ntfy, ptr @nvkm_fifo_chan_map, ptr null, ptr null, ptr null, ptr @nvkm_fifo_chan_rd32, ptr null, ptr null, ptr @nvkm_fifo_chan_wr32, ptr null, ptr @nvkm_fifo_chan_child_get }, [36 x i8] zeroinitializer }, align 32
@nvkm_fifo_chan_child_func = internal constant { %struct.nvkm_oproxy_func, [40 x i8] } { %struct.nvkm_oproxy_func { [2 x ptr] [ptr @nvkm_fifo_chan_child_del, ptr null], [2 x ptr] [ptr @nvkm_fifo_chan_child_init, ptr null], [2 x ptr] [ptr @nvkm_fifo_chan_child_fini, ptr null] }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nvkm_fifo_chan_child_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013nouveau: %s:%08x:%08x: attach %s failed, %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvkm_fifo_chan_child_init\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/fifo/chan.c\00", [48 x i8] zeroinitializer }, align 32
@nvkm_fifo_chan_child_init._entry_ptr = internal global ptr @nvkm_fifo_chan_child_init._entry, section ".printk_index", align 4
@nvkm_fifo_chan_child_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016nouveau: %s:%08x:%08x: attached %s\0A\00", [58 x i8] zeroinitializer }, align 32
@nvkm_fifo_chan_child_init._entry_ptr.5 = internal global ptr @nvkm_fifo_chan_child_init._entry.3, section ".printk_index", align 4
@nvkm_fifo_chan_child_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013nouveau: %s:%08x:%08x: detach %s failed, %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvkm_fifo_chan_child_fini\00", [38 x i8] zeroinitializer }, align 32
@nvkm_fifo_chan_child_fini._entry_ptr = internal global ptr @nvkm_fifo_chan_child_fini._entry, section ".printk_index", align 4
@nvkm_fifo_chan_child_fini._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016nouveau: %s:%08x:%08x: detached %s\0A\00", [58 x i8] zeroinitializer }, align 32
@nvkm_fifo_chan_child_fini._entry_ptr.10 = internal global ptr @nvkm_fifo_chan_child_fini._entry.8, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"nvkm_fifo_chan_func\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 349, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant [26 x i8] c"nvkm_fifo_chan_child_func\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 135, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 103, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 109, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 64, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/chan.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 76, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @nvkm_fifo_chan_child_fini._entry, ptr @nvkm_fifo_chan_child_fini._entry.8, ptr @nvkm_fifo_chan_child_fini._entry_ptr, ptr @nvkm_fifo_chan_child_fini._entry_ptr.10, ptr @nvkm_fifo_chan_child_init._entry, ptr @nvkm_fifo_chan_child_init._entry.3, ptr @nvkm_fifo_chan_child_init._entry_ptr, ptr @nvkm_fifo_chan_child_init._entry_ptr.5, ptr @nvkm_fifo_chan_func, ptr @nvkm_fifo_chan_child_func, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fifo_chan_func to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fifo_chan_child_func to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fifo_chan_child_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fifo_chan_child_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fifo_chan_child_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fifo_chan_child_fini._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_fifo_chan_ctor(ptr noundef %func, ptr noundef %fifo, i32 noundef %size, i32 noundef %align, i1 noundef zeroext %zero, i64 noundef %hvmm, i64 noundef %push, i32 noundef %engm, i32 noundef %bar, i32 noundef %base, i32 noundef %user, ptr noundef %oclass, ptr noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 8
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 8
  %device2 = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %object = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 3
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nvkm_fifo_chan_func, ptr noundef %oclass, ptr noundef %object) #8
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %func, ptr %chan, align 8
  %fifo4 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 1
  %5 = ptrtoint ptr %fifo4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fifo, ptr %fifo4, align 4
  %engm5 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 2
  %6 = ptrtoint ptr %engm5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %engm, ptr %engm5, align 8
  %head = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 4
  %7 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %head, ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %head, ptr %prev.i, align 4
  %inst = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 6
  %call = tail call i32 @nvkm_gpuobj_new(ptr noundef %3, i32 noundef %size, i32 noundef %align, i1 noundef zeroext %zero, ptr noundef null, ptr noundef %inst) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end, label %entry.cleanup69_crit_edge

entry.cleanup69_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %push)
  %tobool7.not = icmp eq i64 %push, 0
  br i1 %tobool7.not, label %if.end.if.end21_crit_edge, label %if.then8

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then8:                                         ; preds = %if.end
  %call9 = tail call ptr @nvkm_dmaobj_search(ptr noundef %1, i64 noundef %push) #8
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call9 to i32
  br label %cleanup69

if.end13:                                         ; preds = %if.then8
  %object14 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %call9, i32 0, i32 2
  %10 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %inst, align 4
  %push16 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 7
  %call17 = tail call i32 @nvkm_object_bind(ptr noundef %object14, ptr noundef %11, i32 noundef -16, ptr noundef %push16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end13.if.end21_crit_edge, label %if.end13.cleanup69_crit_edge

if.end13.cleanup69_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21:                                         ; preds = %if.end13.if.end21_crit_edge, %if.end.if.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %hvmm)
  %tobool22.not = icmp eq i64 %hvmm, 0
  br i1 %tobool22.not, label %if.end21.do.body40_crit_edge, label %if.then23

if.end21.do.body40_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body40

if.then23:                                        ; preds = %if.end21
  %call24 = tail call ptr @nvkm_uvmm_search(ptr noundef %1, i64 noundef %hvmm) #8
  %cmp.i118 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call24 to i32
  br label %cleanup69

if.end28:                                         ; preds = %if.then23
  %mmu = getelementptr inbounds %struct.nvkm_vmm, ptr %call24, i32 0, i32 1
  %13 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmu, align 4
  %mmu29 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 35
  %15 = ptrtoint ptr %mmu29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmu29, align 8
  %cmp.not = icmp eq ptr %14, %16
  br i1 %cmp.not, label %if.end31, label %if.end28.cleanup69_crit_edge

if.end28.cleanup69_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

if.end31:                                         ; preds = %if.end28
  %17 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %inst, align 4
  %memory = getelementptr inbounds %struct.nvkm_gpuobj, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %memory, align 8
  %call33 = tail call i32 @nvkm_vmm_join(ptr noundef %call24, ptr noundef %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %cleanup, label %if.end31.cleanup69_crit_edge

if.end31.cleanup69_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

cleanup:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %call37 = tail call ptr @nvkm_vmm_ref(ptr noundef %call24) #8
  %vmm38 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 8
  %21 = ptrtoint ptr %vmm38 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call37, ptr %vmm38, align 4
  br label %do.body40

do.body40:                                        ; preds = %cleanup, %if.end21.do.body40_crit_edge
  %lock = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 5
  %call43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %mask = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 2
  %call46 = tail call i32 @_find_first_zero_bit_be(ptr noundef %mask, i32 noundef 4096) #8
  %conv47 = trunc i32 %call46 to i16
  %chid = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 5
  %22 = ptrtoint ptr %chid to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv47, ptr %chid, align 8
  %conv49 = and i32 %call46, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv49)
  %cmp50.not = icmp eq i32 %conv49, 0
  br i1 %cmp50.not, label %if.end54, label %if.then52

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call43) #8
  br label %cleanup69

if.end54:                                         ; preds = %do.body40
  %chan56 = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 4
  %23 = ptrtoint ptr %chan56 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chan56, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %chan56, ptr noundef %24) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end54.list_add.exit_crit_edge

if.end54.list_add.exit_crit_edge:                 ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %head, ptr %prev1.i.i, align 4
  %26 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %head, align 4
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %chan56, ptr %prev.i, align 4
  %28 = ptrtoint ptr %chan56 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %head, ptr %chan56, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end54.list_add.exit_crit_edge
  %29 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %chid, align 8
  %conv58 = zext i16 %30 to i32
  %rem.i = and i32 %conv58, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv58, 5
  %add.ptr.i = getelementptr i32, ptr %mask, i32 %div2.i
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %32
  store i32 %or.i, ptr %add.ptr.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call43) #8
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 8
  %resource_addr = getelementptr inbounds %struct.nvkm_device_func, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %resource_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %resource_addr, align 4
  %call63 = tail call i32 %36(ptr noundef %3, i32 noundef %bar) #8
  %add = add i32 %call63, %base
  %37 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %chid, align 8
  %conv65 = zext i16 %38 to i32
  %mul = mul i32 %conv65, %user
  %add66 = add i32 %add, %mul
  %conv67 = zext i32 %add66 to i64
  %addr = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 10
  %39 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv67, ptr %addr, align 8
  %size68 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 11
  %40 = ptrtoint ptr %size68 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %user, ptr %size68, align 8
  tail call void @nvkm_fifo_cevent(ptr noundef %fifo) #8
  br label %cleanup69

cleanup69:                                        ; preds = %list_add.exit, %if.then52, %if.end31.cleanup69_crit_edge, %if.end28.cleanup69_crit_edge, %if.then26, %if.end13.cleanup69_crit_edge, %if.then11, %entry.cleanup69_crit_edge
  %retval.1 = phi i32 [ %9, %if.then11 ], [ -28, %if.then52 ], [ 0, %list_add.exit ], [ %call, %entry.cleanup69_crit_edge ], [ %call17, %if.end13.cleanup69_crit_edge ], [ %call33, %if.end31.cleanup69_crit_edge ], [ -22, %if.end28.cleanup69_crit_edge ], [ %12, %if.then26 ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_dmaobj_search(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_bind(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_uvmm_search(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_join(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_vmm_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_cevent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_fifo_chan_dtor(ptr noundef %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %object, i32 -16
  %fifo1 = getelementptr i8, ptr %object, i32 -12
  %0 = ptrtoint ptr %fifo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo1, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call ptr %5(ptr noundef %add.ptr) #8
  %lock = getelementptr inbounds %struct.nvkm_fifo, ptr %1, i32 0, i32 5
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %head = getelementptr i8, ptr %object, i32 72
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %head, align 4
  %cmp.i.not = icmp eq ptr %7, %head
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %chid = getelementptr i8, ptr %object, i32 80
  %8 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %chid, align 8
  %conv9 = zext i16 %9 to i32
  %mask = getelementptr inbounds %struct.nvkm_fifo, ptr %1, i32 0, i32 2
  %rem.i = and i32 %conv9, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv9, 5
  %add.ptr.i = getelementptr i32, ptr %mask, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %11, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr i8, ptr %object, i32 76
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %18 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %head, align 4
  %prev.i = getelementptr i8, ptr %object, i32 76
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #8
  %user = getelementptr i8, ptr %object, i32 96
  %20 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %user, align 8
  %tobool12.not = icmp eq ptr %21, null
  br i1 %tobool12.not, label %if.end.if.end15_crit_edge, label %if.then13

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iounmap(ptr noundef nonnull %21) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end.if.end15_crit_edge
  %vmm = getelementptr i8, ptr %object, i32 92
  %22 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vmm, align 4
  %tobool16.not = icmp eq ptr %23, null
  br i1 %tobool16.not, label %if.end15.if.end20_crit_edge, label %if.then17

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %inst = getelementptr i8, ptr %object, i32 84
  %24 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %inst, align 4
  %memory = getelementptr inbounds %struct.nvkm_gpuobj, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %memory, align 8
  tail call void @nvkm_vmm_part(ptr noundef nonnull %23, ptr noundef %27) #8
  tail call void @nvkm_vmm_unref(ptr noundef %vmm) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end15.if.end20_crit_edge
  %push = getelementptr i8, ptr %object, i32 88
  tail call void @nvkm_gpuobj_del(ptr noundef %push) #8
  %inst21 = getelementptr i8, ptr %object, i32 84
  tail call void @nvkm_gpuobj_del(ptr noundef %inst21) #8
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_chan_init(ptr noundef %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %object, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %init = getelementptr inbounds %struct.nvkm_fifo_chan_func, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init, align 4
  tail call void %3(ptr noundef %add.ptr) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_chan_fini(ptr noundef %object, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %object, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %fini = getelementptr inbounds %struct.nvkm_fifo_chan_func, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fini, align 4
  tail call void %3(ptr noundef %add.ptr) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_chan_ntfy(ptr noundef %object, i32 noundef %type, ptr noundef %pevent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %object, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %ntfy = getelementptr inbounds %struct.nvkm_fifo_chan_func, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ntfy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ntfy, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %3(ptr noundef %add.ptr, i32 noundef %type, ptr noundef %pevent) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_fifo_chan_map(ptr nocapture noundef readonly %object, ptr nocapture noundef readnone %argv, i32 noundef %argc, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %addr, ptr nocapture noundef writeonly %size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %type, align 4
  %addr1 = getelementptr i8, ptr %object, i32 104
  %1 = ptrtoint ptr %addr1 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %addr1, align 8
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %addr, align 8
  %size2 = getelementptr i8, ptr %object, i32 112
  %4 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size2, align 8
  %conv = zext i32 %5 to i64
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %size, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_chan_rd32(ptr nocapture noundef %object, i64 noundef %addr, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %user = getelementptr i8, ptr %object, i32 96
  %0 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end9_crit_edge, !prof !32

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then:                                          ; preds = %entry
  %addr4 = getelementptr i8, ptr %object, i32 104
  %2 = ptrtoint ptr %addr4 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %addr4, align 8
  %conv = trunc i64 %3 to i32
  %size = getelementptr i8, ptr %object, i32 112
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 8
  %call = tail call ptr @ioremap(i32 noundef %conv, i32 noundef %5) #8
  %6 = ptrtoint ptr %user to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %user, align 8
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %if.then.cleanup_crit_edge, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %add = add i64 %addr, 4
  %size10 = getelementptr i8, ptr %object, i32 112
  %7 = ptrtoint ptr %size10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size10, align 8
  %conv11 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv11)
  %cmp = icmp ugt i64 %add, %conv11
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end20, !prof !32

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %user, align 8
  %idx.ext = trunc i64 %addr to i32
  %add.ptr22 = getelementptr i8, ptr %10, i32 %idx.ext
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #8, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !34
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end9.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -12, %if.then.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_chan_wr32(ptr nocapture noundef %object, i64 noundef %addr, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %user = getelementptr i8, ptr %object, i32 96
  %0 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end9_crit_edge, !prof !32

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then:                                          ; preds = %entry
  %addr4 = getelementptr i8, ptr %object, i32 104
  %2 = ptrtoint ptr %addr4 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %addr4, align 8
  %conv = trunc i64 %3 to i32
  %size = getelementptr i8, ptr %object, i32 112
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 8
  %call = tail call ptr @ioremap(i32 noundef %conv, i32 noundef %5) #8
  %6 = ptrtoint ptr %user to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %user, align 8
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %if.then.cleanup_crit_edge, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %add = add i64 %addr, 4
  %size10 = getelementptr i8, ptr %object, i32 112
  %7 = ptrtoint ptr %size10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size10, align 8
  %conv11 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv11)
  %cmp = icmp ugt i64 %add, %conv11
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %do.body, !prof !32

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !35
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %user, align 8
  %idx.ext = trunc i64 %addr to i32
  %add.ptr22 = getelementptr i8, ptr %10, i32 %idx.ext
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %data) #8, !srcloc !36
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end9.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %if.then.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_chan_child_get(ptr nocapture noundef readonly %object, i32 noundef %index, ptr noundef %oclass) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo1 = getelementptr i8, ptr %object, i32 -12
  %0 = ptrtoint ptr %fifo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo1, align 4
  %engm2 = getelementptr i8, ptr %object, i32 -8
  %2 = ptrtoint ptr %engm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %engm2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not84 = icmp eq i32 %3, 0
  br i1 %tobool.not84, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %4 = tail call i32 @llvm.cttz.i32(i32 %3, i1 true) #8, !range !37
  %engine5 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 10
  %oclass6 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %5 = phi i32 [ %4, %for.body.lr.ph ], [ %27, %for.inc.for.body_crit_edge ]
  %engm.086 = phi i32 [ %3, %for.body.lr.ph ], [ %conv47, %for.inc.for.body_crit_edge ]
  %index.addr.085 = phi i32 [ %index, %for.body.lr.ph ], [ %index.addr.1, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %id_engine = getelementptr inbounds %struct.nvkm_fifo_func, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %id_engine to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %id_engine, align 4
  %call3 = tail call ptr %9(ptr noundef %1, i32 noundef %5) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %10 = ptrtoint ptr %engine5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call3, ptr %engine5, align 8
  %11 = ptrtoint ptr %oclass6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %oclass6, align 4
  %12 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call3, align 4
  %sclass = getelementptr inbounds %struct.nvkm_engine_func, ptr %13, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sclass, align 4
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %if.end.while.cond_crit_edge, label %if.then10

if.end.while.cond_crit_edge:                      ; preds = %if.end
  br label %while.cond

if.then10:                                        ; preds = %if.end
  %call14 = tail call i32 %15(ptr noundef %oclass, i32 noundef %index.addr.085) #8
  %16 = ptrtoint ptr %oclass6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oclass6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool17.not = icmp eq i32 %17, 0
  br i1 %tobool17.not, label %if.end26, label %if.then18

if.then18:                                        ; preds = %if.then10
  %ctor = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %ctor to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctor, align 4
  %tobool20.not = icmp eq ptr %19, null
  br i1 %tobool20.not, label %if.then18.cleanup.sink.split.sink.split_crit_edge, label %if.then18.cleanup.sink.split_crit_edge

if.then18.cleanup.sink.split_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then18.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split

if.end26:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %index.addr.085, %call14
  br label %for.inc

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end.while.cond_crit_edge
  %c.0 = phi i32 [ %inc, %while.body.while.cond_crit_edge ], [ 0, %if.end.while.cond_crit_edge ]
  %oclass30 = getelementptr %struct.nvkm_engine_func, ptr %13, i32 0, i32 12, i32 %c.0, i32 2
  %20 = ptrtoint ptr %oclass30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %oclass30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool31.not = icmp eq i32 %21, 0
  br i1 %tobool31.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %inc = add i32 %c.0, 1
  %cmp = icmp eq i32 %index.addr.085, %c.0
  br i1 %cmp, label %if.then32, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.then32:                                        ; preds = %while.body
  %base.le = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1
  %arrayidx36 = getelementptr %struct.nvkm_engine_func, ptr %13, i32 0, i32 12, i32 %index.addr.085
  %22 = call ptr @memcpy(ptr %base.le, ptr %arrayidx36, i32 20)
  %ctor38 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %ctor38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctor38, align 4
  %tobool39.not = icmp eq ptr %24, null
  br i1 %tobool39.not, label %if.then32.cleanup.sink.split.sink.split_crit_edge, label %if.then32.cleanup.sink.split_crit_edge

if.then32.cleanup.sink.split_crit_edge:           ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then32.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %sub46 = sub i32 %index.addr.085, %c.0
  br label %for.inc

for.inc:                                          ; preds = %while.end, %if.end26, %for.body.for.inc_crit_edge
  %index.addr.1 = phi i32 [ %sub, %if.end26 ], [ %sub46, %while.end ], [ %index.addr.085, %for.body.for.inc_crit_edge ]
  %sh_prom = zext i32 %5 to i64
  %shl = shl nuw i64 1, %sh_prom
  %25 = trunc i64 %shl to i32
  %26 = xor i32 %25, -1
  %conv47 = and i32 %engm.086, %26
  %27 = tail call i32 @llvm.cttz.i32(i32 %conv47, i1 false) #8, !range !37
  %tobool.not = icmp eq i32 %conv47, 0
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split.sink.split:                    ; preds = %if.then32.cleanup.sink.split.sink.split_crit_edge, %if.then18.cleanup.sink.split.sink.split_crit_edge
  %ctor38.sink = phi ptr [ %ctor, %if.then18.cleanup.sink.split.sink.split_crit_edge ], [ %ctor38, %if.then32.cleanup.sink.split.sink.split_crit_edge ]
  %28 = ptrtoint ptr %ctor38.sink to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @nvkm_object_new, ptr %ctor38.sink, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.then32.cleanup.sink.split_crit_edge, %if.then18.cleanup.sink.split_crit_edge
  %29 = ptrtoint ptr %oclass to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @nvkm_fifo_chan_child_new, ptr %oclass, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_part(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_gpuobj_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_chan_child_new(ptr noundef %oclass, ptr noundef %data, i32 noundef %size, ptr nocapture noundef writeonly %pobject) #0 align 64 {
entry:
  %cclass = alloca %struct.nvkm_oclass, align 8
  %.compoundliteral = alloca %struct.nvkm_oclass, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %engine1 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 10
  %0 = ptrtoint ptr %engine1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine1, align 8
  %parent = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 9
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -16
  %fifo.i = getelementptr i8, ptr %3, i32 -12
  %4 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fifo.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %engine_id.i = getelementptr inbounds %struct.nvkm_fifo_func, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %engine_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %engine_id.i, align 4
  %call.i = tail call i32 %9(ptr noundef %5, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  %arrayidx.i = getelementptr %struct.nvkm_fifo_chan, ptr %add.ptr, i32 0, i32 12, i32 %call.i
  %retval.0.i = select i1 %cmp.i, ptr %arrayidx.i, ptr null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 96) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup88_crit_edge, label %if.end

entry.cleanup88_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup88

if.end:                                           ; preds = %entry
  tail call void @nvkm_oproxy_ctor(ptr noundef nonnull @nvkm_fifo_chan_child_func, ptr noundef %oclass, ptr noundef nonnull %call7.i.i) #8
  %chan3 = getelementptr inbounds %struct.nvkm_fifo_chan_object, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %chan3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr, ptr %chan3, align 8
  %base = getelementptr inbounds %struct.nvkm_oproxy, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %base, ptr %pobject, align 4
  %refcount = getelementptr inbounds %struct.nvkm_fifo_engn, ptr %retval.0.i, i32 0, i32 1
  %13 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %refcount, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end51_crit_edge

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cclass) #8
  %15 = call ptr @memset(ptr %cclass, i32 0, i32 72)
  %client = getelementptr inbounds %struct.nvkm_oclass, ptr %cclass, i32 0, i32 8
  %client10 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 8
  %16 = ptrtoint ptr %client10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client10, align 8
  %18 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %client, align 8
  %engine12 = getelementptr inbounds %struct.nvkm_oclass, ptr %cclass, i32 0, i32 10
  %19 = ptrtoint ptr %engine1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %engine1, align 8
  %21 = ptrtoint ptr %engine12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %engine12, align 8
  %vmm = getelementptr i8, ptr %3, i32 92
  %22 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vmm, align 4
  %tobool14.not = icmp eq ptr %23, null
  br i1 %tobool14.not, label %if.then6.if.end17_crit_edge, label %if.then15

if.then6.if.end17_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then15:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %type = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type, align 4
  %arrayidx = getelementptr %struct.nvkm_vmm, ptr %23, i32 0, i32 14, i32 %25
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #8
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #8, !srcloc !38
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then6.if.end17_crit_edge
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %fifo = getelementptr inbounds %struct.nvkm_engine_func, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fifo, align 4
  %tobool19.not = icmp eq ptr %30, null
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %call25 = call i32 %30(ptr noundef %add.ptr, ptr noundef nonnull %cclass, ptr noundef %retval.0.i) #8
  br label %if.end35

if.else:                                          ; preds = %if.end17
  %cclass27 = getelementptr inbounds %struct.nvkm_engine_func, ptr %28, i32 0, i32 11
  %31 = ptrtoint ptr %cclass27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cclass27, align 4
  %tobool28.not = icmp eq ptr %32, null
  br i1 %tobool28.not, label %if.else.if.end38_crit_edge, label %if.then29

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = call i32 @nvkm_object_new_(ptr noundef nonnull %32, ptr noundef nonnull %cclass, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i) #8
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %if.then20
  %ret.0 = phi i32 [ %call25, %if.then20 ], [ %call33, %if.then29 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool36.not = icmp eq i32 %ret.0, 0
  br i1 %tobool36.not, label %if.end35.if.end38_crit_edge, label %if.end35.cleanup.thread_crit_edge

if.end35.cleanup.thread_crit_edge:                ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end35.if.end38_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.end38:                                         ; preds = %if.end35.if.end38_crit_edge, %if.else.if.end38_crit_edge
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 8
  %engine_ctor = getelementptr inbounds %struct.nvkm_fifo_chan_func, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %engine_ctor to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %engine_ctor, align 4
  %tobool40.not = icmp eq ptr %36, null
  br i1 %tobool40.not, label %if.end38.cleanup_crit_edge, label %if.then41

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then41:                                        ; preds = %if.end38
  %37 = ptrtoint ptr %engine1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %engine1, align 8
  %39 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %retval.0.i, align 4
  %call46 = call i32 %36(ptr noundef %add.ptr, ptr noundef %38, ptr noundef %40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then41.cleanup_crit_edge, label %if.then41.cleanup.thread_crit_edge

if.then41.cleanup.thread_crit_edge:               ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then41.cleanup.thread_crit_edge, %if.end35.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ %call46, %if.then41.cleanup.thread_crit_edge ], [ %ret.0, %if.end35.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cclass) #8
  br label %cleanup88

cleanup:                                          ; preds = %if.then41.cleanup_crit_edge, %if.end38.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cclass) #8
  br label %if.end51

if.end51:                                         ; preds = %cleanup, %if.end.if.end51_crit_edge
  %base52 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1
  %ctor = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 4
  %41 = ptrtoint ptr %ctor to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctor, align 4
  %43 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %.compoundliteral, align 8
  %base54 = getelementptr inbounds %struct.nvkm_oclass, ptr %.compoundliteral, i32 0, i32 1
  %44 = call ptr @memcpy(ptr %base54, ptr %base52, i32 20)
  %priv = getelementptr inbounds %struct.nvkm_oclass, ptr %.compoundliteral, i32 0, i32 2
  %45 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %priv, align 8
  %engn56 = getelementptr inbounds %struct.nvkm_oclass, ptr %.compoundliteral, i32 0, i32 3
  %engn57 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 3
  %46 = ptrtoint ptr %engn57 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %engn57, align 4
  %48 = ptrtoint ptr %engn56 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %engn56, align 4
  %handle = getelementptr inbounds %struct.nvkm_oclass, ptr %.compoundliteral, i32 0, i32 4
  %handle58 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 4
  %49 = ptrtoint ptr %handle58 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %handle58, align 8
  %51 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %handle, align 8
  %route = getelementptr inbounds %struct.nvkm_oclass, ptr %.compoundliteral, i32 0, i32 5
  %52 = ptrtoint ptr %route to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %route, align 4
  %token = getelementptr inbounds %struct.nvkm_oclass, ptr %.compoundliteral, i32 0, i32 6
  %53 = ptrtoint ptr %token to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 0, ptr %token, align 8
  %object59 = getelementptr inbounds %struct.nvkm_oclass, ptr %.compoundliteral, i32 0, i32 7
  %object60 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 7
  %54 = ptrtoint ptr %object60 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %object60, align 8
  %56 = ptrtoint ptr %object59 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %object59, align 8
  %client61 = getelementptr inbounds %struct.nvkm_oclass, ptr %.compoundliteral, i32 0, i32 8
  %client62 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 8
  %57 = ptrtoint ptr %client62 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %client62, align 8
  %59 = ptrtoint ptr %client61 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %client61, align 8
  %parent63 = getelementptr inbounds %struct.nvkm_oclass, ptr %.compoundliteral, i32 0, i32 9
  %60 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %retval.0.i, align 4
  %tobool65.not = icmp eq ptr %61, null
  br i1 %tobool65.not, label %cond.false, label %if.end51.cond.end_crit_edge

if.end51.cond.end_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %parent, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end51.cond.end_crit_edge
  %cond = phi ptr [ %63, %cond.false ], [ %61, %if.end51.cond.end_crit_edge ]
  %64 = ptrtoint ptr %parent63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %cond, ptr %parent63, align 4
  %engine68 = getelementptr inbounds %struct.nvkm_oclass, ptr %.compoundliteral, i32 0, i32 10
  %65 = ptrtoint ptr %engine68 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %1, ptr %engine68, align 8
  %object70 = getelementptr inbounds %struct.nvkm_oproxy, ptr %call7.i.i, i32 0, i32 2
  %call71 = call i32 %42(ptr noundef nonnull %.compoundliteral, ptr noundef %data, i32 noundef %size, ptr noundef %object70) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %cond.end.cleanup88_crit_edge

cond.end.cleanup88_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup88

if.end74:                                         ; preds = %cond.end
  %66 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr, align 8
  %object_ctor = getelementptr inbounds %struct.nvkm_fifo_chan_func, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %object_ctor to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %object_ctor, align 4
  %tobool76.not = icmp eq ptr %69, null
  br i1 %tobool76.not, label %if.end74.if.end87_crit_edge, label %if.then77

if.end74.if.end87_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then77:                                        ; preds = %if.end74
  %70 = ptrtoint ptr %object70 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %object70, align 8
  %call82 = call i32 %69(ptr noundef %add.ptr, ptr noundef %71) #8
  %hash = getelementptr inbounds %struct.nvkm_fifo_chan_object, ptr %call7.i.i, i32 0, i32 2
  %72 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call82, ptr %hash, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp = icmp slt i32 %call82, 0
  br i1 %cmp, label %if.then77.cleanup88_crit_edge, label %if.then77.if.end87_crit_edge

if.then77.if.end87_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then77.cleanup88_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup88

if.end87:                                         ; preds = %if.then77.if.end87_crit_edge, %if.end74.if.end87_crit_edge
  br label %cleanup88

cleanup88:                                        ; preds = %if.end87, %if.then77.cleanup88_crit_edge, %cond.end.cleanup88_crit_edge, %cleanup.thread, %entry.cleanup88_crit_edge
  %retval.1 = phi i32 [ 0, %if.end87 ], [ -12, %entry.cleanup88_crit_edge ], [ %call71, %cond.end.cleanup88_crit_edge ], [ %call82, %if.then77.cleanup88_crit_edge ], [ %retval.0.ph, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_oproxy_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_new_(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_fifo_chan_child_del(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %engine2 = getelementptr inbounds %struct.nvkm_oproxy, ptr %base, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %engine2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine2, align 8
  %chan3 = getelementptr inbounds %struct.nvkm_fifo_chan_object, ptr %base, i32 0, i32 1
  %2 = ptrtoint ptr %chan3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan3, align 8
  %fifo.i = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fifo.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %engine_id.i = getelementptr inbounds %struct.nvkm_fifo_func, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %engine_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %engine_id.i, align 4
  %call.i = tail call i32 %9(ptr noundef %5, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  %arrayidx.i = getelementptr %struct.nvkm_fifo_chan, ptr %3, i32 0, i32 12, i32 %call.i
  %retval.0.i = select i1 %cmp.i, ptr %arrayidx.i, ptr null
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %object_dtor = getelementptr inbounds %struct.nvkm_fifo_chan_func, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %object_dtor to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %object_dtor, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hash = getelementptr inbounds %struct.nvkm_fifo_chan_object, ptr %base, i32 0, i32 2
  %14 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hash, align 4
  tail call void %13(ptr noundef %3, i32 noundef %15) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %refcount = getelementptr inbounds %struct.nvkm_fifo_engn, ptr %retval.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %refcount, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool6.not = icmp eq i32 %dec, 0
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then7:                                         ; preds = %if.end
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 8
  %engine_dtor = getelementptr inbounds %struct.nvkm_fifo_chan_func, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %engine_dtor to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %engine_dtor, align 4
  %tobool9.not = icmp eq ptr %21, null
  br i1 %tobool9.not, label %if.then7.if.end13_crit_edge, label %if.then10

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %21(ptr noundef %3, ptr noundef %1) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then7.if.end13_crit_edge
  tail call void @nvkm_object_del(ptr noundef %retval.0.i) #8
  %vmm = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %3, i32 0, i32 8
  %22 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vmm, align 4
  %tobool15.not = icmp eq ptr %23, null
  br i1 %tobool15.not, label %if.end13.if.end19_crit_edge, label %if.then16

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %type = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type, align 4
  %arrayidx = getelementptr %struct.nvkm_vmm, ptr %23, i32 0, i32 14, i32 %25
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #8
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #8, !srcloc !39
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13.if.end19_crit_edge, %if.end.if.end19_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_chan_child_init(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %object1 = getelementptr inbounds %struct.nvkm_oproxy, ptr %base, i32 0, i32 2
  %0 = ptrtoint ptr %object1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object1, align 8
  %engine2 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %engine2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %engine2, align 8
  %chan3 = getelementptr inbounds %struct.nvkm_fifo_chan_object, ptr %base, i32 0, i32 1
  %4 = ptrtoint ptr %chan3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan3, align 8
  %fifo.i = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fifo.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %engine_id.i = getelementptr inbounds %struct.nvkm_fifo_func, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %engine_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %engine_id.i, align 4
  %call.i = tail call i32 %11(ptr noundef %7, ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  %arrayidx.i = getelementptr %struct.nvkm_fifo_chan, ptr %5, i32 0, i32 12, i32 %call.i
  %retval.0.i = select i1 %cmp.i, ptr %arrayidx.i, ptr null
  %name4 = getelementptr inbounds %struct.nvkm_engine, ptr %3, i32 0, i32 1, i32 4
  %usecount = getelementptr inbounds %struct.nvkm_fifo_engn, ptr %retval.0.i, i32 0, i32 2
  %12 = ptrtoint ptr %usecount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usecount, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %usecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %retval.0.i, align 4
  %tobool6.not = icmp eq ptr %15, null
  br i1 %tobool6.not, label %if.end.if.end13_crit_edge, label %if.then7

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then7:                                         ; preds = %if.end
  %call9 = tail call i32 @nvkm_object_init(ptr noundef nonnull %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then7.if.end13_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end13:                                         ; preds = %if.then7.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 8
  %engine_init = getelementptr inbounds %struct.nvkm_fifo_chan_func, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %engine_init to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %engine_init, align 4
  %tobool14.not = icmp eq ptr %19, null
  br i1 %tobool14.not, label %if.end13.do.body33_crit_edge, label %if.then15

if.end13.do.body33_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body33

if.then15:                                        ; preds = %if.end13
  %call18 = tail call i32 %19(ptr noundef %5, ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then15.do.body33_crit_edge, label %do.body

if.then15.do.body33_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body33

do.body:                                          ; preds = %if.then15
  %client = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %5, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not = icmp eq i32 %23, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name25 = getelementptr inbounds %struct.nvkm_client, ptr %21, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %5, i32 0, i32 3, i32 4
  %24 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %handle, align 8
  %oclass = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %5, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %oclass, align 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name25, i32 noundef %25, i32 noundef %27, ptr noundef %name4, i32 noundef %call18) #12
  br label %cleanup

do.body33:                                        ; preds = %if.then15.do.body33_crit_edge, %if.end13.do.body33_crit_edge
  %client37 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %5, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %client37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %client37, align 4
  %debug38 = getelementptr inbounds %struct.nvkm_client, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %debug38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %cmp39 = icmp ugt i32 %31, 4
  br i1 %cmp39, label %do.end43, label %do.body33.cleanup_crit_edge

do.body33.cleanup_crit_edge:                      ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end43:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  %name45 = getelementptr inbounds %struct.nvkm_client, ptr %29, i32 0, i32 1
  %handle47 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %5, i32 0, i32 3, i32 4
  %32 = ptrtoint ptr %handle47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %handle47, align 8
  %oclass48 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %5, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %oclass48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %oclass48, align 4
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name45, i32 noundef %33, i32 noundef %35, ptr noundef %name4) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %do.body33.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call9, %if.then7.cleanup_crit_edge ], [ %call18, %do.end ], [ %call18, %do.body.cleanup_crit_edge ], [ 0, %do.end43 ], [ 0, %do.body33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_chan_child_fini(ptr nocapture noundef readonly %base, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %object1 = getelementptr inbounds %struct.nvkm_oproxy, ptr %base, i32 0, i32 2
  %0 = ptrtoint ptr %object1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object1, align 8
  %engine2 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %engine2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %engine2, align 8
  %chan3 = getelementptr inbounds %struct.nvkm_fifo_chan_object, ptr %base, i32 0, i32 1
  %4 = ptrtoint ptr %chan3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan3, align 8
  %fifo.i = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fifo.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %engine_id.i = getelementptr inbounds %struct.nvkm_fifo_func, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %engine_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %engine_id.i, align 4
  %call.i = tail call i32 %11(ptr noundef %7, ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  %arrayidx.i = getelementptr %struct.nvkm_fifo_chan, ptr %5, i32 0, i32 12, i32 %call.i
  %retval.0.i = select i1 %cmp.i, ptr %arrayidx.i, ptr null
  %name4 = getelementptr inbounds %struct.nvkm_engine, ptr %3, i32 0, i32 1, i32 4
  %usecount = getelementptr inbounds %struct.nvkm_fifo_engn, ptr %retval.0.i, i32 0, i32 2
  %12 = ptrtoint ptr %usecount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usecount, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %usecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 8
  %engine_fini = getelementptr inbounds %struct.nvkm_fifo_chan_func, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %engine_fini to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %engine_fini, align 4
  %tobool5.not = icmp eq ptr %17, null
  br i1 %tobool5.not, label %if.end.if.end24_crit_edge, label %if.then6

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then6:                                         ; preds = %if.end
  %call10 = tail call i32 %17(ptr noundef %5, ptr noundef %3, i1 noundef zeroext %suspend) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then6.if.end24_crit_edge, label %do.body

if.then6.if.end24_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

do.body:                                          ; preds = %if.then6
  %client = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %5, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not = icmp eq i32 %21, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name17 = getelementptr inbounds %struct.nvkm_client, ptr %19, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %5, i32 0, i32 3, i32 4
  %22 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %handle, align 8
  %oclass = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %5, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %oclass, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name17, i32 noundef %23, i32 noundef %25, ptr noundef %name4, i32 noundef %call10) #12
  br label %cleanup

if.end24:                                         ; preds = %if.then6.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %26 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %retval.0.i, align 4
  %tobool26.not = icmp eq ptr %27, null
  br i1 %tobool26.not, label %if.end24.do.body36_crit_edge, label %if.then27

if.end24.do.body36_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36

if.then27:                                        ; preds = %if.end24
  %call30 = tail call i32 @nvkm_object_fini(ptr noundef nonnull %27, i1 noundef zeroext %suspend) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp ne i32 %call30, 0
  %28 = and i1 %tobool31.not, %suspend
  br i1 %28, label %if.then27.cleanup_crit_edge, label %if.then27.do.body36_crit_edge

if.then27.do.body36_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body36:                                        ; preds = %if.then27.do.body36_crit_edge, %if.end24.do.body36_crit_edge
  %ret.1 = phi i32 [ %call30, %if.then27.do.body36_crit_edge ], [ 0, %if.end24.do.body36_crit_edge ]
  %client40 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %5, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %client40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %client40, align 4
  %debug41 = getelementptr inbounds %struct.nvkm_client, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %debug41 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debug41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %cmp42 = icmp ugt i32 %32, 4
  br i1 %cmp42, label %do.end46, label %do.body36.cleanup_crit_edge

do.body36.cleanup_crit_edge:                      ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end46:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  %name48 = getelementptr inbounds %struct.nvkm_client, ptr %30, i32 0, i32 1
  %handle50 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %5, i32 0, i32 3, i32 4
  %33 = ptrtoint ptr %handle50 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %handle50, align 8
  %oclass51 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %5, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %oclass51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %oclass51, align 4
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name48, i32 noundef %34, i32 noundef %36, ptr noundef %name4) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %do.body36.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call10, %do.end ], [ %call10, %do.body.cleanup_crit_edge ], [ %call30, %if.then27.cleanup_crit_edge ], [ %ret.1, %do.end46 ], [ %ret.1, %do.body36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @nvkm_fifo_chan_func, !1, !"nvkm_fifo_chan_func", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/chan.c", i32 349, i32 1}
!2 = !{ptr @nvkm_fifo_chan_child_func, !3, !"nvkm_fifo_chan_child_func", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/chan.c", i32 135, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/chan.c", i32 103, i32 4}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nvkm_fifo_chan_child_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @nvkm_fifo_chan_child_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/chan.c", i32 109, i32 2}
!12 = !{ptr @nvkm_fifo_chan_child_init._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @nvkm_fifo_chan_child_init._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/chan.c", i32 64, i32 4}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nvkm_fifo_chan_child_fini._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @nvkm_fifo_chan_child_fini._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/chan.c", i32 76, i32 2}
!21 = !{ptr @nvkm_fifo_chan_child_fini._entry.8, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @nvkm_fifo_chan_child_fini._entry_ptr.10, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"branch_weights", i32 1, i32 2000}
!33 = !{i64 5399626}
!34 = !{i64 2156279185}
!35 = !{i64 2156280868}
!36 = !{i64 5399208}
!37 = !{i32 0, i32 33}
!38 = !{i64 2148607673, i64 2148607699, i64 2148607728, i64 2148607762, i64 2148607793, i64 2148607816}
!39 = !{i64 2148610138, i64 2148610164, i64 2148610193, i64 2148610227, i64 2148610258, i64 2148610281}
