; ModuleID = '/llk/IR_all_yes/lib/test_blackhole_dev.c_pt.bc'
source_filename = "../lib/test_blackhole_dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sk_buff = type { %union.anon.0, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }

@__UNIQUE_ID_author472 = internal constant [44 x i8] c"author=Mahesh Bandewar <maheshb@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license473 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@in6addr_loopback = external dso_local local_unnamed_addr constant %struct.in6_addr, align 4
@blackhole_netdev = external dso_local local_unnamed_addr global ptr, align 4
@test_blackholedev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014dev_queue_xmit() returned NET_XMIT_SUCCESS\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"test_blackholedev_init\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lib/test_blackhole_dev.c\00", [39 x i8] zeroinitializer }, align 32
@test_blackholedev_init._entry_ptr = internal global ptr @test_blackholedev_init._entry, section ".printk_index", align 4
@test_blackholedev_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014dev_queue_xmit() returned NET_XMIT_DROP\0A\00", [53 x i8] zeroinitializer }, align 32
@test_blackholedev_init._entry_ptr.5 = internal global ptr @test_blackholedev_init._entry.3, section ".printk_index", align 4
@test_blackholedev_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014dev_queue_xmit() returned NET_XMIT_CN\0A\00", [55 x i8] zeroinitializer }, align 32
@test_blackholedev_init._entry_ptr.8 = internal global ptr @test_blackholedev_init._entry.6, section ".printk_index", align 4
@test_blackholedev_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013dev_queue_xmit() returned UNKNOWN(%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@test_blackholedev_init._entry_ptr.11 = internal global ptr @test_blackholedev_init._entry.9, section ".printk_index", align 4
@test_blackholedev_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014test_blackholedev module terminating.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"test_blackholedev_exit\00", [41 x i8] zeroinitializer }, align 32
@test_blackholedev_exit._entry_ptr = internal global ptr @test_blackholedev_exit._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 76, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 79, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 82, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 85, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private constant [28 x i8] c"../lib/test_blackhole_dev.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 93, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author472, ptr @__UNIQUE_ID_license473, ptr @test_blackholedev_exit._entry, ptr @test_blackholedev_exit._entry_ptr, ptr @test_blackholedev_init._entry, ptr @test_blackholedev_init._entry.3, ptr @test_blackholedev_init._entry.6, ptr @test_blackholedev_init._entry.9, ptr @test_blackholedev_init._entry_ptr, ptr @test_blackholedev_init._entry_ptr.11, ptr @test_blackholedev_init._entry_ptr.5, ptr @test_blackholedev_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_blackholedev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_blackholedev_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_blackholedev_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_blackholedev_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_blackholedev_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %call.i = tail call ptr @__alloc_skb(i32 noundef 256, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 62
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %3, i32 62
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i, label %__skb_put.exit, label %do.body3.i, !prof !35

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #5, !srcloc !36
  unreachable

__skb_put.exit:                                   ; preds = %if.end
  %add.ptr.i53 = getelementptr i8, ptr %3, i32 224
  %6 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i53, ptr %tail.i, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len9.i, align 4
  %add.i = add i32 %8, 162
  store i32 %add.i, ptr %len9.i, align 4
  %9 = call ptr @memset(ptr %add.ptr1.i, i32 15, i32 162)
  %call2 = tail call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef 8) #5
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 19
  %14 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  %dest = getelementptr inbounds %struct.udphdr, ptr %call2, i32 0, i32 1
  %15 = ptrtoint ptr %dest to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1234, ptr %dest, align 2
  %16 = ptrtoint ptr %call2 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1234, ptr %call2, align 2
  %len = getelementptr inbounds %struct.udphdr, ptr %call2, i32 0, i32 2
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 162, ptr %len, align 2
  %check = getelementptr inbounds %struct.udphdr, ptr %call2, i32 0, i32 3
  %18 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %check, align 2
  %call3 = tail call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef 40) #5
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %21 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i56 = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i.i57 = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i.i58 = sub i32 %sub.ptr.lhs.cast.i.i56, %sub.ptr.rhs.cast.i.i57
  %conv.i.i59 = trunc i32 %sub.ptr.sub.i.i58 to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %23 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i.i59, ptr %network_header.i.i, align 4
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %call3, i32 0, i32 4
  %24 = ptrtoint ptr %hop_limit to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 32, ptr %hop_limit, align 1
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %call3, i32 0, i32 2
  %25 = ptrtoint ptr %payload_len to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 170, ptr %payload_len, align 4
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %call3, i32 0, i32 3
  %26 = ptrtoint ptr %nexthdr to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 17, ptr %nexthdr, align 2
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %call3, i32 0, i32 5
  %27 = call ptr @memcpy(ptr %saddr, ptr @in6addr_loopback, i32 16)
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %call3, i32 0, i32 6
  %28 = call ptr @memcpy(ptr %daddr, ptr @in6addr_loopback, i32 16)
  %call5 = tail call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef 14) #5
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i, align 4
  %31 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i62 = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i.i63 = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i.i64 = sub i32 %sub.ptr.lhs.cast.i.i62, %sub.ptr.rhs.cast.i.i63
  %conv.i.i65 = trunc i32 %sub.ptr.sub.i.i64 to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 21
  %33 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i.i65, ptr %mac_header.i.i, align 2
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %34 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -31011, ptr %protocol, align 8
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %35 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.clear = and i16 %bf.load, 8191
  store i16 %bf.clear, ptr %pkt_type, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @blackhole_netdev to i32))
  %36 = load ptr, ptr @blackhole_netdev, align 4
  %37 = getelementptr inbounds %struct.anon, ptr %call.i, i32 0, i32 2
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %36, ptr %37, align 8
  %call6 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call.i) #5
  %39 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call6, label %do.end22 [
    i32 0, label %do.end
    i32 1, label %do.end11
    i32 2, label %do.end17
  ]

do.end:                                           ; preds = %__skb_put.exit
  call void @__sanitizer_cov_trace_pc() #4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %cleanup

do.end11:                                         ; preds = %__skb_put.exit
  call void @__sanitizer_cov_trace_pc() #4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #6
  br label %cleanup

do.end17:                                         ; preds = %__skb_put.exit
  call void @__sanitizer_cov_trace_pc() #4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #6
  br label %cleanup

do.end22:                                         ; preds = %__skb_put.exit
  call void @__sanitizer_cov_trace_pc() #4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call6) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %do.end17, %do.end11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end22 ], [ 0, %do.end17 ], [ 0, %do.end11 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind uwtable(sync) }
attributes #4 = { nomerge }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__UNIQUE_ID_author472, !1, !"__UNIQUE_ID_author472", i1 false, i1 false}
!1 = !{!"../lib/test_blackhole_dev.c", i32 99, i32 1}
!2 = !{ptr @__UNIQUE_ID_license473, !3, !"__UNIQUE_ID_license473", i1 false, i1 false}
!3 = !{!"../lib/test_blackhole_dev.c", i32 100, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../lib/test_blackhole_dev.c", i32 76, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @test_blackholedev_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @test_blackholedev_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../lib/test_blackhole_dev.c", i32 79, i32 3}
!12 = !{ptr @test_blackholedev_init._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @test_blackholedev_init._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../lib/test_blackhole_dev.c", i32 82, i32 3}
!16 = !{ptr @test_blackholedev_init._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @test_blackholedev_init._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../lib/test_blackhole_dev.c", i32 85, i32 3}
!20 = !{ptr @test_blackholedev_init._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @test_blackholedev_init._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../lib/test_blackhole_dev.c", i32 93, i32 2}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @test_blackholedev_exit._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @test_blackholedev_exit._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{i64 2154561674, i64 2154562162, i64 2154561711, i64 2154561767, i64 2154561801, i64 2154561825, i64 2154561866, i64 2154561887, i64 2154561915, i64 2154561949}
