; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/wcn36xx/dxe.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/wcn36xx/dxe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.wcn36xx = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, [4 x i32], i8, [65 x i8], [65 x i8], i8, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.mutex, ptr, i32, %struct.mutex, %struct.completion, ptr, %struct.work_struct, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, ptr, %struct.mutex, i8, %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch, %struct.spinlock, i8, %struct.wcn36xx_dxe_mem_pool, %struct.wcn36xx_dxe_mem_pool, ptr, %struct.timer_list, %struct.sk_buff_head, i32, %struct.wcn36xx_dfs_entry }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wcn36xx_dxe_ch = type { %struct.spinlock, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.wcn36xx_dxe_mem_pool = type { i32, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.wcn36xx_dfs_entry = type { ptr, %struct.wcn36xx_dfs_file, %struct.wcn36xx_dfs_file }
%struct.wcn36xx_dfs_file = type { ptr, i32 }
%struct.wcn36xx_dxe_ctl = type { ptr, ptr, i32, i32, ptr, ptr, i32 }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wcn36xx_dxe_desc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.page = type { i32, %union.anon.17, %union.anon.86, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.86 = type { %struct.atomic_t }
%struct.wcn36xx_vif = type { %struct.list_head, i8, i32, i8, i8, %struct.wcn36xx_hal_mac_ssid, i32, i32, i8, i8, i8, i8, [2 x %struct.in6_addr], [1 x i32], i32, %struct.anon.139, %struct.list_head, i32 }
%struct.wcn36xx_hal_mac_ssid = type { i8, [32 x i8] }
%struct.in6_addr = type { %union.anon.39 }
%union.anon.39 = type { [4 x i32] }
%struct.anon.139 = type { [16 x i8], [16 x i8], i64, i8 }

@wcn36xx_dxe_alloc_ctl_blks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013wcn36xx: ERROR Failed to allocate DXE control blocks\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wcn36xx_dxe_alloc_ctl_blks\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/wireless/ath/wcn36xx/dxe.c\00", [57 x i8] zeroinitializer }, align 32
@wcn36xx_dxe_alloc_ctl_blks._entry_ptr = internal global ptr @wcn36xx_dxe_alloc_ctl_blks._entry, section ".printk_index", align 4
@wcn36xx_dxe_tx_ack_ind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014wcn36xx: WARNING Spurious TX complete indication\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wcn36xx_dxe_tx_ack_ind\00", [41 x i8] zeroinitializer }, align 32
@wcn36xx_dxe_tx_ack_ind._entry_ptr = internal global ptr @wcn36xx_dxe_tx_ack_ind._entry, section ".printk_index", align 4
@wcn36xx_dbg_mask = external dso_local local_unnamed_addr global i32, align 4
@wcn36xx_dxe_tx_ack_ind._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017wcn36xx: dxe tx ack status: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@wcn36xx_dxe_tx_ack_ind._entry_ptr.7 = internal global ptr @wcn36xx_dxe_tx_ack_ind._entry.5, section ".printk_index", align 4
@wcn36xx_dxe_rx_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 682, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014wcn36xx: WARNING No DXE interrupt pending\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wcn36xx_dxe_rx_frame\00", [43 x i8] zeroinitializer }, align 32
@wcn36xx_dxe_rx_frame._entry_ptr = internal global ptr @wcn36xx_dxe_rx_frame._entry, section ".printk_index", align 4
@wcn36xx_dxe_allocate_mem_pools._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013wcn36xx: ERROR Failed to allocate BD mempool\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wcn36xx_dxe_allocate_mem_pools\00", [33 x i8] zeroinitializer }, align 32
@wcn36xx_dxe_allocate_mem_pools._entry_ptr = internal global ptr @wcn36xx_dxe_allocate_mem_pools._entry, section ".printk_index", align 4
@wcn36xx_dxe_tx_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013wcn36xx: ERROR bd_cpu_addr cannot be NULL for skb DXE\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wcn36xx_dxe_tx_frame\00", [43 x i8] zeroinitializer }, align 32
@wcn36xx_dxe_tx_frame._entry_ptr = internal global ptr @wcn36xx_dxe_tx_frame._entry, section ".printk_index", align 4
@wcn36xx_dxe_tx_frame._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017wcn36xx: DXE TX\0A\00", [45 x i8] zeroinitializer }, align 32
@wcn36xx_dxe_tx_frame._entry_ptr.16 = internal global ptr @wcn36xx_dxe_tx_frame._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wcn36xx: DESC1 >>> \00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wcn36xx: BD   >>> \00", [45 x i8] zeroinitializer }, align 32
@wcn36xx_dxe_tx_frame._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 806, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to DMA map src_addr_l\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wcn36xx_dxe_tx_frame._entry_ptr.24 = internal global ptr @wcn36xx_dxe_tx_frame._entry.20, section ".printk_index", align 4
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wcn36xx: DESC2 >>> \00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wcn36xx: SKB   >>> \00", [44 x i8] zeroinitializer }, align 32
@wcn36xx_dxe_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 919, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error allocating descriptor\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wcn36xx_dxe_init\00", [47 x i8] zeroinitializer }, align 32
@wcn36xx_dxe_init._entry_ptr = internal global ptr @wcn36xx_dxe_init._entry, section ".printk_index", align 4
@wcn36xx_dxe_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 940, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@wcn36xx_dxe_init._entry_ptr.30 = internal global ptr @wcn36xx_dxe_init._entry.29, section ".printk_index", align 4
@wcn36xx_dxe_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 962, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@wcn36xx_dxe_init._entry_ptr.32 = internal global ptr @wcn36xx_dxe_init._entry.31, section ".printk_index", align 4
@wcn36xx_dxe_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 993, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@wcn36xx_dxe_init._entry_ptr.34 = internal global ptr @wcn36xx_dxe_init._entry.33, section ".printk_index", align 4
@wcn36xx_dxe_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&wcn->tx_ack_timer)\00", [43 x i8] zeroinitializer }, align 32
@wcn36xx_dxe_allocate_ctl_block.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ch->lock\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@wcn36xx_dxe_read_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017wcn36xx: wcn36xx_dxe_read_register: addr=%x, data=%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wcn36xx_dxe_read_register\00", [38 x i8] zeroinitializer }, align 32
@wcn36xx_dxe_read_register._entry_ptr = internal global ptr @wcn36xx_dxe_read_register._entry, section ".printk_index", align 4
@wcn36xx_rx_handle_packets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013wcn36xx: ERROR DXE IRQ reported error on RX channel\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wcn36xx_rx_handle_packets\00", [38 x i8] zeroinitializer }, align 32
@wcn36xx_rx_handle_packets._entry_ptr = internal global ptr @wcn36xx_rx_handle_packets._entry, section ".printk_index", align 4
@wcn36xx_dxe_fill_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 306, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unable to map skb\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wcn36xx_dxe_fill_skb\00", [43 x i8] zeroinitializer }, align 32
@wcn36xx_dxe_fill_skb._entry_ptr = internal global ptr @wcn36xx_dxe_fill_skb._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@wcn36xx_dxe_write_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017wcn36xx: wcn36xx_dxe_write_register: addr=%x, data=%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wcn36xx_dxe_write_register\00", [37 x i8] zeroinitializer }, align 32
@wcn36xx_dxe_write_register._entry_ptr = internal global ptr @wcn36xx_dxe_write_register._entry, section ".printk_index", align 4
@wcn36xx_ccu_write_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 34, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017wcn36xx: wcn36xx_ccu_write_register: addr=%x, data=%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wcn36xx_ccu_write_register\00", [37 x i8] zeroinitializer }, align 32
@wcn36xx_ccu_write_register._entry_ptr = internal global ptr @wcn36xx_ccu_write_register._entry, section ".printk_index", align 4
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wcn36xx_tx\00", [21 x i8] zeroinitializer }, align 32
@wcn36xx_dxe_request_irqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013wcn36xx: ERROR failed to alloc tx irq\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wcn36xx_dxe_request_irqs\00", [39 x i8] zeroinitializer }, align 32
@wcn36xx_dxe_request_irqs._entry_ptr = internal global ptr @wcn36xx_dxe_request_irqs._entry, section ".printk_index", align 4
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wcn36xx_rx\00", [21 x i8] zeroinitializer }, align 32
@wcn36xx_dxe_request_irqs._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.51, ptr @.str.2, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013wcn36xx: ERROR failed to alloc rx irq\0A\00", [55 x i8] zeroinitializer }, align 32
@wcn36xx_dxe_request_irqs._entry_ptr.55 = internal global ptr @wcn36xx_dxe_request_irqs._entry.53, section ".printk_index", align 4
@wcn36xx_irq_tx_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013wcn36xx: ERROR DXE IRQ reported error: 0x%x in high TX channel\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wcn36xx_irq_tx_complete\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_irq_tx_complete._entry_ptr = internal global ptr @wcn36xx_irq_tx_complete._entry, section ".printk_index", align 4
@wcn36xx_irq_tx_complete._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017wcn36xx: dxe tx ready high, reason %08x\0A\00", [53 x i8] zeroinitializer }, align 32
@wcn36xx_irq_tx_complete._entry_ptr.60 = internal global ptr @wcn36xx_irq_tx_complete._entry.58, section ".printk_index", align 4
@wcn36xx_irq_tx_complete._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.2, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013wcn36xx: ERROR DXE IRQ reported error: 0x%x in low TX channel\0A\00", [63 x i8] zeroinitializer }, align 32
@wcn36xx_irq_tx_complete._entry_ptr.63 = internal global ptr @wcn36xx_irq_tx_complete._entry.61, section ".printk_index", align 4
@wcn36xx_irq_tx_complete._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.57, ptr @.str.2, i32 530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017wcn36xx: dxe tx ready low, reason %08x\0A\00", [54 x i8] zeroinitializer }, align 32
@wcn36xx_irq_tx_complete._entry_ptr.66 = internal global ptr @wcn36xx_irq_tx_complete._entry.64, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wcn36xx_dxe_tx_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017wcn36xx: TX timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wcn36xx_dxe_tx_timer\00", [43 x i8] zeroinitializer }, align 32
@wcn36xx_dxe_tx_timer._entry_ptr = internal global ptr @wcn36xx_dxe_tx_timer._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.69 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 155, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 356, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 367, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 682, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 724, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 775, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 793, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 795, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 797, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 806, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 815, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 817, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 919, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 940, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 962, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 993, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1023, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 75, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 52, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 601, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 306, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 326, i32 6 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 41, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 32, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 555, i32 25 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 557, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 562, i32 6 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 564, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 474, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 490, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 513, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 529, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.292 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.293 = private constant [42 x i8] c"../drivers/net/wireless/ath/wcn36xx/dxe.c\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 381, i32 2 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @wcn36xx_ccu_write_register._entry, ptr @wcn36xx_ccu_write_register._entry_ptr, ptr @wcn36xx_dxe_alloc_ctl_blks._entry, ptr @wcn36xx_dxe_alloc_ctl_blks._entry_ptr, ptr @wcn36xx_dxe_allocate_mem_pools._entry, ptr @wcn36xx_dxe_allocate_mem_pools._entry_ptr, ptr @wcn36xx_dxe_fill_skb._entry, ptr @wcn36xx_dxe_fill_skb._entry_ptr, ptr @wcn36xx_dxe_init._entry, ptr @wcn36xx_dxe_init._entry.29, ptr @wcn36xx_dxe_init._entry.31, ptr @wcn36xx_dxe_init._entry.33, ptr @wcn36xx_dxe_init._entry_ptr, ptr @wcn36xx_dxe_init._entry_ptr.30, ptr @wcn36xx_dxe_init._entry_ptr.32, ptr @wcn36xx_dxe_init._entry_ptr.34, ptr @wcn36xx_dxe_read_register._entry, ptr @wcn36xx_dxe_read_register._entry_ptr, ptr @wcn36xx_dxe_request_irqs._entry, ptr @wcn36xx_dxe_request_irqs._entry.53, ptr @wcn36xx_dxe_request_irqs._entry_ptr, ptr @wcn36xx_dxe_request_irqs._entry_ptr.55, ptr @wcn36xx_dxe_rx_frame._entry, ptr @wcn36xx_dxe_rx_frame._entry_ptr, ptr @wcn36xx_dxe_tx_ack_ind._entry, ptr @wcn36xx_dxe_tx_ack_ind._entry.5, ptr @wcn36xx_dxe_tx_ack_ind._entry_ptr, ptr @wcn36xx_dxe_tx_ack_ind._entry_ptr.7, ptr @wcn36xx_dxe_tx_frame._entry, ptr @wcn36xx_dxe_tx_frame._entry.14, ptr @wcn36xx_dxe_tx_frame._entry.20, ptr @wcn36xx_dxe_tx_frame._entry_ptr, ptr @wcn36xx_dxe_tx_frame._entry_ptr.16, ptr @wcn36xx_dxe_tx_frame._entry_ptr.24, ptr @wcn36xx_dxe_tx_timer._entry, ptr @wcn36xx_dxe_tx_timer._entry_ptr, ptr @wcn36xx_dxe_write_register._entry, ptr @wcn36xx_dxe_write_register._entry_ptr, ptr @wcn36xx_irq_tx_complete._entry, ptr @wcn36xx_irq_tx_complete._entry.58, ptr @wcn36xx_irq_tx_complete._entry.61, ptr @wcn36xx_irq_tx_complete._entry.64, ptr @wcn36xx_irq_tx_complete._entry_ptr, ptr @wcn36xx_irq_tx_complete._entry_ptr.60, ptr @wcn36xx_irq_tx_complete._entry_ptr.63, ptr @wcn36xx_irq_tx_complete._entry_ptr.66, ptr @wcn36xx_rx_handle_packets._entry, ptr @wcn36xx_rx_handle_packets._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @wcn36xx_dxe_init.__key, ptr @.str.35, ptr @wcn36xx_dxe_allocate_ctl_block.__key, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_dxe_alloc_ctl_blks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_dxe_tx_ack_ind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_dxe_tx_ack_ind._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_dxe_rx_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_dxe_allocate_mem_pools._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_dxe_tx_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_dxe_tx_frame._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_dxe_tx_frame._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_dxe_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_dxe_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_dxe_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_dxe_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_dxe_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_dxe_allocate_ctl_block.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_dxe_read_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_rx_handle_packets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_dxe_fill_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_dxe_write_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_ccu_write_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_dxe_request_irqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_dxe_request_irqs._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_irq_tx_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_irq_tx_complete._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_irq_tx_complete._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_irq_tx_complete._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_dxe_tx_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_dxe_alloc_ctl_blks(ptr noundef %wcn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dxe_tx_l_ch = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 40
  %ch_type = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 40, i32 1
  %0 = ptrtoint ptr %ch_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ch_type, align 4
  %ch_type1 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 41, i32 1
  %1 = ptrtoint ptr %ch_type1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %ch_type1, align 4
  %dxe_rx_l_ch = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 42
  %ch_type2 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 42, i32 1
  %2 = ptrtoint ptr %ch_type2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %ch_type2, align 4
  %dxe_rx_h_ch = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 43
  %ch_type3 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 43, i32 1
  %3 = ptrtoint ptr %ch_type3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %ch_type3, align 4
  %desc_num = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 40, i32 4
  %4 = ptrtoint ptr %desc_num to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 128, ptr %desc_num, align 4
  %desc_num6 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 41, i32 4
  %5 = ptrtoint ptr %desc_num6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10, ptr %desc_num6, align 4
  %desc_num8 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 42, i32 4
  %6 = ptrtoint ptr %desc_num8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 512, ptr %desc_num8, align 4
  %desc_num10 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 43, i32 4
  %7 = ptrtoint ptr %desc_num10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 40, ptr %desc_num10, align 4
  %dxe_wq = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 40, i32 7
  %8 = ptrtoint ptr %dxe_wq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 23, ptr %dxe_wq, align 4
  %dxe_wq13 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 41, i32 7
  %9 = ptrtoint ptr %dxe_wq13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 23, ptr %dxe_wq13, align 4
  %ctrl_bd = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 40, i32 8
  %10 = ptrtoint ptr %ctrl_bd to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3181125, ptr %ctrl_bd, align 4
  %ctrl_bd16 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 41, i32 8
  %11 = ptrtoint ptr %ctrl_bd16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3198533, ptr %ctrl_bd16, align 4
  %ctrl_skb = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 40, i32 9
  %12 = ptrtoint ptr %ctrl_skb to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3312205, ptr %ctrl_skb, align 4
  %ctrl_skb19 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 41, i32 9
  %13 = ptrtoint ptr %ctrl_skb19 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3329613, ptr %ctrl_skb19, align 4
  %reg_ctrl = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 40, i32 10
  %14 = ptrtoint ptr %reg_ctrl to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1024, ptr %reg_ctrl, align 4
  %reg_ctrl22 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 41, i32 10
  %15 = ptrtoint ptr %reg_ctrl22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1280, ptr %reg_ctrl22, align 4
  %def_ctrl = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 40, i32 11
  %16 = ptrtoint ptr %def_ctrl to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -2076275891, ptr %def_ctrl, align 4
  %def_ctrl25 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 41, i32 11
  %17 = ptrtoint ptr %def_ctrl25 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -2059481267, ptr %def_ctrl25, align 4
  %call = tail call fastcc i32 @wcn36xx_dxe_allocate_ctl_block(ptr noundef %dxe_tx_l_ch)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end:                                           ; preds = %entry
  %dxe_tx_h_ch = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 41
  %call28 = tail call fastcc i32 @wcn36xx_dxe_allocate_ctl_block(ptr noundef %dxe_tx_h_ch)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end31:                                         ; preds = %if.end
  %call33 = tail call fastcc i32 @wcn36xx_dxe_allocate_ctl_block(ptr noundef %dxe_rx_l_ch)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end31.do.end_crit_edge

if.end31.do.end_crit_edge:                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end36:                                         ; preds = %if.end31
  %call38 = tail call fastcc i32 @wcn36xx_dxe_allocate_ctl_block(ptr noundef %dxe_rx_h_ch)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end36.do.end_crit_edge

if.end36.do.end_crit_edge:                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end41:                                         ; preds = %if.end36
  %tx_enable_state = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 19
  %18 = ptrtoint ptr %tx_enable_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_enable_state, align 4
  %call42 = tail call i32 @qcom_smem_state_update_bits(ptr noundef %19, i32 noundef 1536, i32 noundef 512) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end41.cleanup_crit_edge, label %if.end41.do.end_crit_edge

if.end41.do.end_crit_edge:                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end41.do.end_crit_edge, %if.end36.do.end_crit_edge, %if.end31.do.end_crit_edge, %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  tail call void @wcn36xx_dxe_free_ctl_blks(ptr noundef %wcn)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end41.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wcn36xx_dxe_allocate_ctl_block(ptr noundef %ch) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef %ch, ptr noundef nonnull @.str.36, ptr noundef nonnull @wcn36xx_dxe_allocate_ctl_block.__key, i16 noundef signext 3) #5
  %desc_num = getelementptr inbounds %struct.wcn36xx_dxe_ch, ptr %ch, i32 0, i32 4
  %0 = ptrtoint ptr %desc_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp35.not = icmp eq i32 %1, 0
  br i1 %cmp35.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %head_blk_ctl7 = getelementptr inbounds %struct.wcn36xx_dxe_ch, ptr %ch, i32 0, i32 5
  %tail_blk_ctl = getelementptr inbounds %struct.wcn36xx_dxe_ch, ptr %ch, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %for.body.lr.ph
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end12.for.body_crit_edge ]
  %prev_ctl.036 = phi ptr [ null, %for.body.lr.ph ], [ %call7.i.i, %if.end12.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 28) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %out_fail, label %if.end

if.end:                                           ; preds = %for.body
  %ctl_blk_order = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %ctl_blk_order to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %i.037, ptr %ctl_blk_order, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.037)
  %cmp2 = icmp eq i32 %i.037, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %head_blk_ctl7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %head_blk_ctl7, align 4
  %5 = ptrtoint ptr %tail_blk_ctl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %tail_blk_ctl, align 4
  br label %if.end12

if.else:                                          ; preds = %if.end
  %6 = ptrtoint ptr %desc_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %desc_num, align 4
  %sub = add i32 %7, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %i.037)
  %cmp5 = icmp eq i32 %sub, %i.037
  %8 = ptrtoint ptr %prev_ctl.036 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %prev_ctl.036, align 8
  br i1 %cmp5, label %if.then6, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %head_blk_ctl7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head_blk_ctl7, align 4
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %call7.i.i, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then6, %if.else.if.end12_crit_edge, %if.then3
  %inc = add nuw i32 %i.037, 1
  %12 = ptrtoint ptr %desc_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %desc_num, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %if.end12.for.body_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

out_fail:                                         ; preds = %for.body
  %14 = ptrtoint ptr %head_blk_ctl7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head_blk_ctl7, align 4
  %16 = ptrtoint ptr %desc_num to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %desc_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp6.i = icmp eq i32 %17, 0
  %tobool.not7.i = icmp eq ptr %15, null
  %or.cond8.i = select i1 %cmp6.i, i1 true, i1 %tobool.not7.i
  br i1 %or.cond8.i, label %out_fail.cleanup_crit_edge, label %out_fail.for.body.i_crit_edge

out_fail.for.body.i_crit_edge:                    ; preds = %out_fail
  br label %for.body.i

out_fail.cleanup_crit_edge:                       ; preds = %out_fail
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %out_fail.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %out_fail.for.body.i_crit_edge ]
  %ctl.09.i = phi ptr [ %19, %for.body.i.for.body.i_crit_edge ], [ %15, %out_fail.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %ctl.09.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctl.09.i, align 4
  tail call void @kfree(ptr noundef nonnull %ctl.09.i) #5
  %inc.i = add nuw i32 %i.010.i, 1
  %20 = ptrtoint ptr %desc_num to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %desc_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %21)
  %cmp.i = icmp uge i32 %inc.i, %21
  %tobool.not.i = icmp eq ptr %19, null
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %out_fail.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %out_fail.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -12, %for.body.i.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_smem_state_update_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wcn36xx_dxe_free_ctl_blks(ptr nocapture noundef readonly %wcn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %head_blk_ctl.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 40, i32 5
  %0 = ptrtoint ptr %head_blk_ctl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head_blk_ctl.i, align 4
  %desc_num.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 40, i32 4
  %2 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %desc_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.i = icmp eq i32 %3, 0
  %tobool.not7.i = icmp eq ptr %1, null
  %or.cond8.i = select i1 %cmp6.i, i1 true, i1 %tobool.not7.i
  br i1 %or.cond8.i, label %entry.wcn36xx_dxe_free_ctl_block.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.wcn36xx_dxe_free_ctl_block.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_free_ctl_block.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %ctl.09.i = phi ptr [ %5, %for.body.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %ctl.09.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctl.09.i, align 4
  tail call void @kfree(ptr noundef nonnull %ctl.09.i) #5
  %inc.i = add nuw i32 %i.010.i, 1
  %6 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %desc_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %7)
  %cmp.i = icmp uge i32 %inc.i, %7
  %tobool.not.i = icmp eq ptr %5, null
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %for.body.i.wcn36xx_dxe_free_ctl_block.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.wcn36xx_dxe_free_ctl_block.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_free_ctl_block.exit

wcn36xx_dxe_free_ctl_block.exit:                  ; preds = %for.body.i.wcn36xx_dxe_free_ctl_block.exit_crit_edge, %entry.wcn36xx_dxe_free_ctl_block.exit_crit_edge
  %head_blk_ctl.i4 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 41, i32 5
  %8 = ptrtoint ptr %head_blk_ctl.i4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head_blk_ctl.i4, align 4
  %desc_num.i5 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 41, i32 4
  %10 = ptrtoint ptr %desc_num.i5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %desc_num.i5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp6.i6 = icmp eq i32 %11, 0
  %tobool.not7.i7 = icmp eq ptr %9, null
  %or.cond8.i8 = select i1 %cmp6.i6, i1 true, i1 %tobool.not7.i7
  br i1 %or.cond8.i8, label %wcn36xx_dxe_free_ctl_block.exit.wcn36xx_dxe_free_ctl_block.exit16_crit_edge, label %wcn36xx_dxe_free_ctl_block.exit.for.body.i15_crit_edge

wcn36xx_dxe_free_ctl_block.exit.for.body.i15_crit_edge: ; preds = %wcn36xx_dxe_free_ctl_block.exit
  br label %for.body.i15

wcn36xx_dxe_free_ctl_block.exit.wcn36xx_dxe_free_ctl_block.exit16_crit_edge: ; preds = %wcn36xx_dxe_free_ctl_block.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_free_ctl_block.exit16

for.body.i15:                                     ; preds = %for.body.i15.for.body.i15_crit_edge, %wcn36xx_dxe_free_ctl_block.exit.for.body.i15_crit_edge
  %i.010.i9 = phi i32 [ %inc.i11, %for.body.i15.for.body.i15_crit_edge ], [ 0, %wcn36xx_dxe_free_ctl_block.exit.for.body.i15_crit_edge ]
  %ctl.09.i10 = phi ptr [ %13, %for.body.i15.for.body.i15_crit_edge ], [ %9, %wcn36xx_dxe_free_ctl_block.exit.for.body.i15_crit_edge ]
  %12 = ptrtoint ptr %ctl.09.i10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctl.09.i10, align 4
  tail call void @kfree(ptr noundef nonnull %ctl.09.i10) #5
  %inc.i11 = add nuw i32 %i.010.i9, 1
  %14 = ptrtoint ptr %desc_num.i5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %desc_num.i5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i11, i32 %15)
  %cmp.i12 = icmp uge i32 %inc.i11, %15
  %tobool.not.i13 = icmp eq ptr %13, null
  %or.cond.i14 = select i1 %cmp.i12, i1 true, i1 %tobool.not.i13
  br i1 %or.cond.i14, label %for.body.i15.wcn36xx_dxe_free_ctl_block.exit16_crit_edge, label %for.body.i15.for.body.i15_crit_edge

for.body.i15.for.body.i15_crit_edge:              ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i15

for.body.i15.wcn36xx_dxe_free_ctl_block.exit16_crit_edge: ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_free_ctl_block.exit16

wcn36xx_dxe_free_ctl_block.exit16:                ; preds = %for.body.i15.wcn36xx_dxe_free_ctl_block.exit16_crit_edge, %wcn36xx_dxe_free_ctl_block.exit.wcn36xx_dxe_free_ctl_block.exit16_crit_edge
  %head_blk_ctl.i17 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 42, i32 5
  %16 = ptrtoint ptr %head_blk_ctl.i17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head_blk_ctl.i17, align 4
  %desc_num.i18 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 42, i32 4
  %18 = ptrtoint ptr %desc_num.i18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %desc_num.i18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp6.i19 = icmp eq i32 %19, 0
  %tobool.not7.i20 = icmp eq ptr %17, null
  %or.cond8.i21 = select i1 %cmp6.i19, i1 true, i1 %tobool.not7.i20
  br i1 %or.cond8.i21, label %wcn36xx_dxe_free_ctl_block.exit16.wcn36xx_dxe_free_ctl_block.exit29_crit_edge, label %wcn36xx_dxe_free_ctl_block.exit16.for.body.i28_crit_edge

wcn36xx_dxe_free_ctl_block.exit16.for.body.i28_crit_edge: ; preds = %wcn36xx_dxe_free_ctl_block.exit16
  br label %for.body.i28

wcn36xx_dxe_free_ctl_block.exit16.wcn36xx_dxe_free_ctl_block.exit29_crit_edge: ; preds = %wcn36xx_dxe_free_ctl_block.exit16
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_free_ctl_block.exit29

for.body.i28:                                     ; preds = %for.body.i28.for.body.i28_crit_edge, %wcn36xx_dxe_free_ctl_block.exit16.for.body.i28_crit_edge
  %i.010.i22 = phi i32 [ %inc.i24, %for.body.i28.for.body.i28_crit_edge ], [ 0, %wcn36xx_dxe_free_ctl_block.exit16.for.body.i28_crit_edge ]
  %ctl.09.i23 = phi ptr [ %21, %for.body.i28.for.body.i28_crit_edge ], [ %17, %wcn36xx_dxe_free_ctl_block.exit16.for.body.i28_crit_edge ]
  %20 = ptrtoint ptr %ctl.09.i23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctl.09.i23, align 4
  tail call void @kfree(ptr noundef nonnull %ctl.09.i23) #5
  %inc.i24 = add nuw i32 %i.010.i22, 1
  %22 = ptrtoint ptr %desc_num.i18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %desc_num.i18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i24, i32 %23)
  %cmp.i25 = icmp uge i32 %inc.i24, %23
  %tobool.not.i26 = icmp eq ptr %21, null
  %or.cond.i27 = select i1 %cmp.i25, i1 true, i1 %tobool.not.i26
  br i1 %or.cond.i27, label %for.body.i28.wcn36xx_dxe_free_ctl_block.exit29_crit_edge, label %for.body.i28.for.body.i28_crit_edge

for.body.i28.for.body.i28_crit_edge:              ; preds = %for.body.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i28

for.body.i28.wcn36xx_dxe_free_ctl_block.exit29_crit_edge: ; preds = %for.body.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_free_ctl_block.exit29

wcn36xx_dxe_free_ctl_block.exit29:                ; preds = %for.body.i28.wcn36xx_dxe_free_ctl_block.exit29_crit_edge, %wcn36xx_dxe_free_ctl_block.exit16.wcn36xx_dxe_free_ctl_block.exit29_crit_edge
  %head_blk_ctl.i30 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 43, i32 5
  %24 = ptrtoint ptr %head_blk_ctl.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head_blk_ctl.i30, align 4
  %desc_num.i31 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 43, i32 4
  %26 = ptrtoint ptr %desc_num.i31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %desc_num.i31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp6.i32 = icmp eq i32 %27, 0
  %tobool.not7.i33 = icmp eq ptr %25, null
  %or.cond8.i34 = select i1 %cmp6.i32, i1 true, i1 %tobool.not7.i33
  br i1 %or.cond8.i34, label %wcn36xx_dxe_free_ctl_block.exit29.wcn36xx_dxe_free_ctl_block.exit42_crit_edge, label %wcn36xx_dxe_free_ctl_block.exit29.for.body.i41_crit_edge

wcn36xx_dxe_free_ctl_block.exit29.for.body.i41_crit_edge: ; preds = %wcn36xx_dxe_free_ctl_block.exit29
  br label %for.body.i41

wcn36xx_dxe_free_ctl_block.exit29.wcn36xx_dxe_free_ctl_block.exit42_crit_edge: ; preds = %wcn36xx_dxe_free_ctl_block.exit29
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_free_ctl_block.exit42

for.body.i41:                                     ; preds = %for.body.i41.for.body.i41_crit_edge, %wcn36xx_dxe_free_ctl_block.exit29.for.body.i41_crit_edge
  %i.010.i35 = phi i32 [ %inc.i37, %for.body.i41.for.body.i41_crit_edge ], [ 0, %wcn36xx_dxe_free_ctl_block.exit29.for.body.i41_crit_edge ]
  %ctl.09.i36 = phi ptr [ %29, %for.body.i41.for.body.i41_crit_edge ], [ %25, %wcn36xx_dxe_free_ctl_block.exit29.for.body.i41_crit_edge ]
  %28 = ptrtoint ptr %ctl.09.i36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctl.09.i36, align 4
  tail call void @kfree(ptr noundef nonnull %ctl.09.i36) #5
  %inc.i37 = add nuw i32 %i.010.i35, 1
  %30 = ptrtoint ptr %desc_num.i31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %desc_num.i31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i37, i32 %31)
  %cmp.i38 = icmp uge i32 %inc.i37, %31
  %tobool.not.i39 = icmp eq ptr %29, null
  %or.cond.i40 = select i1 %cmp.i38, i1 true, i1 %tobool.not.i39
  br i1 %or.cond.i40, label %for.body.i41.wcn36xx_dxe_free_ctl_block.exit42_crit_edge, label %for.body.i41.for.body.i41_crit_edge

for.body.i41.for.body.i41_crit_edge:              ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i41

for.body.i41.wcn36xx_dxe_free_ctl_block.exit42_crit_edge: ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_free_ctl_block.exit42

wcn36xx_dxe_free_ctl_block.exit42:                ; preds = %for.body.i41.wcn36xx_dxe_free_ctl_block.exit42_crit_edge, %wcn36xx_dxe_free_ctl_block.exit29.wcn36xx_dxe_free_ctl_block.exit42_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wcn36xx_dxe_tx_ack_ind(ptr noundef %wcn, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dxe_lock = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 44
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dxe_lock) #5
  %tx_ack_skb = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 48
  %0 = ptrtoint ptr %tx_ack_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ack_skb, align 4
  store ptr null, ptr %tx_ack_skb, align 4
  %tx_ack_timer = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 49
  %call6 = tail call i32 @del_timer(ptr noundef %tx_ack_timer) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dxe_lock, i32 noundef %call2) #5
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end10, label %if.end

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status)
  %cmp14 = icmp eq i32 %status, 1
  %2 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cb.i, align 8
  %and = and i32 %3, -513
  %masksel = select i1 %cmp14, i32 512, i32 0
  %storemerge = or i32 %and, %masksel
  store i32 %storemerge, ptr %cb.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %4 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and21 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end.do.end31_crit_edge, label %do.end26

if.end.do.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end31

do.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %status) #8
  br label %do.end31

do.end31:                                         ; preds = %do.end26, %if.end.do.end31_crit_edge
  %5 = ptrtoint ptr %wcn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wcn, align 4
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %6, ptr noundef nonnull %1) #5
  %7 = ptrtoint ptr %wcn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wcn, align 4
  tail call void @ieee80211_wake_queues(ptr noundef %8) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %do.end10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wcn36xx_dxe_rx_frame(ptr noundef %wcn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dxe_base.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 17
  %0 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !142
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %4 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.wcn36xx_dxe_read_register.exit_crit_edge, label %do.end.i

entry.wcn36xx_dxe_read_register.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_read_register.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef 32, i32 noundef %3) #8
  br label %wcn36xx_dxe_read_register.exit

wcn36xx_dxe_read_register.exit:                   ; preds = %do.end.i, %entry.wcn36xx_dxe_read_register.exit_crit_edge
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %wcn36xx_dxe_read_register.exit.if.end_crit_edge, label %if.then

wcn36xx_dxe_read_register.exit.if.end_crit_edge:  ; preds = %wcn36xx_dxe_read_register.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %wcn36xx_dxe_read_register.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dxe_rx_l_ch = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 42
  tail call fastcc void @wcn36xx_rx_handle_packets(ptr noundef %wcn, ptr noundef %dxe_rx_l_ch, i32 noundef 1223983, i32 noundef 2, i32 noundef 2, i32 noundef 1092)
  br label %if.end

if.end:                                           ; preds = %if.then, %wcn36xx_dxe_read_register.exit.if.end_crit_edge
  %and1 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end5, label %if.end5.thread

if.end5.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dxe_rx_h_ch = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 43
  tail call fastcc void @wcn36xx_rx_handle_packets(ptr noundef %wcn, ptr noundef %dxe_rx_h_ch, i32 noundef 1233199, i32 noundef 8, i32 noundef 8, i32 noundef 1220)
  br label %if.end9

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool6.not = icmp eq i32 %2, 0
  br i1 %tobool6.not, label %do.end, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #8
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.end5.if.end9_crit_edge, %if.end5.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wcn36xx_rx_handle_packets(ptr noundef %wcn, ptr noundef %ch, i32 noundef %ctrl, i32 noundef %en_mask, i32 noundef %int_mask, i32 noundef %status_reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dxe_base.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 17
  %0 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %status_reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !142
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %4 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.wcn36xx_dxe_read_register.exit_crit_edge, label %do.end.i

entry.wcn36xx_dxe_read_register.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_read_register.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %status_reg, i32 noundef %3) #8
  br label %wcn36xx_dxe_read_register.exit

wcn36xx_dxe_read_register.exit:                   ; preds = %do.end.i, %entry.wcn36xx_dxe_read_register.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %5 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i1 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1)
  %tobool.not.i2 = icmp eq i32 %and.i1, 0
  br i1 %tobool.not.i2, label %wcn36xx_dxe_read_register.exit.wcn36xx_dxe_write_register.exit_crit_edge, label %do.end.i3

wcn36xx_dxe_read_register.exit.wcn36xx_dxe_write_register.exit_crit_edge: ; preds = %wcn36xx_dxe_read_register.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit

do.end.i3:                                        ; preds = %wcn36xx_dxe_read_register.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 48, i32 noundef %int_mask) #8
  br label %wcn36xx_dxe_write_register.exit

wcn36xx_dxe_write_register.exit:                  ; preds = %do.end.i3, %wcn36xx_dxe_read_register.exit.wcn36xx_dxe_write_register.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %int_mask) #5
  %7 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %8, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %6) #5, !srcloc !145
  %and = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %wcn36xx_dxe_write_register.exit.if.end_crit_edge, label %if.then

wcn36xx_dxe_write_register.exit.if.end_crit_edge: ; preds = %wcn36xx_dxe_write_register.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %wcn36xx_dxe_write_register.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %9 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i6 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6)
  %tobool.not.i7 = icmp eq i32 %and.i6, 0
  br i1 %tobool.not.i7, label %if.then.wcn36xx_dxe_write_register.exit12_crit_edge, label %do.end.i9

if.then.wcn36xx_dxe_write_register.exit12_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit12

do.end.i9:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call.i8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 60, i32 noundef %int_mask) #8
  br label %wcn36xx_dxe_write_register.exit12

wcn36xx_dxe_write_register.exit12:                ; preds = %do.end.i9, %if.then.wcn36xx_dxe_write_register.exit12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %11, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %6) #5, !srcloc !145
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #8
  br label %if.end

if.end:                                           ; preds = %wcn36xx_dxe_write_register.exit12, %wcn36xx_dxe_write_register.exit.if.end_crit_edge
  %and1 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %12 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i13 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13)
  %tobool.not.i14 = icmp eq i32 %and.i13, 0
  br i1 %tobool.not.i14, label %if.then3.wcn36xx_dxe_write_register.exit19_crit_edge, label %do.end.i16

if.then3.wcn36xx_dxe_write_register.exit19_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit19

do.end.i16:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %call.i15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 56, i32 noundef %int_mask) #8
  br label %wcn36xx_dxe_write_register.exit19

wcn36xx_dxe_write_register.exit19:                ; preds = %do.end.i16, %if.then3.wcn36xx_dxe_write_register.exit19_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %14, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %6) #5, !srcloc !145
  br label %if.end4

if.end4:                                          ; preds = %wcn36xx_dxe_write_register.exit19, %if.end.if.end4_crit_edge
  %and5 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end8_crit_edge, label %if.then7

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %15 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i20 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20)
  %tobool.not.i21 = icmp eq i32 %and.i20, 0
  br i1 %tobool.not.i21, label %if.then7.wcn36xx_dxe_write_register.exit26_crit_edge, label %do.end.i23

if.then7.wcn36xx_dxe_write_register.exit26_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit26

do.end.i23:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %call.i22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 52, i32 noundef %int_mask) #8
  br label %wcn36xx_dxe_write_register.exit26

wcn36xx_dxe_write_register.exit26:                ; preds = %do.end.i23, %if.then7.wcn36xx_dxe_write_register.exit26_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %17, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %6) #5, !srcloc !145
  br label %if.end8

if.end8:                                          ; preds = %wcn36xx_dxe_write_register.exit26, %if.end4.if.end8_crit_edge
  %and9 = and i32 %3, 40960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  tail call void @_raw_spin_lock(ptr noundef %ch) #5
  %head_blk_ctl = getelementptr inbounds %struct.wcn36xx_dxe_ch, ptr %ch, i32 0, i32 5
  %18 = ptrtoint ptr %head_blk_ctl to i32
  call void @__asan_load4_noabort(i32 %18)
  %ctl.037 = load ptr, ptr %head_blk_ctl, align 4
  %dxe.0.in38 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %ctl.037, i32 0, i32 1
  %19 = ptrtoint ptr %dxe.0.in38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %dxe.039 = load ptr, ptr %dxe.0.in38, align 4
  %20 = ptrtoint ptr %dxe.039 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load volatile i32, ptr %dxe.039, align 1
  %and1840 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1840)
  %tobool19.not41 = icmp eq i32 %and1840, 0
  br i1 %tobool19.not41, label %while.body.lr.ph, label %if.end12.while.end_crit_edge

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end12
  %dev = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end25.while.body_crit_edge, %while.body.lr.ph
  %dxe.043 = phi ptr [ %dxe.039, %while.body.lr.ph ], [ %dxe.0, %if.end25.while.body_crit_edge ]
  %ctl.042 = phi ptr [ %ctl.037, %while.body.lr.ph ], [ %ctl.0, %if.end25.while.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !146
  %skb20 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %ctl.042, i32 0, i32 4
  %22 = ptrtoint ptr %skb20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb20, align 4
  %dst_addr_l = getelementptr inbounds %struct.wcn36xx_dxe_desc, ptr %dxe.043, i32 0, i32 3
  %24 = ptrtoint ptr %dst_addr_l to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %dst_addr_l, align 1
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %call21 = tail call fastcc i32 @wcn36xx_dxe_fill_skb(ptr noundef %27, ptr noundef %ctl.042, i32 noundef 2592)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp eq i32 %call21, 0
  br i1 %cmp, label %if.then22, label %while.body.if.end25_crit_edge

while.body.if.end25_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then22:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %29, i32 noundef %25, i32 noundef 3872, i32 noundef 2, i32 noundef 0) #5
  %call24 = tail call i32 @wcn36xx_rx_skb(ptr noundef %wcn, ptr noundef %23) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %while.body.if.end25_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !147
  %30 = ptrtoint ptr %dxe.043 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %ctrl, ptr %dxe.043, align 1
  %31 = ptrtoint ptr %ctl.042 to i32
  call void @__asan_load4_noabort(i32 %31)
  %ctl.0 = load ptr, ptr %ctl.042, align 4
  %dxe.0.in = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %ctl.0, i32 0, i32 1
  %32 = ptrtoint ptr %dxe.0.in to i32
  call void @__asan_load4_noabort(i32 %32)
  %dxe.0 = load ptr, ptr %dxe.0.in, align 4
  %33 = ptrtoint ptr %dxe.0 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load volatile i32, ptr %dxe.0, align 1
  %and18 = and i32 %34, 1
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end25.while.body_crit_edge, label %if.end25.while.end_crit_edge

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end25.while.body_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %if.end25.while.end_crit_edge, %if.end12.while.end_crit_edge
  %ctl.0.lcssa = phi ptr [ %ctl.037, %if.end12.while.end_crit_edge ], [ %ctl.0, %if.end25.while.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %35 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i27 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27)
  %tobool.not.i28 = icmp eq i32 %and.i27, 0
  br i1 %tobool.not.i28, label %while.end.wcn36xx_dxe_write_register.exit33_crit_edge, label %do.end.i30

while.end.wcn36xx_dxe_write_register.exit33_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit33

do.end.i30:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 4, i32 noundef %en_mask) #8
  br label %wcn36xx_dxe_write_register.exit33

wcn36xx_dxe_write_register.exit33:                ; preds = %do.end.i30, %while.end.wcn36xx_dxe_write_register.exit33_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %36 = tail call i32 @llvm.bswap.i32(i32 %en_mask) #5
  %37 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %36) #5, !srcloc !145
  %39 = ptrtoint ptr %head_blk_ctl to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %ctl.0.lcssa, ptr %head_blk_ctl, align 4
  tail call void @_raw_spin_unlock(ptr noundef %ch) #5
  br label %cleanup

cleanup:                                          ; preds = %wcn36xx_dxe_write_register.exit33, %if.end8.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_dxe_allocate_mem_pools(ptr noundef %wcn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mgmt_mem_pool = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 46
  %0 = ptrtoint ptr %mgmt_mem_pool to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 144, ptr %mgmt_mem_pool, align 4
  %dev = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %phy_addr = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 46, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %2, i32 noundef 1440, ptr noundef %phy_addr, i32 noundef 3264, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.out_err_crit_edge, label %if.end

entry.out_err_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_err

if.end:                                           ; preds = %entry
  %virt_addr = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 46, i32 1
  %3 = ptrtoint ptr %virt_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %virt_addr, align 4
  %data_mem_pool = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 47
  %4 = ptrtoint ptr %data_mem_pool to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 144, ptr %data_mem_pool, align 4
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %phy_addr11 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 47, i32 2
  %call.i34 = tail call ptr @dma_alloc_attrs(ptr noundef %6, i32 noundef 18432, ptr noundef %phy_addr11, i32 noundef 3264, i32 noundef 0) #5
  %tobool13.not = icmp eq ptr %call.i34, null
  br i1 %tobool13.not, label %if.end.out_err_crit_edge, label %if.end15

if.end.out_err_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_err

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %virt_addr17 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 47, i32 1
  %7 = ptrtoint ptr %virt_addr17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i34, ptr %virt_addr17, align 4
  br label %cleanup

out_err:                                          ; preds = %if.end.out_err_crit_edge, %entry.out_err_crit_edge
  %virt_addr.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 46, i32 1
  %8 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt_addr.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %out_err.if.end.i_crit_edge, label %if.then.i

out_err.if.end.i_crit_edge:                       ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %mgmt_mem_pool to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mgmt_mem_pool, align 4
  %mul.i = mul i32 %13, 10
  %14 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phy_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %11, i32 noundef %mul.i, ptr noundef nonnull %9, i32 noundef %15, i32 noundef 0) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %out_err.if.end.i_crit_edge
  %virt_addr5.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 47, i32 1
  %16 = ptrtoint ptr %virt_addr5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %virt_addr5.i, align 4
  %tobool6.not.i = icmp eq ptr %17, null
  br i1 %tobool6.not.i, label %if.end.i.wcn36xx_dxe_free_mem_pools.exit_crit_edge, label %if.then7.i

if.end.i.wcn36xx_dxe_free_mem_pools.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_free_mem_pools.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %data_mem_pool.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 47
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %20 = ptrtoint ptr %data_mem_pool.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_mem_pool.i, align 4
  %mul11.i = shl i32 %21, 7
  %phy_addr15.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 47, i32 2
  %22 = ptrtoint ptr %phy_addr15.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %phy_addr15.i, align 4
  tail call void @dma_free_attrs(ptr noundef %19, i32 noundef %mul11.i, ptr noundef nonnull %17, i32 noundef %23, i32 noundef 0) #5
  br label %wcn36xx_dxe_free_mem_pools.exit

wcn36xx_dxe_free_mem_pools.exit:                  ; preds = %if.then7.i, %if.end.i.wcn36xx_dxe_free_mem_pools.exit_crit_edge
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #8
  br label %cleanup

cleanup:                                          ; preds = %wcn36xx_dxe_free_mem_pools.exit, %if.end15
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -12, %wcn36xx_dxe_free_mem_pools.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wcn36xx_dxe_free_mem_pools(ptr nocapture noundef readonly %wcn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %virt_addr = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 46, i32 1
  %0 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt_addr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mgmt_mem_pool = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 46
  %dev = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %mgmt_mem_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mgmt_mem_pool, align 4
  %mul = mul i32 %5, 10
  %phy_addr = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 46, i32 2
  %6 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %mul, ptr noundef nonnull %1, i32 noundef %7, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %virt_addr5 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 47, i32 1
  %8 = ptrtoint ptr %virt_addr5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt_addr5, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.end.if.end16_crit_edge, label %if.then7

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %data_mem_pool = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 47
  %dev8 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 1
  %10 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev8, align 4
  %12 = ptrtoint ptr %data_mem_pool to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_mem_pool, align 4
  %mul11 = shl i32 %13, 7
  %phy_addr15 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 47, i32 2
  %14 = ptrtoint ptr %phy_addr15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phy_addr15, align 4
  tail call void @dma_free_attrs(ptr noundef %11, i32 noundef %mul11, ptr noundef nonnull %9, i32 noundef %15, i32 noundef 0) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then7, %if.end.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_dxe_tx_frame(ptr noundef %wcn, ptr nocapture noundef readonly %vif_priv, ptr nocapture noundef readonly %bd, ptr noundef %skb, i1 noundef zeroext %is_low) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dxe_tx_l_ch = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 40
  %dxe_tx_h_ch = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 41
  %cond = select i1 %is_low, ptr %dxe_tx_l_ch, ptr %dxe_tx_h_ch
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cond) #5
  %head_blk_ctl = getelementptr inbounds %struct.wcn36xx_dxe_ch, ptr %cond, i32 0, i32 5
  %0 = ptrtoint ptr %head_blk_ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head_blk_ctl, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %skb5 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %skb5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb5, align 4
  %cmp6.not = icmp eq ptr %5, null
  br i1 %cmp6.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %wcn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wcn, align 4
  tail call void @ieee80211_stop_queues(ptr noundef %7) #5
  %queues_stopped = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 45
  %8 = ptrtoint ptr %queues_stopped to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %queues_stopped, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %bd_cpu_addr = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %bd_cpu_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bd_cpu_addr, align 4
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %if.end18, label %do.end15, !prof !148

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %desc = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc, align 4
  %desc19 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %desc19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %desc19, align 4
  %skb20 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %skb20 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %skb20, align 4
  %bd_cpu_addr21 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %bd_cpu_addr21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bd_cpu_addr21, align 4
  %18 = call ptr @memcpy(ptr %17, ptr %bd, i32 40)
  %bd_phy_addr = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %bd_phy_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bd_phy_addr, align 4
  %src_addr_l = getelementptr inbounds %struct.wcn36xx_dxe_desc, ptr %12, i32 0, i32 2
  %21 = ptrtoint ptr %src_addr_l to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %src_addr_l, align 1
  %dxe_wq = getelementptr inbounds %struct.wcn36xx_dxe_ch, ptr %cond, i32 0, i32 7
  %22 = ptrtoint ptr %dxe_wq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dxe_wq, align 4
  %dst_addr_l = getelementptr inbounds %struct.wcn36xx_dxe_desc, ptr %12, i32 0, i32 3
  %24 = ptrtoint ptr %dst_addr_l to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %dst_addr_l, align 1
  %fr_len = getelementptr inbounds %struct.wcn36xx_dxe_desc, ptr %12, i32 0, i32 1
  %25 = ptrtoint ptr %fr_len to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 40, ptr %fr_len, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %26 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.end18.do.body33_crit_edge, label %do.end27

if.end18.do.body33_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body33

do.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #8
  br label %do.body33

do.body33:                                        ; preds = %do.end27, %if.end18.do.body33_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %27 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and34 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.body33.do.body40_crit_edge, label %if.then36

do.body33.do.body40_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body40

if.then36:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @print_hex_dump(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %12, i32 noundef 32, i1 noundef zeroext false) #5
  br label %do.body40

do.body40:                                        ; preds = %if.then36, %do.body33.do.body40_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %28 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and41 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %do.body40.do.end47_crit_edge, label %if.then43

do.body40.do.end47_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end47

if.then43:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %bd_cpu_addr21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bd_cpu_addr21, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.19, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %30, i32 noundef 40, i1 noundef zeroext false) #5
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %do.body40.do.end47_crit_edge
  %dev = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 1
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %34) #5
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %do.end47
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !148

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %32) #5
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 3
  %37 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %32, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %40, %if.end.i.i ], [ %38, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.44, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #5
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @debug_dma_map_single(ptr noundef %32, ptr noundef %34, i32 noundef %36) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %41 = load ptr, ptr @mem_map, align 4
  %42 = ptrtoint ptr %34 to i32
  %sub.i = add i32 %42, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %41, i32 %shr.i
  %and.i = and i32 %42, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %32, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %36, i32 noundef 1, i32 noundef 0) #5
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %src_addr_l49 = getelementptr inbounds %struct.wcn36xx_dxe_desc, ptr %14, i32 0, i32 2
  %43 = ptrtoint ptr %src_addr_l49 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %retval.0.i, ptr %src_addr_l49, align 1
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %45, i32 noundef %retval.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %do.end57, label %if.end59

do.end57:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end59:                                         ; preds = %dma_map_single_attrs.exit
  %48 = ptrtoint ptr %skb5 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %skb, ptr %skb5, align 4
  %49 = ptrtoint ptr %dxe_wq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dxe_wq, align 4
  %dst_addr_l62 = getelementptr inbounds %struct.wcn36xx_dxe_desc, ptr %14, i32 0, i32 3
  %51 = ptrtoint ptr %dst_addr_l62 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %50, ptr %dst_addr_l62, align 1
  %52 = load ptr, ptr %skb5, align 4
  %len64 = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %len64 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len64, align 4
  %fr_len65 = getelementptr inbounds %struct.wcn36xx_dxe_desc, ptr %14, i32 0, i32 1
  %55 = ptrtoint ptr %fr_len65 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %54, ptr %fr_len65, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %56 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and67 = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end59.do.body73_crit_edge, label %if.then69

if.end59.do.body73_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body73

if.then69:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @print_hex_dump(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.25, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %14, i32 noundef 32, i1 noundef zeroext false) #5
  br label %do.body73

do.body73:                                        ; preds = %if.then69, %if.end59.do.body73_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %57 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and74 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %do.body73.do.end83_crit_edge, label %if.then76

do.body73.do.end83_crit_edge:                     ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end83

if.then76:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %skb5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %skb5, align 4
  %data78 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 19
  %60 = ptrtoint ptr %data78 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data78, align 4
  %len80 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 6
  %62 = ptrtoint ptr %len80 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len80, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.26, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %61, i32 noundef %63, i1 noundef zeroext false) #5
  br label %do.end83

do.end83:                                         ; preds = %if.then76, %do.body73.do.end83_crit_edge
  %64 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %3, align 4
  %66 = ptrtoint ptr %head_blk_ctl to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %head_blk_ctl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  tail call void @arm_heavy_mb() #5
  %ctrl_skb = getelementptr inbounds %struct.wcn36xx_dxe_ch, ptr %cond, i32 0, i32 9
  %67 = ptrtoint ptr %ctrl_skb to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ctrl_skb, align 4
  %69 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %68, ptr %14, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  tail call void @arm_heavy_mb() #5
  %ctrl_bd = getelementptr inbounds %struct.wcn36xx_dxe_ch, ptr %cond, i32 0, i32 8
  %70 = ptrtoint ptr %ctrl_bd to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ctrl_bd, align 4
  %72 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 %71, ptr %12, align 1
  br i1 %is_low, label %land.lhs.true, label %do.end83.if.else_crit_edge

do.end83.if.else_crit_edge:                       ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %do.end83
  %pw_state = getelementptr inbounds %struct.wcn36xx_vif, ptr %vif_priv, i32 0, i32 7
  %73 = ptrtoint ptr %pw_state to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pw_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp95 = icmp eq i32 %74, 1
  br i1 %cmp95, label %if.then97, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then97:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %tx_rings_empty_state = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 21
  %75 = ptrtoint ptr %tx_rings_empty_state to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tx_rings_empty_state, align 4
  %call98 = tail call i32 @qcom_smem_state_update_bits(ptr noundef %76, i32 noundef 1024, i32 noundef 1024) #5
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end83.if.else_crit_edge
  %reg_ctrl = getelementptr inbounds %struct.wcn36xx_dxe_ch, ptr %cond, i32 0, i32 10
  %77 = ptrtoint ptr %reg_ctrl to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %reg_ctrl, align 4
  %def_ctrl = getelementptr inbounds %struct.wcn36xx_dxe_ch, ptr %cond, i32 0, i32 11
  %79 = ptrtoint ptr %def_ctrl to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %def_ctrl, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %81 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i150 = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i150)
  %tobool.not.i = icmp eq i32 %and.i150, 0
  br i1 %tobool.not.i, label %if.else.wcn36xx_dxe_write_register.exit_crit_edge, label %do.end.i

if.else.wcn36xx_dxe_write_register.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call.i151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %78, i32 noundef %80) #8
  br label %wcn36xx_dxe_write_register.exit

wcn36xx_dxe_write_register.exit:                  ; preds = %do.end.i, %if.else.wcn36xx_dxe_write_register.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %82 = tail call i32 @llvm.bswap.i32(i32 %80) #5
  %dxe_base.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 17
  %83 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i152 = getelementptr i8, ptr %84, i32 %78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i152, i32 %82) #5, !srcloc !145
  br label %cleanup

cleanup:                                          ; preds = %wcn36xx_dxe_write_register.exit, %if.then97, %do.end57, %do.end15, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ -22, %do.end15 ], [ -12, %do.end57 ], [ 0, %wcn36xx_dxe_write_register.exit ], [ 0, %if.then97 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cond, i32 noundef %call2) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_dxe_tx_flush(ptr noundef %wcn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dxe_tx_l_ch = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 40
  %head_blk_ctl.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 40, i32 5
  %dxe_tx_h_ch = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 41
  %head_blk_ctl.i4 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 41, i32 5
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end.do.body_crit_edge ]
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dxe_tx_l_ch) #5
  %0 = ptrtoint ptr %head_blk_ctl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head_blk_ctl.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  br label %do.body5.i

do.body5.i:                                       ; preds = %if.end.i.do.body5.i_crit_edge, %do.body
  %ctl_skb.0.i = phi ptr [ %3, %do.body ], [ %9, %if.end.i.do.body5.i_crit_edge ]
  %skb.i = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %ctl_skb.0.i, i32 0, i32 4
  %4 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %_wcn36xx_dxe_tx_channel_is_empty.exit

if.end.i:                                         ; preds = %do.body5.i
  %6 = ptrtoint ptr %ctl_skb.0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctl_skb.0.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %cmp9.not.i = icmp eq ptr %9, %3
  br i1 %cmp9.not.i, label %land.lhs.true, label %if.end.i.do.body5.i_crit_edge

if.end.i.do.body5.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body5.i

_wcn36xx_dxe_tx_channel_is_empty.exit:            ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dxe_tx_l_ch, i32 noundef %call2.i) #5
  br label %if.end

land.lhs.true:                                    ; preds = %if.end.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dxe_tx_l_ch, i32 noundef %call2.i) #5
  %call2.i3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dxe_tx_h_ch) #5
  %10 = ptrtoint ptr %head_blk_ctl.i4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head_blk_ctl.i4, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  br label %do.body5.i8

do.body5.i8:                                      ; preds = %if.end.i10.do.body5.i8_crit_edge, %land.lhs.true
  %ctl_skb.0.i5 = phi ptr [ %13, %land.lhs.true ], [ %19, %if.end.i10.do.body5.i8_crit_edge ]
  %skb.i6 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %ctl_skb.0.i5, i32 0, i32 4
  %14 = ptrtoint ptr %skb.i6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb.i6, align 4
  %tobool.not.i7 = icmp eq ptr %15, null
  br i1 %tobool.not.i7, label %if.end.i10, label %_wcn36xx_dxe_tx_channel_is_empty.exit11

if.end.i10:                                       ; preds = %do.body5.i8
  %16 = ptrtoint ptr %ctl_skb.0.i5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctl_skb.0.i5, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %cmp9.not.i9 = icmp eq ptr %19, %13
  br i1 %cmp9.not.i9, label %_wcn36xx_dxe_tx_channel_is_empty.exit11.thread, label %if.end.i10.do.body5.i8_crit_edge

if.end.i10.do.body5.i8_crit_edge:                 ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body5.i8

_wcn36xx_dxe_tx_channel_is_empty.exit11.thread:   ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dxe_tx_h_ch, i32 noundef %call2.i3) #5
  br label %cleanup

_wcn36xx_dxe_tx_channel_is_empty.exit11:          ; preds = %do.body5.i8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dxe_tx_h_ch, i32 noundef %call2.i3) #5
  br label %if.end

if.end:                                           ; preds = %_wcn36xx_dxe_tx_channel_is_empty.exit11, %_wcn36xx_dxe_tx_channel_is_empty.exit
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #5
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.end.cleanup_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %_wcn36xx_dxe_tx_channel_is_empty.exit11.thread
  %retval.0 = phi i32 [ 0, %_wcn36xx_dxe_tx_channel_is_empty.exit11.thread ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_dxe_init(ptr noundef %wcn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %0 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.wcn36xx_dxe_write_register.exit_crit_edge, label %do.end.i

entry.wcn36xx_dxe_write_register.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 0, i32 noundef 23689) #8
  br label %wcn36xx_dxe_write_register.exit

wcn36xx_dxe_write_register.exit:                  ; preds = %do.end.i, %entry.wcn36xx_dxe_write_register.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %dxe_base.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 17
  %1 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dxe_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 -1990459392) #5, !srcloc !145
  %is_pronto = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 10
  %3 = ptrtoint ptr %is_pronto to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_pronto, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %5 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i140 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i140)
  %tobool.not.i141 = icmp eq i32 %and.i140, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %wcn36xx_dxe_write_register.exit
  br i1 %tobool.not.i141, label %if.then.wcn36xx_ccu_write_register.exit_crit_edge, label %do.end.i139

if.then.wcn36xx_ccu_write_register.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_ccu_write_register.exit

do.end.i139:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call.i138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef 4316, i32 noundef 655377) #8
  br label %wcn36xx_ccu_write_register.exit

wcn36xx_ccu_write_register.exit:                  ; preds = %do.end.i139, %if.then.wcn36xx_ccu_write_register.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  tail call void @arm_heavy_mb() #5
  %ccu_base.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 16
  %6 = ptrtoint ptr %ccu_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ccu_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 285215232) #5, !srcloc !145
  br label %if.end

if.else:                                          ; preds = %wcn36xx_dxe_write_register.exit
  br i1 %tobool.not.i141, label %if.else.wcn36xx_ccu_write_register.exit146_crit_edge, label %do.end.i143

if.else.wcn36xx_ccu_write_register.exit146_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_ccu_write_register.exit146

do.end.i143:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call.i142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef 784, i32 noundef 655377) #8
  br label %wcn36xx_ccu_write_register.exit146

wcn36xx_ccu_write_register.exit146:               ; preds = %do.end.i143, %if.else.wcn36xx_ccu_write_register.exit146_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  tail call void @arm_heavy_mb() #5
  %ccu_base.i144 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 16
  %8 = ptrtoint ptr %ccu_base.i144 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ccu_base.i144, align 4
  %add.ptr.i145 = getelementptr i8, ptr %9, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145, i32 285215232) #5, !srcloc !145
  br label %if.end

if.end:                                           ; preds = %wcn36xx_ccu_write_register.exit146, %wcn36xx_ccu_write_register.exit
  %dev = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %dxe_tx_l_ch = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 40
  %call = tail call fastcc i32 @wcn36xx_dxe_init_descs(ptr noundef %11, ptr noundef %dxe_tx_l_ch)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.27) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %data_mem_pool = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 47
  %14 = ptrtoint ptr %data_mem_pool to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_mem_pool, align 4
  %desc_num.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 40, i32 4
  %16 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %desc_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp19.not.i = icmp eq i32 %17, 0
  br i1 %cmp19.not.i, label %if.end4.wcn36xx_dxe_init_tx_bd.exit_crit_edge, label %for.body.preheader.i

if.end4.wcn36xx_dxe_init_tx_bd.exit_crit_edge:    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_init_tx_bd.exit

for.body.preheader.i:                             ; preds = %if.end4
  %head_blk_ctl.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 40, i32 5
  %virt_addr.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 47, i32 1
  %18 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %virt_addr.i, align 4
  %phy_addr.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 47, i32 2
  %20 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phy_addr.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.preheader.i
  %cur.023.in.i = phi ptr [ %cur.023.i, %if.end.i.for.body.i_crit_edge ], [ %head_blk_ctl.i, %for.body.preheader.i ]
  %bd_cpu_addr.022.i = phi ptr [ %bd_cpu_addr.1.i, %if.end.i.for.body.i_crit_edge ], [ %19, %for.body.preheader.i ]
  %bd_phy_addr.021.i = phi i32 [ %bd_phy_addr.1.i, %if.end.i.for.body.i_crit_edge ], [ %21, %for.body.preheader.i ]
  %i.020.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %22 = ptrtoint ptr %cur.023.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %cur.023.i = load ptr, ptr %cur.023.in.i, align 4
  %and.i147 = and i32 %i.020.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i147)
  %tobool.not.i148 = icmp eq i32 %and.i147, 0
  br i1 %tobool.not.i148, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i = add i32 %bd_phy_addr.021.i, %15
  %add.ptr.i149 = getelementptr i8, ptr %bd_cpu_addr.022.i, i32 %15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %.sink24.i = phi i32 [ %bd_phy_addr.021.i, %if.then.i ], [ 0, %for.body.i.if.end.i_crit_edge ]
  %.sink.i = phi ptr [ %bd_cpu_addr.022.i, %if.then.i ], [ null, %for.body.i.if.end.i_crit_edge ]
  %bd_phy_addr.1.i = phi i32 [ %add.i, %if.then.i ], [ %bd_phy_addr.021.i, %for.body.i.if.end.i_crit_edge ]
  %bd_cpu_addr.1.i = phi ptr [ %add.ptr.i149, %if.then.i ], [ %bd_cpu_addr.022.i, %for.body.i.if.end.i_crit_edge ]
  %23 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %cur.023.i, i32 0, i32 6
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink24.i, ptr %23, align 4
  %25 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %cur.023.i, i32 0, i32 5
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %.sink.i, ptr %25, align 4
  %inc.i = add nuw i32 %i.020.i, 1
  %27 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %desc_num.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %28
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.wcn36xx_dxe_init_tx_bd.exit_crit_edge

if.end.i.wcn36xx_dxe_init_tx_bd.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_init_tx_bd.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

wcn36xx_dxe_init_tx_bd.exit:                      ; preds = %if.end.i.wcn36xx_dxe_init_tx_bd.exit_crit_edge, %if.end4.wcn36xx_dxe_init_tx_bd.exit_crit_edge
  %head_blk_ctl = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 40, i32 5
  %29 = ptrtoint ptr %head_blk_ctl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head_blk_ctl, align 4
  %desc_phy_addr = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %desc_phy_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %desc_phy_addr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %33 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i150 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i150)
  %tobool.not.i151 = icmp eq i32 %and.i150, 0
  br i1 %tobool.not.i151, label %wcn36xx_dxe_init_tx_bd.exit.wcn36xx_dxe_write_register.exit156_crit_edge, label %do.end.i153

wcn36xx_dxe_init_tx_bd.exit.wcn36xx_dxe_write_register.exit156_crit_edge: ; preds = %wcn36xx_dxe_init_tx_bd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit156

do.end.i153:                                      ; preds = %wcn36xx_dxe_init_tx_bd.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 1052, i32 noundef %32) #8
  br label %wcn36xx_dxe_write_register.exit156

wcn36xx_dxe_write_register.exit156:               ; preds = %do.end.i153, %wcn36xx_dxe_init_tx_bd.exit.wcn36xx_dxe_write_register.exit156_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %34 = tail call i32 @llvm.bswap.i32(i32 %32) #5
  %35 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i155 = getelementptr i8, ptr %36, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155, i32 %34) #5, !srcloc !145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %37 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i157 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i157)
  %tobool.not.i158 = icmp eq i32 %and.i157, 0
  br i1 %tobool.not.i158, label %wcn36xx_dxe_write_register.exit156.wcn36xx_dxe_write_register.exit163_crit_edge, label %do.end.i160

wcn36xx_dxe_write_register.exit156.wcn36xx_dxe_write_register.exit163_crit_edge: ; preds = %wcn36xx_dxe_write_register.exit156
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit163

do.end.i160:                                      ; preds = %wcn36xx_dxe_write_register.exit156
  call void @__sanitizer_cov_trace_pc() #7
  %call.i159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 1044, i32 noundef 23) #8
  br label %wcn36xx_dxe_write_register.exit163

wcn36xx_dxe_write_register.exit163:               ; preds = %do.end.i160, %wcn36xx_dxe_write_register.exit156.wcn36xx_dxe_write_register.exit163_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i162 = getelementptr i8, ptr %39, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162, i32 385875968) #5, !srcloc !145
  %40 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i165 = getelementptr i8, ptr %41, i32 8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i165) #5, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %43 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i166 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i166)
  %tobool.not.i167 = icmp eq i32 %and.i166, 0
  br i1 %tobool.not.i167, label %wcn36xx_dxe_write_register.exit163.wcn36xx_dxe_read_register.exit_crit_edge, label %do.end.i168

wcn36xx_dxe_write_register.exit163.wcn36xx_dxe_read_register.exit_crit_edge: ; preds = %wcn36xx_dxe_write_register.exit163
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_read_register.exit

do.end.i168:                                      ; preds = %wcn36xx_dxe_write_register.exit163
  call void @__sanitizer_cov_trace_pc() #7
  %44 = tail call i32 @llvm.bswap.i32(i32 %42) #5
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef 8, i32 noundef %44) #8
  br label %wcn36xx_dxe_read_register.exit

wcn36xx_dxe_read_register.exit:                   ; preds = %do.end.i168, %wcn36xx_dxe_write_register.exit163.wcn36xx_dxe_read_register.exit_crit_edge
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  %dxe_tx_h_ch = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 41
  %call8 = tail call fastcc i32 @wcn36xx_dxe_init_descs(ptr noundef %46, ptr noundef %dxe_tx_h_ch)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end15, label %do.end13

do.end13:                                         ; preds = %wcn36xx_dxe_read_register.exit
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.27) #8
  br label %out_err_txh_ch

if.end15:                                         ; preds = %wcn36xx_dxe_read_register.exit
  %mgmt_mem_pool = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 46
  %49 = ptrtoint ptr %mgmt_mem_pool to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mgmt_mem_pool, align 4
  %desc_num.i169 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 41, i32 4
  %51 = ptrtoint ptr %desc_num.i169 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %desc_num.i169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp19.not.i170 = icmp eq i32 %52, 0
  br i1 %cmp19.not.i170, label %if.end15.wcn36xx_dxe_init_tx_bd.exit193_crit_edge, label %for.body.preheader.i174

if.end15.wcn36xx_dxe_init_tx_bd.exit193_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_init_tx_bd.exit193

for.body.preheader.i174:                          ; preds = %if.end15
  %head_blk_ctl.i171 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 41, i32 5
  %virt_addr.i172 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 46, i32 1
  %53 = ptrtoint ptr %virt_addr.i172 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %virt_addr.i172, align 4
  %phy_addr.i173 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 46, i32 2
  %55 = ptrtoint ptr %phy_addr.i173 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %phy_addr.i173, align 4
  br label %for.body.i182

for.body.i182:                                    ; preds = %if.end.i192.for.body.i182_crit_edge, %for.body.preheader.i174
  %cur.023.in.i175 = phi ptr [ %cur.023.i179, %if.end.i192.for.body.i182_crit_edge ], [ %head_blk_ctl.i171, %for.body.preheader.i174 ]
  %bd_cpu_addr.022.i176 = phi ptr [ %bd_cpu_addr.1.i189, %if.end.i192.for.body.i182_crit_edge ], [ %54, %for.body.preheader.i174 ]
  %bd_phy_addr.021.i177 = phi i32 [ %bd_phy_addr.1.i188, %if.end.i192.for.body.i182_crit_edge ], [ %56, %for.body.preheader.i174 ]
  %i.020.i178 = phi i32 [ %inc.i190, %if.end.i192.for.body.i182_crit_edge ], [ 0, %for.body.preheader.i174 ]
  %57 = ptrtoint ptr %cur.023.in.i175 to i32
  call void @__asan_load4_noabort(i32 %57)
  %cur.023.i179 = load ptr, ptr %cur.023.in.i175, align 4
  %and.i180 = and i32 %i.020.i178, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i180)
  %tobool.not.i181 = icmp eq i32 %and.i180, 0
  br i1 %tobool.not.i181, label %if.then.i185, label %for.body.i182.if.end.i192_crit_edge

for.body.i182.if.end.i192_crit_edge:              ; preds = %for.body.i182
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i192

if.then.i185:                                     ; preds = %for.body.i182
  call void @__sanitizer_cov_trace_pc() #7
  %add.i183 = add i32 %bd_phy_addr.021.i177, %50
  %add.ptr.i184 = getelementptr i8, ptr %bd_cpu_addr.022.i176, i32 %50
  br label %if.end.i192

if.end.i192:                                      ; preds = %if.then.i185, %for.body.i182.if.end.i192_crit_edge
  %.sink24.i186 = phi i32 [ %bd_phy_addr.021.i177, %if.then.i185 ], [ 0, %for.body.i182.if.end.i192_crit_edge ]
  %.sink.i187 = phi ptr [ %bd_cpu_addr.022.i176, %if.then.i185 ], [ null, %for.body.i182.if.end.i192_crit_edge ]
  %bd_phy_addr.1.i188 = phi i32 [ %add.i183, %if.then.i185 ], [ %bd_phy_addr.021.i177, %for.body.i182.if.end.i192_crit_edge ]
  %bd_cpu_addr.1.i189 = phi ptr [ %add.ptr.i184, %if.then.i185 ], [ %bd_cpu_addr.022.i176, %for.body.i182.if.end.i192_crit_edge ]
  %58 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %cur.023.i179, i32 0, i32 6
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %.sink24.i186, ptr %58, align 4
  %60 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %cur.023.i179, i32 0, i32 5
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %.sink.i187, ptr %60, align 4
  %inc.i190 = add nuw i32 %i.020.i178, 1
  %62 = ptrtoint ptr %desc_num.i169 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %desc_num.i169, align 4
  %cmp.i191 = icmp ult i32 %inc.i190, %63
  br i1 %cmp.i191, label %if.end.i192.for.body.i182_crit_edge, label %if.end.i192.wcn36xx_dxe_init_tx_bd.exit193_crit_edge

if.end.i192.wcn36xx_dxe_init_tx_bd.exit193_crit_edge: ; preds = %if.end.i192
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_init_tx_bd.exit193

if.end.i192.for.body.i182_crit_edge:              ; preds = %if.end.i192
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i182

wcn36xx_dxe_init_tx_bd.exit193:                   ; preds = %if.end.i192.wcn36xx_dxe_init_tx_bd.exit193_crit_edge, %if.end15.wcn36xx_dxe_init_tx_bd.exit193_crit_edge
  %head_blk_ctl18 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 41, i32 5
  %64 = ptrtoint ptr %head_blk_ctl18 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %head_blk_ctl18, align 4
  %desc_phy_addr19 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %desc_phy_addr19 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %desc_phy_addr19, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %68 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i194 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i194)
  %tobool.not.i195 = icmp eq i32 %and.i194, 0
  br i1 %tobool.not.i195, label %wcn36xx_dxe_init_tx_bd.exit193.wcn36xx_dxe_write_register.exit200_crit_edge, label %do.end.i197

wcn36xx_dxe_init_tx_bd.exit193.wcn36xx_dxe_write_register.exit200_crit_edge: ; preds = %wcn36xx_dxe_init_tx_bd.exit193
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit200

do.end.i197:                                      ; preds = %wcn36xx_dxe_init_tx_bd.exit193
  call void @__sanitizer_cov_trace_pc() #7
  %call.i196 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 1308, i32 noundef %67) #8
  br label %wcn36xx_dxe_write_register.exit200

wcn36xx_dxe_write_register.exit200:               ; preds = %do.end.i197, %wcn36xx_dxe_init_tx_bd.exit193.wcn36xx_dxe_write_register.exit200_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %69 = tail call i32 @llvm.bswap.i32(i32 %67) #5
  %70 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i199 = getelementptr i8, ptr %71, i32 1308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i199, i32 %69) #5, !srcloc !145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %72 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i201 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i201)
  %tobool.not.i202 = icmp eq i32 %and.i201, 0
  br i1 %tobool.not.i202, label %wcn36xx_dxe_write_register.exit200.wcn36xx_dxe_write_register.exit207_crit_edge, label %do.end.i204

wcn36xx_dxe_write_register.exit200.wcn36xx_dxe_write_register.exit207_crit_edge: ; preds = %wcn36xx_dxe_write_register.exit200
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit207

do.end.i204:                                      ; preds = %wcn36xx_dxe_write_register.exit200
  call void @__sanitizer_cov_trace_pc() #7
  %call.i203 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 1300, i32 noundef 23) #8
  br label %wcn36xx_dxe_write_register.exit207

wcn36xx_dxe_write_register.exit207:               ; preds = %do.end.i204, %wcn36xx_dxe_write_register.exit200.wcn36xx_dxe_write_register.exit207_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %73 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i206 = getelementptr i8, ptr %74, i32 1300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 385875968) #5, !srcloc !145
  %75 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i209 = getelementptr i8, ptr %76, i32 8
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i209) #5, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %78 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i210 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i210)
  %tobool.not.i211 = icmp eq i32 %and.i210, 0
  br i1 %tobool.not.i211, label %wcn36xx_dxe_write_register.exit207.wcn36xx_dxe_read_register.exit214_crit_edge, label %do.end.i213

wcn36xx_dxe_write_register.exit207.wcn36xx_dxe_read_register.exit214_crit_edge: ; preds = %wcn36xx_dxe_write_register.exit207
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_read_register.exit214

do.end.i213:                                      ; preds = %wcn36xx_dxe_write_register.exit207
  call void @__sanitizer_cov_trace_pc() #7
  %79 = tail call i32 @llvm.bswap.i32(i32 %77) #5
  %call4.i212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef 8, i32 noundef %79) #8
  br label %wcn36xx_dxe_read_register.exit214

wcn36xx_dxe_read_register.exit214:                ; preds = %do.end.i213, %wcn36xx_dxe_write_register.exit207.wcn36xx_dxe_read_register.exit214_crit_edge
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 4
  %dxe_rx_l_ch = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 42
  %call21 = tail call fastcc i32 @wcn36xx_dxe_init_descs(ptr noundef %81, ptr noundef %dxe_rx_l_ch)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %wcn36xx_dxe_read_register.exit214
  call void @__sanitizer_cov_trace_pc() #7
  %82 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.27) #8
  br label %out_err_rxl_ch

if.end28:                                         ; preds = %wcn36xx_dxe_read_register.exit214
  %desc_num.i215 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 42, i32 4
  %84 = ptrtoint ptr %desc_num.i215 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %desc_num.i215, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp1.not.i = icmp eq i32 %85, 0
  br i1 %cmp1.not.i, label %if.end28.wcn36xx_dxe_ch_alloc_skb.exit_crit_edge, label %for.body.lr.ph.i

if.end28.wcn36xx_dxe_ch_alloc_skb.exit_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_ch_alloc_skb.exit

for.body.lr.ph.i:                                 ; preds = %if.end28
  %head_blk_ctl.i216 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 42, i32 5
  br label %for.body.i220

for.body.i220:                                    ; preds = %for.body.i220.for.body.i220_crit_edge, %for.body.lr.ph.i
  %cur_ctl.0.in3.i = phi ptr [ %head_blk_ctl.i216, %for.body.lr.ph.i ], [ %cur_ctl.0.i, %for.body.i220.for.body.i220_crit_edge ]
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i218, %for.body.i220.for.body.i220_crit_edge ]
  %86 = ptrtoint ptr %cur_ctl.0.in3.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %cur_ctl.0.i = load ptr, ptr %cur_ctl.0.in3.i, align 4
  %87 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev, align 4
  %call.i217 = tail call fastcc i32 @wcn36xx_dxe_fill_skb(ptr noundef %88, ptr noundef %cur_ctl.0.i, i32 noundef 3264) #5
  %inc.i218 = add nuw i32 %i.02.i, 1
  %89 = ptrtoint ptr %desc_num.i215 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %desc_num.i215, align 4
  %cmp.i219 = icmp ult i32 %inc.i218, %90
  br i1 %cmp.i219, label %for.body.i220.for.body.i220_crit_edge, label %for.body.i220.wcn36xx_dxe_ch_alloc_skb.exit_crit_edge

for.body.i220.wcn36xx_dxe_ch_alloc_skb.exit_crit_edge: ; preds = %for.body.i220
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_ch_alloc_skb.exit

for.body.i220.for.body.i220_crit_edge:            ; preds = %for.body.i220
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i220

wcn36xx_dxe_ch_alloc_skb.exit:                    ; preds = %for.body.i220.wcn36xx_dxe_ch_alloc_skb.exit_crit_edge, %if.end28.wcn36xx_dxe_ch_alloc_skb.exit_crit_edge
  %head_blk_ctl32 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 42, i32 5
  %91 = ptrtoint ptr %head_blk_ctl32 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %head_blk_ctl32, align 4
  %desc_phy_addr33 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %desc_phy_addr33 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %desc_phy_addr33, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %95 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i221 = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i221)
  %tobool.not.i222 = icmp eq i32 %and.i221, 0
  br i1 %tobool.not.i222, label %wcn36xx_dxe_ch_alloc_skb.exit.wcn36xx_dxe_write_register.exit227_crit_edge, label %do.end.i224

wcn36xx_dxe_ch_alloc_skb.exit.wcn36xx_dxe_write_register.exit227_crit_edge: ; preds = %wcn36xx_dxe_ch_alloc_skb.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit227

do.end.i224:                                      ; preds = %wcn36xx_dxe_ch_alloc_skb.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i223 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 1116, i32 noundef %94) #8
  br label %wcn36xx_dxe_write_register.exit227

wcn36xx_dxe_write_register.exit227:               ; preds = %do.end.i224, %wcn36xx_dxe_ch_alloc_skb.exit.wcn36xx_dxe_write_register.exit227_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %96 = tail call i32 @llvm.bswap.i32(i32 %94) #5
  %97 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i226 = getelementptr i8, ptr %98, i32 1116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i226, i32 %96) #5, !srcloc !145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %99 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i228 = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i228)
  %tobool.not.i229 = icmp eq i32 %and.i228, 0
  br i1 %tobool.not.i229, label %wcn36xx_dxe_write_register.exit227.wcn36xx_dxe_write_register.exit234_crit_edge, label %do.end.i231

wcn36xx_dxe_write_register.exit227.wcn36xx_dxe_write_register.exit234_crit_edge: ; preds = %wcn36xx_dxe_write_register.exit227
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit234

do.end.i231:                                      ; preds = %wcn36xx_dxe_write_register.exit227
  call void @__sanitizer_cov_trace_pc() #7
  %call.i230 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 1100, i32 noundef 11) #8
  br label %wcn36xx_dxe_write_register.exit234

wcn36xx_dxe_write_register.exit234:               ; preds = %do.end.i231, %wcn36xx_dxe_write_register.exit227.wcn36xx_dxe_write_register.exit234_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %100 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i233 = getelementptr i8, ptr %101, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i233, i32 184549376) #5, !srcloc !145
  %102 = ptrtoint ptr %head_blk_ctl32 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %head_blk_ctl32, align 4
  %desc = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %desc, align 4
  %phy_next_l = getelementptr inbounds %struct.wcn36xx_dxe_desc, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %phy_next_l to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %phy_next_l, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %108 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i235 = and i32 %108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i235)
  %tobool.not.i236 = icmp eq i32 %and.i235, 0
  br i1 %tobool.not.i236, label %wcn36xx_dxe_write_register.exit234.wcn36xx_dxe_write_register.exit241_crit_edge, label %do.end.i238

wcn36xx_dxe_write_register.exit234.wcn36xx_dxe_write_register.exit241_crit_edge: ; preds = %wcn36xx_dxe_write_register.exit234
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit241

do.end.i238:                                      ; preds = %wcn36xx_dxe_write_register.exit234
  call void @__sanitizer_cov_trace_pc() #7
  %call.i237 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 1108, i32 noundef %107) #8
  br label %wcn36xx_dxe_write_register.exit241

wcn36xx_dxe_write_register.exit241:               ; preds = %do.end.i238, %wcn36xx_dxe_write_register.exit234.wcn36xx_dxe_write_register.exit241_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %109 = tail call i32 @llvm.bswap.i32(i32 %107) #5
  %110 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i240 = getelementptr i8, ptr %111, i32 1108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i240, i32 %109) #5, !srcloc !145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %112 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i242 = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i242)
  %tobool.not.i243 = icmp eq i32 %and.i242, 0
  br i1 %tobool.not.i243, label %wcn36xx_dxe_write_register.exit241.wcn36xx_dxe_write_register.exit248_crit_edge, label %do.end.i245

wcn36xx_dxe_write_register.exit241.wcn36xx_dxe_write_register.exit248_crit_edge: ; preds = %wcn36xx_dxe_write_register.exit241
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit248

do.end.i245:                                      ; preds = %wcn36xx_dxe_write_register.exit241
  call void @__sanitizer_cov_trace_pc() #7
  %call.i244 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 1088, i32 noundef -2072072913) #8
  br label %wcn36xx_dxe_write_register.exit248

wcn36xx_dxe_write_register.exit248:               ; preds = %do.end.i245, %wcn36xx_dxe_write_register.exit241.wcn36xx_dxe_write_register.exit248_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %113 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i247 = getelementptr i8, ptr %114, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i247, i32 799899268) #5, !srcloc !145
  %115 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev, align 4
  %dxe_rx_h_ch = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 43
  %call37 = tail call fastcc i32 @wcn36xx_dxe_init_descs(ptr noundef %116, ptr noundef %dxe_rx_h_ch)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end44, label %do.end42

do.end42:                                         ; preds = %wcn36xx_dxe_write_register.exit248
  call void @__sanitizer_cov_trace_pc() #7
  %117 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.27) #8
  br label %out_err_rxh_ch

if.end44:                                         ; preds = %wcn36xx_dxe_write_register.exit248
  %desc_num.i249 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 43, i32 4
  %119 = ptrtoint ptr %desc_num.i249 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %desc_num.i249, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp1.not.i250 = icmp eq i32 %120, 0
  br i1 %cmp1.not.i250, label %if.end44.wcn36xx_dxe_ch_alloc_skb.exit261_crit_edge, label %for.body.lr.ph.i253

if.end44.wcn36xx_dxe_ch_alloc_skb.exit261_crit_edge: ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_ch_alloc_skb.exit261

for.body.lr.ph.i253:                              ; preds = %if.end44
  %head_blk_ctl.i251 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 43, i32 5
  br label %for.body.i260

for.body.i260:                                    ; preds = %for.body.i260.for.body.i260_crit_edge, %for.body.lr.ph.i253
  %cur_ctl.0.in3.i254 = phi ptr [ %head_blk_ctl.i251, %for.body.lr.ph.i253 ], [ %cur_ctl.0.i256, %for.body.i260.for.body.i260_crit_edge ]
  %i.02.i255 = phi i32 [ 0, %for.body.lr.ph.i253 ], [ %inc.i258, %for.body.i260.for.body.i260_crit_edge ]
  %121 = ptrtoint ptr %cur_ctl.0.in3.i254 to i32
  call void @__asan_load4_noabort(i32 %121)
  %cur_ctl.0.i256 = load ptr, ptr %cur_ctl.0.in3.i254, align 4
  %122 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev, align 4
  %call.i257 = tail call fastcc i32 @wcn36xx_dxe_fill_skb(ptr noundef %123, ptr noundef %cur_ctl.0.i256, i32 noundef 3264) #5
  %inc.i258 = add nuw i32 %i.02.i255, 1
  %124 = ptrtoint ptr %desc_num.i249 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %desc_num.i249, align 4
  %cmp.i259 = icmp ult i32 %inc.i258, %125
  br i1 %cmp.i259, label %for.body.i260.for.body.i260_crit_edge, label %for.body.i260.wcn36xx_dxe_ch_alloc_skb.exit261_crit_edge

for.body.i260.wcn36xx_dxe_ch_alloc_skb.exit261_crit_edge: ; preds = %for.body.i260
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_ch_alloc_skb.exit261

for.body.i260.for.body.i260_crit_edge:            ; preds = %for.body.i260
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i260

wcn36xx_dxe_ch_alloc_skb.exit261:                 ; preds = %for.body.i260.wcn36xx_dxe_ch_alloc_skb.exit261_crit_edge, %if.end44.wcn36xx_dxe_ch_alloc_skb.exit261_crit_edge
  %head_blk_ctl48 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 43, i32 5
  %126 = ptrtoint ptr %head_blk_ctl48 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %head_blk_ctl48, align 4
  %desc_phy_addr49 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %desc_phy_addr49 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %desc_phy_addr49, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %130 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i262 = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i262)
  %tobool.not.i263 = icmp eq i32 %and.i262, 0
  br i1 %tobool.not.i263, label %wcn36xx_dxe_ch_alloc_skb.exit261.wcn36xx_dxe_write_register.exit268_crit_edge, label %do.end.i265

wcn36xx_dxe_ch_alloc_skb.exit261.wcn36xx_dxe_write_register.exit268_crit_edge: ; preds = %wcn36xx_dxe_ch_alloc_skb.exit261
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit268

do.end.i265:                                      ; preds = %wcn36xx_dxe_ch_alloc_skb.exit261
  call void @__sanitizer_cov_trace_pc() #7
  %call.i264 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 1244, i32 noundef %129) #8
  br label %wcn36xx_dxe_write_register.exit268

wcn36xx_dxe_write_register.exit268:               ; preds = %do.end.i265, %wcn36xx_dxe_ch_alloc_skb.exit261.wcn36xx_dxe_write_register.exit268_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %131 = tail call i32 @llvm.bswap.i32(i32 %129) #5
  %132 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i267 = getelementptr i8, ptr %133, i32 1244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i267, i32 %131) #5, !srcloc !145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %134 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i269 = and i32 %134, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i269)
  %tobool.not.i270 = icmp eq i32 %and.i269, 0
  br i1 %tobool.not.i270, label %wcn36xx_dxe_write_register.exit268.wcn36xx_dxe_write_register.exit275_crit_edge, label %do.end.i272

wcn36xx_dxe_write_register.exit268.wcn36xx_dxe_write_register.exit275_crit_edge: ; preds = %wcn36xx_dxe_write_register.exit268
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit275

do.end.i272:                                      ; preds = %wcn36xx_dxe_write_register.exit268
  call void @__sanitizer_cov_trace_pc() #7
  %call.i271 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 1228, i32 noundef 4) #8
  br label %wcn36xx_dxe_write_register.exit275

wcn36xx_dxe_write_register.exit275:               ; preds = %do.end.i272, %wcn36xx_dxe_write_register.exit268.wcn36xx_dxe_write_register.exit275_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %135 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i274 = getelementptr i8, ptr %136, i32 1228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i274, i32 67108864) #5, !srcloc !145
  %137 = ptrtoint ptr %head_blk_ctl48 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %head_blk_ctl48, align 4
  %desc52 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %desc52 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %desc52, align 4
  %phy_next_l53 = getelementptr inbounds %struct.wcn36xx_dxe_desc, ptr %140, i32 0, i32 4
  %141 = ptrtoint ptr %phy_next_l53 to i32
  call void @__asan_loadN_noabort(i32 %141, i32 4)
  %142 = load i32, ptr %phy_next_l53, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %143 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i276 = and i32 %143, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i276)
  %tobool.not.i277 = icmp eq i32 %and.i276, 0
  br i1 %tobool.not.i277, label %wcn36xx_dxe_write_register.exit275.wcn36xx_dxe_write_register.exit282_crit_edge, label %do.end.i279

wcn36xx_dxe_write_register.exit275.wcn36xx_dxe_write_register.exit282_crit_edge: ; preds = %wcn36xx_dxe_write_register.exit275
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit282

do.end.i279:                                      ; preds = %wcn36xx_dxe_write_register.exit275
  call void @__sanitizer_cov_trace_pc() #7
  %call.i278 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 1236, i32 noundef %142) #8
  br label %wcn36xx_dxe_write_register.exit282

wcn36xx_dxe_write_register.exit282:               ; preds = %do.end.i279, %wcn36xx_dxe_write_register.exit275.wcn36xx_dxe_write_register.exit282_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %144 = tail call i32 @llvm.bswap.i32(i32 %142) #5
  %145 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i281 = getelementptr i8, ptr %146, i32 1236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i281, i32 %144) #5, !srcloc !145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %147 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i283 = and i32 %147, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i283)
  %tobool.not.i284 = icmp eq i32 %and.i283, 0
  br i1 %tobool.not.i284, label %wcn36xx_dxe_write_register.exit282.wcn36xx_dxe_write_register.exit289_crit_edge, label %do.end.i286

wcn36xx_dxe_write_register.exit282.wcn36xx_dxe_write_register.exit289_crit_edge: ; preds = %wcn36xx_dxe_write_register.exit282
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit289

do.end.i286:                                      ; preds = %wcn36xx_dxe_write_register.exit282
  call void @__sanitizer_cov_trace_pc() #7
  %call.i285 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 1216, i32 noundef -2063675089) #8
  br label %wcn36xx_dxe_write_register.exit289

wcn36xx_dxe_write_register.exit289:               ; preds = %do.end.i286, %wcn36xx_dxe_write_register.exit282.wcn36xx_dxe_write_register.exit289_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %148 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i288 = getelementptr i8, ptr %149, i32 1216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i288, i32 802291332) #5, !srcloc !145
  %tx_irq.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 14
  %150 = ptrtoint ptr %tx_irq.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %tx_irq.i, align 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %151, ptr noundef nonnull @wcn36xx_irq_tx_complete, ptr noundef null, i32 noundef 4, ptr noundef nonnull @.str.49, ptr noundef %wcn) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i290 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i290, label %if.end.i292, label %do.end.i291

do.end.i291:                                      ; preds = %wcn36xx_dxe_write_register.exit289
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #8
  br label %wcn36xx_dxe_request_irqs.exit

if.end.i292:                                      ; preds = %wcn36xx_dxe_write_register.exit289
  %rx_irq.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 15
  %152 = ptrtoint ptr %rx_irq.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %rx_irq.i, align 4
  %call.i23.i = tail call i32 @request_threaded_irq(i32 noundef %153, ptr noundef nonnull @wcn36xx_irq_rx_ready, ptr noundef null, i32 noundef 4, ptr noundef nonnull @.str.52, ptr noundef %wcn) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i)
  %tobool3.not.i = icmp eq i32 %call.i23.i, 0
  br i1 %tobool3.not.i, label %wcn36xx_dxe_request_irqs.exit.thread, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i292
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #8
  %154 = ptrtoint ptr %tx_irq.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %tx_irq.i, align 4
  %call14.i = tail call ptr @free_irq(i32 noundef %155, ptr noundef %wcn) #5
  br label %wcn36xx_dxe_request_irqs.exit

wcn36xx_dxe_request_irqs.exit.thread:             ; preds = %if.end.i292
  call void @__sanitizer_cov_trace_pc() #7
  %156 = ptrtoint ptr %rx_irq.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %rx_irq.i, align 4
  %call.i24.i = tail call i32 @irq_set_irq_wake(i32 noundef %157, i32 noundef 1) #5
  br label %do.body57

wcn36xx_dxe_request_irqs.exit:                    ; preds = %do.end7.i, %do.end.i291
  %retval.0.i = phi i32 [ %call.i.i, %do.end.i291 ], [ %call.i23.i, %do.end7.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %out_err_irq, label %wcn36xx_dxe_request_irqs.exit.do.body57_crit_edge

wcn36xx_dxe_request_irqs.exit.do.body57_crit_edge: ; preds = %wcn36xx_dxe_request_irqs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body57

do.body57:                                        ; preds = %wcn36xx_dxe_request_irqs.exit.do.body57_crit_edge, %wcn36xx_dxe_request_irqs.exit.thread
  %tx_ack_timer = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 49
  tail call void @init_timer_key(ptr noundef %tx_ack_timer, ptr noundef nonnull @wcn36xx_dxe_tx_timer, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef nonnull @wcn36xx_dxe_init.__key) #5
  %158 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %159, i32 24
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !142
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %162 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i.i = and i32 %162, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body57.wcn36xx_dxe_read_register.exit.i_crit_edge, label %do.end.i.i

do.body57.wcn36xx_dxe_read_register.exit.i_crit_edge: ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_read_register.exit.i

do.end.i.i:                                       ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef 24, i32 noundef %161) #8
  br label %wcn36xx_dxe_read_register.exit.i

wcn36xx_dxe_read_register.exit.i:                 ; preds = %do.end.i.i, %do.body57.wcn36xx_dxe_read_register.exit.i_crit_edge
  %or.i = or i32 %161, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %163 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i1.i = and i32 %163, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1.i)
  %tobool.not.i2.i = icmp eq i32 %and.i1.i, 0
  br i1 %tobool.not.i2.i, label %wcn36xx_dxe_read_register.exit.i.wcn36xx_dxe_enable_ch_int.exit_crit_edge, label %do.end.i3.i

wcn36xx_dxe_read_register.exit.i.wcn36xx_dxe_enable_ch_int.exit_crit_edge: ; preds = %wcn36xx_dxe_read_register.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_enable_ch_int.exit

do.end.i3.i:                                      ; preds = %wcn36xx_dxe_read_register.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i293 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 24, i32 noundef %or.i) #8
  br label %wcn36xx_dxe_enable_ch_int.exit

wcn36xx_dxe_enable_ch_int.exit:                   ; preds = %do.end.i3.i, %wcn36xx_dxe_read_register.exit.i.wcn36xx_dxe_enable_ch_int.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %164 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %165 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %166, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %164) #5, !srcloc !145
  %167 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i.i295 = getelementptr i8, ptr %168, i32 24
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i295) #5, !srcloc !142
  %170 = tail call i32 @llvm.bswap.i32(i32 %169) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %171 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i.i296 = and i32 %171, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i296)
  %tobool.not.i.i297 = icmp eq i32 %and.i.i296, 0
  br i1 %tobool.not.i.i297, label %wcn36xx_dxe_enable_ch_int.exit.wcn36xx_dxe_read_register.exit.i303_crit_edge, label %do.end.i.i299

wcn36xx_dxe_enable_ch_int.exit.wcn36xx_dxe_read_register.exit.i303_crit_edge: ; preds = %wcn36xx_dxe_enable_ch_int.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_read_register.exit.i303

do.end.i.i299:                                    ; preds = %wcn36xx_dxe_enable_ch_int.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i298 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef 24, i32 noundef %170) #8
  br label %wcn36xx_dxe_read_register.exit.i303

wcn36xx_dxe_read_register.exit.i303:              ; preds = %do.end.i.i299, %wcn36xx_dxe_enable_ch_int.exit.wcn36xx_dxe_read_register.exit.i303_crit_edge
  %or.i300 = or i32 %170, 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %172 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i1.i301 = and i32 %172, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1.i301)
  %tobool.not.i2.i302 = icmp eq i32 %and.i1.i301, 0
  br i1 %tobool.not.i2.i302, label %wcn36xx_dxe_read_register.exit.i303.wcn36xx_dxe_enable_ch_int.exit307_crit_edge, label %do.end.i3.i305

wcn36xx_dxe_read_register.exit.i303.wcn36xx_dxe_enable_ch_int.exit307_crit_edge: ; preds = %wcn36xx_dxe_read_register.exit.i303
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_enable_ch_int.exit307

do.end.i3.i305:                                   ; preds = %wcn36xx_dxe_read_register.exit.i303
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i304 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 24, i32 noundef %or.i300) #8
  br label %wcn36xx_dxe_enable_ch_int.exit307

wcn36xx_dxe_enable_ch_int.exit307:                ; preds = %do.end.i3.i305, %wcn36xx_dxe_read_register.exit.i303.wcn36xx_dxe_enable_ch_int.exit307_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %173 = tail call i32 @llvm.bswap.i32(i32 %or.i300) #5
  %174 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i5.i306 = getelementptr i8, ptr %175, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i306, i32 %173) #5, !srcloc !145
  %176 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i.i309 = getelementptr i8, ptr %177, i32 24
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i309) #5, !srcloc !142
  %179 = tail call i32 @llvm.bswap.i32(i32 %178) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %180 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i.i310 = and i32 %180, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i310)
  %tobool.not.i.i311 = icmp eq i32 %and.i.i310, 0
  br i1 %tobool.not.i.i311, label %wcn36xx_dxe_enable_ch_int.exit307.wcn36xx_dxe_read_register.exit.i317_crit_edge, label %do.end.i.i313

wcn36xx_dxe_enable_ch_int.exit307.wcn36xx_dxe_read_register.exit.i317_crit_edge: ; preds = %wcn36xx_dxe_enable_ch_int.exit307
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_read_register.exit.i317

do.end.i.i313:                                    ; preds = %wcn36xx_dxe_enable_ch_int.exit307
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i312 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef 24, i32 noundef %179) #8
  br label %wcn36xx_dxe_read_register.exit.i317

wcn36xx_dxe_read_register.exit.i317:              ; preds = %do.end.i.i313, %wcn36xx_dxe_enable_ch_int.exit307.wcn36xx_dxe_read_register.exit.i317_crit_edge
  %or.i314 = or i32 %179, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %181 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i1.i315 = and i32 %181, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1.i315)
  %tobool.not.i2.i316 = icmp eq i32 %and.i1.i315, 0
  br i1 %tobool.not.i2.i316, label %wcn36xx_dxe_read_register.exit.i317.wcn36xx_dxe_enable_ch_int.exit321_crit_edge, label %do.end.i3.i319

wcn36xx_dxe_read_register.exit.i317.wcn36xx_dxe_enable_ch_int.exit321_crit_edge: ; preds = %wcn36xx_dxe_read_register.exit.i317
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_enable_ch_int.exit321

do.end.i3.i319:                                   ; preds = %wcn36xx_dxe_read_register.exit.i317
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i318 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 24, i32 noundef %or.i314) #8
  br label %wcn36xx_dxe_enable_ch_int.exit321

wcn36xx_dxe_enable_ch_int.exit321:                ; preds = %do.end.i3.i319, %wcn36xx_dxe_read_register.exit.i317.wcn36xx_dxe_enable_ch_int.exit321_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %182 = tail call i32 @llvm.bswap.i32(i32 %or.i314) #5
  %183 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i5.i320 = getelementptr i8, ptr %184, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i320, i32 %182) #5, !srcloc !145
  %185 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i.i323 = getelementptr i8, ptr %186, i32 24
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i323) #5, !srcloc !142
  %188 = tail call i32 @llvm.bswap.i32(i32 %187) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %189 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i.i324 = and i32 %189, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i324)
  %tobool.not.i.i325 = icmp eq i32 %and.i.i324, 0
  br i1 %tobool.not.i.i325, label %wcn36xx_dxe_enable_ch_int.exit321.wcn36xx_dxe_read_register.exit.i331_crit_edge, label %do.end.i.i327

wcn36xx_dxe_enable_ch_int.exit321.wcn36xx_dxe_read_register.exit.i331_crit_edge: ; preds = %wcn36xx_dxe_enable_ch_int.exit321
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_read_register.exit.i331

do.end.i.i327:                                    ; preds = %wcn36xx_dxe_enable_ch_int.exit321
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i326 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef 24, i32 noundef %188) #8
  br label %wcn36xx_dxe_read_register.exit.i331

wcn36xx_dxe_read_register.exit.i331:              ; preds = %do.end.i.i327, %wcn36xx_dxe_enable_ch_int.exit321.wcn36xx_dxe_read_register.exit.i331_crit_edge
  %or.i328 = or i32 %188, 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %190 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i1.i329 = and i32 %190, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1.i329)
  %tobool.not.i2.i330 = icmp eq i32 %and.i1.i329, 0
  br i1 %tobool.not.i2.i330, label %wcn36xx_dxe_read_register.exit.i331.wcn36xx_dxe_enable_ch_int.exit335_crit_edge, label %do.end.i3.i333

wcn36xx_dxe_read_register.exit.i331.wcn36xx_dxe_enable_ch_int.exit335_crit_edge: ; preds = %wcn36xx_dxe_read_register.exit.i331
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_enable_ch_int.exit335

do.end.i3.i333:                                   ; preds = %wcn36xx_dxe_read_register.exit.i331
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i332 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 24, i32 noundef %or.i328) #8
  br label %wcn36xx_dxe_enable_ch_int.exit335

wcn36xx_dxe_enable_ch_int.exit335:                ; preds = %do.end.i3.i333, %wcn36xx_dxe_read_register.exit.i331.wcn36xx_dxe_enable_ch_int.exit335_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %191 = tail call i32 @llvm.bswap.i32(i32 %or.i328) #5
  %192 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i5.i334 = getelementptr i8, ptr %193, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i334, i32 %191) #5, !srcloc !145
  br label %cleanup

out_err_irq:                                      ; preds = %wcn36xx_dxe_request_irqs.exit
  call void @__sanitizer_cov_trace_pc() #7
  %194 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dev, align 4
  %196 = ptrtoint ptr %desc_num.i249 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %desc_num.i249, align 4
  %mul.i = shl i32 %197, 5
  %cpu_addr.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 43, i32 2
  %198 = ptrtoint ptr %cpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %cpu_addr.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 43, i32 3
  %200 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %195, i32 noundef %mul.i, ptr noundef %199, i32 noundef %201, i32 noundef 0) #5
  br label %out_err_rxh_ch

out_err_rxh_ch:                                   ; preds = %out_err_irq, %do.end42
  %ret.0 = phi i32 [ %call37, %do.end42 ], [ %retval.0.i, %out_err_irq ]
  %202 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dev, align 4
  %204 = ptrtoint ptr %desc_num.i215 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %desc_num.i215, align 4
  %mul.i338 = shl i32 %205, 5
  %cpu_addr.i339 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 42, i32 2
  %206 = ptrtoint ptr %cpu_addr.i339 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %cpu_addr.i339, align 4
  %dma_addr.i340 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 42, i32 3
  %208 = ptrtoint ptr %dma_addr.i340 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %dma_addr.i340, align 4
  tail call void @dma_free_attrs(ptr noundef %203, i32 noundef %mul.i338, ptr noundef %207, i32 noundef %209, i32 noundef 0) #5
  br label %out_err_rxl_ch

out_err_rxl_ch:                                   ; preds = %out_err_rxh_ch, %do.end26
  %ret.1 = phi i32 [ %call21, %do.end26 ], [ %ret.0, %out_err_rxh_ch ]
  %210 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dev, align 4
  %212 = ptrtoint ptr %desc_num.i169 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %desc_num.i169, align 4
  %mul.i342 = shl i32 %213, 5
  %cpu_addr.i343 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 41, i32 2
  %214 = ptrtoint ptr %cpu_addr.i343 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %cpu_addr.i343, align 4
  %dma_addr.i344 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 41, i32 3
  %216 = ptrtoint ptr %dma_addr.i344 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %dma_addr.i344, align 4
  tail call void @dma_free_attrs(ptr noundef %211, i32 noundef %mul.i342, ptr noundef %215, i32 noundef %217, i32 noundef 0) #5
  br label %out_err_txh_ch

out_err_txh_ch:                                   ; preds = %out_err_rxl_ch, %do.end13
  %ret.2 = phi i32 [ %call8, %do.end13 ], [ %ret.1, %out_err_rxl_ch ]
  %218 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dev, align 4
  %220 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %desc_num.i, align 4
  %mul.i346 = shl i32 %221, 5
  %cpu_addr.i347 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 40, i32 2
  %222 = ptrtoint ptr %cpu_addr.i347 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %cpu_addr.i347, align 4
  %dma_addr.i348 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 40, i32 3
  %224 = ptrtoint ptr %dma_addr.i348 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %dma_addr.i348, align 4
  tail call void @dma_free_attrs(ptr noundef %219, i32 noundef %mul.i346, ptr noundef %223, i32 noundef %225, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %out_err_txh_ch, %wcn36xx_dxe_enable_ch_int.exit335, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.2, %out_err_txh_ch ], [ 0, %wcn36xx_dxe_enable_ch_int.exit335 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wcn36xx_dxe_init_descs(ptr noundef %dev, ptr noundef %wcn_ch) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_num = getelementptr inbounds %struct.wcn36xx_dxe_ch, ptr %wcn_ch, i32 0, i32 4
  %0 = ptrtoint ptr %desc_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc_num, align 4
  %mul = shl i32 %1, 5
  %dma_addr = getelementptr inbounds %struct.wcn36xx_dxe_ch, ptr %wcn_ch, i32 0, i32 3
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef %dma_addr, i32 noundef 3264, i32 noundef 0) #5
  %cpu_addr = getelementptr inbounds %struct.wcn36xx_dxe_ch, ptr %wcn_ch, i32 0, i32 2
  %2 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %cpu_addr, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %head_blk_ctl = getelementptr inbounds %struct.wcn36xx_dxe_ch, ptr %wcn_ch, i32 0, i32 5
  %3 = ptrtoint ptr %desc_num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %desc_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp74.not = icmp eq i32 %4, 0
  br i1 %cmp74.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %ch_type = getelementptr inbounds %struct.wcn36xx_dxe_ch, ptr %wcn_ch, i32 0, i32 1
  %5 = ptrtoint ptr %head_blk_ctl to i32
  call void @__asan_load4_noabort(i32 %5)
  %cur_ctl.080.peel = load ptr, ptr %head_blk_ctl, align 4
  %desc.peel = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %cur_ctl.080.peel, i32 0, i32 1
  %6 = ptrtoint ptr %desc.peel to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %desc.peel, align 4
  %7 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_addr, align 4
  %desc_phy_addr.peel = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %cur_ctl.080.peel, i32 0, i32 2
  %9 = ptrtoint ptr %desc_phy_addr.peel to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %desc_phy_addr.peel, align 4
  %10 = ptrtoint ptr %ch_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ch_type, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %for.body.lr.ph.if.end34.peel_crit_edge [
    i32 0, label %sw.bb.peel
    i32 1, label %sw.bb6.peel
    i32 2, label %sw.bb9.peel
    i32 3, label %sw.bb11.peel
  ]

for.body.lr.ph.if.end34.peel_crit_edge:           ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34.peel

sw.bb11.peel:                                     ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 1233199, ptr %call.i, align 1
  %src_addr_l13.peel = getelementptr inbounds %struct.wcn36xx_dxe_desc, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %src_addr_l13.peel to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 4, ptr %src_addr_l13.peel, align 1
  br label %if.end34.peel

sw.bb9.peel:                                      ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 1223983, ptr %call.i, align 1
  %src_addr_l.peel = getelementptr inbounds %struct.wcn36xx_dxe_desc, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %src_addr_l.peel to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 11, ptr %src_addr_l.peel, align 1
  br label %if.end34.peel

sw.bb6.peel:                                      ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 3329604, ptr %call.i, align 1
  %dst_addr_l8.peel = getelementptr inbounds %struct.wcn36xx_dxe_desc, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %dst_addr_l8.peel to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 23, ptr %dst_addr_l8.peel, align 1
  br label %if.end34.peel

sw.bb.peel:                                       ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 3312196, ptr %call.i, align 1
  %dst_addr_l.peel = getelementptr inbounds %struct.wcn36xx_dxe_desc, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %dst_addr_l.peel to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 23, ptr %dst_addr_l.peel, align 1
  br label %if.end34.peel

if.end34.peel:                                    ; preds = %sw.bb.peel, %sw.bb6.peel, %sw.bb9.peel, %sw.bb11.peel, %for.body.lr.ph.if.end34.peel_crit_edge
  %phy_next_l.peel = getelementptr inbounds %struct.wcn36xx_dxe_desc, ptr %call.i, i32 0, i32 4
  %21 = ptrtoint ptr %phy_next_l.peel to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 0, ptr %phy_next_l.peel, align 1
  %22 = ptrtoint ptr %desc_num to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %desc_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.peel = icmp ugt i32 %23, 1
  br i1 %cmp.peel, label %if.end34.peel.for.body_crit_edge, label %if.end34.peel.cleanup_crit_edge

if.end34.peel.cleanup_crit_edge:                  ; preds = %if.end34.peel
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34.peel.for.body_crit_edge:                 ; preds = %if.end34.peel
  br label %for.body

for.body:                                         ; preds = %if.end34.for.body_crit_edge, %if.end34.peel.for.body_crit_edge
  %cur_ctl.080.in = phi ptr [ %cur_ctl.080, %if.end34.for.body_crit_edge ], [ %cur_ctl.080.peel, %if.end34.peel.for.body_crit_edge ]
  %i.077 = phi i32 [ %inc, %if.end34.for.body_crit_edge ], [ 1, %if.end34.peel.for.body_crit_edge ]
  %prev_dxe.076 = phi ptr [ %cur_dxe.075, %if.end34.for.body_crit_edge ], [ %call.i, %if.end34.peel.for.body_crit_edge ]
  %cur_dxe.075 = getelementptr %struct.wcn36xx_dxe_desc, ptr %prev_dxe.076, i32 1
  %24 = ptrtoint ptr %cur_ctl.080.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %cur_ctl.080 = load ptr, ptr %cur_ctl.080.in, align 4
  %desc = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %cur_ctl.080, i32 0, i32 1
  %25 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %cur_dxe.075, ptr %desc, align 4
  %26 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_addr, align 4
  %mul5 = shl i32 %i.077, 5
  %add = add i32 %27, %mul5
  %desc_phy_addr = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %cur_ctl.080, i32 0, i32 2
  %28 = ptrtoint ptr %desc_phy_addr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %desc_phy_addr, align 4
  %29 = ptrtoint ptr %ch_type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ch_type, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %30, label %for.body.if.else_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb9
    i32 3, label %sw.bb11
  ]

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %cur_dxe.075 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 3312196, ptr %cur_dxe.075, align 1
  %dst_addr_l = getelementptr %struct.wcn36xx_dxe_desc, ptr %prev_dxe.076, i32 1, i32 3
  %33 = ptrtoint ptr %dst_addr_l to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 23, ptr %dst_addr_l, align 1
  br label %if.else

sw.bb6:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %cur_dxe.075 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 3329604, ptr %cur_dxe.075, align 1
  %dst_addr_l8 = getelementptr %struct.wcn36xx_dxe_desc, ptr %prev_dxe.076, i32 1, i32 3
  %35 = ptrtoint ptr %dst_addr_l8 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 23, ptr %dst_addr_l8, align 1
  br label %if.else

sw.bb9:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %cur_dxe.075 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 1223983, ptr %cur_dxe.075, align 1
  %src_addr_l = getelementptr %struct.wcn36xx_dxe_desc, ptr %prev_dxe.076, i32 1, i32 2
  %37 = ptrtoint ptr %src_addr_l to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 11, ptr %src_addr_l, align 1
  br label %if.else

sw.bb11:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %cur_dxe.075 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 1233199, ptr %cur_dxe.075, align 1
  %src_addr_l13 = getelementptr %struct.wcn36xx_dxe_desc, ptr %prev_dxe.076, i32 1, i32 2
  %39 = ptrtoint ptr %src_addr_l13 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 4, ptr %src_addr_l13, align 1
  br label %if.else

if.else:                                          ; preds = %sw.bb11, %sw.bb9, %sw.bb6, %sw.bb, %for.body.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.077)
  %cmp16 = icmp sgt i32 %i.077, 0
  br i1 %cmp16, label %land.lhs.true, label %if.else.if.else22_crit_edge

if.else.if.else22_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else22

land.lhs.true:                                    ; preds = %if.else
  %40 = ptrtoint ptr %desc_num to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %desc_num, align 4
  %sub = add i32 %41, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.077, i32 %sub)
  %cmp18 = icmp ult i32 %i.077, %sub
  br i1 %cmp18, label %land.lhs.true.if.end34.sink.split_crit_edge, label %land.lhs.true.if.else22_crit_edge

land.lhs.true.if.else22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else22

land.lhs.true.if.end34.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34.sink.split

if.else22:                                        ; preds = %land.lhs.true.if.else22_crit_edge, %if.else.if.else22_crit_edge
  %42 = ptrtoint ptr %desc_num to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %desc_num, align 4
  %sub24 = add i32 %43, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.077, i32 %sub24)
  %cmp25 = icmp eq i32 %i.077, %sub24
  br i1 %cmp25, label %if.then26, label %if.else22.if.end34_crit_edge

if.else22.if.end34_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then26:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %desc_phy_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %desc_phy_addr, align 4
  %phy_next_l28 = getelementptr inbounds %struct.wcn36xx_dxe_desc, ptr %prev_dxe.076, i32 0, i32 4
  %46 = ptrtoint ptr %phy_next_l28 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %45, ptr %phy_next_l28, align 1
  %47 = ptrtoint ptr %head_blk_ctl to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %head_blk_ctl, align 4
  %desc_phy_addr30 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %48, i32 0, i32 2
  br label %if.end34.sink.split

if.end34.sink.split:                              ; preds = %if.then26, %land.lhs.true.if.end34.sink.split_crit_edge
  %desc_phy_addr.sink = phi ptr [ %desc_phy_addr30, %if.then26 ], [ %desc_phy_addr, %land.lhs.true.if.end34.sink.split_crit_edge ]
  %.sink82 = phi i32 [ 1, %if.then26 ], [ 0, %land.lhs.true.if.end34.sink.split_crit_edge ]
  %49 = ptrtoint ptr %desc_phy_addr.sink to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %desc_phy_addr.sink, align 4
  %phy_next_l21 = getelementptr %struct.wcn36xx_dxe_desc, ptr %prev_dxe.076, i32 %.sink82, i32 4
  %51 = ptrtoint ptr %phy_next_l21 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %50, ptr %phy_next_l21, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.else22.if.end34_crit_edge
  %inc = add nuw i32 %i.077, 1
  %52 = ptrtoint ptr %desc_num to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %desc_num, align 4
  %cmp = icmp ult i32 %inc, %53
  br i1 %cmp, label %if.end34.for.body_crit_edge, label %if.end34.cleanup_crit_edge, !llvm.loop !153

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %if.end34.cleanup_crit_edge, %if.end34.peel.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end34.peel.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcn36xx_dxe_tx_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1096
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %0 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body6_crit_edge, label %do.end

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #8
  br label %do.body6

do.body6:                                         ; preds = %do.end, %entry.do.body6_crit_edge
  %dxe_lock = getelementptr i8, ptr %t, i32 -76
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dxe_lock) #5
  %tx_ack_skb = getelementptr i8, ptr %t, i32 -4
  %1 = ptrtoint ptr %tx_ack_skb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tx_ack_skb, align 4
  store ptr null, ptr %tx_ack_skb, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dxe_lock, i32 noundef %call9) #5
  %tobool16.not = icmp eq ptr %2, null
  br i1 %tobool16.not, label %do.body6.cleanup_crit_edge, label %if.end18

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cb.i, align 8
  %and23 = and i32 %4, 2147483135
  store i32 %and23, ptr %cb.i, align 8
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %6, ptr noundef nonnull %2) #5
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  tail call void @ieee80211_wake_queues(ptr noundef %8) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.body6.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wcn36xx_dxe_deinit(ptr noundef %wcn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dxe_base.i.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 17
  %0 = ptrtoint ptr %dxe_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dxe_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !142
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %4 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.wcn36xx_dxe_read_register.exit.i_crit_edge, label %do.end.i.i

entry.wcn36xx_dxe_read_register.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_read_register.exit.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef 24, i32 noundef %3) #8
  br label %wcn36xx_dxe_read_register.exit.i

wcn36xx_dxe_read_register.exit.i:                 ; preds = %do.end.i.i, %entry.wcn36xx_dxe_read_register.exit.i_crit_edge
  %and.i = and i32 %3, -9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %5 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i2.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i3.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i3.i, label %wcn36xx_dxe_read_register.exit.i.wcn36xx_dxe_disable_ch_int.exit_crit_edge, label %do.end.i4.i

wcn36xx_dxe_read_register.exit.i.wcn36xx_dxe_disable_ch_int.exit_crit_edge: ; preds = %wcn36xx_dxe_read_register.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_disable_ch_int.exit

do.end.i4.i:                                      ; preds = %wcn36xx_dxe_read_register.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 24, i32 noundef %and.i) #8
  br label %wcn36xx_dxe_disable_ch_int.exit

wcn36xx_dxe_disable_ch_int.exit:                  ; preds = %do.end.i4.i, %wcn36xx_dxe_read_register.exit.i.wcn36xx_dxe_disable_ch_int.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %7 = ptrtoint ptr %dxe_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dxe_base.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %6) #5, !srcloc !145
  %9 = ptrtoint ptr %dxe_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dxe_base.i.i, align 4
  %add.ptr.i.i36 = getelementptr i8, ptr %10, i32 24
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i36) #5, !srcloc !142
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %13 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i.i37 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i37)
  %tobool.not.i.i38 = icmp eq i32 %and.i.i37, 0
  br i1 %tobool.not.i.i38, label %wcn36xx_dxe_disable_ch_int.exit.wcn36xx_dxe_read_register.exit.i44_crit_edge, label %do.end.i.i40

wcn36xx_dxe_disable_ch_int.exit.wcn36xx_dxe_read_register.exit.i44_crit_edge: ; preds = %wcn36xx_dxe_disable_ch_int.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_read_register.exit.i44

do.end.i.i40:                                     ; preds = %wcn36xx_dxe_disable_ch_int.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef 24, i32 noundef %12) #8
  br label %wcn36xx_dxe_read_register.exit.i44

wcn36xx_dxe_read_register.exit.i44:               ; preds = %do.end.i.i40, %wcn36xx_dxe_disable_ch_int.exit.wcn36xx_dxe_read_register.exit.i44_crit_edge
  %and.i41 = and i32 %12, -3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %14 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i2.i42 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i42)
  %tobool.not.i3.i43 = icmp eq i32 %and.i2.i42, 0
  br i1 %tobool.not.i3.i43, label %wcn36xx_dxe_read_register.exit.i44.wcn36xx_dxe_disable_ch_int.exit48_crit_edge, label %do.end.i4.i46

wcn36xx_dxe_read_register.exit.i44.wcn36xx_dxe_disable_ch_int.exit48_crit_edge: ; preds = %wcn36xx_dxe_read_register.exit.i44
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_disable_ch_int.exit48

do.end.i4.i46:                                    ; preds = %wcn36xx_dxe_read_register.exit.i44
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 24, i32 noundef %and.i41) #8
  br label %wcn36xx_dxe_disable_ch_int.exit48

wcn36xx_dxe_disable_ch_int.exit48:                ; preds = %do.end.i4.i46, %wcn36xx_dxe_read_register.exit.i44.wcn36xx_dxe_disable_ch_int.exit48_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %and.i41) #5
  %16 = ptrtoint ptr %dxe_base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dxe_base.i.i, align 4
  %add.ptr.i6.i47 = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i47, i32 %15) #5, !srcloc !145
  %18 = ptrtoint ptr %dxe_base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dxe_base.i.i, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %19, i32 24
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50) #5, !srcloc !142
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %22 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i.i51 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i51)
  %tobool.not.i.i52 = icmp eq i32 %and.i.i51, 0
  br i1 %tobool.not.i.i52, label %wcn36xx_dxe_disable_ch_int.exit48.wcn36xx_dxe_read_register.exit.i58_crit_edge, label %do.end.i.i54

wcn36xx_dxe_disable_ch_int.exit48.wcn36xx_dxe_read_register.exit.i58_crit_edge: ; preds = %wcn36xx_dxe_disable_ch_int.exit48
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_read_register.exit.i58

do.end.i.i54:                                     ; preds = %wcn36xx_dxe_disable_ch_int.exit48
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef 24, i32 noundef %21) #8
  br label %wcn36xx_dxe_read_register.exit.i58

wcn36xx_dxe_read_register.exit.i58:               ; preds = %do.end.i.i54, %wcn36xx_dxe_disable_ch_int.exit48.wcn36xx_dxe_read_register.exit.i58_crit_edge
  %and.i55 = and i32 %21, -17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %23 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i2.i56 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i56)
  %tobool.not.i3.i57 = icmp eq i32 %and.i2.i56, 0
  br i1 %tobool.not.i3.i57, label %wcn36xx_dxe_read_register.exit.i58.wcn36xx_dxe_disable_ch_int.exit62_crit_edge, label %do.end.i4.i60

wcn36xx_dxe_read_register.exit.i58.wcn36xx_dxe_disable_ch_int.exit62_crit_edge: ; preds = %wcn36xx_dxe_read_register.exit.i58
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_disable_ch_int.exit62

do.end.i4.i60:                                    ; preds = %wcn36xx_dxe_read_register.exit.i58
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 24, i32 noundef %and.i55) #8
  br label %wcn36xx_dxe_disable_ch_int.exit62

wcn36xx_dxe_disable_ch_int.exit62:                ; preds = %do.end.i4.i60, %wcn36xx_dxe_read_register.exit.i58.wcn36xx_dxe_disable_ch_int.exit62_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %24 = tail call i32 @llvm.bswap.i32(i32 %and.i55) #5
  %25 = ptrtoint ptr %dxe_base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dxe_base.i.i, align 4
  %add.ptr.i6.i61 = getelementptr i8, ptr %26, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i61, i32 %24) #5, !srcloc !145
  %27 = ptrtoint ptr %dxe_base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dxe_base.i.i, align 4
  %add.ptr.i.i64 = getelementptr i8, ptr %28, i32 24
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i64) #5, !srcloc !142
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %31 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i.i65 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i65)
  %tobool.not.i.i66 = icmp eq i32 %and.i.i65, 0
  br i1 %tobool.not.i.i66, label %wcn36xx_dxe_disable_ch_int.exit62.wcn36xx_dxe_read_register.exit.i72_crit_edge, label %do.end.i.i68

wcn36xx_dxe_disable_ch_int.exit62.wcn36xx_dxe_read_register.exit.i72_crit_edge: ; preds = %wcn36xx_dxe_disable_ch_int.exit62
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_read_register.exit.i72

do.end.i.i68:                                     ; preds = %wcn36xx_dxe_disable_ch_int.exit62
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef 24, i32 noundef %30) #8
  br label %wcn36xx_dxe_read_register.exit.i72

wcn36xx_dxe_read_register.exit.i72:               ; preds = %do.end.i.i68, %wcn36xx_dxe_disable_ch_int.exit62.wcn36xx_dxe_read_register.exit.i72_crit_edge
  %and.i69 = and i32 %30, -2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %32 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i2.i70 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i70)
  %tobool.not.i3.i71 = icmp eq i32 %and.i2.i70, 0
  br i1 %tobool.not.i3.i71, label %wcn36xx_dxe_read_register.exit.i72.wcn36xx_dxe_disable_ch_int.exit76_crit_edge, label %do.end.i4.i74

wcn36xx_dxe_read_register.exit.i72.wcn36xx_dxe_disable_ch_int.exit76_crit_edge: ; preds = %wcn36xx_dxe_read_register.exit.i72
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_disable_ch_int.exit76

do.end.i4.i74:                                    ; preds = %wcn36xx_dxe_read_register.exit.i72
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 24, i32 noundef %and.i69) #8
  br label %wcn36xx_dxe_disable_ch_int.exit76

wcn36xx_dxe_disable_ch_int.exit76:                ; preds = %do.end.i4.i74, %wcn36xx_dxe_read_register.exit.i72.wcn36xx_dxe_disable_ch_int.exit76_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %33 = tail call i32 @llvm.bswap.i32(i32 %and.i69) #5
  %34 = ptrtoint ptr %dxe_base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dxe_base.i.i, align 4
  %add.ptr.i6.i75 = getelementptr i8, ptr %35, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i75, i32 %33) #5, !srcloc !145
  %tx_irq = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 14
  %36 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %37, ptr noundef %wcn) #5
  %rx_irq = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 15
  %38 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %39, ptr noundef %wcn) #5
  %tx_ack_timer = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 49
  %call2 = tail call i32 @del_timer(ptr noundef %tx_ack_timer) #5
  %tx_ack_skb = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 48
  %40 = ptrtoint ptr %tx_ack_skb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_ack_skb, align 4
  %tobool.not = icmp eq ptr %41, null
  br i1 %tobool.not, label %wcn36xx_dxe_disable_ch_int.exit76.if.end_crit_edge, label %if.then

wcn36xx_dxe_disable_ch_int.exit76.if.end_crit_edge: ; preds = %wcn36xx_dxe_disable_ch_int.exit76
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %wcn36xx_dxe_disable_ch_int.exit76
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %wcn to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wcn, align 4
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %43, ptr noundef nonnull %41) #5
  %44 = ptrtoint ptr %tx_ack_skb to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %tx_ack_skb, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %wcn36xx_dxe_disable_ch_int.exit76.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %45 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i77 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i77)
  %tobool.not.i = icmp eq i32 %and.i77, 0
  br i1 %tobool.not.i, label %if.end.wcn36xx_dxe_write_register.exit_crit_edge, label %do.end.i

if.end.wcn36xx_dxe_write_register.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 0, i32 noundef 23689) #8
  br label %wcn36xx_dxe_write_register.exit

wcn36xx_dxe_write_register.exit:                  ; preds = %do.end.i, %if.end.wcn36xx_dxe_write_register.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %46 = ptrtoint ptr %dxe_base.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dxe_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 -1990459392) #5, !srcloc !145
  %desc_num.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 42, i32 4
  %48 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %desc_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp1.not.i = icmp eq i32 %49, 0
  br i1 %cmp1.not.i, label %wcn36xx_dxe_write_register.exit.wcn36xx_dxe_ch_free_skbs.exit_crit_edge, label %for.body.preheader.i

wcn36xx_dxe_write_register.exit.wcn36xx_dxe_ch_free_skbs.exit_crit_edge: ; preds = %wcn36xx_dxe_write_register.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_ch_free_skbs.exit

for.body.preheader.i:                             ; preds = %wcn36xx_dxe_write_register.exit
  %head_blk_ctl.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 42, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %cur.0.in2.i = phi ptr [ %cur.0.i, %for.body.i.for.body.i_crit_edge ], [ %head_blk_ctl.i, %for.body.preheader.i ]
  %50 = ptrtoint ptr %cur.0.in2.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %cur.0.i = load ptr, ptr %cur.0.in2.i, align 4
  %skb.i = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %cur.0.i, i32 0, i32 4
  %51 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %skb.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %52, i32 noundef 0) #5
  %inc.i = add nuw i32 %i.03.i, 1
  %53 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %desc_num.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %54
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.wcn36xx_dxe_ch_free_skbs.exit_crit_edge

for.body.i.wcn36xx_dxe_ch_free_skbs.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_ch_free_skbs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

wcn36xx_dxe_ch_free_skbs.exit:                    ; preds = %for.body.i.wcn36xx_dxe_ch_free_skbs.exit_crit_edge, %wcn36xx_dxe_write_register.exit.wcn36xx_dxe_ch_free_skbs.exit_crit_edge
  %desc_num.i78 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 43, i32 4
  %55 = ptrtoint ptr %desc_num.i78 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %desc_num.i78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp1.not.i79 = icmp eq i32 %56, 0
  br i1 %cmp1.not.i79, label %wcn36xx_dxe_ch_free_skbs.exit.wcn36xx_dxe_ch_free_skbs.exit89_crit_edge, label %for.body.preheader.i81

wcn36xx_dxe_ch_free_skbs.exit.wcn36xx_dxe_ch_free_skbs.exit89_crit_edge: ; preds = %wcn36xx_dxe_ch_free_skbs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_ch_free_skbs.exit89

for.body.preheader.i81:                           ; preds = %wcn36xx_dxe_ch_free_skbs.exit
  %head_blk_ctl.i80 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 43, i32 5
  br label %for.body.i88

for.body.i88:                                     ; preds = %for.body.i88.for.body.i88_crit_edge, %for.body.preheader.i81
  %i.03.i82 = phi i32 [ %inc.i86, %for.body.i88.for.body.i88_crit_edge ], [ 0, %for.body.preheader.i81 ]
  %cur.0.in2.i83 = phi ptr [ %cur.0.i84, %for.body.i88.for.body.i88_crit_edge ], [ %head_blk_ctl.i80, %for.body.preheader.i81 ]
  %57 = ptrtoint ptr %cur.0.in2.i83 to i32
  call void @__asan_load4_noabort(i32 %57)
  %cur.0.i84 = load ptr, ptr %cur.0.in2.i83, align 4
  %skb.i85 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %cur.0.i84, i32 0, i32 4
  %58 = ptrtoint ptr %skb.i85 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %skb.i85, align 4
  tail call void @kfree_skb_reason(ptr noundef %59, i32 noundef 0) #5
  %inc.i86 = add nuw i32 %i.03.i82, 1
  %60 = ptrtoint ptr %desc_num.i78 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %desc_num.i78, align 4
  %cmp.i87 = icmp ult i32 %inc.i86, %61
  br i1 %cmp.i87, label %for.body.i88.for.body.i88_crit_edge, label %for.body.i88.wcn36xx_dxe_ch_free_skbs.exit89_crit_edge

for.body.i88.wcn36xx_dxe_ch_free_skbs.exit89_crit_edge: ; preds = %for.body.i88
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_ch_free_skbs.exit89

for.body.i88.for.body.i88_crit_edge:              ; preds = %for.body.i88
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i88

wcn36xx_dxe_ch_free_skbs.exit89:                  ; preds = %for.body.i88.wcn36xx_dxe_ch_free_skbs.exit89_crit_edge, %wcn36xx_dxe_ch_free_skbs.exit.wcn36xx_dxe_ch_free_skbs.exit89_crit_edge
  %dev = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 1
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 4
  %desc_num.i90 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 40, i32 4
  %64 = ptrtoint ptr %desc_num.i90 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %desc_num.i90, align 4
  %mul.i = shl i32 %65, 5
  %cpu_addr.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 40, i32 2
  %66 = ptrtoint ptr %cpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cpu_addr.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 40, i32 3
  %68 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %63, i32 noundef %mul.i, ptr noundef %67, i32 noundef %69, i32 noundef 0) #5
  %70 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev, align 4
  %desc_num.i91 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 41, i32 4
  %72 = ptrtoint ptr %desc_num.i91 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %desc_num.i91, align 4
  %mul.i92 = shl i32 %73, 5
  %cpu_addr.i93 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 41, i32 2
  %74 = ptrtoint ptr %cpu_addr.i93 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cpu_addr.i93, align 4
  %dma_addr.i94 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 41, i32 3
  %76 = ptrtoint ptr %dma_addr.i94 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dma_addr.i94, align 4
  tail call void @dma_free_attrs(ptr noundef %71, i32 noundef %mul.i92, ptr noundef %75, i32 noundef %77, i32 noundef 0) #5
  %78 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev, align 4
  %80 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %desc_num.i, align 4
  %mul.i96 = shl i32 %81, 5
  %cpu_addr.i97 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 42, i32 2
  %82 = ptrtoint ptr %cpu_addr.i97 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cpu_addr.i97, align 4
  %dma_addr.i98 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 42, i32 3
  %84 = ptrtoint ptr %dma_addr.i98 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dma_addr.i98, align 4
  tail call void @dma_free_attrs(ptr noundef %79, i32 noundef %mul.i96, ptr noundef %83, i32 noundef %85, i32 noundef 0) #5
  %86 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev, align 4
  %88 = ptrtoint ptr %desc_num.i78 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %desc_num.i78, align 4
  %mul.i100 = shl i32 %89, 5
  %cpu_addr.i101 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 43, i32 2
  %90 = ptrtoint ptr %cpu_addr.i101 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cpu_addr.i101, align 4
  %dma_addr.i102 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 43, i32 3
  %92 = ptrtoint ptr %dma_addr.i102 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dma_addr.i102, align 4
  tail call void @dma_free_attrs(ptr noundef %87, i32 noundef %mul.i100, ptr noundef %91, i32 noundef %93, i32 noundef 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wcn36xx_dxe_fill_skb(ptr noundef %dev, ptr nocapture noundef %ctl, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %ctl, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %call.i = tail call ptr @__alloc_skb(i32 noundef 3872, i32 noundef %gfp, i32 noundef 0, i32 noundef -1) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i, align 8
  %call.i16 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %3) #5
  br i1 %call.i16, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !148

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #5
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.44, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #5
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %dst_addr_l18 = getelementptr inbounds %struct.wcn36xx_dxe_desc, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dst_addr_l18 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 -1, ptr %dst_addr_l18, align 1
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef -1) #5
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %if.end
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %3, i32 noundef 3872) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %9 = load ptr, ptr @mem_map, align 4
  %10 = ptrtoint ptr %3 to i32
  %sub.i = add i32 %10, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %9, i32 %shr.i
  %and.i = and i32 %10, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 3872, i32 noundef 2, i32 noundef 0) #5
  %dst_addr_l = getelementptr inbounds %struct.wcn36xx_dxe_desc, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %dst_addr_l to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %call41.i, ptr %dst_addr_l, align 1
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call41.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %if.end6

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #5
  br label %cleanup

if.end6:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #7
  %skb7 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %ctl, i32 0, i32 4
  %12 = ptrtoint ptr %skb7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %skb7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end6 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_rx_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcn36xx_irq_tx_complete(i32 noundef %irq, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dxe_base.i = getelementptr inbounds %struct.wcn36xx, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !142
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %4 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.wcn36xx_dxe_read_register.exit_crit_edge, label %do.end.i

entry.wcn36xx_dxe_read_register.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_read_register.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef 32, i32 noundef %3) #8
  br label %wcn36xx_dxe_read_register.exit

wcn36xx_dxe_read_register.exit:                   ; preds = %do.end.i, %entry.wcn36xx_dxe_read_register.exit_crit_edge
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %wcn36xx_dxe_read_register.exit.if.end28_crit_edge, label %if.then

wcn36xx_dxe_read_register.exit.if.end28_crit_edge: ; preds = %wcn36xx_dxe_read_register.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then:                                          ; preds = %wcn36xx_dxe_read_register.exit
  %5 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i81 = getelementptr i8, ptr %6, i32 1284
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81) #5, !srcloc !142
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %9 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i82 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i82)
  %tobool.not.i83 = icmp eq i32 %and.i82, 0
  br i1 %tobool.not.i83, label %if.then.wcn36xx_dxe_read_register.exit86_crit_edge, label %do.end.i85

if.then.wcn36xx_dxe_read_register.exit86_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_read_register.exit86

do.end.i85:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef 1284, i32 noundef %8) #8
  br label %wcn36xx_dxe_read_register.exit86

wcn36xx_dxe_read_register.exit86:                 ; preds = %do.end.i85, %if.then.wcn36xx_dxe_read_register.exit86_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %10 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i87 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i87)
  %tobool.not.i88 = icmp eq i32 %and.i87, 0
  br i1 %tobool.not.i88, label %wcn36xx_dxe_read_register.exit86.wcn36xx_dxe_write_register.exit_crit_edge, label %do.end.i89

wcn36xx_dxe_read_register.exit86.wcn36xx_dxe_write_register.exit_crit_edge: ; preds = %wcn36xx_dxe_read_register.exit86
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit

do.end.i89:                                       ; preds = %wcn36xx_dxe_read_register.exit86
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 48, i32 noundef 16) #8
  br label %wcn36xx_dxe_write_register.exit

wcn36xx_dxe_write_register.exit:                  ; preds = %do.end.i89, %wcn36xx_dxe_read_register.exit86.wcn36xx_dxe_write_register.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i91 = getelementptr i8, ptr %12, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 268435456) #5, !srcloc !145
  %and1 = and i32 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %wcn36xx_dxe_write_register.exit.if.end_crit_edge, label %if.then3

wcn36xx_dxe_write_register.exit.if.end_crit_edge: ; preds = %wcn36xx_dxe_write_register.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then3:                                         ; preds = %wcn36xx_dxe_write_register.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %13 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i92 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92)
  %tobool.not.i93 = icmp eq i32 %and.i92, 0
  br i1 %tobool.not.i93, label %if.then3.wcn36xx_dxe_write_register.exit98_crit_edge, label %do.end.i95

if.then3.wcn36xx_dxe_write_register.exit98_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit98

do.end.i95:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %call.i94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 60, i32 noundef 16) #8
  br label %wcn36xx_dxe_write_register.exit98

wcn36xx_dxe_write_register.exit98:                ; preds = %do.end.i95, %if.then3.wcn36xx_dxe_write_register.exit98_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i97 = getelementptr i8, ptr %15, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 268435456) #5, !srcloc !145
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %3) #8
  br label %if.end

if.end:                                           ; preds = %wcn36xx_dxe_write_register.exit98, %wcn36xx_dxe_write_register.exit.if.end_crit_edge
  %and4 = and i32 %8, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %16 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i99 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i99)
  %tobool.not.i100 = icmp eq i32 %and.i99, 0
  br i1 %tobool.not.i100, label %if.then6.wcn36xx_dxe_write_register.exit105_crit_edge, label %do.end.i102

if.then6.wcn36xx_dxe_write_register.exit105_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit105

do.end.i102:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %call.i101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 56, i32 noundef 16) #8
  br label %wcn36xx_dxe_write_register.exit105

wcn36xx_dxe_write_register.exit105:               ; preds = %do.end.i102, %if.then6.wcn36xx_dxe_write_register.exit105_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i104 = getelementptr i8, ptr %18, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 268435456) #5, !srcloc !145
  br label %if.end7

if.end7:                                          ; preds = %wcn36xx_dxe_write_register.exit105, %if.end.if.end7_crit_edge
  %and8 = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.do.body12_crit_edge, label %if.then10

if.end7.do.body12_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body12

if.then10:                                        ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %19 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i106 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106)
  %tobool.not.i107 = icmp eq i32 %and.i106, 0
  br i1 %tobool.not.i107, label %if.then10.wcn36xx_dxe_write_register.exit112_crit_edge, label %do.end.i109

if.then10.wcn36xx_dxe_write_register.exit112_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit112

do.end.i109:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %call.i108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 52, i32 noundef 16) #8
  br label %wcn36xx_dxe_write_register.exit112

wcn36xx_dxe_write_register.exit112:               ; preds = %do.end.i109, %if.then10.wcn36xx_dxe_write_register.exit112_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %21, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 268435456) #5, !srcloc !145
  br label %do.body12

do.body12:                                        ; preds = %wcn36xx_dxe_write_register.exit112, %if.end7.do.body12_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %22 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and13 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body12.do.end23_crit_edge, label %do.end18

do.body12.do.end23_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end18:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %8) #8
  br label %do.end23

do.end23:                                         ; preds = %do.end18, %do.body12.do.end23_crit_edge
  %and24 = and i32 %8, 40960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.end23.if.end28_crit_edge, label %if.then26

do.end23.if.end28_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then26:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  %dxe_tx_h_ch = getelementptr inbounds %struct.wcn36xx, ptr %dev, i32 0, i32 41
  tail call fastcc void @reap_tx_dxes(ptr noundef %dev, ptr noundef %dxe_tx_h_ch)
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %do.end23.if.end28_crit_edge, %wcn36xx_dxe_read_register.exit.if.end28_crit_edge
  %and29 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end65_crit_edge, label %if.then31

if.end28.if.end65_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.then31:                                        ; preds = %if.end28
  %23 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i114 = getelementptr i8, ptr %24, i32 1028
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114) #5, !srcloc !142
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %27 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i115 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i115)
  %tobool.not.i116 = icmp eq i32 %and.i115, 0
  br i1 %tobool.not.i116, label %if.then31.wcn36xx_dxe_read_register.exit119_crit_edge, label %do.end.i118

if.then31.wcn36xx_dxe_read_register.exit119_crit_edge: ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_read_register.exit119

do.end.i118:                                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef 1028, i32 noundef %26) #8
  br label %wcn36xx_dxe_read_register.exit119

wcn36xx_dxe_read_register.exit119:                ; preds = %do.end.i118, %if.then31.wcn36xx_dxe_read_register.exit119_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %28 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i120 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i120)
  %tobool.not.i121 = icmp eq i32 %and.i120, 0
  br i1 %tobool.not.i121, label %wcn36xx_dxe_read_register.exit119.wcn36xx_dxe_write_register.exit126_crit_edge, label %do.end.i123

wcn36xx_dxe_read_register.exit119.wcn36xx_dxe_write_register.exit126_crit_edge: ; preds = %wcn36xx_dxe_read_register.exit119
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit126

do.end.i123:                                      ; preds = %wcn36xx_dxe_read_register.exit119
  call void @__sanitizer_cov_trace_pc() #7
  %call.i122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 48, i32 noundef 1) #8
  br label %wcn36xx_dxe_write_register.exit126

wcn36xx_dxe_write_register.exit126:               ; preds = %do.end.i123, %wcn36xx_dxe_read_register.exit119.wcn36xx_dxe_write_register.exit126_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i125 = getelementptr i8, ptr %30, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125, i32 16777216) #5, !srcloc !145
  %and32 = and i32 %26, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %wcn36xx_dxe_write_register.exit126.if.end40_crit_edge, label %if.then34

wcn36xx_dxe_write_register.exit126.if.end40_crit_edge: ; preds = %wcn36xx_dxe_write_register.exit126
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then34:                                        ; preds = %wcn36xx_dxe_write_register.exit126
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %31 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i127 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i127)
  %tobool.not.i128 = icmp eq i32 %and.i127, 0
  br i1 %tobool.not.i128, label %if.then34.wcn36xx_dxe_write_register.exit133_crit_edge, label %do.end.i130

if.then34.wcn36xx_dxe_write_register.exit133_crit_edge: ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit133

do.end.i130:                                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  %call.i129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 60, i32 noundef 1) #8
  br label %wcn36xx_dxe_write_register.exit133

wcn36xx_dxe_write_register.exit133:               ; preds = %do.end.i130, %if.then34.wcn36xx_dxe_write_register.exit133_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i132 = getelementptr i8, ptr %33, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 16777216) #5, !srcloc !145
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %3) #8
  br label %if.end40

if.end40:                                         ; preds = %wcn36xx_dxe_write_register.exit133, %wcn36xx_dxe_write_register.exit126.if.end40_crit_edge
  %and41 = and i32 %26, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end44_crit_edge, label %if.then43

if.end40.if.end44_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then43:                                        ; preds = %if.end40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %34 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i134 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i134)
  %tobool.not.i135 = icmp eq i32 %and.i134, 0
  br i1 %tobool.not.i135, label %if.then43.wcn36xx_dxe_write_register.exit140_crit_edge, label %do.end.i137

if.then43.wcn36xx_dxe_write_register.exit140_crit_edge: ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit140

do.end.i137:                                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  %call.i136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 56, i32 noundef 1) #8
  br label %wcn36xx_dxe_write_register.exit140

wcn36xx_dxe_write_register.exit140:               ; preds = %do.end.i137, %if.then43.wcn36xx_dxe_write_register.exit140_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %35 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i139 = getelementptr i8, ptr %36, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 16777216) #5, !srcloc !145
  br label %if.end44

if.end44:                                         ; preds = %wcn36xx_dxe_write_register.exit140, %if.end40.if.end44_crit_edge
  %and45 = and i32 %26, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.do.body49_crit_edge, label %if.then47

if.end44.do.body49_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49

if.then47:                                        ; preds = %if.end44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %37 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i141 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i141)
  %tobool.not.i142 = icmp eq i32 %and.i141, 0
  br i1 %tobool.not.i142, label %if.then47.wcn36xx_dxe_write_register.exit147_crit_edge, label %do.end.i144

if.then47.wcn36xx_dxe_write_register.exit147_crit_edge: ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcn36xx_dxe_write_register.exit147

do.end.i144:                                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  %call.i143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 52, i32 noundef 1) #8
  br label %wcn36xx_dxe_write_register.exit147

wcn36xx_dxe_write_register.exit147:               ; preds = %do.end.i144, %if.then47.wcn36xx_dxe_write_register.exit147_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dxe_base.i, align 4
  %add.ptr.i146 = getelementptr i8, ptr %39, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i146, i32 16777216) #5, !srcloc !145
  br label %do.body49

do.body49:                                        ; preds = %wcn36xx_dxe_write_register.exit147, %if.end44.do.body49_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %40 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and50 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.body49.do.end60_crit_edge, label %do.end55

do.body49.do.end60_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end60

do.end55:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #7
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %26) #8
  br label %do.end60

do.end60:                                         ; preds = %do.end55, %do.body49.do.end60_crit_edge
  %and61 = and i32 %26, 40960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.end60.if.end65_crit_edge, label %if.then63

do.end60.if.end65_crit_edge:                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.then63:                                        ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #7
  %dxe_tx_l_ch = getelementptr inbounds %struct.wcn36xx, ptr %dev, i32 0, i32 40
  tail call fastcc void @reap_tx_dxes(ptr noundef %dev, ptr noundef %dxe_tx_l_ch)
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %do.end60.if.end65_crit_edge, %if.end28.if.end65_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcn36xx_irq_rx_ready(i32 noundef %irq, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @wcn36xx_dxe_rx_frame(ptr noundef %dev)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reap_tx_dxes(ptr noundef %wcn, ptr noundef %ch) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ch) #5
  %tail_blk_ctl = getelementptr inbounds %struct.wcn36xx_dxe_ch, ptr %ch, i32 0, i32 6
  %0 = ptrtoint ptr %tail_blk_ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail_blk_ctl, align 4
  %dev = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 1
  %dxe_lock = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 44
  %tx_ack_skb = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 48
  %tx_ack_timer = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 49
  %queues_stopped = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 45
  %head_blk_ctl = getelementptr inbounds %struct.wcn36xx_dxe_ch, ptr %ch, i32 0, i32 5
  br label %do.body5

do.body5:                                         ; preds = %if.end80.do.body5_crit_edge, %entry
  %ctl.0 = phi ptr [ %1, %entry ], [ %44, %if.end80.do.body5_crit_edge ]
  %desc = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %ctl.0, i32 0, i32 1
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load volatile i32, ptr %3, align 1
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.body5.do.end84_crit_edge

do.body5.do.end84_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end84

if.end:                                           ; preds = %do.body5
  %skb = getelementptr inbounds %struct.wcn36xx_dxe_ctl, ptr %ctl.0, i32 0, i32 4
  %6 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %if.end.if.end80_crit_edge, label %do.end13

if.end.if.end80_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

do.end13:                                         ; preds = %if.end
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load volatile i32, ptr %3, align 1
  %and17 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.end13.if.end80_crit_edge, label %if.then19

do.end13.if.end80_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.then19:                                        ; preds = %do.end13
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %src_addr_l = getelementptr inbounds %struct.wcn36xx_dxe_desc, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %src_addr_l to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %src_addr_l, align 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef 1, i32 noundef 0) #5
  %16 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skb, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cb.i, align 8
  %and25 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else70, label %if.then27

if.then27:                                        ; preds = %if.then19
  %and29 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %19, -2147483648
  %20 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or, ptr %cb.i, align 8
  %21 = ptrtoint ptr %wcn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wcn, align 4
  %23 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skb, align 4
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %22, ptr noundef %24) #5
  br label %if.end73

if.else:                                          ; preds = %if.then27
  tail call void @_raw_spin_lock(ptr noundef %dxe_lock) #5
  %25 = ptrtoint ptr %tx_ack_skb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_ack_skb, align 4
  %tobool34.not = icmp eq ptr %26, null
  br i1 %tobool34.not, label %if.else.if.end64_crit_edge, label %do.end46, !prof !148

if.else.if.end64_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

do.end46:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 428, i32 noundef 9, ptr noundef null) #5
  %27 = ptrtoint ptr %wcn to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wcn, align 4
  %29 = ptrtoint ptr %tx_ack_skb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_ack_skb, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %28, ptr noundef %30) #5
  br label %if.end64

if.end64:                                         ; preds = %do.end46, %if.else.if.end64_crit_edge
  %31 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %skb, align 4
  %33 = ptrtoint ptr %tx_ack_skb to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %tx_ack_skb, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %34, 10
  %call67 = tail call i32 @mod_timer(ptr noundef %tx_ack_timer, i32 noundef %add) #5
  tail call void @_raw_spin_unlock(ptr noundef %dxe_lock) #5
  br label %if.end73

if.else70:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %wcn to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wcn, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %36, ptr noundef %17) #5
  br label %if.end73

if.end73:                                         ; preds = %if.else70, %if.end64, %if.then31
  %37 = ptrtoint ptr %queues_stopped to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %queues_stopped, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool74.not = icmp eq i8 %38, 0
  br i1 %tobool74.not, label %if.end73.if.end78_crit_edge, label %if.then75

if.end73.if.end78_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

if.then75:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %queues_stopped to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %queues_stopped, align 4
  %40 = ptrtoint ptr %wcn to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wcn, align 4
  tail call void @ieee80211_wake_queues(ptr noundef %41) #5
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.end73.if.end78_crit_edge
  %42 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %skb, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.end78, %do.end13.if.end80_crit_edge, %if.end.if.end80_crit_edge
  %43 = ptrtoint ptr %ctl.0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctl.0, align 4
  %45 = ptrtoint ptr %head_blk_ctl to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %head_blk_ctl, align 4
  %cmp82.not = icmp eq ptr %44, %46
  br i1 %cmp82.not, label %if.end80.do.end84_crit_edge, label %if.end80.do.body5_crit_edge

if.end80.do.body5_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body5

if.end80.do.end84_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end84

do.end84:                                         ; preds = %if.end80.do.end84_crit_edge, %do.body5.do.end84_crit_edge
  %ctl.1 = phi ptr [ %ctl.0, %do.body5.do.end84_crit_edge ], [ %44, %if.end80.do.end84_crit_edge ]
  %47 = ptrtoint ptr %tail_blk_ctl to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %ctl.1, ptr %tail_blk_ctl, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ch, i32 noundef %call2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !39, !41, !42, !43, !44, !45, !47, !49, !51, !52, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !102, !103, !104, !105, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 155, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @wcn36xx_dxe_alloc_ctl_blks._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @wcn36xx_dxe_alloc_ctl_blks._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 356, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @wcn36xx_dxe_tx_ack_ind._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @wcn36xx_dxe_tx_ack_ind._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 367, i32 2}
!13 = !{ptr @wcn36xx_dxe_tx_ack_ind._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @wcn36xx_dxe_tx_ack_ind._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 682, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @wcn36xx_dxe_rx_frame._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @wcn36xx_dxe_rx_frame._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 724, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @wcn36xx_dxe_allocate_mem_pools._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @wcn36xx_dxe_allocate_mem_pools._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 775, i32 3}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @wcn36xx_dxe_tx_frame._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @wcn36xx_dxe_tx_frame._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 793, i32 2}
!32 = !{ptr @wcn36xx_dxe_tx_frame._entry.14, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @wcn36xx_dxe_tx_frame._entry_ptr.16, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 795, i32 2}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 797, i32 2}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 806, i32 3}
!41 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @wcn36xx_dxe_tx_frame._entry.20, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @wcn36xx_dxe_tx_frame._entry_ptr.24, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 815, i32 2}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 817, i32 2}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 919, i32 3}
!51 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @wcn36xx_dxe_init._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @wcn36xx_dxe_init._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @wcn36xx_dxe_init._entry.29, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 940, i32 3}
!56 = !{ptr @wcn36xx_dxe_init._entry_ptr.30, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @wcn36xx_dxe_init._entry.31, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 962, i32 3}
!59 = !{ptr @wcn36xx_dxe_init._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @wcn36xx_dxe_init._entry.33, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 993, i32 3}
!62 = !{ptr @wcn36xx_dxe_init._entry_ptr.34, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @wcn36xx_dxe_init.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 1023, i32 2}
!65 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @wcn36xx_dxe_allocate_ctl_block.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 75, i32 2}
!68 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 52, i32 2}
!71 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @wcn36xx_dxe_read_register._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @wcn36xx_dxe_read_register._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 601, i32 3}
!76 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @wcn36xx_rx_handle_packets._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @wcn36xx_rx_handle_packets._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 306, i32 3}
!81 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @wcn36xx_dxe_fill_skb._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @wcn36xx_dxe_fill_skb._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!86 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 41, i32 2}
!90 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @wcn36xx_dxe_write_register._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @wcn36xx_dxe_write_register._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 32, i32 2}
!95 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @wcn36xx_ccu_write_register._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @wcn36xx_ccu_write_register._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 555, i32 25}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 557, i32 3}
!102 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @wcn36xx_dxe_request_irqs._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @wcn36xx_dxe_request_irqs._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 562, i32 6}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 564, i32 3}
!109 = !{ptr @wcn36xx_dxe_request_irqs._entry.53, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @wcn36xx_dxe_request_irqs._entry_ptr.55, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 474, i32 4}
!113 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @wcn36xx_irq_tx_complete._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @wcn36xx_irq_tx_complete._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 490, i32 3}
!118 = !{ptr @wcn36xx_irq_tx_complete._entry.58, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @wcn36xx_irq_tx_complete._entry_ptr.60, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 513, i32 4}
!122 = !{ptr @wcn36xx_irq_tx_complete._entry.61, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @wcn36xx_irq_tx_complete._entry_ptr.63, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 529, i32 3}
!126 = !{ptr @wcn36xx_irq_tx_complete._entry.64, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @wcn36xx_irq_tx_complete._entry_ptr.66, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ath/wcn36xx/dxe.c", i32 381, i32 2}
!130 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @wcn36xx_dxe_tx_timer._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @wcn36xx_dxe_tx_timer._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = !{i64 4225444}
!143 = !{i64 2157560638}
!144 = !{i64 2157559959}
!145 = !{i64 4225026}
!146 = !{i64 2157611577}
!147 = !{i64 2157611923}
!148 = !{!"branch_weights", i32 2000, i32 1}
!149 = !{i64 2157625021}
!150 = !{i64 2157625169}
!151 = !{i8 0, i8 2}
!152 = !{i64 2157557635}
!153 = distinct !{!153, !154}
!154 = !{!"llvm.loop.peeled.count", i32 1}
