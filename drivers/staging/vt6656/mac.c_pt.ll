; ModuleID = '/llk/IR_all_yes/drivers/staging/vt6656/mac.c_pt.bc'
source_filename = "../drivers/staging/vt6656/mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.vnt_mac_set_key = type { %union.anon.138, [16 x i8] }
%union.anon.138 = type { [2 x i32] }
%struct.anon.139 = type { [6 x i8], i16 }
%struct.vnt_private = type { ptr, ptr, i8, ptr, ptr, i64, i32, i32, %struct.spinlock, %struct.mutex, i32, ptr, i32, [128 x ptr], i32, [128 x ptr], %struct.usb_anchor, i32, %struct.vnt_interrupt_buffer, i16, i8, i8, i8, %struct.vnt_cmd_card_init, %struct.vnt_rsp_card_init, i8, [6 x i8], [6 x i8], i8, i64, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i8, i8, [256 x i8], i8, i8, i8, i8, i8, [14 x i8], [14 x i8], [42 x i8], i16, i16, i32, i32, i16, i16, i32, i32, [32 x i32], i32, i32, i32, i32, i32, i8, [4 x i8], i8, i8, %struct.delayed_work, %struct.ieee80211_low_level_stats }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vnt_interrupt_buffer = type { ptr }
%struct.vnt_cmd_card_init = type { i8, i8, [6 x i8], i8, i8 }
%struct.vnt_rsp_card_init = type { i8, [6 x i8], i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@vnt_mac_set_keyentry.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vt6656_stage\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vnt_mac_set_keyentry\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/staging/vt6656/mac.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"offset %d key ctl %d set key %24ph\0A\00", [60 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [32 x i8] c"../drivers/staging/vt6656/mac.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 72, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_mac_set_filter(ptr noundef %priv, i64 noundef %mc_filter) local_unnamed_addr #0 align 64 {
entry:
  %le_mc = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %le_mc) #4
  %0 = tail call i64 @llvm.bswap.i64(i64 %mc_filter)
  %1 = ptrtoint ptr %le_mc to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %le_mc, align 8
  %call = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 0, i16 noundef zeroext 212, i16 noundef zeroext 3, i16 noundef zeroext 8, ptr noundef nonnull %le_mc) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %le_mc) #4
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_control_out(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_mac_shutdown(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 7, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_mac_set_bb_type(ptr noundef %priv, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #4
  %0 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %type, ptr %data, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %0, align 1
  %call = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 4, i16 noundef zeroext 76, i16 noundef zeroext 3, i16 noundef zeroext 2, ptr noundef nonnull %data) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_mac_disable_keyentry(ptr noundef %priv, i8 noundef zeroext %entry_idx) local_unnamed_addr #0 align 64 {
entry:
  %entry_idx.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %entry_idx.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %entry_idx, ptr %entry_idx.addr, align 1
  %call = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 9, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %entry_idx.addr) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_mac_set_keyentry(ptr noundef %priv, i16 noundef zeroext %key_ctl, i32 noundef %entry_idx, i32 noundef %key_idx, ptr nocapture noundef readonly %addr, ptr nocapture noundef readonly %key) local_unnamed_addr #0 align 64 {
entry:
  %set_key = alloca %struct.vnt_mac_set_key, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %set_key) #4
  %0 = getelementptr inbounds [2 x i32], ptr %set_key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.vnt_mac_set_key, ptr %set_key, i32 0, i32 1
  %2 = trunc i32 %entry_idx to i16
  %3 = mul i16 %2, 22
  %conv1 = add i16 %3, 32
  %4 = tail call i16 @llvm.bswap.i16(i16 %key_ctl)
  %key_ctl2 = getelementptr inbounds %struct.anon.139, ptr %set_key, i32 0, i32 1
  %5 = getelementptr inbounds i8, ptr %set_key, i32 8
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %7 = ptrtoint ptr %key_ctl2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %4, ptr %key_ctl2, align 2
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i, align 2
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %0, align 4
  %13 = load i32, ptr %0, align 4
  %14 = ptrtoint ptr %set_key to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %set_key, align 4
  store i32 %9, ptr %0, align 4
  %15 = call ptr @memcpy(ptr %1, ptr %key, i32 16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_mac_set_keyentry.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_mac_set_keyentry, %if.then)) #4
          to label %do.end20 [label %if.then], !srcloc !15

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %usb = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %16 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  %conv17 = zext i16 %conv1 to i32
  %conv18 = zext i16 %key_ctl to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_mac_set_keyentry.__UNIQUE_ID_ddebug383, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %conv17, i32 noundef %conv18, ptr noundef nonnull %set_key) #4
  br label %do.end20

do.end20:                                         ; preds = %if.then, %entry
  %conv21 = trunc i32 %key_idx to i16
  %call22 = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 8, i16 noundef zeroext %conv1, i16 noundef zeroext %conv21, i16 noundef zeroext 24, ptr noundef nonnull %set_key) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %set_key) #4
  ret i32 %call22
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_mac_reg_bits_off(ptr noundef %priv, i8 noundef zeroext %reg_ofs, i8 noundef zeroext %bits) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #4
  %0 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %data, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bits, ptr %0, align 1
  %conv = zext i8 %reg_ofs to i16
  %call = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 4, i16 noundef zeroext %conv, i16 noundef zeroext 3, i16 noundef zeroext 2, ptr noundef nonnull %data) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_mac_reg_bits_on(ptr noundef %priv, i8 noundef zeroext %reg_ofs, i8 noundef zeroext %bits) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #4
  %0 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %bits, ptr %data, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bits, ptr %0, align 1
  %conv = zext i8 %reg_ofs to i16
  %call = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 4, i16 noundef zeroext %conv, i16 noundef zeroext 3, i16 noundef zeroext 2, ptr noundef nonnull %data) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_mac_write_word(ptr noundef %priv, i8 noundef zeroext %reg_ofs, i16 noundef zeroext %word) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #4
  %0 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %conv1 = trunc i16 %word to i8
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv1, ptr %data, align 1
  %2 = lshr i16 %word, 8
  %conv3 = trunc i16 %2 to i8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv3, ptr %0, align 1
  %conv5 = zext i8 %reg_ofs to i16
  %call = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 0, i16 noundef zeroext %conv5, i16 noundef zeroext 3, i16 noundef zeroext 2, ptr noundef nonnull %data) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_mac_set_bssid_addr(ptr noundef %priv, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 0, i16 noundef zeroext 204, i16 noundef zeroext 3, i16 noundef zeroext 6, ptr noundef %addr) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_mac_enable_protect_mode(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #4
  %0 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 32, ptr %data, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 32, ptr %0, align 1
  %call = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 4, i16 noundef zeroext 76, i16 noundef zeroext 3, i16 noundef zeroext 2, ptr noundef nonnull %data) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_mac_disable_protect_mode(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #4
  %0 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %data, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 32, ptr %0, align 1
  %call = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 4, i16 noundef zeroext 76, i16 noundef zeroext 3, i16 noundef zeroext 2, ptr noundef nonnull %data) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_mac_enable_barker_preamble_mode(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #4
  %0 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %data, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %0, align 1
  %call = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 4, i16 noundef zeroext 78, i16 noundef zeroext 3, i16 noundef zeroext 2, ptr noundef nonnull %data) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_mac_disable_barker_preamble_mode(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #4
  %0 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %data, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %0, align 1
  %call = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 4, i16 noundef zeroext 78, i16 noundef zeroext 3, i16 noundef zeroext 2, ptr noundef nonnull %data) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_mac_set_beacon_interval(ptr noundef %priv, i16 noundef zeroext %interval) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #4
  %0 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %conv1 = trunc i16 %interval to i8
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv1, ptr %data, align 1
  %2 = lshr i16 %interval, 8
  %conv3 = trunc i16 %2 to i8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv3, ptr %0, align 1
  %call = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 0, i16 noundef zeroext 38, i16 noundef zeroext 3, i16 noundef zeroext 2, ptr noundef nonnull %data) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_mac_set_led(ptr noundef %priv, i8 noundef zeroext %state, i8 noundef zeroext %led) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #4
  %0 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %led, ptr %data, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %state, ptr %0, align 1
  %call = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 4, i16 noundef zeroext 119, i16 noundef zeroext 3, i16 noundef zeroext 2, ptr noundef nonnull %data) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #4
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/vt6656/mac.c", i32 72, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @vnt_mac_set_keyentry.__UNIQUE_ID_ddebug383, !1, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 2148851636, i64 2148851641, i64 2148851654, i64 2148851698, i64 2148851732, i64 2148851753}
