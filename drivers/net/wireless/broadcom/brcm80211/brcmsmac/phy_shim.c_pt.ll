; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy_shim.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy_shim.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_shim_info = type { ptr, ptr, ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @wlc_phy_shim_attach(ptr noundef %wlc_hw, ptr noundef %wl, ptr noundef %wlc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 12) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %wlc_hw, ptr %call7.i.i, align 8
  %wlc2 = getelementptr inbounds %struct.phy_shim_info, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %wlc2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %wlc, ptr %wlc2, align 4
  %wl3 = getelementptr inbounds %struct.phy_shim_info, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %wl3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %wl, ptr %wl3, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlc_phy_shim_detach(ptr noundef %physhim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %physhim) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wlapi_init_timer(ptr nocapture noundef readonly %physhim, ptr noundef %fn, ptr noundef %arg, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wl = getelementptr inbounds %struct.phy_shim_info, ptr %physhim, i32 0, i32 2
  %0 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl, align 4
  %call = tail call ptr @brcms_init_timer(ptr noundef %1, ptr noundef %fn, ptr noundef %arg, ptr noundef %name) #4
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcms_init_timer(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlapi_free_timer(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @brcms_free_timer(ptr noundef %t) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_free_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlapi_add_timer(ptr noundef %t, i32 noundef %ms, i32 noundef %periodic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @brcms_add_timer(ptr noundef %t, i32 noundef %ms, i32 noundef %periodic) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_add_timer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @wlapi_del_timer(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @brcms_del_timer(ptr noundef %t) #4
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcms_del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlapi_intrson(ptr nocapture noundef readonly %physhim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wl = getelementptr inbounds %struct.phy_shim_info, ptr %physhim, i32 0, i32 2
  %0 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl, align 4
  tail call void @brcms_intrson(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_intrson(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wlapi_intrsoff(ptr nocapture noundef readonly %physhim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wl = getelementptr inbounds %struct.phy_shim_info, ptr %physhim, i32 0, i32 2
  %0 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl, align 4
  %call = tail call i32 @brcms_intrsoff(ptr noundef %1) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcms_intrsoff(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlapi_intrsrestore(ptr nocapture noundef readonly %physhim, i32 noundef %macintmask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wl = getelementptr inbounds %struct.phy_shim_info, ptr %physhim, i32 0, i32 2
  %0 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl, align 4
  tail call void @brcms_intrsrestore(ptr noundef %1, i32 noundef %macintmask) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_intrsrestore(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlapi_bmac_write_shm(ptr nocapture noundef readonly %physhim, i32 noundef %offset, i16 noundef zeroext %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physhim, align 4
  tail call void @brcms_b_write_shm(ptr noundef %1, i32 noundef %offset, i16 noundef zeroext %v) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_b_write_shm(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @wlapi_bmac_read_shm(ptr nocapture noundef readonly %physhim, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physhim, align 4
  %call = tail call zeroext i16 @brcms_b_read_shm(ptr noundef %1, i32 noundef %offset) #4
  ret i16 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @brcms_b_read_shm(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlapi_bmac_mhf(ptr nocapture noundef readonly %physhim, i8 noundef zeroext %idx, i16 noundef zeroext %mask, i16 noundef zeroext %val, i32 noundef %bands) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physhim, align 4
  tail call void @brcms_b_mhf(ptr noundef %1, i8 noundef zeroext %idx, i16 noundef zeroext %mask, i16 noundef zeroext %val, i32 noundef %bands) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_b_mhf(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlapi_bmac_corereset(ptr nocapture noundef readonly %physhim, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physhim, align 4
  tail call void @brcms_b_corereset(ptr noundef %1, i32 noundef %flags) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_b_corereset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlapi_suspend_mac_and_wait(ptr nocapture noundef readonly %physhim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wlc = getelementptr inbounds %struct.phy_shim_info, ptr %physhim, i32 0, i32 1
  %0 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wlc, align 4
  tail call void @brcms_c_suspend_mac_and_wait(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_suspend_mac_and_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlapi_switch_macfreq(ptr nocapture noundef readonly %physhim, i8 noundef zeroext %spurmode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physhim, align 4
  tail call void @brcms_b_switch_macfreq(ptr noundef %1, i8 noundef zeroext %spurmode) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_b_switch_macfreq(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlapi_enable_mac(ptr nocapture noundef readonly %physhim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wlc = getelementptr inbounds %struct.phy_shim_info, ptr %physhim, i32 0, i32 1
  %0 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wlc, align 4
  tail call void @brcms_c_enable_mac(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_enable_mac(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlapi_bmac_mctrl(ptr nocapture noundef readonly %physhim, i32 noundef %mask, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physhim, align 4
  tail call void @brcms_b_mctrl(ptr noundef %1, i32 noundef %mask, i32 noundef %val) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_b_mctrl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlapi_bmac_phy_reset(ptr nocapture noundef readonly %physhim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physhim, align 4
  tail call void @brcms_b_phy_reset(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_b_phy_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlapi_bmac_bw_set(ptr nocapture noundef readonly %physhim, i16 noundef zeroext %bw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physhim, align 4
  tail call void @brcms_b_bw_set(ptr noundef %1, i16 noundef zeroext %bw) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_b_bw_set(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @wlapi_bmac_get_txant(ptr nocapture noundef readonly %physhim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physhim, align 4
  %call = tail call zeroext i16 @brcms_b_get_txant(ptr noundef %1) #4
  ret i16 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @brcms_b_get_txant(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlapi_bmac_phyclk_fgc(ptr nocapture noundef readonly %physhim, i1 noundef zeroext %clk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physhim, align 4
  tail call void @brcms_b_phyclk_fgc(ptr noundef %1, i1 noundef zeroext %clk) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_b_phyclk_fgc(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlapi_bmac_macphyclk_set(ptr nocapture noundef readonly %physhim, i1 noundef zeroext %clk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physhim, align 4
  tail call void @brcms_b_macphyclk_set(ptr noundef %1, i1 noundef zeroext %clk) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_b_macphyclk_set(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlapi_bmac_core_phypll_ctl(ptr nocapture noundef readonly %physhim, i1 noundef zeroext %on) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physhim, align 4
  tail call void @brcms_b_core_phypll_ctl(ptr noundef %1, i1 noundef zeroext %on) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_b_core_phypll_ctl(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlapi_bmac_core_phypll_reset(ptr nocapture noundef readonly %physhim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physhim, align 4
  tail call void @brcms_b_core_phypll_reset(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_b_core_phypll_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlapi_bmac_ucode_wake_override_phyreg_set(ptr nocapture noundef readonly %physhim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physhim, align 4
  tail call void @brcms_c_ucode_wake_override_set(ptr noundef %1, i32 noundef 2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_ucode_wake_override_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlapi_bmac_ucode_wake_override_phyreg_clear(ptr nocapture noundef readonly %physhim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physhim, align 4
  tail call void @brcms_c_ucode_wake_override_clear(ptr noundef %1, i32 noundef 2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_ucode_wake_override_clear(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlapi_bmac_write_template_ram(ptr nocapture noundef readonly %physhim, i32 noundef %offset, i32 noundef %len, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physhim, align 4
  tail call void @brcms_b_write_template_ram(ptr noundef %1, i32 noundef %offset, i32 noundef %len, ptr noundef %buf) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_b_write_template_ram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @wlapi_bmac_rate_shm_offset(ptr nocapture noundef readonly %physhim, i8 noundef zeroext %rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physhim, align 4
  %call = tail call zeroext i16 @brcms_b_rate_shm_offset(ptr noundef %1, i8 noundef zeroext %rate) #4
  ret i16 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @brcms_b_rate_shm_offset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @wlapi_ucode_sample_init(ptr nocapture noundef %physhim) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlapi_copyfrom_objmem(ptr nocapture noundef readonly %physhim, i32 noundef %offset, ptr noundef %buf, i32 noundef %len, i32 noundef %sel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physhim, align 4
  tail call void @brcms_b_copyfrom_objmem(ptr noundef %1, i32 noundef %offset, ptr noundef %buf, i32 noundef %len, i32 noundef %sel) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_b_copyfrom_objmem(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlapi_copyto_objmem(ptr nocapture noundef readonly %physhim, i32 noundef %offset, ptr noundef %buf, i32 noundef %l, i32 noundef %sel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %physhim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physhim, align 4
  tail call void @brcms_b_copyto_objmem(ptr noundef %1, i32 noundef %offset, ptr noundef %buf, i32 noundef %l, i32 noundef %sel) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_b_copyto_objmem(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
