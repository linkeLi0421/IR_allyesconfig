; ModuleID = '/llk/IR_all_yes/net/caif/cfutill.c_pt.bc'
source_filename = "../net/caif/cfutill.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cflayer = type { ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, [16 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.cfsrvl = type { %struct.cflayer, i8, i8, i8, i8, ptr, %struct.dev_info, ptr, ptr, %struct.callback_head }
%struct.dev_info = type { ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.caif_payload_info = type { ptr, i16, i16 }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"util1\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cfutill_receive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013caif:%s(): caif:Assert detected:'%s'\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cfutill_receive\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/caif/cfutill.c\00", [45 x i8] zeroinitializer }, align 32
@cfutill_receive._entry_ptr = internal global ptr @cfutill_receive._entry, section ".printk_index", align 4
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"layr != NULL\00", [19 x i8] zeroinitializer }, align 32
@cfutill_receive._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfutill_receive._entry_ptr.6 = internal global ptr @cfutill_receive._entry.5, section ".printk_index", align 4
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"layr->up != NULL\00", [47 x i8] zeroinitializer }, align 32
@cfutill_receive._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfutill_receive._entry_ptr.9 = internal global ptr @cfutill_receive._entry.8, section ".printk_index", align 4
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"layr->up->receive != NULL\00", [38 x i8] zeroinitializer }, align 32
@cfutill_receive._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfutill_receive._entry_ptr.12 = internal global ptr @cfutill_receive._entry.11, section ".printk_index", align 4
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"layr->up->ctrlcmd != NULL\00", [38 x i8] zeroinitializer }, align 32
@cfutill_receive._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013caif:%s(): Packet is erroneous!\0A\00", [61 x i8] zeroinitializer }, align 32
@cfutill_receive._entry_ptr.16 = internal global ptr @cfutill_receive._entry.14, section ".printk_index", align 4
@cfutill_receive._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013caif:%s(): REMOTE SHUTDOWN REQUEST RECEIVED\0A\00", [49 x i8] zeroinitializer }, align 32
@cfutill_receive._entry_ptr.19 = internal global ptr @cfutill_receive._entry.17, section ".printk_index", align 4
@cfutill_receive._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014caif:%s(): Unknown service control %d (0x%x)\0A\00", [48 x i8] zeroinitializer }, align 32
@cfutill_receive._entry_ptr.22 = internal global ptr @cfutill_receive._entry.20, section ".printk_index", align 4
@cfutill_transmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.23, ptr @.str.3, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cfutill_transmit\00", [47 x i8] zeroinitializer }, align 32
@cfutill_transmit._entry_ptr = internal global ptr @cfutill_transmit._entry, section ".printk_index", align 4
@cfutill_transmit._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.23, ptr @.str.3, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfutill_transmit._entry_ptr.25 = internal global ptr @cfutill_transmit._entry.24, section ".printk_index", align 4
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"layr->dn != NULL\00", [47 x i8] zeroinitializer }, align 32
@cfutill_transmit._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.23, ptr @.str.3, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfutill_transmit._entry_ptr.28 = internal global ptr @cfutill_transmit._entry.27, section ".printk_index", align 4
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"layr->dn->transmit != NULL\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 128, i64 129, i64 130]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 36, i32 49 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 44, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 45, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 46, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 47, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 49, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 66, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 73, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 84, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 85, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [22 x i8] c"../net/caif/cfutill.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 86, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @cfutill_receive._entry, ptr @cfutill_receive._entry.11, ptr @cfutill_receive._entry.14, ptr @cfutill_receive._entry.17, ptr @cfutill_receive._entry.20, ptr @cfutill_receive._entry.5, ptr @cfutill_receive._entry.8, ptr @cfutill_receive._entry_ptr, ptr @cfutill_receive._entry_ptr.12, ptr @cfutill_receive._entry_ptr.16, ptr @cfutill_receive._entry_ptr.19, ptr @cfutill_receive._entry_ptr.22, ptr @cfutill_receive._entry_ptr.6, ptr @cfutill_receive._entry_ptr.9, ptr @cfutill_transmit._entry, ptr @cfutill_transmit._entry.24, ptr @cfutill_transmit._entry.27, ptr @cfutill_transmit._entry_ptr, ptr @cfutill_transmit._entry_ptr.25, ptr @cfutill_transmit._entry_ptr.28, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfutill_receive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfutill_receive._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfutill_receive._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfutill_receive._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfutill_receive._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfutill_receive._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfutill_receive._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfutill_transmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfutill_transmit._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfutill_transmit._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cfutill_create(i8 noundef zeroext %channel_id, ptr noundef %dev_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 84) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @cfsrvl_init(ptr noundef nonnull %call7.i.i, i8 noundef zeroext %channel_id, ptr noundef %dev_info, i1 noundef zeroext true) #5
  %receive = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %receive to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cfutill_receive, ptr %receive, align 8
  %transmit = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %transmit to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @cfutill_transmit, ptr %transmit, align 4
  %name = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 8
  %3 = call ptr @memcpy(ptr %name, ptr @.str, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfsrvl_init(ptr noundef, i8 noundef zeroext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfutill_receive(ptr noundef %layr, ptr noundef %pkt) #0 align 64 {
entry:
  %cmd = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd) #5
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %cmd, align 1
  %cmp.not = icmp eq ptr %layr, null
  br i1 %cmp.not, label %do.end, label %entry.do.body30_crit_edge

entry.do.body30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body30

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 44, i32 noundef 9, ptr noundef null) #5
  br label %do.body30

do.body30:                                        ; preds = %do.end, %entry.do.body30_crit_edge
  %1 = ptrtoint ptr %layr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %layr, align 4
  %cmp31.not = icmp eq ptr %2, null
  br i1 %cmp31.not, label %do.end35, label %do.body30.do.body75_crit_edge

do.body30.do.body75_crit_edge:                    ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body75

do.end35:                                         ; preds = %do.body30
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.7) #9
  %3 = ptrtoint ptr %layr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %layr, align 4
  %cmp40.not = icmp eq ptr %4, null
  br i1 %cmp40.not, label %do.end58, label %do.end35.do.body75_crit_edge, !prof !54

do.end35.do.body75_crit_edge:                     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body75

do.end58:                                         ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 45, i32 noundef 9, ptr noundef null) #5
  br label %do.body75

do.body75:                                        ; preds = %do.end58, %do.end35.do.body75_crit_edge, %do.body30.do.body75_crit_edge
  %5 = ptrtoint ptr %layr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %layr, align 4
  %receive = getelementptr inbounds %struct.cflayer, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %receive to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %receive, align 4
  %cmp77.not = icmp eq ptr %8, null
  br i1 %cmp77.not, label %do.end81, label %do.body75.do.body122_crit_edge

do.body75.do.body122_crit_edge:                   ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body122

do.end81:                                         ; preds = %do.body75
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10) #9
  %9 = ptrtoint ptr %layr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %layr, align 4
  %receive86 = getelementptr inbounds %struct.cflayer, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %receive86 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %receive86, align 4
  %cmp87.not = icmp eq ptr %12, null
  br i1 %cmp87.not, label %do.end105, label %do.end81.do.body122_crit_edge, !prof !54

do.end81.do.body122_crit_edge:                    ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body122

do.end105:                                        ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 46, i32 noundef 9, ptr noundef null) #5
  br label %do.body122

do.body122:                                       ; preds = %do.end105, %do.end81.do.body122_crit_edge, %do.body75.do.body122_crit_edge
  %13 = ptrtoint ptr %layr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %layr, align 4
  %ctrlcmd = getelementptr inbounds %struct.cflayer, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctrlcmd, align 4
  %cmp124.not = icmp eq ptr %16, null
  br i1 %cmp124.not, label %do.end128, label %do.body122.do.end168_crit_edge

do.body122.do.end168_crit_edge:                   ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end168

do.end128:                                        ; preds = %do.body122
  %call130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.13) #9
  %17 = ptrtoint ptr %layr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %layr, align 4
  %ctrlcmd133 = getelementptr inbounds %struct.cflayer, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %ctrlcmd133 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctrlcmd133, align 4
  %cmp134.not = icmp eq ptr %20, null
  br i1 %cmp134.not, label %do.end152, label %do.end128.do.end168_crit_edge, !prof !54

do.end128.do.end168_crit_edge:                    ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end168

do.end152:                                        ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 47, i32 noundef 9, ptr noundef null) #5
  br label %do.end168

do.end168:                                        ; preds = %do.end152, %do.end128.do.end168_crit_edge, %do.body122.do.end168_crit_edge
  %call169 = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %cmd, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %cmp170 = icmp slt i32 %call169, 0
  br i1 %cmp170, label %do.end174, label %if.end177

do.end174:                                        ; preds = %do.end168
  call void @__sanitizer_cov_trace_pc() #7
  %call176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2) #9
  call void @cfpkt_destroy(ptr noundef %pkt) #5
  br label %cleanup

if.end177:                                        ; preds = %do.end168
  %21 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cmd, align 1
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i8 %22, label %sw.default [
    i8 0, label %sw.bb
    i8 -127, label %sw.bb182
    i8 -128, label %sw.bb184
    i8 -126, label %do.end189
  ]

sw.bb:                                            ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %layr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %layr, align 4
  %receive179 = getelementptr inbounds %struct.cflayer, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %receive179 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %receive179, align 4
  %call181 = call i32 %27(ptr noundef %25, ptr noundef %pkt) #5
  br label %cleanup

sw.bb182:                                         ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #7
  %ctrlcmd183 = getelementptr inbounds %struct.cflayer, ptr %layr, i32 0, i32 5
  %28 = ptrtoint ptr %ctrlcmd183 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctrlcmd183, align 4
  call void %29(ptr noundef %layr, i32 noundef 0, i32 noundef 0) #5
  call void @cfpkt_destroy(ptr noundef %pkt) #5
  br label %cleanup

sw.bb184:                                         ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #7
  %ctrlcmd185 = getelementptr inbounds %struct.cflayer, ptr %layr, i32 0, i32 5
  %30 = ptrtoint ptr %ctrlcmd185 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctrlcmd185, align 4
  call void %31(ptr noundef %layr, i32 noundef 1, i32 noundef 0) #5
  call void @cfpkt_destroy(ptr noundef %pkt) #5
  br label %cleanup

do.end189:                                        ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #7
  %call191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2) #9
  %ctrlcmd192 = getelementptr inbounds %struct.cflayer, ptr %layr, i32 0, i32 5
  %32 = ptrtoint ptr %ctrlcmd192 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctrlcmd192, align 4
  call void %33(ptr noundef %layr, i32 noundef 2, i32 noundef 0) #5
  %open = getelementptr inbounds %struct.cfsrvl, ptr %layr, i32 0, i32 1
  %34 = ptrtoint ptr %open to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %open, align 4
  call void @cfpkt_destroy(ptr noundef %pkt) #5
  br label %cleanup

sw.default:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #7
  call void @cfpkt_destroy(ptr noundef %pkt) #5
  %35 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %cmd, align 1
  %conv197 = zext i8 %36 to i32
  %call199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, i32 noundef %conv197, i32 noundef %conv197) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %do.end189, %sw.bb184, %sw.bb182, %sw.bb, %do.end174
  %retval.0 = phi i32 [ -71, %do.end174 ], [ -71, %sw.default ], [ 0, %do.end189 ], [ 0, %sw.bb184 ], [ 0, %sw.bb182 ], [ %call181, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfutill_transmit(ptr noundef %layr, ptr noundef %pkt) #0 align 64 {
entry:
  %zero = alloca i8, align 1
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %zero) #5
  %0 = ptrtoint ptr %zero to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %zero, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #5
  %1 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ret, align 4, !annotation !55
  %cmp.not = icmp eq ptr %layr, null
  br i1 %cmp.not, label %do.end, label %entry.do.body30_crit_edge

entry.do.body30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body30

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.4) #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 84, i32 noundef 9, ptr noundef null) #5
  br label %do.body30

do.body30:                                        ; preds = %do.end, %entry.do.body30_crit_edge
  %dn = getelementptr inbounds %struct.cflayer, ptr %layr, i32 0, i32 1
  %2 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dn, align 4
  %cmp31.not = icmp eq ptr %3, null
  br i1 %cmp31.not, label %do.end35, label %do.body30.do.body75_crit_edge

do.body30.do.body75_crit_edge:                    ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body75

do.end35:                                         ; preds = %do.body30
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.26) #9
  %4 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dn, align 4
  %cmp40.not = icmp eq ptr %5, null
  br i1 %cmp40.not, label %do.end58, label %do.end35.do.body75_crit_edge, !prof !54

do.end35.do.body75_crit_edge:                     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body75

do.end58:                                         ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 85, i32 noundef 9, ptr noundef null) #5
  br label %do.body75

do.body75:                                        ; preds = %do.end58, %do.end35.do.body75_crit_edge, %do.body30.do.body75_crit_edge
  %6 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dn, align 4
  %transmit = getelementptr inbounds %struct.cflayer, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %transmit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transmit, align 4
  %cmp77.not = icmp eq ptr %9, null
  br i1 %cmp77.not, label %do.end81, label %do.body75.do.end121_crit_edge

do.body75.do.end121_crit_edge:                    ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end121

do.end81:                                         ; preds = %do.body75
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.29) #9
  %10 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dn, align 4
  %transmit86 = getelementptr inbounds %struct.cflayer, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %transmit86 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %transmit86, align 4
  %cmp87.not = icmp eq ptr %13, null
  br i1 %cmp87.not, label %do.end105, label %do.end81.do.end121_crit_edge, !prof !54

do.end81.do.end121_crit_edge:                     ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end121

do.end105:                                        ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 86, i32 noundef 9, ptr noundef null) #5
  br label %do.end121

do.end121:                                        ; preds = %do.end105, %do.end81.do.end121_crit_edge, %do.body75.do.end121_crit_edge
  %call122 = call zeroext i1 @cfsrvl_ready(ptr noundef %layr, ptr noundef nonnull %ret) #5
  br i1 %call122, label %if.end124, label %if.then123

if.then123:                                       ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #7
  call void @cfpkt_destroy(ptr noundef %pkt) #5
  %14 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ret, align 4
  br label %cleanup

if.end124:                                        ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #7
  %call125 = call i32 @cfpkt_add_head(ptr noundef %pkt, ptr noundef nonnull %zero, i16 noundef zeroext 1) #5
  %call126 = call ptr @cfpkt_info(ptr noundef %pkt) #5
  %id = getelementptr inbounds %struct.cflayer, ptr %layr, i32 0, i32 7
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 4
  %conv = trunc i32 %17 to i16
  %channel_id = getelementptr inbounds %struct.caif_payload_info, ptr %call126, i32 0, i32 2
  %18 = ptrtoint ptr %channel_id to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %channel_id, align 2
  %hdr_len = getelementptr inbounds %struct.caif_payload_info, ptr %call126, i32 0, i32 1
  %19 = ptrtoint ptr %hdr_len to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %hdr_len, align 4
  %dev_info = getelementptr inbounds %struct.cfsrvl, ptr %layr, i32 0, i32 6
  %20 = ptrtoint ptr %call126 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev_info, ptr %call126, align 4
  %21 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dn, align 4
  %transmit129 = getelementptr inbounds %struct.cflayer, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %transmit129 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %transmit129, align 4
  %call131 = call i32 %24(ptr noundef %22, ptr noundef %pkt) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end124, %if.then123
  %retval.0 = phi i32 [ %call131, %if.end124 ], [ %15, %if.then123 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %zero) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_extr_head(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfpkt_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfsrvl_ready(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_add_head(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfpkt_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/caif/cfutill.c", i32 36, i32 49}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/caif/cfutill.c", i32 44, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cfutill_receive._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @cfutill_receive._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cfutill_receive._entry.5, !10, !"_entry", i1 false, i1 false}
!10 = !{!"../net/caif/cfutill.c", i32 45, i32 2}
!11 = !{ptr @cfutill_receive._entry_ptr.6, !10, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @cfutill_receive._entry.8, !14, !"_entry", i1 false, i1 false}
!14 = !{!"../net/caif/cfutill.c", i32 46, i32 2}
!15 = !{ptr @cfutill_receive._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @cfutill_receive._entry.11, !18, !"_entry", i1 false, i1 false}
!18 = !{!"../net/caif/cfutill.c", i32 47, i32 2}
!19 = !{ptr @cfutill_receive._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/caif/cfutill.c", i32 49, i32 3}
!23 = !{ptr @cfutill_receive._entry.14, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @cfutill_receive._entry_ptr.16, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.18, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/caif/cfutill.c", i32 66, i32 3}
!27 = !{ptr @cfutill_receive._entry.17, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @cfutill_receive._entry_ptr.19, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.21, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/caif/cfutill.c", i32 73, i32 3}
!31 = !{ptr @cfutill_receive._entry.20, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @cfutill_receive._entry_ptr.22, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.23, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/caif/cfutill.c", i32 84, i32 2}
!35 = !{ptr @cfutill_transmit._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @cfutill_transmit._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @cfutill_transmit._entry.24, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../net/caif/cfutill.c", i32 85, i32 2}
!39 = !{ptr @cfutill_transmit._entry_ptr.25, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @cfutill_transmit._entry.27, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../net/caif/cfutill.c", i32 86, i32 2}
!43 = !{ptr @cfutill_transmit._entry_ptr.28, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.29, !42, !"<string literal>", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{!"auto-init"}
