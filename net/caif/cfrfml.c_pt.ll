; ModuleID = '/llk/IR_all_yes/net/caif/cfrfml.c_pt.bc'
source_filename = "../net/caif/cfrfml.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cfsrvl = type { %struct.cflayer, i8, i8, i8, i8, ptr, %struct.dev_info, ptr, ptr, %struct.callback_head }
%struct.cflayer = type { ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, [16 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.dev_info = type { ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.cfrfml = type { %struct.cfsrvl, ptr, i32, [6 x i8], i16, %struct.spinlock }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.caif_payload_info = type { ptr, i16, i16 }

@cfrfml_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&this->sync\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rfm%d\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cfrfml_receive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013caif:%s(): caif:Assert detected:'%s'\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cfrfml_receive\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/caif/cfrfml.c\00", [46 x i8] zeroinitializer }, align 32
@cfrfml_receive._entry_ptr = internal global ptr @cfrfml_receive._entry, section ".printk_index", align 4
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"layr->up != NULL\00", [47 x i8] zeroinitializer }, align 32
@cfrfml_receive._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfrfml_receive._entry_ptr.7 = internal global ptr @cfrfml_receive._entry.6, section ".printk_index", align 4
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"layr->receive != NULL\00", [42 x i8] zeroinitializer }, align 32
@cfrfml_receive._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016caif:%s(): Connection error %d triggered on RFM link\0A\00", [40 x i8] zeroinitializer }, align 32
@cfrfml_receive._entry_ptr.11 = internal global ptr @cfrfml_receive._entry.9, section ".printk_index", align 4
@cfrfml_transmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.12, ptr @.str.4, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cfrfml_transmit\00", [16 x i8] zeroinitializer }, align 32
@cfrfml_transmit._entry_ptr = internal global ptr @cfrfml_transmit._entry, section ".printk_index", align 4
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"layr->dn != NULL\00", [47 x i8] zeroinitializer }, align 32
@cfrfml_transmit._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.12, ptr @.str.4, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfrfml_transmit._entry_ptr.15 = internal global ptr @cfrfml_transmit._entry.14, section ".printk_index", align 4
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"layr->dn->transmit != NULL\00", [37 x i8] zeroinitializer }, align 32
@cfrfml_transmit._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.12, ptr @.str.4, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfrfml_transmit._entry_ptr.18 = internal global ptr @cfrfml_transmit._entry.17, section ".printk_index", align 4
@cfrfml_transmit_segment._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.19, ptr @.str.4, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cfrfml_transmit_segment\00", [40 x i8] zeroinitializer }, align 32
@cfrfml_transmit_segment._entry_ptr = internal global ptr @cfrfml_transmit_segment._entry, section ".printk_index", align 4
@.str.20 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"cfpkt_getlen(pkt) < rfml->fragment_size + RFM_HEAD_SIZE\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 64, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 66, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 106, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 107, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 180, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 222, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 223, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 285, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [21 x i8] c"../net/caif/cfrfml.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 198, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @cfrfml_receive._entry, ptr @cfrfml_receive._entry.6, ptr @cfrfml_receive._entry.9, ptr @cfrfml_receive._entry_ptr, ptr @cfrfml_receive._entry_ptr.11, ptr @cfrfml_receive._entry_ptr.7, ptr @cfrfml_transmit._entry, ptr @cfrfml_transmit._entry.14, ptr @cfrfml_transmit._entry.17, ptr @cfrfml_transmit._entry_ptr, ptr @cfrfml_transmit._entry_ptr.15, ptr @cfrfml_transmit._entry_ptr.18, ptr @cfrfml_transmit_segment._entry, ptr @cfrfml_transmit_segment._entry_ptr, ptr @cfrfml_create.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfrfml_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfrfml_receive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfrfml_receive._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfrfml_receive._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfrfml_transmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfrfml_transmit._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfrfml_transmit._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfrfml_transmit_segment._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cfrfml_create(i8 noundef zeroext %channel_id, ptr noundef %dev_info, i32 noundef %mtu_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 144) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @cfsrvl_init(ptr noundef nonnull %call7.i.i, i8 noundef zeroext %channel_id, ptr noundef %dev_info, i1 noundef zeroext false) #8
  %release = getelementptr inbounds %struct.cfsrvl, ptr %call7.i.i, i32 0, i32 5
  %1 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cfrfml_release, ptr %release, align 8
  %receive = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %receive to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @cfrfml_receive, ptr %receive, align 8
  %transmit = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %transmit to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @cfrfml_transmit, ptr %transmit, align 4
  %sub5 = add i32 %mtu_size, -13
  %div = sdiv i32 %sub5, 16
  %mul = shl nsw i32 %div, 4
  %fragment_size = getelementptr inbounds %struct.cfrfml, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %fragment_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul, ptr %fragment_size, align 8
  %sync = getelementptr inbounds %struct.cfrfml, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %sync, ptr noundef nonnull @.str, ptr noundef nonnull @cfrfml_create.__key, i16 noundef signext 3) #8
  %name = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 8
  %conv = zext i8 %channel_id to i32
  %call9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfsrvl_init(ptr noundef, i8 noundef zeroext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cfrfml_release(ptr noundef %layer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %incomplete_frm = getelementptr inbounds %struct.cfrfml, ptr %layer, i32 0, i32 1
  %0 = ptrtoint ptr %incomplete_frm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %incomplete_frm, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @cfpkt_destroy(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %layer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfrfml_receive(ptr noundef %layr, ptr noundef %pkt) #0 align 64 {
entry:
  %tmp = alloca i8, align 1
  %seghead = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #8
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !46
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %seghead) #8
  %1 = call ptr @memset(ptr %seghead, i32 255, i32 6)
  %2 = ptrtoint ptr %layr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %layr, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %do.end, label %entry.do.body32_crit_edge

entry.do.body32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5) #12
  %4 = ptrtoint ptr %layr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %layr, align 4
  %cmp4.not = icmp eq ptr %5, null
  br i1 %cmp4.not, label %do.end16, label %do.end.do.body32_crit_edge, !prof !47

do.end.do.body32_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

do.end16:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 106, i32 noundef 9, ptr noundef null) #8
  br label %do.body32

do.body32:                                        ; preds = %do.end16, %do.end.do.body32_crit_edge, %entry.do.body32_crit_edge
  %receive = getelementptr inbounds %struct.cflayer, ptr %layr, i32 0, i32 3
  %6 = ptrtoint ptr %receive to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %receive, align 4
  %cmp33.not = icmp eq ptr %7, null
  br i1 %cmp33.not, label %do.end37, label %do.body32.do.end76_crit_edge

do.body32.do.end76_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end76

do.end37:                                         ; preds = %do.body32
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.8) #12
  %8 = ptrtoint ptr %receive to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %receive, align 4
  %cmp42.not = icmp eq ptr %9, null
  br i1 %cmp42.not, label %do.end60, label %do.end37.do.end76_crit_edge, !prof !47

do.end37.do.end76_crit_edge:                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end76

do.end60:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 107, i32 noundef 9, ptr noundef null) #8
  br label %do.end76

do.end76:                                         ; preds = %do.end60, %do.end37.do.end76_crit_edge, %do.body32.do.end76_crit_edge
  %sync = getelementptr inbounds %struct.cfrfml, ptr %layr, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %sync) #8
  %call78 = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %tmp, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %do.end76.if.end150_crit_edge, label %if.end81

do.end76.if.end150_crit_edge:                     ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150

if.end81:                                         ; preds = %do.end76
  %10 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tmp, align 1
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool82.not = icmp eq i8 %12, 0
  %incomplete_frm117 = getelementptr inbounds %struct.cfrfml, ptr %layr, i32 0, i32 1
  %13 = ptrtoint ptr %incomplete_frm117 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %incomplete_frm117, align 4
  %tobool118.not = icmp eq ptr %14, null
  br i1 %tobool82.not, label %if.end116, label %if.then84

if.then84:                                        ; preds = %if.end81
  br i1 %tobool118.not, label %if.then87, label %if.else

if.then87:                                        ; preds = %if.then84
  %seghead88 = getelementptr inbounds %struct.cfrfml, ptr %layr, i32 0, i32 3
  %call89 = call i32 @cfpkt_peek_head(ptr noundef %pkt, ptr noundef %seghead88, i16 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90.not = icmp eq i32 %call89, 0
  br i1 %cmp90.not, label %if.end93, label %if.then87.if.end150_crit_edge

if.then87.if.end150_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150

if.end93:                                         ; preds = %if.then87
  %add.ptr96 = getelementptr %struct.cfrfml, ptr %layr, i32 0, i32 3, i32 4
  %15 = ptrtoint ptr %add.ptr96 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %add.ptr96, align 1
  %17 = call i16 @llvm.bswap.i16(i16 %16) #8
  %pdu_size = getelementptr inbounds %struct.cfrfml, ptr %layr, i32 0, i32 4
  %18 = ptrtoint ptr %pdu_size to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %pdu_size, align 2
  %call98 = call zeroext i1 @cfpkt_erroneous(ptr noundef %pkt) #8
  br i1 %call98, label %if.end93.if.end150_crit_edge, label %if.end100

if.end93.if.end150_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150

if.end100:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %incomplete_frm117 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pkt, ptr %incomplete_frm117, align 4
  br label %if.end168.thread

if.else:                                          ; preds = %if.then84
  %call.i = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %seghead, i16 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.else.if.end150_crit_edge, label %if.end.i

if.else.if.end150_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150

if.end.i:                                         ; preds = %if.else
  %seghead1.i = getelementptr inbounds %struct.cfrfml, ptr %layr, i32 0, i32 3
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %seghead, ptr noundef dereferenceable(6) %seghead1.i, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp3.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp3.not.i, label %rfm_append.exit, label %if.end.i.if.end150_crit_edge

if.end.i.if.end150_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150

rfm_append.exit:                                  ; preds = %if.end.i
  %20 = ptrtoint ptr %incomplete_frm117 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %incomplete_frm117, align 4
  %pdu_size.i = getelementptr inbounds %struct.cfrfml, ptr %layr, i32 0, i32 4
  %22 = ptrtoint ptr %pdu_size.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %pdu_size.i, align 2
  %add.i = add i16 %23, 7
  %call7.i = call ptr @cfpkt_append(ptr noundef %21, ptr noundef %pkt, i16 noundef zeroext %add.i) #8
  %cmp8.i = icmp eq ptr %call7.i, null
  br i1 %cmp8.i, label %rfm_append.exit.out_crit_edge, label %if.end107

rfm_append.exit.out_crit_edge:                    ; preds = %rfm_append.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end107:                                        ; preds = %rfm_append.exit
  %call108 = call zeroext i1 @cfpkt_erroneous(ptr noundef nonnull %call7.i) #8
  br i1 %call108, label %if.end107.out_crit_edge, label %if.end110

if.end107.out_crit_edge:                          ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end110:                                        ; preds = %if.end107
  %24 = ptrtoint ptr %incomplete_frm117 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i, ptr %incomplete_frm117, align 4
  %call112 = call zeroext i1 @cfpkt_erroneous(ptr noundef nonnull %call7.i) #8
  br i1 %call112, label %if.end110.out_crit_edge, label %if.end110.if.end168.thread_crit_edge

if.end110.if.end168.thread_crit_edge:             ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end168.thread

if.end110.out_crit_edge:                          ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end116:                                        ; preds = %if.end81
  br i1 %tobool118.not, label %if.end116.if.end138_crit_edge, label %if.then119

if.end116.if.end138_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138

if.then119:                                       ; preds = %if.end116
  %call.i223 = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %seghead, i16 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223)
  %cmp.i224 = icmp slt i32 %call.i223, 0
  br i1 %cmp.i224, label %if.then119.if.end150_crit_edge, label %if.end.i228

if.then119.if.end150_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150

if.end.i228:                                      ; preds = %if.then119
  %seghead1.i225 = getelementptr inbounds %struct.cfrfml, ptr %layr, i32 0, i32 3
  %bcmp.i226 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %seghead, ptr noundef dereferenceable(6) %seghead1.i225, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i226)
  %cmp3.not.i227 = icmp eq i32 %bcmp.i226, 0
  br i1 %cmp3.not.i227, label %rfm_append.exit237, label %if.end.i228.if.end150_crit_edge

if.end.i228.if.end150_crit_edge:                  ; preds = %if.end.i228
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150

rfm_append.exit237:                               ; preds = %if.end.i228
  %25 = ptrtoint ptr %incomplete_frm117 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %incomplete_frm117, align 4
  %pdu_size.i230 = getelementptr inbounds %struct.cfrfml, ptr %layr, i32 0, i32 4
  %27 = ptrtoint ptr %pdu_size.i230 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %pdu_size.i230, align 2
  %add.i231 = add i16 %28, 7
  %call7.i232 = call ptr @cfpkt_append(ptr noundef %26, ptr noundef %pkt, i16 noundef zeroext %add.i231) #8
  %cmp8.i233 = icmp eq ptr %call7.i232, null
  br i1 %cmp8.i233, label %rfm_append.exit237.out_crit_edge, label %if.end125

rfm_append.exit237.out_crit_edge:                 ; preds = %rfm_append.exit237
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end125:                                        ; preds = %rfm_append.exit237
  %call126 = call zeroext i1 @cfpkt_erroneous(ptr noundef nonnull %call7.i232) #8
  br i1 %call126, label %if.end125.out_crit_edge, label %if.end128

if.end125.out_crit_edge:                          ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end128:                                        ; preds = %if.end125
  %29 = ptrtoint ptr %incomplete_frm117 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %incomplete_frm117, align 4
  %30 = ptrtoint ptr %pdu_size.i230 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %pdu_size.i230, align 2
  %conv131 = zext i16 %31 to i32
  %call132 = call zeroext i16 @cfpkt_getlen(ptr noundef nonnull %call7.i232) #8
  %conv133 = zext i16 %call132 to i32
  %add = add nsw i32 %conv133, -6
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv131)
  %cmp134.not = icmp eq i32 %add, %conv131
  br i1 %cmp134.not, label %if.end128.if.end138_crit_edge, label %if.end128.if.then152_crit_edge

if.end128.if.then152_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then152

if.end128.if.end138_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138

if.end138:                                        ; preds = %if.end128.if.end138_crit_edge, %if.end116.if.end138_crit_edge
  %pkt.addr.1 = phi ptr [ %call7.i232, %if.end128.if.end138_crit_edge ], [ %pkt, %if.end116.if.end138_crit_edge ]
  %32 = ptrtoint ptr %layr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %layr, align 4
  %receive140 = getelementptr inbounds %struct.cflayer, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %receive140 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %receive140, align 4
  %call144 = call i32 %35(ptr noundef %33, ptr noundef %pkt.addr.1) #8
  br label %out

out:                                              ; preds = %if.end138, %if.end125.out_crit_edge, %rfm_append.exit237.out_crit_edge, %if.end110.out_crit_edge, %if.end107.out_crit_edge, %rfm_append.exit.out_crit_edge
  %err.2 = phi i32 [ %call144, %if.end138 ], [ -12, %rfm_append.exit237.out_crit_edge ], [ 0, %if.end125.out_crit_edge ], [ -12, %rfm_append.exit.out_crit_edge ], [ 0, %if.end107.out_crit_edge ], [ 0, %if.end110.out_crit_edge ]
  %tmppkt.2 = phi ptr [ null, %if.end138 ], [ null, %rfm_append.exit237.out_crit_edge ], [ %call7.i232, %if.end125.out_crit_edge ], [ null, %rfm_append.exit.out_crit_edge ], [ %call7.i, %if.end107.out_crit_edge ], [ %call7.i, %if.end110.out_crit_edge ]
  %pkt.addr.2 = phi ptr [ %pkt.addr.1, %if.end138 ], [ %pkt, %rfm_append.exit237.out_crit_edge ], [ %pkt, %if.end125.out_crit_edge ], [ %pkt, %rfm_append.exit.out_crit_edge ], [ %pkt, %if.end107.out_crit_edge ], [ %pkt, %if.end110.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %cmp145.not = icmp eq i32 %err.2, 0
  br i1 %cmp145.not, label %out.if.end168.thread_crit_edge, label %if.then147

out.if.end168.thread_crit_edge:                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end168.thread

if.then147:                                       ; preds = %out
  %tobool148.not = icmp eq ptr %tmppkt.2, null
  br i1 %tobool148.not, label %if.then147.if.end150_crit_edge, label %if.then149

if.then147.if.end150_crit_edge:                   ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150

if.then149:                                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #10
  call void @cfpkt_destroy(ptr noundef nonnull %tmppkt.2) #8
  br label %if.end150

if.end150:                                        ; preds = %if.then149, %if.then147.if.end150_crit_edge, %if.end.i228.if.end150_crit_edge, %if.then119.if.end150_crit_edge, %if.end.i.if.end150_crit_edge, %if.else.if.end150_crit_edge, %if.end93.if.end150_crit_edge, %if.then87.if.end150_crit_edge, %do.end76.if.end150_crit_edge
  %err.2251265 = phi i32 [ %err.2, %if.then149 ], [ %err.2, %if.then147.if.end150_crit_edge ], [ -71, %if.end.i228.if.end150_crit_edge ], [ -71, %if.then119.if.end150_crit_edge ], [ -71, %if.end.i.if.end150_crit_edge ], [ -71, %if.else.if.end150_crit_edge ], [ -71, %if.then87.if.end150_crit_edge ], [ -71, %if.end93.if.end150_crit_edge ], [ -71, %do.end76.if.end150_crit_edge ]
  %pkt.addr.2254264 = phi ptr [ %pkt.addr.2, %if.then149 ], [ %pkt.addr.2, %if.then147.if.end150_crit_edge ], [ %pkt, %if.end.i228.if.end150_crit_edge ], [ %pkt, %if.then119.if.end150_crit_edge ], [ %pkt, %if.end.i.if.end150_crit_edge ], [ %pkt, %if.else.if.end150_crit_edge ], [ %pkt, %if.then87.if.end150_crit_edge ], [ %pkt, %if.end93.if.end150_crit_edge ], [ %pkt, %do.end76.if.end150_crit_edge ]
  %tobool151.not = icmp eq ptr %pkt.addr.2254264, null
  br i1 %tobool151.not, label %if.end150.if.end153_crit_edge, label %if.end150.if.then152_crit_edge

if.end150.if.then152_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then152

if.end150.if.end153_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end153

if.then152:                                       ; preds = %if.end150.if.then152_crit_edge, %if.end128.if.then152_crit_edge
  %pkt.addr.2254264273 = phi ptr [ %pkt.addr.2254264, %if.end150.if.then152_crit_edge ], [ %call7.i232, %if.end128.if.then152_crit_edge ]
  %err.2251265271 = phi i32 [ %err.2251265, %if.end150.if.then152_crit_edge ], [ -71, %if.end128.if.then152_crit_edge ]
  call void @cfpkt_destroy(ptr noundef nonnull %pkt.addr.2254264273) #8
  br label %if.end153

if.end153:                                        ; preds = %if.then152, %if.end150.if.end153_crit_edge
  %err.2251265272 = phi i32 [ %err.2251265271, %if.then152 ], [ %err.2251265, %if.end150.if.end153_crit_edge ]
  %incomplete_frm154 = getelementptr inbounds %struct.cfrfml, ptr %layr, i32 0, i32 1
  %36 = ptrtoint ptr %incomplete_frm154 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %incomplete_frm154, align 4
  %tobool155.not = icmp eq ptr %37, null
  br i1 %tobool155.not, label %if.end153.if.end168_crit_edge, label %if.then156

if.end153.if.end168_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end168

if.then156:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #10
  call void @cfpkt_destroy(ptr noundef nonnull %37) #8
  br label %if.end168

if.end168.thread:                                 ; preds = %out.if.end168.thread_crit_edge, %if.end110.if.end168.thread_crit_edge, %if.end100
  call void @_raw_spin_unlock(ptr noundef %sync) #8
  br label %if.end179

if.end168:                                        ; preds = %if.then156, %if.end153.if.end168_crit_edge
  %38 = ptrtoint ptr %incomplete_frm154 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %incomplete_frm154, align 4
  %call164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef %err.2251265272) #12
  %39 = ptrtoint ptr %layr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %layr, align 4
  %ctrlcmd = getelementptr inbounds %struct.cflayer, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctrlcmd, align 4
  %id = getelementptr inbounds %struct.cfsrvl, ptr %layr, i32 0, i32 6, i32 1
  %43 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id, align 4
  call void %42(ptr noundef %40, i32 noundef 2, i32 noundef %44) #8
  call void @_raw_spin_unlock(ptr noundef %sync) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %err.2251265272)
  %cmp170 = icmp eq i32 %err.2251265272, -11
  br i1 %cmp170, label %if.then178, label %if.end168.if.end179_crit_edge, !prof !47

if.end168.if.end179_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end179

if.then178:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end179

if.end179:                                        ; preds = %if.then178, %if.end168.if.end179_crit_edge, %if.end168.thread
  %err.3 = phi i32 [ -5, %if.then178 ], [ %err.2251265272, %if.end168.if.end179_crit_edge ], [ 0, %if.end168.thread ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %seghead) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #8
  ret i32 %err.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfrfml_transmit(ptr noundef %layr, ptr noundef %pkt) #0 align 64 {
entry:
  %err = alloca i32, align 4
  %seg = alloca i8, align 1
  %head = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #8
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %err, align 4, !annotation !46
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %seg) #8
  %1 = ptrtoint ptr %seg to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %seg, align 1, !annotation !46
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %head) #8
  %dn = getelementptr inbounds %struct.cflayer, ptr %layr, i32 0, i32 1
  %2 = call ptr @memset(ptr %head, i32 255, i32 6)
  %3 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dn, align 4
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %do.end, label %entry.do.body32_crit_edge

entry.do.body32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #12
  %5 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dn, align 4
  %cmp4.not = icmp eq ptr %6, null
  br i1 %cmp4.not, label %do.end16, label %do.end.do.body32_crit_edge, !prof !47

do.end.do.body32_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

do.end16:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 222, i32 noundef 9, ptr noundef null) #8
  br label %do.body32

do.body32:                                        ; preds = %do.end16, %do.end.do.body32_crit_edge, %entry.do.body32_crit_edge
  %7 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dn, align 4
  %transmit = getelementptr inbounds %struct.cflayer, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %transmit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %transmit, align 4
  %cmp34.not = icmp eq ptr %10, null
  br i1 %cmp34.not, label %do.end38, label %do.body32.do.end78_crit_edge

do.body32.do.end78_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end78

do.end38:                                         ; preds = %do.body32
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.16) #12
  %11 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dn, align 4
  %transmit43 = getelementptr inbounds %struct.cflayer, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %transmit43 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %transmit43, align 4
  %cmp44.not = icmp eq ptr %14, null
  br i1 %cmp44.not, label %do.end62, label %do.end38.do.end78_crit_edge, !prof !47

do.end38.do.end78_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end78

do.end62:                                         ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 223, i32 noundef 9, ptr noundef null) #8
  br label %do.end78

do.end78:                                         ; preds = %do.end62, %do.end38.do.end78_crit_edge, %do.body32.do.end78_crit_edge
  %call79 = call zeroext i1 @cfsrvl_ready(ptr noundef %layr, ptr noundef nonnull %err) #8
  br i1 %call79, label %if.end81, label %do.end78.outthread-pre-split_crit_edge

do.end78.outthread-pre-split_crit_edge:           ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %outthread-pre-split

if.end81:                                         ; preds = %do.end78
  %15 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -71, ptr %err, align 4
  %call82 = call zeroext i16 @cfpkt_getlen(ptr noundef %pkt) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %call82)
  %cmp83 = icmp ult i16 %call82, 7
  br i1 %cmp83, label %if.end81.outthread-pre-split_crit_edge, label %if.end86

if.end81.outthread-pre-split_crit_edge:           ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %outthread-pre-split

if.end86:                                         ; preds = %if.end81
  %16 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %err, align 4
  %call87 = call zeroext i16 @cfpkt_getlen(ptr noundef %pkt) #8
  %conv88 = zext i16 %call87 to i32
  %fragment_size = getelementptr inbounds %struct.cfrfml, ptr %layr, i32 0, i32 2
  %17 = ptrtoint ptr %fragment_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fragment_size, align 4
  %add = add i32 %18, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv88)
  %cmp89 = icmp slt i32 %add, %conv88
  br i1 %cmp89, label %if.then91, label %if.end93thread-pre-split

if.then91:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %call92 = call i32 @cfpkt_peek_head(ptr noundef %pkt, ptr noundef nonnull %head, i16 noundef zeroext 6) #8
  %19 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call92, ptr %err, align 4
  br label %if.end93

if.end93thread-pre-split:                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %err, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.end93thread-pre-split, %if.then91
  %21 = phi i32 [ %.pr, %if.end93thread-pre-split ], [ %call92, %if.then91 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp94.not = icmp eq i32 %21, 0
  br i1 %cmp94.not, label %if.end93.while.cond_crit_edge, label %if.end93.outthread-pre-split_crit_edge

if.end93.outthread-pre-split_crit_edge:           ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %outthread-pre-split

if.end93.while.cond_crit_edge:                    ; preds = %if.end93
  br label %while.cond

while.cond:                                       ; preds = %if.end120.while.cond_crit_edge, %if.end93.while.cond_crit_edge
  %frontpkt.0 = phi ptr [ %call111, %if.end120.while.cond_crit_edge ], [ %pkt, %if.end93.while.cond_crit_edge ]
  %call98 = call zeroext i16 @cfpkt_getlen(ptr noundef %frontpkt.0) #8
  %conv99 = zext i16 %call98 to i32
  %22 = ptrtoint ptr %fragment_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fragment_size, align 4
  %add101 = add i32 %23, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %add101, i32 %conv99)
  %cmp102 = icmp slt i32 %add101, %conv99
  br i1 %cmp102, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = ptrtoint ptr %seg to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %seg, align 1
  %25 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -71, ptr %err, align 4
  %call104 = call i32 @cfpkt_add_head(ptr noundef %frontpkt.0, ptr noundef nonnull %seg, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %while.body.outthread-pre-split_crit_edge, label %if.end108

while.body.outthread-pre-split_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %outthread-pre-split

if.end108:                                        ; preds = %while.body
  %26 = ptrtoint ptr %fragment_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fragment_size, align 4
  %conv110 = trunc i32 %27 to i16
  %call111 = call ptr @cfpkt_split(ptr noundef %frontpkt.0, i16 noundef zeroext %conv110) #8
  %cmp112 = icmp eq ptr %call111, null
  br i1 %cmp112, label %if.end108.outthread-pre-split_crit_edge, label %if.end115

if.end108.outthread-pre-split_crit_edge:          ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %outthread-pre-split

if.end115:                                        ; preds = %if.end108
  %call116 = call fastcc i32 @cfrfml_transmit_segment(ptr noundef %layr, ptr noundef %frontpkt.0)
  %28 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call116, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp117.not = icmp eq i32 %call116, 0
  br i1 %cmp117.not, label %if.end120, label %if.end115.do.end138_crit_edge

if.end115.do.end138_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end138

if.end120:                                        ; preds = %if.end115
  %29 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -71, ptr %err, align 4
  %call122 = call i32 @cfpkt_add_head(ptr noundef nonnull %call111, ptr noundef nonnull %head, i16 noundef zeroext 6) #8
  %cmp123 = icmp slt i32 %call122, 0
  br i1 %cmp123, label %if.end120.outthread-pre-split_crit_edge, label %if.end120.while.cond_crit_edge

if.end120.while.cond_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.end120.outthread-pre-split_crit_edge:          ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %outthread-pre-split

while.end:                                        ; preds = %while.cond
  %30 = ptrtoint ptr %seg to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %seg, align 1
  %31 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -71, ptr %err, align 4
  %call127 = call i32 @cfpkt_add_head(ptr noundef %frontpkt.0, ptr noundef nonnull %seg, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %cmp128 = icmp slt i32 %call127, 0
  br i1 %cmp128, label %while.end.outthread-pre-split_crit_edge, label %if.end131

while.end.outthread-pre-split_crit_edge:          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %outthread-pre-split

if.end131:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %call132 = call fastcc i32 @cfrfml_transmit_segment(ptr noundef %layr, ptr noundef %frontpkt.0)
  %32 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call132, ptr %err, align 4
  br label %out

outthread-pre-split:                              ; preds = %while.end.outthread-pre-split_crit_edge, %if.end120.outthread-pre-split_crit_edge, %if.end108.outthread-pre-split_crit_edge, %while.body.outthread-pre-split_crit_edge, %if.end93.outthread-pre-split_crit_edge, %if.end81.outthread-pre-split_crit_edge, %do.end78.outthread-pre-split_crit_edge
  %frontpkt.1.ph = phi ptr [ %pkt, %do.end78.outthread-pre-split_crit_edge ], [ %frontpkt.0, %while.end.outthread-pre-split_crit_edge ], [ %pkt, %if.end93.outthread-pre-split_crit_edge ], [ %pkt, %if.end81.outthread-pre-split_crit_edge ], [ %frontpkt.0, %while.body.outthread-pre-split_crit_edge ], [ %frontpkt.0, %if.end108.outthread-pre-split_crit_edge ], [ %call111, %if.end120.outthread-pre-split_crit_edge ]
  %33 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr178 = load i32, ptr %err, align 4
  br label %out

out:                                              ; preds = %outthread-pre-split, %if.end131
  %34 = phi i32 [ %.pr178, %outthread-pre-split ], [ %call132, %if.end131 ]
  %frontpkt.1 = phi ptr [ %frontpkt.1.ph, %outthread-pre-split ], [ null, %if.end131 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp133.not = icmp eq i32 %34, 0
  br i1 %cmp133.not, label %out.if.end149_crit_edge, label %out.do.end138_crit_edge

out.do.end138_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end138

out.if.end149_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149

do.end138:                                        ; preds = %out.do.end138_crit_edge, %if.end115.do.end138_crit_edge
  %rearpkt.1183 = phi ptr [ null, %out.do.end138_crit_edge ], [ %call111, %if.end115.do.end138_crit_edge ]
  %frontpkt.1182 = phi ptr [ %frontpkt.1, %out.do.end138_crit_edge ], [ null, %if.end115.do.end138_crit_edge ]
  %35 = phi i32 [ %34, %out.do.end138_crit_edge ], [ %call116, %if.end115.do.end138_crit_edge ]
  %call140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12, i32 noundef %35) #12
  %36 = ptrtoint ptr %layr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %layr, align 4
  %ctrlcmd = getelementptr inbounds %struct.cflayer, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctrlcmd, align 4
  %id = getelementptr inbounds %struct.cfsrvl, ptr %layr, i32 0, i32 6, i32 1
  %40 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %id, align 4
  call void %39(ptr noundef %37, i32 noundef 2, i32 noundef %41) #8
  %tobool143.not = icmp eq ptr %rearpkt.1183, null
  br i1 %tobool143.not, label %do.end138.if.end145_crit_edge, label %if.then144

do.end138.if.end145_crit_edge:                    ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

if.then144:                                       ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #10
  call void @cfpkt_destroy(ptr noundef nonnull %rearpkt.1183) #8
  br label %if.end145

if.end145:                                        ; preds = %if.then144, %do.end138.if.end145_crit_edge
  %tobool146.not = icmp eq ptr %frontpkt.1182, null
  br i1 %tobool146.not, label %if.end145.if.end149_crit_edge, label %if.then147

if.end145.if.end149_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149

if.then147:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  call void @cfpkt_destroy(ptr noundef nonnull %frontpkt.1182) #8
  br label %if.end149

if.end149:                                        ; preds = %if.then147, %if.end145.if.end149_crit_edge, %out.if.end149_crit_edge
  %42 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %err, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %head) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %seg) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #8
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfpkt_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_extr_head(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_peek_head(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfpkt_erroneous(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @cfpkt_getlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfpkt_append(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfsrvl_ready(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_add_head(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfpkt_split(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cfrfml_transmit_segment(ptr noundef %rfml, ptr noundef %pkt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @cfpkt_getlen(ptr noundef %pkt) #8
  %conv = zext i16 %call to i32
  %fragment_size = getelementptr inbounds %struct.cfrfml, ptr %rfml, i32 0, i32 2
  %0 = ptrtoint ptr %fragment_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fragment_size, align 4
  %add = add i32 %1, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp = icmp sgt i32 %add, %conv
  br i1 %cmp, label %entry.do.end35_crit_edge, label %do.end

entry.do.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #12
  %call4 = tail call zeroext i16 @cfpkt_getlen(ptr noundef %pkt) #8
  %conv5 = zext i16 %call4 to i32
  %2 = ptrtoint ptr %fragment_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fragment_size, align 4
  %add7 = add i32 %3, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %add7, i32 %conv5)
  %cmp8.not = icmp sgt i32 %add7, %conv5
  br i1 %cmp8.not, label %do.end.do.end35_crit_edge, label %do.end20, !prof !48

do.end.do.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

do.end20:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 198, i32 noundef 9, ptr noundef null) #8
  br label %do.end35

do.end35:                                         ; preds = %do.end20, %do.end.do.end35_crit_edge, %entry.do.end35_crit_edge
  %id = getelementptr inbounds %struct.cflayer, ptr %rfml, i32 0, i32 7
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %conv36 = trunc i32 %5 to i16
  %call37 = tail call ptr @cfpkt_info(ptr noundef %pkt) #8
  %channel_id = getelementptr inbounds %struct.caif_payload_info, ptr %call37, i32 0, i32 2
  %6 = ptrtoint ptr %channel_id to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv36, ptr %channel_id, align 2
  %call38 = tail call ptr @cfpkt_info(ptr noundef %pkt) #8
  %hdr_len = getelementptr inbounds %struct.caif_payload_info, ptr %call38, i32 0, i32 1
  %7 = ptrtoint ptr %hdr_len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 7, ptr %hdr_len, align 4
  %dev_info = getelementptr inbounds %struct.cfsrvl, ptr %rfml, i32 0, i32 6
  %call40 = tail call ptr @cfpkt_info(ptr noundef %pkt) #8
  %8 = ptrtoint ptr %call40 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev_info, ptr %call40, align 4
  %dn = getelementptr inbounds %struct.cflayer, ptr %rfml, i32 0, i32 1
  %9 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dn, align 4
  %transmit = getelementptr inbounds %struct.cflayer, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %transmit to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %transmit, align 4
  %call47 = tail call i32 %12(ptr noundef %10, ptr noundef %pkt) #8
  ret i32 %call47
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfpkt_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !34, !35, !36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @cfrfml_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/caif/cfrfml.c", i32 64, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../net/caif/cfrfml.c", i32 66, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../net/caif/cfrfml.c", i32 106, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cfrfml_receive._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @cfrfml_receive._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @cfrfml_receive._entry.6, !13, !"_entry", i1 false, i1 false}
!13 = !{!"../net/caif/cfrfml.c", i32 107, i32 2}
!14 = !{ptr @cfrfml_receive._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/caif/cfrfml.c", i32 180, i32 3}
!18 = !{ptr @cfrfml_receive._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @cfrfml_receive._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/caif/cfrfml.c", i32 222, i32 2}
!22 = !{ptr @cfrfml_transmit._entry, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @cfrfml_transmit._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @cfrfml_transmit._entry.14, !26, !"_entry", i1 false, i1 false}
!26 = !{!"../net/caif/cfrfml.c", i32 223, i32 2}
!27 = !{ptr @cfrfml_transmit._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @cfrfml_transmit._entry.17, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../net/caif/cfrfml.c", i32 285, i32 3}
!31 = !{ptr @cfrfml_transmit._entry_ptr.18, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/caif/cfrfml.c", i32 198, i32 2}
!34 = !{ptr @cfrfml_transmit_segment._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @cfrfml_transmit_segment._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"auto-init"}
!47 = !{!"branch_weights", i32 1, i32 2000}
!48 = !{!"branch_weights", i32 2000, i32 1}
