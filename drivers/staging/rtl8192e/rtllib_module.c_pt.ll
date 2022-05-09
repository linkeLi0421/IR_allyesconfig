; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192e/rtllib_module.c_pt.bc'
source_filename = "../drivers/staging/rtl8192e/rtllib_module.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rt_global_debug_component\22, \22a\22\09"
module asm "\09.weak\09__crc_rt_global_debug_component\09\09\09\09"
module asm "\09.long\09__crc_rt_global_debug_component\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt_global_debug_component:\09\09\09\09\09"
module asm "\09.asciz \09\22rt_global_debug_component\22\09\09\09\09\09"
module asm "__kstrtabns_rt_global_debug_component:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+alloc_rtllib\22, \22a\22\09"
module asm "\09.weak\09__crc_alloc_rtllib\09\09\09\09"
module asm "\09.long\09__crc_alloc_rtllib\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_rtllib:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_rtllib\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_rtllib:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+free_rtllib\22, \22a\22\09"
module asm "\09.weak\09__crc_free_rtllib\09\09\09\09"
module asm "\09.long\09__crc_free_rtllib\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_rtllib:\09\09\09\09\09"
module asm "\09.asciz \09\22free_rtllib\22\09\09\09\09\09"
module asm "__kstrtabns_free_rtllib:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rtllib_network = type { [6 x i8], i8, [33 x i8], i8, [33 x i8], i8, %struct.rtllib_qos_data, i8, i8, i8, [2 x i8], i8, i8, [6 x i8], i8, i8, %struct.rtllib_rx_stats, i16, [12 x i8], i8, [16 x i8], i8, i32, i8, i32, [2 x i32], i16, i16, i16, i8, [64 x i8], i32, [64 x i8], i32, [256 x i8], i32, %struct.rtllib_tim_parameters, i8, i8, i64, i8, [4 x %struct.rtllib_wmm_ac_param], i8, i16, [255 x i8], %struct.bss_ht, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.list_head }
%struct.rtllib_qos_data = type { %struct.rtllib_qos_parameters, i32, i32, i32, i8, i8 }
%struct.rtllib_qos_parameters = type { [4 x i16], [4 x i16], [4 x i8], [4 x i8], [4 x i16] }
%struct.rtllib_rx_stats = type { i64, i8, i8, i8, i16, i8, i8, i8, i8, i16, i64, i32, i8, i16, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], [2 x i8], i8, i8, i8, i16, i16, i16, i16, i8, i8, i16 }
%struct.rtllib_tim_parameters = type { i8, i8 }
%struct.rtllib_wmm_ac_param = type { i8, i8, i16 }
%struct.bss_ht = type { i8, [32 x i8], i16, [32 x i8], i16, i32, i32, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }

@rt_global_debug_component = dso_local global { i32, [28 x i8] } { i32 -2147483648, [28 x i8] zeroinitializer }, align 32
@__kstrtab_rt_global_debug_component = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt_global_debug_component = external dso_local constant [0 x i8], align 1
@__ksymtab_rt_global_debug_component = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt_global_debug_component to i32), ptr @__kstrtab_rt_global_debug_component, ptr @__kstrtabns_rt_global_debug_component }, section "___ksymtab+rt_global_debug_component", align 4
@alloc_rtllib.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rtllib\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"alloc_rtllib\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/staging/rtl8192e/rtllib_module.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtllib: Initializing...\0A\00", [39 x i8] zeroinitializer }, align 32
@alloc_rtllib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Unable to allocate net_device.\0A\00", [62 x i8] zeroinitializer }, align 32
@alloc_rtllib._entry_ptr = internal global ptr @alloc_rtllib._entry, section ".printk_index", align 4
@alloc_rtllib._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Unable to allocate beacon storage: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@alloc_rtllib._entry_ptr.7 = internal global ptr @alloc_rtllib._entry.5, section ".printk_index", align 4
@alloc_rtllib.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ieee->lock\00", [20 x i8] zeroinitializer }, align 32
@alloc_rtllib.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&ieee->wpax_suitlist_lock\00", [38 x i8] zeroinitializer }, align 32
@alloc_rtllib.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&ieee->reorder_spinlock\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RTLLIB\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_alloc_rtllib = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_rtllib = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_rtllib = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_rtllib to i32), ptr @__kstrtab_alloc_rtllib, ptr @__kstrtabns_alloc_rtllib }, section "___ksymtab+alloc_rtllib", align 4
@__kstrtab_free_rtllib = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_rtllib = external dso_local constant [0 x i8], align 1
@__ksymtab_free_rtllib = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_rtllib to i32), ptr @__kstrtab_free_rtllib, ptr @__kstrtabns_free_rtllib }, section "___ksymtab+free_rtllib", align 4
@__UNIQUE_ID_license477 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.14 = private unnamed_addr constant [26 x i8] c"rt_global_debug_component\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 37, i32 5 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 78, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 82, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 90, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 107, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 108, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 109, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [44 x i8] c"../drivers/staging/rtl8192e/rtllib_module.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 113, i32 46 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_license477, ptr @__ksymtab_alloc_rtllib, ptr @__ksymtab_free_rtllib, ptr @__ksymtab_rt_global_debug_component, ptr @alloc_rtllib._entry, ptr @alloc_rtllib._entry.5, ptr @alloc_rtllib._entry_ptr, ptr @alloc_rtllib._entry_ptr.7, ptr @rt_global_debug_component, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @alloc_rtllib.__key, ptr @.str.8, ptr @alloc_rtllib.__key.9, ptr @.str.10, ptr @alloc_rtllib.__key.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt_global_debug_component to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_rtllib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_rtllib._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_rtllib.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_rtllib.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_rtllib.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_rtllib(i32 noundef %sizeof_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alloc_rtllib.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alloc_rtllib, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !44

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @alloc_rtllib.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add = add i32 %sizeof_priv, 28472
  %call3 = tail call ptr @alloc_etherdev_mqs(i32 noundef %add, i32 noundef 1, i32 noundef 1) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %add.ptr.i.i = getelementptr i8, ptr %call3, i32 2304
  %dev13 = getelementptr i8, ptr %call3, i32 2308
  %0 = ptrtoint ptr %dev13 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %dev13, align 4
  %networks.i = getelementptr i8, ptr %call3, i32 20724
  %1 = ptrtoint ptr %networks.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %networks.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.if.end22_crit_edge

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end.i:                                         ; preds = %if.end11
  %call1.i.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 105216, i32 noundef 3520, i32 noundef 5) #10
  %3 = ptrtoint ptr %networks.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1.i.i.i.i.i, ptr %networks.i, align 4
  %tobool3.not.i = icmp eq ptr %call1.i.i.i.i.i, null
  br i1 %tobool3.not.i, label %do.end19, label %if.end.i.if.end22_crit_edge

if.end.i.if.end22_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.end19:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef -12) #9
  br label %free_netdev

if.end22:                                         ; preds = %if.end.i.if.end22_crit_edge, %if.end11.if.end22_crit_edge
  %network_free_list.i = getelementptr i8, ptr %call3, i32 20708
  %4 = ptrtoint ptr %network_free_list.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %network_free_list.i, ptr %network_free_list.i, align 4
  %prev.i.i = getelementptr i8, ptr %call3, i32 20712
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %network_free_list.i, ptr %prev.i.i, align 4
  %network_list.i = getelementptr i8, ptr %call3, i32 20716
  %6 = ptrtoint ptr %network_list.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %network_list.i, ptr %network_list.i, align 4
  %prev.i7.i = getelementptr i8, ptr %call3, i32 20720
  %7 = ptrtoint ptr %prev.i7.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %network_list.i, ptr %prev.i7.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %if.end22
  %i.09.i = phi i32 [ 0, %if.end22 ], [ %inc.i, %list_add_tail.exit.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %networks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %networks.i, align 4
  %list.i = getelementptr %struct.rtllib_network, ptr %9, i32 %i.09.i, i32 58
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %11, ptr noundef %network_free_list.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_add_tail.exit.i_crit_edge

for.body.i.list_add_tail.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list.i, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %network_free_list.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr %struct.rtllib_network, ptr %9, i32 %i.09.i, i32 58, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %list.i, ptr %11, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_add_tail.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 96
  br i1 %exitcond.not.i, label %rtllib_networks_initialize.exit, label %list_add_tail.exit.i.for.body.i_crit_edge

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

rtllib_networks_initialize.exit:                  ; preds = %list_add_tail.exit.i
  %fts = getelementptr i8, ptr %call3, i32 24764
  %16 = ptrtoint ptr %fts to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2346, ptr %fts, align 4
  %scan_age = getelementptr i8, ptr %call3, i32 20732
  %17 = ptrtoint ptr %scan_age to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1500, ptr %scan_age, align 4
  %open_wep = getelementptr i8, ptr %call3, i32 20840
  %18 = ptrtoint ptr %open_wep to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %open_wep, align 8
  %host_encrypt = getelementptr i8, ptr %call3, i32 20852
  %19 = ptrtoint ptr %host_encrypt to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %host_encrypt, align 4
  %host_decrypt = getelementptr i8, ptr %call3, i32 20856
  %20 = ptrtoint ptr %host_decrypt to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %host_decrypt, align 8
  %ieee802_1x = getelementptr i8, ptr %call3, i32 20860
  %21 = ptrtoint ptr %ieee802_1x to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %ieee802_1x, align 4
  %rtllib_ap_sec_type = getelementptr i8, ptr %call3, i32 30728
  %22 = ptrtoint ptr %rtllib_ap_sec_type to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @rtllib_ap_sec_type, ptr %rtllib_ap_sec_type, align 8
  %lock = getelementptr i8, ptr %call3, i32 20744
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @alloc_rtllib.__key, i16 noundef signext 3) #6
  %wpax_suitlist_lock = getelementptr i8, ptr %call3, i32 20788
  tail call void @__raw_spin_lock_init(ptr noundef %wpax_suitlist_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @alloc_rtllib.__key.9, i16 noundef signext 3) #6
  %reorder_spinlock = getelementptr i8, ptr %call3, i32 2508
  tail call void @__raw_spin_lock_init(ptr noundef %reorder_spinlock, ptr noundef nonnull @.str.12, ptr noundef nonnull @alloc_rtllib.__key.11, i16 noundef signext 3) #6
  %atm_swbw = getelementptr i8, ptr %call3, i32 2624
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %atm_swbw, i32 noundef 4) #6
  %23 = ptrtoint ptr %atm_swbw to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 0, ptr %atm_swbw, align 4
  %crypt_info = getelementptr i8, ptr %call3, i32 20912
  %call36 = tail call i32 @lib80211_crypt_info_init(ptr noundef %crypt_info, ptr noundef nonnull @.str.13, ptr noundef %lock) #6
  %wpa_enabled = getelementptr i8, ptr %call3, i32 20868
  %24 = call ptr @memset(ptr %wpa_enabled, i32 0, i32 16)
  %25 = ptrtoint ptr %ieee802_1x to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %ieee802_1x, align 4
  %raw_tx = getelementptr i8, ptr %call3, i32 26138
  %26 = ptrtoint ptr %raw_tx to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %raw_tx, align 2
  %hwsec_active = getelementptr i8, ptr %call3, i32 2482
  %27 = ptrtoint ptr %hwsec_active to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %hwsec_active, align 2
  %swcamtable = getelementptr i8, ptr %call3, i32 21000
  %28 = call ptr @memset(ptr %swcamtable, i32 0, i32 896)
  %call38 = tail call i32 @rtllib_softmac_init(ptr noundef %add.ptr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %rtllib_networks_initialize.exit.free_crypt_info_crit_edge

rtllib_networks_initialize.exit.free_crypt_info_crit_edge: ; preds = %rtllib_networks_initialize.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_crypt_info

if.end41:                                         ; preds = %rtllib_networks_initialize.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 192) #11
  %pHTInfo = getelementptr i8, ptr %call3, i32 2504
  %30 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i, ptr %pHTInfo, align 8
  %tobool44.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool44.not, label %free_softmac, label %if.end46

if.end46:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @HTUpdateDefaultSetting(ptr noundef %add.ptr.i.i) #6
  tail call void @HTInitializeHTInfo(ptr noundef %add.ptr.i.i) #6
  tail call void @TSInitialize(ptr noundef %add.ptr.i.i) #6
  %arrayidx = getelementptr i8, ptr %call3, i32 26524
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr i8, ptr %call3, i32 26528
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx, ptr %prev.i, align 4
  %arrayidx.1 = getelementptr i8, ptr %call3, i32 26532
  %33 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %arrayidx.1, ptr %arrayidx.1, align 4
  %prev.i.1 = getelementptr i8, ptr %call3, i32 26536
  %34 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %arrayidx.1, ptr %prev.i.1, align 4
  %arrayidx.2 = getelementptr i8, ptr %call3, i32 26540
  %35 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %arrayidx.2, ptr %arrayidx.2, align 4
  %prev.i.2 = getelementptr i8, ptr %call3, i32 26544
  %36 = ptrtoint ptr %prev.i.2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx.2, ptr %prev.i.2, align 4
  %arrayidx.3 = getelementptr i8, ptr %call3, i32 26548
  %37 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %arrayidx.3, ptr %arrayidx.3, align 4
  %prev.i.3 = getelementptr i8, ptr %call3, i32 26552
  %38 = ptrtoint ptr %prev.i.3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx.3, ptr %prev.i.3, align 4
  %arrayidx.4 = getelementptr i8, ptr %call3, i32 26556
  %39 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %arrayidx.4, ptr %arrayidx.4, align 4
  %prev.i.4 = getelementptr i8, ptr %call3, i32 26560
  %40 = ptrtoint ptr %prev.i.4 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %arrayidx.4, ptr %prev.i.4, align 4
  %arrayidx.5 = getelementptr i8, ptr %call3, i32 26564
  %41 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %arrayidx.5, ptr %arrayidx.5, align 4
  %prev.i.5 = getelementptr i8, ptr %call3, i32 26568
  %42 = ptrtoint ptr %prev.i.5 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %arrayidx.5, ptr %prev.i.5, align 4
  %arrayidx.6 = getelementptr i8, ptr %call3, i32 26572
  %43 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %arrayidx.6, ptr %arrayidx.6, align 4
  %prev.i.6 = getelementptr i8, ptr %call3, i32 26576
  %44 = ptrtoint ptr %prev.i.6 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx.6, ptr %prev.i.6, align 4
  %arrayidx.7 = getelementptr i8, ptr %call3, i32 26580
  %45 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %arrayidx.7, ptr %arrayidx.7, align 4
  %prev.i.7 = getelementptr i8, ptr %call3, i32 26584
  %46 = ptrtoint ptr %prev.i.7 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %arrayidx.7, ptr %prev.i.7, align 4
  %arrayidx.8 = getelementptr i8, ptr %call3, i32 26588
  %47 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %arrayidx.8, ptr %arrayidx.8, align 4
  %prev.i.8 = getelementptr i8, ptr %call3, i32 26592
  %48 = ptrtoint ptr %prev.i.8 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %arrayidx.8, ptr %prev.i.8, align 4
  %arrayidx.9 = getelementptr i8, ptr %call3, i32 26596
  %49 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %arrayidx.9, ptr %arrayidx.9, align 4
  %prev.i.9 = getelementptr i8, ptr %call3, i32 26600
  %50 = ptrtoint ptr %prev.i.9 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %arrayidx.9, ptr %prev.i.9, align 4
  %arrayidx.10 = getelementptr i8, ptr %call3, i32 26604
  %51 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %arrayidx.10, ptr %arrayidx.10, align 4
  %prev.i.10 = getelementptr i8, ptr %call3, i32 26608
  %52 = ptrtoint ptr %prev.i.10 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %arrayidx.10, ptr %prev.i.10, align 4
  %arrayidx.11 = getelementptr i8, ptr %call3, i32 26612
  %53 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %arrayidx.11, ptr %arrayidx.11, align 4
  %prev.i.11 = getelementptr i8, ptr %call3, i32 26616
  %54 = ptrtoint ptr %prev.i.11 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %arrayidx.11, ptr %prev.i.11, align 4
  %arrayidx.12 = getelementptr i8, ptr %call3, i32 26620
  %55 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %arrayidx.12, ptr %arrayidx.12, align 4
  %prev.i.12 = getelementptr i8, ptr %call3, i32 26624
  %56 = ptrtoint ptr %prev.i.12 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %arrayidx.12, ptr %prev.i.12, align 4
  %arrayidx.13 = getelementptr i8, ptr %call3, i32 26628
  %57 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %arrayidx.13, ptr %arrayidx.13, align 4
  %prev.i.13 = getelementptr i8, ptr %call3, i32 26632
  %58 = ptrtoint ptr %prev.i.13 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %arrayidx.13, ptr %prev.i.13, align 4
  %arrayidx.14 = getelementptr i8, ptr %call3, i32 26636
  %59 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %arrayidx.14, ptr %arrayidx.14, align 4
  %prev.i.14 = getelementptr i8, ptr %call3, i32 26640
  %60 = ptrtoint ptr %prev.i.14 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %arrayidx.14, ptr %prev.i.14, align 4
  %arrayidx.15 = getelementptr i8, ptr %call3, i32 26644
  %61 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %arrayidx.15, ptr %arrayidx.15, align 4
  %prev.i.15 = getelementptr i8, ptr %call3, i32 26648
  %62 = ptrtoint ptr %prev.i.15 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %arrayidx.15, ptr %prev.i.15, align 4
  %arrayidx.16 = getelementptr i8, ptr %call3, i32 26652
  %63 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %arrayidx.16, ptr %arrayidx.16, align 4
  %prev.i.16 = getelementptr i8, ptr %call3, i32 26656
  %64 = ptrtoint ptr %prev.i.16 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %arrayidx.16, ptr %prev.i.16, align 4
  %arrayidx.17 = getelementptr i8, ptr %call3, i32 26660
  %65 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %arrayidx.17, ptr %arrayidx.17, align 4
  %prev.i.17 = getelementptr i8, ptr %call3, i32 26664
  %66 = ptrtoint ptr %prev.i.17 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %arrayidx.17, ptr %prev.i.17, align 4
  %arrayidx.18 = getelementptr i8, ptr %call3, i32 26668
  %67 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %arrayidx.18, ptr %arrayidx.18, align 4
  %prev.i.18 = getelementptr i8, ptr %call3, i32 26672
  %68 = ptrtoint ptr %prev.i.18 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %arrayidx.18, ptr %prev.i.18, align 4
  %arrayidx.19 = getelementptr i8, ptr %call3, i32 26676
  %69 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %arrayidx.19, ptr %arrayidx.19, align 4
  %prev.i.19 = getelementptr i8, ptr %call3, i32 26680
  %70 = ptrtoint ptr %prev.i.19 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %arrayidx.19, ptr %prev.i.19, align 4
  %arrayidx.20 = getelementptr i8, ptr %call3, i32 26684
  %71 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %arrayidx.20, ptr %arrayidx.20, align 4
  %prev.i.20 = getelementptr i8, ptr %call3, i32 26688
  %72 = ptrtoint ptr %prev.i.20 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %arrayidx.20, ptr %prev.i.20, align 4
  %arrayidx.21 = getelementptr i8, ptr %call3, i32 26692
  %73 = ptrtoint ptr %arrayidx.21 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %arrayidx.21, ptr %arrayidx.21, align 4
  %prev.i.21 = getelementptr i8, ptr %call3, i32 26696
  %74 = ptrtoint ptr %prev.i.21 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %arrayidx.21, ptr %prev.i.21, align 4
  %arrayidx.22 = getelementptr i8, ptr %call3, i32 26700
  %75 = ptrtoint ptr %arrayidx.22 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %arrayidx.22, ptr %arrayidx.22, align 4
  %prev.i.22 = getelementptr i8, ptr %call3, i32 26704
  %76 = ptrtoint ptr %prev.i.22 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %arrayidx.22, ptr %prev.i.22, align 4
  %arrayidx.23 = getelementptr i8, ptr %call3, i32 26708
  %77 = ptrtoint ptr %arrayidx.23 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %arrayidx.23, ptr %arrayidx.23, align 4
  %prev.i.23 = getelementptr i8, ptr %call3, i32 26712
  %78 = ptrtoint ptr %prev.i.23 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %arrayidx.23, ptr %prev.i.23, align 4
  %arrayidx.24 = getelementptr i8, ptr %call3, i32 26716
  %79 = ptrtoint ptr %arrayidx.24 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %arrayidx.24, ptr %arrayidx.24, align 4
  %prev.i.24 = getelementptr i8, ptr %call3, i32 26720
  %80 = ptrtoint ptr %prev.i.24 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %arrayidx.24, ptr %prev.i.24, align 4
  %arrayidx.25 = getelementptr i8, ptr %call3, i32 26724
  %81 = ptrtoint ptr %arrayidx.25 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %arrayidx.25, ptr %arrayidx.25, align 4
  %prev.i.25 = getelementptr i8, ptr %call3, i32 26728
  %82 = ptrtoint ptr %prev.i.25 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %arrayidx.25, ptr %prev.i.25, align 4
  %arrayidx.26 = getelementptr i8, ptr %call3, i32 26732
  %83 = ptrtoint ptr %arrayidx.26 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %arrayidx.26, ptr %arrayidx.26, align 4
  %prev.i.26 = getelementptr i8, ptr %call3, i32 26736
  %84 = ptrtoint ptr %prev.i.26 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %arrayidx.26, ptr %prev.i.26, align 4
  %arrayidx.27 = getelementptr i8, ptr %call3, i32 26740
  %85 = ptrtoint ptr %arrayidx.27 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %arrayidx.27, ptr %arrayidx.27, align 4
  %prev.i.27 = getelementptr i8, ptr %call3, i32 26744
  %86 = ptrtoint ptr %prev.i.27 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %arrayidx.27, ptr %prev.i.27, align 4
  %arrayidx.28 = getelementptr i8, ptr %call3, i32 26748
  %87 = ptrtoint ptr %arrayidx.28 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %arrayidx.28, ptr %arrayidx.28, align 4
  %prev.i.28 = getelementptr i8, ptr %call3, i32 26752
  %88 = ptrtoint ptr %prev.i.28 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %arrayidx.28, ptr %prev.i.28, align 4
  %arrayidx.29 = getelementptr i8, ptr %call3, i32 26756
  %89 = ptrtoint ptr %arrayidx.29 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %arrayidx.29, ptr %arrayidx.29, align 4
  %prev.i.29 = getelementptr i8, ptr %call3, i32 26760
  %90 = ptrtoint ptr %prev.i.29 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %arrayidx.29, ptr %prev.i.29, align 4
  %arrayidx.30 = getelementptr i8, ptr %call3, i32 26764
  %91 = ptrtoint ptr %arrayidx.30 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %arrayidx.30, ptr %arrayidx.30, align 4
  %prev.i.30 = getelementptr i8, ptr %call3, i32 26768
  %92 = ptrtoint ptr %prev.i.30 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %arrayidx.30, ptr %prev.i.30, align 4
  %arrayidx50 = getelementptr i8, ptr %call3, i32 26772
  %93 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 -1, ptr %arrayidx50, align 2
  %arrayidx51 = getelementptr i8, ptr %call3, i32 26806
  %94 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 -1, ptr %arrayidx51, align 2
  %arrayidx52 = getelementptr i8, ptr %call3, i32 26840
  %95 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %arrayidx52, align 4
  %arrayidx50.1 = getelementptr i8, ptr %call3, i32 26774
  %96 = ptrtoint ptr %arrayidx50.1 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 -1, ptr %arrayidx50.1, align 2
  %arrayidx51.1 = getelementptr i8, ptr %call3, i32 26808
  %97 = ptrtoint ptr %arrayidx51.1 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 -1, ptr %arrayidx51.1, align 2
  %arrayidx52.1 = getelementptr i8, ptr %call3, i32 26844
  %98 = ptrtoint ptr %arrayidx52.1 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %arrayidx52.1, align 4
  %arrayidx50.2 = getelementptr i8, ptr %call3, i32 26776
  %99 = ptrtoint ptr %arrayidx50.2 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 -1, ptr %arrayidx50.2, align 2
  %arrayidx51.2 = getelementptr i8, ptr %call3, i32 26810
  %100 = ptrtoint ptr %arrayidx51.2 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 -1, ptr %arrayidx51.2, align 2
  %arrayidx52.2 = getelementptr i8, ptr %call3, i32 26848
  %101 = ptrtoint ptr %arrayidx52.2 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %arrayidx52.2, align 4
  %arrayidx50.3 = getelementptr i8, ptr %call3, i32 26778
  %102 = ptrtoint ptr %arrayidx50.3 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 -1, ptr %arrayidx50.3, align 2
  %arrayidx51.3 = getelementptr i8, ptr %call3, i32 26812
  %103 = ptrtoint ptr %arrayidx51.3 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 -1, ptr %arrayidx51.3, align 2
  %arrayidx52.3 = getelementptr i8, ptr %call3, i32 26852
  %104 = ptrtoint ptr %arrayidx52.3 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %arrayidx52.3, align 4
  %arrayidx50.4 = getelementptr i8, ptr %call3, i32 26780
  %105 = ptrtoint ptr %arrayidx50.4 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 -1, ptr %arrayidx50.4, align 2
  %arrayidx51.4 = getelementptr i8, ptr %call3, i32 26814
  %106 = ptrtoint ptr %arrayidx51.4 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 -1, ptr %arrayidx51.4, align 2
  %arrayidx52.4 = getelementptr i8, ptr %call3, i32 26856
  %107 = ptrtoint ptr %arrayidx52.4 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %arrayidx52.4, align 4
  %arrayidx50.5 = getelementptr i8, ptr %call3, i32 26782
  %108 = ptrtoint ptr %arrayidx50.5 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 -1, ptr %arrayidx50.5, align 2
  %arrayidx51.5 = getelementptr i8, ptr %call3, i32 26816
  %109 = ptrtoint ptr %arrayidx51.5 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 -1, ptr %arrayidx51.5, align 2
  %arrayidx52.5 = getelementptr i8, ptr %call3, i32 26860
  %110 = ptrtoint ptr %arrayidx52.5 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %arrayidx52.5, align 4
  %arrayidx50.6 = getelementptr i8, ptr %call3, i32 26784
  %111 = ptrtoint ptr %arrayidx50.6 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 -1, ptr %arrayidx50.6, align 2
  %arrayidx51.6 = getelementptr i8, ptr %call3, i32 26818
  %112 = ptrtoint ptr %arrayidx51.6 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 -1, ptr %arrayidx51.6, align 2
  %arrayidx52.6 = getelementptr i8, ptr %call3, i32 26864
  %113 = ptrtoint ptr %arrayidx52.6 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %arrayidx52.6, align 4
  %arrayidx50.7 = getelementptr i8, ptr %call3, i32 26786
  %114 = ptrtoint ptr %arrayidx50.7 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 -1, ptr %arrayidx50.7, align 2
  %arrayidx51.7 = getelementptr i8, ptr %call3, i32 26820
  %115 = ptrtoint ptr %arrayidx51.7 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 -1, ptr %arrayidx51.7, align 2
  %arrayidx52.7 = getelementptr i8, ptr %call3, i32 26868
  %116 = ptrtoint ptr %arrayidx52.7 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %arrayidx52.7, align 4
  %arrayidx50.8 = getelementptr i8, ptr %call3, i32 26788
  %117 = ptrtoint ptr %arrayidx50.8 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 -1, ptr %arrayidx50.8, align 2
  %arrayidx51.8 = getelementptr i8, ptr %call3, i32 26822
  %118 = ptrtoint ptr %arrayidx51.8 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 -1, ptr %arrayidx51.8, align 2
  %arrayidx52.8 = getelementptr i8, ptr %call3, i32 26872
  %119 = ptrtoint ptr %arrayidx52.8 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %arrayidx52.8, align 4
  %arrayidx50.9 = getelementptr i8, ptr %call3, i32 26790
  %120 = ptrtoint ptr %arrayidx50.9 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 -1, ptr %arrayidx50.9, align 2
  %arrayidx51.9 = getelementptr i8, ptr %call3, i32 26824
  %121 = ptrtoint ptr %arrayidx51.9 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 -1, ptr %arrayidx51.9, align 2
  %arrayidx52.9 = getelementptr i8, ptr %call3, i32 26876
  %122 = ptrtoint ptr %arrayidx52.9 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %arrayidx52.9, align 4
  %arrayidx50.10 = getelementptr i8, ptr %call3, i32 26792
  %123 = ptrtoint ptr %arrayidx50.10 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 -1, ptr %arrayidx50.10, align 2
  %arrayidx51.10 = getelementptr i8, ptr %call3, i32 26826
  %124 = ptrtoint ptr %arrayidx51.10 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 -1, ptr %arrayidx51.10, align 2
  %arrayidx52.10 = getelementptr i8, ptr %call3, i32 26880
  %125 = ptrtoint ptr %arrayidx52.10 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %arrayidx52.10, align 4
  %arrayidx50.11 = getelementptr i8, ptr %call3, i32 26794
  %126 = ptrtoint ptr %arrayidx50.11 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 -1, ptr %arrayidx50.11, align 2
  %arrayidx51.11 = getelementptr i8, ptr %call3, i32 26828
  %127 = ptrtoint ptr %arrayidx51.11 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 -1, ptr %arrayidx51.11, align 2
  %arrayidx52.11 = getelementptr i8, ptr %call3, i32 26884
  %128 = ptrtoint ptr %arrayidx52.11 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %arrayidx52.11, align 4
  %arrayidx50.12 = getelementptr i8, ptr %call3, i32 26796
  %129 = ptrtoint ptr %arrayidx50.12 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 -1, ptr %arrayidx50.12, align 2
  %arrayidx51.12 = getelementptr i8, ptr %call3, i32 26830
  %130 = ptrtoint ptr %arrayidx51.12 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 -1, ptr %arrayidx51.12, align 2
  %arrayidx52.12 = getelementptr i8, ptr %call3, i32 26888
  %131 = ptrtoint ptr %arrayidx52.12 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %arrayidx52.12, align 4
  %arrayidx50.13 = getelementptr i8, ptr %call3, i32 26798
  %132 = ptrtoint ptr %arrayidx50.13 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 -1, ptr %arrayidx50.13, align 2
  %arrayidx51.13 = getelementptr i8, ptr %call3, i32 26832
  %133 = ptrtoint ptr %arrayidx51.13 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 -1, ptr %arrayidx51.13, align 2
  %arrayidx52.13 = getelementptr i8, ptr %call3, i32 26892
  %134 = ptrtoint ptr %arrayidx52.13 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %arrayidx52.13, align 4
  %arrayidx50.14 = getelementptr i8, ptr %call3, i32 26800
  %135 = ptrtoint ptr %arrayidx50.14 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 -1, ptr %arrayidx50.14, align 2
  %arrayidx51.14 = getelementptr i8, ptr %call3, i32 26834
  %136 = ptrtoint ptr %arrayidx51.14 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 -1, ptr %arrayidx51.14, align 2
  %arrayidx52.14 = getelementptr i8, ptr %call3, i32 26896
  %137 = ptrtoint ptr %arrayidx52.14 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %arrayidx52.14, align 4
  %arrayidx50.15 = getelementptr i8, ptr %call3, i32 26802
  %138 = ptrtoint ptr %arrayidx50.15 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 -1, ptr %arrayidx50.15, align 2
  %arrayidx51.15 = getelementptr i8, ptr %call3, i32 26836
  %139 = ptrtoint ptr %arrayidx51.15 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 -1, ptr %arrayidx51.15, align 2
  %arrayidx52.15 = getelementptr i8, ptr %call3, i32 26900
  %140 = ptrtoint ptr %arrayidx52.15 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %arrayidx52.15, align 4
  %arrayidx50.16 = getelementptr i8, ptr %call3, i32 26804
  %141 = ptrtoint ptr %arrayidx50.16 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 -1, ptr %arrayidx50.16, align 2
  %arrayidx51.16 = getelementptr i8, ptr %call3, i32 26838
  %142 = ptrtoint ptr %arrayidx51.16 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 -1, ptr %arrayidx51.16, align 2
  %arrayidx52.16 = getelementptr i8, ptr %call3, i32 26904
  %143 = ptrtoint ptr %arrayidx52.16 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %arrayidx52.16, align 4
  br label %cleanup

free_softmac:                                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtllib_softmac_free(ptr noundef %add.ptr.i.i) #6
  br label %free_crypt_info

free_crypt_info:                                  ; preds = %free_softmac, %rtllib_networks_initialize.exit.free_crypt_info_crit_edge
  tail call void @lib80211_crypt_info_free(ptr noundef %crypt_info) #6
  %144 = ptrtoint ptr %networks.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %networks.i, align 4
  %tobool.not.i112 = icmp eq ptr %145, null
  br i1 %tobool.not.i112, label %free_crypt_info.free_netdev_crit_edge, label %if.end.i113

free_crypt_info.free_netdev_crit_edge:            ; preds = %free_crypt_info
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_netdev

if.end.i113:                                      ; preds = %free_crypt_info
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %145) #6
  %146 = ptrtoint ptr %networks.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %networks.i, align 4
  br label %free_netdev

free_netdev:                                      ; preds = %if.end.i113, %free_crypt_info.free_netdev_crit_edge, %do.end19
  tail call void @free_netdev(ptr noundef nonnull %call3) #6
  br label %cleanup

cleanup:                                          ; preds = %free_netdev, %if.end46, %do.end8
  %retval.0 = phi ptr [ null, %free_netdev ], [ null, %do.end8 ], [ %call3, %if.end46 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtllib_ap_sec_type(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lib80211_crypt_info_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_softmac_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @HTUpdateDefaultSetting(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @HTInitializeHTInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @TSInitialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtllib_softmac_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lib80211_crypt_info_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_rtllib(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %pHTInfo = getelementptr i8, ptr %dev, i32 2504
  %0 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pHTInfo, align 8
  tail call void @kfree(ptr noundef %1) #6
  tail call void @rtllib_softmac_free(ptr noundef %add.ptr.i.i) #6
  %crypt_info = getelementptr i8, ptr %dev, i32 20912
  tail call void @lib80211_crypt_info_free(ptr noundef %crypt_info) #6
  %networks.i = getelementptr i8, ptr %dev, i32 20724
  %2 = ptrtoint ptr %networks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %networks.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.rtllib_networks_free.exit_crit_edge, label %if.end.i

entry.rtllib_networks_free.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtllib_networks_free.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %3) #6
  %4 = ptrtoint ptr %networks.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %networks.i, align 4
  br label %rtllib_networks_free.exit

rtllib_networks_free.exit:                        ; preds = %if.end.i, %entry.rtllib_networks_free.exit_crit_edge
  tail call void @free_netdev(ptr noundef %dev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !23, !24, !26, !27, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @rt_global_debug_component, !1, !"rt_global_debug_component", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192e/rtllib_module.c", i32 37, i32 5}
!2 = !{ptr @__ksymtab_rt_global_debug_component, !3, !"__ksymtab_rt_global_debug_component", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8192e/rtllib_module.c", i32 38, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8192e/rtllib_module.c", i32 78, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @alloc_rtllib.__UNIQUE_ID_ddebug476, !5, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8192e/rtllib_module.c", i32 82, i32 3}
!12 = !{ptr @alloc_rtllib._entry, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @alloc_rtllib._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/rtl8192e/rtllib_module.c", i32 90, i32 3}
!16 = !{ptr @alloc_rtllib._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @alloc_rtllib._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @alloc_rtllib.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8192e/rtllib_module.c", i32 107, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @alloc_rtllib.__key.9, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/staging/rtl8192e/rtllib_module.c", i32 108, i32 2}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @alloc_rtllib.__key.11, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8192e/rtllib_module.c", i32 109, i32 2}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/rtl8192e/rtllib_module.c", i32 113, i32 46}
!29 = !{ptr @__ksymtab_alloc_rtllib, !30, !"__ksymtab_alloc_rtllib", i1 false, i1 false}
!30 = !{!"../drivers/staging/rtl8192e/rtllib_module.c", i32 156, i32 1}
!31 = !{ptr @__ksymtab_free_rtllib, !32, !"__ksymtab_free_rtllib", i1 false, i1 false}
!32 = !{!"../drivers/staging/rtl8192e/rtllib_module.c", i32 171, i32 1}
!33 = !{ptr @__UNIQUE_ID_license477, !34, !"__UNIQUE_ID_license477", i1 false, i1 false}
!34 = !{!"../drivers/staging/rtl8192e/rtllib_module.c", i32 185, i32 1}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 2148835820, i64 2148835825, i64 2148835838, i64 2148835882, i64 2148835916, i64 2148835937}
